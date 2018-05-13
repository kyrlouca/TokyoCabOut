unit R_ReadALLXMLFiles;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  Wwquery, wwstorep, IBC, MemDs, CRGrid, DBAccess, Db, fcButton, fcImgBtn,
  fcShapeBtn,GeneralProcedures,FileCtrl;

type
  TR_ReadAllFilesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    StartBTN: TfcShapeBtn;
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
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure StartBTNClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
        Function GetValueFromSystemTable(Const TheKey,TheDescription:String):String;
        Function ReadFilesInFolder:Integer;
  public
    { Public declarations }
    GlobalStart:boolean;
  end;

var
  R_ReadAllFilesFRM: TR_ReadAllFilesFRM;

implementation

uses MainForm, ReadFIle;

{$R *.DFM}


Function TR_ReadAllFilesFRM.GetValueFromSystemTable(Const TheKey,TheDescription:String):String;
Var
   TheQuery:TIBCQuery;
Begin


   TheQuery:=ParameterSQL;
   TheQUery.ParamByName('TheKey').Value:=TheKey;

   TheQuery.close;
   If TheQuery.Prepared then TheQuery.Prepare;
   TheQUery.ParamByName('TheKey').Value:=TheKey;
   TheQuery.Open;
   If TheQuery.IsEmpty Then begin
//        raise exception.create('Enter into System parameters (field STR_4) the record: '+TheKey+' for '+TheDescription);
         ShowMessage('Enter into System parameters -> (***STR_1***) the record: '+TheKey+' for '+TheDescription);
         Result:='';
   end else begin
        TheQuery.First;
        Result:=Trim(TheQuery.fieldbyName('STR_1').AsString);
        TheQuery.Close;
   end;


End;



procedure TR_ReadAllFilesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;




procedure TR_ReadAllFilesFRM.FormActivate(Sender: TObject);
Var
        S1:String;
begin
        IF timer1.Enabled then begin
                StartBTN.Color:=clgreen ;
                StartBTN.Caption:='Processing Files Active';
        end else begin
                StartBTN.Color:=clred;
                StartBTN.Caption:='Processing Files NOT Active';
        end;


end;

procedure TR_ReadAllFilesFRM.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TR_ReadAllFilesFRM.StartBTNClick(Sender: TObject);
var
TimerStatus:Boolean;
begin
//self.ReadAllFiles;
Timer1.Interval:=1000;
TimerStatus:=Timer1.Enabled;
Timer1.Enabled:=not TimerStatus;
GlobalStart:=Timer1.Enabled;

If Timer1.Enabled then begin
        StartBTN.Color:=clGreen;
        StartBTN.Caption:= 'Processing Files - Active';

end else begin
        StartBTN.Caption:= 'Processing Files - NOT Active';
        StartBTN.Color:=clred;
end;

end;

procedure TR_ReadAllFilesFRM.Timer1Timer(Sender: TObject);
begin
readFilesinFolder;

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
        BatchDetails:TBatchDetails;
        MawbArray:TMawbArray;
        CountMawbs,CountHawbs:Integer;
begin



Timer1.Enabled:=False;
//aDirectory:='E:\All\xml';
  CurrentDir:= GetValueFromSystemTable('S02', 'Folder to Read XML Files');
  If Not DirectoryExists(CurrentDir) then begin
        StartBTN.Color:=clRed;
        StartBTN.Caption:= 'Processing Files - NOT Active';

        abort;
  end;

  NewDir:= GetValueFromSystemTable('S03', 'Folder to Move XML Files');
  If Not DirectoryExists(NewDir) then begin
        StartBTN.Color:=clRed;
        StartBTN.Caption:= 'Processing Files - NOT Aactive';

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
                        ReadFileFRM.ProcessFile(FileNewName,mawbArray,CountMawbs,CountHawbs);
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
readFilesinFolder;
end;

end.
