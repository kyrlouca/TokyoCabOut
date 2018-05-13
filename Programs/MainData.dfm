object MainDataDML: TMainDataDML
  OldCreateOrder = False
  Left = 630
  Top = 168
  Height = 600
  Width = 841
  object HawbSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Hawb Where FK_mawb_refer_number = :MawbReference;')
    Left = 40
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MawbReference'
        ParamType = ptInput
        Value = 0
      end>
    object HawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Origin = 'DATABASEMAIN.HAWB.HAB_ID'
      Size = 10
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Origin = 'DATABASEMAIN.HAWB.FK_MAWB_REFER_NUMBER'
    end
    object HawbSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Origin = 'DATABASEMAIN.HAWB.FK_CLEARING_STATE'
      Size = 1
    end
    object HawbSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Origin = 'DATABASEMAIN.HAWB.FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.HAWB.DESCRIPTION'
      Size = 200
    end
    object HawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Origin = 'DATABASEMAIN.HAWB.FK_CUSTOMER_CODE'
    end
    object HawbSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      Origin = 'DATABASEMAIN.HAWB.WEIGHT'
    end
    object HawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Origin = 'DATABASEMAIN.HAWB.FK_CURRENCY'
      Size = 3
    end
    object HawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Origin = 'DATABASEMAIN.HAWB.EXCHANGE_RATE'
    end
    object HawbSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.FREIGHT_AMOUNT'
    end
    object HawbSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Origin = 'DATABASEMAIN.HAWB.FK_OTHER_CHARGE_CODE'
      Size = 6
    end
    object HawbSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.OTHER_CHARGE_AMOUNT'
    end
    object HawbSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Origin = 'DATABASEMAIN.HAWB.OTHER_CHARGE_PAID'
      Size = 1
    end
    object HawbSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.STAMPS_AMOUNT'
    end
    object HawbSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
      Origin = 'DATABASEMAIN.HAWB.EXPS_NON_INVOICABLE'
    end
    object HawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'DATABASEMAIN.HAWB.SERIAL_NUMBER'
    end
    object HawbSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Origin = 'DATABASEMAIN.HAWB.INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
      Origin = 'DATABASEMAIN.HAWB.COURIER_INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
      Origin = 'DATABASEMAIN.HAWB.COURIER_INVOICE_VALUE'
    end
    object HawbSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      Origin = 'DATABASEMAIN.HAWB.HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      Origin = 'DATABASEMAIN.HAWB.FK_SEC_MAWB_REFER_NUMBER'
    end
    object HawbSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
      Origin = 'DATABASEMAIN.HAWB.EDE_STORAGE_EXPENSES'
    end
    object HawbSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
      Origin = 'DATABASEMAIN.HAWB.EDE_DELIVERY_EXPENSES'
    end
    object HawbSQLDATE_INVOICED: TDateTimeField
      FieldName = 'DATE_INVOICED'
      Origin = 'DATABASEMAIN.HAWB.DATE_INVOICED'
    end
    object HawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Origin = 'DATABASEMAIN.HAWB.SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Origin = 'DATABASEMAIN.HAWB.NUM_OF_PIECES_ARRIVED'
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
      Origin = 'DATABASEMAIN.HAWB.TOTAL_NUM_OF_PIECES'
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Origin = 'DATABASEMAIN.HAWB.FK_CLEARANCE_TYPE'
      Size = 12
    end
    object HawbSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Origin = 'DATABASEMAIN.HAWB.FK_DELIVERY_TERM'
      Size = 3
    end
    object HawbSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Origin = 'DATABASEMAIN.HAWB.ORIGIN_STATION'
      Size = 12
    end
    object HawbSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Origin = 'DATABASEMAIN.HAWB.EC2_NUMBER_DATE'
      Size = 40
    end
    object HawbSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Origin = 'DATABASEMAIN.HAWB.SENDERS_INV_NO'
      Size = 50
    end
    object HawbSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
      Origin = 'DATABASEMAIN.HAWB.NUMBER_OF_PARCELS'
    end
    object HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      Origin = 'DATABASEMAIN.HAWB.FK_CUSTOMER_ACCOUNT'
    end
    object HawbSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      Origin = 'DATABASEMAIN.HAWB.DISTRICT'
      FixedChar = True
      Size = 3
    end
    object HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.DELIVERY_ORDER_AMOUNT'
    end
    object HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.OTHER2_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      Origin = 'DATABASEMAIN.HAWB.FK_OTHER2_CHARGE_CODE'
      FixedChar = True
      Size = 6
    end
    object HawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Origin = 'DATABASEMAIN.HAWB.POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
      Origin = 'DATABASEMAIN.HAWB.TOTAL_DUTIES'
    end
    object HawbSQLCLEARANCE_WAITING_CODE: TStringField
      FieldName = 'CLEARANCE_WAITING_CODE'
      Origin = 'DATABASEMAIN.HAWB.CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 3
    end
    object HawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      Origin = 'DATABASEMAIN.HAWB.CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object HawbSQLDATE_CLEARED: TDateTimeField
      FieldName = 'DATE_CLEARED'
      Origin = 'DATABASEMAIN.HAWB.DATE_CLEARED'
    end
    object HawbSQLDATE_REGISTERED: TDateTimeField
      FieldName = 'DATE_REGISTERED'
      Origin = 'DATABASEMAIN.HAWB.DATE_REGISTERED'
    end
    object HawbSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
      Origin = 'DATABASEMAIN.HAWB.FACTOR'
    end
    object HawbSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Origin = 'DATABASEMAIN.HAWB.FK_COUNTRY_ORIGIN'
    end
    object HawbSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      Origin = 'DATABASEMAIN.HAWB.INVOICABLE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      Origin = 'DATABASEMAIN.HAWB.TOTAL_CHARGES'
    end
    object HawbSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'DATABASEMAIN.HAWB.CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Origin = 'DATABASEMAIN.HAWB.EDE_COMMENTS'
      Size = 100
    end
    object HawbSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      Origin = 'DATABASEMAIN.HAWB.FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Origin = 'DATABASEMAIN.HAWB.SIGNATORY_NAME'
      FixedChar = True
      Size = 50
    end
    object HawbSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      Origin = 'DATABASEMAIN.HAWB.XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object HawbSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Origin = 'DATABASEMAIN.HAWB.CUSTOMS_VALUE'
    end
    object HawbSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_TRL'
    end
    object HawbSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_VAT'
    end
    object HawbSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_EXCISE'
    end
    object HawbSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_IMPORT'
    end
    object HawbSQLINVOICE_TOTAL: TFloatField
      DisplayLabel = 'INVOICE_TOTALy'
      FieldName = 'INVOICE_TOTAL'
      Origin = 'DATABASEMAIN.HAWB.INVOICE_TOTAL'
    end
    object HawbSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      Origin = 'DATABASEMAIN.HAWB.SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      Origin = 'DATABASEMAIN.HAWB.SENDER_ADDRESS_1'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      Origin = 'DATABASEMAIN.HAWB.SENDER_ADDRESS_2'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      Origin = 'DATABASEMAIN.HAWB.SENDER_ADDRESS_3'
      FixedChar = True
      Size = 60
    end
    object HawbSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      Origin = 'DATABASEMAIN.HAWB.IS_PRIVATE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLDELIVERY_ORDER_ID: TStringField
      FieldName = 'DELIVERY_ORDER_ID'
      Origin = 'DATABASEMAIN.HAWB.DELIVERY_ORDER_ID'
      FixedChar = True
      Size = 10
    end
    object HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER4_CHARGE_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.OTHER4_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      Origin = 'DATABASEMAIN.HAWB.FK_OTHER4_CHARGE'
      FixedChar = True
      Size = 3
    end
    object HawbSQLIS_PAID: TStringField
      FieldName = 'IS_PAID'
      Origin = 'DATABASEMAIN.HAWB.IS_PAID'
      FixedChar = True
      Size = 1
    end
  end
  object MawbSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Mawb'
      'Where Mawb_id= :TheMawbID')
    Left = 32
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'TheMawbID'
        ParamType = ptInput
        Value = ''
      end>
    object MawbSQLREFERENCE_YEAR: TSmallintField
      FieldName = 'REFERENCE_YEAR'
      Origin = 'DATABASEMAIN.MAWB.REFERENCE_YEAR'
    end
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.REFERENCE_NUMBER'
    end
    object MawbSQLDATE_ARRIVED: TDateTimeField
      FieldName = 'DATE_ARRIVED'
      Origin = 'DATABASEMAIN.MAWB.DATE_ARRIVED'
    end
    object MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField
      FieldName = 'FK_COUNTRY_CONSIGNEE'
      Origin = 'DATABASEMAIN.MAWB.FK_COUNTRY_CONSIGNEE'
    end
    object MawbSQLFK_PORT_IMPORTATION: TIntegerField
      FieldName = 'FK_PORT_IMPORTATION'
      Origin = 'DATABASEMAIN.MAWB.FK_PORT_IMPORTATION'
    end
    object MawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Origin = 'DATABASEMAIN.MAWB.SIGNATORY_NAME'
      Size = 50
    end
    object MawbSQLFORM_DATE: TDateTimeField
      FieldName = 'FORM_DATE'
      Origin = 'DATABASEMAIN.MAWB.FORM_DATE'
    end
    object MawbSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.FLIGHT_NUMBER'
      Size = 10
    end
    object MawbSQLPASSED: TStringField
      FieldName = 'PASSED'
      Origin = 'DATABASEMAIN.MAWB.PASSED'
      FixedChar = True
      Size = 1
    end
    object MawbSQLROTATION_NUMBER: TIntegerField
      FieldName = 'ROTATION_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.ROTATION_NUMBER'
    end
    object MawbSQLROTATION_YEAR: TSmallintField
      FieldName = 'ROTATION_YEAR'
      Origin = 'DATABASEMAIN.MAWB.ROTATION_YEAR'
    end
    object MawbSQLFK_PORT_CLEARING: TIntegerField
      FieldName = 'FK_PORT_CLEARING'
      Origin = 'DATABASEMAIN.MAWB.FK_PORT_CLEARING'
    end
    object MawbSQLGOODS_NUMBER: TIntegerField
      FieldName = 'GOODS_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.GOODS_NUMBER'
    end
    object MawbSQLGOODS_DESCRIPTION: TStringField
      FieldName = 'GOODS_DESCRIPTION'
      Origin = 'DATABASEMAIN.MAWB.GOODS_DESCRIPTION'
    end
    object MawbSQLCBOOK_NUMBER: TStringField
      FieldName = 'CBOOK_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.CBOOK_NUMBER'
      Size = 10
    end
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Origin = 'DATABASEMAIN.MAWB.MAWB_ID'
      Size = 15
    end
    object MawbSQLINVOICED: TStringField
      FieldName = 'INVOICED'
      Origin = 'DATABASEMAIN.MAWB.INVOICED'
      FixedChar = True
      Size = 1
    end
    object MawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Origin = 'DATABASEMAIN.MAWB.SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_HOURS'
      Origin = 'DATABASEMAIN.MAWB.CUSTOMS_OVERTIME_HOURS'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_RATE'
      Origin = 'DATABASEMAIN.MAWB.CUSTOMS_OVERTIME_RATE'
    end
    object MawbSQLSTORAGE_EXPENSES: TFloatField
      FieldName = 'STORAGE_EXPENSES'
      Origin = 'DATABASEMAIN.MAWB.STORAGE_EXPENSES'
    end
    object MawbSQLDELIVERY_EXPENSES: TFloatField
      FieldName = 'DELIVERY_EXPENSES'
      Origin = 'DATABASEMAIN.MAWB.DELIVERY_EXPENSES'
    end
    object MawbSQLAMOUNT_NOT_INVOICED: TFloatField
      FieldName = 'AMOUNT_NOT_INVOICED'
      Origin = 'DATABASEMAIN.MAWB.AMOUNT_NOT_INVOICED'
    end
    object MawbSQLAMOUNT_INVOICED: TFloatField
      FieldName = 'AMOUNT_INVOICED'
      Origin = 'DATABASEMAIN.MAWB.AMOUNT_INVOICED'
    end
    object MawbSQLDATE_PASSED: TDateTimeField
      FieldName = 'DATE_PASSED'
      Origin = 'DATABASEMAIN.MAWB.DATE_PASSED'
    end
    object MawbSQLGOODS_WEIGHT: TIntegerField
      FieldName = 'GOODS_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.GOODS_WEIGHT'
    end
    object MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField
      FieldName = 'HAWBS_CLEARED_FIRST_TIME'
      Origin = 'DATABASEMAIN.MAWB.HAWBS_CLEARED_FIRST_TIME'
    end
    object MawbSQLHAWBS_IN_MAWB: TIntegerField
      FieldName = 'HAWBS_IN_MAWB'
      Origin = 'DATABASEMAIN.MAWB.HAWBS_IN_MAWB'
    end
    object MawbSQLDOCS_NUMBER: TIntegerField
      FieldName = 'DOCS_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.DOCS_NUMBER'
    end
    object MawbSQLDOCS_WEIGHT: TFloatField
      FieldName = 'DOCS_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.DOCS_WEIGHT'
    end
    object MawbSQLHIGH_VALUE_NUMBER: TIntegerField
      FieldName = 'HIGH_VALUE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.HIGH_VALUE_NUMBER'
    end
    object MawbSQLHIGH_VALUE_WEIGHT: TFloatField
      FieldName = 'HIGH_VALUE_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.HIGH_VALUE_WEIGHT'
    end
    object MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField
      FieldName = 'MEDIUM_VALUE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.MEDIUM_VALUE_NUMBER'
    end
    object MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField
      FieldName = 'MEDIUM_VALUE_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.MEDIUM_VALUE_WEIGHT'
    end
    object MawbSQLLOW_VALUE_NUMBER: TIntegerField
      FieldName = 'LOW_VALUE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.LOW_VALUE_NUMBER'
    end
    object MawbSQLLOW_VALUE_WEIGHT: TFloatField
      FieldName = 'LOW_VALUE_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.LOW_VALUE_WEIGHT'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField
      FieldName = 'CUSTOMS_OVERTIME_RATE_TYPE'
      Origin = 'DATABASEMAIN.MAWB.CUSTOMS_OVERTIME_RATE_TYPE'
      FixedChar = True
      Size = 3
    end
    object MawbSQLXML_CONSOLIDATED_ID: TStringField
      FieldName = 'XML_CONSOLIDATED_ID'
      Origin = 'DATABASEMAIN.MAWB.XML_CONSOLIDATED_ID'
      FixedChar = True
      Size = 13
    end
  end
  object AllHawbItemSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Hawb_item where fk_hawb_serial = :TheHawbSerial')
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TheHawbSerial'
        ParamType = ptInput
        Value = 0
      end>
    object AllHawbItemSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'DATABASEMAIN.HAWB_ITEM.SERIAL_NUMBER'
    end
    object AllHawbItemSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_HAWB_SERIAL'
    end
    object AllHawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_COUNTRY_ORIGIN'
    end
    object AllHawbItemSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DESCRIPTION'
      Size = 40
    end
    object AllHawbItemSQLFK_RELIEF_CODE: TStringField
      FieldName = 'FK_RELIEF_CODE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_RELIEF_CODE'
      FixedChar = True
      Size = 5
    end
    object AllHawbItemSQLFK_IMPORT_TYPE: TStringField
      FieldName = 'FK_IMPORT_TYPE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_IMPORT_TYPE'
      Size = 1
    end
    object AllHawbItemSQLINVOICE_VALUE: TFloatField
      FieldName = 'INVOICE_VALUE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.INVOICE_VALUE'
    end
    object AllHawbItemSQLDUTY_TYPE: TStringField
      FieldName = 'DUTY_TYPE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_TYPE'
      FixedChar = True
      Size = 1
    end
    object AllHawbItemSQLTARIFF_DESCRIPTION: TStringField
      FieldName = 'TARIFF_DESCRIPTION'
      Origin = 'DATABASEMAIN.HAWB_ITEM.TARIFF_DESCRIPTION'
      Size = 50
    end
    object AllHawbItemSQLNET_QUANTITY: TIntegerField
      FieldName = 'NET_QUANTITY'
      Origin = 'DATABASEMAIN.HAWB_ITEM.NET_QUANTITY'
    end
    object AllHawbItemSQLIMPORT_DUTY_RATE: TFloatField
      FieldName = 'IMPORT_DUTY_RATE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.IMPORT_DUTY_RATE'
    end
    object AllHawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField
      FieldName = 'RELIEVED_IMPORT_DUTY'
      Origin = 'DATABASEMAIN.HAWB_ITEM.RELIEVED_IMPORT_DUTY'
    end
    object AllHawbItemSQLEXCISE_DUTY_RATE: TFloatField
      FieldName = 'EXCISE_DUTY_RATE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.EXCISE_DUTY_RATE'
    end
    object AllHawbItemSQLEXCISE_RELIEVED: TFloatField
      FieldName = 'EXCISE_RELIEVED'
      Origin = 'DATABASEMAIN.HAWB_ITEM.EXCISE_RELIEVED'
    end
    object AllHawbItemSQLTRL_RATE: TFloatField
      FieldName = 'TRL_RATE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.TRL_RATE'
    end
    object AllHawbItemSQLTRL_RELEIVED: TFloatField
      FieldName = 'TRL_RELEIVED'
      Origin = 'DATABASEMAIN.HAWB_ITEM.TRL_RELEIVED'
    end
    object AllHawbItemSQLVAT_RATE: TFloatField
      FieldName = 'VAT_RATE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.VAT_RATE'
    end
    object AllHawbItemSQLVAT_RELEIVED: TFloatField
      FieldName = 'VAT_RELEIVED'
      Origin = 'DATABASEMAIN.HAWB_ITEM.VAT_RELEIVED'
    end
    object AllHawbItemSQLCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.CURRENCY_RATE'
    end
    object AllHawbItemSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'DATABASEMAIN.HAWB_ITEM.CURRENCY'
      FixedChar = True
      Size = 3
    end
    object AllHawbItemSQLFK_MAWB: TIntegerField
      FieldName = 'FK_MAWB'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_MAWB'
    end
    object AllHawbItemSQLFK_VAT_CODE: TIntegerField
      FieldName = 'FK_VAT_CODE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_VAT_CODE'
    end
    object AllHawbItemSQLFK_TARIFF_C_CODE: TStringField
      FieldName = 'FK_TARIFF_C_CODE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_TARIFF_C_CODE'
      FixedChar = True
      Size = 17
    end
    object AllHawbItemSQLFK_TARIFF_CODE: TStringField
      FieldName = 'FK_TARIFF_CODE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_TARIFF_CODE'
      Size = 17
    end
    object AllHawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField
      FieldName = 'IMPORT_DUTY_RATE_UNIT'
      Origin = 'DATABASEMAIN.HAWB_ITEM.IMPORT_DUTY_RATE_UNIT'
      FixedChar = True
      Size = 12
    end
    object AllHawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField
      FieldName = 'IMPORT_DUTY_RATE_QUANT'
      Origin = 'DATABASEMAIN.HAWB_ITEM.IMPORT_DUTY_RATE_QUANT'
    end
    object AllHawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField
      FieldName = 'IMPORT_DUTY_RATE_BASE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.IMPORT_DUTY_RATE_BASE'
    end
    object AllHawbItemSQLFK_EXCISE_CODE: TStringField
      FieldName = 'FK_EXCISE_CODE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_EXCISE_CODE'
      FixedChar = True
      Size = 5
    end
    object AllHawbItemSQLEURO1: TStringField
      FieldName = 'EURO1'
      Origin = 'DATABASEMAIN.HAWB_ITEM.EURO1'
      FixedChar = True
    end
    object AllHawbItemSQLEURO2: TStringField
      FieldName = 'EURO2'
      Origin = 'DATABASEMAIN.HAWB_ITEM.EURO2'
      FixedChar = True
    end
    object AllHawbItemSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Origin = 'DATABASEMAIN.HAWB_ITEM.POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object AllHawbItemSQLEURO_PENDING: TStringField
      FieldName = 'EURO_PENDING'
      Origin = 'DATABASEMAIN.HAWB_ITEM.EURO_PENDING'
      FixedChar = True
      Size = 1
    end
    object AllHawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField
      FieldName = 'FK_SENDER_INVOICE_SERIAL'
      Origin = 'DATABASEMAIN.HAWB_ITEM.FK_SENDER_INVOICE_SERIAL'
    end
    object AllHawbItemSQLMULTI_ITEMS_INVOICE: TStringField
      FieldName = 'MULTI_ITEMS_INVOICE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.MULTI_ITEMS_INVOICE'
      FixedChar = True
      Size = 1
    end
    object AllHawbItemSQLINVOICE_LINE: TIntegerField
      FieldName = 'INVOICE_LINE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.INVOICE_LINE'
    end
    object AllHawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB_ITEM.PRE_DISCOUNT_AMOUNT'
    end
    object AllHawbItemSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Origin = 'DATABASEMAIN.HAWB_ITEM.CUSTOMS_VALUE'
    end
    object AllHawbItemSQLDUTY_IMPORT_PAY: TFloatField
      FieldName = 'DUTY_IMPORT_PAY'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_IMPORT_PAY'
    end
    object AllHawbItemSQLDUTY_TRL_PAY: TFloatField
      FieldName = 'DUTY_TRL_PAY'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_TRL_PAY'
    end
    object AllHawbItemSQLDUTY_EXCISE_PAY: TFloatField
      FieldName = 'DUTY_EXCISE_PAY'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_EXCISE_PAY'
    end
    object AllHawbItemSQLDUTY_VAT_PAY: TFloatField
      FieldName = 'DUTY_VAT_PAY'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_VAT_PAY'
    end
    object AllHawbItemSQLDUTY_IMPORT_TOTAL: TFloatField
      FieldName = 'DUTY_IMPORT_TOTAL'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_IMPORT_TOTAL'
    end
    object AllHawbItemSQLDUTY_EXCISE_TOTAL: TFloatField
      FieldName = 'DUTY_EXCISE_TOTAL'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_EXCISE_TOTAL'
    end
    object AllHawbItemSQLDUTY_TRL_TOTAL: TFloatField
      FieldName = 'DUTY_TRL_TOTAL'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_TRL_TOTAL'
    end
    object AllHawbItemSQLDUTY_VAT_TOTAL: TFloatField
      FieldName = 'DUTY_VAT_TOTAL'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_VAT_TOTAL'
    end
    object AllHawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField
      FieldName = 'TOTAL_VALUE_FOR_VAT'
      Origin = 'DATABASEMAIN.HAWB_ITEM.TOTAL_VALUE_FOR_VAT'
    end
    object AllHawbItemSQLDUTY_TOTAL_CHARGES: TFloatField
      FieldName = 'DUTY_TOTAL_CHARGES'
      Origin = 'DATABASEMAIN.HAWB_ITEM.DUTY_TOTAL_CHARGES'
    end
    object AllHawbItemSQLWEIGHT_NET: TFloatField
      FieldName = 'WEIGHT_NET'
      Origin = 'DATABASEMAIN.HAWB_ITEM.WEIGHT_NET'
    end
  end
  object HawbByIDSQL: TQuery
    OnCalcFields = HawbByIDSQLCalcFields
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Hawb Where hab_id = :TheHawbID')
    Left = 200
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'TheHawbID'
        ParamType = ptInput
        Value = '0'
      end>
    object HawbByIDSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Origin = 'DATABASEMAIN.HAWB.HAB_ID'
      Size = 10
    end
    object HawbByIDSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Origin = 'DATABASEMAIN.HAWB.FK_MAWB_REFER_NUMBER'
    end
    object HawbByIDSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Origin = 'DATABASEMAIN.HAWB.FK_CLEARING_STATE'
      Size = 1
    end
    object HawbByIDSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Origin = 'DATABASEMAIN.HAWB.FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbByIDSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.HAWB.DESCRIPTION'
      Size = 200
    end
    object HawbByIDSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Origin = 'DATABASEMAIN.HAWB.FK_CUSTOMER_CODE'
    end
    object HawbByIDSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      Origin = 'DATABASEMAIN.HAWB.WEIGHT'
    end
    object HawbByIDSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Origin = 'DATABASEMAIN.HAWB.FK_CURRENCY'
      Size = 3
    end
    object HawbByIDSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Origin = 'DATABASEMAIN.HAWB.EXCHANGE_RATE'
    end
    object HawbByIDSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.FREIGHT_AMOUNT'
    end
    object HawbByIDSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Origin = 'DATABASEMAIN.HAWB.FK_OTHER_CHARGE_CODE'
      Size = 6
    end
    object HawbByIDSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.OTHER_CHARGE_AMOUNT'
    end
    object HawbByIDSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Origin = 'DATABASEMAIN.HAWB.OTHER_CHARGE_PAID'
      Size = 1
    end
    object HawbByIDSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.STAMPS_AMOUNT'
    end
    object HawbByIDSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
      Origin = 'DATABASEMAIN.HAWB.EXPS_NON_INVOICABLE'
    end
    object HawbByIDSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'DATABASEMAIN.HAWB.SERIAL_NUMBER'
    end
    object HawbByIDSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Origin = 'DATABASEMAIN.HAWB.INVOICE_SERIAL'
    end
    object HawbByIDSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
      Origin = 'DATABASEMAIN.HAWB.COURIER_INVOICE_SERIAL'
    end
    object HawbByIDSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
      Origin = 'DATABASEMAIN.HAWB.COURIER_INVOICE_VALUE'
    end
    object HawbByIDSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      Origin = 'DATABASEMAIN.HAWB.HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object HawbByIDSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      Origin = 'DATABASEMAIN.HAWB.FK_SEC_MAWB_REFER_NUMBER'
    end
    object HawbByIDSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
      Origin = 'DATABASEMAIN.HAWB.EDE_STORAGE_EXPENSES'
    end
    object HawbByIDSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
      Origin = 'DATABASEMAIN.HAWB.EDE_DELIVERY_EXPENSES'
    end
    object HawbByIDSQLDATE_INVOICED: TDateTimeField
      FieldName = 'DATE_INVOICED'
      Origin = 'DATABASEMAIN.HAWB.DATE_INVOICED'
    end
    object HawbByIDSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Origin = 'DATABASEMAIN.HAWB.SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object HawbByIDSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Origin = 'DATABASEMAIN.HAWB.NUM_OF_PIECES_ARRIVED'
    end
    object HawbByIDSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
      Origin = 'DATABASEMAIN.HAWB.TOTAL_NUM_OF_PIECES'
    end
    object HawbByIDSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Origin = 'DATABASEMAIN.HAWB.FK_CLEARANCE_TYPE'
      Size = 12
    end
    object HawbByIDSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Origin = 'DATABASEMAIN.HAWB.FK_DELIVERY_TERM'
      Size = 3
    end
    object HawbByIDSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Origin = 'DATABASEMAIN.HAWB.ORIGIN_STATION'
      Size = 12
    end
    object HawbByIDSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Origin = 'DATABASEMAIN.HAWB.EC2_NUMBER_DATE'
      Size = 40
    end
    object HawbByIDSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Origin = 'DATABASEMAIN.HAWB.SENDERS_INV_NO'
      Size = 50
    end
    object HawbByIDSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
      Origin = 'DATABASEMAIN.HAWB.NUMBER_OF_PARCELS'
    end
    object HawbByIDSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      Origin = 'DATABASEMAIN.HAWB.FK_CUSTOMER_ACCOUNT'
    end
    object HawbByIDSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      Origin = 'DATABASEMAIN.HAWB.DISTRICT'
      FixedChar = True
      Size = 3
    end
    object HawbByIDSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.DELIVERY_ORDER_AMOUNT'
    end
    object HawbByIDSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      Origin = 'DATABASEMAIN.HAWB.OTHER2_CHARGE_AMOUNT'
    end
    object HawbByIDSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      Origin = 'DATABASEMAIN.HAWB.FK_OTHER2_CHARGE_CODE'
      FixedChar = True
      Size = 6
    end
    object HawbByIDSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Origin = 'DATABASEMAIN.HAWB.POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object HawbByIDSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
      Origin = 'DATABASEMAIN.HAWB.TOTAL_DUTIES'
    end
    object HawbByIDSQLCLEARANCE_WAITING_CODE: TStringField
      FieldName = 'CLEARANCE_WAITING_CODE'
      Origin = 'DATABASEMAIN.HAWB.CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 3
    end
    object HawbByIDSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      Origin = 'DATABASEMAIN.HAWB.CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object HawbByIDSQLDATE_CLEARED: TDateTimeField
      FieldName = 'DATE_CLEARED'
      Origin = 'DATABASEMAIN.HAWB.DATE_CLEARED'
    end
    object HawbByIDSQLDATE_REGISTERED: TDateTimeField
      FieldName = 'DATE_REGISTERED'
      Origin = 'DATABASEMAIN.HAWB.DATE_REGISTERED'
    end
    object HawbByIDSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
      Origin = 'DATABASEMAIN.HAWB.FACTOR'
    end
    object HawbByIDSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Origin = 'DATABASEMAIN.HAWB.FK_COUNTRY_ORIGIN'
    end
    object HawbByIDSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      Origin = 'DATABASEMAIN.HAWB.INVOICABLE'
      FixedChar = True
      Size = 1
    end
    object HawbByIDSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      Origin = 'DATABASEMAIN.HAWB.TOTAL_CHARGES'
    end
    object HawbByIDSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'DATABASEMAIN.HAWB.CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbByIDSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Origin = 'DATABASEMAIN.HAWB.EDE_COMMENTS'
      Size = 100
    end
    object HawbByIDSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      Origin = 'DATABASEMAIN.HAWB.FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbByIDSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Origin = 'DATABASEMAIN.HAWB.SIGNATORY_NAME'
      FixedChar = True
      Size = 50
    end
    object HawbByIDSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      Origin = 'DATABASEMAIN.HAWB.XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object HawbByIDSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      Origin = 'DATABASEMAIN.HAWB.SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object HawbByIDSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      Origin = 'DATABASEMAIN.HAWB.SENDER_ADDRESS_1'
      FixedChar = True
      Size = 60
    end
    object HawbByIDSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      Origin = 'DATABASEMAIN.HAWB.SENDER_ADDRESS_2'
      FixedChar = True
      Size = 60
    end
    object HawbByIDSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      Origin = 'DATABASEMAIN.HAWB.SENDER_ADDRESS_3'
      FixedChar = True
      Size = 60
    end
    object HawbByIDSQLSenderAddressAll: TStringField
      FieldKind = fkCalculated
      FieldName = 'SenderAddressAll'
      Size = 180
      Calculated = True
    end
    object HawbByIDSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      Origin = 'DATABASEMAIN.HAWB.IS_PRIVATE'
      FixedChar = True
      Size = 1
    end
    object HawbByIDSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Origin = 'DATABASEMAIN.HAWB.CUSTOMS_VALUE'
    end
    object HawbByIDSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_TRL'
    end
    object HawbByIDSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_VAT'
    end
    object HawbByIDSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_EXCISE'
    end
    object HawbByIDSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
      Origin = 'DATABASEMAIN.HAWB.CHARGE_IMPORT'
    end
    object HawbByIDSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
      Origin = 'DATABASEMAIN.HAWB.INVOICE_TOTAL'
    end
  end
  object MawbByKeySQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Mawb where Reference_number= :TheMawbSerial')
    Left = 200
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TheMawbSerial'
        ParamType = ptInput
        Value = 0
      end>
    object MawbByKeySQLREFERENCE_YEAR: TSmallintField
      FieldName = 'REFERENCE_YEAR'
      Origin = 'DATABASEMAIN.MAWB.REFERENCE_YEAR'
    end
    object MawbByKeySQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.REFERENCE_NUMBER'
    end
    object MawbByKeySQLDATE_ARRIVED: TDateTimeField
      FieldName = 'DATE_ARRIVED'
      Origin = 'DATABASEMAIN.MAWB.DATE_ARRIVED'
    end
    object MawbByKeySQLFK_COUNTRY_CONSIGNEE: TIntegerField
      FieldName = 'FK_COUNTRY_CONSIGNEE'
      Origin = 'DATABASEMAIN.MAWB.FK_COUNTRY_CONSIGNEE'
    end
    object MawbByKeySQLFK_PORT_IMPORTATION: TIntegerField
      FieldName = 'FK_PORT_IMPORTATION'
      Origin = 'DATABASEMAIN.MAWB.FK_PORT_IMPORTATION'
    end
    object MawbByKeySQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Origin = 'DATABASEMAIN.MAWB.SIGNATORY_NAME'
      Size = 50
    end
    object MawbByKeySQLFORM_DATE: TDateTimeField
      FieldName = 'FORM_DATE'
      Origin = 'DATABASEMAIN.MAWB.FORM_DATE'
    end
    object MawbByKeySQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.FLIGHT_NUMBER'
      Size = 10
    end
    object MawbByKeySQLPASSED: TStringField
      FieldName = 'PASSED'
      Origin = 'DATABASEMAIN.MAWB.PASSED'
      FixedChar = True
      Size = 1
    end
    object MawbByKeySQLROTATION_NUMBER: TIntegerField
      FieldName = 'ROTATION_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.ROTATION_NUMBER'
    end
    object MawbByKeySQLROTATION_YEAR: TSmallintField
      FieldName = 'ROTATION_YEAR'
      Origin = 'DATABASEMAIN.MAWB.ROTATION_YEAR'
    end
    object MawbByKeySQLFK_PORT_CLEARING: TIntegerField
      FieldName = 'FK_PORT_CLEARING'
      Origin = 'DATABASEMAIN.MAWB.FK_PORT_CLEARING'
    end
    object MawbByKeySQLGOODS_NUMBER: TIntegerField
      FieldName = 'GOODS_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.GOODS_NUMBER'
    end
    object MawbByKeySQLGOODS_DESCRIPTION: TStringField
      FieldName = 'GOODS_DESCRIPTION'
      Origin = 'DATABASEMAIN.MAWB.GOODS_DESCRIPTION'
    end
    object MawbByKeySQLCBOOK_NUMBER: TStringField
      FieldName = 'CBOOK_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.CBOOK_NUMBER'
      Size = 10
    end
    object MawbByKeySQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Origin = 'DATABASEMAIN.MAWB.MAWB_ID'
      Size = 15
    end
    object MawbByKeySQLINVOICED: TStringField
      FieldName = 'INVOICED'
      Origin = 'DATABASEMAIN.MAWB.INVOICED'
      FixedChar = True
      Size = 1
    end
    object MawbByKeySQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Origin = 'DATABASEMAIN.MAWB.SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object MawbByKeySQLCUSTOMS_OVERTIME_HOURS: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_HOURS'
      Origin = 'DATABASEMAIN.MAWB.CUSTOMS_OVERTIME_HOURS'
    end
    object MawbByKeySQLCUSTOMS_OVERTIME_RATE: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_RATE'
      Origin = 'DATABASEMAIN.MAWB.CUSTOMS_OVERTIME_RATE'
    end
    object MawbByKeySQLSTORAGE_EXPENSES: TFloatField
      FieldName = 'STORAGE_EXPENSES'
      Origin = 'DATABASEMAIN.MAWB.STORAGE_EXPENSES'
    end
    object MawbByKeySQLDELIVERY_EXPENSES: TFloatField
      FieldName = 'DELIVERY_EXPENSES'
      Origin = 'DATABASEMAIN.MAWB.DELIVERY_EXPENSES'
    end
    object MawbByKeySQLAMOUNT_NOT_INVOICED: TFloatField
      FieldName = 'AMOUNT_NOT_INVOICED'
      Origin = 'DATABASEMAIN.MAWB.AMOUNT_NOT_INVOICED'
    end
    object MawbByKeySQLAMOUNT_INVOICED: TFloatField
      FieldName = 'AMOUNT_INVOICED'
      Origin = 'DATABASEMAIN.MAWB.AMOUNT_INVOICED'
    end
    object MawbByKeySQLDATE_PASSED: TDateTimeField
      FieldName = 'DATE_PASSED'
      Origin = 'DATABASEMAIN.MAWB.DATE_PASSED'
    end
    object MawbByKeySQLGOODS_WEIGHT: TIntegerField
      FieldName = 'GOODS_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.GOODS_WEIGHT'
    end
    object MawbByKeySQLHAWBS_CLEARED_FIRST_TIME: TIntegerField
      FieldName = 'HAWBS_CLEARED_FIRST_TIME'
      Origin = 'DATABASEMAIN.MAWB.HAWBS_CLEARED_FIRST_TIME'
    end
    object MawbByKeySQLHAWBS_IN_MAWB: TIntegerField
      FieldName = 'HAWBS_IN_MAWB'
      Origin = 'DATABASEMAIN.MAWB.HAWBS_IN_MAWB'
    end
    object MawbByKeySQLDOCS_NUMBER: TIntegerField
      FieldName = 'DOCS_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.DOCS_NUMBER'
    end
    object MawbByKeySQLDOCS_WEIGHT: TFloatField
      FieldName = 'DOCS_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.DOCS_WEIGHT'
    end
    object MawbByKeySQLHIGH_VALUE_NUMBER: TIntegerField
      FieldName = 'HIGH_VALUE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.HIGH_VALUE_NUMBER'
    end
    object MawbByKeySQLHIGH_VALUE_WEIGHT: TFloatField
      FieldName = 'HIGH_VALUE_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.HIGH_VALUE_WEIGHT'
    end
    object MawbByKeySQLMEDIUM_VALUE_NUMBER: TIntegerField
      FieldName = 'MEDIUM_VALUE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.MEDIUM_VALUE_NUMBER'
    end
    object MawbByKeySQLMEDIUM_VALUE_WEIGHT: TFloatField
      FieldName = 'MEDIUM_VALUE_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.MEDIUM_VALUE_WEIGHT'
    end
    object MawbByKeySQLLOW_VALUE_NUMBER: TIntegerField
      FieldName = 'LOW_VALUE_NUMBER'
      Origin = 'DATABASEMAIN.MAWB.LOW_VALUE_NUMBER'
    end
    object MawbByKeySQLLOW_VALUE_WEIGHT: TFloatField
      FieldName = 'LOW_VALUE_WEIGHT'
      Origin = 'DATABASEMAIN.MAWB.LOW_VALUE_WEIGHT'
    end
    object MawbByKeySQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField
      FieldName = 'CUSTOMS_OVERTIME_RATE_TYPE'
      Origin = 'DATABASEMAIN.MAWB.CUSTOMS_OVERTIME_RATE_TYPE'
      FixedChar = True
      Size = 3
    end
    object MawbByKeySQLXML_CONSOLIDATED_ID: TStringField
      FieldName = 'XML_CONSOLIDATED_ID'
      Origin = 'DATABASEMAIN.MAWB.XML_CONSOLIDATED_ID'
      FixedChar = True
      Size = 13
    end
  end
  object ClearanceTypeSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Clearance_type where code= :TheKey'
      ' ')
    Left = 200
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'TheKey'
        ParamType = ptInput
        Value = ''
      end>
    object ClearanceTypeSQLCODE: TStringField
      FieldName = 'CODE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.CODE'
      Size = 12
    end
    object ClearanceTypeSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.DESCRIPTION'
      Size = 30
    end
    object ClearanceTypeSQLSUBCODE: TStringField
      FieldName = 'SUBCODE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.SUBCODE'
      Size = 5
    end
    object ClearanceTypeSQLSUBCODENUM: TStringField
      FieldName = 'SUBCODENUM'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.SUBCODENUM'
      Size = 5
    end
    object ClearanceTypeSQLALTERNATIVE_CODE: TStringField
      FieldName = 'ALTERNATIVE_CODE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.ALTERNATIVE_CODE'
      Size = 15
    end
    object ClearanceTypeSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.INVOICABLE'
      FixedChar = True
      Size = 1
    end
  end
  object ParameterSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from General_parameter where'
      'Code = :TheKey')
    Left = 456
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'TheKey'
        ParamType = ptInput
        Value = ''
      end>
    object ParameterSQLCODE: TStringField
      FieldName = 'CODE'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.CODE'
      FixedChar = True
      Size = 3
    end
    object ParameterSQLTEXT_1: TStringField
      FieldName = 'TEXT_1'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.TEXT_1'
      FixedChar = True
      Size = 40
    end
    object ParameterSQLTEXT_2: TStringField
      FieldName = 'TEXT_2'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.TEXT_2'
      FixedChar = True
      Size = 40
    end
    object ParameterSQLNUMERIC_1: TFloatField
      FieldName = 'NUMERIC_1'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.NUMERIC_1'
    end
    object ParameterSQLNUMERIC_2: TFloatField
      FieldName = 'NUMERIC_2'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.NUMERIC_2'
    end
    object ParameterSQLINTEGER_1: TIntegerField
      FieldName = 'INTEGER_1'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.INTEGER_1'
    end
    object ParameterSQLINTEGER_2: TIntegerField
      FieldName = 'INTEGER_2'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.INTEGER_2'
    end
    object ParameterSQLDATE_1: TDateTimeField
      FieldName = 'DATE_1'
      Origin = 'DATABASEMAIN.GENERAL_PARAMETER.DATE_1'
    end
  end
  object FindCountrySQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Country where number = :TheNumber'
      ' ')
    Left = 32
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TheNumber'
        ParamType = ptInput
        Value = 0
      end>
    object FindCountrySQLNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'DATABASEMAIN.COUNTRY.NUMBER'
    end
    object FindCountrySQLCODE: TStringField
      FieldName = 'CODE'
      Origin = 'DATABASEMAIN.COUNTRY.CODE'
      FixedChar = True
      Size = 3
    end
    object FindCountrySQLNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DATABASEMAIN.COUNTRY.NAME'
      Size = 40
    end
    object FindCountrySQLEU_MEMBER: TStringField
      FieldName = 'EU_MEMBER'
      Origin = 'DATABASEMAIN.COUNTRY.EU_MEMBER'
      FixedChar = True
      Size = 1
    end
    object FindCountrySQLFREIGHT05: TIntegerField
      FieldName = 'FREIGHT05'
      Origin = 'DATABASEMAIN.COUNTRY.FREIGHT05'
    end
    object FindCountrySQLFREIGHT6: TIntegerField
      FieldName = 'FREIGHT6'
      Origin = 'DATABASEMAIN.COUNTRY.FREIGHT6'
    end
    object FindCountrySQLFK_CURRENCY_CODE: TStringField
      FieldName = 'FK_CURRENCY_CODE'
      Origin = 'DATABASEMAIN.COUNTRY.FK_CURRENCY_CODE'
      FixedChar = True
      Size = 3
    end
    object FindCountrySQLGREEK_NAME: TStringField
      FieldName = 'GREEK_NAME'
      Origin = 'DATABASEMAIN.COUNTRY.GREEK_NAME'
      Size = 40
    end
    object FindCountrySQLXML_COUNTRY: TStringField
      FieldName = 'XML_COUNTRY'
      Origin = 'DATABASEMAIN.COUNTRY.XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
  end
  object CustomerSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Customer where code = :TheKey')
    Left = 192
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TheKey'
        ParamType = ptInput
        Value = 0
      end>
    object CustomerSQLNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DATABASEMAIN.CUSTOMER.NAME'
      Size = 80
    end
    object CustomerSQLAUTHORITY_TO_AGENT: TStringField
      FieldName = 'AUTHORITY_TO_AGENT'
      Origin = 'DATABASEMAIN.CUSTOMER.AUTHORITY_TO_AGENT'
      Size = 10
    end
    object CustomerSQLCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'DATABASEMAIN.CUSTOMER.CODE'
    end
    object CustomerSQLACCOUNT_NUMBER: TIntegerField
      FieldName = 'ACCOUNT_NUMBER'
      Origin = 'DATABASEMAIN.CUSTOMER.ACCOUNT_NUMBER'
    end
    object CustomerSQLVAT_ID: TStringField
      FieldName = 'VAT_ID'
      Origin = 'DATABASEMAIN.CUSTOMER.VAT_ID'
      Size = 10
    end
    object CustomerSQLADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Origin = 'DATABASEMAIN.CUSTOMER.ADDRESS1'
      Size = 50
    end
    object CustomerSQLADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Origin = 'DATABASEMAIN.CUSTOMER.ADDRESS2'
      Size = 50
    end
    object CustomerSQLADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Origin = 'DATABASEMAIN.CUSTOMER.ADDRESS3'
      Size = 50
    end
    object CustomerSQLCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Origin = 'DATABASEMAIN.CUSTOMER.COMPANY_ID'
      Size = 10
    end
    object CustomerSQLRECEIPIENT_ID: TStringField
      FieldName = 'RECEIPIENT_ID'
      Origin = 'DATABASEMAIN.CUSTOMER.RECEIPIENT_ID'
      Size = 10
    end
    object CustomerSQLOTHER_ID: TStringField
      FieldName = 'OTHER_ID'
      Origin = 'DATABASEMAIN.CUSTOMER.OTHER_ID'
      Size = 15
    end
    object CustomerSQLTEL_NO1: TStringField
      FieldName = 'TEL_NO1'
      Origin = 'DATABASEMAIN.CUSTOMER.TEL_NO1'
      Size = 10
    end
    object CustomerSQLTEL_NO2: TStringField
      FieldName = 'TEL_NO2'
      Origin = 'DATABASEMAIN.CUSTOMER.TEL_NO2'
      Size = 10
    end
    object CustomerSQLFAX1: TStringField
      FieldName = 'FAX1'
      Origin = 'DATABASEMAIN.CUSTOMER.FAX1'
      Size = 10
    end
    object CustomerSQLFAX2: TStringField
      FieldName = 'FAX2'
      Origin = 'DATABASEMAIN.CUSTOMER.FAX2'
      Size = 10
    end
    object CustomerSQLFK_DISTRICT_CODE: TStringField
      FieldName = 'FK_DISTRICT_CODE'
      Origin = 'DATABASEMAIN.CUSTOMER.FK_DISTRICT_CODE'
      Size = 3
    end
    object CustomerSQLCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Origin = 'DATABASEMAIN.CUSTOMER.COMMENTS'
      Size = 200
    end
    object CustomerSQLAUTHORIZATION_NUMBER: TStringField
      FieldName = 'AUTHORIZATION_NUMBER'
      Origin = 'DATABASEMAIN.CUSTOMER.AUTHORIZATION_NUMBER'
      Size = 15
    end
    object CustomerSQLQUARANTEE_NUMBER: TStringField
      FieldName = 'QUARANTEE_NUMBER'
      Origin = 'DATABASEMAIN.CUSTOMER.QUARANTEE_NUMBER'
      Size = 10
    end
    object CustomerSQLIMPORTER: TStringField
      FieldName = 'IMPORTER'
      Origin = 'DATABASEMAIN.CUSTOMER.IMPORTER'
      Size = 1
    end
    object CustomerSQLEXPORTER: TStringField
      FieldName = 'EXPORTER'
      Origin = 'DATABASEMAIN.CUSTOMER.EXPORTER'
      Size = 1
    end
    object CustomerSQLRESELLER: TStringField
      FieldName = 'RESELLER'
      Origin = 'DATABASEMAIN.CUSTOMER.RESELLER'
      Size = 1
    end
    object CustomerSQLCUSTOM_DEALER_NUMBER: TStringField
      FieldName = 'CUSTOM_DEALER_NUMBER'
      Origin = 'DATABASEMAIN.CUSTOMER.CUSTOM_DEALER_NUMBER'
      Size = 10
    end
    object CustomerSQLFK_OCCUPATION_CODE: TStringField
      FieldName = 'FK_OCCUPATION_CODE'
      Origin = 'DATABASEMAIN.CUSTOMER.FK_OCCUPATION_CODE'
      Size = 5
    end
    object CustomerSQLFK_CUSTOMER_CATEGORY_CODE: TStringField
      FieldName = 'FK_CUSTOMER_CATEGORY_CODE'
      Origin = 'DATABASEMAIN.CUSTOMER.FK_CUSTOMER_CATEGORY_CODE'
      Size = 5
    end
    object CustomerSQLCOMPANY_OR_PERSON: TStringField
      FieldName = 'COMPANY_OR_PERSON'
      Origin = 'DATABASEMAIN.CUSTOMER.COMPANY_OR_PERSON'
      Size = 1
    end
    object CustomerSQLEMAIL_TO_NOTIFY: TStringField
      FieldName = 'EMAIL_TO_NOTIFY'
      Origin = 'DATABASEMAIN.CUSTOMER.EMAIL_TO_NOTIFY'
      Size = 80
    end
    object CustomerSQLMOBILE_TO_NOTIFY: TStringField
      FieldName = 'MOBILE_TO_NOTIFY'
      Origin = 'DATABASEMAIN.CUSTOMER.MOBILE_TO_NOTIFY'
      Size = 80
    end
    object CustomerSQLIS_NOTIFY_MOBILE: TStringField
      FieldName = 'IS_NOTIFY_MOBILE'
      Origin = 'DATABASEMAIN.CUSTOMER.IS_NOTIFY_MOBILE'
      FixedChar = True
      Size = 1
    end
    object CustomerSQLIS_NOTIFY_EMAIL: TStringField
      FieldName = 'IS_NOTIFY_EMAIL'
      Origin = 'DATABASEMAIN.CUSTOMER.IS_NOTIFY_EMAIL'
      FixedChar = True
      Size = 1
    end
    object CustomerSQLIS_RECEIVE_NOTIFICATION: TStringField
      FieldName = 'IS_RECEIVE_NOTIFICATION'
      Origin = 'DATABASEMAIN.CUSTOMER.IS_RECEIVE_NOTIFICATION'
      FixedChar = True
      Size = 1
    end
    object CustomerSQLAUTHORITY_TO_DHL: TStringField
      FieldName = 'AUTHORITY_TO_DHL'
      Origin = 'DATABASEMAIN.CUSTOMER.AUTHORITY_TO_DHL'
      Size = 10
    end
  end
  object SenderInvoiceSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from sender_invoice where fk_hawb_serial= :TheKey')
    Left = 200
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TheKey'
        ParamType = ptInput
        Value = 0
      end>
    object SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Origin = 'DATABASEMAIN.SENDER_INVOICE.FK_HAWB_SERIAL'
    end
    object SenderInvoiceSQLTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      Origin = 'DATABASEMAIN.SENDER_INVOICE.TOTAL_AMOUNT'
    end
    object SenderInvoiceSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'DATABASEMAIN.SENDER_INVOICE.CURRENCY'
      FixedChar = True
      Size = 3
    end
    object SenderInvoiceSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Origin = 'DATABASEMAIN.SENDER_INVOICE.EXCHANGE_RATE'
    end
    object SenderInvoiceSQLINVOICE_NUMBER: TStringField
      FieldName = 'INVOICE_NUMBER'
      Origin = 'DATABASEMAIN.SENDER_INVOICE.INVOICE_NUMBER'
      FixedChar = True
    end
  end
  object FlightSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Flight_numbers where flight_number= :TheKey')
    Left = 200
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'TheKey'
        ParamType = ptInput
        Value = '0'
      end>
    object FlightSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.FLIGHT_NUMBER'
      FixedChar = True
      Size = 10
    end
    object FlightSQLCOMPANY: TStringField
      FieldName = 'COMPANY'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.COMPANY'
      FixedChar = True
      Size = 5
    end
    object FlightSQLDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.DESTINATION'
      FixedChar = True
      Size = 10
    end
    object FlightSQLFK_COUNTRY: TIntegerField
      FieldName = 'FK_COUNTRY'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.FK_COUNTRY'
    end
    object FlightSQLXML_COUNTRY: TStringField
      FieldName = 'XML_COUNTRY'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
  end
  object FindCurrencySQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Currency where currency_code= :TheKey')
    Left = 40
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'TheKey'
        ParamType = ptInput
        Value = ''
      end>
    object FindCurrencySQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.CURRENCY.DESCRIPTION'
    end
    object FindCurrencySQLCURRENCY_CODE: TStringField
      FieldName = 'CURRENCY_CODE'
      Origin = 'DATABASEMAIN.CURRENCY.CURRENCY_CODE'
      FixedChar = True
      Size = 3
    end
    object FindCurrencySQLCOUNTRY_CODE: TIntegerField
      FieldName = 'COUNTRY_CODE'
      Origin = 'DATABASEMAIN.CURRENCY.COUNTRY_CODE'
    end
    object FindCurrencySQLXML_CURRENCY: TStringField
      FieldName = 'XML_CURRENCY'
      Origin = 'DATABASEMAIN.CURRENCY.XML_CURRENCY'
      FixedChar = True
      Size = 2
    end
  end
  object FindClearanceSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from Clearance_type where code= :TheKey'
      ' ')
    Left = 56
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'TheKey'
        ParamType = ptInput
        Value = ''
      end>
    object StringField1: TStringField
      FieldName = 'CODE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.CODE'
      Size = 12
    end
    object StringField2: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.DESCRIPTION'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'SUBCODE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.SUBCODE'
      Size = 5
    end
    object StringField4: TStringField
      FieldName = 'SUBCODENUM'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.SUBCODENUM'
      Size = 5
    end
    object StringField5: TStringField
      FieldName = 'ALTERNATIVE_CODE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.ALTERNATIVE_CODE'
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'INVOICABLE'
      Origin = 'DATABASEMAIN.CLEARANCE_TYPE.INVOICABLE'
      FixedChar = True
      Size = 1
    end
  end
  object FindExciseCodeSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from xml_excise_codes where fk_excise_code=  :theKey')
    Left = 488
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'theKey'
        ParamType = ptInput
        Value = ''
      end>
    object FindExciseCodeSQLSERIAL_NUMBER: TSmallintField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'DATABASEMAIN.XML_EXCISE_CODES.SERIAL_NUMBER'
    end
    object FindExciseCodeSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.XML_EXCISE_CODES.DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object FindExciseCodeSQLFIELD_VALUE: TStringField
      FieldName = 'FIELD_VALUE'
      Origin = 'DATABASEMAIN.XML_EXCISE_CODES.FIELD_VALUE'
      FixedChar = True
      Size = 60
    end
    object FindExciseCodeSQLFK_EXCISE_CODE: TStringField
      FieldName = 'FK_EXCISE_CODE'
      Origin = 'DATABASEMAIN.XML_EXCISE_CODES.FK_EXCISE_CODE'
      FixedChar = True
      Size = 5
    end
  end
  object FindFlightSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from  flight_numbers where Flight_number= :TheKey')
    Left = 32
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'TheKey'
        ParamType = ptInput
        Value = ''
      end>
    object FindFlightSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.FLIGHT_NUMBER'
      FixedChar = True
      Size = 10
    end
    object FindFlightSQLCOMPANY: TStringField
      FieldName = 'COMPANY'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.COMPANY'
      FixedChar = True
      Size = 5
    end
    object FindFlightSQLDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.DESTINATION'
      FixedChar = True
      Size = 10
    end
    object FindFlightSQLFK_COUNTRY: TIntegerField
      FieldName = 'FK_COUNTRY'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.FK_COUNTRY'
    end
    object FindFlightSQLXML_COUNTRY: TStringField
      FieldName = 'XML_COUNTRY'
      Origin = 'DATABASEMAIN.FLIGHT_NUMBERS.XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
  end
  object FindVatCodeSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      'Select * from VAT_Category where'
      'CODE = :TheCode')
    Left = 400
    Top = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'TheCode'
        ParamType = ptInput
        Value = ''
      end>
    object FindVatCodeSQLCODE: TStringField
      FieldName = 'CODE'
      Origin = 'DATABASEMAIN.VAT_CATEGORY.CODE'
      Size = 3
    end
    object FindVatCodeSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DATABASEMAIN.VAT_CATEGORY.DESCRIPTION'
      Size = 30
    end
    object FindVatCodeSQLRATE: TFloatField
      FieldName = 'RATE'
      Origin = 'DATABASEMAIN.VAT_CATEGORY.RATE'
    end
    object FindVatCodeSQLXML_CODE: TStringField
      FieldName = 'XML_CODE'
      Origin = 'DATABASEMAIN.VAT_CATEGORY.XML_CODE'
      FixedChar = True
      Size = 60
    end
  end
  object HawbAndPartialSQL: TQuery
    DatabaseName = 'DatabaseMain'
    SQL.Strings = (
      
        'SELECT hab_ID, weight,description, NUM_OF_PIECES_ARRIVED, ede_co' +
        'mments'
      'FROM ('
      '    select'
      
        '        hab_id as hab_Id,weight as Weight, description as descri' +
        'ption,NUM_OF_PIECES_ARRIVED as NUM_OF_PIECES_ARRIVED, ede_commen' +
        'ts as ede_comments'
      '        from hawb'
      '    where'
      '        hawb.fk_mawb_id= :Mawbid1'
      '    union all'
      '    select'
      
        '        hawb_partial.fk_hawb_id_original as hab_Id, partial_weig' +
        'ht as Weight,Description as Description,partial_pieces as NUM_OF' +
        '_PIECES_ARRIVED, '#39' '#39' as  ede_comments'
      '    from hawb_partial'
      '    where'
      '        fk_mawb_id_arrived= :MawbId2'
      ')'
      'order by hab_ID;'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 472
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'Mawbid1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'MawbId2'
        ParamType = ptInput
        Value = ''
      end>
    object HawbAndPartialSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Size = 10
    end
    object HawbAndPartialSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object HawbAndPartialSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbAndPartialSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object HawbAndPartialSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Size = 100
    end
  end
end
