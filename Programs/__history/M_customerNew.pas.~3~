unit M_customerNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, vcl.wwdblook, Vcl.DBCtrls, vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TM_CustomerNewFRM = class(TForm)
    TitlePNL: TPanel;
    DataPNL: TPanel;
    ButtonsPNL: TPanel;
    CustomerSRC: TwwDataSource;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    CustomerGRP: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CodeFLD: TDBEdit;
    NameFLD: TwwDBEdit;
    SpecialGRP: TGroupBox;
    Label7: TLabel;
    AuthFLD: TDBEdit;
    Label6: TLabel;
    CommentsFLD: TDBEdit;
    NotifyGRP: TGroupBox;
    Label3: TLabel;
    EmailLBL: TDBEdit;
    SMSlbl: TDBEdit;
    Label4: TLabel;
    Label9: TLabel;
    NotifyCustomerFLD: TDBCheckBox;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    WriteTrans: TIBCTransaction;
    CustomerSQL: TIBCQuery;
    DistrictDLG: TwwDBLookupCombo;
    Addr1FLD: TDBEdit;
    Addr2FLD: TDBEdit;
    Addr3FLD: TDBEdit;
    TelFLD: TDBEdit;
    Label10: TLabel;
    AccountFLD: TwwDBEdit;
    Label8: TLabel;
    ContactPhoneFLD: TDBEdit;
    Label13: TLabel;
    Vat_ID_LBL: TLabel;
    VAT_FLD: TwwDBEdit;
    ID_LBL: TLabel;
    ID_FLD: TwwDBEdit;
    Label12: TLabel;
    FaxFLD: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label11: TLabel;
    StatusFLD: TwwDBComboBox;
    DistrictSQL: TIBCQuery;
    DistrictSQLDESCRIPTION: TStringField;
    DBEdit1: TDBEdit;
    DistrictSQLCODE_X: TStringField;
    DistrictSQLSERIAL_NUMBER: TIntegerField;
    CustomerSQLNAME: TStringField;
    CustomerSQLADDRESS1: TStringField;
    CustomerSQLADDRESS2: TStringField;
    CustomerSQLADDRESS3: TStringField;
    CustomerSQLVAT_ID: TStringField;
    CustomerSQLCOMPANY_ID: TStringField;
    f: TStringField;
    CustomerSQLOTHER_ID: TStringField;
    CustomerSQLTEL_NO1: TStringField;
    CustomerSQLTEL_NO2: TStringField;
    CustomerSQLFAX1: TStringField;
    CustomerSQLFAX2: TStringField;
    CustomerSQLFK_DISTRICT: TIntegerField;
    CustomerSQLCOMMENTS: TStringField;
    CustomerSQLAUTHORIZATION_NUMBER: TStringField;
    CustomerSQLQUARANTEE_NUMBER: TStringField;
    CustomerSQLIMPORTER: TStringField;
    CustomerSQLEXPORTER: TStringField;
    CustomerSQLRESELLER: TStringField;
    CustomerSQLCUSTOM_DEALER_NUMBER: TStringField;
    CustomerSQLFK_OCCUPATION_CODE: TStringField;
    CustomerSQLFK_CUSTOMER_CATEGORY_CODE: TStringField;
    CustomerSQLAUTHORITY_TO_AGENT: TStringField;
    CustomerSQLCOMPANY_OR_PERSON: TStringField;
    CustomerSQLCODE: TIntegerField;
    CustomerSQLACCOUNT_NUMBER: TIntegerField;
    CustomerSQLEMAIL_TO_NOTIFY: TStringField;
    CustomerSQLMOBILE_TO_NOTIFY: TStringField;
    CustomerSQLIS_NOTIFY_MOBILE: TStringField;
    CustomerSQLIS_NOTIFY_EMAIL: TStringField;
    CustomerSQLIS_RECEIVE_NOTIFICATION: TStringField;
    CustomerSQLAUTHORITY_TO_DHL: TStringField;
    CustomerSQLIS_CREDIT: TStringField;
    CustomerSQLD_DISTRICT_CODE: TStringField;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    CustomerSQLPOST_CODE: TStringField;
    CustomerSQLD_DESC: TStringField;
    procedure CloseBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomerTBLBeforePost(DataSet: TDataSet);
    procedure StatusFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure NameFLDEnter(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DistrictDLGNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    InAction:string;
    InCustomerName:String;
    InCustomerCode:Integer;

//    GOutCustomerRecord:TCustomerRecord;
    OutCustomerCode:Integer;
    OutCustomerName:String;
    OUtCustomerAccount:Integer;
    OutCustomerDistrict:String;
    OUtPrivate:String;
    procedure SetCustomerPanel(IsCompany:Boolean);
  end;

var
  M_CustomerNewFRM: TM_CustomerNewFRM;

implementation

uses  MainForm;



{$R *.DFM}

procedure TM_CustomerNewFRM.SetCustomerPanel(IsCompany :Boolean);
begin
end;


procedure TM_CustomerNewFRM.CloseBTNClick(Sender: TObject);
begin
close;

end;

procedure TM_CustomerNewFRM.FormActivate(Sender: TObject);
Var
Dataset:TDataset;
I:Integer;

begin

{
for i := 0 to (Self as TForm).ComponentCount-1 do begin
if (Self as TForm).Components[i] is TDataset then begin
        Dataset:= TDataset(Tform(Self).Components[i]);
        If not Dataset.Active then
                Dataset.Open
        end;
end;
 }

 DistrictSQL.Close;
 DistrictSQL.Open;

     NameFLD.SetFocus;
     If InAction='INSERT' then begin
        CUstomerSQL.close;
        CustomerSQL.Open;
        CustomerSQL.Insert;
        CustomerSQL.FieldByName('Name').value:= InCustomerName;
        NameFLd.SelStart := Length(NameFLD.Text);

     end else If InAction='DISPLAY' then begin
        With CustomerSQL do begin
                Close;
                CustomerSQL.ParambyName('CustomerSErial').Value:= InCustomerCode;
                Open;
        end;
        //CustomerTBL.Locate('Code',InCustomerCode,[]);
     end;

end;

procedure TM_CustomerNewFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if CustomerSQL.state <> dsBrowse then begin
        Action:=caNone;
     end else begin
        Action:=caHide;
     end;


        //  CustomerSQL.Post;
//     ModalResult:= mrNone;

end;

procedure TM_CustomerNewFRM.CustomerTBLBeforePost(DataSet: TDataSet);
begin
end;
{
TheAccount:=Dataset.fieldbyName('account_number').AsInteger;
TheCustomer:=Dataset.fieldbyName('code').AsInteger;
If TheAccount > 0 then begin
   with FindCustomerOtherAccountSQL do begin
         close;
         if not prepared then prepare;
         paramByname('AccountCode').value :=TheAccount;
         paramByname('CustomerCode').value :=TheCustomer;
         Open;
         OtherCustomerName:=FieldByName('Name').AsString;

         If not isempty then begin
                 MessageDlg('Account Number '+ IntToStr(OtherCustomerCode)+ ' already assigned for customer '+
                 OtherCustomerName, mtError,   [mbOk], 0);
                 abort;
         end;
         close;
   end;
end;
}


procedure TM_CustomerNewFRM.StatusFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
if   StatusFLD.Text='Company' then
  SetCustomerPanel(True)
else
    SetCustomerPanel(False);
end;


procedure TM_CustomerNewFRM.AcceptBTNClick(Sender: TObject);
Var
TheBookMark:TBookMark;
begin
//     if CustomerSQL.State in [dsEdit,dsInsert] then
//        CustomerSQL.Post;
//
//        GOutCustomerRecord.Code:=CustomerSQL.fieldByName('Code').AsInteger;
//        GOutCustomerRecord.CustomerAccount:=CustomerSQL.fieldByName('Account_Number').AsInteger;
//        GOutCustomerRecord.Name:=CustomerSQL.fieldByName('Name').AsString;
//        GOutCustomerRecord.District:=CustomerSQL.fieldByName('D_DISTRICT_CODE').AsString;
//        GOutCustomerRecord.District_serial:=CustomerSQL.fieldByName('FK_DISTRICT').AsInteger;
//        GOutCustomerRecord.DistrictName:=CustomerSQL.fieldByName('D_Desc').AsString;

end;



procedure TM_CustomerNewFRM.CancelBTNClick(Sender: TObject);
begin
     if CustomerSQL.State <> dsBrowse then
        CustomerSQL.Cancel;
     close;

end;

procedure TM_CustomerNewFRM.NameFLDEnter(Sender: TObject);
begin
NameFLD.SelStart:=NameFLD.SelLength;
NameFLD.SelLength:=0;
end;

procedure TM_CustomerNewFRM.wwDBNavigator1InsertClick(Sender: TObject);
begin
If NameFLD.CanFocus then
   NameFLD.SetFocus;
end;



procedure TM_CustomerNewFRM.DistrictDLGNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
Accept:=false;
end;





END.
