unit S_SelectCustomerx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,KyriacosTypes,
  fcButton, fcImgBtn, fcShapeBtn;

type
  TS_SelectCustomerXFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
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
    NewHawbBTN: TfcShapeBtn;
    EditBTN: TfcShapeBtn;
    CustomerSQLACCOUNT_NUMBER: TIntegerField;
    CustomerSQLQUARANTEE_NUMBER: TStringField;
    CustomerSQLFK_DISTRICT: TIntegerField;
    CustomerSQLPOST_CODE: TStringField;
    CustomerSQLD_DISTRICT_CODE: TStringField;
    CustomerSQLD_DESC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
        GCustomerRecord:TCustomerRecord;
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

procedure TS_SelectCustomerXFRM.BitBtn2Click(Sender: TObject);
begin
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
        CUstomerSerial:=CustomerSQL.fieldByName('Code').AsInteger;

        GCustomerRecord.Code:=CustomerSQL.fieldByName('Code').AsInteger;
        GCustomerRecord.CustomerAccount:=CustomerSQL.fieldByName('Account_Number').AsInteger;
        GCustomerRecord.Name:=CustomerSQL.fieldByName('Name').AsString;
        GCustomerRecord.Address1:=CustomerSQL.fieldByName('ADDRESS1').AsString;
        GCustomerRecord.Address2:=CustomerSQL.fieldByName('ADDRESS2').AsString;
        GCustomerRecord.Address3:=CustomerSQL.fieldByName('ADDRESS3').AsString;
        GCustomerRecord.PostCode:=CustomerSQL.fieldByName('post_code').AsString;
        GCustomerRecord.District_serial:=CustomerSQL.fieldByName('FK_DISTRICT').AsInteger;
        GCustomerRecord.District:=CustomerSQL.fieldByName('D_DISTRICT_CODE').AsString;
        GCustomerRecord.DistrictName:=CustomerSQL.fieldByName('D_Desc').AsString;


        //ShowMessage(intToStr(GCustomerRecord.Code));
        Close;

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
if (M_CustomerNewFRM.ShowModal=MrOK) then begin
        NameFLD.Text:=M_CustomerNewFRM.GOutCustomerRecord.Name;

        SelectCustomer(Trim(NameFLD.text));


end;

//M_customerNewFRM.SHowModal;

end;

procedure TS_SelectCustomerXFRM.EditBTNClick(Sender: TObject);
begin
M_customerNewFRM.InAction:='DISPLAY';
If CustomerSQL.Active then begin
        M_CustomerNewFRM.inCustomerCode:=CustomerSQL.fieldByName('Code').AsInteger;
        M_CustomerNewFRM.ShowModal;
end;
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

procedure TS_SelectCustomerXFRM.CodeFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If CodeFLD.Text>'' then begin
self.SelectCustomerbyCode(StrToIntDef(CodeFLD.Text,-1));
end;

end;

END.
