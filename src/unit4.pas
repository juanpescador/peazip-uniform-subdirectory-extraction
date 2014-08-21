unit Unit4; 

{$mode objfpc}{$H+}

interface

uses
  {$IFDEF MSWINDOWS}
  Windows, ComObj,
  {$ENDIF}
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons, ExtCtrls,
  list_utils;

type

  { TFormAbout }

  TFormAbout = class(TForm)
    baboutfaq: TSpeedButton;
    baboutlocalhelp: TSpeedButton;
    baboutsupport: TSpeedButton;
    babouttracker: TSpeedButton;
    baboutweb: TSpeedButton;
    Bevel11: TShape;
    MemoAbout: TMemo;
    procedure baboutfaqClick(Sender: TObject);
    procedure baboutlocalhelpClick(Sender: TObject);
    procedure baboutsupportClick(Sender: TObject);
    procedure babouttrackerClick(Sender: TObject);
    procedure baboutwebClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

const
  FIRSTDOM      = 'http://peazip.sourceforge.net/';
  SECONDDOM     = 'http://www.peazip.org/';

var
  FormAbout: TFormAbout;
  executable_path,txt_2_7_validatecl:utf8string;
  desk_env:byte;

implementation

{ TFormAbout }

procedure checkdom(var dom,s:utf8string);
{$IFDEF MSWINDOWS}var http1: variant;{$ENDIF}
begin
dom:=FIRSTDOM;
{$IFDEF MSWINDOWS}
try
http1:=createoleobject('WinHttp.WinHttpRequest.5.1');
http1.open('GET', FIRSTDOM+'autoupdate.txt', false);
http1.send;
s:=http1.responsetext;
if length(s)<>5 then
begin
dom:=SECONDDOM;
http1:=createoleobject('WinHttp.WinHttpRequest.5.1');
http1.open('GET', SECONDDOM+'autoupdate.txt', false);
http1.send;
s:=http1.responsetext;
end;
except
end;
{$ENDIF}
end;

//open, cross platform, with sanitization of string passed to the function
function cp_open(s:utf8string; desk_env:byte):integer;
var
   w:widestring;
begin
cp_open:=-1;
if s='' then exit;
if validatecl(s)<>0 then
   begin
   MessageDlg(txt_2_7_validatecl+' '+s, mtWarning, [mbOK], 0);
   exit;
   end;
{$IFDEF MSWINDOWS}
w:=utf8decode(s);
cp_open:=ShellExecuteW(FormAbout.Handle, PWideChar ('open'), PWideChar(w), PWideChar (''), PWideChar (''), SW_SHOWNORMAL);
if cp_open<33 then
   cp_open:=shellexecuteW(FormAbout.handle,PWideChar('open'),PWideChar('RUNDLL32.EXE'),PWideChar('shell32.dll,OpenAs_RunDLL '+w),PWideChar (''), SW_SHOWNORMAL);
{$ENDIF}
{$IFDEF LINUX}cp_open:=cp_open_linuxlike(s,desk_env);{$ENDIF}//try to open via Gnome or KDE
{$IFDEF FREEBSD}cp_open:=cp_open_linuxlike(s,desk_env);{$ENDIF}
{$IFDEF NETBSD}cp_open:=cp_open_linuxlike(s,desk_env);{$ENDIF}
end;

procedure TFormAbout.baboutwebClick(Sender: TObject);
var dom,s:utf8string;
begin
checkdom(dom,s);
cp_open(dom+'index.html',desk_env);
end;

procedure TFormAbout.baboutsupportClick(Sender: TObject);
var dom,s:utf8string;
begin
checkdom(dom,s);
cp_open(dom+'peazip-help.html',desk_env);
end;

procedure TFormAbout.babouttrackerClick(Sender: TObject);
begin
cp_open('https://sourceforge.net/p/peazip/tickets/',desk_env);
end;

procedure TFormAbout.baboutfaqClick(Sender: TObject);
var dom,s:utf8string;
begin
checkdom(dom,s);
cp_open(dom+'peazip-help-faq.html',desk_env);
end;

procedure TFormAbout.baboutlocalhelpClick(Sender: TObject);
begin
  cp_open(executable_path+'peazip_help.pdf',desk_env);
end;

initialization
  {$I unit4.lrs}

end.

