unit X_createMultiHighXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.adomxmldom, Xml.XMLDoc, vcl.wwbutton, Xml.Win.msxmldom, Data.DB, MemDS,
  DBAccess, IBC, RzLabel;

type
  TCriteriaParams= record
    DeclarationType:String;
    TypeOfDeclaration:String;
    Circumstance:String;
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

    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;overload;
    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode; overload;
    Function  AddAtrribute(HeaderNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
    function CreateXmlNodeNew(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; ElementType: TNodeType =ntElement):IXMLNode;
    function TBLCreateXMLNode(XMLDoc:IXMLDocument;ElementFather:IXMLNode;ElementName:String;ElementValue:String; Dataset: TDataset; FieldName:String; ElementType: TNodeType =ntElement):IXMLNode;


  function CreateNodeOuter( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
  function CreateNodeHeader( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
  function CreateNodeAirwayBills( Const FlightSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
  function CreateNodeForItems( Const AirwaybillSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;
  function CreateNodeFlightCountries( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode):IXMLNode;


  public
    { Public declarations }
    IN_FlightSerial:Integer;
    SameSender:boolean;
    SameIncoterm:boolean;
    procedure CreateOneAirwabillXML(Const SerialNumber:Integer);
  Function  CreateMultiXML(Const FlightOutSerial:Integer):Integer;
  Function TestMultiXML(Const FlightOutSerial:Integer):integer;

  end;

var
  X_CreateMultiHighXmlFRM: TX_CreateMultiHighXmlFRM;

implementation

{$R *.dfm}

uses MainForm, GeneralParametersNew, G_KyrSQL, G_generalProcs;

procedure TX_CreateMultiHighXmlFRM.Button1Click(Sender: TObject);
begin

CreateMultiXML(IN_FlightSerial);

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



Function TX_CreateMultiHighXmlFRM.CreateMultiXML(Const FlightOutSerial:Integer):integer;
var
  FDoc:IXMLDocument;
  TheRoot:IXMLNode;
  HeaderNode:IXMLNode;
  strXMl:String;
  FileName:String;

  temp:String;
  FQr: TksQuery;
  Mawb:String;
  flightSerial:Integer;

Begin
  fQr:=TksQuery.Create(cn,' select *  from Flight_out where serial_number= :Serial');
  try
    fQr.ParambyName('serial').Value:= FlightOutSerial;
    fQr.Open;
    Mawb:=fQr.FieldByName('Mawb').AsString;
    ShowMessage(Mawb);

    FDoc:=XMLDocNew;
    FDoc.active:=false;
    Fdoc.XML.Text:='';
    FDoc.Active := True;
    FDoc.Version := '1.0';
    FDoc.Encoding := 'UTF-8';

    TheRoot := FDoc.AddChild('CC515A');
    TheRoot.SetAttributeNS('xmlns', '', 'http://www.eurodyn.com' );
     /////////////////////////////////////////////////////////////////////////
//    CreateNodeOuter(FlightOutSerial,Fdoc,TheRoot);
     /////////////////////////////////////////////////////////////////////////
    strXML := StringReplace(FDoc.XML.Text, ' xmlns=""', '', [rfReplaceAll]);
    FDoc := LoadXMLData(strXML);
//     FileName:= DefaultDir+'\'+ Trim(OneFlightAirwaybillSQL.FieldByName('hawb_id').AsString)+'.xml';
    FileName:= 'C:\Data\DelphiProjects\TokyoCabOut\XML\OutputXML\High22.xml';
    FDoc.SaveToFile(FileName);

  finally
    fQr.Free;
  end;


end;


Function TX_CreateMultiHighXmlFRM.TestMultiXML(Const FlightOutSerial:Integer):integer;
var
  GroupQr, Flightqr,FirstAirQr:TksQuery;
  MawbId:String;
  FlightName:string;
  DeclarationType,TypeDeclaration,Circumstance:String;
  DefaultDir:String;
  val:String;


   FDoc:IXMLDocument;
  TheRoot:IXMLNode;
//  HeaderNode:IXMLNode;
  strXMl:String;
  FileName:String;
  Criteria:TCriteriaParams;

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

  val:=
  '  Select'
  +'    fa.declaration_type, fa.type_of_declaration, fa.specific_circumstance'
  +'   from'
  +'    flight_airwaybill fa join'
  +'    flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'   where fa.fk_flight_out_serial= :flightSerial'
  +'  group by     fa.declaration_type, fa.type_of_declaration, fa.specific_circumstance';
  GroupQr:=TksQuery.Create(cn,val);

  try
    FlightQr.ParambyName('Flightserial').Value:= FlightOutSerial;
    GroupQr.Open;
    while (not GroupQr.Eof) do begin
      Criteria.DeclarationType:= GroupQr.FieldByName('Declaration_type').AsString;
      Criteria.TypeOfDeclaration:= GroupQr.FieldByName('Type_of_Declaration').AsString;
      Criteria.Circumstance:= GroupQr.FieldByName('specific_circumstance').AsString;
//      ShowMessage(TypeDeclaration +' '+DeclarationType +' '+Circumstance);

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
      CreateNodeOuter(FlightOutSerial,Fdoc,TheRoot,Criteria);
     /////////////////////////////////////////////////////////////////////////
      strXML := StringReplace(FDoc.XML.Text, ' xmlns=""', '', [rfReplaceAll]);
      FDoc := LoadXMLData(strXML);
      FileName:= DefaultDir+'\'+ MawbId+'_'+DeclarationType+'_'+TypeDeclaration+'_'+Circumstance+'_'+'.xml';

      FDoc.SaveToFile(FileName);

      GroupQr.Next;
    end;

  finally
    GroupQr.Free;
  end;




end;



function TX_CreateMultiHighXmlFRM.CreateNodeOuter( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
var
  qr,FirstAirQr:TksQuery;
  HeaderNode,x1Node, x2Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
begin
  val:=
  '   select'
  +'  fo.serial_number, fo.mawb, fo.Date_depart, ft.flight_name'
  +'   from flight_out fo'
  +'   left outer join flight_table ft on fo.fk_flight_table=ft.serial_number'
  +'   where fo.serial_number = :serial';
  Qr:=TksQuery.Create(cn,val);

  val:= 'select first 1 * from flight_airwaybill fa where fa.fk_flight_out_serial = :flightSerial';
  FirstAirQR:= TksQuery.Create(cn,val);

  try
      Qr.ParambyName('serial').Value:= FlightOutSerial;
      Qr.Open;
      if qr.IsEmpty then
        exit;

      FirstAirQr.ParambyName('FlightSerial').Value:= FlightOutSerial;
      FirstAirQr.Open;
      if FirstAirQr.IsEmpty then
        exit;


      MawbId:=Qr.FieldByName('Mawb').AsString;
      FlightName:=Qr.FieldByName('Flight_name').AsString;
      DateDepart:=Qr.FieldByName('date_depart').AsDateTime;

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
     createNodeHeader(FlightOutSerial,FDoc,FatherNode,Criteria);
     //*************************************************
     //Consignor
     if (SameSender OR true) then begin
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
       TblCreateXMLNode(FDoc,x2node,'TIN','',FirstAirQr,'SENDER_VAT',ntText);
     end;


     x2Node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515ExportCustomsOffice','',ntElement);
     CreateXMLNodeNew(FDoc,x2Node,'ReferenceNumber','CY000440',ntElement);

     x2Node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515ExitCustomsOffice','',ntElement);
     CreateXMLNodeNew(FDoc,x2Node,'ReferenceNumber','CY000440',ntElement);


     //***GoodsItems*******************************************
     CreateNodeAirwayBills(FlightOutSerial,Fdoc,FatherNode,Criteria);
     //** Itineraries******************************************
     CreateNodeFlightCountries(FlightOutSerial,Fdoc,FatherNode);

     //**** Declerant Trader
     if (SameSender OR true) then begin
       x2node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515DeclarantTrader','',ntElement);
       TBLCreateXMLNode(FDoc,x2node,'TraderName','',FirstAirQr,'SENDER_NAME',ntText);
       dString:=Trim(FirstAirQr.fieldbyName('SENDER_ADDRESS_1').AsString)+','+Trim(FirstAirQr.fieldbyName('SENDER_ADDRESS_2').AsString)+','+Trim(FirstAirQr.fieldbyName('SENDER_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',FirstAirQr,'SENDER_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',FirstAirQr,'SENDER_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',FirstAirQr,'SENDER_COUNTRY_CODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);
       TblCreateXMLNode(FDoc,x2node,'TIN','',FirstAirQr,'SENDER_VAT',ntText);
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

      qr.Close;
    finally
      qr.Free;
      FirstAirQr.Free;
    end;

end;



function TX_CreateMultiHighXmlFRM.CreateNodeHeader( Const FlightOutSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
var
  qr,TotalsQr:TksQuery;
  HeaderNode,x1Node:IXMLNode;
  val:String;
  addr:string;
  DString:String;
  MawbId:String;
  FlightName:string;
  DateDepart:Tdate;
  DefaultDeclarationType, DefaultTypeOfDeclaration, DefaultCirc:String;
begin

  DefaultDeclarationType := GetTableDefaultValue('AUX_DECLARATION_TYPE');
  DefaultTypeOfDeclaration := GetTableDefaultValue('AUX_TYPE_OF_DECLARATION');
  DefaultCirc := GetTableDefaultValue('AUX_SPECIFIC_CIRCUMSTANCE');

  val:=
  '   select'
  +'  fo.serial_number, fo.mawb, fo.Date_depart, ft.flight_name'
  +'   from flight_out fo'
  +'   left outer join flight_table ft on fo.fk_flight_table=ft.serial_number'
  +'   where fo.serial_number = :serial';
  Qr:=TksQuery.Create(cn,val);

  val:=
  '   Select count(it.serial_number) as Cnt , sum(it.weight)as TotalWeight, sum(it.pieces) as TotalPieces from'
  +'    flight_airwaybill fa join'
  +'    flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'    where fa.fk_flight_out_serial= :flightSerial';
  TotalsQr:=TksQuery.Create(cn,val);

  try
      Qr.ParambyName('serial').Value:= FlightOutSerial;
      Qr.Open;
      if qr.IsEmpty then
        exit;

      TotalsQr.ParambyName('FlightSerial').Value:= FlightOutSerial;
      TotalsQr.Open;
      if Totalsqr.IsEmpty then
        exit;

      MawbId:=Qr.FieldByName('Mawb').AsString;
      FlightName:=Qr.FieldByName('Flight_name').AsString;
      DateDepart:=Qr.FieldByName('date_depart').AsDateTime;

    //********************************************
     //Header515
     val:=MawbId+FormatDateTime('YYMMDDHHMMSS', now);
     x1node:=CreateXMLNodeNew(FDoc,FatherNode,'Msg515Header','',ntElement);
     CreateXMLNodeNew(FDoc,x1node,'ReferenceNumber',val,ntText);


     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclaration',Criteria.DeclarationType,ntText);

     CreateXMLNodeNew(FDoc,x1node,'CountryOfDestinationCode','TR',ntText); //here
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

     CreateXMLNodeNew(FDoc,x1node,'SpecificCircumstanceIndicator',Criteria.Circumstance,ntText);

     CreateXMLNodeNew(FDoc,x1node,'TypeOfDeclarationBox12',Criteria.TypeOfDeclaration,ntText);


      qr.Close;
    finally
      qr.Free;
      TOtalsQr.Free;
    end;

end;



function TX_CreateMultiHighXmlFRM.CreateNodeAirwayBills( Const FlightSerial:Integer; const Fdoc: IXMLDocument;FatherNode:IXMLNode;Criteria:TCriteriaParams):IXMLNode;
var
  HeaderNode:IXMLNode;
  x2Node:IXMLNode;
  val,temp:String;
  addr:string;
  DString:String;
  AirSerial:Integer;
  qr:TksQuery;
  qrItem, qrAir: TksQuery;
  qrCert:TksQuery;
  ItemSerial:Integer;
   i:Integer;
   DefaultProcedureRequested:String;
   DefaultPreviousProcedure:String;
   DefaultKindOfPackages:String;
   TempInt:Integer;
begin

  DefaultProcedureRequested:=GetTableDefaultValue('AUX_PROCEDURE_REQUEST');
  DefaultPreviousProcedure:=GetTableDefaultValue('AUX_PREVIOUS_PROCEDURE');
  DefaultKindOfPackages:=GetTableDefaultValue('AUX_KIND_OF_PACKAGES');


  val:=
  ' Select  fa.serial_number as AirSerial, '
  +'  it.* from'
  +'  flight_airwaybill fa join'
  +'  flight_airwaybill_item it on fa.serial_number=it.fk_fa_serial'
  +'  where fa.fk_flight_out_serial= :flightSerial '
  +'  order by fa.hawb_id, sequence';
  qrItem:=TksQuery.Create(cn,val);

  //I did not use a Join to avoid namespace collision between item and air
  val:='select * from flight_airwaybill fa where fa.serial_number= :airserial';
  qrAir:=TksQuery.Create(cn,val);

    try
      i:=0;
      qrItem.ParambyName('FlightSerial').Value:= FlightSerial;
      qrItem.Open;
//      name="Msg615ProducedDocumentsCertif"
      while (not qrItem.eof) do begin
       inc(i);
       airSerial:=qrItem.FieldByName('AirSerial').AsInteger;
       itemSerial:=qrItem.FieldByName('serial_number').AsInteger;
       qrAir.ParamByName('airSerial').Value:=AirSerial;
       qrAIr.Open;

       HeaderNode :=CreateXMLNodeNew(FDoc,FatherNode,'Msg515GoodsItem','',ntElement);
 //       TblCreateXMLNode(FDoc,HeaderNode,'City','',qrItem,'HAWB_ID',ntText);

       TblCreateXMLNode(FDoc,HeaderNode,'ItemNumber','',qrItem,'SEQUENCE',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'GoodsDescription','',qrItem,'DESCRIPTION',ntText);
       CreateXMLNodeNew(FDoc,HeaderNode,'GoodsDescriptionLNG','EN',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'GrossMass','',qrItem,'WEIGHT',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'NetMass','',qrItem,'WEIGHT',ntText);

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
       TblCreateXMLNode(FDoc,HeaderNode,'CountryOfOrigin','',qrAir,'SENDER_CITY',ntText);
       TblCreateXMLNode(FDoc,HeaderNode,'SupplementaryUnits','',qrItem,'PIECES',ntText);


      ///***** Certificates
      val:='Select * from  FLIGHT_AIRWAYBILL_ITEM_CERT fc where fc.fk_flight_airwaybill_item= :ItemSerial';
      qrCert:=TksQuery.Create(cn,val);
      try
        qrCert.ParamByName('itemSerial').Value:= ItemSerial;
        qrCert.Open;
        while (not qrCert.Eof ) do begin
          x2Node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg515ProducedDocumentsCertif','',ntElement);
          TblCreateXMLNode(FDoc,x2Node,'DocumentType','',qrCert,'cert_code',ntText);
          TblCreateXMLNode(FDoc,x2Node,'DocumentReference','',qrCert,'cert_value',ntText);
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
       TblCreateXMLNode(FDoc,x2node,'TIN','',qrAir,'SENDER_VAT',ntText);
       end;

       //Consignee
       x2node:=CreateXMLNodeNew(FDoc,HeaderNode,'Msg515ConsigneeTrader','',ntElement);
       TblCreateXMLNode(FDoc,x2node,'TraderName','',qrAir,'CONSIGNEE_NAME',ntText);
       dString:=Trim(qrAir.fieldbyName('CONSIGNEE_ADDRESS_1').AsString)+','+Trim(qrAir.fieldbyName('CONSIGNEE_ADDRESS_2').AsString)+','+Trim(qrAir.fieldbyName('CONSIGNEE_ADDRESS_3').AsString);
       dString:=Copy(dString,1,34);
       CreateXMLNodeNew(FDoc,x2node,'StreetAndNumber',dString,ntText);
       TblCreateXMLNode(FDoc,x2node,'PostalCode','',qrAir,'CONSIGNEE_POST_CODE',ntText);
       TblCreateXMLNode(FDoc,x2node,'City','',qrAir,'CONSIGNEE_CITY',ntText);
       TblCreateXMLNode(FDoc,x2node,'CountryCode','',qrAir,'CONSIGNEE_COUNTRY_cODE',ntText);
       CreateXMLNodeNew(FDoc,x2node,'NADLNG','EN',ntText);

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

       qrItem.Next;
      end;
      result:= FatherNOde;
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



end.
