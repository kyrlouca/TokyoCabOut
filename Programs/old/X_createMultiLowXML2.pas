//////////////////////
//**  Cannot create one file for all because of 99 air per file limit
//**  Need to group the air(items actually) and the solution is to mark each batch with a random number
//**
//**  LoopMultiXML    calls create until no more groups
//**    CreateFlightXML   -- Select all unflagged airs on the flight
//**      CreateXmlFileByGroup -- select  a group of airs (declarationType, TypeOfDeclaration, Circumstance,Incoterm)
//**          -- create the xml Doc
//**          -- Call CreateNodeOuter for the outer xml node
//**
//**
//** CreateNodeHeader  -- just the header - has the totals
//** CreateNodeAirwayBills --
//** CreateNodeFlightCountries -- itinerary with countries on the Flight
//** CreateNodeForItems ??
//** Remember that MAX airwaybills = 89 and affects grouping!!
//**
//**  mark the airwaybills to print (max 89) with XML_Random .
//** netxt batch will have a different XML_Random
//////////////////////

unit X_createMultiLowXML2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,system.dateUtils, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.adomxmldom, Xml.XMLDoc, vcl.wwbutton, Xml.Win.msxmldom, Data.DB, MemDS,
  DBAccess, IBC, RzLabel,clipbrd,Math;

type
  THeaderResult= record
    xmlRandom:Integer;
    RecordsUpdated:Integer;
  end;

  TPersonAddress=Record
   TraderName:String;
   StreetAndNumber:String;
   PostalCode:string;
   City:String;
   CountryCode:String;
   NADLNG:String;
  End;

  TCriteriaParams= record
    DeclarationType:String;
    TypeOfDeclaration:String;
    Circumstance:String;
    Incoterms:String;
  end;

  TX_CreateMultiLowNewXMLFrm = class(TForm)
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

  Function CreateXmlFileByGroup(Const FlightOutSerial,AirSerial:Integer;Criteria:TCriteriaParams):integer;
  function MarkSelectedAirwayBills(Const FlightSErial, AIrSerial:Integer; Criteria:TCriteriaParams):THeaderResult;

  function CreateNodeOuter( Const FlightOutSerial:Integer; XmlRandom:Integer;const Fdoc: IXMLDocument):Integer;
  function CreateMsgHeader615( Const FlightOutSerial:Integer;XmlRandom:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeAirwayBills( Const FlightSerial:Integer;XmlRandom:Integer;const Fdoc: IXMLDocument;FatherNode:IXMLNode):Integer;
  function CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;

  function CreateCustomerAddressNode( Const CustomerSerial:Integer; NodeName:string; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateConsignorAddressNode( Const FlightSerial, AirSerial, xmlRandom :Integer; NodeName:string; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateConsigneeAddressNode( Const FlightSerial, AirSerial, xmlRandom :Integer; NodeName:string; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;

    function GetTableDefaultValue( Const TableName:String):String;
    Function TestOne(Const HawbSerial:Integer):String;
    function FindCertValue(Const CertSerial,ItemSerial:Integer):String;

    function CheckSameSender( Const FlightSerial:Integer; XmlRandom:Integer):Boolean;
    function CheckSameConsignee( Const FlightSerial:Integer;XmlRandom:Integer):Boolean;
    function CheckSameDestination( Const FlightSerial:integer;XmlRandom:Integer):String;
    function CheckSamePaymentMethod( Const FlightSerial:Integer; XmlRandom:Integer):String;
    function ConvertPaymentMethod(const PaymentMethod:String):String;


    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;overload;
    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode; overload;
    Function  AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
    function CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
    function CreateXmlNodeNewDefault(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; DefaultValue:String; ElementType: TNodeType =ntElement):IXMLNode;

  function TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement; digits:integer=2):IXMLNode;



  public
    { Public declarations }
    IN_FlightSerial:Integer;

//    SameIncoterm:boolean;
  Function LoopMultiXML(Const FlightOutSerial:Integer):integer;
  Function CreateFlightXML(Const FlightOutSerial,AirSerial:Integer):integer;

  end;

var
  X_CreateMultiLowNewXMLFrm: TX_CreateMultiLowNewXMLFrm;

implementation

{$R *.dfm}

uses MainForm, GeneralParametersNew, G_KyrSQL, G_generalProcs;

procedure TX_CreateMultiLowNewXMLFrm.Button1Click(Sender: TObject);
begin

CreateFlightXML(IN_FlightSerial,0);

end;


Function TX_CreateMultiLowNewXMLFrm.TestOne(Const HawbSerial:Integer):String;
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

function TX_CreateMultiLowNewXMLFrm.CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
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

function TX_CreateMultiLowNewXMLFrm.CreateXmlNodeNewDefault(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; DefaultValue:String; ElementType: TNodeType =ntElement):IXMLNode;
Var
  HeaderNode:IXMLNode;
   CxFather:IXMLNode;
   TheElement:IXMLNode;
   TheTextElement:IXMLNode;
//   TheAttr:TDomAttr;
  val:String;
Begin

    HeaderNode:=ElementFather.AddChild(ElementName,-1);
    val:=Trim(ElementValue);
    if (val='')  then
      Val:=DefaultValue;
    HeaderNode.Text:=val;
    result:=HeaderNode;

End;


procedure TX_CreateMultiLowNewXMLFrm.FormCreate(Sender: TObject);
begin
  cn:= MainFormFRM.CabOutData;
end;

function TX_CreateMultiLowNewXMLFrm.TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement; digits:integer=2):IXMLNode;
Var
   CxFather:IXMLNode;
   TheElement:IXMLNode;
   TheTextElement:IXMLNode;
   MyValue:String;
//   TheAttr:TDomAttr;
Begin
//     TblCreateXMLNode(FDoc,x1node,'TotalNumberOfItems','',Dataset,'ITEMS_COUNT',ntText);

  If Dataset.FieldBYName(FieldName).DataType in [ftfloat,ftSingle] then begin
       MyValue:=gpFloatToStr(dataset.FieldBYName(FieldName).AsFloat,digits);
//        MyValue:=format('%.3f',[dataset.FieldBYName(FieldName).AsFloat]);
  end else begin
        MyValue:=Trim(dataset.FieldBYName(FieldName).AsString);
  end;
     //If MyValue='' then
        //MyValue:= ElementName;
     CreateXMLNodeNew(XMLDoc,ElementFather,ElementName,MyValue,ntText);

End;


Function TX_CreateMultiLowNewXMLFrm.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes['VALUE']:=NodeText;
end;

Function TX_CreateMultiLowNewXMLFrm.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes[AttributeName]:=AttributeText;
end;

Function TX_CreateMultiLowNewXMLFrm.AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  HeaderNode.Attributes[AttributeName]:=AttributeText;
  result:=HeaderNode;
end;


Function TX_CreateMultiLowNewXMLFrm.LoopMultiXML(Const FlightOutSerial:Integer):integer;
//since we can only have up to 100 (89 for safety) airs in each file we need to keep looping
// for the same Flight
var
count:Integer;
TotalCount:integer;
begin
  TotalCount:=0;
    repeat
      count:= CreateFlightXML(FlightOutSerial,0);
      TotalCount:=TotalCount+count;
    until (Count =0);
    result:=TotalCOunt;
//    showMessage('XML Create Finished. Number of Items:'+intTostr(TotalCount) );
end;


Function TX_CreateMultiLowNewXMLFrm.CreateFlightXML(Const FlightOutSerial,AIrSerial:Integer):integer;
//will create on file for each group of criteria
//for low we don't have criteria
var
  GroupQr:TksQuery;
  MawbId:String;
  FlightName:string;
  DefaultDir:String;
  val:String;
//  XMLTime:TDateTime;
  str:String;
  Criteria:TCriteriaParams;

begin
  //  grouping needed for low Not necessary
  //  still must get less than 99
  // indinvidual airwayBills in each group will be marked later in CreateXmlFileByGroup
  // Get specified single air OR the ones not marked (is_included_xml=null)
  str:=
  '     Select'
  +'      fa.fk_flight_out_Serial '
  +'     from'
  +'     flight_airwaybill fa'
  +'     where'
  +'      fa.fk_flight_out_serial= :FlightSerial and'
  +'      fa.value_type= ''L'' '
  +'    group by  fk_flight_out_serial' ;

   GroupQr:= TksQuery.Create(cn,str);
   if AirSerial>0 then begin
      GroupQr.AddWhere('fa.serial_number= :AirSerial');
      GroupQr.ParamByName('airSerial').value:=AirSerial;
   end   else begin
     GroupQr.AddWhere(' (fa.is_included_xml = ''N''  or fa.is_included_xml is null)');
   end;

   GroupQr.ParamByName('flightSerial').Value:=FLightOutSerial;
   GroupQr.Open;

    while not GroupQr.Eof do begin
//      Criteria.DeclarationType:= GroupQr.FieldByName('Declaration_type').AsString;
//      Criteria.TypeOfDeclaration:= GroupQr.FieldByName('Type_of_Declaration').AsString;
//      Criteria.Circumstance:= GroupQr.FieldByName('specific_circumstance').AsString;
//      Criteria.Incoterms:= GroupQr.FieldByName('Incoterms').AsString;

      result := CreateXmlFileByGroup(FlightOutSerial,AirSerial,criteria);

      GroupQr.Next;
    end;
//    ShowMessage('XML Files Created');


end;




Function TX_CreateMultiLowNewXMLFrm.CreateXmlFileByGroup(Const FlightOutSerial,AirSErial:Integer;Criteria:TCriteriaParams):integer;
//will create on file for each set of criteria
var

   GroupQr, Flightqr,FirstAirQr:TksQuery;
  MawbId:String;
  FlightName:string;
  DefaultDir:String;
  val:String;
  HeaderResult:THeaderResult;


   FDoc:IXMLDocument;
  TheRoot:IXMLNode;
//  HeaderNode:IXMLNode;
  strXMl:String;
  FileName:String;
  CountCreated:Integer;
  XmlRandom:Integer;
begin
  DefaultDir:= trim(GN_GetTheSystemParameter(cn, 'S01').P_String4);
   If DefaultDir='' then begin
      MessageDlg('Menu ->System->Params-> System Parameters. Then Add record with Code=S01 string_4 =Path', mtWarning, [mbOK], 0);
  end;


  FlightQr:=TksQuery.Create(cn,' select *  from Flight_out where serial_number= :Serial');
  try
    FlightQr.ParambyName('serial').Value:= FlightOutSerial;
    FlightQr.Open;
    MawbId:=FlightQr.FieldByName('Mawb').AsString;
  finally
    FlightQr.free;
  end;


  HEaderResult:=MarkSelectedAirwayBills(FlightOutSerial,AirSerial,Criteria);
  xmlRandom:=HEaderResult.xmlRandom;
  result:=HeaderResult.RecordsUpdated;

  if (result =0 ) then begin
    exit;
  end;

      FDoc:=XMLDocNew;
      FDoc.active:=false;
      Fdoc.XML.Text:='';

      FDoc.Active := True;
      FDoc.Version := '1.0';
      FDoc.Encoding := 'UTF-8';


     /////////////////////////////////////////////////////////////////////////
     CreateNodeOuter(FlightOutSerial,xmlRandom,Fdoc);
     /////////////////////////////////////////////////////////////////////////
      strXML := StringReplace(FDoc.XML.Text, ' xmlns=""', '', [rfReplaceAll]);
      FDoc := LoadXMLData(strXML);
      FileName:= DefaultDir+'\'+ 'Low_'+ MawbId+'_'+ FormatDateTime('yyyymmddhhmmss',now)+'_'+
      criteria.Incoterms+'_'+ criteria.DeclarationType+'_'+Criteria.TypeOfDeclaration+'_'+Criteria.Circumstance+'_'+'.xml';

      if Result>0 then begin
        FDoc.SaveToFile(FileName);
      end;


end;


function TX_CreateMultiLowNewXMLFrm.CreateNodeOuter( Const FlightOutSerial:Integer; XmlRandom:Integer; const Fdoc: IXMLDocument):integer;
//TODO CreateNodeOuter does not need Criteria
var
  Flightqr:TksQuery;
  DeclarantQr:TksQuery;
  FatherNode, HeaderNode,x1Node, x2Node:IXMLNode;
  DHlSerial:integer;

  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
  CountCreated:Integer;
  strLowSum:String;
  strFlight:String;
  PersonAddress:TPersonAddress;
  qr:TksQuery;
  temp:string;
begin

  FatherNode := FDoc.AddChild('CC615A');
  FatherNode.SetAttributeNS('xmlns', '', 'http://www.eurodyn.com');

  CreateXMLNodeNew(FDoc, FatherNode, 'SyntaxIdentifier', 'UNOC', ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'SyntaxVersionNumber', '3', ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'MessageSender', 'CY10016129G', ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'SenderIdCodeQualifier', 'CY', ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'MessageRecipient', 'NECA.CY', ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'RecipientIdentifCodeQualifier', 'CY', ntText);
  DString := FormatDateTime('YYMMDD', now);
  CreateXMLNodeNew(FDoc, FatherNode, 'DateOfPreparation', DString, ntText);
  DString := FormatDateTime('HHMM', now);
  CreateXMLNodeNew(FDoc, FatherNode, 'TimeOfPreparation', DString, ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'InterchangeControlReference', 'CY1acbae4fdb51', ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'MessageIdentification', 'CY1acbae4fdb51', ntText);
  CreateXMLNodeNew(FDoc, FatherNode, 'MessageType', 'CC615A', ntText);

  //Create header 616
  HeaderNode := CreateMsgHeader615(FlightOutSerial, XmlRandom, Fdoc, FatherNode);

  x2Node := CreateXMLNodeNew(FDoc, FatherNode, 'Msg615ExportCustomsOffice', '', ntElement);
  CreateXMLNodeNew(FDoc, x2Node, 'ReferenceNumber', 'CY000440', ntText);

  //Payment method
  temp := CheckSamePaymentMethod(FlightOutSerial, XMLRandom);
  if (temp > '') then
  begin
    CreateXMLNodeNew(FDoc, x1node, 'TranspChargesMethodOfPayment', Temp, ntText);
  end;

  //Create Airs
  CreateNodeAirwayBills(FlightOutSerial, XmlRandom, Fdoc, FatherNode);

  //Create Itinerary
  CreateNodeFlightCountries(FlightOutSerial, Fdoc, FatherNode);

  x2Node := CreateXMLNodeNew(FDoc, FatherNode, 'Msg615LodgementCustomsOffice', '', ntElement);
  CreateXMLNodeNew(FDoc, x2Node, 'ReferenceNumber', 'CY000440', ntText);

  qr := TksQuery.Create(cn, 'select code from customer where is_dhl= ''Y'' ');
  try
    qr.Open;
    dhlSerial := qr.FieldByName('code').AsInteger;
    CreateCustomerAddressNode(dhlSerial, 'Msg615LodgingSumDeclarationPer', Fdoc, FatherNode);
  finally
    qr.free;
  end;

  if CheckSameSender(FlightOutSerial, XmlRandom) then
  begin
    CreateConsignorAddressNode(FlightOutSerial, 0, XmlRandom, 'Msg615Consignor', Fdoc, FatherNode);
  end;

  if CheckSameConsignee(FlightOutSerial, XmlRandom) then
  begin
    CreateConsigneeAddressNode(FlightOutSerial, 0, XmlRandom, 'Msg615Consignee', Fdoc, FatherNode);
  end;
  result := 1;
end;




function TX_CreateMultiLowNewXMLFrm.CreateMsgHeader615( Const FlightOutSerial:Integer;XmlRandom:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  FlightQr,TotalsQr:TksQuery;
  HeaderNode,x1Node:IXMLNode;
  strFLight,str:String;
  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
  temp:string;
//  CommonDeclarationType, CommonTypeOfDeclaration, CommonCirc, CommonIncoterm:String;
begin

     //Header615

  strFLight:=
  '   select'
  +'  fo.serial_number, fo.mawb, fo.Date_depart, ft.flight_name'
  +'   from flight_out fo'
  +'   left outer join flight_table ft on fo.fk_flight_table=ft.serial_number'
  +'   where fo.serial_number >= :serial';

  str:=
  '   Select'
  +'    count(it.serial_number) as Cnt , sum(it.weight)as TotalWeight, sum(it.pieces) as TotalPieces from'
  +'       flight_airwaybill fa join'
  +'       flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'        where fa.fk_flight_out_serial= :flightSerial and'
  +'        fa.xml_random= :XmlRandom;';


  result:=nil;
  TotalsQr:=TksQuery.Create(cn,str);
  FLightQr:=TksQuery.Create(cn,strFLight);
  try

      FlightQr.ParambyName('serial').Value:= FlightOutSerial;
      flightQr.Open;
      if FlightQr.IsEmpty then
        exit;

     TotalsQr.ParambyName('FlightSerial').Value:= FlightOutSerial;
     TotalsQr.ParambyName('XmlRandom').Value:= XmlRandom;
     TotalsQr.Open;

     if Totalsqr.IsEmpty then
        exit;

     HeaderNode:=CreateXMLNodeNew(FDoc,FatherNode,'Msg615Header','',ntElement);

     val:=MawbId;
     CreateXMLNodeNew(FDoc,HeaderNode,'ReferenceNumber',val,ntText);

     TblCreateXMLNode(FDoc,HeaderNode,'TotalNumberOfItems','',TotalsQr,'Cnt',ntText);
     TblCreateXMLNode(FDoc,HeaderNode,'TotalNumberOfPackages','',TotalsQr,'TOTALPIECES',ntText);
     TblCreateXMLNode(FDoc,HeaderNode,'TotalGrossMass','',TotalsQr,'TOTALWEIGHT',ntText);

     CreateXMLNodeNew(FDoc,HeaderNode,'ArrivalAgreedLocationCode','LCA',ntText);
     DString:=FlightName+'-'+FormatDateTime('DD/MM/YYYY',DateDepart);
     CreateXMLNodeNew(FDoc,HeaderNode,'ArrivalAgreedLocOfGoods',DString,ntText); //here
     CreateXMLNodeNew(FDoc,HeaderNode,'ArrivalAgreedLocOfGoodsLNG','EN',ntText);

     DString:=FormatDateTime('YYYY-MM-DD"T00:00:00+03:00"',now);
     CreateXMLNodeNew(FDoc,HeaderNode,'DeclarationDate',DString,ntText);
     CreateXMLNodeNew(FDoc,HeaderNode,'DeclarationPlace','LARNACA',ntText);
     CreateXMLNodeNew(FDoc,HeaderNode,'DeclarationPlaceLNG','EN',ntText);

     CreateXMLNodeNew(FDoc,HeaderNode,'SpecificCircumstanceIndicator','A',ntText);


      result:=HeaderNode;
  finally
    TotalsQR.Free;
    FlightQr.Free;

  end;

end;

function TX_CreateMultiLowNewXMLFrm.CreateNodeAirwayBills( Const FlightSerial:Integer;XmlRandom:Integer;const Fdoc: IXMLDocument;FatherNode:IXMLNode):Integer;
var
  HeaderNode:IXMLNode;
  str:string;
  x2Node:IXMLNode;
  val,temp:String;
  addr:string;
  DString:String;
  AirSerial:Integer;
  qr, qr2: TksQuery;
  ItemSerial:Integer;
    i:Integer;
begin
//    HeaderNode:= CreateXmlNodeNew(Fdoc,FatherNode,'AirwayBills','');

  str :=
    ' select *  from flight_airwaybill fa where '
    + ' fa.fk_flight_out_serial = :flightSerial and '
    + ' fa.xml_random= :XmlRandom ';

  Qr := TksQuery.Create(cn, str);
  try
    i := 0;
    Qr.ParambyName('FLightserial').Value := FlightSerial;
    Qr.ParambyName('XmlRandom').Value := XmlRandom;
    Qr.Open;
    while (not qr.eof) do
    begin
      inc(i);
      airSerial := qr.FieldByName('Serial_number').AsInteger;
      HeaderNode := CreateXMLNodeNew(FDoc, FatherNode, 'Msg615GoodsItem', '', ntElement);

      CreateXMLNodeNew(FDoc, HeaderNode, 'ItemNumber', intToStr(i), ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'GoodsDescription', '', qr, 'DESCRIPTION', ntText);
      CreateXMLNodeNew(FDoc, HeaderNode, 'GoodsDescriptionLNG', 'EN', ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'GrossMass', '', qr, 'WEIGHT', ntText);

       if (CheckSamePaymentMethod(FlightSerial,XMLRandom)='') then begin
          Temp:= ConvertPaymentMethod( qr.FieldByName('Payment_method').AsString);
          CreateXMLNodeNew(FDoc,HeaderNode,'TranspChargesMethodOfPayment',Temp,ntText);
       end;


      TblCreateXMLNode(FDoc, HeaderNode, 'CommercialReferenceNumber', '', qr, 'HAWB_ID', ntText);
      CreateXMLNodeNew(FDoc, HeaderNode, 'UNDangerousGoodsCode', '1', ntText);

      x2Node := CreateXMLNodeNew(FDoc, HeaderNode, 'Msg615ProducedDocumentsCertif', Temp, ntText);
      CreateXMLNodeNew(FDoc, x2node, 'DocumentType', 'N741', ntText);
      TblCreateXMLNode(FDoc, x2node, 'CommercialReferenceNumber', '', qr, 'HAWB_ID', ntText);

       //Consignor
      if (not CheckSameSender(FlightSerial, XmlRandom)) then
      begin
        CreateConsignorAddressNode(FlightSerial, AirSerial, XmlRandom, 'Msg615ConsignorTrader', Fdoc, HEaderNode);
      end;

       //Consignee
      if (not CheckSameConsignee(FlightSerial, XmlRandom)) then
      begin
        CreateConsigneeAddressNode(FlightSerial, AIrserial, XmlRandom, 'Msg615ConsigneeTrader', Fdoc, HEaderNode);
      end;

      qr.Next;
    end;

//      result:= FatherNOde;
finally
  qr.Free;
end;

end;


function TX_CreateMultiLowNewXMLFrm.CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
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


function TX_CreateMultiLowNewXMLFrm.GetTableDefaultValue( Const TableName:String):String;
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


function TX_CreateMultiLowNewXMLFrm.CheckSamePaymentMethod( Const FlightSerial:Integer; XmlRandom:Integer):String;
var
  qr:TksQuery;
  DefaultVal:String;
  str1,str2,str3:string;
begin

  str1:=
'  select count(*), Payment_method from'
  +'   flight_airwaybill fa'
  +'     where'
  +'     fk_flight_out_serial= :flightSerial and'
  +'      fa.xml_random= :XmlRandom'
  +'      group by Payment_method' ;

  qr:=TksQuery.Create(cn, str1);
  try

      qr.ParamByName('FLightSerial').Value:=FlightSerial;
      qr.ParamByName('XmlRandom').Value := XmlRandom;
//      Clipboard.AsText:=qr.FinalSQL;
      qr.Open;

      result:='';
      if (qr.RecordCount=1) then
        result:=qr.FieldByName('Payment_method').AsString;

  finally
    qr.Free;
  end;

end;



function TX_CreateMultiLowNewXMLFrm.CheckSameSender( Const FlightSerial:Integer; XmlRandom:Integer):Boolean;
var
  qr:TksQuery;
  DefaultVal:String;
  str1,str2,str3:string;
begin

  str1:=
'  select count(*), sender_vat from'
  +'   flight_airwaybill fa'
  +'     where'
  +'     fk_flight_out_serial= :flightSerial and'
  +'      fa.xml_random= :XmlRandom'
  +'      group by Sender_vat , sender_name' ;

  qr:=TksQuery.Create(cn, str1);
  try

      qr.ParamByName('FLightSerial').Value:=FlightSerial;
      qr.ParamByName('XmlRandom').Value := XmlRandom;
//      Clipboard.AsText:=qr.FinalSQL;
      qr.Open;
      result:= qr.RecordCount =1 ;
  finally
    qr.Free;
  end;

end;



function TX_CreateMultiLowNewXMLFrm.CheckSameConsignee( Const FlightSerial:Integer;XmlRandom:Integer):Boolean;
var
  qr:TksQuery;
  DefaultVal:String;
  str1:string;
begin

str1:=
' select count(*), consignee_vat, consignee_name, consignee_address_1 from'
  +'   flight_airwaybill fa'
  +'     where'
  +'     fk_flight_out_serial= :flightSerial and'
  +'      fa.xml_Random= :xmlRandom'
  +'   group by consignee_vat, consignee_name, consignee_address_1';


  qr:=TksQuery.Create(cn, str1);
  try
      qr.ParamByName('FLightSerial').Value:=FlightSerial;
      qr.ParamByName('xmlRandom').Value := XmlRandom;
      qr.Open;
//      Clipboard.AsText:=qr.FinalSQL;
      result:= qr.RecordCount =1 ;
  finally
    qr.Free;
  end;

end;




function TX_CreateMultiLowNewXMLFrm.CheckSameDestination( Const FlightSerial:integer;XmlRandom:Integer):String;
var
  qr:TksQuery;
  DefaultVal:String;
  str1,str2,str3:string;
begin

  str1:=
'  select count(*), CONSIGNEE_COUNTRY_CODE from'
  +'   flight_airwaybill fa'
  +'     where'
  +'     fk_flight_out_serial= :flightSerial and'
  +'      fa.xml_Random= :xmlRandom'
  +'      group by CONSIGNEE_COUNTRY_CODE' ;


  qr:=TksQuery.Create(cn, str1);
  try

      qr.ParamByName('FLightSerial').Value:=FlightSerial;
      qr.ParamByName('xmlRandom').Value := xmlRandom;
      qr.Open;
//      Clipboard.AsText:=qr.FinalSQL;
      if (qr.RecordCount=1) then
        result:=qr.FieldByName('CONSIGNEE_COUNTRY_CODE').AsString
      else
        result:='';

  finally
    qr.Free;
  end;

end;


function TX_CreateMultiLowNewXMLFrm.FindCertValue(Const CertSerial,ItemSerial:Integer):String;
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



function TX_CreateMultiLowNewXMLFrm.MarkSelectedAirwayBills(Const FlightSErial, AIrSerial:Integer; Criteria:TCriteriaParams):THeaderResult;
var
  sqlStr, str1,str2,str3:String;
  qr:TksQuery;
  cnt:Integer;
  xmlRandom:Integer;
  tempQr:TksQuery;
begin
//TODO *** check if the number of ITEMS is greater than 99 and do NOTHING
// let the user know that must take out one or more items.

  str1:=
  '     update  flight_airwaybill outfa'
  +'      set outfa.xml_Random = :XmlRandom , '
  +'      outfa.is_included_xml = ''Y'' '
  +'    where  outfa.serial_number in  ('
  +'      select first 10 fa.serial_number from'
  +'         flight_airwaybill fa left outer join'
  +'         flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'      where fa.fk_flight_out_serial= :flightSerial and'
  +'         value_type= ''L'' and '
  +'         (fa.is_included_xml = ''N''  or fa.is_included_xml is null) '
  +'      order by fa.hawb_id'
  +')';

str2:=
'   update flight_airwaybill outfa'
  +'    set outfa.xml_random = :XmlRandom ,'
  +'        fa.is_included_xml = ''Y'' where   '
  +'   outfa.serial_number= :AirSerial';


    xmlRandom:= RandomRAnge(1,10000000);

    if AIrSerial>0 then    begin
      cnt:=ksExecSQLVar(cn,str2,[XmlRandom,airSerial]);
    end else begin
        cnt:=ksExecSQLVar(cn,str1,[XmlRandom,FlightSerial]);
    end;

    if cnt=0 then begin
      result.xmlRandom:= 0;
      result.RecordsUpdated:=0;
    end else begin
      result.xmlRandom:=xmlRandom;
      result.RecordsUpdated:=cnt;
    end;

end;

function TX_CreateMultiLowNewXMLFrm.ConvertPaymentMethod(const PaymentMethod:String):String;
var
  qr:TksQuery;
  DefaultVal:String;
  str1:string;
begin

str1:=
' select xml_code from '
  +'   payment_method fa'
  +'     where'
  +'   the_key= :key ';

  qr:=TksQuery.Create(cn, str1);
  try
      qr.ParamByName('key').Value:= PaymentMethod;
      qr.Open;
      result:= qr.FieldByName('XML_Code').AsString;
  finally
    qr.Free;
  end;
end;



function TX_CreateMultiLowNewXMLFrm.CreateCustomerAddressNode( Const CustomerSerial:Integer; NodeName:string; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode,x2Node:IXMLNode;
  str:string   ;
  dString:string;
    qr:TksQuery;

 begin
str:=
' select * from '
  +'   customer '
  +'     where'
  +'   code = :serial ';

  qr:=TksQuery.Create(cn, str);
  try
    qr.ParamByName('serial').Value := customerSerial;
    qr.Open;
    result:=nil;
    if (not qr.IsEmpty) then begin
      HeaderNode := CreateXMLNodeNew(FDoc, FatherNode, NodeName, '', ntElement);
      CreateXMLNodeNew(FDoc, HeaderNode, 'TraderName',qr.FieldByName('Name').AsString, ntText);
      dString := Trim(qr.fieldbyName('ADDRESS1').AsString) + ',' +
        Trim(qr.fieldbyName('ADDRESS2').AsString) + ',' +
        Trim(qr.fieldbyName('ADDRESS3').AsString);

      CreateXMLNodeNew(FDoc, HeaderNode, 'StreetAndNumber', dString, ntText);
      CreateXMLNodeNew(FDoc, HeaderNode, 'PostalCode', qr.FieldByName('Name').AsString, ntText);
      CreateXMLNodeNew(FDoc, HeaderNode, 'City',     qr.FieldByName('ADDRESS_CITY').AsString, ntText);      CreateXMLNodeNew(FDoc, HeaderNode, 'CountryCode',        qr.FieldByName('ADDRESS_COUNTRY_CODE').AsString, ntText);
      CreateXMLNodeNew(FDoc, HeaderNode, 'NADLNG', 'EN', ntText);
      result := HeaderNode;

    end;

  finally
    qr.Free;
  end;
end;


function TX_CreateMultiLowNewXMLFrm.CreateConsignorAddressNode( Const FlightSerial, AirSerial, xmlRandom :Integer; NodeName:string; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode,x2Node:IXMLNode;
  strFirst:string;
  strair:string;
  str,dString:string;
  Qr:TksQuery;

begin


  //get the flight details of the first airbill for the header since they are all the same
  //for single air change the SQL below
  strFirst :=
    ' select first 1 * from flight_airwaybill fa where '
    + ' fa.fk_flight_out_serial = :flightSerial and '
    + ' fa.xml_random= :XmlRandom ';

  strAir :=
    ' select * from flight_airwaybill fa where '
    + ' fa.serial_number = :AirSerial and '
    + ' fa.xml_random= :XmlRandom ';

  if (AirSerial > 0) then
    str := strAir
  else
    str := StrFirst;

  QR := TksQuery.Create(cn, str);
  try
    if not( qr.FindParam('FlightSerial')=nil) then begin
      qr.ParamByName('FlightSerial').Value := FlightSerial;
    end;
    if not( qr.FindParam('AirSerial')=nil) then begin
      qr.ParamByName('AirSerial').Value := AirSerial;
    end;
    if not (qr.FindParam('XmlRandom')=nil) then begin
      qr.ParamByName('XmlRandom').Value := XmlRandom;
    end;


    qr.Open;
    result := nil;
   if (not qr.IsEmpty) then
    begin
      HeaderNode := CreateXMLNodeNew(FDoc, FatherNode, NodeName, '', ntElement);
      TBLCreateXMLNode(FDoc, HeaderNode, 'TraderName', '', Qr, 'SENDER_NAME', ntText);
      dString := Trim(qr.fieldbyName('SENDER_ADDRESS_1').AsString) + ',' + Trim(qr.fieldbyName('SENDER_ADDRESS_2').AsString) + ',' + Trim(qr.fieldbyName('SENDER_ADDRESS_3').AsString);
      dString := Copy(dString, 1, 34);
      CreateXMLNodeNew(FDoc, HeaderNode, 'StreetAndNumber', dString, ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'PostalCode', '', qr, 'SENDER_POST_CODE', ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'City', '', qr, 'SENDER_CITY', ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'CountryCode', '', qr, 'SENDER_COUNTRY_CODE', ntText);
      CreateXMLNodeNew(FDoc, HeaderNode, 'NADLNG', 'EN', ntText);
      if qr.FieldByName('SENDER_vat').AsString > '' then
        TblCreateXMLNode(FDoc, HeaderNode, 'TIN', '', qr, 'SENDER_VAT', ntText);
      result := HeaderNode;

    end;

  finally
    qr.Free;
  end;


end;


function TX_CreateMultiLowNewXMLFrm.CreateConsigneeAddressNode( Const FlightSerial, AirSerial, xmlRandom :Integer; NodeName:string; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  HeaderNode,x2Node:IXMLNode;
  strFirst:string;
  strair:string;
  str,dString:string;
  Qr:TksQuery;

begin


  //get the flight details of the first airbill for the header since they are all the same
  //for single air change the SQL below
  strFirst :=
    ' select first 1 * from flight_airwaybill fa where '
    + ' fa.fk_flight_out_serial = :flightSerial and '
    + ' fa.xml_random= :XmlRandom ';

  strAir :=
    ' select * from flight_airwaybill fa where '
    + ' fa.serial_number = :AirSerial and '
    + ' fa.xml_random= :XmlRandom ';

  if (AirSerial > 0) then
    str := strAir
  else
    str := StrFirst;

  QR := TksQuery.Create(cn, str);
  try
    if not (qr.FindParam('FlightSerial') = nil) then
    begin
      qr.ParamByName('FlightSerial').Value := FlightSerial;
    end;
    if not (qr.FindParam('AirSerial') = nil) then
    begin
      qr.ParamByName('AirSerial').Value := AirSerial;
    end;
    if not (qr.FindParam('XmlRandom') = nil) then
    begin
      qr.ParamByName('XmlRandom').Value := XmlRandom;
    end;

    qr.Open;
    result := nil;
    if (not qr.IsEmpty) then

    begin
      HeaderNode := CreateXMLNodeNew(FDoc, FatherNode, NodeName, '', ntElement);

      TblCreateXMLNode(FDoc, HeaderNode, 'TraderName', '', qr, 'CONSIGNEE_NAME', ntText);
      dString := Trim(qr.fieldbyName('CONSIGNEE_ADDRESS_1').AsString) + ',' + Trim(qr.fieldbyName('CONSIGNEE_ADDRESS_2').AsString) + ',' + Trim(qr.fieldbyName('CONSIGNEE_ADDRESS_3').AsString);
      dString := Copy(dString, 1, 34);
      CreateXMLNodeNew(FDoc, HeaderNode, 'StreetAndNumber', dString, ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'PostalCode', '', qr, 'CONSIGNEE_POST_CODE', ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'City', '', qr, 'CONSIGNEE_CITY', ntText);
      TblCreateXMLNode(FDoc, HeaderNode, 'CountryCode', '', qr, 'CONSIGNEE_COUNTRY_cODE', ntText);
      CreateXMLNodeNew(FDoc, HeaderNode, 'NADLNG', 'EN', ntText);
      result := HeaderNode;

    end;

  finally
    qr.Free;
  end;


end;

end.
