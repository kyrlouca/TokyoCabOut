unit M_Itinerary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  Wwquery, wwstorep, Db;

type
  TM_ItineraryFRM = class(TForm)
    TitlePNL: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    SerialFLD: TwwDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    Label9: TLabel;
    F1FLD: TwwDBEdit;
    IItinerarySRC: TIBCDataSource;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GAction:string;
    GOutFlightOutSerial:Integer;
    GFlightOutMawb:String;
//    GMovementSerial:Integer;
//    GDocumentMasterSerial:Integer;
    procedure EditFlightOUt(SerialNumber:Integer);
    procedure InsertFlightOUt(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
  end;

var
  M_ItineraryFRM: TM_ItineraryFRM;

implementation

uses MainForm,L_Itinerary;

{$R *.DFM}

procedure TM_ItineraryFRM.FormActivate(Sender: TObject);

Var
TheDataset:TDataset;
Begin
TheDataset:=L_ItineraryFRM.ItinerarySQL;
If GAction='EDIT' then begin
        If theDataset.State=dsbrowse then
        TheDataset.Edit;
end else if GAction='INSERT' then begin
        TitlePNL.Caption:='Insert Itinerary';
        If not theDataset.active then TheDataset.OPen;
        TheDataset.Insert;
        If  f1FLD.CanFocus then f1FLD.SetFocus;

end;

End;

procedure TM_ItineraryFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_ItineraryFRM.AcceptBTNClick(Sender: TObject);
Var
TheDataset:TDataset;
Begin
TheDataset:=L_ItineraryFRM.ItinerarySQL;
TheDataset.Post;
//GOutSerial:=TheDataset.fieldbyName('serial_number').AsInteger;
close;
end;

procedure TM_ItineraryFRM.CancelBTNClick(Sender: TObject);
Var
TheDataset:TDataset;
Begin
TheDataset:=L_ItineraryFRM.ItinerarySQL;
TheDataset.cancel;
//GOutSerial:=0;
close;
end;


procedure TM_ItineraryFRM.EditFlightOut(SerialNumber:Integer);
begin
End;

procedure TM_ItineraryFRM.InsertFlightOut(Var SerialNumber:Integer;MovementSerial,DocumentMasterSerial:Integer);
begin

End;


End.
