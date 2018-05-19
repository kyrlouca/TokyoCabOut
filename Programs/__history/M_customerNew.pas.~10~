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
    DBEdit1: TDBEdit;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    CustomerSQLADDRESS_CITY: TStringField;
    CustomerSQLADDRESS_COUNTRY_CODE: TStringField;
    procedure CloseBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StatusFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure NameFLDEnter(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DistrictDLGNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
  private
      { Private declarations }
      cn:TIBCConnection;
  function AddCustomer(const AIrSerial:Integer):Integer;
  procedure DisplayCustomer(Const CustomerSerial:Integer);

  public
    { Public declarations }
    InAction:string;
    InCustomerName:String;
    InCustomerCode:Integer;
    InAirSerial: Integer;

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

uses  MainForm, G_KyrSQL;



{$R *.DFM}



function TM_CustomerNewFRM.AddCustomer(const AIrSerial:Integer):Integer;
Var
   CustomerSerial:Integer;
   cuQr,AirQr:TksQuery;
   senderName:string;

begin
            result:=0;

            cuqr:=TksQuery.Create(cn,'select * from customer cu where cu.code= :code');
            airQr:=TksQuery.Create(cn,'select * from flight_airwaybill fa where fa.serial_number= :serial');
            customerSerial:=ksGenerateSerial(cn,'CUSTOMER_GENERATOR');
            try
              cuQr.ParamByName('code').AsInteger := -1;
              cuQr.Open;

              Airqr.ParamByName('serial').AsInteger :=AirSerial;
              Airqr.Open;
              SenderName:=Trim(airqr.FieldByName('sender_name').AsString);

              if (not airqr.IsEmpty AND not (SenderName ='') ) then begin
                cuQr.Edit;

                cuQr.FieldByName('CODE').Value:= CustomerSerial;

                cuQr.FieldByName('ACCOUNT_NUMBER').Value:=
                Airqr.FieldByName('SENDER_ACCOUNT_NUMBER').AsInteger;

               cuqr.FieldByName('NAME').AsString:=
                Airqr.FieldByName('sender_NAME').AsString;

                cuqr.FieldByName('ADDRESS1').AsString:=
                Airqr.FieldByName('sender_ADDRESS_1').AsString;

                cuqr.FieldByName('ADDRESS2').AsString :=
                Airqr.FieldByName('sender_ADDRESS_2').AsString;

                cuqr.FieldByName('ADDRESS3').AsString :=
                Airqr.FieldByName('sender_ADDRESS_3').AsString;

                cuqr.FieldByName('POST_CODE').AsString :=
                Airqr.FieldByName('sender_POST_CODE').AsString;

                cuqr.FieldByName('address_CITY').AsString :=
                Airqr.FieldByName('SENDER_CITY').AsString;

                cuqr.FieldByName('address_COUNTRY_CODE').AsString:=
                Airqr.FieldByName('SENDER_COUNTRY_CODE').AsString;


                cuQr.Post;
                result:=cuQR.FieldByName('code').AsInteger;
              end;
            finally
              cuqr.Free;
              airQr.Free;
            end;



End;


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
cust:integer;

begin

 cn:= MainFormFRM.CabOutData;


 DistrictSQL.Close;
 DistrictSQL.Open;

     NameFLD.SetFocus;
     If InAction='INSERT' then begin
        CUstomerSQL.close;
        CustomerSQL.Open;
        CustomerSQL.Insert;
        CustomerSQL.FieldByName('Name').value:= InCustomerName;
        NameFLd.SelStart := Length(NameFLD.Text);
     end else If InAction='INSERT_CUSTOMER' then begin
      cust:= AddCustomer(InAirSerial);
      displayCustomer(cust);

     end else If InAction='DISPLAY' then begin
      displayCustomer(InCustomerCode);
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
     if CustomerSQL.State in [dsEdit,dsInsert] then
        CustomerSQL.Post;
     OutCustomerCode:=CustomerSQL.FieldByName('code').AsInteger;
     close;

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

procedure TM_CustomerNewFRM.DisplayCustomer(Const CustomerSerial:Integer);
begin
        With CustomerSQL do begin
                Close;
                CustomerSQL.ParambyName('CustomerSErial').Value:= CustomerSerial;
                Open;
        end;
end;


procedure TM_CustomerNewFRM.DistrictDLGNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
Accept:=false;
end;






END.
