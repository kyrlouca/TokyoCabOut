object CreateOneXMLFileFRM: TCreateOneXMLFileFRM
  Left = 162
  Top = 171
  Caption = 'CreateOneXMLFileFRM'
  ClientHeight = 821
  ClientWidth = 1348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object ParameterSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'Select * from System_parameters where KEY_FIELD = :Key')
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Key'
        Value = nil
      end>
    object ParameterSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object ParameterSQLKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      FixedChar = True
      Size = 35
    end
    object ParameterSQLSYS_TYPE: TStringField
      FieldName = 'SYS_TYPE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object ParameterSQLINT_1: TIntegerField
      FieldName = 'INT_1'
    end
    object ParameterSQLINT_2: TIntegerField
      FieldName = 'INT_2'
    end
    object ParameterSQLSTR_1: TStringField
      FieldName = 'STR_1'
      FixedChar = True
      Size = 30
    end
    object ParameterSQLSTR_2: TStringField
      FieldName = 'STR_2'
      FixedChar = True
      Size = 30
    end
    object ParameterSQLSTR_3: TStringField
      FieldName = 'STR_3'
      Size = 80
    end
    object ParameterSQLSTR_4: TStringField
      FieldName = 'STR_4'
      Size = 80
    end
    object ParameterSQLSTR_5: TStringField
      FieldName = 'STR_5'
      Size = 80
    end
    object ParameterSQLNUM_1: TFloatField
      FieldName = 'NUM_1'
    end
    object ParameterSQLNUM_2: TFloatField
      FieldName = 'NUM_2'
    end
    object ParameterSQLDATE_1: TDateTimeField
      FieldName = 'DATE_1'
    end
    object ParameterSQLDATE_2: TDateTimeField
      FieldName = 'DATE_2'
    end
  end
  object CountrySQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'Select * from Country where code_3= :Code3')
    Left = 168
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Code3'
        Value = nil
      end>
    object CountrySQLCODE_3: TStringField
      FieldName = 'CODE_3'
      Origin = 'CABOUTDATA.COUNTRY.CODE_3'
      FixedChar = True
      Size = 3
    end
    object CountrySQLCODE_2: TStringField
      FieldName = 'CODE_2'
      Origin = 'CABOUTDATA.COUNTRY.CODE_2'
      FixedChar = True
      Size = 2
    end
    object CountrySQLNAME: TStringField
      FieldName = 'NAME'
      Origin = 'CABOUTDATA.COUNTRY.NAME'
      FixedChar = True
      Size = 60
    end
    object CountrySQLEU_MEMBER: TStringField
      FieldName = 'EU_MEMBER'
      Origin = 'CABOUTDATA.COUNTRY.EU_MEMBER'
      FixedChar = True
      Size = 1
    end
    object CountrySQLFK_CURRENCY_CODE: TStringField
      FieldName = 'FK_CURRENCY_CODE'
      Origin = 'CABOUTDATA.COUNTRY.FK_CURRENCY_CODE'
      FixedChar = True
      Size = 3
    end
    object CountrySQLGREEK_NAME: TStringField
      FieldName = 'GREEK_NAME'
      Origin = 'CABOUTDATA.COUNTRY.GREEK_NAME'
      FixedChar = True
      Size = 60
    end
    object CountrySQLXML_COUNTRY: TStringField
      FieldName = 'XML_COUNTRY'
      Origin = 'CABOUTDATA.COUNTRY.XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
    object CountrySQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.COUNTRY.SERIAL_NUMBER'
    end
  end
  object FlightOutSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_OUT'
      
        '  (SERIAL_NUMBER, MAWB, FK_MOVEMENT_SERIAL, FK_DOCUMENT_MASTER_S' +
        'ERIAL, DATE_DEPART, REMARKS, DESTINATION_AREA, DESTINATION_COUNT' +
        'RY)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :MAWB, :FK_MOVEMENT_SERIAL, :FK_DOCUMENT_MAST' +
        'ER_SERIAL, :DATE_DEPART, :REMARKS, :DESTINATION_AREA, :DESTINATI' +
        'ON_COUNTRY)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_OUT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_OUT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, MAWB = :MAWB, FK_MOVEMENT_SERI' +
        'AL = :FK_MOVEMENT_SERIAL, FK_DOCUMENT_MASTER_SERIAL = :FK_DOCUME' +
        'NT_MASTER_SERIAL, DATE_DEPART = :DATE_DEPART, REMARKS = :REMARKS' +
        ', DESTINATION_AREA = :DESTINATION_AREA, DESTINATION_COUNTRY = :D' +
        'ESTINATION_COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, MAWB, FK_MOVEMENT_SERIAL, FK_DOCUMENT_MAST' +
        'ER_SERIAL, DATE_DEPART, REMARKS, DESTINATION_AREA, DESTINATION_C' +
        'OUNTRY FROM FLIGHT_OUT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_OUT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'select * from Flight_out where serial_number= :Serial_number')
    UniDirectional = True
    Left = 300
    Top = 50
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Serial_number'
        ParamType = ptInput
        Value = nil
      end>
    object FlightOutSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object FlightOutSQLMAWB: TStringField
      FieldName = 'MAWB'
      Required = True
      FixedChar = True
      Size = 15
    end
    object FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField
      FieldName = 'FK_MOVEMENT_SERIAL'
    end
    object FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
    end
    object FlightOutSQLDATE_DEPART: TDateTimeField
      FieldName = 'DATE_DEPART'
    end
    object FlightOutSQLREMARKS: TStringField
      FieldName = 'REMARKS'
      FixedChar = True
      Size = 60
    end
    object FlightOutSQLDESTINATION_AREA: TStringField
      FieldName = 'DESTINATION_AREA'
      FixedChar = True
      Size = 3
    end
    object FlightOutSQLDESTINATION_COUNTRY: TStringField
      FieldName = 'DESTINATION_COUNTRY'
      FixedChar = True
      Size = 3
    end
  end
  object FlightAirwayBillSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL'
      
        '  (SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_AREA' +
        ', SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_DOCUM' +
        'ENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBILL_S' +
        'ERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SENDER' +
        '_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME, CO' +
        'NSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIGNEE_' +
        'COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COUNT, ' +
        'PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRE' +
        'SS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_' +
        'NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, CONSI' +
        'GNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, CONS' +
        'IGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEYWORD' +
        ', IS_CLEARED, IS_HIGH, SERVICE_CODE, ACCOUNT_NUMBER, INCOTERMS, ' +
        'CONSIGNEE_PREFERRED_NAME)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEQUENCE_NUMBER, :HAWB_ID, :SHIPMENT_ORIGIN_' +
        'AREA, :SHIPMENT_ORIGIN_COUNTRY, :PIECES, :WEIGHT, :DESCRIPTION, ' +
        ':FK_DOCUMENT_MASTER_SERIAL, :FK_MOVEMENT_SERIAL, :PIECES_S, :FK_' +
        'AIRWAYBILL_SERIAL, :FK_FLIGHT_OUT_SERIAL, :SENDER_NAME, :SENDER_' +
        'ADDRESS, :SENDER_POST_CODE, :SENDER_CITY, :SENDER_COUNTRY_CODE, ' +
        ':CONSIGNEE_NAME, :CONSIGNEE_ADDRESS, :CONSIGNEE_POST_CODE, :CONS' +
        'IGNEE_CITY, :CONSIGNEE_COUNTRY_CODE, :FK_ITINERARY_SERIAL, :PACK' +
        'AGES_COUNT, :ITEMS_COUNT, :PAYMENT_METHOD, :SENDER_ADDRESS_1, :S' +
        'ENDER_ADDRESS_2, :SENDER_ADDRESS_3, :SENDER_DEVICE_TYPE, :SENDER' +
        '_DEVICE_DETAILS, :SENDER_ACCOUNT_NUMBER, :FK_SENDER_SERIAL, :VAL' +
        'UE_TYPE, :CONSIGNEE_ADDRESS_1, :CONSIGNEE_ADDRESS_2, :CONSIGNEE_' +
        'ADDRESS_3, :CONSIGNEE_DEVICE_TYPE, :CONSIGNEE_DEVICE_DETAILS, :D' +
        'ISTRICT_CODE, :TARIFF_CODE, :TARIFF_KEYWORD, :IS_CLEARED, :IS_HI' +
        'GH, :SERVICE_CODE, :ACCOUNT_NUMBER, :INCOTERMS, :CONSIGNEE_PREFE' +
        'RRED_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SEQUENCE_NUMBER = :SEQUENCE_NU' +
        'MBER, HAWB_ID = :HAWB_ID, SHIPMENT_ORIGIN_AREA = :SHIPMENT_ORIGI' +
        'N_AREA, SHIPMENT_ORIGIN_COUNTRY = :SHIPMENT_ORIGIN_COUNTRY, PIEC' +
        'ES = :PIECES, WEIGHT = :WEIGHT, DESCRIPTION = :DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL = :FK_DOCUMENT_MASTER_SERIAL, FK_MOVEMENT_' +
        'SERIAL = :FK_MOVEMENT_SERIAL, PIECES_S = :PIECES_S, FK_AIRWAYBIL' +
        'L_SERIAL = :FK_AIRWAYBILL_SERIAL, FK_FLIGHT_OUT_SERIAL = :FK_FLI' +
        'GHT_OUT_SERIAL, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS = :SE' +
        'NDER_ADDRESS, SENDER_POST_CODE = :SENDER_POST_CODE, SENDER_CITY ' +
        '= :SENDER_CITY, SENDER_COUNTRY_CODE = :SENDER_COUNTRY_CODE, CONS' +
        'IGNEE_NAME = :CONSIGNEE_NAME, CONSIGNEE_ADDRESS = :CONSIGNEE_ADD' +
        'RESS, CONSIGNEE_POST_CODE = :CONSIGNEE_POST_CODE, CONSIGNEE_CITY' +
        ' = :CONSIGNEE_CITY, CONSIGNEE_COUNTRY_CODE = :CONSIGNEE_COUNTRY_' +
        'CODE, FK_ITINERARY_SERIAL = :FK_ITINERARY_SERIAL, PACKAGES_COUNT' +
        ' = :PACKAGES_COUNT, ITEMS_COUNT = :ITEMS_COUNT, PAYMENT_METHOD =' +
        ' :PAYMENT_METHOD, SENDER_ADDRESS_1 = :SENDER_ADDRESS_1, SENDER_A' +
        'DDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :SENDER_ADDRESS' +
        '_3, SENDER_DEVICE_TYPE = :SENDER_DEVICE_TYPE, SENDER_DEVICE_DETA' +
        'ILS = :SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_NUMBER = :SENDER_AC' +
        'COUNT_NUMBER, FK_SENDER_SERIAL = :FK_SENDER_SERIAL, VALUE_TYPE =' +
        ' :VALUE_TYPE, CONSIGNEE_ADDRESS_1 = :CONSIGNEE_ADDRESS_1, CONSIG' +
        'NEE_ADDRESS_2 = :CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3 = :CON' +
        'SIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE = :CONSIGNEE_DEVICE_TYPE' +
        ', CONSIGNEE_DEVICE_DETAILS = :CONSIGNEE_DEVICE_DETAILS, DISTRICT' +
        '_CODE = :DISTRICT_CODE, TARIFF_CODE = :TARIFF_CODE, TARIFF_KEYWO' +
        'RD = :TARIFF_KEYWORD, IS_CLEARED = :IS_CLEARED, IS_HIGH = :IS_HI' +
        'GH, SERVICE_CODE = :SERVICE_CODE, ACCOUNT_NUMBER = :ACCOUNT_NUMB' +
        'ER, INCOTERMS = :INCOTERMS, CONSIGNEE_PREFERRED_NAME = :CONSIGNE' +
        'E_PREFERRED_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_' +
        'AREA, SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBI' +
        'LL_SERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SE' +
        'NDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME' +
        ', CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIG' +
        'NEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COU' +
        'NT, PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_A' +
        'DDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCO' +
        'UNT_NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, C' +
        'ONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, ' +
        'CONSIGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEY' +
        'WORD, IS_CLEARED, IS_HIGH, SERVICE_CODE, ACCOUNT_NUMBER, INCOTER' +
        'MS, CONSIGNEE_PREFERRED_NAME FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM FLIGHT_AIRWAYBILL'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'select * from Flight_AIrwaybill')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_FLIGHT_OUT_SERIAL'
    MasterSource = flightOutSRC
    UniDirectional = True
    Left = 352
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIAL_NUMBER'
        Value = nil
      end>
    object FlightAirwayBillSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object FlightAirwayBillSQLSEQUENCE_NUMBER: TIntegerField
      FieldName = 'SEQUENCE_NUMBER'
    end
    object FlightAirwayBillSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
    object FlightAirwayBillSQLSHIPMENT_ORIGIN_AREA: TStringField
      FieldName = 'SHIPMENT_ORIGIN_AREA'
      Size = 10
    end
    object FlightAirwayBillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField
      FieldName = 'SHIPMENT_ORIGIN_COUNTRY'
      FixedChar = True
      Size = 5
    end
    object FlightAirwayBillSQLPIECES: TIntegerField
      FieldName = 'PIECES'
    end
    object FlightAirwayBillSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object FlightAirwayBillSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object FlightAirwayBillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
    end
    object FlightAirwayBillSQLFK_MOVEMENT_SERIAL: TIntegerField
      FieldName = 'FK_MOVEMENT_SERIAL'
    end
    object FlightAirwayBillSQLPIECES_S: TStringField
      FieldName = 'PIECES_S'
      FixedChar = True
      Size = 15
    end
    object FlightAirwayBillSQLFK_AIRWAYBILL_SERIAL: TIntegerField
      FieldName = 'FK_AIRWAYBILL_SERIAL'
    end
    object FlightAirwayBillSQLFK_FLIGHT_OUT_SERIAL: TIntegerField
      FieldName = 'FK_FLIGHT_OUT_SERIAL'
      Required = True
    end
    object FlightAirwayBillSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLSENDER_ADDRESS: TStringField
      FieldName = 'SENDER_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwayBillSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLSENDER_COUNTRY_CODE: TStringField
      FieldName = 'SENDER_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object FlightAirwayBillSQLCONSIGNEE_NAME: TStringField
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLCONSIGNEE_ADDRESS: TStringField
      FieldName = 'CONSIGNEE_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLCONSIGNEE_POST_CODE: TStringField
      FieldName = 'CONSIGNEE_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwayBillSQLCONSIGNEE_CITY: TStringField
      FieldName = 'CONSIGNEE_CITY'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLCONSIGNEE_COUNTRY_CODE: TStringField
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object FlightAirwayBillSQLFK_ITINERARY_SERIAL: TIntegerField
      FieldName = 'FK_ITINERARY_SERIAL'
    end
    object FlightAirwayBillSQLPACKAGES_COUNT: TIntegerField
      FieldName = 'PACKAGES_COUNT'
    end
    object FlightAirwayBillSQLITEMS_COUNT: TIntegerField
      FieldName = 'ITEMS_COUNT'
    end
    object FlightAirwayBillSQLPAYMENT_METHOD: TStringField
      FieldName = 'PAYMENT_METHOD'
      FixedChar = True
      Size = 2
    end
    object FlightAirwayBillSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLSENDER_DEVICE_TYPE: TStringField
      FieldName = 'SENDER_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwayBillSQLSENDER_DEVICE_DETAILS: TStringField
      FieldName = 'SENDER_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLSENDER_ACCOUNT_NUMBER: TIntegerField
      FieldName = 'SENDER_ACCOUNT_NUMBER'
    end
    object FlightAirwayBillSQLFK_SENDER_SERIAL: TIntegerField
      FieldName = 'FK_SENDER_SERIAL'
    end
    object FlightAirwayBillSQLVALUE_TYPE: TStringField
      FieldName = 'VALUE_TYPE'
      FixedChar = True
      Size = 1
    end
    object FlightAirwayBillSQLCONSIGNEE_ADDRESS_1: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLCONSIGNEE_ADDRESS_2: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLCONSIGNEE_ADDRESS_3: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLCONSIGNEE_DEVICE_TYPE: TStringField
      FieldName = 'CONSIGNEE_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwayBillSQLCONSIGNEE_DEVICE_DETAILS: TStringField
      FieldName = 'CONSIGNEE_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwayBillSQLDISTRICT_CODE: TStringField
      FieldName = 'DISTRICT_CODE'
      FixedChar = True
      Size = 3
    end
    object FlightAirwayBillSQLTARIFF_CODE: TStringField
      FieldName = 'TARIFF_CODE'
      Size = 17
    end
    object FlightAirwayBillSQLTARIFF_KEYWORD: TStringField
      FieldName = 'TARIFF_KEYWORD'
      FixedChar = True
      Size = 30
    end
    object FlightAirwayBillSQLIS_CLEARED: TStringField
      FieldName = 'IS_CLEARED'
      FixedChar = True
      Size = 1
    end
    object FlightAirwayBillSQLIS_HIGH: TStringField
      FieldName = 'IS_HIGH'
      FixedChar = True
      Size = 1
    end
    object FlightAirwayBillSQLSERVICE_CODE: TStringField
      FieldName = 'SERVICE_CODE'
      Size = 10
    end
    object FlightAirwayBillSQLACCOUNT_NUMBER: TStringField
      FieldName = 'ACCOUNT_NUMBER'
      FixedChar = True
      Size = 15
    end
    object FlightAirwayBillSQLINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      FixedChar = True
      Size = 9
    end
    object FlightAirwayBillSQLCONSIGNEE_PREFERRED_NAME: TStringField
      FieldName = 'CONSIGNEE_PREFERRED_NAME'
      FixedChar = True
      Size = 35
    end
  end
  object flightOutSRC: TIBCDataSource
    DataSet = FlightOutSQL
    Left = 352
    Top = 136
  end
  object OneFlightAirwayBillSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL'
      
        '  (SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_AREA' +
        ', SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_DOCUM' +
        'ENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBILL_S' +
        'ERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SENDER' +
        '_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME, CO' +
        'NSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIGNEE_' +
        'COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COUNT, ' +
        'PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRE' +
        'SS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_' +
        'NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, CONSI' +
        'GNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, CONS' +
        'IGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEYWORD' +
        ', IS_CLEARED, IS_HIGH, SERVICE_CODE, ACCOUNT_NUMBER, INCOTERMS, ' +
        'CONSIGNEE_PREFERRED_NAME)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEQUENCE_NUMBER, :HAWB_ID, :SHIPMENT_ORIGIN_' +
        'AREA, :SHIPMENT_ORIGIN_COUNTRY, :PIECES, :WEIGHT, :DESCRIPTION, ' +
        ':FK_DOCUMENT_MASTER_SERIAL, :FK_MOVEMENT_SERIAL, :PIECES_S, :FK_' +
        'AIRWAYBILL_SERIAL, :FK_FLIGHT_OUT_SERIAL, :SENDER_NAME, :SENDER_' +
        'ADDRESS, :SENDER_POST_CODE, :SENDER_CITY, :SENDER_COUNTRY_CODE, ' +
        ':CONSIGNEE_NAME, :CONSIGNEE_ADDRESS, :CONSIGNEE_POST_CODE, :CONS' +
        'IGNEE_CITY, :CONSIGNEE_COUNTRY_CODE, :FK_ITINERARY_SERIAL, :PACK' +
        'AGES_COUNT, :ITEMS_COUNT, :PAYMENT_METHOD, :SENDER_ADDRESS_1, :S' +
        'ENDER_ADDRESS_2, :SENDER_ADDRESS_3, :SENDER_DEVICE_TYPE, :SENDER' +
        '_DEVICE_DETAILS, :SENDER_ACCOUNT_NUMBER, :FK_SENDER_SERIAL, :VAL' +
        'UE_TYPE, :CONSIGNEE_ADDRESS_1, :CONSIGNEE_ADDRESS_2, :CONSIGNEE_' +
        'ADDRESS_3, :CONSIGNEE_DEVICE_TYPE, :CONSIGNEE_DEVICE_DETAILS, :D' +
        'ISTRICT_CODE, :TARIFF_CODE, :TARIFF_KEYWORD, :IS_CLEARED, :IS_HI' +
        'GH, :SERVICE_CODE, :ACCOUNT_NUMBER, :INCOTERMS, :CONSIGNEE_PREFE' +
        'RRED_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SEQUENCE_NUMBER = :SEQUENCE_NU' +
        'MBER, HAWB_ID = :HAWB_ID, SHIPMENT_ORIGIN_AREA = :SHIPMENT_ORIGI' +
        'N_AREA, SHIPMENT_ORIGIN_COUNTRY = :SHIPMENT_ORIGIN_COUNTRY, PIEC' +
        'ES = :PIECES, WEIGHT = :WEIGHT, DESCRIPTION = :DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL = :FK_DOCUMENT_MASTER_SERIAL, FK_MOVEMENT_' +
        'SERIAL = :FK_MOVEMENT_SERIAL, PIECES_S = :PIECES_S, FK_AIRWAYBIL' +
        'L_SERIAL = :FK_AIRWAYBILL_SERIAL, FK_FLIGHT_OUT_SERIAL = :FK_FLI' +
        'GHT_OUT_SERIAL, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS = :SE' +
        'NDER_ADDRESS, SENDER_POST_CODE = :SENDER_POST_CODE, SENDER_CITY ' +
        '= :SENDER_CITY, SENDER_COUNTRY_CODE = :SENDER_COUNTRY_CODE, CONS' +
        'IGNEE_NAME = :CONSIGNEE_NAME, CONSIGNEE_ADDRESS = :CONSIGNEE_ADD' +
        'RESS, CONSIGNEE_POST_CODE = :CONSIGNEE_POST_CODE, CONSIGNEE_CITY' +
        ' = :CONSIGNEE_CITY, CONSIGNEE_COUNTRY_CODE = :CONSIGNEE_COUNTRY_' +
        'CODE, FK_ITINERARY_SERIAL = :FK_ITINERARY_SERIAL, PACKAGES_COUNT' +
        ' = :PACKAGES_COUNT, ITEMS_COUNT = :ITEMS_COUNT, PAYMENT_METHOD =' +
        ' :PAYMENT_METHOD, SENDER_ADDRESS_1 = :SENDER_ADDRESS_1, SENDER_A' +
        'DDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :SENDER_ADDRESS' +
        '_3, SENDER_DEVICE_TYPE = :SENDER_DEVICE_TYPE, SENDER_DEVICE_DETA' +
        'ILS = :SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_NUMBER = :SENDER_AC' +
        'COUNT_NUMBER, FK_SENDER_SERIAL = :FK_SENDER_SERIAL, VALUE_TYPE =' +
        ' :VALUE_TYPE, CONSIGNEE_ADDRESS_1 = :CONSIGNEE_ADDRESS_1, CONSIG' +
        'NEE_ADDRESS_2 = :CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3 = :CON' +
        'SIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE = :CONSIGNEE_DEVICE_TYPE' +
        ', CONSIGNEE_DEVICE_DETAILS = :CONSIGNEE_DEVICE_DETAILS, DISTRICT' +
        '_CODE = :DISTRICT_CODE, TARIFF_CODE = :TARIFF_CODE, TARIFF_KEYWO' +
        'RD = :TARIFF_KEYWORD, IS_CLEARED = :IS_CLEARED, IS_HIGH = :IS_HI' +
        'GH, SERVICE_CODE = :SERVICE_CODE, ACCOUNT_NUMBER = :ACCOUNT_NUMB' +
        'ER, INCOTERMS = :INCOTERMS, CONSIGNEE_PREFERRED_NAME = :CONSIGNE' +
        'E_PREFERRED_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_' +
        'AREA, SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBI' +
        'LL_SERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SE' +
        'NDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME' +
        ', CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIG' +
        'NEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COU' +
        'NT, PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_A' +
        'DDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCO' +
        'UNT_NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, C' +
        'ONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, ' +
        'CONSIGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEY' +
        'WORD, IS_CLEARED, IS_HIGH, SERVICE_CODE, ACCOUNT_NUMBER, INCOTER' +
        'MS, CONSIGNEE_PREFERRED_NAME FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM FLIGHT_AIRWAYBILL'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      
        'select * from Flight_AIrwaybill where Serial_number= :Serial_num' +
        'ber')
    DetailFields = 'FK_FLIGHT_OUT_SERIAL'
    UniDirectional = True
    Left = 680
    Top = 42
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'SEQUENCE_NUMBER'
    end
    object StringField1: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'SHIPMENT_ORIGIN_AREA'
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'SHIPMENT_ORIGIN_COUNTRY'
      FixedChar = True
      Size = 5
    end
    object IntegerField3: TIntegerField
      FieldName = 'PIECES'
    end
    object FloatField1: TFloatField
      FieldName = 'WEIGHT'
    end
    object StringField4: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object IntegerField4: TIntegerField
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
    end
    object IntegerField5: TIntegerField
      FieldName = 'FK_MOVEMENT_SERIAL'
    end
    object StringField5: TStringField
      FieldName = 'PIECES_S'
      FixedChar = True
      Size = 15
    end
    object IntegerField6: TIntegerField
      FieldName = 'FK_AIRWAYBILL_SERIAL'
    end
    object IntegerField7: TIntegerField
      FieldName = 'FK_FLIGHT_OUT_SERIAL'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object StringField7: TStringField
      FieldName = 'SENDER_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object StringField8: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object StringField9: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 35
    end
    object StringField10: TStringField
      FieldName = 'SENDER_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object StringField12: TStringField
      FieldName = 'CONSIGNEE_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object StringField13: TStringField
      FieldName = 'CONSIGNEE_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object StringField14: TStringField
      FieldName = 'CONSIGNEE_CITY'
      FixedChar = True
      Size = 35
    end
    object StringField15: TStringField
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object IntegerField8: TIntegerField
      FieldName = 'FK_ITINERARY_SERIAL'
    end
    object IntegerField9: TIntegerField
      FieldName = 'PACKAGES_COUNT'
    end
    object IntegerField10: TIntegerField
      FieldName = 'ITEMS_COUNT'
    end
    object OneFlightAirwayBillSQLPAYMENT_METHOD: TStringField
      FieldName = 'PAYMENT_METHOD'
      FixedChar = True
      Size = 2
    end
    object OneFlightAirwayBillSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLSENDER_DEVICE_TYPE: TStringField
      FieldName = 'SENDER_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object OneFlightAirwayBillSQLSENDER_DEVICE_DETAILS: TStringField
      FieldName = 'SENDER_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLSENDER_ACCOUNT_NUMBER: TIntegerField
      FieldName = 'SENDER_ACCOUNT_NUMBER'
    end
    object OneFlightAirwayBillSQLFK_SENDER_SERIAL: TIntegerField
      FieldName = 'FK_SENDER_SERIAL'
    end
    object OneFlightAirwayBillSQLVALUE_TYPE: TStringField
      FieldName = 'VALUE_TYPE'
      FixedChar = True
      Size = 1
    end
    object OneFlightAirwayBillSQLCONSIGNEE_ADDRESS_1: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLCONSIGNEE_ADDRESS_2: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLCONSIGNEE_ADDRESS_3: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLCONSIGNEE_DEVICE_TYPE: TStringField
      FieldName = 'CONSIGNEE_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object OneFlightAirwayBillSQLCONSIGNEE_DEVICE_DETAILS: TStringField
      FieldName = 'CONSIGNEE_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object OneFlightAirwayBillSQLDISTRICT_CODE: TStringField
      FieldName = 'DISTRICT_CODE'
      FixedChar = True
      Size = 3
    end
    object OneFlightAirwayBillSQLTARIFF_CODE: TStringField
      FieldName = 'TARIFF_CODE'
      Size = 17
    end
    object OneFlightAirwayBillSQLTARIFF_KEYWORD: TStringField
      FieldName = 'TARIFF_KEYWORD'
      FixedChar = True
      Size = 30
    end
    object OneFlightAirwayBillSQLIS_CLEARED: TStringField
      FieldName = 'IS_CLEARED'
      FixedChar = True
      Size = 1
    end
    object OneFlightAirwayBillSQLIS_HIGH: TStringField
      FieldName = 'IS_HIGH'
      FixedChar = True
      Size = 1
    end
    object OneFlightAirwayBillSQLSERVICE_CODE: TStringField
      FieldName = 'SERVICE_CODE'
      Size = 10
    end
    object OneFlightAirwayBillSQLACCOUNT_NUMBER: TStringField
      FieldName = 'ACCOUNT_NUMBER'
      FixedChar = True
      Size = 15
    end
    object OneFlightAirwayBillSQLINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      FixedChar = True
      Size = 9
    end
    object OneFlightAirwayBillSQLCONSIGNEE_PREFERRED_NAME: TStringField
      FieldName = 'CONSIGNEE_PREFERRED_NAME'
      FixedChar = True
      Size = 35
    end
  end
  object FlightAirCountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL_COUNTRY'
      '  (COUNTRY_CODE, FK_FLIGHT_AIRWAYBILL)'
      'VALUES'
      '  (:COUNTRY_CODE, :FK_FLIGHT_AIRWAYBILL)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL_COUNTRY'
      'WHERE'
      
        '  FK_FLIGHT_AIRWAYBILL = :Old_FK_FLIGHT_AIRWAYBILL AND COUNTRY_C' +
        'ODE = :Old_COUNTRY_CODE')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL_COUNTRY'
      'SET'
      
        '  COUNTRY_CODE = :COUNTRY_CODE, FK_FLIGHT_AIRWAYBILL = :FK_FLIGH' +
        'T_AIRWAYBILL'
      'WHERE'
      
        '  FK_FLIGHT_AIRWAYBILL = :Old_FK_FLIGHT_AIRWAYBILL AND COUNTRY_C' +
        'ODE = :Old_COUNTRY_CODE')
    SQLRefresh.Strings = (
      
        'SELECT COUNTRY_CODE, FK_FLIGHT_AIRWAYBILL FROM FLIGHT_AIRWAYBILL' +
        '_COUNTRY'
      'WHERE'
      
        '  FK_FLIGHT_AIRWAYBILL = :FK_FLIGHT_AIRWAYBILL AND COUNTRY_CODE ' +
        '= :COUNTRY_CODE')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_AIRWAYBILL_COUNTRY'
      'WHERE'
      
        'FK_FLIGHT_AIRWAYBILL = :Old_FK_FLIGHT_AIRWAYBILL AND COUNTRY_COD' +
        'E = :Old_COUNTRY_CODE'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'select * from Flight_airwaybill_country')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_FLIGHT_AIRWAYBILL'
    MasterSource = OneFlightAirwayBillSRC
    ReadOnly = True
    Left = 544
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIAL_NUMBER'
        Value = nil
      end>
  end
  object OneFlightAirwayBillSRC: TIBCDataSource
    DataSet = OneFlightAirwayBillSQL
    Left = 672
    Top = 144
  end
  object FindFLightOutSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_OUT'
      
        '  (SERIAL_NUMBER, MAWB, FK_MOVEMENT_SERIAL, FK_DOCUMENT_MASTER_S' +
        'ERIAL, DATE_DEPART, REMARKS, DESTINATION_AREA, DESTINATION_COUNT' +
        'RY, FK_FLIGHT_TABLE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :MAWB, :FK_MOVEMENT_SERIAL, :FK_DOCUMENT_MAST' +
        'ER_SERIAL, :DATE_DEPART, :REMARKS, :DESTINATION_AREA, :DESTINATI' +
        'ON_COUNTRY, :FK_FLIGHT_TABLE)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_OUT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_OUT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, MAWB = :MAWB, FK_MOVEMENT_SERI' +
        'AL = :FK_MOVEMENT_SERIAL, FK_DOCUMENT_MASTER_SERIAL = :FK_DOCUME' +
        'NT_MASTER_SERIAL, DATE_DEPART = :DATE_DEPART, REMARKS = :REMARKS' +
        ', DESTINATION_AREA = :DESTINATION_AREA, DESTINATION_COUNTRY = :D' +
        'ESTINATION_COUNTRY, FK_FLIGHT_TABLE = :FK_FLIGHT_TABLE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, MAWB, FK_MOVEMENT_SERIAL, FK_DOCUMENT_MAST' +
        'ER_SERIAL, DATE_DEPART, REMARKS, DESTINATION_AREA, DESTINATION_C' +
        'OUNTRY, FK_FLIGHT_TABLE FROM FLIGHT_OUT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_OUT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM FLIGHT_OUT'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'select FO.* ,FT.FLIGHT_NAME'
      'from '
      '  Flight_out FO '
      'LEFT OUTER JOIN '
      '  FLIGHT_TABLE FT'
      'ON FO.FK_FLIGHT_TABLE=FT.SERIAL_NUMBER'
      'where '
      '  fo.serial_number= :Serial_number')
    ReadOnly = True
    UniDirectional = True
    Left = 824
    Top = 146
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Serial_number'
        ParamType = ptInput
        Value = nil
      end>
    object IntegerField11: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object StringField16: TStringField
      FieldName = 'MAWB'
      Required = True
      FixedChar = True
      Size = 15
    end
    object FindFLightOutSQLDATE_DEPART: TDateTimeField
      FieldName = 'DATE_DEPART'
    end
    object FindFLightOutSQLFLIGHT_NAME: TStringField
      FieldName = 'FLIGHT_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
  end
  object FA_ItemSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL'
      
        '  (SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_AREA' +
        ', SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_DOCUM' +
        'ENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBILL_S' +
        'ERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SENDER' +
        '_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME, CO' +
        'NSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIGNEE_' +
        'COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COUNT, ' +
        'PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRE' +
        'SS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_' +
        'NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, CONSI' +
        'GNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, CONS' +
        'IGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEYWORD' +
        ', IS_CLEARED, IS_HIGH)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEQUENCE_NUMBER, :HAWB_ID, :SHIPMENT_ORIGIN_' +
        'AREA, :SHIPMENT_ORIGIN_COUNTRY, :PIECES, :WEIGHT, :DESCRIPTION, ' +
        ':FK_DOCUMENT_MASTER_SERIAL, :FK_MOVEMENT_SERIAL, :PIECES_S, :FK_' +
        'AIRWAYBILL_SERIAL, :FK_FLIGHT_OUT_SERIAL, :SENDER_NAME, :SENDER_' +
        'ADDRESS, :SENDER_POST_CODE, :SENDER_CITY, :SENDER_COUNTRY_CODE, ' +
        ':CONSIGNEE_NAME, :CONSIGNEE_ADDRESS, :CONSIGNEE_POST_CODE, :CONS' +
        'IGNEE_CITY, :CONSIGNEE_COUNTRY_CODE, :FK_ITINERARY_SERIAL, :PACK' +
        'AGES_COUNT, :ITEMS_COUNT, :PAYMENT_METHOD, :SENDER_ADDRESS_1, :S' +
        'ENDER_ADDRESS_2, :SENDER_ADDRESS_3, :SENDER_DEVICE_TYPE, :SENDER' +
        '_DEVICE_DETAILS, :SENDER_ACCOUNT_NUMBER, :FK_SENDER_SERIAL, :VAL' +
        'UE_TYPE, :CONSIGNEE_ADDRESS_1, :CONSIGNEE_ADDRESS_2, :CONSIGNEE_' +
        'ADDRESS_3, :CONSIGNEE_DEVICE_TYPE, :CONSIGNEE_DEVICE_DETAILS, :D' +
        'ISTRICT_CODE, :TARIFF_CODE, :TARIFF_KEYWORD, :IS_CLEARED, :IS_HI' +
        'GH)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SEQUENCE_NUMBER = :SEQUENCE_NU' +
        'MBER, HAWB_ID = :HAWB_ID, SHIPMENT_ORIGIN_AREA = :SHIPMENT_ORIGI' +
        'N_AREA, SHIPMENT_ORIGIN_COUNTRY = :SHIPMENT_ORIGIN_COUNTRY, PIEC' +
        'ES = :PIECES, WEIGHT = :WEIGHT, DESCRIPTION = :DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL = :FK_DOCUMENT_MASTER_SERIAL, FK_MOVEMENT_' +
        'SERIAL = :FK_MOVEMENT_SERIAL, PIECES_S = :PIECES_S, FK_AIRWAYBIL' +
        'L_SERIAL = :FK_AIRWAYBILL_SERIAL, FK_FLIGHT_OUT_SERIAL = :FK_FLI' +
        'GHT_OUT_SERIAL, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS = :SE' +
        'NDER_ADDRESS, SENDER_POST_CODE = :SENDER_POST_CODE, SENDER_CITY ' +
        '= :SENDER_CITY, SENDER_COUNTRY_CODE = :SENDER_COUNTRY_CODE, CONS' +
        'IGNEE_NAME = :CONSIGNEE_NAME, CONSIGNEE_ADDRESS = :CONSIGNEE_ADD' +
        'RESS, CONSIGNEE_POST_CODE = :CONSIGNEE_POST_CODE, CONSIGNEE_CITY' +
        ' = :CONSIGNEE_CITY, CONSIGNEE_COUNTRY_CODE = :CONSIGNEE_COUNTRY_' +
        'CODE, FK_ITINERARY_SERIAL = :FK_ITINERARY_SERIAL, PACKAGES_COUNT' +
        ' = :PACKAGES_COUNT, ITEMS_COUNT = :ITEMS_COUNT, PAYMENT_METHOD =' +
        ' :PAYMENT_METHOD, SENDER_ADDRESS_1 = :SENDER_ADDRESS_1, SENDER_A' +
        'DDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :SENDER_ADDRESS' +
        '_3, SENDER_DEVICE_TYPE = :SENDER_DEVICE_TYPE, SENDER_DEVICE_DETA' +
        'ILS = :SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_NUMBER = :SENDER_AC' +
        'COUNT_NUMBER, FK_SENDER_SERIAL = :FK_SENDER_SERIAL, VALUE_TYPE =' +
        ' :VALUE_TYPE, CONSIGNEE_ADDRESS_1 = :CONSIGNEE_ADDRESS_1, CONSIG' +
        'NEE_ADDRESS_2 = :CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3 = :CON' +
        'SIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE = :CONSIGNEE_DEVICE_TYPE' +
        ', CONSIGNEE_DEVICE_DETAILS = :CONSIGNEE_DEVICE_DETAILS, DISTRICT' +
        '_CODE = :DISTRICT_CODE, TARIFF_CODE = :TARIFF_CODE, TARIFF_KEYWO' +
        'RD = :TARIFF_KEYWORD, IS_CLEARED = :IS_CLEARED, IS_HIGH = :IS_HI' +
        'GH'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_' +
        'AREA, SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBI' +
        'LL_SERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SE' +
        'NDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME' +
        ', CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIG' +
        'NEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COU' +
        'NT, PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_A' +
        'DDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCO' +
        'UNT_NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, C' +
        'ONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, ' +
        'CONSIGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEY' +
        'WORD, IS_CLEARED, IS_HIGH FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM FLIGHT_AIRWAYBILL'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    Transaction = ReadTrans
    SQL.Strings = (
      
        'select * from Flight_AIrwaybill_Item where FK_FA_SERIAL = :AirSe' +
        'rial;')
    DetailFields = 'FK_FLIGHT_OUT_SERIAL'
    ReadOnly = True
    UniDirectional = True
    Left = 664
    Top = 338
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AirSerial'
        Value = nil
      end>
    object FA_ItemSQLSEQUENCE: TIntegerField
      FieldName = 'SEQUENCE'
    end
    object FA_ItemSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object FA_ItemSQLPIECES: TIntegerField
      FieldName = 'PIECES'
    end
    object FA_ItemSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 80
    end
    object FA_ItemSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object FA_ItemSQLTARIFF_CODE: TStringField
      FieldName = 'TARIFF_CODE'
      Size = 17
    end
    object FA_ItemSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object FA_ItemSQLCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object FA_ItemSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
    end
    object FA_ItemSQLFK_FA_SERIAL: TIntegerField
      FieldName = 'FK_FA_SERIAL'
      Required = True
    end
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 872
    Top = 240
  end
  object MakeSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL'
      
        '  (SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_AREA' +
        ', SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_DOCUM' +
        'ENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBILL_S' +
        'ERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SENDER' +
        '_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME, CO' +
        'NSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIGNEE_' +
        'COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COUNT, ' +
        'PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRE' +
        'SS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_' +
        'NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, CONSI' +
        'GNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, CONS' +
        'IGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEYWORD' +
        ', IS_CLEARED, IS_HIGH)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEQUENCE_NUMBER, :HAWB_ID, :SHIPMENT_ORIGIN_' +
        'AREA, :SHIPMENT_ORIGIN_COUNTRY, :PIECES, :WEIGHT, :DESCRIPTION, ' +
        ':FK_DOCUMENT_MASTER_SERIAL, :FK_MOVEMENT_SERIAL, :PIECES_S, :FK_' +
        'AIRWAYBILL_SERIAL, :FK_FLIGHT_OUT_SERIAL, :SENDER_NAME, :SENDER_' +
        'ADDRESS, :SENDER_POST_CODE, :SENDER_CITY, :SENDER_COUNTRY_CODE, ' +
        ':CONSIGNEE_NAME, :CONSIGNEE_ADDRESS, :CONSIGNEE_POST_CODE, :CONS' +
        'IGNEE_CITY, :CONSIGNEE_COUNTRY_CODE, :FK_ITINERARY_SERIAL, :PACK' +
        'AGES_COUNT, :ITEMS_COUNT, :PAYMENT_METHOD, :SENDER_ADDRESS_1, :S' +
        'ENDER_ADDRESS_2, :SENDER_ADDRESS_3, :SENDER_DEVICE_TYPE, :SENDER' +
        '_DEVICE_DETAILS, :SENDER_ACCOUNT_NUMBER, :FK_SENDER_SERIAL, :VAL' +
        'UE_TYPE, :CONSIGNEE_ADDRESS_1, :CONSIGNEE_ADDRESS_2, :CONSIGNEE_' +
        'ADDRESS_3, :CONSIGNEE_DEVICE_TYPE, :CONSIGNEE_DEVICE_DETAILS, :D' +
        'ISTRICT_CODE, :TARIFF_CODE, :TARIFF_KEYWORD, :IS_CLEARED, :IS_HI' +
        'GH)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SEQUENCE_NUMBER = :SEQUENCE_NU' +
        'MBER, HAWB_ID = :HAWB_ID, SHIPMENT_ORIGIN_AREA = :SHIPMENT_ORIGI' +
        'N_AREA, SHIPMENT_ORIGIN_COUNTRY = :SHIPMENT_ORIGIN_COUNTRY, PIEC' +
        'ES = :PIECES, WEIGHT = :WEIGHT, DESCRIPTION = :DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL = :FK_DOCUMENT_MASTER_SERIAL, FK_MOVEMENT_' +
        'SERIAL = :FK_MOVEMENT_SERIAL, PIECES_S = :PIECES_S, FK_AIRWAYBIL' +
        'L_SERIAL = :FK_AIRWAYBILL_SERIAL, FK_FLIGHT_OUT_SERIAL = :FK_FLI' +
        'GHT_OUT_SERIAL, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS = :SE' +
        'NDER_ADDRESS, SENDER_POST_CODE = :SENDER_POST_CODE, SENDER_CITY ' +
        '= :SENDER_CITY, SENDER_COUNTRY_CODE = :SENDER_COUNTRY_CODE, CONS' +
        'IGNEE_NAME = :CONSIGNEE_NAME, CONSIGNEE_ADDRESS = :CONSIGNEE_ADD' +
        'RESS, CONSIGNEE_POST_CODE = :CONSIGNEE_POST_CODE, CONSIGNEE_CITY' +
        ' = :CONSIGNEE_CITY, CONSIGNEE_COUNTRY_CODE = :CONSIGNEE_COUNTRY_' +
        'CODE, FK_ITINERARY_SERIAL = :FK_ITINERARY_SERIAL, PACKAGES_COUNT' +
        ' = :PACKAGES_COUNT, ITEMS_COUNT = :ITEMS_COUNT, PAYMENT_METHOD =' +
        ' :PAYMENT_METHOD, SENDER_ADDRESS_1 = :SENDER_ADDRESS_1, SENDER_A' +
        'DDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :SENDER_ADDRESS' +
        '_3, SENDER_DEVICE_TYPE = :SENDER_DEVICE_TYPE, SENDER_DEVICE_DETA' +
        'ILS = :SENDER_DEVICE_DETAILS, SENDER_ACCOUNT_NUMBER = :SENDER_AC' +
        'COUNT_NUMBER, FK_SENDER_SERIAL = :FK_SENDER_SERIAL, VALUE_TYPE =' +
        ' :VALUE_TYPE, CONSIGNEE_ADDRESS_1 = :CONSIGNEE_ADDRESS_1, CONSIG' +
        'NEE_ADDRESS_2 = :CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3 = :CON' +
        'SIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE = :CONSIGNEE_DEVICE_TYPE' +
        ', CONSIGNEE_DEVICE_DETAILS = :CONSIGNEE_DEVICE_DETAILS, DISTRICT' +
        '_CODE = :DISTRICT_CODE, TARIFF_CODE = :TARIFF_CODE, TARIFF_KEYWO' +
        'RD = :TARIFF_KEYWORD, IS_CLEARED = :IS_CLEARED, IS_HIGH = :IS_HI' +
        'GH'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_' +
        'AREA, SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, FK_AIRWAYBI' +
        'LL_SERIAL, FK_FLIGHT_OUT_SERIAL, SENDER_NAME, SENDER_ADDRESS, SE' +
        'NDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE, CONSIGNEE_NAME' +
        ', CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGNEE_CITY, CONSIG' +
        'NEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_COUNT, ITEMS_COU' +
        'NT, PAYMENT_METHOD, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_A' +
        'DDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, SENDER_ACCO' +
        'UNT_NUMBER, FK_SENDER_SERIAL, VALUE_TYPE, CONSIGNEE_ADDRESS_1, C' +
        'ONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, CONSIGNEE_DEVICE_TYPE, ' +
        'CONSIGNEE_DEVICE_DETAILS, DISTRICT_CODE, TARIFF_CODE, TARIFF_KEY' +
        'WORD, IS_CLEARED, IS_HIGH FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM FLIGHT_AIRWAYBILL'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    ReadOnly = True
    UniDirectional = True
    Left = 1040
    Top = 282
  end
end
