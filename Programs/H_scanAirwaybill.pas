unit H_scanAirwaybill;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, DBAccess, Data.DB,
  vcl.wwdbigrd, vcl.wwdbgrid, vcl.wwdblook;

type
  TH_ScanAirwaybillFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    FlightAirwaybillSQL: TIBCQuery;
    Label5: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    FlightAirwaybillSQLSERIAL_NUMBER: TIntegerField;
    FlightAirwaybillSQLSEQUENCE_NUMBER: TIntegerField;
    FlightAirwaybillSQLHAWB_ID: TStringField;
    FlightAirwaybillSQLSHIPMENT_ORIGIN_AREA: TStringField;
    FlightAirwaybillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    FlightAirwaybillSQLPIECES: TIntegerField;
    FlightAirwaybillSQLWEIGHT: TFloatField;
    FlightAirwaybillSQLDESCRIPTION: TStringField;
    FlightAirwaybillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightAirwaybillSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightAirwaybillSQLPIECES_S: TStringField;
    FlightAirwaybillSQLFK_AIRWAYBILL_SERIAL: TIntegerField;
    FlightAirwaybillSQLFK_FLIGHT_OUT_SERIAL: TIntegerField;
    AirwaybillOriginalSQL: TIBCQuery;
    AirwaybillOriginalSQLSERIAL_NUMBER: TIntegerField;
    AirwaybillOriginalSQLSEQUENCE_NUMBER: TIntegerField;
    AirwaybillOriginalSQLHAWB_ID: TStringField;
    AirwaybillOriginalSQLSHIPMENT_ORIGIN_AREA: TStringField;
    AirwaybillOriginalSQLSHIPMENT_ORIGIN_COUNTRY: TStringField;
    AirwaybillOriginalSQLPIECES: TIntegerField;
    AirwaybillOriginalSQLWEIGHT: TFloatField;
    AirwaybillOriginalSQLDESCRIPTION: TStringField;
    AirwaybillOriginalSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    AirwaybillOriginalSQLFK_MOVEMENT_SERIAL: TIntegerField;
    AirwaybillOriginalSQLPIECES_S: TStringField;
    Label10: TLabel;
    SearchFlightOutFLD: TwwDBEdit;
    FindHawbBTN: TSpeedButton;
    FlightOutSQL: TIBCQuery;
    FlightOutSQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQLMAWB: TStringField;
    FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightOutSQLDATE_DEPART: TDateTimeField;
    FlightOutSQLREMARKS: TStringField;
    FlightOutSQLDESTINATION_AREA: TStringField;
    FlightOutSQLDESTINATION_COUNTRY: TStringField;
    FindFlightByxSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FindFLightAirwaybillbyHawbSQL: TIBCQuery;
    FindFLightAirwaybillbyHawbSQLSERIAL_NUMBER: TIntegerField;
    FindFLightAirwaybillbyHawbSQLHAWB_ID: TStringField;
    FindFLightAirwaybillbyHawbSQLFK_FLIGHT_OUT_SERIAL: TIntegerField;
    FlightAirwaybillTrans: TIBCTransaction;
    FlightOutCDS: TIBCDataSource;
    FLightAirwaybillCDS: TIBCDataSource;
    FlightAirwaybillSQLSENDER_NAME: TStringField;
    FlightAirwaybillSQLSENDER_ADDRESS: TStringField;
    FlightAirwaybillSQLSENDER_POST_CODE: TStringField;
    FlightAirwaybillSQLSENDER_CITY: TStringField;
    FlightAirwaybillSQLSENDER_COUNTRY_CODE: TStringField;
    FlightAirwaybillSQLCONSIGNEE_NAME: TStringField;
    FlightAirwaybillSQLCONSIGNEE_ADDRESS: TStringField;
    FlightAirwaybillSQLCONSIGNEE_POST_CODE: TStringField;
    FlightAirwaybillSQLCONSIGNEE_CITY: TStringField;
    FlightAirwaybillSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    FlightAirwaybillSQLFK_ITINERARY_SERIAL: TIntegerField;
    FlightAirwaybillSQLPACKAGES_COUNT: TIntegerField;
    FlightAirwaybillSQLITEMS_COUNT: TIntegerField;
    AirwaybillOriginalSQLSENDER_NAME: TStringField;
    AirwaybillOriginalSQLSENDER_ADDRESS: TStringField;
    AirwaybillOriginalSQLSENDER_POST_CODE: TStringField;
    AirwaybillOriginalSQLSENDER_CITY: TStringField;
    AirwaybillOriginalSQLSENDER_COUNTRY_CODE: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_NAME: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_ADDRESS: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_POST_CODE: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_CITY: TStringField;
    AirwaybillOriginalSQLCONSIGNEE_COUNTRY_CODE: TStringField;
    AirwaybillOriginalSQLFK_ITINERARY_SERIAL: TIntegerField;
    AirwaybillOriginalSQLPACKAGES_COUNT: TIntegerField;
    AirwaybillOriginalSQLITEMS_COUNT: TIntegerField;
    BitBtn3: TBitBtn;
    MFainPNL: TPanel;
    MainPNL: TPanel;
    FlightAirwaybillGRD: TwwDBGrid;
    ScanPNL: TPanel;
    Label2: TLabel;
    HawbInputFLD: TwwDBEdit;
    DetailsPNL: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit1: TwwDBEdit;
    WeightFLD: TwwDBEdit;
    DescriptionFLD: TwwDBEdit;
    FlightAirwaybillSQLPAYMENT_METHOD: TStringField;
    AirwaybillOriginalSQLPAYMENT_METHOD: TStringField;
    DeleteFlightCountriesSQL: TIBCSQL;
    FlightTableSQL: TIBCQuery;
    FlightOutSQLFK_FLIGHT_TABLE: TIntegerField;
    FlightTableSQLSERIAL_NUMBER: TIntegerField;
    FlightTableSQLFLIGHT_NAME: TStringField;
    FlightTableSQLDESTINATION_COUNTRY_CODE: TStringField;
    FlightAirwaybillCountrySQL: TIBCQuery;
    FlightAirwaybillCountrySQLCOUNTRY_CODE: TStringField;
    FlightAirwaybillCountrySQLFK_FLIGHT_AIRWAYBILL: TIntegerField;
    FlightOutCountrySQL: TIBCQuery;
    FlightOutCountrySQLFK_FLIGHT_OUT: TIntegerField;
    FlightOutCountrySQLCOUNTRY_CODE: TStringField;
    FlightOutCountrySQLORDER_POSITION: TIntegerField;
    GroupBox1: TGroupBox;
    wwDBEdit2: TwwDBEdit;
    pamenwwDBEdit4: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    wwDBEdit5: TwwDBEdit;
    Panel5: TPanel;
    wwDBEdit3: TwwDBEdit;
    FlightAirwaybillCountrySQLORDER_POSITION: TIntegerField;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure AirwayBillSQLAfterPost(DataSet: TDataSet);
    procedure FlightAirwaybillGRDDblClick(Sender: TObject);
    procedure HawbInputFLDKeyPress(Sender: TObject; var Key: Char);
    procedure FindHawbBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FlightOutCDSStateChange(Sender: TObject);
    procedure XMLBTNClick(Sender: TObject);
    procedure XMLOneBTNClick(Sender: TObject);
    procedure XMLForOneBTNClick(Sender: TObject);
    procedure DeleteXBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GFlightOutSerial:Integer;

    Function  FindFlightOut(Mawb:String;Var Serial:Integer):boolean;
    Function  OPenFlightOut(Serial:Integer):boolean;
    procedure InsertFlightAirwaybill(Var SerialNumber:Integer;HawbId:string);
    procedure DeleteFlightAirwaybill(Var SerialNumber:Integer);
    procedure ProcessAirwaybill(Var SerialNumber:Integer;HawbId:string);
  end;

var
  H_ScanAirwaybillFRM: TH_ScanAirwaybillFRM;

implementation

uses MainForm, H_FlightAirwaybill, H_flightOut;

{$R *.DFM}

procedure TH_ScanAirwaybillFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FlightOutSQL.Close;
FlightAirwaybillSQL.Close;

end;

procedure TH_ScanAirwaybillFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TH_ScanAirwaybillFRM.AirwayBillSQLAfterPost(DataSet: TDataSet);
Var
   TheBookMark:TBookmark;
begin
TheBookMark:=Dataset.GetBookmark;
Dataset.Close;
Dataset.Open;
Dataset.GotoBookmark(TheBookMark);
end;

Function TH_ScanAirwaybillFRM.FindFlightOut(Mawb:String;Var Serial:Integer):Boolean;
begin
Serial:=0;
with FindFlightbyxSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('Mawb').value:= Mawb;
        Open;
        Result:=(not IsEmpty);
        If Result then begin
                First;
                Serial:=FieldByName('Serial_number').AsINteger;

        end;

end;

End;

Function TH_ScanAirwaybillFRM.OpenFlightOut(Serial:Integer):Boolean;
begin
with FlightOutSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('SerialNumber').value:= serial;
        Open;
        Result:=(not IsEmpty);
        MFainPNL.Visible:=Result;
        If Result then begin
                If not FlightAirwaybillSQL.Active then
                        FlightAirwaybillSQL.Open
                else
                        FLightAIrwaybillSQL.Refresh;
//                HawbInputFLD.Enabled:=True;
                IF HawbINputfld.CanFocus then
                        HawbInputFLD.SetFocus;

        end else begin
//                HawbInputFLD.Enabled:=False;
        end;
end;

End;

procedure TH_ScanAirwaybillFRM.InsertFlightAirwaybill(Var SerialNumber:Integer;HawbId:string);
begin

with  FlightAirwaybillSQL do begin
        Insert;
        FieldByName('Hawb_id').value:=Hawbid;
end;

End;



procedure TH_ScanAirwaybillFRM.DeleteFlightAirwaybill(Var SerialNumber:Integer);
begin
End;


procedure TH_ScanAirwaybillFRM.ProcessAirwaybill(Var SerialNumber:Integer;HawbId:string);

begin


with FindFlightAirwayBillByHawbSQL do begin   //cannot have two same hawb ids on SAME flight
        close;
        If not prepared then Prepare;
        ParamByName('HawbID').value:=Hawbid;
        ParamByName('FLightSerial').value:=FlightOutSQL.FieldByName('serial_number').AsInteger;
        Open;
        If (not IsEmpty) then begin
                Raise exception.Create('Hawb: '+HawbId+' already scanned');
        end;

end;


with  AirwaybillOriginalSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('HawbID').value:=Hawbid;
        Open;
        If (not IsEmpty) then begin    // The Airwaybill exists since it was normally read from the text file previously
                InsertFlightAirwaybill(SerialNumber,HawbId);
                FlightAirwaybillSQL.fieldbyname('FK_flight_out_serial').value:=FlightOutSQL.FieldByName('serial_number').AsInteger;

                FlightAirwaybillSQL.fieldbyname('HAWB_ID').value:=AirwaybillOriginalSQL.FieldbyName('HAWB_ID').AsString;
                FlightAirwaybillSQL.fieldbyname('ITEMS_COUNT').value:=AirwaybillOriginalSQL.FieldbyName('ITEMS_COUNT').AsInteger;
                FlightAirwaybillSQL.fieldbyname('PACKAGES_COUNT').value:=AirwaybillOriginalSQL.FieldbyName('PACKAGES_COUNT').AsInteger;
                FlightAirwaybillSQL.fieldbyname('DESCRIPTION').value:=AirwaybillOriginalSQL.FieldbyName('DESCRIPTION').AsString;
                FlightAirwaybillSQL.fieldbyname('PIECES').value:=AirwaybillOriginalSQL.FieldbyName('PIECES').AsInteger;
                FlightAirwaybillSQL.fieldbyname('WEIGHT').value:=AirwaybillOriginalSQL.FieldbyName('WEIGHT').AsFloat;


                FlightAirwaybillSQL.fieldbyname('SENDER_NAME').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_NAME').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_ADDRESS').value:=AirwaybillOriginalSQL.FieldByName('SENDER_ADDRESS').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_POST_CODE').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_POST_CODE').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_CITY').value:=AirwaybillOriginalSQL.FieldByName('SENDER_CITY').AsString;
                FlightAirwaybillSQL.fieldbyname('SENDER_COUNTRY_CODE').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_COUNTRY_CODE').AsString;

                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_NAME').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_NAME').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_ADDRESS').value:=AirwaybillOriginalSQL.FieldByName('CONSIGNEE_ADDRESS').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_POST_CODE').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_POST_CODE').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_CITY').value:=AirwaybillOriginalSQL.FieldByName('CONSIGNEE_CITY').AsString;
                FlightAirwaybillSQL.fieldbyname('CONSIGNEE_COUNTRY_CODE').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_COUNTRY_CODE').AsString;
                FlightAirwaybillSQL.fieldbyname('PAYMENT_METHOD').value:=AirwaybillOriginalSQL.FieldbyName('PAYMENT_METHOD').AsString;


                SerialNumber:=FieldbyName('serial_number').AsInteger;
                FlightAirwaybillSQL.Post;


                ///************************************
                //For each flight airwaybill insert the origin as the first country
                // Next insert flight's countries
                //Last insert the destination country
                if not FlightAIrwaybillCountrySQL.Active then
                        FlightAIrwaybillCountrySQL.Open;

                FlightAIrwaybillCountrySQL.insert;
                FlightAirwaybillCountrySQL.fieldbyname('Country_code').value:=AirwaybillOriginalSQL.FieldbyName('SENDER_COUNTRY_CODE').AsString;
                FlightAirwaybillCountrySQL.fieldbyname('order_position').value:=0;
                FlightAirwaybillCOuntrySQL.Post;

                FlightOutCountrySQL.Refresh;
                FlightOutCountrySQL.First;
                while not FlightOutCountrySQL.eof do begin
                        FlightAIrwaybillCountrySQL.insert;
                        FlightAirwaybillCountrySQL.fieldbyname('Country_code').value:=FlightOUtCountrySQL.FieldbyName('COUNTRY_CODE').AsString;
                        FlightAirwaybillCountrySQL.fieldbyname('order_position').value:=FlightOUtCountrySQL.FieldbyName('Order_position').AsInteger;
                        FlightAirwaybillCOuntrySQL.Post;
                        FlightOutCountrySQL.next;
                end;
                FlightAIrwaybillCountrySQL.insert;
                FlightAirwaybillCountrySQL.fieldbyname('Country_code').value:=AirwaybillOriginalSQL.FieldbyName('CONSIGNEE_COUNTRY_CODE').AsString;
                FlightAirwaybillCountrySQL.fieldbyname('order_position').value:=100;
                FlightAirwaybillCOuntrySQL.Post;

                DetailsPNL.Visible:=true;
        end else begin   // Somehow the airwaybill not read from file. Still we need to put it on flight
                DetailsPNL.Visible:=False;

                H_FlightAirwaybillFRM.GHawbId:=HawbId;
                H_FlightAirwaybillFRM.GFlightOutSerial:=FlightOutSQL.FieldByName('serial_number').AsInteger;
                H_FlightAirwaybillFRM.GAction:='INSERT';
                If H_FLightAirwaybillFRM.ShowModal=mrOK then begin
//                        FlightAIrwayBIllSQL.open;
                end;
                FlightAIrwayBIllSQL.Refresh;

        end;
end;

End;



procedure TH_ScanAirwaybillFRM.FlightAirwaybillGRDDblClick(Sender: TObject);
Var
        Serial:Integer;
        FlightOutSerial:Integer;
begin

        Serial:=FlightAirwaybillGRD.DataSource.DataSet.fieldbyName('serial_number').AsInteger;
        FLightOUtSerial:=FlightAirwaybillGRD.DataSource.DataSet.fieldbyName('fk_flight_out_serial').AsInteger;
        H_FlightAirwaybillFRM.GFlightAIrSerial:=Serial;
        H_FlightAirwaybillFRM.GFlightOutSerial:=FlightOutSerial;
        H_FlightAirwaybillFRM.GAction:='EDIT';
        H_FlightAirwaybillFRM.SHowmodal;
        FlightAIrwaybillSQL.Refresh;
        FlightAIrwaybillSQL.Locate('SERIAL_NUMBER',Serial,[]);
        DetailsPNL.Visible:=False;
end;

procedure TH_ScanAirwaybillFRM.HawbInputFLDKeyPress(Sender: TObject;
  var Key: Char);
Var
        Serial:Integer;
begin
If (Key= #13) then begin
//ShowMessage('value entered='+HawbInputFLD.Text);
ProcessAIrwayBill(Serial,HawbInputFLD.Text);
HawbInputFLD.Clear;
end;

end;





procedure TH_ScanAirwaybillFRM.FindHawbBTNClick(Sender: TObject);
Var
        FlightSerial:Integer;
begin
 If FindFlightOut(SearchFlightOutFLD.text,FlightSerial) then begin
        OpenFlightOut(FlightSerial);
 end else begin
        FlightOUtSQL.Close;

 end;
MFainPNL.visible:=  (not FlightOUtSQL.IsEmpty and FlightOutSQL.Active);


End;

procedure TH_ScanAirwaybillFRM.FormCreate(Sender: TObject);
begin
If not FLightAIrwaybillSQL.Active then
         FLightAIrwaybillSQL.open;
end;

procedure TH_ScanAirwaybillFRM.FormActivate(Sender: TObject);
Var
Dataset:TDataset;
I:Integer;
begin
for i := 0 to (Self as TForm).ComponentCount-1 do begin
if (Self as TForm).Components[i] is TDataset then begin
        Dataset:= TDataset(Tform(Self).Components[i]);

        If not Dataset.Active then
                Dataset.Open
        else
                Dataset.Refresh;

        end;
end;


MFainPNL.visible:=  (not FlightOUtSQL.IsEmpty and FlightOutSQL.Active);

If searchFlightOutfld.canfocus then SearchFlightOutfld.setfocus;
//FlightAirwaybillSQL.Open;

If GAction='EDIT' then begin
OpenFlightOut(GFLightOutSerial);


end;


end;

procedure TH_ScanAirwaybillFRM.BitBtn3Click(Sender: TObject);
Var
        FlightOutSerial:Integer;
        FlightOutMawb:String;
begin
        H_FlightOutFRM.GAction:='INSERT';
        H_FlightOutFRM.SHowmodal;
        FlightOutSerial:=H_flightOutFRM.GFlightOutSerial;
        OpenFlightOut(FlightOutSerial);

end;

procedure TH_ScanAirwaybillFRM.FlightOutCDSStateChange(Sender: TObject);
begin
MFainPNL.visible:=  (not FlightOUtSQL.IsEmpty and FlightOutSQL.Active);

end;

procedure TH_ScanAirwaybillFRM.XMLBTNClick(Sender: TObject);
Var
        SerialNumber:Integer;
        Mawb:String;
begin
//SerialNumber:=FLightOutSQL.FieldByName('serial_number').AsInteger;
//CreateOneXMLFileFRM.GFlightOutSerial:=SerialNumber;
//CreateOneXMLFileFRM.ProcessFlightOut(SerialNumber);

end;

procedure TH_ScanAirwaybillFRM.XMLOneBTNClick(Sender: TObject);
Var
        SerialNumber:Integer;
        Mawb:String;
begin
SerialNumber:=FLightAirwaybillSQL.FieldByName('serial_number').AsInteger;
//CreateOneXMLFileFRM.ProcessOneAir(SerialNumber);

end;

procedure TH_ScanAirwaybillFRM.XMLForOneBTNClick(Sender: TObject);

Var
        SerialNumber:Integer;
        Mawb:String;
begin
SerialNumber:=FLightAirwaybillSQL.FieldByName('serial_number').AsInteger;
Mawb:= FlightOutSQL.FieldbyName('Mawb').AsString;
//CreateOneXMLFileFRM.ProcessOneAir(SerialNumber);

end;

procedure TH_ScanAirwaybillFRM.DeleteXBTNClick(Sender: TObject);
Var
        Serial:Integer;
begin
        Serial:= FlightAIrwayBillSQL.FieldbyName('serial_number').AsInteger;

        FlightAIrwayBillSQL.AutoCommit:=false;
        FlightAIrwayBillSQL.UpdateTransaction.StartTransaction;
        DeleteFlightCountriesSQL.parambyName('SerialNumber').Value:=Serial;
        DeleteFlightCountriesSQL.Execute;
        FlightAIrwayBillSQL.Delete;
        FlightAIrwayBillSQL.UpdateTransaction.Commit;
        FlightAIrwayBillSQL.AutoCommit:=true;
        DetailsPNL.Visible:=False;

end;

end.
