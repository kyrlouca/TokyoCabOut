unit S_SelectTariffY;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,KyriacosTypes,
  fcButton, fcImgBtn, fcShapeBtn;

type
  TS_SelectTariffYFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    CustomerSRC: TDataSource;
    wwDBGrid1: TwwDBGrid;
    CustomerSQL: TIBCQuery;
    NameFLD: TwwDBEdit;
    BYCodeBTN: TSpeedButton;
    CodeFLD: TwwDBEdit;
    CustomerSQLCODE: TStringField;
    CustomerSQLKEYWORD: TStringField;
    CustomerSQLFK_COUNTRY_ORIGIN: TIntegerField;
    CustomerSQLLAST_UPDATE_DATE: TDateTimeField;
    CustomerSQLFK_VAT_CATEGORY_CODE: TStringField;
    CustomerSQLPREFERENTIAL_DUTY_RATE: TFloatField;
    CustomerSQLPREFERENTIAL_DUTY_TRL: TFloatField;
    CustomerSQLGENERAL_DUTY_RATE: TFloatField;
    CustomerSQLGENERAL_DUTY_TRL: TFloatField;
    CustomerSQLGENERAL_DUTY_RATE_QUANT: TFloatField;
    CustomerSQLPREFER_DUTY_RATE_QUANT: TFloatField;
    CustomerSQLLICENSE_REQUIRED: TStringField;
    CustomerSQLFK_MEASUREMENT_UNIT: TStringField;
    CustomerSQLDUTY_METHOD_VALUE: TFloatField;
    CustomerSQLDUTY_METHOD_QUANTITY: TIntegerField;
    CustomerSQLDUTY_METHOD_MIXED: TFloatField;
    CustomerSQLDUTY_CALCULATION_OPERATOR: TStringField;
    CustomerSQLBASE_QUANTITY: TFloatField;
    CustomerSQLINVOICE_BASED: TStringField;
    CustomerSQLEXCISE_DUTY_RATE: TFloatField;
    CustomerSQLIMPORT_DUTY_PER_QTY: TFloatField;
    CustomerSQLDESCRIPTION: TStringField;
    CustomerSQLIS_HEADER: TStringField;
    CustomerSQLIS_TARIFF: TStringField;
    CustomerSQLUSER_KEYWORD: TStringField;
    ByDescBTN: TSpeedButton;
    NewHawbBTN: TfcShapeBtn;
    EditBTN: TfcShapeBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure CustomerSQLBeforeEdit(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NewBTNClick(Sender: TObject);
    procedure BYCodeBTNClick(Sender: TObject);
    procedure NewHawbBTNClick(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure ByDescBTNClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure NameFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
        procedure UpdateTariff(IsSaveAll:Boolean);
  public
    { Public declarations }
    InAction:String;
    InTariffCode:String;
    OutIsSelect:Boolean;
        GTariffRecord:TTariffRecord;
    procedure SelectTariff(Const TariffName:String);
    procedure SelectTariffbyCode(Const TariffCode:String);

  end;

var
  S_SelectTariffYFRM: TS_SelectTariffYFRM;

implementation

uses  M_customerNew,  M_NewTariff2;

{$R *.DFM}

procedure TS_SelectTariffYFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CustomerSQL.Close;

end;

procedure TS_SelectTariffYFRM.BitBtn2Click(Sender: TObject);
begin
InAction:='';
OutIsSelect:=True;
close;
end;

procedure TS_SelectTariffYFRM.CustomerSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TS_SelectTariffYFRM.SelectTariff(Const TariffName:String);
Var
 aName:String;
begin

        aName:=Trim(TariffName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('USER_KEYWORD starting with :SInput');
                SetOrderBy('USER_KEYWORD Asc');
                If not prepared then prepare;
                ParamByName('SInput').Value:=aName;
                Open;
        end;

end;

procedure TS_SelectTariffYFRM.SelectTariffbyCode(Const TariffCode:String);
Var
 aCode:String;
begin

        aCode:=Trim(TariffCode);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('CODE STARTING WITH :SInput');
                SetOrderBy('Code Asc');
                If not prepared then prepare;
                ParamByName('SInput').AsString:=aCode;
                //ShowMessage(CustomerSQL.FInalSQL);
                Open;
        end;

end;


procedure TS_SelectTariffYFRM.wwDBGrid1DblClick(Sender: TObject);
Var
        CustomerSerial:Integer;
begin
//        CUstomerSerial:=CustomerSQL.fieldByName('Code').AsInteger;
        With CustomerSQL do begin
                GTariffRecord.UserKeyword:=CustomerSQL.fieldByName('USER_KEYWORD').AsString;
                GTariffRecord.Code:=CustomerSQL.fieldByName('Code').AsString;
                GTariffRecord.Description:=FieldByName('DESCRIPTION').AsString;
                GTariffRecord.IRate:=CustomerSQL.fieldByName('GENERAL_DUTY_RATE').AsFloat;
                GTariffRecord.IPerQuantity:=CustomerSQL.fieldByName('GENERAL_DUTY_RATE_QUANT').AsFloat;
                GTariffRecord.IBase:=CustomerSQL.fieldByName('BASE_QUANTITY').AsFloat;
                GTariffRecord.Trl:=CustomerSQL.fieldByName('GENERAL_DUTY_TRL').AsFloat;
        end;
        //ShowMessage(intToStr(GCustomerRecord.Code));

        If InAction='MENU' then begin
              EditBTN.Click;
        end else begin
                Close;
                Self.OutIsSelect:=True;
        end;

end;

procedure TS_SelectTariffYFRM.FormActivate(Sender: TObject);
begin
Self.OutIsSelect:=False;
If   CodeFLD.CanFocus then CodeFLD.SetFocus;
CodeFLd.SelStart := Length(CodeFLD.Text);
If CustomerSQL.Active=false then
CustomerSQL.Open;

end;

procedure TS_SelectTariffYFRM.NewBTNClick(Sender: TObject);
begin

If (Trim(NameFLD.Text)='') then
        abort;

M_TariffNew2FRM.InAction:='INSERT';

end;

procedure TS_SelectTariffYFRM.BYCodeBTNClick(Sender: TObject);
Begin
If CodeFLD.Text>'' then begin
self.SelectTariffbyCode(CodeFLD.Text);
end;
end;

procedure TS_SelectTariffYFRM.UpdateTariff(IsSaveAll:Boolean);
begin
End;

procedure TS_SelectTariffYFRM.NewHawbBTNClick(Sender: TObject);
begin
M_TariffNew2FRM.InAction:='INSERT';
M_TariffNew2FRM.InTariffCode:= TRim(CodeFLD.Text);
M_TariffNew2FRM.InTariffKey:= TRim(NameFLD.Text);

if (M_TariffNew2FRM.ShowModal=MrOK) then begin
        CodeFLD.Text:=M_TariffNew2FRM.GOutTariffRecord.Code;

        self.SelectTariffbyCode(Trim(CodeFLD.text));
end;



end;

procedure TS_SelectTariffYFRM.EditBTNClick(Sender: TObject);
begin
M_TariffNew2FRM.InAction:='DISPLAY';
M_TariffNew2FRM.InTariffCode:=CustomerSQL.FieldbyName('CODE').AsString;
M_TariffNew2FRM.ShowModal;
CustomerSQL.Refresh;
customerSQL.LocateEx('code',M_TariffNew2FRM.OutTariffCode,[]);

end;

procedure TS_SelectTariffYFRM.ByDescBTNClick(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);
end;

procedure TS_SelectTariffYFRM.Panel2Click(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);


end;

procedure TS_SelectTariffYFRM.NameFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);

end;

procedure TS_SelectTariffYFRM.CodeFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//If CodeFLD.Text>'' then begin
self.SelectTariffbyCode(CodeFLD.Text);


end;

END.
