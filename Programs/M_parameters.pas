unit M_parameters;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBAccess, Db,
  DBCtrls, DBGrids, CRGrid, DAScript, IBCScript;

type
  TM_ParametersFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    Panel3: TPanel;
    SystemParametersSQL: TIBCQuery;
    GroupBox1: TGroupBox;
    idlbl: TLabel;
    KEyFld: TDBEdit;
    Str1lbl: TLabel;
    Str1FLD: TDBEdit;
    str2lbl: TLabel;
    DescriptionFLD: TDBEdit;
    SystemSelectBTN: TBitBtn;
    XMLBtn: TBitBtn;
    BitBtn1: TBitBtn;
    wwDBNavigator1Button: TwwNavButton;
    EmailBTN: TBitBtn;
    DBEdit5: TDBEdit;
    str3lbl: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    str4lbl: TLabel;
    Date_1: TLabel;
    UsedForUpdateTrans: TIBCTransaction;
    SystemParametersCDS: TIBCDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    ParScript: TIBCScript;
    Button1: TButton;
    IBCQuery1: TIBCQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    ParamGRD: TwwDBGrid;
    SystemParametersSQLSERIAL_NUMBER: TIntegerField;
    SystemParametersSQLKEY_FIELD: TStringField;
    SystemParametersSQLSYS_TYPE: TStringField;
    SystemParametersSQLINT_1: TIntegerField;
    SystemParametersSQLINT_2: TIntegerField;
    SystemParametersSQLSTR_1: TStringField;
    SystemParametersSQLSTR_2: TStringField;
    SystemParametersSQLSTR_3: TStringField;
    SystemParametersSQLSTR_4: TStringField;
    SystemParametersSQLSTR_5: TStringField;
    SystemParametersSQLNUM_1: TFloatField;
    SystemParametersSQLNUM_2: TFloatField;
    SystemParametersSQLDATE_1: TDateTimeField;
    SystemParametersSQLDATE_2: TDateTimeField;
    SystemParametersSQLDESCRIPTION: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SystemSelectBTNClick(Sender: TObject);
    procedure XMLBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure EmailBTNClick(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure SystemParametersSQLNewRecord(DataSet: TDataSet);
    procedure SystemParametersCDSStateChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  GSysType:String;
    { Public declarations }
  end;

var
  M_ParametersFRM: TM_ParametersFRM;

implementation

uses Mainform;

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

procedure TM_ParametersFRM.SystemSelectBTNClick(Sender: TObject);
begin
 GSysType:='SYS';
 With SystemParametersSQL do begin
   Close;
   IndexFieldNames := '';
   ParamByName('Type').Value:='SYS';
   Open;
 end;

End;

procedure TM_ParametersFRM.XMLBtnClick(Sender: TObject);
begin
 GSysType:='XML';

 With SystemParametersSQL do begin
   Close;
   IndexFieldNames := '';
   ParamByName('Type').Value:='XML';
   Open;
 end;


end;

procedure TM_ParametersFRM.BitBtn1Click(Sender: TObject);
begin
 With SystemParametersSQL do begin
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
{
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
}
end;

procedure TM_ParametersFRM.wwDBNavigator1InsertClick(Sender: TObject);
begin
SystemParametersSQL.Insert;
If keyFLD.CanFocus then keyFLD.SetFocus;
abort;
end;

procedure TM_ParametersFRM.SystemParametersSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldbyName('sys_type').Value:=GSysTYpe;

end;

procedure TM_ParametersFRM.SystemParametersCDSStateChange(Sender: TObject);
begin
ParamGRD.Visible:=SystemParametersSQL.Active;

end;

procedure TM_ParametersFRM.Button1Click(Sender: TObject);
begin
ParScript.Transaction.StartTransaction;
ParScript.Execute;
ParScript.Transaction.Commit;
end;

END.
