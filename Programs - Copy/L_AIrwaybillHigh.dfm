object L_AirwaybillsHighFRM: TL_AirwaybillsHighFRM
  Left = 222
  Top = 129
  Width = 1433
  Height = 850
  Caption = 'L_AirwaybillsHighFRM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1415
    Height = 65
    Align = alTop
    Caption = 'List Airwaybills NOT Scanned'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 752
    Width = 1415
    Height = 53
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 9
      Top = 9
      Width = 88
      Height = 40
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1415
    Height = 687
    Align = alClient
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 48
      Height = 685
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 48
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object FindHawbBTN: TSpeedButton
          Left = 268
          Top = 26
          Width = 26
          Height = 26
          Hint = 'Find Hawb in this Mawb'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentFont = False
        end
      end
    end
    object Button1: TButton
      Left = 1048
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Panel6: TPanel
      Left = 49
      Top = 1
      Width = 1365
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel6'
      TabOrder = 2
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1365
        Height = 97
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 20
          Width = 83
          Height = 19
          Caption = 'Find Hawb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 276
          Top = 12
          Width = 26
          Height = 23
          Hint = 'Find Hawb in this Mawb'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object HawbIdFLD: TwwDBEdit
          Left = 120
          Top = 16
          Width = 121
          Height = 24
          Color = 8454143
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBNavigator1: TwwDBNavigator
          Left = 0
          Top = 64
          Width = 125
          Height = 25
          DataSource = AirwaybillCDS
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          object wwDBNavigator1First: TwwNavButton
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to first record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1First'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsFirst
          end
          object wwDBNavigator1Prior: TwwNavButton
            Left = 25
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to prior record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Prior'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsPrior
          end
          object wwDBNavigator1Next: TwwNavButton
            Left = 50
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Next'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsNext
          end
          object wwDBNavigator1Last: TwwNavButton
            Left = 75
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to last record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Last'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsLast
          end
          object wwDBNavigator1Refresh: TwwNavButton
            Left = 100
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Refresh the contents of the dataset'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Refresh'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsRefresh
          end
        end
        object Button2: TButton
          Left = 1160
          Top = 2
          Width = 153
          Height = 41
          Caption = 'Update to Hide Old'
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 1160
          Top = 48
          Width = 154
          Height = 41
          Caption = 'Update to Show Old'
          TabOrder = 3
          OnClick = Button3Click
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 97
        Width = 1365
        Height = 588
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Panel9: TPanel
        Left = 0
        Top = 97
        Width = 1365
        Height = 588
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel9'
        TabOrder = 2
        object AirGRD: TwwDBGrid
          Left = 0
          Top = 0
          Width = 1121
          Height = 580
          Selected.Strings = (
            'SERIAL_NUMBER'#9'9'#9'SN'
            'SEQUENCE_NUMBER'#9'3'#9'Seq'
            'HAWB_ID'#9'15'#9'Hawb'
            'DESCRIPTION'#9'28'#9'Description'
            'SENDER_NAME'#9'20'#9'Sender'
            'ITEMS_COUNT'#9'4'#9'Items'
            'SHIPMENT_ORIGIN_COUNTRY'#9'6'#9'Origin~Country'
            'PIECES'#9'6'#9'Pieces'
            'WEIGHT'#9'6'#9'Weight'
            'CONSIGNEE_NAME'#9'27'#9'Consignee'
            'IS_SCANNED'#9'12'#9'Scanned')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alLeft
          DataSource = AirwaybillCDS
          KeyOptions = []
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgMultiSelect]
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = True
          OnTitleButtonClick = AirGRDTitleButtonClick
          OnDblClick = AirGRDDblClick
          IndicatorColor = icBlack
          ImageList = ImageList1
          TitleImageList = ImageList1
          object AirGRDIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 35
            Height = 30
            AllowAllUp = True
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF58A47158A47158A47158A47158A47158A47158A47158A471FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF58A37085BD9D85BD9D85BD9D85BD9D85BD9D85BD9D56
              A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A26C84D5B1C2EAD9C2EAD9C2EA
              D9C2EAD99ED5B753A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A0698CD8B6
              BEE9D6BEE9D6BEE9D6BEE9D69BD4B5509E67FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF509D6592DBBAB8E7D2B8E7D2B8E7D2B8E7D296D3B24D9B63FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF4D9A6097DDBEB2E6CFB2E6CFB2E6CFB2E6CF91D3B14A
              985EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49975C99DEC0ABE4CBABE4CBABE4
              CBABE4CB8CD2AE46955AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4593579ADFC0
              A5E2C7A5E2C7A5E2C7A5E2C787D1AC429155FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF41905398DEBF9DE0C29DE0C29DE0C29DE0C280D1A93E8E50FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF3E8C4E94DDBD96DEBE96DEBE96DEBE96DEBE7AD0A63B
              8A4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3989488FDDBA8FDDBA8FDDBA8FDD
              BA8FDDBA75D0A3368745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36854388DBB6
              88DBB688DBB688DBB688DBB66FCFA1338340FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F803B2F803B2F803B2F
              803B2F803B80D9B180D9B180D9B180D9B180D9B168CD9D2F803B2F803B2F803B
              2F803B2F803BEBEEEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B7C
              3684E0B67AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7A
              D7AD7AD7AD7AD7AD58BA842B7C36FBFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF2779328DE3BB73D5A973D5A973D5A973D5A973D5A973D5
              A973D5A973D5A973D5A973D5A958BF89277932FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24762D98E6C26DD4A66DD4A6
              6DD4A66DD4A66DD4A66DD4A66DD4A66DD4A658C38E24762DFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21
              7329A4E9C967D2A267D2A267D2A267D2A267D2A267D2A257C690217329FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF1E7126AFECD063D19F63D19F63D19F63D19F58C9931E
              7126FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B6F22B8EFD55ED09D5ED0
              9D59CC971B6F22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              196D1FBEF1D95ACD99196D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF176B1D176B1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
        object DeleteSelectedBTN: TBitBtn
          Left = 1152
          Top = 129
          Width = 145
          Height = 56
          Cancel = True
          Caption = 'Delete Selected'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = DeleteSelectedBTNClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333333333333333
            0000333333333333333333333333333333333333000033333333333333333333
            3333333333333333000033333333333333333333333333333333333300003333
            3333333333333333333333333333333300003333333333333333333333333333
            3333333300003388888888888888333333333333333333330000391111111111
            111193337FFFFFFFFFFFFFF30000391111111111111193387333333333333378
            0000339999999999999933387777777777777778000033333333333333333333
            8888888888888883000033333333333333333333333333333333333300003333
            3333333333333333333333333333333300003333333333333333333333333333
            3333333300003333333333333333333333333333333333330000333333333333
            3333333333333333333333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object InsertBTN: TBitBtn
          Left = 1152
          Top = 185
          Width = 145
          Height = 56
          Cancel = True
          Caption = 'Add Airwaybill'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = InsertBTNClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333333300003333333344C3333333333333337FF3333333
            00003333333A224333333333333338733F33333300003333333A224333333333
            333338733F33333300003333333A224333333333333338733F33333300003333
            333A224333333333333338733F33333300003333333A22433333333333333873
            3F33333300003344444422444444C3337FFF787337FFFFF300003A2222222222
            22224338733333333333333F00003A222222222222224338733333333333333F
            000033AAAAAA222AAAAA3338777777733377777700003333333A224333333337
            888888733788888300003333333A224333333333333338733F33333300003333
            333A224333333333333338733F33333300003333333A22433333333333333873
            3F33333300003333333A2243333333333333387337333333000033333333AA33
            3333333333333877733333330000333333333333333333333333338883333333
            0000}
          NumGlyphs = 2
          Style = bsNew
        end
      end
    end
  end
  object AirwayBillSQL: TIBCQuery
    UpdatingTable = 'AIRWAYBILL'
    KeyFields = 'serial_number'
    KeyGenerator = 'AIRWAYBILL_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO AIRWAYBILL'
      
        '  (SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_AREA' +
        ', SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_DOCUM' +
        'ENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, SENDER_NAME, SE' +
        'NDER_ADDRESS, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE' +
        ', CONSIGNEE_NAME, CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIG' +
        'NEE_CITY, CONSIGNEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_' +
        'COUNT, ITEMS_COUNT, PAYMENT_METHOD)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEQUENCE_NUMBER, :HAWB_ID, :SHIPMENT_ORIGIN_' +
        'AREA, :SHIPMENT_ORIGIN_COUNTRY, :PIECES, :WEIGHT, :DESCRIPTION, ' +
        ':FK_DOCUMENT_MASTER_SERIAL, :FK_MOVEMENT_SERIAL, :PIECES_S, :SEN' +
        'DER_NAME, :SENDER_ADDRESS, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY_CODE, :CONSIGNEE_NAME, :CONSIGNEE_ADDRESS, :CONSIGNE' +
        'E_POST_CODE, :CONSIGNEE_CITY, :CONSIGNEE_COUNTRY_CODE, :FK_ITINE' +
        'RARY_SERIAL, :PACKAGES_COUNT, :ITEMS_COUNT, :PAYMENT_METHOD)')
    SQLDelete.Strings = (
      'DELETE FROM AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE AIRWAYBILL'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SEQUENCE_NUMBER = :SEQUENCE_NU' +
        'MBER, HAWB_ID = :HAWB_ID, SHIPMENT_ORIGIN_AREA = :SHIPMENT_ORIGI' +
        'N_AREA, SHIPMENT_ORIGIN_COUNTRY = :SHIPMENT_ORIGIN_COUNTRY, PIEC' +
        'ES = :PIECES, WEIGHT = :WEIGHT, DESCRIPTION = :DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL = :FK_DOCUMENT_MASTER_SERIAL, FK_MOVEMENT_' +
        'SERIAL = :FK_MOVEMENT_SERIAL, PIECES_S = :PIECES_S, SENDER_NAME ' +
        '= :SENDER_NAME, SENDER_ADDRESS = :SENDER_ADDRESS, SENDER_POST_CO' +
        'DE = :SENDER_POST_CODE, SENDER_CITY = :SENDER_CITY, SENDER_COUNT' +
        'RY_CODE = :SENDER_COUNTRY_CODE, CONSIGNEE_NAME = :CONSIGNEE_NAME' +
        ', CONSIGNEE_ADDRESS = :CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE = ' +
        ':CONSIGNEE_POST_CODE, CONSIGNEE_CITY = :CONSIGNEE_CITY, CONSIGNE' +
        'E_COUNTRY_CODE = :CONSIGNEE_COUNTRY_CODE, FK_ITINERARY_SERIAL = ' +
        ':FK_ITINERARY_SERIAL, PACKAGES_COUNT = :PACKAGES_COUNT, ITEMS_CO' +
        'UNT = :ITEMS_COUNT, PAYMENT_METHOD = :PAYMENT_METHOD'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_' +
        'AREA, SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, SENDER_NAME' +
        ', SENDER_ADDRESS, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_' +
        'CODE, CONSIGNEE_NAME, CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CO' +
        'NSIGNEE_CITY, CONSIGNEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKA' +
        'GES_COUNT, ITEMS_COUNT, PAYMENT_METHOD FROM AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :P_1_SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = ReadTrans
    UpdateTransaction = UpdateTRans
    SQL.Strings = (
      'Select * from AirwayBill AB '
      'where '
      
        '  not exists (Select SERIAL_NUMBER FROM FLIGHT_AIRWAYBILL FA WHE' +
        'RE FA.FK_AIRWAYBILL_SERIAL=AB.SERIAL_NUMBER)'
      '  and (ab.IS_SCANNED='#39'N'#39' or ab.IS_SCANNED is NUll)')
    AutoCommit = False
    Active = True
    Left = 376
    Top = 65
    object AirwayBillSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'SN'
      DisplayWidth = 9
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.AIRWAYBILL.SERIAL_NUMBER'
    end
    object AirwayBillSQLSEQUENCE_NUMBER: TIntegerField
      DisplayLabel = 'Seq'
      DisplayWidth = 3
      FieldName = 'SEQUENCE_NUMBER'
      Origin = 'CABOUTDATA.AIRWAYBILL.SEQUENCE_NUMBER'
    end
    object AirwayBillSQLHAWB_ID: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 15
      FieldName = 'HAWB_ID'
      Origin = 'CABOUTDATA.AIRWAYBILL.HAWB_ID'
      Size = 10
    end
    object AirwayBillSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 28
      FieldName = 'DESCRIPTION'
      Origin = 'CABOUTDATA.AIRWAYBILL.DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object AirwayBillSQLSENDER_NAME: TStringField
      DisplayLabel = 'Sender'
      DisplayWidth = 20
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLITEMS_COUNT: TIntegerField
      DisplayLabel = 'Items'
      DisplayWidth = 4
      FieldName = 'ITEMS_COUNT'
    end
    object AirwayBillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField
      DisplayLabel = 'Origin~Country'
      DisplayWidth = 6
      FieldName = 'SHIPMENT_ORIGIN_COUNTRY'
      Origin = 'CABOUTDATA.AIRWAYBILL.SHIPMENT_ORIGIN_COUNTRY'
      FixedChar = True
      Size = 5
    end
    object AirwayBillSQLPIECES: TIntegerField
      DisplayLabel = 'Pieces'
      DisplayWidth = 6
      FieldName = 'PIECES'
      Origin = 'CABOUTDATA.AIRWAYBILL.PIECES'
    end
    object AirwayBillSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 6
      FieldName = 'WEIGHT'
      Origin = 'CABOUTDATA.AIRWAYBILL.WEIGHT'
      DisplayFormat = '0.00'
    end
    object AirwayBillSQLCONSIGNEE_NAME: TStringField
      DisplayLabel = 'Consignee'
      DisplayWidth = 27
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLIS_SCANNED: TStringField
      DisplayLabel = 'Scanned'
      DisplayWidth = 12
      FieldName = 'IS_SCANNED'
      FixedChar = True
      Size = 1
    end
    object AirwayBillSQLPIECES_S: TStringField
      DisplayLabel = 'Pieces/s'
      DisplayWidth = 7
      FieldName = 'PIECES_S'
      Origin = 'CABOUTDATA.AIRWAYBILL.PIECES_S'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object AirwayBillSQLSENDER_ADDRESS: TStringField
      DisplayWidth = 35
      FieldName = 'SENDER_ADDRESS'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_POST_CODE: TStringField
      DisplayWidth = 20
      FieldName = 'SENDER_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object AirwayBillSQLSENDER_CITY: TStringField
      DisplayWidth = 35
      FieldName = 'SENDER_CITY'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_COUNTRY_CODE: TStringField
      DisplayWidth = 25
      FieldName = 'SENDER_COUNTRY_CODE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object AirwayBillSQLCONSIGNEE_ADDRESS: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_ADDRESS'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_POST_CODE: TStringField
      DisplayWidth = 24
      FieldName = 'CONSIGNEE_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object AirwayBillSQLCONSIGNEE_CITY: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_CITY'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_COUNTRY_CODE: TStringField
      DisplayWidth = 28
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object AirwayBillSQLFK_ITINERARY_SERIAL: TIntegerField
      DisplayWidth = 21
      FieldName = 'FK_ITINERARY_SERIAL'
      Visible = False
    end
    object AirwayBillSQLPACKAGES_COUNT: TIntegerField
      DisplayWidth = 18
      FieldName = 'PACKAGES_COUNT'
      Visible = False
    end
    object AirwayBillSQLPAYMENT_METHOD: TStringField
      DisplayWidth = 18
      FieldName = 'PAYMENT_METHOD'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object AirwayBillSQLSHIPMENT_ORIGIN_AREA: TStringField
      DisplayWidth = 23
      FieldName = 'SHIPMENT_ORIGIN_AREA'
      Origin = 'CABOUTDATA.AIRWAYBILL.SHIPMENT_ORIGIN_AREA'
      Visible = False
      Size = 10
    end
    object AirwayBillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      DisplayWidth = 31
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
      Origin = 'CABOUTDATA.AIRWAYBILL.FK_DOCUMENT_MASTER_SERIAL'
      Visible = False
    end
    object AirwayBillSQLFK_MOVEMENT_SERIAL: TIntegerField
      DisplayWidth = 22
      FieldName = 'FK_MOVEMENT_SERIAL'
      Origin = 'CABOUTDATA.AIRWAYBILL.FK_MOVEMENT_SERIAL'
      Visible = False
    end
    object AirwayBillSQLIS_HIGH: TStringField
      DisplayWidth = 7
      FieldName = 'IS_HIGH'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object UpdateTRans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    Left = 160
    Top = 25
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 64
    Top = 25
  end
  object DeleteAirwaybillItemsSQL: TIBCSQL
    Connection = MainFormFRM.CabOutData
    Transaction = UpdateTRans
    SQL.Strings = (
      
        'delete from airwaybill_item where fk_airwaybill_serial= :Airwayb' +
        'illSerial')
    Debug = True
    Left = 497
    Top = 83
    ParamData = <
      item
        DataType = ftInteger
        Name = 'AirwaybillSerial'
        ParamType = ptInput
      end>
  end
  object AirwaybillCDS: TIBCDataSource
    DataSet = AirwayBillSQL
    Left = 273
    Top = 547
  end
  object ImageList1: TImageList
    Left = 1081
    Top = 363
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEF1D9005ACD990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A3700085BD9D0085BD9D0085BD9D0085BD9D0056A26E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B6F22005ED09D005ED09D001B6F2200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000053A069008CD8B600BEE9D600BEE9D6009BD4B500509E67000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4E9C90067D2A20067D2A20067D2A20067D2A20057C690000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000509D650092DBBA00B8E7D200B8E7D20096D3B2004D9B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024762D006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6002476
      2D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000049975C0099DEC000ABE4CB00ABE4CB008CD2AE0046955A000000
      00000000000000000000000000000000000000000000000000000000000084E0
      B6007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7
      AD0058BA8400FBFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000459357009ADFC000A5E2C700A5E2C70087D1AC00429155000000
      0000000000000000000000000000000000000000000000000000000000002F80
      3B002F803B002F803B0080D9B10080D9B10080D9B10068CD9D002F803B002F80
      3B002F803B00EBEEED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E8C4E0094DDBD0096DEBE0096DEBE007AD0A6003B8A4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000398948008FDDBA008FDDBA008FDDBA0075D0A300368745000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000398948008FDDBA008FDDBA008FDDBA0075D0A300368745000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E8C4E0094DDBD0096DEBE0096DEBE007AD0A6003B8A4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F80
      3B002F803B002F803B0080D9B10080D9B10080D9B10068CD9D002F803B002F80
      3B002F803B00EBEEED0000000000000000000000000000000000000000000000
      000000000000459357009ADFC000A5E2C700A5E2C70087D1AC00429155000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084E0
      B6007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7
      AD0058BA8400FBFCFC0000000000000000000000000000000000000000000000
      00000000000049975C0099DEC000ABE4CB00ABE4CB008CD2AE0046955A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024762D006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6002476
      2D00000000000000000000000000000000000000000000000000000000000000
      000000000000509D650092DBBA00B8E7D200B8E7D20096D3B2004D9B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4E9C90067D2A20067D2A20067D2A20067D2A20057C690000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000053A069008CD8B600BEE9D600BEE9D6009BD4B500509E67000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B6F22005ED09D005ED09D001B6F2200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A3700085BD9D0085BD9D0085BD9D0085BD9D0056A26E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEF1D9005ACD990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F81FFE7F00000000
      F81FFC3F00000000F81FF81F00000000F81FF00F00000000F81FE00300000000
      F81FE00300000000F81FF81F00000000F81FF81F00000000E003F81F00000000
      E003F81F00000000F00FF81F00000000F81FF81F00000000FC3FF81F00000000
      FE7FF81F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object UpdateTableSQL: TIBCSQL
    Connection = MainFormFRM.CabOutData
    Transaction = UpdateTRans
    AutoCommit = True
    Left = 1097
    Top = 82
  end
end
