[Setup]
AppId={{5A2BC38A-406C-4A5B-BF45-6991F9A05325}
AppName=PeaZip
AppVerName=PeaZip 5.4.1 (WIN64)
AppPublisher=Giorgio Tani
AppPublisherURL=http://www.peazip.org
AppSupportURL=http://www.peazip.org
AppUpdatesURL=http://www.peazip.org
DefaultDirName={pf}\PeaZip
DisableDirPage=no
DefaultGroupName=PeaZip
DisableProgramGroupPage=yes
LicenseFile=C:\input\peazip-5.4.1.WIN64\copying.txt
InfoBeforeFile=C:\input\peazip-5.4.1.WIN64\readme_Win64.txt
OutputDir=C:\output\
OutputBaseFilename=peazip-5.4.1.WIN64
SetupIconFile=peazip-icon-green.ico
Compression=lzma2
SolidCompression=yes
ChangesAssociations=yes
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64

[Registry]
Root: HKCR; Subkey: ".001"; ValueType: string; ValueName: ""; ValueData: "001"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "001"; ValueType: string; ValueName: ""; ValueData: "Split file"; Flags: uninsdeletekey
Root: HKCR; Subkey: "001\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\RES\ICONS\PEAZIP_BLOCK.ICO,0"
Root: HKCR; Subkey: "001\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\PEAZIP.EXE"" ""%1"""

Root: HKCR; Subkey: ".pea"; ValueType: string; ValueName: ""; ValueData: "PEA"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "PEA"; ValueType: string; ValueName: ""; ValueData: "PEA archive"; Flags: uninsdeletekey
Root: HKCR; Subkey: "PEA\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\RES\ICONS\PEAZIP.ICO,0"
Root: HKCR; Subkey: "PEA\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\PEAZIP.EXE"" ""%1"""

[Languages]
Name: "default"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\input\peazip-5.4.1.WIN64\peazip.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\input\peazip-5.4.1.WIN64\res\*"; DestDir: "{app}\res"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\input\peazip-5.4.1.WIN64\SendTo.7z"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\input\peazip-5.4.1.WIN64\copying.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\input\peazip-5.4.1.WIN64\readme_Win64.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\input\peazip-5.4.1.WIN64\peazip_help.pdf"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: "{app}\peazip.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.peazip.org"

[Icons]
Name: "{group}\PeaZip"; Filename: "{app}\peazip.exe"
; Name: "{group}\Reset PeaZip"; Filename: "{app}\peazip.exe"; Parameters: "-peazipreset"
Name: "{group}\{cm:ProgramOnTheWeb,PeaZip}"; Filename: "{app}\peazip.url"
Name: "{group}\{cm:UninstallProgram,PeaZip}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\PeaZip"; Filename: "{app}\peazip.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\PeaZip"; Filename: "{app}\peazip.exe"; Tasks: quicklaunchicon

[Run]
;Filename: "{app}\peazip.exe"; Description: "{cm:LaunchProgram,PeaZip}"; Flags: nowait postinstall skipifsilent
;temporarily deactivated since this works correctly (using current user's profile) only for Vista or more recent systems

[InstallDelete]
Type: filesandordirs; Name: "{app}\res\lang"

[UninstallDelete]
Type: files; Name: "{app}\peazip.url"

[CustomMessages]
Associations_Caption=Associations
Associations_Description=Set file associations
Associations_Labelfull1_Caption0=Read/write supported types:
Associations_Labelread1_Caption0=Read supported types:
Associations_cb7z_Caption0=7Z, XZ
Associations_cbbz2_Caption0=BZ2
Associations_cbgz_Caption0=GZ
Associations_cbpaq8_Caption0=*PAQ
Associations_cbquad_Caption0=QUAD/BALZ
Associations_cbtar_Caption0=TAR
Associations_cbzip_Caption0=ZIP, ZIPX
Associations_cbfullnone_Caption0=None of the above group (override selection)
Associations_cbarj_Caption0=ARJ
Associations_cbcab_Caption0=CAB
Associations_cblinux_Caption0=Linux (DEB, RPM, PET/PUP, SLP)
Associations_cbiso_Caption0=ISO, UDF
Associations_cblha_Caption0=LHA
Associations_cblzh_Caption0=LZH
Associations_cbrar_Caption0=RAR
Associations_cbcpio_Caption0=CPIO, Z
Associations_cbreadnone_Caption0=None of the above group (override selection)
Associations_cbace_Caption0=ACE
Associations_cbarc_Caption0=ARC/WRC
Associations_cbMac_Caption0=Mac (DMG/HFS)
context_Caption=Context menu
context_Description=Create application's entries in system's context menu
context_cbcontextext2here_Caption0=Extract here
context_cbcontextsplit_Caption0=Split file
context_cbcontextnone_Caption0=No context menu entry (override selection)
context_cbcontextext2folder_Caption0=Extract here (in new folder)
context_cbcontext7zs_Caption0=Add to .7Z
context_cbcontextzips_Caption0=Add to .ZIP
context_cbcontexttest_Caption0=Test archive(s)
context_cbcontextwipe_Caption0=Secure delete
context_cbbrowsepath_Caption0=Browse path with PeaZip
context_cbcontextadd2archiveseparate_Caption0=Add to separate archive(s)
context_cbcontextsfx_Caption0=Add to self extracting
context_CheckBox3_Caption0=Add to .7Z, ultra
context_CheckBox4_Caption0=Add to .ZIP, fastest
context_cbopas_Caption0=Open as archive
context_cbcascaded_Caption0=Cascaded menu
context_cbcontextzipmail_Caption0=Zip and mail
Links_Caption=SendTo
Links_Description=Create application's entries in SendTo menu
Links_cbfunext2here_Caption0=Extract here
Links_cbfun7z_Caption0=Add to .7Z
Links_cbfunzip_Caption0=Add to .ZIP
Links_cbfunsfx_Caption0=Add to self extracting
Links_cbfunsplit_Caption0=Split file
Links_cbfunnone_Caption0=No SendTo menu entry (override selection)
Links_cbfunext2folder_Caption0=Extract here (in new folder)
Links_cbfun7zs_Caption0=Add to separate .7Z
Links_cbfunzips_Caption0=Add to separate .ZIP
Links_cbfunencrypt_Caption0=Encrypt (PEA)
Links_cbfuntest_Caption0=Test archive(s)
Links_cbfunzipmail_Caption0=Add to .ZIP and mail
Links_cbfun7zmail_Caption0=Add to .7Z and mail
Links_cbfunsfxmail_Caption0=Add to sfx and mail
Links_cbfunwipe_Caption0=Secure delete
Links_cbfunext2to_Caption0=Extract...
Links_CheckBoxbrowsepath_Caption0=Browse path with PeaZip
Links_CheckBoxcommand_Caption0=Open command prompt here
Links_cbfunadd_Caption0=Add to archive
Links_cbfunopen_Caption0=Open as archive
install_Caption=Install PeaZip
install_Description=Installation options
install_Labelinstall1_Caption0=Default program's installation
install_Labelinstall1_Caption1=Default context menu and SendTo menu entries
install_Labelinstall1_Caption2=Configure file associations
install_RadioButtoninstall1_Caption0=Standard installation
install_RadioButtoninstall2_Caption0=Custom installation
install_RadioButtoninstall3_Caption0=No system integration
install_cbreset_Caption0=Reset current configuration
install_lupdate_Caption0=Check for updates
 				
[Code]
var
  MyProgChecked: Boolean;
  MyProgCheckResult: Boolean;
  FinishedInstall: Boolean;
  Labelfull1: TLabel;
  Bevel1: TBevel;
  Labelread1: TLabel;
  Bevel2: TBevel;
  cb7z: TCheckBox;
  cbbz2: TCheckBox;
  cbgz: TCheckBox;
  cbpaq8: TCheckBox;
  cbquad: TCheckBox;
  cbtar: TCheckBox;
  cbzip: TCheckBox;
  cbfullnone: TCheckBox;
  cbarj: TCheckBox;
  cbcab: TCheckBox;
  cblinux: TCheckBox;
  cbiso: TCheckBox;
  cblha: TCheckBox;
  cblzh: TCheckBox;
  cbrar: TCheckBox;
  cbcpio: TCheckBox;
  cbreadnone: TCheckBox;
	cbace: TCheckBox;
	cbarc: TCheckBox;
	cbMac: TCheckBox;
  Bevel1context: TBevel;
  cbcontextext2here: TCheckBox;
  cbcontextsplit: TCheckBox;
  cbcontextnone: TCheckBox;
  cbcontextext2folder: TCheckBox;
  cbcontext7zs: TCheckBox;
  cbcontextzips: TCheckBox;
  cbcontexttest: TCheckBox;
  cbcontextwipe: TCheckBox;
  cbbrowsepath: TCheckBox;
  cbcontextadd2archiveseparate: TCheckBox;
  cbcontextsfx: TCheckBox;
  CheckBox3: TCheckBox;
  CheckBox4: TCheckBox;
  cbopas: TCheckBox;
  cbcascaded: TCheckBox;
  cbcontextzipmail: TCheckBox;
  Bevel1fun: TBevel;
  cbfunext2here: TCheckBox;
  cbfun7z: TCheckBox;
  cbfunzip: TCheckBox;
  cbfunsfx: TCheckBox;
  cbfunsplit: TCheckBox;
  cbfunnone: TCheckBox;
  cbfunext2folder: TCheckBox;
  cbfun7zs: TCheckBox;
  cbfunzips: TCheckBox;
  cbfunencrypt: TCheckBox;
  cbfuntest: TCheckBox;
  cbfunzipmail: TCheckBox;
  cbfun7zmail: TCheckBox;
  cbfunsfxmail: TCheckBox;
  cbfunwipe: TCheckBox;
  cbfunext2to: TCheckBox;
  CheckBoxbrowsepath: TCheckBox;
  CheckBoxcommand: TCheckBox;
  cbfunadd: TCheckBox;
  cbfunopen: TCheckBox;
  Labelinstall1: TLabel;
  RadioButtoninstall1: TRadioButton;
  RadioButtoninstall2: TRadioButton;
  RadioButtoninstall3: TRadioButton;
  cbreset: TCheckbox;
  lupdate: TLabel;

{ install_Activate }

procedure install_Activate(Page: TWizardPage);
begin
  // enter code here...
end;

{ install_ShouldSkipPage }

function install_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
  Result := False;
end;

{ install_BackButtonClick }

function install_BackButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ install_NextkButtonClick }

function install_NextButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ install_CancelButtonClick }

procedure install_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
begin
  // enter code here...
end;

procedure install_lupdateClick(Sender: TObject);
var
  ErrorCode: Integer;
  http1: variant;
  s:string;
begin
try
http1:=createoleobject('WinHttp.WinHttpRequest.5.1');
http1.open('GET', 'http://peazip.sourceforge.net/autoupdate.txt', false);
http1.send;
s:=http1.responsetext;
if length(s)<>5 then
   ShellExecAsOriginalUser('open', 'http://www.peazip.org', '', '', SW_SHOW, ewNoWait, ErrorCode)
else
   ShellExecAsOriginalUser('open', 'http://peazip.sourceforge.net', '', '', SW_SHOW, ewNoWait, ErrorCode);
except
end;
end;

{ install_CreatePage }

function install_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:install_Caption}'),
	  ExpandConstant('{cm:install_Description}')
  );

{ Labelinstall1 }
  Labelinstall1 := TLabel.Create(Page);
  with Labelinstall1 do
  begin
    Parent := Page.Surface;
    Caption :=
      ExpandConstant('{cm:install_Labelinstall1_Caption0}') + #13 +
      ExpandConstant('{cm:install_Labelinstall1_Caption1}') + #13 +
      ExpandConstant('{cm:install_Labelinstall1_Caption2}');
    Left := ScaleX(32);
    Top := ScaleY(44);
    Width := ScaleX(363);
    Height := ScaleY(64);
  end;

  { RadioButtoninstall1 }
  RadioButtoninstall1 := TRadioButton.Create(Page);
  with RadioButtoninstall1 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_RadioButtoninstall1_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(12);
    Width := ScaleX(385);
    Height := ScaleY(25);
    Checked := True;
    TabOrder := 0;
    TabStop := True;
  end;

  { RadioButtoninstall2 }
  RadioButtoninstall2 := TRadioButton.Create(Page);
  with RadioButtoninstall2 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_RadioButtoninstall2_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(108);
    Width := ScaleX(385);
    Height := ScaleY(25);
    TabOrder := 1;
    TabStop := True;
  end;

  { RadioButtoninstall3 }
  RadioButtoninstall3 := TRadioButton.Create(Page);
  with RadioButtoninstall3 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_RadioButtoninstall3_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(144);
    Width := ScaleX(385);
    Height := ScaleY(25);
    TabOrder := 2;
    TabStop := True;
  end;

  { cbreset }
  cbreset := Tcheckbox.Create(Page);
  with cbreset do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_cbreset_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(204);
    Width := ScaleX(250);
    Height := ScaleY(25);
  end;  
  if (GetWindowsVersion shr 24 <6) then cbreset.visible:=false;

    { lupdate }
  lupdate := TLabel.Create(Page);
  with lupdate do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_lupdate_Caption0}');
    Left := ScaleX(304);
    Top := ScaleY(208);
    Width := ScaleX(88);
    Height := ScaleY(13);
    Cursor := crHand;
    Font.Color := 16711680;
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
    Font.Style := [fsUnderline];
    OnClick := @install_lupdateClick;
  end;

  with Page do
  begin
    OnActivate := @install_Activate;
    OnShouldSkipPage := @install_ShouldSkipPage;
    OnBackButtonClick := @install_BackButtonClick;
    OnNextButtonClick := @install_NextButtonClick;
    OnCancelButtonClick := @install_CancelButtonClick;
  end;

  Result := Page.ID;
end;       				
				
				{ Associations_Activate }
				
				procedure Associations_Activate(Page: TWizardPage);
				begin
				  // enter code here...
				end;
				
				{ Associations_ShouldSkipPage }
				
				function Associations_ShouldSkipPage(Page: TWizardPage): Boolean;
				begin
				  if (radiobuttoninstall3.Checked = True) then Result := True
          else Result := False;
				end;
				
				{ Associations_BackButtonClick }
				
				function Associations_BackButtonClick(Page: TWizardPage): Boolean;
				begin
				  Result := True;
				end;
				
				{ Associations_NextkButtonClick }
				
				function Associations_NextButtonClick(Page: TWizardPage): Boolean;
				begin
				  Result := True;
				end;
				
				{ Associations_CancelButtonClick }
				
				procedure Associations_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
				begin
				  // enter code here...
				end;
				
				{ Associations_CreatePage }
				
				function Associations_CreatePage(PreviousPageId: Integer): Integer;
				var
				  Page: TWizardPage;
				begin
				  Page := CreateCustomPage(
				    PreviousPageId,
				    ExpandConstant('{cm:Associations_Caption}'),
				    ExpandConstant('{cm:Associations_Description}')
				  );
				
{ Labelfull1 }
Labelfull1 := TLabel.Create(Page);
with Labelfull1 do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_Labelfull1_Caption0}');
  Left := ScaleX(0);
  Top := ScaleY(0);
  Width := ScaleX(163);
  Height := ScaleY(13);
  Font.Color := -16777208;
  Font.Height := ScaleY(-11);
  Font.Name := 'Tahoma';
  Font.Style := [fsBold];
  WordWrap := True;
end;

{ Bevel1 }
Bevel1 := TBevel.Create(Page);
with Bevel1 do
begin
  Parent := Page.Surface;
  Left := ScaleX(8);
  Top := ScaleY(20);
  Width := ScaleX(396);
  Height := ScaleY(52);
end;

{ Labelread1 }
Labelread1 := TLabel.Create(Page);
with Labelread1 do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_Labelread1_Caption0}');
  Left := ScaleX(0);
  Top := ScaleY(112);
  Width := ScaleX(128);
  Height := ScaleY(13);
  Font.Color := -16777208;
  Font.Height := ScaleY(-11);
  Font.Name := 'Tahoma';
  Font.Style := [fsBold];
  WordWrap := True;
end;

{ Bevel2 }
Bevel2 := TBevel.Create(Page);
with Bevel2 do
begin
  Parent := Page.Surface;
  Left := ScaleX(8);
  Top := ScaleY(132);
  Width := ScaleX(396);
  Height := ScaleY(78);
end;

{ cb7z }
cb7z := TCheckBox.Create(Page);
with cb7z do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cb7z_Caption0}');
  Left := ScaleX(16);
  Top := ScaleY(24);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 2;
end;

{ cbbz2 }
cbbz2 := TCheckBox.Create(Page);
with cbbz2 do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbbz2_Caption0}');
  Left := ScaleX(216);
  Top := ScaleY(24);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 4;
end;

{ cbgz }
cbgz := TCheckBox.Create(Page);
with cbgz do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbgz_Caption0}');
  Left := ScaleX(316);
  Top := ScaleY(24);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 5;
end;

{ cbpaq8 }
cbpaq8 := TCheckBox.Create(Page);
with cbpaq8 do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbpaq8_Caption0}');
  Left := ScaleX(16);
  Top := ScaleY(48);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 6;
end;

{ cbquad }
cbquad := TCheckBox.Create(Page);
with cbquad do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbquad_Caption0}');
  Left := ScaleX(116);
  Top := ScaleY(48);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 7;
end;

{ cbtar }
cbtar := TCheckBox.Create(Page);
with cbtar do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbtar_Caption0}');
  Left := ScaleX(216);
  Top := ScaleY(48);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 8;
end;

{ cbzip }
cbzip := TCheckBox.Create(Page);
with cbzip do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbzip_Caption0}');
  Left := ScaleX(316);
  Top := ScaleY(48);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 9;
end;

{ cbfullnone }
cbfullnone := TCheckBox.Create(Page);
with cbfullnone do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbfullnone_Caption0}');
  Left := ScaleX(8);
  Top := ScaleY(74);
  Width := ScaleX(321);
  Height := ScaleY(25);
  TabOrder := 0;
end;

{ cbarj }
cbarj := TCheckBox.Create(Page);
with cbarj do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbarj_Caption0}');
  Left := ScaleX(116);
  Top := ScaleY(136);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 11;
end;

{ cbcab }
cbcab := TCheckBox.Create(Page);
with cbcab do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbcab_Caption0}');
  Left := ScaleX(216);
  Top := ScaleY(136);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 12;
end;

{ cblinux }
cblinux := TCheckBox.Create(Page);
with cblinux do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cblinux_Caption0}');
  Left := ScaleX(16);
  Top := ScaleY(184);
  Width := ScaleX(200);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 18;
end;

{ cbiso }
cbiso := TCheckBox.Create(Page);
with cbiso do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbiso_Caption0}');
  Left := ScaleX(16);
  Top := ScaleY(160);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 14;
end;

{ cblha }
cblha := TCheckBox.Create(Page);
with cblha do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cblha_Caption0}');
  Left := ScaleX(116);
  Top := ScaleY(160);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 15;
end;

{ cblzh }
cblzh := TCheckBox.Create(Page);
with cblzh do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cblzh_Caption0}');
  Left := ScaleX(216);
  Top := ScaleY(160);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 16;
end;

{ cbrar }
cbrar := TCheckBox.Create(Page);
with cbrar do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbrar_Caption0}');
  Left := ScaleX(316);
  Top := ScaleY(160);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 17;
end;

{ cbcpio }
cbcpio := TCheckBox.Create(Page);
with cbcpio do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbcpio_Caption0}');
  Left := ScaleX(316);
  Top := ScaleY(136);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 13;
end;

{ cbreadnone }
cbreadnone := TCheckBox.Create(Page);
with cbreadnone do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbreadnone_Caption0}');
  Left := ScaleX(8);
  Top := ScaleY(210);
  Width := ScaleX(329);
  Height := ScaleY(25);
  TabOrder := 1;
end;

{ cbace }
cbace := TCheckBox.Create(Page);
with cbace do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbace_Caption0}');
  Left := ScaleX(16);
  Top := ScaleY(136);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 10;
end;

{ cbarc }
cbarc := TCheckBox.Create(Page);
with cbarc do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbarc_Caption0}');
  Left := ScaleX(116);
  Top := ScaleY(24);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 3;
end;

{ cbMac }
cbMac := TCheckBox.Create(Page);
with cbMac do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbMac_Caption0}');
  Left := ScaleX(216);
  Top := ScaleY(184);
  Width := ScaleX(200);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 19;
end;
				
				  with Page do
				  begin
				    OnActivate := @Associations_Activate;
				    OnShouldSkipPage := @Associations_ShouldSkipPage;
				    OnBackButtonClick := @Associations_BackButtonClick;
				    OnNextButtonClick := @Associations_NextButtonClick;
				    OnCancelButtonClick := @Associations_CancelButtonClick;
				  end;
				
				  Result := Page.ID;
				end;
				
{ context_Activate }

procedure context_Activate(Page: TWizardPage);
begin
  // enter code here...
end;

{ context_ShouldSkipPage }

function context_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
	if (radiobuttoninstall1.Checked = True) or (radiobuttoninstall3.Checked = True) then Result := True
  else Result := False;
end;

{ context_BackButtonClick }

function context_BackButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ context_NextkButtonClick }

function context_NextButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ context_CancelButtonClick }

procedure context_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
begin
  // enter code here...
end;

{ context_CreatePage }

function context_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:context_Caption}'),
    ExpandConstant('{cm:context_Description}')
  );

{ Bevel1context }
  Bevel1context := TBevel.Create(Page);
  with Bevel1context do
  begin
    Parent := Page.Surface;
    Left := ScaleX(8);
    Top := ScaleY(2);
    Width := ScaleX(396);
    Height := ScaleY(210);
  end;
  
  { cbcontextext2here }
  cbcontextext2here := TCheckBox.Create(Page);
  with cbcontextext2here do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextext2here_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(68);
    Width := ScaleX(193);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 7;
  end;
  
  { cbcontextsplit }
  cbcontextsplit := TCheckBox.Create(Page);
  with cbcontextsplit do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextsplit_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(148);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 6;
  end;
  
  { cbcontextnone }
  cbcontextnone := TCheckBox.Create(Page);
  with cbcontextnone do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextnone_Caption0}');
    Left := ScaleX(8);
    Top := ScaleY(210);
    Width := ScaleX(321);
    Height := ScaleY(25);
    TabOrder := 0;
  end;
  
  { cbcontextext2folder }
  cbcontextext2folder := TCheckBox.Create(Page);
  with cbcontextext2folder do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextext2folder_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(88);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 8;
  end;
  
  { cbcontext7zs }
  cbcontext7zs := TCheckBox.Create(Page);
  with cbcontext7zs do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontext7zs_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(48);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 2;
  end;
  
  { cbcontextzips }
  cbcontextzips := TCheckBox.Create(Page);
  with cbcontextzips do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextzips_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(88);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 3;
  end;
  
  { cbcontexttest }
  cbcontexttest := TCheckBox.Create(Page);
  with cbcontexttest do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontexttest_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(108);
    Width := ScaleX(185);
    Height := ScaleY(17);
    TabOrder := 9;
  end;
  
  { cbcontextwipe }
  cbcontextwipe := TCheckBox.Create(Page);
  with cbcontextwipe do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextwipe_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(8);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 5;
  end;
  
  { cbbrowsepath }
  cbbrowsepath := TCheckBox.Create(Page);
  with cbbrowsepath do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbbrowsepath_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(28);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 10;
  end;
  
  { cbcontextadd2archiveseparate }
  cbcontextadd2archiveseparate := TCheckBox.Create(Page);
  with cbcontextadd2archiveseparate do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextadd2archiveseparate_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(8);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 1;
  end;
  
  { cbcontextsfx }
  cbcontextsfx := TCheckBox.Create(Page);
  with cbcontextsfx do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextsfx_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(28);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 4;
  end;

  { CheckBox3 }
  CheckBox3 := TCheckBox.Create(Page);
  with CheckBox3 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_CheckBox3_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(68);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 10;
  end;
  
  { CheckBox4 }
  CheckBox4 := TCheckBox.Create(Page);
  with CheckBox4 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_CheckBox4_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(108);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 11;
  end;
  
  { cbopas }
  cbopas := TCheckBox.Create(Page);
  with cbopas do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbopas_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(48);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 12;
  end;
  
  { cbcascaded }
  cbcascaded := TCheckBox.Create(Page);
  with cbcascaded do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcascaded_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(188);
    Width := ScaleX(185);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 13;
  end;
  if (GetWindowsVersion shr 24 <6) or
     ((GetWindowsVersion shr 24 =6) and ((GetWindowsVersion shr 16) and $FF =0))
     then cbcascaded.visible:=false;
  
  { cbcontextzipmail }
  cbcontextzipmail := TCheckBox.Create(Page);
  with cbcontextzipmail do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextzipmail_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(128);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 14;
  end;

  with Page do
  begin
    OnActivate := @context_Activate;
    OnShouldSkipPage := @context_ShouldSkipPage;
    OnBackButtonClick := @context_BackButtonClick;
    OnNextButtonClick := @context_NextButtonClick;
    OnCancelButtonClick := @context_CancelButtonClick;
  end;

  Result := Page.ID;
end;
    
{ Links_Activate }

procedure Links_Activate(Page: TWizardPage);
begin
  // enter code here...
end;

{ Links_ShouldSkipPage }

function Links_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
if (radiobuttoninstall1.Checked = True) or (radiobuttoninstall3.Checked = True) then Result := True
else Result := False;
end;

{ Links_BackButtonClick }

function Links_BackButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ Links_NextkButtonClick }

function Links_NextButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ Links_CancelButtonClick }

procedure Links_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
begin
  // enter code here...
end;

{ Links_CreatePage }

function Links_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:Links_Caption}'),
    ExpandConstant('{cm:Links_Description}')
  );

{ Bevel1fun }
  Bevel1fun := TBevel.Create(Page);
  with Bevel1fun do
  begin
    Parent := Page.Surface;
    Left := ScaleX(8);
    Top := ScaleY(2);
    Width := ScaleX(396);
    Height := ScaleY(210);
  end;
  
  { cbfunext2here }
  cbfunext2here := TCheckBox.Create(Page);
  with cbfunext2here do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunext2here_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(48);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 12;
  end;
  
  { cbfun7z }
  cbfun7z := TCheckBox.Create(Page);
  with cbfun7z do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfun7z_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(28);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 2;
  end;
  
  { cbfunzip }
  cbfunzip := TCheckBox.Create(Page);
  with cbfunzip do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunzip_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(88);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 5;
  end;
  
  { cbfunsfx }
  cbfunsfx := TCheckBox.Create(Page);
  with cbfunsfx do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunsfx_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(148);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 8;
  end;
  
  { cbfunsplit }
  cbfunsplit := TCheckBox.Create(Page);
  with cbfunsplit do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunsplit_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(168);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 19;
  end;
  
  { cbfunnone }
  cbfunnone := TCheckBox.Create(Page);
  with cbfunnone do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunnone_Caption0}');
    Left := ScaleX(8);
    Top := ScaleY(210);
    Width := ScaleX(321);
    Height := ScaleY(25);
    TabOrder := 0;
  end;
  
  { cbfunext2folder }
  cbfunext2folder := TCheckBox.Create(Page);
  with cbfunext2folder do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunext2folder_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(68);
    Width := ScaleX(180);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 13;
  end;
  
  { cbfun7zs }
  cbfun7zs := TCheckBox.Create(Page);
  with cbfun7zs do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfun7zs_Caption0}');
    Left := ScaleX(32);
    Top := ScaleY(48);
    Width := ScaleX(161);
    Height := ScaleY(17);
    TabOrder := 3;
  end;
  
  { cbfunzips }
  cbfunzips := TCheckBox.Create(Page);
  with cbfunzips do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunzips_Caption0}');
    Left := ScaleX(32);
    Top := ScaleY(108);
    Width := ScaleX(153);
    Height := ScaleY(17);
    TabOrder := 6;
  end;
  
  { cbfunencrypt }
  cbfunencrypt := TCheckBox.Create(Page);
  with cbfunencrypt do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunencrypt_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(188);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 10;
  end;
  
  { cbfuntest }
  cbfuntest := TCheckBox.Create(Page);
  with cbfuntest do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfuntest_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(108);
    Width := ScaleX(185);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 15;
  end;
  
  { cbfunzipmail }
  cbfunzipmail := TCheckBox.Create(Page);
  with cbfunzipmail do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunzipmail_Caption0}');
    Left := ScaleX(32);
    Top := ScaleY(128);
    Width := ScaleX(153);
    Height := ScaleY(17);
    TabOrder := 7;
  end;
  
  { cbfun7zmail }
  cbfun7zmail := TCheckBox.Create(Page);
  with cbfun7zmail do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfun7zmail_Caption0}');
    Left := ScaleX(32);
    Top := ScaleY(68);
    Width := ScaleX(161);
    Height := ScaleY(17);
    TabOrder := 4;
  end;
  
  { cbfunsfxmail }
  cbfunsfxmail := TCheckBox.Create(Page);
  with cbfunsfxmail do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunsfxmail_Caption0}');
    Left := ScaleX(32);
    Top := ScaleY(168);
    Width := ScaleX(161);
    Height := ScaleY(17);
    TabOrder := 9;
  end;
  
  { cbfunwipe }
  cbfunwipe := TCheckBox.Create(Page);
  with cbfunwipe do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunwipe_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(148);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 18;
  end;
  
  { cbfunext2to }
  cbfunext2to := TCheckBox.Create(Page);
  with cbfunext2to do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunext2to_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(88);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 14;
  end;
  
  { CheckBoxbrowsepath }
  CheckBoxbrowsepath := TCheckBox.Create(Page);
  with CheckBoxbrowsepath do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_CheckBoxbrowsepath_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(8);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 16;
  end;
  
  { CheckBoxcommand }
  CheckBoxcommand := TCheckBox.Create(Page);
  with CheckBoxcommand do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_CheckBoxcommand_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(128);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 17;
  end;
  
  { cbfunadd }
  cbfunadd := TCheckBox.Create(Page);
  with cbfunadd do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunadd_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(8);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 1;
  end;
  
  { cbfunopen }
  cbfunopen := TCheckBox.Create(Page);
  with cbfunopen do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Links_cbfunopen_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(28);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 11;
  end;

  with Page do
  begin
    OnActivate := @Links_Activate;
    OnShouldSkipPage := @Links_ShouldSkipPage;
    OnBackButtonClick := @Links_BackButtonClick;
    OnNextButtonClick := @Links_NextButtonClick;
    OnCancelButtonClick := @Links_CancelButtonClick;
  end;

  Result := Page.ID;
end;
				
				{ InitializeWizard }
				
				procedure InitializeWizard();
				begin		
          Associations_CreatePage(wpSelectDir);//InfoBefore);
				  Links_CreatePage(wpSelectDir);
				  context_CreatePage(wpSelectDir);
				  install_CreatePage(wpInfoBefore);//(wpWelcome);
				end;

function shouldskippage(CurPageID: Integer): Boolean;
begin
if radiobuttoninstall1.Checked = True then
   begin
   if curpageid=wpSelectDir then Result := True;
	 if curpageid=wpSelectTasks then Result := True;
	 end;
end;

procedure clearlinks;
begin
deletefile(expandconstant('{sendto}')+'\Add to archive.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .7Z.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .7Z and send by mail.lnk');
deletefile(expandconstant('{sendto}')+'\Add to separate .7Z.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .ZIP.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .ZIP and send by mail.lnk');
deletefile(expandconstant('{sendto}')+'\Add to separate .ZIP.lnk');
deletefile(expandconstant('{sendto}')+'\Add to self-extracting archive.lnk');
deletefile(expandconstant('{sendto}')+'\Add to sfx and send by mail.lnk');
deletefile(expandconstant('{sendto}')+'\Encrypt.lnk');
deletefile(expandconstant('{sendto}')+'\Split file.lnk');
deletefile(expandconstant('{sendto}')+'\Secure delete.lnk');
deletefile(expandconstant('{sendto}')+'\Extract here.lnk');
deletefile(expandconstant('{sendto}')+'\Extract....lnk');
deletefile(expandconstant('{sendto}')+'\Extract here (in new folder).lnk');
deletefile(expandconstant('{sendto}')+'\Open with PeaZip.lnk');
deletefile(expandconstant('{sendto}')+'\Test archive(s).lnk');
deletefile(expandconstant('{sendto}')+'\Open as archive.lnk');
deletefile(expandconstant('{sendto}')+'\Browse path with PeaZip.lnk');
deletefile(expandconstant('{sendto}')+'\Open command prompt here.lnk');
end;

procedure clearcontextlegacy;
begin
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to archive');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .7Z');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .7Z, normal');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .ZIP');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to .ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Zip and mail');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to self-extracting archive');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to separate archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to separate .7Z');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Add to separate .ZIP');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Open as archive');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to archive');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .7Z');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .7Z, normal');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .ZIP');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to .ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Zip and mail');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to self-extracting archive');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to separate archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to separate .7Z');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Add to separate .ZIP');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Split file');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Secure delete');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Split file');
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\Secure delete');
RegDeleteKeyIncludingSubkeys(HKCR, 'PEA\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'PEA\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PEA\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, '001\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, '001\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, '001\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, '7Z\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'XZ\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARC\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'WRC\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'BZ2\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'GZ\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ1\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ5\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ8\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8F\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8JD\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8L\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8O\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZPAQ\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'QUAD\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'BALZ\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'TAR\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'TGZ\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZIP\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'ACE\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARJ\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'CAB\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'CPIO\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'DEB\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'DMG\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'HFS\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'ISO\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'UDF\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'LHA\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'LZH\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'PET\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'PUP\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'RAR\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'RPM\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'SLP\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, 'Z\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCR, '7Z\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'XZ\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARC\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'WRC\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'BZ2\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'GZ\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ1\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ5\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ8\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8F\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8JD\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8L\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8O\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZPAQ\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'QUAD\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'BALZ\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'TAR\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'TGZ\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZIP\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ACE\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARJ\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'CAB\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'CPIO\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'DEB\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'DMG\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'HFS\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ISO\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'UDF\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LHA\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LZH\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PET\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PUP\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'RAR\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'RPM\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'SLP\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, 'Z\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCR, '7Z\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'XZ\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARC\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'WRC\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'BZ2\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'GZ\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ1\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ5\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ8\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8F\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8JD\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8L\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8O\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZPAQ\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'QUAD\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'BALZ\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'TAR\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'TGZ\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZIP\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'ACE\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARJ\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'CAB\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'CPIO\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'DEB\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'DMG\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'HFS\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'ISO\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'UDF\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'LHA\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'LZH\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'PET\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'PUP\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'RAR\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'RPM\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'SLP\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, 'Z\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCR, '7Z\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'XZ\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARC\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'WRC\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'BZ2\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'GZ\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ1\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ5\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ8\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8F\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8JD\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8L\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8O\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZPAQ\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'QUAD\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'BALZ\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'TAR\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'TGZ\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZIP\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ACE\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARJ\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'CAB\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'CPIO\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'DEB\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'DMG\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'HFS\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'ISO\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'UDF\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LHA\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'LZH\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PET\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'PUP\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'RAR\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'RPM\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'SLP\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCR, 'Z\shell\Test archive(s)');
end;

procedure clearcontextseven;
begin
RegDeleteKeyIncludingSubkeys(HKCR, 'Directory\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'PEA\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, '001\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, '7Z\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'XZ\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARC\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'WRC\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'BZ2\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'GZ\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ1\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ5\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ8\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8F\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8JD\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8L\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8O\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZPAQ\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'QUAD\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'BALZ\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'TAR\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'TGZ\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'ZIP\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'ACE\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'ARJ\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'CAB\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'CPIO\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'Z\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'DEB\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'PET\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'PUP\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'RPM\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'SLP\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'DMG\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'HFS\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'ISO\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'UDF\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'LHA\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'LZH\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCR, 'RAR\shell\PeaZip');
if IsWin64 then
   begin
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a');
   RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test');
   end
else
   begin
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a');
   RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test');
   end;
end;

procedure clearassociations;
begin

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\7Z') then
    begin
    //7Z
    RegDeleteValue(HKCR, '.7z', '');
    RegDeleteKeyIncludingSubkeys(HKCR, '7Z');
    //XZ
    RegDeleteValue(HKCR, '.xz', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'XZ');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\ARC') then
    begin
    //ARC
    RegDeleteValue(HKCR, '.arc', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'ARC');
    //WRC
    RegDeleteValue(HKCR, '.wrc', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'WRC');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\BZ2') then
    begin
    //BZip2
    RegDeleteValue(HKCR, '.bz', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'BZ');
    RegDeleteValue(HKCR, '.tbz', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'TBZ');
    RegDeleteValue(HKCR, '.bz2', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'BZ2');
    RegDeleteValue(HKCR, '.tbz2', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'TBZ2');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\GZ') then
    begin
    //GZip
    RegDeleteValue(HKCR, '.gz', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'GZ');
    //TGZ
    RegDeleteValue(HKCR, '.tgz', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'TGZ');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\PAQ') then
    begin
    //LPAQ1
    RegDeleteValue(HKCR, '.lpaq1', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ1');
    //LPAQ5
    RegDeleteValue(HKCR, '.lpaq5', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ5');
    //LPAQ8
    RegDeleteValue(HKCR, '.lpaq8', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'LPAQ8');
    //PAQ8F
    RegDeleteValue(HKCR, '.paq8f', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8F');
    //PAQ8JD
    RegDeleteValue(HKCR, '.paq8jd', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8JD');
    //PAQ8L
    RegDeleteValue(HKCR, '.paq8l', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8L');
    //PAQ8O
    RegDeleteValue(HKCR, '.paq8o', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'PAQ8O');
    //ZPAQ
    RegDeleteValue(HKCR, '.zpaq', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'ZPAQ');;
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\QUAD') then
    begin
    //QUAD
    RegDeleteValue(HKCR, '.quad', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'QUAD');
    //BALZ
    RegDeleteValue(HKCR, '.balz', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'BALZ');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\TAR') then
    begin
    //Tar
    RegDeleteValue(HKCR, '.tar', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'TAR');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\ZIP') then
    begin
    //Zip
    RegDeleteValue(HKCR, '.zip', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'ZIP');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip\ZIPX') then
    begin
    //Zipx
    RegDeleteValue(HKCR, '.zipx', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'ZIPX');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\ACE') then
    begin
    //ACE
    RegDeleteValue(HKCR, '.ACE', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'ACE');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\ARJ') then
    begin
    //ARJ
    RegDeleteValue(HKCR, '.ARJ', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'ARJ');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\CAB') then
    begin
    //CAB
    RegDeleteValue(HKCR, '.CAB', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'CAB');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\CPIO') then
    begin
    //CPIO
    RegDeleteValue(HKCR, '.CPIO', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'CPIO');
    //Z
    RegDeleteValue(HKCR, '.Z', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'Z');
    //Z
    RegDeleteValue(HKCR, '.TZ', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'TZ');
    //Z
    RegDeleteValue(HKCR, '.TAZ', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'TAZ');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\linux') then
    begin
    //DEB
    RegDeleteValue(HKCR, '.DEB', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'DEB');
    //RPM
    RegDeleteValue(HKCR, '.RPM', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'RPM');
    //SLP
    RegDeleteValue(HKCR, '.SLP', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'SLP');
    //PET
    RegDeleteValue(HKCR, '.PET', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'PET');
    //PUP
    RegDeleteValue(HKCR, '.PUP', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'PUP');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\ISO') then
    begin
    //ISO
    RegDeleteValue(HKCR, '.ISO', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'ISO');
    //UDF
    RegDeleteValue(HKCR, '.UDF', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'UDF');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\mac') then
    begin
    //DMG
    RegDeleteValue(HKCR, '.DMG', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'DMG');
    //HFS
    RegDeleteValue(HKCR, '.HFS', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'HFS');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\LHA') then
    begin
    //LHA
    RegDeleteValue(HKCR, '.LHA', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'LHA');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\LZH') then
    begin
    //LZH
    RegDeleteValue(HKCR, '.LZH', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'LZH');
    end;

    if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional\RAR') then
    begin
    //RAR
    RegDeleteValue(HKCR, '.RAR', '');
    RegDeleteKeyIncludingSubkeys(HKCR, 'RAR');
    end;

if RegKeyExists(HKLM, 'SOFTWARE\PeaZip') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\PeaZip');
if RegKeyExists(HKLM, 'SOFTWARE\PeaZip_additional') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\PeaZip_additional');
end;

procedure contextseven;
var
  s,sdir,sarc:ansistring;
begin
      s:='';
      sarc:='';
      sdir:='';

      sdir:=sdir+'PeaZip.add2separate; ';
      if cbcontext7zs.state = cbChecked then sdir:=sdir+'PeaZip.add2separate7z; ';
      if checkbox3.state = cbChecked then sdir:=sdir+'PeaZip.add2separate7zultra; ';
      if cbcontextzips.state = cbChecked then sdir:=sdir+'PeaZip.add2separatezip; ';
      if checkbox4.state = cbChecked then sdir:=sdir+'PeaZip.add2separatezipfastest; ';
      if cbcontextzipmail.state = cbChecked then sdir:=sdir+'PeaZip.add2separatezipmail; ';
      if cbcontextsfx.state = cbChecked then sdir:=sdir+'PeaZip.add2separatesfx; ';
      if cbcontextadd2archiveseparate.state = cbChecked then sdir:=sdir+'PeaZip.add2separatesingle; ';
      if cbbrowsepath.state = cbChecked then sdir:=sdir+'PeaZip.ext2browsepath; ';
      if cbcontextsplit.state = cbChecked then sdir:=sdir+'PeaZip.add2split; ';
      if cbcontextwipe.state = cbChecked then sdir:=sdir+'PeaZip.add2wipe; ';
      RegWriteStringValue(HKCR, 'Directory\shell\PeaZip', 'SubCommands', sdir+'PeaZip.ext2main; ');
      RegWriteStringValue(HKCR, 'Directory\shell\PeaZip', 'MultiSelectModel', 'player');
      RegWriteStringValue(HKCR, 'Directory\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
      RegWriteStringValue(HKCR, 'Directory\shell\PeaZip\command', '', ''); //workaround: in Windows 7 it is not needed a \command key for this type of entry, but some optimization/cleaning utilities (i.e. TuneUp) would otherwise delete all entries in \shell missing a \command key
      RegDeleteValue(HKCR, 'Directory\shell\PeaZip\command', ''); //the key created for the workaround is emptied to default value, otherwise it may be detected as a defective link by some utilities

      sarc:=sarc+'PeaZip.ext2main; ';
      if cbcontextext2here.state = cbChecked then sarc:=sarc+'PeaZip.ext2here; ';
      if cbcontextext2folder.state = cbChecked then sarc:=sarc+'PeaZip.ext2folder; '; 
      if cbcontexttest.state = cbChecked then sarc:=sarc+'PeaZip.ext2test; ';     

      s:=s+'PeaZip.add2separate;';
      if cbcontext7zs.state = cbChecked then s:=s+'PeaZip.add2separate7z; ';
      if checkbox3.state = cbChecked then s:=s+'PeaZip.add2separate7zultra; ';
      if cbcontextzips.state = cbChecked then s:=s+'PeaZip.add2separatezip; ';
      if checkbox4.state = cbChecked then s:=s+'PeaZip.add2separatezipfastest; ';
      if cbcontextzipmail.state = cbChecked then s:=s+'PeaZip.add2separatezipmail; ';
      if cbcontextsfx.state = cbChecked then s:=s+'PeaZip.add2separatesfx; ';
      if cbcontextadd2archiveseparate.state = cbChecked then s:=s+'PeaZip.add2separatesingle; ';
      if cbbrowsepath.state = cbChecked then s:=s+'PeaZip.ext2browsepath; ';
      if cbopas.state = cbChecked then s:=s+'PeaZip.ext2browseasarchive; ';
      if cbcontextsplit.state = cbChecked then s:=s+'PeaZip.add2split; ';
      if cbcontextwipe.state = cbChecked then s:=s+'PeaZip.add2wipe; ';
      RegWriteStringValue(HKCR, '*\shell\PeaZip', 'SubCommands', s+sarc);
      RegWriteStringValue(HKCR, '*\shell\PeaZip', 'MultiSelectModel', 'player');
      RegWriteStringValue(HKCR, '*\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
      RegWriteStringValue(HKCR, '*\shell\PeaZip\command', '', '');
      RegDeleteValue(HKCR, '*\shell\PeaZip\command', '');

      RegWriteStringValue(HKCR, 'PEA\shell\PeaZip', 'SubCommands', sarc+s);
      RegWriteStringValue(HKCR, 'PEA\shell\PeaZip', 'MultiSelectModel', 'player');
      RegWriteStringValue(HKCR, 'PEA\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
      RegWriteStringValue(HKCR, 'PEA\shell\PeaZip\command', '', '');
      RegDeleteValue(HKCR, 'PEA\shell\PeaZip\command', '');

      RegWriteStringValue(HKCR, '001\shell\PeaZip', 'SubCommands', sarc+s);
      RegWriteStringValue(HKCR, '001\shell\PeaZip', 'MultiSelectModel', 'player');
      RegWriteStringValue(HKCR, '001\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
      RegWriteStringValue(HKCR, '001\shell\PeaZip\command', '', '');
      RegDeleteValue(HKCR, '001\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, '7Z\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, '7Z\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, '7Z\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, '7Z\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, '7Z\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'XZ\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'XZ\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'XZ\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'XZ\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'XZ\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'ARC\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'ARC\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'ARC\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'ARC\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'ARC\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'WRC\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'WRC\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'WRC\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'WRC\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'WRC\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'BZ2\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'BZ2\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'BZ2\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'BZ2\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'BZ2\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'GZ\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'GZ\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'GZ\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'GZ\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'GZ\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'LPAQ1\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'LPAQ1\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'LPAQ1\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'LPAQ1\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'LPAQ1\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'LPAQ5\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'LPAQ5\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'LPAQ5\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'LPAQ5\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'LPAQ5\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'LPAQ8\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'LPAQ8\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'LPAQ8\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'LPAQ8\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'LPAQ8\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'PAQ8F\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'PAQ8F\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'PAQ8F\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'PAQ8F\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'PAQ8F\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'PAQ8JD\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'PAQ8JD\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'PAQ8JD\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'PAQ8JD\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'PAQ8JD\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'PAQ8L\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'PAQ8L\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'PAQ8L\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'PAQ8L\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'PAQ8L\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'PAQ8O\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'PAQ8O\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'PAQ8O\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'PAQ8O\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'PAQ8O\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'ZPAQ\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'ZPAQ\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'ZPAQ\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'ZPAQ\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'ZPAQ\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'QUAD\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'QUAD\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'QUAD\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'QUAD\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'QUAD\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'BALZ\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'BALZ\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'BALZ\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'BALZ\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'BALZ\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'TAR\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'TAR\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'TAR\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'TAR\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'TAR\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'TGZ\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'TGZ\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'TGZ\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'TGZ\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'TGZ\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'ZIP\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'ZIP\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'ZIP\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'ZIP\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'ZIP\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'ACE\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'ACE\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'ACE\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'ACE\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'ACE\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'ARJ\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'ARJ\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'ARJ\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'ARJ\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'ARJ\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'CAB\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'CAB\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'CAB\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'CAB\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'CAB\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'CPIO\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'CPIO\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'CPIO\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'CPIO\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'CPIO\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'Z\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'Z\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'Z\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'Z\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'DEB\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'DEB\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'DEB\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'DEB\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'DEB\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'PET\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'PET\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'PET\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'PET\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'PET\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'PUP\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'PUP\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'PUP\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'PUP\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'PUP\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'RPM\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'RPM\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'RPM\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'RPM\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'RPM\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'SLP\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'SLP\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'SLP\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'SLP\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'SLP\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'DMG\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'DMG\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'DMG\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'DMG\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'DMG\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'HFS\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'HFS\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'HFS\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'HFS\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'HFS\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'ISO\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'ISO\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'ISO\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'ISO\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'ISO\shell\PeaZip\command', '');
         RegWriteStringValue(HKCR, 'UDF\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'UDF\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'UDF\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'UDF\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'UDF\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'LHA\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'LHA\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'LHA\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'LHA\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'LHA\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'LZH\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'LZH\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'LZH\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'LZH\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'LZH\shell\PeaZip\command', '');

         RegWriteStringValue(HKCR, 'RAR\shell\PeaZip', 'SubCommands', sarc+s);
         RegWriteStringValue(HKCR, 'RAR\shell\PeaZip', 'MultiSelectModel', 'player');
         RegWriteStringValue(HKCR, 'RAR\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
         RegWriteStringValue(HKCR, 'RAR\shell\PeaZip\command', '', '');
         RegDeleteValue(HKCR, 'RAR\shell\PeaZip\command', ''); 

      if IsWin64 then
        begin
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate', '', 'Add to archive');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle', '', 'Add to separate archive(s)');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiseparate" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z', '', 'Add to .7Z');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', '', 'Add to .7Z, fastest');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal', '', 'Add to .7Z, normal');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7znormal" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra', '', 'Add to .7Z, ultra');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zultra" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip', '', 'Add to .ZIP');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest', '', 'Add to .ZIP, fastest');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipfastest" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal', '', 'Add to .ZIP, normal');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipnormal" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra', '', 'Add to .ZIP, ultra');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipultra" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail', '', 'Zip and mail');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",3'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipmail" "%1"')); 
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx', '', 'Add to self-extracting archive');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisfx" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive', '', 'Open as archive');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browseasarchive" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath', '', 'Browse path with PeaZip');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split', '', 'Split file');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",5'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisplit" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe', '', 'Secure delete');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",6'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2wipe" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here', '', 'Extract here');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder', '', 'Extract here (in new folder)');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main', '', 'Extract...');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a', '', 'Extract archives');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test', '', 'Test archive(s)');
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",1'));
        RegWriteStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
        end
      else
        begin
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate', '', 'Add to archive');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle', '', 'Add to separate archive(s)');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiseparate" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z', '', 'Add to .7Z');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', '', 'Add to .7Z, fastest');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal', '', 'Add to .7Z, normal');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7znormal" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra', '', 'Add to .7Z, ultra');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zultra" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip', '', 'Add to .ZIP');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest', '', 'Add to .ZIP, fastest');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipfastest" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal', '', 'Add to .ZIP, normal');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipnormal" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra', '', 'Add to .ZIP, ultra');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipultra" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail', '', 'Zip and mail');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",3'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipmail" "%1"'));        
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx', '', 'Add to self-extracting archive');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",2'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisfx" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive', '', 'Open as archive');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browseasarchive" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath', '', 'Browse path with PeaZip');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split', '', 'Split file');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",5'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisplit" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe', '', 'Secure delete');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",6'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2wipe" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here', '', 'Extract here');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder', '', 'Extract here (in new folder)');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main', '', 'Extract...');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a', '', 'Extract archives');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",4'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test', '', 'Test archive(s)');
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test', 'Icon', ExpandConstant('"{app}\res\icons\peazip_seven.icl",1'));
        RegWriteStringValue(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
        end;
end;

procedure contextlegacy;
begin

       RegWriteStringValue(HKCR, '*\shell\Add to archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to archive', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to archive', 'MultiSelectModel', 'player');
       //RegWriteStringValue(HKCR, 'Drive\shell\Add to separate archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));

    if cbcontext7zs.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z', 'MultiSelectModel', 'player');
       //RegWriteStringValue(HKCR, 'Drive\shell\Add to separate .7Z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
       end;
    (*if CheckBox1.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z, fastest', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z, fastest', 'MultiSelectModel', 'player');
       end;
    if CheckBox2.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z, normal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7znormal" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z, normal', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z, normal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7znormal" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z, normal', 'MultiSelectModel', 'player');
       end;*)
    if CheckBox3.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z, ultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zultra" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .7Z, ultra', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z, ultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zultra" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .7Z, ultra', 'MultiSelectModel', 'player');
       end; 
    if cbcontextzips.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP', 'MultiSelectModel', 'player');
       //RegWriteStringValue(HKCR, 'Drive\shell\Add to separate .ZIP\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
       end;
    if CheckBox4.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipfastest" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP, fastest', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipfastest" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP, fastest', 'MultiSelectModel', 'player');
       end;
    (*if CheckBox5.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP, normal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipnormal" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP, normal', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP, normal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipnormal" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP, normal', 'MultiSelectModel', 'player');
       end;
    if CheckBox6.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP, ultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipultra" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to .ZIP, ultra', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP, ultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipultra" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to .ZIP, ultra', 'MultiSelectModel', 'player');
       end;*)
    if cbcontextzipmail.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Zip and mail\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipmail" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Zip and mail', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Zip and mail\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipmail" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Zip and mail', 'MultiSelectModel', 'player');
       end;
    if cbcontextsfx.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to self-extracting archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisfx" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to self-extracting archive', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to self-extracting archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisfx" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to self-extracting archive', 'MultiSelectModel', 'player');
       end;
    if cbcontextadd2archiveseparate.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Add to separate archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiseparate" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Add to separate archive(s)', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Add to separate archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiseparate" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Add to separate archive(s)', 'MultiSelectModel', 'player');
       end;
    if cbopas.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Open as archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2openasarchive" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Open as archive', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Browse path with PeaZip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Browse path with PeaZip', 'MultiSelectModel', 'player');
       end;

    if cbcontextsplit.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Split file\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisplit" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Split file', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Split file\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisplit" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Split file', 'MultiSelectModel', 'player');
       end;
    if cbcontextwipe.state = cbChecked then
       begin
       RegWriteStringValue(HKCR, '*\shell\Secure delete\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2wipe" "%1"'));
       RegWriteStringValue(HKCR, '*\shell\Secure delete', 'MultiSelectModel', 'player');
       RegWriteStringValue(HKCR, 'Directory\shell\Secure delete\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2wipe" "%1"'));
       RegWriteStringValue(HKCR, 'Directory\shell\Secure delete', 'MultiSelectModel', 'player');
       end;

    RegWriteStringValue(HKCR, 'PEA\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
    RegWriteStringValue(HKCR, 'PEA\shell\Extract here', 'MultiSelectModel', 'player');
    RegWriteStringValue(HKCR, 'PEA\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
    RegWriteStringValue(HKCR, 'PEA\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');
    RegWriteStringValue(HKCR, 'PEA\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
    RegWriteStringValue(HKCR, 'PEA\shell\Extract...', 'MultiSelectModel', 'player');

    RegWriteStringValue(HKCR, '001\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
    RegWriteStringValue(HKCR, '001\shell\Extract here', 'MultiSelectModel', 'player');
    RegWriteStringValue(HKCR, '001\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
    RegWriteStringValue(HKCR, '001\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');
    RegWriteStringValue(HKCR, '001\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
    RegWriteStringValue(HKCR, '001\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, '7Z\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, '7Z\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'XZ\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'XZ\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARC\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'ARC\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'WRC\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'WRC\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'BZ2\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'BZ2\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'GZ\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'GZ\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ1\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ1\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ5\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ5\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ8\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ8\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8F\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8F\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8JD\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8JD\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8L\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8L\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8O\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8O\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ZPAQ\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'ZPAQ\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'QUAD\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'QUAD\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'BALZ\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'BALZ\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'TAR\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'TAR\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'TGZ\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'TGZ\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ZIP\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'ZIP\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ACE\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'ACE\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARJ\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'ARJ\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CAB\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'CAB\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CPIO\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'CPIO\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DEB\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'DEB\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DMG\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'DMG\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'HFS\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'HFS\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ISO\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'ISO\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'UDF\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'UDF\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LHA\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'LHA\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LZH\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'LZH\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PET\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'PET\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PUP\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'PUP\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RAR\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'RAR\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RPM\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'RPM\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'SLP\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'SLP\shell\Extract...', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'Z\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
          RegWriteStringValue(HKCR, 'Z\shell\Extract...', 'MultiSelectModel', 'player');

    if cbcontextext2here.state = cbChecked then
       begin
          RegWriteStringValue(HKCR, '7Z\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, '7Z\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'XZ\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'XZ\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARC\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'ARC\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'WRC\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'WRC\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'BZ2\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'BZ2\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'GZ\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'GZ\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ1\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ1\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ5\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ5\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ8\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ8\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8F\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8F\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8JD\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8JD\shell\Extract here', 'MultiSelectModel', 'player');
 
          RegWriteStringValue(HKCR, 'PAQ8L\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8L\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8O\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8O\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ZPAQ\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'ZPAQ\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'QUAD\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'QUAD\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'BALZ\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'BALZ\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'TAR\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'TAR\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'TGZ\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'TGZ\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ZIP\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'ZIP\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ACE\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'ACE\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARJ\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'ARJ\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CAB\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'CAB\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CPIO\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'CPIO\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DEB\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'DEB\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DMG\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'DMG\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'HFS\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'HFS\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ISO\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'ISO\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'UDF\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'UDF\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LHA\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'LHA\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LZH\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'LZH\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PET\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'PET\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PUP\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'PUP\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RAR\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'RAR\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RPM\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'RPM\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'SLP\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'SLP\shell\Extract here', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'Z\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2here" "%1"'));
          RegWriteStringValue(HKCR, 'Z\shell\Extract here', 'MultiSelectModel', 'player');
       end;

    if cbcontextext2folder.state = cbChecked then
       begin
          RegWriteStringValue(HKCR, '7Z\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, '7Z\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'XZ\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'XZ\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARC\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'ARC\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'WRC\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'WRC\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'BZ2\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'BZ2\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'GZ\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'GZ\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ1\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ1\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ5\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ5\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LPAQ8\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'LPAQ8\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8F\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8F\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8JD\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8JD\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8L\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8L\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PAQ8O\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'PAQ8O\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ZPAQ\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'ZPAQ\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'QUAD\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'QUAD\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'BALZ\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'BALZ\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'TAR\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'TAR\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'TGZ\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'TGZ\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ZIP\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'ZIP\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ACE\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'ACE\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARJ\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'ARJ\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CAB\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'CAB\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CPIO\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'CPIO\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DEB\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'DEB\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DMG\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'DMG\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'HFS\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'HFS\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');
 
          RegWriteStringValue(HKCR, 'ISO\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'ISO\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'UDF\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'UDF\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LHA\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'LHA\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LZH\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'LZH\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PET\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'PET\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PUP\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'PUP\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RAR\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'RAR\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RPM\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'RPM\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'SLP\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'SLP\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'Z\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2folder" "%1"'));
          RegWriteStringValue(HKCR, 'Z\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');
       end;

if cbcontexttest.state = cbChecked then
       begin     
          RegWriteStringValue(HKCR, '7Z\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, '7Z\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'XZ\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'XZ\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARC\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'ARC\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'WRC\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'WRC\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'BZ2\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'BZ2\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'GZ\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'GZ\shell\Test archive(s)', 'MultiSelectModel', 'player');

       //paq and balz families dow not support test

          RegWriteStringValue(HKCR, 'TAR\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'TAR\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'TGZ\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'TGZ\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ZIP\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'ZIP\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ACE\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'ACE\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ARJ\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'ARJ\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CAB\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'CAB\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'CPIO\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'CPIO\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DEB\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'DEB\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'DMG\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'DMG\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'HFS\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'HFS\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'ISO\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'ISO\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'UDF\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'UDF\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LHA\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'LHA\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'LZH\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'LZH\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PET\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'PET\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'PUP\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'PUP\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RAR\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'RAR\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'RPM\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'RPM\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'SLP\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'SLP\shell\Test archive(s)', 'MultiSelectModel', 'player');

          RegWriteStringValue(HKCR, 'Z\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(HKCR, 'Z\shell\Test archive(s)', 'MultiSelectModel', 'player');
       end;

end;

procedure dolinks;
begin
    //link to PeaZip -add2archive: add to generic archive
    if cbfunadd.state = cbChecked then
      begin
  CreateShellLink(
  ExpandConstant('{sendto}\Add to archive.lnk'),
  'PeaZip archiver, add to archive',
  ExpandConstant('{app}\peazip.exe'),
  '-add2archive',
  '',
  ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
  2,//icon index
  SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2here: extract here
    if cbfunext2here.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Extract here.lnk'),
      'PeaZip archiver, extract here',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2here',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      4,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2folder: extract here to new folder
    if cbfunext2folder.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Extract here (in new folder).lnk'),
      'PeaZip archiver, extract here to new folder',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2folder',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      4,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2main: extract with options
    if cbfunext2to.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Extract....lnk'),
      'PeaZip archiver, extract into specified path',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2main',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      4,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add27z: add to .7z archive
    if cbfun7z.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .7Z.lnk'),
      'PeaZip archiver, add to .7Z archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add27z',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      2,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add27zmail: add to .7z archive and send by mail
    if cbfun7zmail.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .7Z and send by mail.lnk'),
      'PeaZip archiver, add to .7Z archive and send it by mail',
      ExpandConstant('{app}\peazip.exe'),
      '-add27zmail',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      3,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2separate7z: add to separate .7z archives
    if cbfun7zs.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to separate .7Z.lnk'),
      'PeaZip archiver, add to separate .7Z archives',
      ExpandConstant('{app}\peazip.exe'),
      '-add2separate7z',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      2,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2zip: add to .zip archive
    if cbfunzip.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .ZIP.lnk'),
      'PeaZip archiver, add to .ZIP archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add2zip',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      2,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2zipmail: add to .zip archive and send by mail
    if cbfunzipmail.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .ZIP and send by mail.lnk'),
      'PeaZip archiver, add to .ZIP archive and send it by mail',
      ExpandConstant('{app}\peazip.exe'),
      '-add2zipmail',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      3,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2separatezip: add to separate .zip archives
    if cbfunzips.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to separate .ZIP.lnk'),
      'PeaZip archiver, add to separate .ZIP archives',
      ExpandConstant('{app}\peazip.exe'),
      '-add2separatezip',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      2,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2sfx7z: add to sfx 7z archive
    if cbfunsfx.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to self-extracting archive.lnk'),
      'PeaZip archiver, add to self extracting .7z archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add2sfx7z',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      2,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2sfx7zmail: add to sfx 7z archive and send by mail
    if cbfunsfxmail.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to sfx and send by mail.lnk'),
      'PeaZip archiver, add to self extracting .7z archive and send it by mail',
      ExpandConstant('{app}\peazip.exe'),
      '-add2sfx7zmail',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      3,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2crypt: add to encrypted .pea archive
    if cbfunencrypt.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Encrypt.lnk'),
      'PeaZip archiver, add to encrypted .pea archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add2crypt',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      0,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2split: raw file split
    if cbfunsplit.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Split file.lnk'),
      'PeaZip archiver, raw split single file',
      ExpandConstant('{app}\peazip.exe'),
      '-add2split',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      5,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2wipe: Secure delete
    if cbfunwipe.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Secure delete.lnk'),
      'PeaZip archiver, secure delete',
      ExpandConstant('{app}\peazip.exe'),
      '-add2wipe',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      6,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2test: test archive's content
    if cbfuntest.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Test archive(s).lnk'),
      'PeaZip archiver, test archive(s)',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2test',
      '',
      ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      1,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2openasarchive
    if cbfunopen.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Open as archive.lnk'),
      'PeaZip archiver, open as archive',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2openasarchive',
      '',
      '',//ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      1,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2browsepath: browse path
    if CheckBoxbrowsepath.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Browse path with PeaZip.lnk'),
      'PeaZip archiver, browse path',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2browsepath',
      '',
      '',//ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      1,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2commandprompt: open command prompt here
    if CheckBoxcommand.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Open command prompt here.lnk'),
      'PeaZip archiver, open command prompt here',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2commandprompt',
      '',
      '',//ExpandConstant('{app}\res\icons\peazip_seven.icl'),//icon filename
      1,//icon index
      SW_SHOWNORMAL);
      end;
end;

procedure doassociations;
begin
  if cbfullnone.state = cbUnchecked then
    begin
    //declare that filetype associations were created
    RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip', '', 'Created filetype associations');
    //7z/arc
    if cb7z.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\7Z', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.7z', '', '7Z');
      RegWriteStringValue(HKCR, '7Z', '', '7Z archive');
      RegWriteStringValue(HKCR, '7Z\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_7Z.ICO,0'));
      RegWriteStringValue(HKCR, '7Z\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(HKCR, '.xz', '', 'XZ');
      RegWriteStringValue(HKCR, 'XZ', '', 'XZ compressed file');
      RegWriteStringValue(HKCR, 'XZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'XZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //arc/wrc
    if cbarc.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\ARC', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.arc', '', 'ARC');
      RegWriteStringValue(HKCR, 'ARC', '', 'FreeARC archive');
      RegWriteStringValue(HKCR, 'ARC\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'ARC\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(HKCR, '.wrc', '', 'WRC');
      RegWriteStringValue(HKCR, 'WRC', '', 'FreeARC archive');
      RegWriteStringValue(HKCR, 'WRC\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'WRC\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //BZip2
    if cbbz2.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\BZ2', '', 'Associated PeaZip with file type(s)');
      //BZ
      RegWriteStringValue(HKCR, '.bz', '', 'BZ');
      RegWriteStringValue(HKCR, 'BZ', '', 'BZip2 compressed file');
      RegWriteStringValue(HKCR, 'BZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'BZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //BZ2
      RegWriteStringValue(HKCR, '.bz2', '', 'BZ2');
      RegWriteStringValue(HKCR, 'BZ2', '', 'BZip2 compressed file');
      RegWriteStringValue(HKCR, 'BZ2\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'BZ2\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TBZ
      RegWriteStringValue(HKCR, '.tbz', '', 'TBZ');
      RegWriteStringValue(HKCR, 'TBZ', '', 'BZip2 compressed TAR archive');
      RegWriteStringValue(HKCR, 'TBZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'TBZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TBZ2
      RegWriteStringValue(HKCR, '.tbz2', '', 'TBZ2');
      RegWriteStringValue(HKCR, 'TBZ2', '', 'BZip2 compressed TAR archive');
      RegWriteStringValue(HKCR, 'TBZ2\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'TBZ2\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //GZip
    if cbgz.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\GZ', '', 'Associated PeaZip with file type(s)');
      //GZ
      RegWriteStringValue(HKCR, '.gz', '', 'GZ');
      RegWriteStringValue(HKCR, 'GZ', '', 'GZip compressed file');
      RegWriteStringValue(HKCR, 'GZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'GZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TGZ
      RegWriteStringValue(HKCR, '.tgz', '', 'TGZ');
      RegWriteStringValue(HKCR, 'TGZ', '', 'GZip compressed TAR archive');
      RegWriteStringValue(HKCR, 'TGZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'TGZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //*PAQ group
    if cbpaq8.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\PAQ', '', 'Associated PeaZip with file type(s)');
      //LPAQ1
      RegWriteStringValue(HKCR, '.lpaq1', '', 'LPAQ1');
      RegWriteStringValue(HKCR, 'LPAQ1', '', 'LPAQ1 compressed file');
      RegWriteStringValue(HKCR, 'LPAQ1\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'LPAQ1\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //LPAQ5
      RegWriteStringValue(HKCR, '.lpaq5', '', 'LPAQ5');
      RegWriteStringValue(HKCR, 'LPAQ5', '', 'LPAQ5 compressed file');
      RegWriteStringValue(HKCR, 'LPAQ5\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'LPAQ5\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //LPAQ8
      RegWriteStringValue(HKCR, '.lpaq8', '', 'LPAQ8');
      RegWriteStringValue(HKCR, 'LPAQ8', '', 'LPAQ8 compressed file');
      RegWriteStringValue(HKCR, 'LPAQ8\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'LPAQ8\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8F
      RegWriteStringValue(HKCR, '.paq8f', '', 'PAQ8F');
      RegWriteStringValue(HKCR, 'PAQ8F', '', 'PAQ8F archive');
      RegWriteStringValue(HKCR, 'PAQ8F\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'PAQ8F\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8JD
      RegWriteStringValue(HKCR, '.paq8jd', '', 'PAQ8JD');
      RegWriteStringValue(HKCR, 'PAQ8JD', '', 'PAQ8JD archive');
      RegWriteStringValue(HKCR, 'PAQ8JD\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'PAQ8JD\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8L
      RegWriteStringValue(HKCR, '.paq8l', '', 'PAQ8L');
      RegWriteStringValue(HKCR, 'PAQ8L', '', 'PAQ8L archive');
      RegWriteStringValue(HKCR, 'PAQ8L\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'PAQ8L\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8O
      RegWriteStringValue(HKCR, '.paq8o', '', 'PAQ8O');
      RegWriteStringValue(HKCR, 'PAQ8O', '', 'PAQ8O archive');
      RegWriteStringValue(HKCR, 'PAQ8O\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'PAQ8O\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //ZPAQ
      RegWriteStringValue(HKCR, '.zpaq', '', 'ZPAQ');
      RegWriteStringValue(HKCR, 'ZPAQ', '', 'ZPAQ archive');
      RegWriteStringValue(HKCR, 'ZPAQ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'ZPAQ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    if cbquad.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\QUAD', '', 'Associated PeaZip with file type(s)');
      //QUAD
      RegWriteStringValue(HKCR, '.quad', '', 'QUAD');
      RegWriteStringValue(HKCR, 'QUAD', '', 'QUAD compressed file');
      RegWriteStringValue(HKCR, 'QUAD\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'QUAD\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //BALZ
      RegWriteStringValue(HKCR, '.balz', '', 'BALZ');
      RegWriteStringValue(HKCR, 'BALZ', '', 'BALZ compressed file');
      RegWriteStringValue(HKCR, 'BALZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'BALZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Tar
    if cbtar.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\TAR', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.tar', '', 'TAR');
      RegWriteStringValue(HKCR, 'TAR', '', 'TAR archive');
      RegWriteStringValue(HKCR, 'TAR\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'TAR\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Zip
    if cbzip.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\ZIP', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.zip', '', 'ZIP');
      RegWriteStringValue(HKCR, 'ZIP', '', 'ZIP archive');
      RegWriteStringValue(HKCR, 'ZIP\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_ZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'ZIP\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip\ZIPX', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.zipx', '', 'ZIPX');
      RegWriteStringValue(HKCR, 'ZIPX', '', 'ZIPX archive');
      RegWriteStringValue(HKCR, 'ZIPX\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_ZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'ZIPX\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    end;
  if cbreadnone.state = cbUnchecked then
    begin //associate types with browse/extract only support
    //declare that additional filetype associations were created
    RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional', '', 'Created additional filetype associations');
    //ACE
    if cbace.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\ACE', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.ACE', '', 'ACE');
      RegWriteStringValue(HKCR, 'ACE', '', 'ACE archive');
      RegWriteStringValue(HKCR, 'ACE\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'ACE\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //ARJ
    if cbarj.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\ARJ', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.ARJ', '', 'ARJ');
      RegWriteStringValue(HKCR, 'ARJ', '', 'ARJ archive');
      RegWriteStringValue(HKCR, 'ARJ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'ARJ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //CAB
    if cbcab.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\CAB', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.CAB', '', 'CAB');
      RegWriteStringValue(HKCR, 'CAB', '', 'CAB archive');
      RegWriteStringValue(HKCR, 'CAB\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'CAB\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //CPIO
    if cbcpio.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\CPIO', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.CPIO', '', 'CPIO');
      RegWriteStringValue(HKCR, 'CPIO', '', 'CPIO archive');
      RegWriteStringValue(HKCR, 'CPIO\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'CPIO\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //Z
      RegWriteStringValue(HKCR, '.Z', '', 'Z');
      RegWriteStringValue(HKCR, 'Z', '', 'Z compressed file');
      RegWriteStringValue(HKCR, 'Z\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'Z\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TZ
      RegWriteStringValue(HKCR, '.tz', '', 'TZ');
      RegWriteStringValue(HKCR, 'TZ', '', 'Z compressed TAR archive');
      RegWriteStringValue(HKCR, 'TZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'TZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TZ
      RegWriteStringValue(HKCR, '.taz', '', 'TAZ');
      RegWriteStringValue(HKCR, 'TAZ', '', 'Z compressed TAR archive');
      RegWriteStringValue(HKCR, 'TAZ\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'TAZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Disk images
    if cbiso.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\ISO', '', 'Associated PeaZip with file type(s)');
      //ISO
      RegWriteStringValue(HKCR, '.ISO', '', 'ISO');
      RegWriteStringValue(HKCR, 'ISO', '', 'ISO disk image');
      RegWriteStringValue(HKCR, 'ISO\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_CD.ICO,0'));
      RegWriteStringValue(HKCR, 'ISO\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //UDF
      RegWriteStringValue(HKCR, '.UDF', '', 'UDF');
      RegWriteStringValue(HKCR, 'UDF', '', 'UDF disk image');
      RegWriteStringValue(HKCR, 'UDF\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_CD.ICO,0'));
      RegWriteStringValue(HKCR, 'UDF\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //LHA
    if cblha.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\LHA', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.LHA', '', 'LHA');
      RegWriteStringValue(HKCR, 'LHA', '', 'LHA archive');
      RegWriteStringValue(HKCR, 'LHA\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'LHA\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Linux packages (DEB, RPM, PET/PUP)
    if cblinux.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\linux', '', 'Associated PeaZip with file type(s)');
      //DEB
      RegWriteStringValue(HKCR, '.DEB', '', 'DEB');
      RegWriteStringValue(HKCR, 'DEB', '', 'DEB package');
      RegWriteStringValue(HKCR, 'DEB\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(HKCR, 'DEB\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PET
      RegWriteStringValue(HKCR, '.PET', '', 'PET');
      RegWriteStringValue(HKCR, 'PET', '', 'PET package (Puppy Linux)');
      RegWriteStringValue(HKCR, 'PET\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(HKCR, 'PET\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PUP
      RegWriteStringValue(HKCR, '.PUP', '', 'PUP');
      RegWriteStringValue(HKCR, 'PUP', '', 'PUP package (Puppy Linux)');
      RegWriteStringValue(HKCR, 'PUP\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(HKCR, 'PUP\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //RPM
      RegWriteStringValue(HKCR, '.RPM', '', 'RPM');
      RegWriteStringValue(HKCR, 'RPM', '', 'RPM package');
      RegWriteStringValue(HKCR, 'RPM\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(HKCR, 'RPM\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //SLP
      RegWriteStringValue(HKCR, '.SLP', '', 'SLP');
      RegWriteStringValue(HKCR, 'SLP', '', 'SLP package');
      RegWriteStringValue(HKCR, 'SLP\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(HKCR, 'SLP\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //LZH
    if cblzh.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\LZH', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.LZH', '', 'LZH');
      RegWriteStringValue(HKCR, 'LZH', '', 'LZH archive');
      RegWriteStringValue(HKCR, 'LZH\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(HKCR, 'LZH\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Mac formats (DMG, HFS)
    if cbMac.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\mac', '', 'Associated PeaZip with file type(s)');
      //DMG
      RegWriteStringValue(HKCR, '.DMG', '', 'DMG');
      RegWriteStringValue(HKCR, 'DMG', '', 'DMG package');
      RegWriteStringValue(HKCR, 'DMG\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(HKCR, 'DMG\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //UDF
      RegWriteStringValue(HKCR, '.HFS', '', 'HFS');
      RegWriteStringValue(HKCR, 'HFS', '', 'UDF package');
      RegWriteStringValue(HKCR, 'HFS\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(HKCR, 'HFS\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //RAR
    if cbrar.state = cbChecked then
      begin
      RegWriteStringValue(HKLM, 'SOFTWARE\PeaZip_additional\RAR', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(HKCR, '.RAR', '', 'RAR');
      RegWriteStringValue(HKCR, 'RAR', '', 'RAR archive');
      RegWriteStringValue(HKCR, 'RAR\DefaultIcon', '', ExpandConstant('{app}\RES\ICONS\PEAZIP_RAR.ICO,0'));
      RegWriteStringValue(HKCR, 'RAR\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
  ErrorCode: Integer;
begin

if CurPageID = wpReady then
  begin

  clearcontextlegacy;
  clearcontextseven;
  clearlinks;
  clearassociations;
  BringToFrontAndRestore();

  if (radiobuttoninstall3.Checked = False) then
    begin
    //context menu
    if cbcontextnone.state = cbUnchecked then
       if (GetWindowsVersion shr 24 >=6) and ((GetWindowsVersion shr 16) and $FF >=1) then 
          if cbcascaded.state = cbChecked then contextseven
          else contextlegacy
       else contextlegacy;
    //sendto menu
    if cbfunnone.state = cbUnchecked then dolinks;
    //associations
    doassociations;
  end;

  try
  if cbreset.checked=true then 
     if (GetWindowsVersion shr 24 >=6) then ShellExecAsOriginalUser('', ExpandConstant('{app}\peazip.exe'), '-peaziptotalreset', '', SW_SHOW, ewWaitUntilTerminated, ErrorCode);
  except end;

  BringToFrontAndRestore();
  end;
Result := True;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
if CurUninstallStep = usDone then
  begin
  clearlinks; //delete links
  clearcontextlegacy;
  clearcontextseven; //delete context menu items
  clearassociations; //delete filetype associations (by read/write and/or read only group), if created by previous setup
  BringToFrontAndRestore();
  end;
end;