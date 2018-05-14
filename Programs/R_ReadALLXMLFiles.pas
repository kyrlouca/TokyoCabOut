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
      procedure ReadXFiles;

  public
    { Public declarations }
    GlobalStart:boolean;
  end;

var
  R_ReadAllFilesFRM: TR_ReadAllFilesFRM;

implementation

uses MainForm, GeneralParametersNew, X_readFile;

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
  Timer1.Enabled:=False;

  readXFiles;

  If GlobalStart then begin
      Timer1.Enabled:=true;
  end;

//  readFilesinFolder;

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




procedure TR_ReadAllFilesFRM.Button1Click(Sender: TObject);
begin
 readXfiles;
end;


procedure TR_ReadAllFilesFRM.ReadXFiles;
 var
   strFiles: TStringDynArray;
   i: integer;
   CurrentDir:String;
   MovedDir:String;
   fileName:string;
   WorkingFile:String;
   MovedFile:string;
   Ext:String;

begin

  CurrentDir:= GeneralParametersNew.GN_GetTheSystemParameter(cn,'S02').P_String4;
 if not directoryexists(CurrentDir) then begin
  ShowMessage(CurrentDir+' does not exist');
  exit;
 end;

 MovedDir:=GeneralParametersNew.GN_GetTheSystemParameter(cn,'S03').P_String4;
 if not directoryexists(MovedDir) then begin
  ShowMessage(CurrentDir+' does not exist');
  exit;
 end;

   memo1.Clear;
  strFiles := TDirectory.GetFiles(CUrrentDir);
   for i := 0  to High(strFiles) do begin
     fileName:=StrFiles[i];
     ext:= TPath.GetExtension(fileName);
     if (ext='') then begin
        //rename the file to .xyz and work on that
        WorkingFile:=TPath.GetDirectoryName(fileName)+'\'+TPath.GetFileName(filename)+'.xyz';
        if Tfile.Exists(WorkingFile)then
          Tfile.Delete(WorkingFile);
        Tfile.Move(FileName,WorkingFile);

        ////To The Job
        X_readFileFRM.ReadOneXML(WorkingFile);

        ///Move the file to new directory with extension xxx

        MovedFile:=MovedDir+'\'+TPath.GetFileName(filename)+'.xxx';
        if Tfile.Exists(MovedFile)then
          Tfile.Delete(MovedFile);
        Tfile.Move(WorkingFile,MovedFile);

        Memo1.Lines.Add(workingFile);
     end;
   end;


end;



end.
