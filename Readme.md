# PeaZip with force single directory level extract #

This version of PeaZip allows you to right click on any archive → PeaZip → "Extract here (new folder)" and be sure that only one subdirectory will be created, with the archive's content contained inside it.

This is useful because there are two main ways that archives are packaged:

1.  Archive root contains all files
2.  Archive root contains single directory (named after the archive), with all files contained inside.

The second type of archive results in an intermediate directory being created when using "Extract here (new folder)".

E.g. With C:\PeaZip as the current directory.

`ArchiveType1.zip` contains:

    File1.txt

Then "Extract here (new folder)" will result in the following structure:

    C:\
    └ PeaZip\
      ├ ArchiveType1\
      │ └ File1.txt
      └  Archive.zip

`ArchiveType2.zip` contains:

    ArchiveType2\
    └ File1.txt

Then "Extract here (new folder)" will result in the following structure:

    C:\
    └ PeaZip\
      ├ ArchiveType2\
      │ └ ArchiveType2\     <- unnecessary intermediate directory
      │   └ File1.txt
      └  ArchiveType2.zip

This version of PeaZip ensures the unnecessary intermedate directory is never created.