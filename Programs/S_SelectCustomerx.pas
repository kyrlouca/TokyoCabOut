unit S_SelectCustomerx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, vcl.Wwdbedit, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, IBC,KyriacosTYpes, RzButton;
type
  TS_SelectCustomerXFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    CustomerSRC: TDataSource;
    wwDBGrid1: TwwDBGrid;
    CustomerSQL: TIBCQuery;
    NameFLD: TwwDBEdit;
    CustomerSQLNAME: TStringField;
    CustomerSQLADDRESS1: TStringField;
    CustomerSQLADDRESS2: TStringField;
    CustomerSQLADDRESS3: TStringField;
    CustomerSQLVAT_ID: TStringField;
    CustomerSQLCODE: TIntegerField;
    FindHawbBTN: TSpeedButton;
    CodeFLD: TwwDBEdit;
    ByNameBTN: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    CustomerSQLACCOUNT_NUMBER: TIntegerField;
    CustomerSQLQUARANTEE_NUMBER: TStringField;
    CustomerSQLFK_DISTRICT: TIntegerField;
    CustomerSQLPOST_CODE: TStringField;
    CustomerSQLD_DISTRICT_CODE: TStringField;
    CustomerSQLD_DESC: TStringField;
    AddCert1BTN: TRzBitBtn;
    EditBTN: TRzBitBtn;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure CustomerSQLBeforeEdit(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FindHawbBTNClick(Sender: TObject);
    procedure ByNameBTNClick(Sender: TObject);
    procedure NewHawbBTNClick(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure NameFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AddCert1BTNClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
  private
    { Private declarations }
    procedure EditCustomer(const CustSerial:integer);
  public
    { Public declarations }
        GCustomerRecord:TKtCustomerRecord;
        IN_SelectDbl:bOOLEAN;
        OUT_Customer:Integer;
        procedure SelectCustomer(Const CustomerName:String);
    procedure SelectCustomerbyCode(Const CustomerSerial:Integer);

  end;

var
  S_SelectCustomerXFRM: TS_SelectCustomerXFRM;

implementation

uses  M_customerNew;

{$R *.DFM}

procedure TS_SelectCustomerXFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CustomerSQL.Close;

end;

procedure TS_SelectCustomerXFRM.AcceptBTNClick(Sender: TObject);
begin
  OUT_Customer:=CustomerSQL.FieldByName('Code').AsInteger;
  close;
end;

procedure TS_SelectCustomerXFRM.AddCert1BTNClick(Sender: TObject);
begin

  M_CustomerNewFRM.InAction:='INSERT';
  M_CustomerNewFRM.InCustomerCode:=CustomerSQL.FieldByName('Code').AsInteger;
  M_CustomerNewFRM.ShowModal;
  CustomerSQL.Refresh;
end;

procedure TS_SelectCustomerXFRM.BitBtn1Click(Sender: TObject);
begin
  OUT_Customer:=0;
  close;
end;

procedure TS_SelectCustomerXFRM.CustomerSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TS_SelectCustomerXFRM.SelectCustomer(Const CustomerName:String);
Var
 aName:String;
begin

        aName:=Trim(CustomerName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('name starting with :SInput');
                SetOrderBy('Name Asc');
                If not prepared then prepare;
                ParamByName('SInput').Value:=aName;
                Open;
        end;

end;

procedure TS_SelectCustomerXFRM.SelectCustomerbyCode(Const CustomerSerial:Integer);
begin

//        aName:=Trim(CustomerName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('Code >= :SInput');
                SetOrderBy('Code Asc');
                If not prepared then prepare;
                ParamByName('SInput').AsInteger:=CustomerSerial;
                //ShowMessage(CustomerSQL.FInalSQL);
                Open;
        end;

end;


procedure TS_SelectCustomerXFRM.wwDBGrid1DblClick(Sender: TObject);
Var
        CustomerSerial:Integer;
begin
  IF IN_SelectDbl THEN BEGIN
    OUT_Customer:=CustomerSQL.FieldByName('Code').AsInteger;
    Close;

  end else begin
   EditCustomer(OUT_Customer);

  end;

end;

procedure TS_SelectCustomerXFRM.FormActivate(Sender: TObject);
begin

If   NameFLD.CanFocus then NameFLD.SetFocus;
        NameFLd.SelStart := Length(NameFLD.Text);
If CustomerSQL.Active=false then
CustomerSQL.Open;

end;

procedure TS_SelectCustomerXFRM.FindHawbBTNClick(Sender: TObject);
begin
If CodeFLD.Text>'' then begin
self.SelectCustomerbyCode(StrToIntDef(CodeFLD.Text,-1));
end;

end;

procedure TS_SelectCustomerXFRM.ByNameBTNClick(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectCustomer(aName);

end;

procedure TS_SelectCustomerXFRM.NewHawbBTNClick(Sender: TObject);
begin

//If (Trim(NameFLD.Text)='') then
//        abort;

M_customerNewFRM.InAction:='INSERT';
M_CustomerNewFRM.InCustomerName:=Trim(NameFld.Text);
//if (M_CustomerNewFRM.ShowModal=MrOK) then begin
//        NameFLD.Text:=M_CustomerNewFRM.GOutCustomerRecord.Name;
//
//        SelectCustomer(Trim(NameFLD.text));


end;

//M_customerNewFRM.SHowModal;

procedure TS_SelectCustomerXFRM.EditCustomer(const CustSerial:integer);
begin
  if CustSerial>0 then begin
      M_customerNewFRM.InAction:='DISPLAY';
      M_CustomerNewFRM.inCustomerCode:=CustSerial;
      M_CustomerNewFRM.ShowModal;
      CustomerSQL.Refresh;
  end;


end;


procedure TS_SelectCustomerXFRM.EditBTNClick(Sender: TObject);
begin
  EditCustomer(CustomerSQL.fieldByName('Code').AsInteger);
    CustomerSQL.Refresh;
end;

procedure TS_SelectCustomerXFRM.NameFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
 aName:String;
begin
//if key=13 then begin
        aName:=Trim(NameFLD.Text);
        SelectCustomer(aName);

//end;

end;

procedure TS_SelectCustomerXFRM.CancelBTNClick(Sender: TObject);
begin
  OUT_Customer:=0;
  close;

end;

procedure TS_SelectCustomerXFRM.CodeFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If CodeFLD.Text>'' then begin
self.SelectCustomerbyCode(StrToIntDef(CodeFLD.Text,-1));
end;

end;

END.
