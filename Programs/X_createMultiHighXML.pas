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

unit X_createMultiHighXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,system.dateUtils, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.adomxmldom, Xml.XMLDoc, vcl.wwbutton, Xml.Win.msxmldom, Data.DB, MemDS,
  DBAccess, IBC, RzLabel,clipbrd,Math;

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


    Function CreateXmlFileByGroup(Const FlightOutSerial,AirSerial:Integer;Criteria:TCriteriaParams):integer;

    function GetTableDefaultValue( Const TableName:String):String;
    Function TestOne(Const HawbSerial:Integer):String;
    function FindCertValue(Const CertSerial,ItemSerial:Integer):String;
    function MarkSelectedAirwayBills(Const FlightSErial, AIrSerial:Integer; Criteria:TCriteriaParams):Integer;


    function CheckSameSender( Const FlightSerial:Integer; XmlRandom:Integer):Boolean;
    function CheckSameConsignee( Const FlightSerial:Integer;XmlRandom:Integer):Boolean;
    function CheckSameDestination( Const FlightSerial:integer;XmlRandom:Integer):String;
//    function CheckSameIncoterm( Const FlightSerial:integer;XmlRandom:Integer):Boolean;


    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;overload;
    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode; overload;
    Function  AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
    function CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
    function CreateXmlNodeNewDefault(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; DefaultValue:String; ElementType: TNodeType =ntElement):IXMLNode;
    function TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement):IXMLNode;


  function CreateNodeOuter( Const FlightOutSerial:Integer; XmlRandom:Integer;Criteria:TCriteriaParams;const Fdoc: IXMLDocument;FatherNode:IXMLNode):Integer;
  function CreateNodeHeader( Const FlightOutSerial:Integer;XmlRandom:Integer;criteria:TCriteriaParams; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeAirwayBills( Const FlightSerial:Integer;XmlRandom:Integer;const Fdoc: IXMLDocument;FatherNode:IXMLNode):Integer;
  function CreateNodeForItems( Const AirwaybillSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;


  public
    { Public declarations }
    IN_FlightSerial:Integer;

//    SameIncoterm:boolean;
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

function TX_CreateMultiHighXmlFRM.CreateXmlNodeNewDefault(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; DefaultValue:String; ElementType: TNodeType =ntElement):IXMLNode;
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


Function TX_CreateMultiHighXmlFRM.CreateFlightXML(Const FlightOutSerial,AIrSerial:Integer):integer;
//will create on file for each group of criteria
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
  // group  unprinted Airs (marked) grouped by DeclationType, TypeOfDeclaration, Specs,Incoterms
  // indinvidual airwayBills in each group will be marked later in CreateXmlFileByGroup
  // Get specified single air OR the ones not marked (is_included_xml=null)
  str:=
  '     Select'
  +'      fa.declaration_type, fa.type_of_declaration, fa.specific_circumstance, fa.incoterms'
  +'     from'
  +'     flight_airwaybill fa'
  +'     where'
  +'      fa.fk_flight_out_serial= :FlightSerial and'
  +'      fa.value_type= ''H'' '
  +'    group by     fa.declaration_type, fa.type_of_declaration, fa.specific_circumstance, fa.incoterms';

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
      Criteria.DeclarationType:= GroupQr.FieldByName('Declaration_type').AsString;
      Criteria.TypeOfDeclaration:= GroupQr.FieldByName('Type_of_Declaration').AsString;
      Criteria.Circumstance:= GroupQr.FieldByName('specific_circumstance').AsString;
      Criteria.Incoterms:= GroupQr.FieldByName('Incoterms').AsString;

      result := CreateXmlFileByGroup(FlightOutSerial,AirSerial,criteria);

      GroupQr.Next;
    end;
//    ShowMessage('XML Files Created');


end;




Function TX_CreateMultiHighXmlFRM.CreateXmlFileByGroup(Const FlightOutSerial,AirSErial:Integer;Criteria:TCriteriaParams):integer;
//will create on file for each set of criteria
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


  xmlRandom:= MarkSelectedAirwayBills(FlightOutSerial,AirSerial,Criteria);

  if (XmlRandom =0 ) then begin
    result:=0;
    exit;
  end;

      FDoc:=XMLDocNew;
      FDoc.active:=false;
      Fdoc.XML.Text:='';

      FDoc.Active := True;
      FDoc.Version := '1.0';
      FDoc.Encoding := 'UTF-8';

      TheRoot := FDoc.AddChild('CC515A');
      TheRoot.SetAttributeNS('xmlns', '', 'http://www.eurodyn.com' );
//      TBLCreateXMLNode(FDoc,TheRoot,'Declaration','',GroupQr,'DECLARATION_TYPE',ntText);

     /////////////////////////////////////////////////////////////////////////
       result := CreateNodeOuter(FlightOutSerial,xmlRandom,Criteria,Fdoc,TheRoot);
     /////////////////////////////////////////////////////////////////////////
      strXML := StringReplace(FDoc.XML.Text, ' xmlns=""', '', [rfReplaceAll]);
      FDoc := LoadXMLData(strXML);
      FileName:= DefaultDir+'\'+ MawbId+'_'+ FormatDateTime('yyyymmddhhmmss',now)+'_'+
      criteria.Incoterms+'_'+ criteria.DeclarationType+'_'+Criteria.TypeOfDeclaration+'_'+Criteria.Circumstance+'_'+'.xml';

      if Result>0 then begin
        FDoc.SaveToFile(FileName);
      end;


end;



//function TX_CreateMultiHighXmlFRM.CreateNodeOuter( Const FlightOutSerial:Integer; AirSerial:integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):Integer;
function TX_CreateMultiHighXmlFRM.CreateNodeOuter( Const FlightOutSerial:Integer; XmlRandom:Integer;criteria:TCriteriaParams;const Fdoc: IXMLDocument;FatherNode:IXMLNode):Integer;
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
  +' fa.xml_random= :XmlRandom ';
  FirstAirQR:= TksQuery.Create(cn,val);

  try
      FlightQr.ParambyName('serial').Value:= FlightOutSerial;
      FlightQr.Open;
      if Flightqr.IsEmpty then
        exit;

      FirstAirQr.ParambyName('FlightSerial').Value:= FlightOutSerial;
      FirstAirQr.ParambyName('xmlRandom').Value:= XmlRandom;

      FirstAirQr.Open;
      //copy to clipboard for debugging
//      Clipboard.AsText:=FirstAirQR.FinalSQL;
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
     createNodeHeader(FlightOutSerial,XmlRandom,criteria, FDoc,FatherNode);
     //*************************************************
     //Exporter/Consignor
     if CheckSameSender(FlightOutSerial,XmlRandom) then begin
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
     if CheckSameConsignee(FlightOutSerial,XmlRandom) then begin
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
     result := CreateNodeAirwayBills(FlightOutSerial,XmlRandom,Fdoc,FatherNode);
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



        x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515TermsDelivery','',ntElement);
//      TBLCreateXMLNode(FDoc,x2node,'IncotermCode','',FirstAirQr,'INCOTERMS',ntText);
        CreateXmlNodeNewDefault(FDoc,x2Node,'IncotermCode',criteria.Incoterms,'XXX',ntText);
        TBLCreateXMLNode(FDoc,x2node,'ComplementOfInfo','',FirstAirQr,'INCOTERMS',ntText);
        CreateXMLNodeNew(FDoc,x2node,'ComplementOfInfoLNG','EN',ntText);

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




function TX_CreateMultiHighXmlFRM.CreateNodeHeader( Const FlightOutSerial:Integer;XmlRandom:Integer;criteria:TCriteriaParams; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
var
  Flightqr,TotalsQr:TksQuery;
  HeaderNode,x1Node:IXMLNode;
  str:String;
  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
//  CommonDeclarationType, CommonTypeOfDeclaration, CommonCirc, CommonIncoterm:String;
begin

  str:=
  '   select'
  +'  fo.serial_number, fo.mawb, fo.Date_depart, ft.flight_name'
  +'   from flight_out fo'
  +'   left outer join flight_table ft on fo.fk_flight_table=ft.serial_number'
  +'   where fo.serial_number = :serial';
  FlightQr:=TksQuery.Create(cn,str);

//89
str:=
  '   Select'
  +'    count(it.serial_number) as Cnt , sum(it.weight)as TotalWeight, sum(it.pieces) as TotalPieces from'
  +'       flight_airwaybill fa join'
  +'       flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'        where fa.fk_flight_out_serial= :flightSerial and'
  +'        fa.xml_random= :XmlRandom;';


  TotalsQr:=TksQuery.Create(cn,str);
  try
      FlightQr.ParamByName('serial').Value:=FlightOutSerial;
      FlightQr.Open;
      if Flightqr.IsEmpty then
        exit;


      TotalsQr.ParambyName('FlightSerial').Value:= FlightOutSerial;
      TotalsQr.ParambyName('XmlRandom').Value:= XmlRandom;
      TotalsQr.Open;

      if Totalsqr.IsEmpty then
        exit;

      MawbId:=FlightQr.FieldByName('Mawb').AsString;
      FlightName:=FlightQr.FieldByName('Flight_name').AsString;
      DateDepart:=FlightQr.FieldByName('date_depart').AsDateTime;

    //********************************************
     //Header515
     x1node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515Header','',ntElement);

     val:=MawbId+FormatDateTime('YYMMDDHHMMSS', now);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber',val,ntText);
     CreateXmlNodeNewDefault(FDoc,x1node,'TypeOfDeclaration',Criteria.DeclarationType,'XXX',ntText);

     val:=CheckSameDestination(FlightOutSerial,XmlRandom);
     if (val>'') then
       CreateXmlNodeNewDefault(FDoc,x1node,'CountryOfDestinationCode',val,'XXX',ntText);
//     TblCreateXMLNode(FDoc,xlNode,'CountryOfDestinationCode',,'CONSIGNEE_COUNTRY_CODE',ntText);


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

     CreateXmlNodeNewDefault(FDoc,x1node,'SpecificCircumstanceIndicator',criteria.Circumstance,'XXX',ntText);
     CreateXmlNodeNewDefault(FDoc,x1node,'TypeOfDeclarationBox12',criteria.TypeOfDeclaration,'XXX',ntText);

    finally
      Flightqr.Free;
      TOtalsQr.Free;
    end;

end;



function TX_CreateMultiHighXmlFRM.CreateNodeAirwayBills( Const FlightSerial:Integer;XmlRandom:Integer;const Fdoc: IXMLDocument;FatherNode:IXMLNode):Integer;

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


  //SQL will change below for single Air
  val:=
  '   Select  '
  +'    fa.serial_number as AirSerial, it.* from'
  +'    flight_airwaybill fa join'
  +'    flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'    where '
  +'     fa.fk_flight_out_serial= :flightSerial and'
  +'     fa.xml_random= :XmlRandom'
  +'    order by fa.hawb_id, sequence';
  qrItem:=TksQuery.Create(cn,Val);

  //I did not use a Join to avoid namespace collision between item and air
  val:='select * from flight_airwaybill fa where fa.serial_number= :airserial';
  qrAir:=TksQuery.Create(cn,val);

    try
      Counter:=0;
      qrItem.ParambyName('FlightSerial').Value:= FlightSerial;
      qrItem.ParambyName('XmlRandom').Value:= XmlRandom;
//      Clipboard.AsText:=qrItem.FinalSQL;

        sameSender:=CheckSameSender(FLightSerial,XmlRandom);
        SameConsignee:=CheckSameConsignee(FLightSerial,xmlRandom);

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


        if CheckSameDestination(FlightSerial,XmlRandom)='' then
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



function TX_CreateMultiHighXmlFRM.CheckSameSender( Const FlightSerial:Integer; XmlRandom:Integer):Boolean;
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
  +'      group by Sender_vat' ;

  qr:=TksQuery.Create(cn, str1);
  try

      qr.ParamByName('FLightSerial').Value:=FlightSerial;
      qr.ParamByName('XmlRandom').Value := XmlRandom;
      Clipboard.AsText:=qr.FinalSQL;
      qr.Open;
      result:= qr.RecordCount =1 ;
  finally
    qr.Free;
  end;

end;



function TX_CreateMultiHighXmlFRM.CheckSameConsignee( Const FlightSerial:Integer;XmlRandom:Integer):Boolean;
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
      Clipboard.AsText:=qr.FinalSQL;
      result:= qr.RecordCount =1 ;
  finally
    qr.Free;
  end;

end;




function TX_CreateMultiHighXmlFRM.CheckSameDestination( Const FlightSerial:integer;XmlRandom:Integer):String;
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
      Clipboard.AsText:=qr.FinalSQL;
      if (qr.RecordCount=1) then
        result:=qr.FieldByName('CONSIGNEE_COUNTRY_CODE').AsString
      else
        result:='';

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



function TX_CreateMultiHighXmlFRM.MarkSelectedAirwayBills(Const FlightSErial, AIrSerial:Integer; Criteria:TCriteriaParams):Integer;
var
  sqlStr, str1,str2,str3:String;
  qr:TksQuery;
  cnt:Integer;
  xmlRandom:Integer;
  tempQr:TksQuery;
begin
  str1:=
  '     update  flight_airwaybill outfa'
  +'      set outfa.xml_Random = :XmlRandom'
  +'    where  outfa.serial_number in  ('
  +'      select first 2 fa.serial_number from'
  +'         flight_airwaybill fa left outer join'
  +'         flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'      where fa.fk_flight_out_serial= :flightSerial and'
  +'         value_type= ''H'' and'
  +'         (fa.is_included_xml = ''N''  or fa.is_included_xml is null) and'
  +'         fa.declaration_type = :decType and fa.type_of_declaration = :typeDec and'
  +'         fa.specific_circumstance = :circ and Fa.incoterms= :Incoterms'
  +'      order by fa.hawb_id'
  +')';

str2:=
'   update flight_airwaybill outfa'
  +'         set outfa.xml_random = :XmlRandom'
  +'    where outfa.serial_number= :AirSerial';

str3:=
  'update flight_airwaybill fa '
  +'set fa.is_included_xml = ''Y'' where  '
  +'fa.fk_flight_out_serial = :flightSerial and '
  +'fa.xml_random= :XmlRandom  ' ;



    xmlRandom:= RandomRAnge(1,10000000);

    if AIrSerial>0 then    begin
      sqlStr:= Str2;
      cnt:=ksExecSQLVar(cn,sqlStr,[XmlRandom,airSerial]);
    end else begin
      sqlStr:= str1;
      Clipboard.AsText:=sqlStr;
        cnt:=ksExecSQLVar(cn,sqlStr,[XmlRandom,FlightSerial,Criteria.DeclarationType,Criteria.TypeOfDeclaration,Criteria.Circumstance, Criteria.Incoterms]);
        cnt:=ksExecSQLVar(cn,str3,[FlightSerial,XmlRandom]);
    end;

    if cnt=0 then begin
      result:= 0;
    end else begin
      result:=xmlRandom;
    end;

end;



end.
