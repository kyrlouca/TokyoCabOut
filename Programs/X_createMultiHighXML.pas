//////////////////////
//**
//**  CreateOneAirwabillXML ??
//**  LoopMultiXML    calls
//**  CreateFlightXML   -- create xml for all unflagged airs on the flight
//**     -- creates the groups (declarationType, TypeOfDeclaration, Circumstance,Incoterm)
//**
//**
//** CreateNodeOuter   -- Fdoc, calls the Create header and Create airway bills
//** CreateNodeHeader  -- just the header - has the totals
//** CreateNodeAirwayBills --
//** CreateNodeFlightCountries -- itinerary with countries on the Flight
//** CreateNodeForItems ??
//** Remember that MAX airwaybills = 89 and affects grouping!!
//**
//////////////////////

unit X_createMultiHighXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.adomxmldom, Xml.XMLDoc, vcl.wwbutton, Xml.Win.msxmldom, Data.DB, MemDS,
  DBAccess, IBC, RzLabel,clipbrd;

type
  TCriteriaParams= record
    DeclarationType:String;
    TypeOfDeclaration:String;
    Circumstance:String;
    Incoterms:String;
  end;

  TX_CreateMultiHighXmlFRM = class(TForm)
    Button1: TButton;
    XMLDoc: TXMLDocument;
    XMLDocNew: TXMLDocument;
    wwButton1: TwwButton;
    RzLabel1: TRzLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    function GetTableDefaultValue( Const TableName:String):String;
    Function TestOne(Const HawbSerial:Integer):String;
    function FindCertValue(Const CertSerial,ItemSerial:Integer):String;


    function CheckSameSender( Const FlightSerial, AirSerial :Integer):Boolean;
    function CheckSameConsignee( Const FlightSerial, AirSerial :Integer):Boolean;
    function CheckSameDestination( Const FlightSerial, AirSerial :Integer):Boolean;

    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;overload;
    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode; overload;
    Function  AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
    function CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
    function TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement):IXMLNode;


  function CreateNodeOuter( Const FlightOutSerial:Integer; AirSerial:integer;const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):Integer;
  function CreateNodeHeader( Const FlightOutSerial,AirSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
  function CreateNodeAirwayBills( Const FlightSerial:Integer;  AirSerial: Integer;const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):Integer;
  function CreateNodeForItems( Const AirwaybillSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;


  public
    { Public declarations }
    IN_FlightSerial:Integer;

    SameIncoterm:boolean;
    procedure CreateOneAirwabillXML(Const SerialNumber:Integer);

  Function LoopMultiXML(Const FlightOutSerial:Integer):integer;

  Function CreateFlightXML(Const FlightOutSerial,AirSerial:Integer):integer;

  end;

var
  X_CreateMultiHighXmlFRM: TX_CreateMultiHighXmlFRM;

implementation

{$R *.dfm}

uses MainForm, GeneralParametersNew, G_KyrSQL, G_generalProcs;

procedure TX_CreateMultiHighXmlFRM.Button1Click(Sender: TObject);
begin

CreateFlightXML(IN_FlightSerial,0);

end;


Function TX_CreateMultiHighXmlFRM.TestOne(Const HawbSerial:Integer):String;
var
  LDocument: IXMLDocument;
  DomImpl: IDOMImplementation;
  LNodeElement, NodeCData, NodeText: IXMLNode;
  DTDNode, HeaderNode,fNode:IXMLNode;
  GenNOde:IXMLNode;
  MawbSerial:Integer;
  CustomerSerial:Integer;
  val:string;
  count:integer;
  HouseDir:String;
  hawbId:string;


begin

end;

procedure TX_CreateMultiHighXmlFRM.CreateOneAirwabillXML(Const SerialNumber:Integer);

begin

end;




function TX_CreateMultiHighXmlFRM.CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
Var
  HeaderNode:IXMLNode;
   CxFather:IXMLNode;
   TheElement:IXMLNode;
   TheTextElement:IXMLNode;
//   TheAttr:TDomAttr;
Begin

  HeaderNode:=ElementFather.AddChild(ElementName,-1);
  if (Trim(ElementValue)>'') and (ElementType=ntText) then
    HeaderNode.Text:=ElementValue;
  result:=HeaderNode;

End;

procedure TX_CreateMultiHighXmlFRM.FormCreate(Sender: TObject);
begin
  cn:= MainFormFRM.CabOutData;
end;

function TX_CreateMultiHighXmlFRM.TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement):IXMLNode;
Var
   CxFather:IXMLNode;
   TheElement:IXMLNode;
   TheTextElement:IXMLNode;
   MyValue:String;
//   TheAttr:TDomAttr;
Begin
//     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfItems','',Dataset,'ITEMS_COUNT',ntText);

  If Dataset.FieldBYName(FieldName).DataType in [ftfloat,ftSingle] then begin
       MyValue:=gpFloatToStr(dataset.FieldBYName(FieldName).AsFloat,3);
//        MyValue:=format('%.3f',[dataset.FieldBYName(FieldName).AsFloat]);
  end else begin
        MyValue:=Trim(dataset.FieldBYName(FieldName).AsString);
  end;
     //If MyValue='' then
        //MyValue:= ElementName;
     CreateXMLNodeNew(XMLDoc,ElementFather,ElementName,MyValue,ntText);

End;


Function TX_CreateMultiHighXmlFRM.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes['VALUE']:=NodeText;
end;

Function TX_CreateMultiHighXmlFRM.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes[AttributeName]:=AttributeText;
end;

Function TX_CreateMultiHighXmlFRM.AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  HeaderNode.Attributes[AttributeName]:=AttributeText;
  result:=HeaderNode;
end;


Function TX_CreateMultiHighXmlFRM.LoopMultiXML(Const FlightOutSerial:Integer):integer;
var
count:Integer;
begin
    repeat
      count:= CreateFlightXML(FlightOutSerial,0);
    until (Count =0)
end;


Function TX_CreateMultiHighXmlFRM.CreateFlightXML(Const FlightOutSerial,AIrSerial:Integer):integer;
var
  GroupQr, Flightqr,FirstAirQr:TksQuery;
  MawbId:String;
  FlightName:string;
  DefaultDir:String;
  val:String;


   FDoc:IXMLDocument;
  TheRoot:IXMLNode;
//  HeaderNode:IXMLNode;
  strXMl:String;
  FileName:String;
  Criteria:TCriteriaParams;
  CountCreated:Integer;

begin
  DefaultDir:= GN_GetTheSystemParameter(cn, 'S01').P_String4;
   If DefaultDir='' then begin
      MessageDlg('Menu ->System->Params-> System Parameters. Then Add record with Code=S01 string_4 =Path', mtWarning, [mbOK], 0);
  end;

  FlightQr:=TksQuery.Create(cn,' select *  from Flight_out where serial_number= :Serial');
  try
    FlightQr.ParambyName('serial').Value:= FlightOutSerial;
    FlightQr.Open;
    MawbId:=FlightQr.FieldByName('Mawb').AsString;
    ShowMessage(MawbId);
  finally
    FlightQr.free;
  end;


  //change groupSql  below if just for one airwaybill
  //grouping  includes processed airs but no problem if empty groups
  val:=
  '  Select'
  +'    fa.declaration_type, fa.type_of_declaration, fa.specific_circumstance, fa.incoterms'
  +'   from'
  +'    flight_airwaybill fa join'
  +'    flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'   where fa.fk_flight_out_serial= :flightSerial'
  +'  group by     fa.declaration_type, fa.type_of_declaration, fa.specific_circumstance, fa.incoterms';
  GroupQr:=TksQuery.Create(cn,val);

  try
//    FlightQr.ParambyName('Flightserial').Value:= FlightOutSerial;
    GroupQr.ParamByName('FlightSerial').Value:=FlightOutSerial;
    if airSerial>0 then begin
      GroupQr.AddWhere('fa.serial_number = :AirSerial');
      GroupQr.ParamByName('AirSerial').Value:=AirSerial;
    end;

    GroupQr.Open;
    while (not GroupQr.Eof) do begin
      Criteria.DeclarationType:= GroupQr.FieldByName('Declaration_type').AsString;
      Criteria.TypeOfDeclaration:= GroupQr.FieldByName('Type_of_Declaration').AsString;
      Criteria.Circumstance:= GroupQr.FieldByName('specific_circumstance').AsString;
      Criteria.Incoterms:= GroupQr.FieldByName('Incoterms').AsString;

      FDoc:=XMLDocNew;
      FDoc.active:=false;
      Fdoc.XML.Text:='';
      FDoc.Active := True;
      FDoc.Version := '1.0';
      FDoc.Encoding := 'UTF-8';

      TheRoot := FDoc.AddChild('CC515A');
      TheRoot.SetAttributeNS('xmlns', '', 'http://www.eurodyn.com' );
      TBLCreateXMLNode(FDoc,TheRoot,'Declaration','',GroupQr,'DECLARATION_TYPE',ntText);

     /////////////////////////////////////////////////////////////////////////
      result := CreateNodeOuter(FlightOutSerial,AirSerial,Fdoc,TheRoot,Criteria);
     /////////////////////////////////////////////////////////////////////////
      strXML := StringReplace(FDoc.XML.Text, ' xmlns=""', '', [rfReplaceAll]);
      FDoc := LoadXMLData(strXML);
      FileName:= DefaultDir+'\'+ MawbId+'_'+ FormatDateTime('yyyymmddhhmmss',now)+'_'+
      criteria.Incoterms+'_'+ criteria.DeclarationType+'_'+Criteria.TypeOfDeclaration+'_'+Criteria.Circumstance+'_'+'.xml';

      if Result>0 then begin
        FDoc.SaveToFile(FileName);
      end;


      GroupQr.Next;
    end;

  finally
    GroupQr.Free;
  end;

end;



function TX_CreateMultiHighXmlFRM.CreateNodeOuter( Const FlightOutSerial:Integer; AirSerial:integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):Integer;
var
  Flightqr,FirstAirQr:TksQuery;
  DeclarantQr:TksQuery;
  HeaderNode,x1Node, x2Node:IXMLNode;

  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
  CountCreated:Integer;
begin
  val:=
  '   select'
  +'  fo.serial_number, fo.mawb, fo.Date_depart, ft.flight_name from '
  +'   flight_out fo  left outer join '
  +'   flight_table ft on fo.fk_flight_table=ft.serial_number'
  +'   where fo.serial_number = :serial';
  FlightQr:=TksQuery.Create(cn,val);

  //get the flight details of the first airbill for the header since they are all the same
  //for single air change the SQL below
  val:=
  ' select first 1 * from flight_airwaybill fa where '
  +' fa.fk_flight_out_serial = :flightSerial and '
  +' fa.declaration_type = :decType and fa.type_of_declaration = :typeDec and fa.specific_circumstance = :circ  and fa.incoterms = :incoterms';
  FirstAirQR:= TksQuery.Create(cn,val);

  try
      FlightQr.ParambyName('serial').Value:= FlightOutSerial;
      FlightQr.Open;
      if Flightqr.IsEmpty then
        exit;

      FirstAirQr.ParambyName('FlightSerial').Value:= FlightOutSerial;
      FirstAirQr.ParambyName('decType').Value:= Criteria.DeclarationType;
      FirstAirQr.ParambyName('TypeDec').Value:= Criteria.TypeOfDeclaration;
      FirstAirQr.ParambyName('Circ').Value:= Criteria.Circumstance;
      FirstAirQr.ParambyName('Incoterms').Value:= Criteria.Incoterms;
      if airSerial>0 then begin
        FirstAirQr.AddWhere('fa.serial_number = :AirSerial');
        FirstAirQr.ParamByName('AirSerial').Value:=AirSerial;
      end else begin
        FirstAirQr.AddWhere('fa.is_included_xml = ''N''  or fa.is_included_xml is null');
      end;

      FirstAirQr.Open;
      if FirstAirQr.IsEmpty then
        exit;

      MawbId:=FlightQr.FieldByName('Mawb').AsString;
      FlightName:=FlightQr.FieldByName('Flight_name').AsString;
      DateDepart:=FlightQr.FieldByName('date_depart').AsDateTime;

     CreateXMLNodeNew(FDoc,FatherNode,'SyntaxIdentifier','UNOC',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'SyntaxVersionNumber','3',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageSender','CY10016129G',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'SenderIdCodeQualifier','CY',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageRecipient','NECA.CY',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'RecipientIdentifCodeQualifier','CY',ntText);
     DString:=FormatDateTime('YYMMDD',now);
     CreateXMLNodeNew(FDoc,FatherNode,'DateOfPreparation',DString,ntText);
     DString:=FormatDateTime('HHMM',now);
     CreateXMLNodeNew(FDoc,FatherNode,'TimeOfPreparation',DString,ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'InterchangeControlReference','CY823a7ac010e2',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageIdentification','CY823a7ac010e2',ntText);
     CreateXMLNodeNew(FDoc,FatherNode,'MessageType','CC515A',ntText);

     //***Header***************************************
     createNodeHeader(FlightOutSerial,AirSerial,FDoc,FatherNode,Criteria);
     //*************************************************
     //Exporter/Consignor
     if CheckSameSender(FlightOutSerial,AirSerial) then begin
       x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515Exporter','',ntElement);
       //error
        TBLCreateXMLNode(FDoc,x2node,'TraderName','',FirstAirQr,'SENDER_NAME',ntText);
       dString:=Trim(FirstAirQr.fieldbyName('SENDER_ADDRESS_1').AsString)+','+Trim(FirstAirQr.fieldbyName('SENDER_ADDRESS_2').AsString)+','+Trim(FirstAirQr.fieldbyName('SENDER_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',FirstAirQr,'SENDER_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',FirstAirQr,'SENDER_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',FirstAirQr,'SENDER_COUNTRY_CODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);
       if FirstAirQr.FieldByName('SENDER_vat').AsString>'' then
         TblCreateXMLNode(FDoc,x2node,'TIN','',FirstAirQr,'SENDER_VAT',ntText);
     end;

     //*************************************************
     //Consignee
     if CheckSameConsignee(FlightOutSerial,AirSerial) then begin
       x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515Consignee','',ntElement);
       //error
        TBLCreateXMLNode(FDoc,x2node,'TraderName','',FirstAirQr,'CONSIGNEE_NAME',ntText);
       dString:=Trim(FirstAirQr.fieldbyName('CONSIGNEE_ADDRESS_1').AsString)+','+Trim(FirstAirQr.fieldbyName('CONSIGNEE_ADDRESS_2').AsString)+','+Trim(FirstAirQr.fieldbyName('CONSIGNEE_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',FirstAirQr,'CONSIGNEE_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',FirstAirQr,'CONSIGNEE_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',FirstAirQr,'CONSIGNEE_COUNTRY_CODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);

       if FirstAirQr.FieldByName('CONSIGNEE_VAT').AsString>'' then
        TblCreateXMLNode(FDoc,x2node,'TIN','',FirstAirQr,'CONSIGNEE_VAT',ntText);
     end;

     x2Node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515ExportCustomsOffice','',ntElement);
     CreateXMLNodeNew(FDoc,x2Node,'ReferenceNumber','CY000440',ntElement);

     x2Node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515ExitCustomsOffice','',ntElement);
     CreateXMLNodeNew(FDoc,x2Node,'ReferenceNumber','CY000440',ntElement);


     //***GoodsItems*******************************************
     result := CreateNodeAirwayBills(FlightOutSerial,AirSerial,Fdoc,FatherNode,Criteria);
     //** Itineraries******************************************
     CreateNodeFlightCountries(FlightOutSerial,Fdoc,FatherNode);

     //**** Declerant Trader
     DeclarantQr:=TksQuery.Create(cn,'select first 1 * from customer cu where cu.is_dhl = ''Y'' ');
     try
       DeclarantQr.Open;
       x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515DeclarantTrader','',ntElement);
       TBLCreateXMLNode(FDoc,x2node,'TraderName','',DeclarantQr,'NAME',ntText);
       dString:=Trim(DeclarantQr.fieldbyName('ADDRESS1').AsString)+','+Trim(DeclarantQr.fieldbyName('ADDRESS2').AsString)+','+Trim(DeclarantQr.fieldbyName('ADDRESS3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',DeclarantQr,'POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',DeclarantQr,'ADDRESS_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',DeclarantQr,'ADDRESS_COUNTRY_CODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);

       if DeclarantQr.FieldByName('VAT_ID').AsString>'' then
         TblCreateXMLNode(FDoc,x2node,'TIN','',DeclarantQr,'VAT_ID',ntText);

     finally
       DeclarantQr.Free;

     end;



      if (SameIncoterm OR true) then begin
        x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515TermsDelivery','',ntElement);
        TBLCreateXMLNode(FDoc,x2node,'IncotermCode','',FirstAirQr,'INCOTERMS',ntText);
//        CreateXMLNodeNew(FDoc,x2node,'ComplementaryCode','XXX',ntText);
        TBLCreateXMLNode(FDoc,x2node,'ComplementOfInfo','',FirstAirQr,'INCOTERMS',ntText);
        CreateXMLNodeNew(FDoc,x2node,'ComplementOfInfoLNG','EN',ntText);
      end;

     x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515DataTransaction','',ntElement);
     CreateXMLNodeNew(FDoc,x2node,'NatureOfTransactionCode','99',ntText);

     x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515StatusRepresentative','',ntElement);
     CreateXMLNodeNew(FDoc,x2node,'RepresentativeStatusCode','1',ntText);

      Flightqr.Close;
    finally
      Flightqr.Free;
      FirstAirQr.Free;
    end;

end;





function TX_CreateMultiHighXmlFRM.CreateNodeHeader( Const FlightOutSerial,AirSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
var
  Flightqr,TotalsQr:TksQuery;
  HeaderNode,x1Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
  CommonDeclarationType, CommonTypeOfDeclaration, CommonCirc, CommonIncoterm:String;
begin

  CommonDeclarationType := Criteria.DeclarationType;
  if CommonDeclarationType='' then
    CommonDeclarationType := GetTableDefaultValue('AUX_DECLARATION_TYPE');

  CommonTypeOfDeclaration:= Criteria.TypeOfDeclaration;
  if CommonTypeOfDeclaration='' then
    CommonTypeOfDeclaration := GetTableDefaultValue('AUX_TYPE_OF_DECLARATION');

  CommonCirc:= Criteria.Circumstance;
  if CommonCirc='' then
    CommonCirc := GetTableDefaultValue('AUX_SPECIFIC_CIRCUMSTANCE');

  CommonIncoterm:= Criteria.Circumstance;
   if CommonCirc='' then
    CommonCirc := 'XXX';


  val:=
  '   select'
  +'  fo.serial_number, fo.mawb, fo.Date_depart, ft.flight_name'
  +'   from flight_out fo'
  +'   left outer join flight_table ft on fo.fk_flight_table=ft.serial_number'
  +'   where fo.serial_number = :serial';
  FlightQr:=TksQuery.Create(cn,val);

//89
  if (airSerial=0) then begin

  val:=

    '   Select'
    +'    count(serial) as Cnt , sum(weight)as TotalWeight, sum(pieces) as TotalPieces from'
    +'    (select  first 89 it.serial_number as serial, it.weight as weight, it.pieces as pieces from'
    +'      flight_airwaybill fa join'
    +'      flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
    +'      where fa.fk_flight_out_serial= :flightSerial and '
    +'      (fa.is_included_xml = ''N''  or fa.is_included_xml is null) and '
    +'      fa.declaration_type = :decType and fa.type_of_declaration = :typeDec and fa.specific_circumstance = :circ and Fa.incoterms= :Incoterms'
    +'          order by fa.hawb_id'
    +'    )';

  end else begin
    val:=
    '   Select'
    +'    count(serial) as Cnt , sum(weight)as TotalWeight, sum(pieces) as TotalPieces from'
    +'    (select  first 89 it.serial_number as serial, it.weight as weight, it.pieces as pieces from'
    +'      flight_airwaybill fa join'
    +'      flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
    +'      where fa.fk_flight_out_serial= :flightSerial and '
    +'      fa.serial_number= :AirSerial and'
    +'      fa.declaration_type = :decType and fa.type_of_declaration = :typeDec and fa.specific_circumstance = :circ and fa.incoterms= :Incoterms'
    +'          order by fa.hawb_id'
    +'    )';

  end;


  TotalsQr:=TksQuery.Create(cn,val);
  try
      FlightQr.ParamByName('serial').Value:=FlightOutSerial;
      FlightQr.Open;
      if Flightqr.IsEmpty then
        exit;



      TotalsQr.ParambyName('FlightSerial').Value:= FlightOutSerial;
      TotalsQr.ParambyName('decType').Value:= Criteria.DeclarationType;
      TotalsQr.ParambyName('TypeDec').Value:= Criteria.TypeOfDeclaration;
      TotalsQr.ParambyName('Circ').Value:= Criteria.Circumstance;
      TotalsQr.ParambyName('Incoterms').Value:= Criteria.Incoterms;
      if AirSerial>0 then begin
        TotalsQr.ParambyName('AirSerial').Value:= AirSerial;
      end else begin
         //no airserial, since different SQL above
      end;

      TotalsQr.Open;

      if Totalsqr.IsEmpty then
        exit;

      MawbId:=FlightQr.FieldByName('Mawb').AsString;
      FlightName:=FlightQr.FieldByName('Flight_name').AsString;
      DateDepart:=FlightQr.FieldByName('date_depart').AsDateTime;

    //********************************************
     //Header515
     val:=MawbId+FormatDateTime('YYMMDDHHMMSS', now);
     x1node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515Header','',ntElement);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber',val,ntText);


     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclaration',CommonDeclarationType,ntText);

//     if CheckSameDestination(FlightOutSerial,AirSerial) then
//         TblCreateXMLNode(FDoc,HeaderNode,'CountryOfDestinationCode',qrAir,'CONSIGNEE_COUNTRY_CODE',ntText);


     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoodsCode','LCA',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoods','ARADIPPOU',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'AgreedLocationOfGoodsLNG','EN',ntText); //here

     CreateXMLNodeNew(FDoc,x1node,'CountryOfDispatchexportCode','CY',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'TransportModeAtBorder','4',ntText); //here


     DString:= flightName +' '+ FormatDateTime('dd/mm/yyy',DateDepart);
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransAtDeparture',DString,ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransAtDepartureLNG','EN',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransCrossBorder',DString,ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'IdMeansOfTransCrossBorderLNG','EN',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'NationOfMeansTransCrossBorder','BE',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'ContainerisedIndicator','0',ntText); //here
     CreateXMLNodeNew(FDoc,x1node,'ECSAccompanyingDocLangCode','EN',ntText); //here

     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfItems','',TotalsQr,'Cnt',ntText);
     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfPackages','',TotalsQr,'TOTALPIECES',ntText);
     TblCreateXMLNode(FDoc,x1node,'TotalGrossMass','',TotalsQr,'TOTALWEIGHT',ntText);


     DString:=FormatDateTime('YYYY-MM-DD"T00:00:00+03:00"',now);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationDate',DString,ntText);

     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlace','LARNACA',ntText);
     CreateXMLNodeNew(FDoc,x1node,'DeclarationPlaceLNG','EN',ntText);

     CreateXMLNodeNew(FDoc,x1node,'SpecificCircumstanceIndicator',CommonCirc,ntText);
     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclarationBox12',CommonTypeOfDeclaration,ntText);

    finally
      Flightqr.Free;
      TOtalsQr.Free;
    end;

end;



function TX_CreateMultiHighXmlFRM.CreateNodeAirwayBills( Const FlightSerial:Integer; AirSerial: Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):INteger;
var
  HeaderNode:IXMLNode;
  x2Node:IXMLNode;
  val,temp:String;
  addr:string;
  DString:String;
  CurrentAirSerial:Integer;
  qr:TksQuery;
  qrItem, qrAir: TksQuery;
  qrCert:TksQuery;
  ItemSerial:Integer;

   DefaultProcedureRequested:String;
   DefaultPreviousProcedure:String;
   DefaultKindOfPackages:String;
   DefaultDangerous:String;
   TempInt:Integer;
   Counter:integer;
   SameSender:Boolean;
   SameConsignee:Boolean;
begin

  Counter:=0;
  DefaultProcedureRequested:=GetTableDefaultValue('AUX_PROCEDURE_REQUEST');
  DefaultPreviousProcedure:=GetTableDefaultValue('AUX_PREVIOUS_PROCEDURE');
  DefaultKindOfPackages:=GetTableDefaultValue('AUX_KIND_OF_PACKAGES');
  DefaultDangerous:=GetTableDefaultValue('AUX_DANGEROUS_GOODS');

  //89

  //SQL will change below for single Air
  val:=
  '   Select first 89  fa.serial_number as AirSerial,'
  +'    it.* from'
  +'    flight_airwaybill fa join'
  +'    flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'    where fa.fk_flight_out_serial= :flightSerial'
  +'    and fa.declaration_type = :decType and fa.type_of_declaration = :typeDec and fa.specific_circumstance = :circ and fa.incoterms= :incoterms'
  +'    order by fa.hawb_id, sequence';
  qrItem:=TksQuery.Create(cn,Val);

  //I did not use a Join to avoid namespace collision between item and air
  val:='select * from flight_airwaybill fa where fa.serial_number= :airserial';
  qrAir:=TksQuery.Create(cn,val);

    try
      Counter:=0;
      qrItem.ParambyName('FlightSerial').Value:= FlightSerial;
      qrItem.ParambyName('decType').Value:= Criteria.DeclarationType;
      qrItem.ParambyName('TypeDec').Value:= Criteria.TypeOfDeclaration;
      qrItem.ParambyName('Circ').Value:= Criteria.Circumstance;
      qrItem.ParambyName('incoterms').Value:= Criteria.Incoterms;
      if airSerial>0 then begin
        qrItem.AddWhere('fa.serial_number = :AirSerial');
        qrItem.ParamByName('AirSerial').Value:=AirSerial;
      end else begin
        qrItem.AddWhere(' (fa.is_included_xml = ''N''  or fa.is_included_xml is null)');
      end;

//      Clipboard.AsText:=qrItem.FinalSQL;

        sameSender:=CheckSameSender(FLightSerial,AirSerial);
        SameConsignee:=CheckSameConsignee(FLightSerial,AirSerial);

      qrItem.Open;

      while (not qrItem.eof) do begin
       inc(Counter);
       CurrentAirSerial:=qrItem.FieldByName('AirSerial').AsInteger;
       itemSerial:=qrItem.FieldByName('serial_number').AsInteger;

       qrAir.Close;
       qrAir.ParamByName('airSerial').Value:=CurrentAirSerial;
       qrAIr.Open;

       HeaderNode :=CreateXMLNodeNew(FDoc,FatherNode,'Msg515GoodsItem','',ntElement);
 //       TblCreateXMLNode(FDoc,HeaderNode,'City','',qrItem,'HAWB_ID',ntText);

       TblCreateXMLNode(FDoc,HeaderNode,'ItemNumber','',qrItem,'SEQUENCE',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'GoodsDescription','',qrItem,'DESCRIPTION',ntText);
       CreateXMLNodeNew(FDoc,HeaderNode,'GoodsDescriptionLNG','EN',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'GrossMass','',qrItem,'WEIGHT',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'NetMass','',qrItem,'WEIGHT',ntText);

//      if CheckSameDestination(FlightSerial,AirSerial) then
             TblCreateXMLNode(FDoc,HeaderNode,'CountryOfDestinationCode','',qrAir,'CONSIGNEE_COUNTRY_CODE',ntText);

       Temp:=qrAir.FieldByName('Payment_method').AsString;
        If temp='A'       then
          DString:='Y'
        else  if temp='C' then
          Dstring:='D'
        else
          Dstring:='D';
       CreateXMLNodeNew(FDoc,HeaderNode,'TranspChargesMethodOfPayment',Temp,ntText);

       temp:=trim(qrItem.FieldByName('PROCEDURE_REQUESTED').AsString);
       If temp='' then  temp:= DefaultProcedureRequested;
       CreateXMLNodeNew(FDoc,HeaderNode,'ProcedureRequested',Temp,ntText);

       temp:=trim(qrItem.FieldByName('previous_procedure').AsString);
       If temp='' then  temp:= DefaultPreviousProcedure;
       CreateXMLNodeNew(FDoc,HeaderNode,'PreviousProcedure',Temp,ntText);

       TblCreateXMLNode(FDoc,HeaderNode,'StatisticalValueCurrency','',qrItem,'CURRENCY',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'StatisticalValueAmount','',qrItem,'AMOUNT',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'CountryOfOrigin','',qrItem,'COUNTRY_OF_ORIGIN',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'SupplementaryUnits','',qrItem,'PIECES',ntText);

       temp:=trim(qrItem.FieldByName('DANGEROUS_GOODS').AsString);
       If temp='' then  temp:= DefaultDangerous;
       CreateXMLNodeNew(FDoc,HeaderNode,'UNDangerousGoodsCode',Temp,ntText);



      ///***** Certificates
      val:='Select * from  FLIGHT_AIRWAYBILL_ITEM_CERT fc where fc.fk_flight_airwaybill_item= :ItemSerial';
      qrCert:=TksQuery.Create(cn,val);
      try
        qrCert.ParamByName('itemSerial').Value:= ItemSerial;
        qrCert.Open;
        while (not qrCert.Eof ) do begin
          x2Node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg515ProducedDocumentsCertif','',ntElement);
          TblCreateXMLNode(FDoc,x2Node,'DocumentType','',qrCert,'cert_code',ntText);
//          TblCreateXMLNode(FDoc,x2Node,'DocumentReference','',qrCert,'cert_value',ntText);
          temp:= FindCertValue( qrCert.FieldByName('serial_number').AsInteger,qrItem.FieldByName('serial_number').AsInteger);
          CreateXMLNodeNew(FDoc,x2node,'DocumentReference',temp,ntText);
          CreateXMLNodeNew(FDoc,x2node,'DocumentReferenceLNG','EN',ntText);
          qrCert.Next;
        end;
      finally
        qrCert.Free;
      end;


       ///////////////// Tariff

       x2Node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg515CodeCommodity','',ntElement);
       DString := StringReplace(QrItem.fieldByName('TARIFF_CODE').asString, ' ', '', [rfReplaceAll]); //Remove spaces

       CreateXMLNodeNew(FDoc,x2node,'CombinedNomenclature',copy(DString,1,8),ntText);
       CreateXMLNodeNew(FDoc,x2node,'TARICCode',copy(DString,8,2),ntText);
       CreateXMLNodeNew(FDoc,x2node,'TARICFirstAdditionalCode','0000',ntText);
       CreateXMLNodeNew(FDoc,x2node,'TARICSecondAdditionalCode','0000',ntText);
       /////////////////

//       <CountryOfOrigin>CN</CountryOfOrigin>  nEED COUNTRY ON ITEM

       //Consignor
       if (not SameSender) then begin

       x2node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg515ExporterTrader','',ntElement);
       TBLCreateXMLNode(FDoc,x2node,'TraderName','',qrAir,'SENDER_NAME',ntText);
       dString:=Trim(qrAir.fieldbyName('SENDER_ADDRESS_1').AsString)+','+Trim(qrAir.fieldbyName('SENDER_ADDRESS_2').AsString)+','+Trim(qrAir.fieldbyName('SENDER_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',qrAir,'SENDER_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',qrAir,'SENDER_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',qrAir,'SENDER_COUNTRY_CODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);

       if qrAir.FieldByName('SENDER_VAT').AsString>'' then
         TblCreateXMLNode(FDoc,x2node,'TIN','',qrAir,'SENDER_VAT',ntText);
       end;

       //Consignee
       if (not SameConsignee) then begin
       x2node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg515ConsigneeTrader','',ntElement);
       TblCreateXMLNode(FDoc,x2node,'TraderName','',qrAir,'CONSIGNEE_NAME',ntText);
       dString:=Trim(qrAir.fieldbyName('CONSIGNEE_ADDRESS_1').AsString)+','+Trim(qrAir.fieldbyName('CONSIGNEE_ADDRESS_2').AsString)+','+Trim(qrAir.fieldbyName('CONSIGNEE_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',qrAir,'CONSIGNEE_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',qrAir,'CONSIGNEE_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',qrAir,'CONSIGNEE_COUNTRY_cODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);

       if qrAir.FieldByName('consignee_VAT').AsString>'' then
         TblCreateXMLNode(FDoc,x2node,'TIN','',qrAir,'consigneee_VAT',ntText);

       end;

//////////packages
       x2Node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg515Packages','',ntElement);
       TblCreateXMLNode(FDoc,x2Node,'MarksNumbersOfPackages','',qrAir,'HAWB_ID',ntText);
       CreateXMLNodeNew(FDoc,x2node,'MarksNumbersOfPackagesLNG','EN',ntText);

       temp:=trim(qrItem.FieldByName('kind_of_packages').AsString);
       if temp='' then temp:=DefaultKindOfPackages;
       CreateXMLNodeNew(FDoc,x2node,'KindOfPackages',temp,ntText);

        tempInt:=qrItem.FieldByName('NUMBER_OF_PACKAGES').AsInteger;
        if TempInt=0 then
          tempInt:=1;
       CreateXMLNodeNew(FDoc,x2node,'NumberOfPackages',IntToStr(TempInt),ntText);

///////////////////////////////////////
       ksExecSQLVar(cn,'update flight_airwaybill  set is_included_xml= ''Y'' WHERE serial_number = :SerialNumber',[CurrentAirSerial]);
       qrItem.Next;
      end;
      result:= Counter;
    finally
      qrItem.Free;
      qrAIr.Open;
    end;

end;


function TX_CreateMultiHighXmlFRM.CreateNodeForItems( Const AirwaybillSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode,x2Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  qr:TksQuery;
begin

  HeaderNode :=CreateXMLNodeNew(FDoc,FatherNode,'HawbItems','',ntElement);
  Qr:=TksQuery.Create(cn,' select *  from FLIGHT_AIRWAYBILL_ITEM where fK_fa_serial= :Serial');
  try
    Qr.ParambyName('serial').Value:= AirwayBillSerial;
    Qr.Open;
    while(not Qr.Eof) do begin
     Val :=qr.FieldByName('SERIAL_NUMBER').AsString;

     HeaderNode :=CreateXMLNodeNew(FDoc,HeaderNode,'HawbItem','',ntElement);
     TblCreateXMLNode(FDoc,HeaderNode, 'Serial', '',qr, 'Serial_number',ntText);
     CreateXMLNodeNew(FDoc,HeaderNode,'itme','Ch1',ntText);
     result:= HeaderNode;
     qr.Next;
    end;
  finally
    qr.Free;
  end;



end;


function TX_CreateMultiHighXmlFRM.CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode,x2Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  qr:TksQuery;
begin

val:=
  ' select fo.serial_number, fo.fk_flight_table, fc.country_code from'
  +'  flight_out fo left outer join'
  +'  flight_out_country fc on fc.fk_flight_out=fo.serial_number'
  +'  where fo.serial_number= :serial'
  +'  order by fc.order_position';

 HeaderNode:=FatherNode;
// Qr:=TksQuery.Create(cn,' select * from Flight_airwaybill_country where FK_FLIGHT_AIRWAYBILL = :serial');
 Qr:=TksQuery.Create(cn,val);
  try
    Qr.ParambyName('serial').Value:= FlightOutSerial;
    Qr.Open;
    while (not qr.eof) do begin
      x2Node:=CreateXMLNodeNew(FDoc,FatherNOde,'Msg515Itinerary','',ntElement);
      TblCreateXMLNode(FDoc,x2Node, 'CountryOfRoutingCode', '',qr, 'Country_code',ntText);
      result:= HeaderNode;
      qr.next;
    end;
  finally
    qr.Free;
  end;

end;


function TX_CreateMultiHighXmlFRM.GetTableDefaultValue( Const TableName:String):String;
var
  qr:TksQuery;
  DefaultVal:String;
  str:string;
begin

  str:='select Key from '+ tableName + ' where is_default =''Y'' ';
  qr:=TksQuery.Create(cn, str);
  try
    qr.Open;
     DefaultVal :=qr.FieldByName('key').AsString;
     if DefaultVal='' then
      DefaultVal :='ENTER DEFAULT VALUE IN TABLE';
     result:=DefaultVal;
  finally
    qr.Free;
  end;

end;



function TX_CreateMultiHighXmlFRM.CheckSameSender( Const FlightSerial, AirSerial :Integer):Boolean;
var
  qr:TksQuery;
  DefaultVal:String;
  str1,str2,str3:string;
begin

  str1:=
' select count(*), sender_vat from'
  +'  ('
  +'   select first 89 fa.sender_vat from flight_airwaybill fa'
  +'   where fk_flight_out_serial= :flightSerial and'
  +'    (fa.is_included_xml = ''N''  or fa.is_included_xml is null)'
  +'   order by fa.hawb_id'
  +'   )group by sender_vat';

  str2:=
  ' select count(*), sender_vat from'
  +'  ('
  +'   select first 89 fa.sender_vat from flight_airwaybill fa'
  +'   where fk_flight_out_serial= :flightSerial and'
  +'    fa.serial_number= :airSerial'
  +'   order by fa.hawb_id'
  +'   )group by sender_vat';

  if AirSerial=0 then begin
    str3:=str1
  end else begin
    str3:=str2;
  end;

  qr:=TksQuery.Create(cn, str3);
  try

       qr.ParamByName('FLightSerial').Value:=FlightSerial;
      if AirSerial>0 then
        qr.ParamByName('AirSerial').Value := AirSerial;
      qr.Open;
      Clipboard.AsText:=qr.FinalSQL;
      result:= qr.RecordCount =1 ;
  finally
    qr.Free;
  end;

end;



function TX_CreateMultiHighXmlFRM.CheckSameConsignee( Const FlightSerial, AirSerial :Integer):Boolean;
var
  qr:TksQuery;
  DefaultVal:String;
  str1,str2,str3:string;
begin

  str1:=
' select count(*), consignee_vat, consignee_name, consignee_address_1 from'
  +'  ('
  +'   select first 89 fa.consignee_vat, fa.consignee_name, fa.consignee_address_1 from flight_airwaybill fa'
  +'   where fk_flight_out_serial= :flightSerial and'
  +'    (fa.is_included_xml = ''N''  or fa.is_included_xml is null)'
  +'   order by fa.hawb_id'
  +'   )group by consignee_vat, consignee_name, consignee_address_1';

  str2:=
  ' select count(*), consignee_vat,consignee_name, consignee_address_1 from'
  +'  ('
  +'   select first 89 fa.consignee_vat,consignee_name,consignee_address_1 from flight_airwaybill fa'
  +'   where fk_flight_out_serial= :flightSerial and'
  +'    fa.serial_number= :airSerial'
  +'   order by fa.hawb_id'
  +'   )group by consignee_vat, consignee_name, consignee_address_1';

  if AirSerial=0 then begin
    str3:=str1
  end else begin
    str3:=str2;
  end;

  qr:=TksQuery.Create(cn, str3);
  try
      qr.ParamByName('FLightSerial').Value:=FlightSerial;
      if AirSerial>0 then
        qr.ParamByName('AirSerial').Value := AirSerial;
      qr.Open;
      Clipboard.AsText:=qr.FinalSQL;
      result:= qr.RecordCount =1 ;
  finally
    qr.Free;
  end;

end;




function TX_CreateMultiHighXmlFRM.CheckSameDestination( Const FlightSerial, AirSerial :Integer):Boolean;
var
  qr:TksQuery;
  DefaultVal:String;
  str1,str2,str3:string;
begin

  str1:=
' select count(*), CONSIGNEE_COUNTRY_CODE from'
  +'  ('
  +'   select first 89 fa.CONSIGNEE_COUNTRY_CODE '
  +'   where fk_flight_out_serial= :flightSerial and'
  +'    (fa.is_included_xml = ''N''  or fa.is_included_xml is null)'
  +'   order by fa.hawb_id'
  +'   )group by sender_vat';

  str2:=
  ' select count(*), CONSIGNEE_COUNTRY_CODE from'
  +'  ('
  +'   select first 89 fa.CONSIGNEE_COUNTRY_CODE from flight_airwaybill fa'
  +'   where fk_flight_out_serial= :flightSerial and'
  +'    fa.serial_number= :airSerial'
  +'   order by fa.hawb_id'
  +'   )group by CONSIGNEE_COUNTRY_CODE';

  if AirSerial=0 then begin
    str3:=str1
  end else begin
    str3:=str2;
  end;

  qr:=TksQuery.Create(cn, str3);
  try

       qr.ParamByName('FLightSerial').Value:=FlightSerial;
      if AirSerial>0 then
        qr.ParamByName('AirSerial').Value := AirSerial;
      qr.Open;
      Clipboard.AsText:=qr.FinalSQL;
      result:= qr.RecordCount =1 ;
  finally
    qr.Free;
  end;

end;

function TX_CreateMultiHighXmlFRM.FindCertValue(Const CertSerial,ItemSerial:Integer):String;
var
  qr,tblQr:TksQuery;
  temp:String;
  tblName,tblField:String;
  SqlStr:String;
  AirSerial,FlightSerial,TableSerial:Integer;
begin
  qr:=TksQuery.Create(cn, 'select * from FLIGHT_AIRWAYBILL_ITEM_CERT where serial_number = :Serial');
  try
   qr.ParamByName('Serial').Value:=CertSerial;
   qr.Open;
   tblName:=qr.FieldByName('table_for_value').AsString;
   tblField:=qr.FieldByName('field_for_value').AsString;
   if qr.FieldByName('cert_type').Value <> 'T' then begin
      result:= qr.FieldByName('cert_value').AsString;
      ///  exit now
      exit;
   end;
  finally
    qr.Free;
  end;

  //find the serials of all related tables
  temp:=
          '      select'
          +'        fa.serial_number as AirSerial, fo.serial_number as FLightSerial  from'
          +'        flight_airwaybill_item fi join'
          +'        flight_airwaybill fa on fi.fk_fa_serial= fa.serial_number join'
          +'        flight_out fo on fo.serial_number=fa.fk_flight_out_serial'
          +'        where'
          +'            fi.serial_number = :itemSerial';

     tblQr:=TksQuery.Create(cn,temp);
      try
        tblQr.ParamByName('itemSerial').Value:=ItemSerial;
        tblQr.Open;
        AirSerial:=tblQR.FieldByName('AirSerial').AsInteger;
        FlightSerial:=tblQR.FieldByName('FlightSerial').AsInteger;
     finally
      tblQr.Free;
     end;


     if UpperCase(TblName)='FLIGHT_AIRWAYBILL_ITEM' then begin
        TableSerial:=itemSerial;
     end else if UpperCase(TblName)='FLIGHT_AIRWAYBILL' then begin
        TableSerial:=AirSerial;
     end else if UpperCase(TblName)='FLIGHT_OUT' then begin
        TableSerial:=FlightSerial;
     end else begin
      TableSerial:=0;
      result:= 'Table '+tblName+ ' NOT FOUND';
      ///  exit now
      exit;

     end;

    temp:=
  '   SELECT'
  +'      RDB$RELATION_FIELDS.RDB$FIELD_NAME as FieldName'
  +'    FROM'
  +'      RDB$RELATION_FIELDS'
  +'    WHERE'
  +'      RDB$RELATION_FIELDS.RDB$RELATION_NAME = UPPER(:TABLE_NAME)'
  +'      AND RDB$RELATION_FIELDS.RDB$FIELD_NAME = UPPER(:FIELD_NAME)';

  qr:=TksQuery.Create(cn,temp);
  try
    qr.ParamByName('TABLE_NAME').Value:=tblName;
    qr.ParamByName('FIELD_NAME').Value:= tblField;
    qr.Open;
    if qr.FieldByName('FieldName').AsString='' then begin
      result:= 'Field '+ tblField + ' NOT Found';
      ///  exit now
      exit;
    end;
  finally
      qr.Free;
  end;

    sqlStr:= 'Select ' + tblField + ' from '+tblName+' where serial_number= :serial';
    try
     tblQr:= TksQuery.Create(cn,sqlStr);
     tblQr.ParamByName('serial').Value:=TableSerial;
     tblQR.Open;
     result:= tblQr.FieldByName(tblField).AsString;

    finally
      tblQR.Free;
    end;


end;



end.
