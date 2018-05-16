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
//    procedure ReadXFiles(Const FromDir, ToDir:String; Const Pattern:String);

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
var
  FromDir:String;
  ToDir:String;
begin
  Timer1.Enabled:=False;

  FromDir:= GeneralParametersNew.GN_GetTheSystemParameter(cn,'S02').P_String4;
  if not directoryexists(FromDir) then begin
    ShowMessage(FromDir+' does not exist');
    exit;
  end;

  ToDir:=GeneralParametersNew.GN_GetTheSystemParameter(cn,'S03').P_String4;
  if not directoryexists(ToDir) then begin
    ShowMessage(ToDir+' does not exist');
    exit;
  end;

  X_readFileFRM.readXFiles(FromDir,ToDir,'');
  If GlobalStart then begin
      Timer1.Enabled:=true;
  end;

//  readFilesinFolder;

end;

procedure TR_ReadAllFilesFRM.TimerBTNClick(Sender: TObject);
var
  TimerStatus:Boolean;
begin
  Timer1.Interval:=1000;
//  TimerStatus:=
  Timer1.Enabled:=not Timer1.Enabled;
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
var
  FromDir:String;
  ToDir:String;
begin

  FromDir:= GeneralParametersNew.GN_GetTheSystemParameter(cn,'S02').P_String4;
  if not directoryexists(FromDir) then begin
    ShowMessage(FromDir+' does not exist');
    exit;
  end;

  ToDir:=GeneralParametersNew.GN_GetTheSystemParameter(cn,'S03').P_String4;
  if not directoryexists(ToDir) then begin
    ShowMessage(ToDir+' does not exist');
    exit;
  end;

  X_readFileFRM.readXFiles(FromDir,ToDir,'11805141641159241000');


end;



end.
