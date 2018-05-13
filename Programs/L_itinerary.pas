unit L_itinerary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid, Data.DB,
  DBAccess, vcl.wwdblook;

type
  TL_ItineraryFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    ItinerarySQL: TIBCQuery;
    Label5: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DeleteSelectedBTN: TBitBtn;
    InsertBTN: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    UsedForUpdateTrans: TIBCTransaction;
    ItinerarySRC: TIBCDataSource;
    ItinerarySQLSERIAL_NUMBER: TIntegerField;
    ItinerarySQLFLIGHT_NAME: TStringField;
    ItineraryCountrySQL: TIBCQuery;
    ItineraryCountrySQLSERIAL_NUMBER: TIntegerField;
    ItineraryCountrySQLFK_ITINERARY_SERIAL: TIntegerField;
    ItineraryCountrySQLCOUNTRY_CODE: TStringField;
    itineraryCountrySRC: TIBCDataSource;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    CountrySQL: TIBCQuery;
    CountrySQLCODE_2: TStringField;
    CountrySQLNAME: TStringField;
    wwDBLookupCombo3: TwwDBLookupCombo;
    ItineraryCountrySQLCountryName: TStringField;
    GroupBox2: TGroupBox;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    FlightOutGRD: TwwDBGrid;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    ItineraryCountrySQLORDER_POSITION: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FlightOutGRDDblClick(Sender: TObject);
    procedure InsertBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DeleteSelectedBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GAirSerial:Integer;
    GMovementSerial:Integer;
    GDocumentMasterSerial:Integer;
    procedure EditFlightOUt(SerialNumber:Integer);
    procedure InsertFlightOUt(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);


  end;

var
  L_ItineraryFRM: TL_ItineraryFRM;

implementation

uses MainForm,  M_Itinerary;

{$R *.DFM}

procedure TL_ItineraryFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;


procedure TL_ItineraryFRM.EditFlightOut(SerialNumber:Integer);
begin
{
with FlightOutSQL do begin
        close;
        If not prepared then Prepare;
        ParamByName('serialNumber').value:= SerialNumber;
        Open;
end;
}
End;

procedure TL_ItineraryFRM.InsertFlightOut(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
begin
{
with  FlightOutSQL do begin
        close;
        If not prepared then Prepare;
        Open;
        Insert;
        SerialNumber:=FieldbyName('serial_number').AsInteger;
end;
}
End;


procedure TL_ItineraryFRM.FlightOutGRDDblClick(Sender: TObject);
Var
        FlightSerial:Integer;
begin
{
        FlightSerial:=FlightOutGRD.DataSource.DataSet.fieldbyName('serial_number').AsInteger;
        H_FlightOutFRM.GAction:='EDIT';
        H_FlightOutFRM.GOutFlightOutSerial:=FlightSerial;
        H_FlightOutFRM.SHowmodal;
        FlightOutSQL.Close;
        FlightOutSQL.Open;
        FlightOutSQL.Locate('SERIAL_NUMBER',FlightSerial,[]);
}
end;

procedure TL_ItineraryFRM.InsertBTNClick(Sender: TObject);
Var
        OutSerial:Integer;
begin
          M_itineraryFRM.GAction:='INSERT';
          M_itineraryFRM.SHowmodal;
End;




procedure TL_ItineraryFRM.BitBtn1Click(Sender: TObject);
begin
M_ItineraryFRM.GAction:='EDIT';
M_ItineraryFRM.SHowmodal;
end;

procedure TL_ItineraryFRM.DeleteSelectedBTNClick(Sender: TObject);
begin
ItinerarySQL.Delete;
end;

procedure TL_ItineraryFRM.FormActivate(Sender: TObject);
Var
        SerialNumber:Integer;
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

end;

END.
