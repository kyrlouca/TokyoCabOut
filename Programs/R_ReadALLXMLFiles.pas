unit R_ReadALLXMLFiles;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  wwSpeedButton, wwDBNavigator, Data.DB, MemDS, DBAccess, IBC,
  Vcl.ExtCtrls, Vcl.Buttons, RzButton,System.Types,System.IOUtils;
type
  TR_ReadAllFilesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    Timer1: TTimer;
    ParameterSQL: TIBCQuery;
    ParameterSQLSERIAL_NUMBER: TIntegerField;
    ParameterSQLKEY_FIELD: TStringField;
    ParameterSQLSYS_TYPE: TStringField;
    ParameterSQLINT_1: TIntegerField;
    ParameterSQLINT_2: TIntegerField;
    ParameterSQLSTR_1: TStringField;
    ParameterSQLSTR_2: TStringField;
    ParameterSQLSTR_3: TStringField;
    ParameterSQLSTR_4: TStringField;
    ParameterSQLSTR_5: TStringField;
    ParameterSQLNUM_1: TFloatField;
    ParameterSQLNUM_2: TFloatField;
    ParameterSQLDATE_1: TDateTimeField;
    ParameterSQLDATE_2: TDateTimeField;
    ParameterSQLDESCRIPTION: TStringField;
    TimerBTN: TRzBitBtn;
    Memo1: TMemo;
    Button1: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TimerBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
        cn:TIBCConnection;
        Function ReadFilesInFolder:Integer;
      procedure ReadXFiles;

  public
    { Public declarations }
    GlobalStart:boolean;
  end;

var
  R_ReadAllFilesFRM: TR_ReadAllFilesFRM;

implementation

uses MainForm, GeneralParametersNew;

{$R *.DFM}




procedure TR_ReadAllFilesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;




procedure TR_ReadAllFilesFRM.FormActivate(Sender: TObject);
Var
        S1:String;
begin
        IF timer1.Enabled then begin
                TimerBTN.font.Color:=clgreen ;
                TimerBTN.Caption:='Processing Files Active';
        end else begin
                TimerBTN.font.Color:=clred;
                TimerBTN.Caption:='Processing Files NOT Active';
        end;


end;

procedure TR_ReadAllFilesFRM.FormCreate(Sender: TObject);
begin
  cn:= MainFormFRM.CabOutData;
end;

procedure TR_ReadAllFilesFRM.BitBtn3Click(Sender: TObject);
begin
close;
end;



procedure TR_ReadAllFilesFRM.Timer1Timer(Sender: TObject);
begin
  readFilesinFolder;

end;

procedure TR_ReadAllFilesFRM.TimerBTNClick(Sender: TObject);
var
  TimerStatus:Boolean;
begin
//self.ReadAllFiles;
  Timer1.Interval:=1000;
  TimerStatus:=Timer1.Enabled;
  Timer1.Enabled:=not TimerStatus;
  GlobalStart:=Timer1.Enabled;

  If Timer1.Enabled then begin
        TimerBTN.font.Color:=clGreen;
        TimerBTN.Caption:= 'Processing Files - Active';

  end else begin
        TimerBTN.Caption:= 'Processing Files - NOT Active';
        TimerBTN.font.Color:=clred;
  end;

end;

Function TR_ReadAllFilesFRM.ReadFilesInFolder:Integer;
Var
        CurrentDir:String;
        NewDir:String;
        sr : TSearchRec;
        Count:Integer;
        FileFullName:String;
        FileNewName:String;
        FileMoved:String;
        aFile:TextFile;
        wFile:TextFile;
        aString:String;
        logFile:String;
//        BatchDetails:TBatchDetails;
//        MawbArray:TMawbArray;
        CountMawbs,CountHawbs:Integer;
begin



Timer1.Enabled:=False;
//aDirectory:='E:\All\xml';
  CurrentDir:= GeneralParametersNew.GN_GetTheSystemParameter(cn,'S02').P_String4;
  If Not DirectoryExists(CurrentDir) then begin
        TimerBTN.font.Color:=clRed;
        TImerBTN.Caption:= 'Processing Files - NOT Active';
        abort;
  end;

  //  NewDir:= GetValueFromSystemTable('S03', 'Folder to Move XML Files');
  NewDir:=GeneralParametersNew.GN_GetTheSystemParameter(cn,'S03').P_String4;
  If Not DirectoryExists(NewDir) then begin
        TimerBTN.font.Color:=clRed;
        TImerBTN.Caption:= 'Processing Files - NOT Aactive';

        abort;
  end;



  Count:=0;

  if FindFirst(CurrentDir+'\'+'*.', faAnyFile, SR)=0 then begin
  try

        logFile:=CurrentDir+'\'+'LOGFILE.txt';
        AssignFile(wFile,logfile);
        if FileExists(logfile) then
                append(wFile)
        else
                Rewrite(wFile);

        repeat
                inc(Count);
                if sr.Name[1]<>'.' then begin // . is the current directory and .. is the father directory
                        FileFullName:=CurrentDir+'\'+sr.Name;
                        FileNewName:=CUrrentDir+'\'+ExtractFileName(sr.Name)+'.'+'xyz';
                        Filemoved:=NewDir+'\'+ExtractFileName(sr.Name)+'.'+'xxx';

                        if fileExists(FileNewName) then begin
                                DeleteFile(FileNewName);
                        end;
                        //Rename file to prevent another process reading this file in SearchRecord;
                        if not RenameFile(FileFullName ,FileNewName) then begin
                                //ShowMessage(GetLastErrors
                                ShowMEssage(' Error - Cannot rename file : '+FileFullName +' to '+FileNewName+' error='+IntToStr(GetLastError));
                                next;
                        end;

                        //Read the renamed file to avoic clashes
//                        ReadFileFRM.ProcessFile(FileNewName,mawbArray,CountMawbs,CountHawbs);
                        writeln(wFile,FormatDateTime('yyyy/mm/dd hh:mm:ss',now)+'=> '+FileFullName+' Mawbs:'+IntToStr(CountMawbs)+' Hawbs:'+IntToStr(CountHawbs));


                        if fileExists(FileMoved) then begin
                                DeleteFile(FileMoved);
                        end;
                        if not RenameFile(FileNewName ,FileMoved) then begin
                                //ShowMessage(GetLastErrors
                                ShowMEssage(' Error - Cannot rename file : '+FileNewName +' to '+FileMoved+' error='+IntToStr(GetLastError));
                                next;
                        end;




                end;
            until FindNext(SR) <> 0;
            FindClose(SR);
  finally
                closeFile(wfile);

  end;//finally
  end; // if find file

        //ShowMessage('finished'+IntToStr(Count) );
          // timer was disabled at the start of this procedure to prevent multiple runs
          //It is reenabled now if button was pressed(global start);
        If GlobalStart then begin
                Timer1.Enabled:=true;
        end;
End;




procedure TR_ReadAllFilesFRM.Button1Click(Sender: TObject);
begin
 readXfiles;
end;


procedure TR_ReadAllFilesFRM.ReadXFiles;
 var
   strFiles: TStringDynArray;
   i: integer;
   CurrentDir:String;
   fileName:string;
   WorkingFile:String;
   Ext:String;

begin

  CurrentDir:= GeneralParametersNew.GN_GetTheSystemParameter(cn,'S02').P_String4;
 if not directoryexists(CurrentDir) then begin
  ShowMessage(CurrentDir+' does not exist');
  exit;
 end;

  strFiles := TDirectory.GetFiles(CUrrentDir);
   for i := 0  to High(strFiles) do begin
     fileName:=StrFiles[i];
     ext:= TPath.GetExtension(fileName);
     if (ext='') then begin
        WorkingFile:=TPath.GetFileName(filename)+'.xyz';
        Memo1.Lines.Add(workingFile);
     end;
   end;


end;



end.
