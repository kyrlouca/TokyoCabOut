unit H_flightOut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  Data.DB, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, vcl.wwclearpanel,
  vcl.Wwdbdatetimepicker, vcl.wwdblook, vcl.Wwdbedit, Vcl.Buttons, Vcl.ExtCtrls;
type
  TH_FlightOutFRM = class(TForm)
    TitlePNL: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    SerialFLD: TwwDBEdit;
    DestCountryFLD: TwwDBEdit;
    DestAreaFLD: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    RemarksFLD: TwwDBEdit;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    Label9: TLabel;
    MawbFLD: TwwDBEdit;
    FlightOutSRC: TIBCDataSource;
    FlightTableSQL: TIBCQuery;
    FlightTableSQLFLIGHT_NAME: TStringField;
    FlightTableSQLDESTINATION_COUNTRY_CODE: TStringField;
    FlightTableSQLSERIAL_NUMBER: TIntegerField;
    FlightOutCountrySQL: TIBCQuery;
    FlightOutCountrySRC: TIBCDataSource;
    FlightOutCountrySQLCOUNTRY_CODE: TStringField;
    CountrySQL: TIBCQuery;
    CountrySQLCODE_2: TStringField;
    CountrySQLNAME: TStringField;
    FlightOutCountrySQLCountryName: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    ItinerarySQL: TIBCQuery;
    ItinerarySQLFLIGHT_NAME: TStringField;
    ItinerarySQLSERIAL_NUMBER: TIntegerField;
    ItineraryCRC: TIBCDataSource;
    ItineraryCountrySQL: TIBCQuery;
    ItineraryCountrySQLSERIAL_NUMBER: TIntegerField;
    ItineraryCountrySQLFK_ITINERARY_SERIAL: TIntegerField;
    ItineraryCountrySQLCOUNTRY_CODE: TStringField;
    FlightOutSQL: TIBCQuery;
    FlightOutSQLSERIAL_NUMBER: TIntegerField;
    FlightOutSQLMAWB: TStringField;
    FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField;
    FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField;
    FlightOutSQLDATE_DEPART: TDateTimeField;
    FlightOutSQLREMARKS: TStringField;
    FlightOutSQLDESTINATION_AREA: TStringField;
    FlightOutSQLDESTINATION_COUNTRY: TStringField;
    FlightOutSQLFK_FLIGHT_TABLE: TIntegerField;
    UPdateTransaction: TIBCTransaction;
    FlightOutCountrySQLFK_FLIGHT_OUT: TIntegerField;
    FlightOutCountrySQLORDER_POSITION: TIntegerField;
    CountryLookupFLD: TwwDBLookupCombo;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    ItineraryCountrySQLORDER_POSITION: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GFlightOutSerial:Integer;
    GFlightOutMawb:String;
//    GMovementSerial:Integer;
//    GDocumentMasterSerial:Integer;
    procedure EditFlightOUt(SerialNumber:Integer);
    procedure InsertFlightOUt(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
  end;

var
  H_FlightOutFRM: TH_FlightOutFRM;

implementation

uses MainForm,L_flightOutList;

{$R *.DFM}

procedure TH_FlightOutFRM.FormActivate(Sender: TObject);

Var
Dataset:TDataset;
I:Integer;
Begin


for i := 0 to (Self as TForm).ComponentCount-1 do begin
if (Self as TForm).Components[i] is TDataset then begin
        Dataset:= TDataset(Tform(Self).Components[i]);

        If not Dataset.Active then
                Dataset.Open
        else
                Dataset.Refresh;

        end;
end;


//ItineraryFLD.Text:='';
Dataset:=FlightOutSQL;
If GAction='EDIT' then begin
        TitlePNL.Caption:='Edit Flight Out';
//        UpdateTransaction.StartTransaction;
        Dataset.close;
        (Dataset as TIBCQuery).parambyName('SerialNumber').Value:=GFlightOutSerial;
        Dataset.Open;
        Dataset.Edit;
        If  MawbFLD.CanFocus then MawbFLD.SetFocus;
end else if GAction='INSERT' then begin
        TitlePNL.Caption:='Insert Flight Out';
//        UpdateTransaction.StartTransaction;
        If not Dataset.active then dataset.open;
        Dataset.Insert;
        GFlightOUtSerial:=Dataset.FieldByName('serial_number').AsInteger;
        If  MawbFLD.CanFocus then MawbFLD.SetFocus;
end;




End;

procedure TH_FlightOutFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TH_FlightOutFRM.AcceptBTNClick(Sender: TObject);

Var
Dataset:Tdataset;
begin
Dataset:=FlightOutSQL;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Post;
GFLightOutSerial:=Dataset.fieldbyName('serial_number').AsInteger;
//UpdateTransaction.Commit;
ModalResult:=mrok;
Close;


end;

procedure TH_FlightOutFRM.CancelBTNClick(Sender: TObject);
Var
Dataset:Tdataset;
begin
Dataset:=FlightOutSQL;
If Dataset.State in [dsInsert,dsEdit] then
        Dataset.Cancel;
ModalResult:=mrCancel;
GFLightOutSerial:=0;
close;

end;


procedure TH_FlightOutFRM.EditFlightOut(SerialNumber:Integer);
begin
End;

procedure TH_FlightOutFRM.InsertFlightOut(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
begin

End;


procedure TH_FlightOutFRM.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin

If FlightOutSQL.State=dsInsert then begin
        FlightOutSQL.Post;
end;

With FlightOUtCountrySQL do begin
        first;
        While not Eof do begin
                delete;
        end;
end;

With ItineraryCountrySQL do begin
        first;
        While not Eof do begin
                FlightOUtCountrySQL.Insert;
                FlightOUtCountrySQL.FieldByName('COUNTRY_CODE').Value:=FieldBYName('country_code').AsString;
                FlightOUtCountrySQL.FieldByName('order_position').Value:=FieldBYName('order_position').AsInteger;
                FlightOUtCountrySQL.Post;
                next;

        end;
end;
FlightOUtCountrySQL.Refresh;



end;

procedure TH_FlightOutFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//If s
end;

procedure TH_FlightOutFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if FlightOutSQL.State in [dsEdit,dsInsert] then begin
        self.CancelBTN.click;
end;
end;

End.
