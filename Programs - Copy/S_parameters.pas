unit S_parameters;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBTables, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TM_ParametersFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    Panel3: TPanel;
    SystemParametersSQL: TQuery;
    SystemParametersSQLPARAMETER_ID: TStringField;
    SystemParametersSQLINT_1: TIntegerField;
    SystemParametersSQLINT_2: TIntegerField;
    SystemParametersSQLSTR_1: TStringField;
    SystemParametersSQLSTR_2: TStringField;
    SystemParametersSRC: TDataSource;
    GroupBox1: TGroupBox;
    idlbl: TLabel;
    DBEdit1: TDBEdit;
    int1lbl: TLabel;
    DBEdit2: TDBEdit;
    Str1lbl: TLabel;
    DBEdit3: TDBEdit;
    str2lbl: TLabel;
    DBEdit4: TDBEdit;
    SystemSelectBTN: TBitBtn;
    FileSelectBTN: TBitBtn;
    BitBtn1: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1Button: TwwNavButton;
    EmailBTN: TBitBtn;
    SystemParametersSQLSTR_3: TStringField;
    DBEdit5: TDBEdit;
    str3lbl: TLabel;
    DBEdit6: TDBEdit;
    SystemParametersSQLSTR_4: TStringField;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    str4lbl: TLabel;
    str5lbl: TLabel;
    SystemParametersSQLSTR_5: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SystemParametersSQLBeforeEdit(DataSet: TDataSet);
    procedure SystemParametersSQLBeforeInsert(DataSet: TDataSet);
    procedure SystemSelectBTNClick(Sender: TObject);
    procedure FileSelectBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure EmailBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_ParametersFRM: TM_ParametersFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

procedure TM_ParametersFRM.FormActivate(Sender: TObject);
begin

SystemParametersSQL.Close;
//SystemParametersSQL.Open;
end;

procedure TM_ParametersFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
SystemParametersSQL.Close;

end;

procedure TM_ParametersFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_ParametersFRM.SystemParametersSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Parameter_id').ReadOnly:=true;
end;


procedure TM_ParametersFRM.SystemParametersSQLBeforeInsert(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Parameter_id').ReadOnly:=False;

end;

procedure TM_ParametersFRM.SystemSelectBTNClick(Sender: TObject);
begin
 With SystemParametersSQL do begin
   Close;
   SystemParametersSQL.SQL.Clear;
   SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''S_%'' Order by parameter_id  ');
   Open;
 end;

End;

procedure TM_ParametersFRM.FileSelectBTNClick(Sender: TObject);
begin
 With SystemParametersSQL do begin
   Close;
   SystemParametersSQL.SQL.Clear;
   SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''F_%''  Order by parameter_id ');
   Open;
 end;

end;

procedure TM_ParametersFRM.BitBtn1Click(Sender: TObject);
begin
 With SystemParametersSQL do begin
   Close;
   SystemParametersSQL.SQL.Clear;
   SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''I%''  Order by parameter_id ');
   Open;
 end;

end;

procedure TM_ParametersFRM.wwDBNavigator1ButtonClick(Sender: TObject);
begin
SystemParametersSQL.Close;
SystemParametersSQL.Open;
abort;

end;

procedure TM_ParametersFRM.EmailBTNClick(Sender: TObject);
begin
 idlbl.Caption:='Code :';
 int1lbl.Caption:='Port Number:';
 str1lbl.Caption:='SMTP OUT Server:';
 str2lbl.Caption:='UserName:';
 str3lbl.Caption:='UserPassword:';
 str4lbl.Caption:='SenderName:';
 str5lbl.Caption:='SenderAddress';

 With SystemParametersSQL do begin
   Close;
   SystemParametersSQL.SQL.Clear;
   SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''E%''  Order by parameter_id ');
   Open;
 end;

end;

END.
