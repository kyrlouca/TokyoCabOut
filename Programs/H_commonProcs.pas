unit H_commonProcs;

interface
uses IBC;
procedure Cp_InsertCertificates(cn:TIBCConnection; const ItemSerial:Integer;Const GroupCode:String);

implementation

uses G_KyrSQL;

procedure Cp_InsertCertificates(cn:TIBCConnection; const ItemSerial:Integer;Const GroupCode:String);
Var
  faCertSerial:Integer;
  certItemSerial:Integer;
  str:String;
  qr:TksQuery;

begin

  Str:='delete from flight_airwaybill_item_cert fi where fi.fk_flight_airwaybill_item = :fa_item';
  ksExecSQLVar(cn, str,[ItemSerial]);

  str:=
  '   insert into flight_airwaybill_item_cert'
  +'      (serial_number, FK_FLIGHT_AIRWAYBILL_ITEM, cert_code, cert_type, description, cert_value, table_for_value, field_for_value)'
  +'    select'
  +'    :ItemCertSerial, :ItemCert_fk , ci.cert_code, ci.cert_type, ci.description, ci.cert_value, ci.table_for_value, ci.field_for_value'
  +'    from certificate_item ci where ci.serial_number = :CertSerial';

  try
    //read all the certificate_items for the group  which will apply for the flight_airwaybill_item
    qr:=TksQuery.Create(cn,'select serial_number from certificate_item where fk_certificate_group= :group');
    qr.ParamByName('group').Value:=GroupCode;
    qr.Open;
    while (not qr.Eof) do begin
      FaCertSerial:= ksGenerateSerial(cn,'FLIGHT_AIRWAYBILL_ITEM_CERT_GEN');
      CertItemSerial:=qr.FieldByName('serial_number').AsInteger;
      ksExecSQLVar(cn, str,[FaCertSerial,ItemSerial,CertItemSerial]);
      qr.Next;
    end;
  finally
    qr.Free;
  end;
end;


end.
