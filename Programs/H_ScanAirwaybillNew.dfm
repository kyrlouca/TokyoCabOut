object H_ScanAirwaibillNewFRM: TH_ScanAirwaibillNewFRM
  Left = 198
  Top = 128
  ClientHeight = 0
  ClientWidth = 120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 45
    Top = 263
    Width = 34
    Height = 13
    Caption = 'Weight'
  end
  object Label9: TLabel
    Left = 163
    Top = 289
    Width = 32
    Height = 13
    Caption = 'Pieces'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 120
    Height = 53
    Align = alTop
    Caption = 'SCAN New'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1348
    object Panel5: TPanel
      Left = 1196
      Top = 1
      Width = 151
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object wwDBEdit3: TwwDBEdit
        Left = 33
        Top = 19
        Width = 98
        Height = 24
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = FlightOutCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object BottomPNL: TPanel
    Left = 0
    Top = -52
    Width = 120
    Height = 52
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 709
    ExplicitWidth = 1348
    object BitBtn2: TBitBtn
      Left = 8
      Top = 3
      Width = 89
      Height = 44
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 120
    Height = 656
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1348
    object HeaderPNL: TPanel
      Left = 1
      Top = 1
      Width = 118
      Height = 169
      Align = alTop
      TabOrder = 0
      object Label10: TLabel
        Left = 384
        Top = 39
        Width = 60
        Height = 13
        Caption = 'Find Flight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object FindHawbBTN: TSpeedButton
        Left = 608
        Top = 29
        Width = 21
        Height = 19
        Hint = 'Find Hawb in this Mawb'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        Visible = False
        OnClick = FindHawbBTNClick
      end
      object SearchFlightOutFLD: TwwDBEdit
        Left = 458
        Top = 29
        Width = 141
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Picture.PictureMask = '*11[!]'
        Picture.AutoFill = False
        TabOrder = 0
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
      end
      object BitBtn3: TBitBtn
        Left = 494
        Top = 101
        Width = 111
        Height = 49
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = 'Add Flight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentBiDiMode = False
        ParentFont = False
        Style = bsNew
        TabOrder = 1
        Visible = False
        OnClick = BitBtn3Click
      end
      object GroupBox1: TGroupBox
        Left = 13
        Top = 13
        Width = 228
        Height = 124
        Caption = 'Flight Details'
        TabOrder = 2
        object Label3: TLabel
          Left = 27
          Top = 24
          Width = 25
          Height = 13
          Caption = 'Flight'
        end
        object Label4: TLabel
          Left = 24
          Top = 47
          Width = 29
          Height = 13
          Caption = 'Mawb'
        end
        object Label6: TLabel
          Left = 4
          Top = 67
          Width = 47
          Height = 13
          Caption = 'Departure'
        end
        object Label11: TLabel
          Left = 8
          Top = 93
          Width = 42
          Height = 13
          Caption = 'Remarks'
        end
        object wwDBEdit2: TwwDBEdit
          Left = 59
          Top = 93
          Width = 98
          Height = 24
          Color = clBtnFace
          DataField = 'REMARKS'
          DataSource = FlightOutCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object pamenwwDBEdit4: TwwDBEdit
          Left = 59
          Top = 46
          Width = 98
          Height = 24
          Color = clBtnFace
          DataField = 'MAWB'
          DataSource = FlightOutCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 59
          Top = 21
          Width = 98
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FLIGHT_NAME'#9'9'#9'FLIGHT_NAME'#9'F')
          DataField = 'FK_FLIGHT_TABLE'
          DataSource = FlightOutCDS
          LookupTable = FlightTableSQL
          LookupField = 'SERIAL_NUMBER'
          Color = clBtnFace
          ButtonStyle = cbsCustom
          ReadOnly = True
          TabOrder = 2
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object wwDBEdit5: TwwDBEdit
          Left = 59
          Top = 69
          Width = 98
          Height = 24
          Color = clBtnFace
          DataField = 'DATE_DEPART'
          DataSource = FlightOutCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object SelectRGP: TRadioGroup
        Left = 281
        Top = 20
        Width = 150
        Height = 117
        Caption = 'Select Hawbs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'All'
          'High'
          'Medium'
          'Low'
          'Unclassified')
        ParentFont = False
        TabOrder = 3
        OnClick = SelectRGPClick
      end
    end
    object MiddlePNL: TPanel
      Left = 1
      Top = 170
      Width = 118
      Height = 485
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 1346
      object Label2: TLabel
        Left = 13
        Top = 20
        Width = 78
        Height = 18
        Caption = 'Scan Hawb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DetailsPNL: TGroupBox
        Left = 805
        Top = 38
        Width = 288
        Height = 203
        Caption = 'Details'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 33
          Top = 33
          Width = 28
          Height = 13
          Caption = 'Hawb'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 27
          Top = 98
          Width = 34
          Height = 13
          Caption = 'Weight'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 6
          Top = 125
          Width = 53
          Height = 13
          Caption = 'Description'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 35
          Top = 61
          Width = 25
          Height = 13
          Caption = 'Items'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 27
          Top = 80
          Width = 32
          Height = 13
          Caption = 'Pieces'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 215
          Top = 26
          Width = 59
          Height = 24
          Color = clBtnFace
          DataField = 'SERIAL_NUMBER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object WeightFLD: TwwDBEdit
          Left = 65
          Top = 96
          Width = 79
          Height = 24
          Color = clWhite
          DataField = 'WEIGHT'
          DataSource = FLightAirwaybillCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DescriptionFLD: TwwDBEdit
          Left = 67
          Top = 125
          Width = 216
          Height = 35
          Color = clWhite
          DataField = 'DESCRIPTION'
          DataSource = FLightAirwaybillCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit6: TwwDBEdit
          Left = 65
          Top = 57
          Width = 79
          Height = 24
          Color = clWhite
          DataField = 'ITEMS_COUNT'
          DataSource = FLightAirwaybillCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit7: TwwDBEdit
          Left = 65
          Top = 76
          Width = 79
          Height = 24
          Color = clWhite
          DataField = 'PIECES'
          DataSource = FLightAirwaybillCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit4: TwwDBEdit
          Left = 65
          Top = 28
          Width = 105
          Height = 33
          Color = clWhite
          DataField = 'HAWB_ID'
          DataSource = FLightAirwaybillCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object FlightAirwaybillGRD: TwwDBGrid
        Left = 6
        Top = 42
        Width = 742
        Height = 167
        ControlType.Strings = (
          'VALUE_TYPE;CustomEdit;ValueFLD')
        Selected.Strings = (
          'SERIAL_NUMBER'#9'4'#9'S/N'#9'F'
          'VALUE_TYPE'#9'5'#9'Value'#9'F'
          'HAWB_ID'#9'10'#9'Hawb Id'#9'F'
          'DESCRIPTION'#9'27'#9'Description'#9'F'
          'SENDER_NAME'#9'12'#9'Sender Name'#9'F'
          'SENDER_ADDRESS_1'#9'12'#9'Address 1'#9'F'
          'CONSIGNEE_NAME'#9'18'#9'Consignee'#9'F'
          'ITEMS_COUNT'#9'7'#9'Items'#9'F'
          'PIECES'#9'6'#9'Pieces'#9'F'
          'WEIGHT'#9'6'#9'Weight'#9'F'
          'SERVICE_CODE'#9'10'#9'SERVICE_CODE'#9'F'
          'ACCOUNT_NUMBER'#9'15'#9'ACCOUNT_NUMBER'#9'F'
          'INCOTERMS'#9'9'#9'INCOTERMS'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        DataSource = FLightAirwaybillCDS
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -10
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = FlightAirwaybillGRDDblClick
      end
      object ValueFLD: TwwDBComboBox
        Left = 630
        Top = 117
        Width = 98
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'VALUE_TYPE'
        DataSource = FLightAirwaybillCDS
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'High'#9'H'#9'High'#9'H'
          'Medium'#9'M'#9'Medium'#9'M'
          'Low'#9'L'#9'Low'#9'L'
          'Unknown'#9#9'Unknown'#9)
        ItemIndex = 3
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object HawbInputFLD: TwwDBEdit
        Left = 91
        Top = 20
        Width = 124
        Height = 24
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = HawbInputFLDKeyPress
      end
      object DeleteSelectedBTN: TBitBtn
        Left = 111
        Top = 228
        Width = 95
        Height = 35
        Cancel = True
        Caption = 'Delete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 3
        OnClick = DeleteSelectedBTNClick
      end
    end
  end
  object FlightAirwaybillSQL: TIBCQuery
    UpdatingTable = 'FLIGHT_AIRWAYBILL'
    KeyFields = 'serial_number'
    KeyGenerator = 'FLIGHT_AIRWAYBILL_GENERATOR'
    GeneratorMode = gmInsert
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
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      'Select * from Flight_airwaybill  '
      'where '
      '  fk_flight_out_serial= :serial_number '
      'order by serial_number Desc')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_FLIGHT_OUT_SERIAL'
    MasterSource = FlightOutCDS
    FetchAll = True
    Active = True
    Left = 248
    Top = 361
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object FlightAirwaybillSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 4
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.SERIAL_NUMBER'
    end
    object FlightAirwaybillSQLVALUE_TYPE: TStringField
      DisplayLabel = 'Value'
      DisplayWidth = 5
      FieldName = 'VALUE_TYPE'
      FixedChar = True
      Size = 1
    end
    object FlightAirwaybillSQLHAWB_ID: TStringField
      DisplayLabel = 'Hawb Id'
      DisplayWidth = 10
      FieldName = 'HAWB_ID'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.HAWB_ID'
      Size = 10
    end
    object FlightAirwaybillSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 27
      FieldName = 'DESCRIPTION'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object FlightAirwaybillSQLSENDER_NAME: TStringField
      DisplayLabel = 'Sender Name'
      DisplayWidth = 12
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_ADDRESS_1: TStringField
      DisplayLabel = 'Address 1'
      DisplayWidth = 12
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_NAME: TStringField
      DisplayLabel = 'Consignee'
      DisplayWidth = 18
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLITEMS_COUNT: TIntegerField
      DisplayLabel = 'Items'
      DisplayWidth = 7
      FieldName = 'ITEMS_COUNT'
    end
    object FlightAirwaybillSQLPIECES: TIntegerField
      DisplayLabel = 'Pieces'
      DisplayWidth = 6
      FieldName = 'PIECES'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.PIECES'
    end
    object FlightAirwaybillSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 6
      FieldName = 'WEIGHT'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.WEIGHT'
      DisplayFormat = '0.00'
    end
    object FlightAirwaybillSQLSERVICE_CODE: TStringField
      DisplayWidth = 10
      FieldName = 'SERVICE_CODE'
      Size = 10
    end
    object FlightAirwaybillSQLACCOUNT_NUMBER: TStringField
      DisplayWidth = 15
      FieldName = 'ACCOUNT_NUMBER'
      FixedChar = True
      Size = 15
    end
    object FlightAirwaybillSQLINCOTERMS: TStringField
      DisplayWidth = 9
      FieldName = 'INCOTERMS'
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLSENDER_POST_CODE: TStringField
      DisplayWidth = 20
      FieldName = 'SENDER_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLSENDER_CITY: TStringField
      DisplayWidth = 35
      FieldName = 'SENDER_CITY'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_COUNTRY_CODE: TStringField
      DisplayWidth = 25
      FieldName = 'SENDER_COUNTRY_CODE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FlightAirwaybillSQLPAYMENT_METHOD: TStringField
      DisplayWidth = 18
      FieldName = 'PAYMENT_METHOD'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FlightAirwaybillSQLSENDER_ADDRESS: TStringField
      DisplayLabel = 'Sender Address'
      DisplayWidth = 21
      FieldName = 'SENDER_ADDRESS'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_ADDRESS'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_POST_CODE: TStringField
      DisplayWidth = 24
      FieldName = 'CONSIGNEE_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLCONSIGNEE_CITY: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_CITY'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_COUNTRY_CODE: TStringField
      DisplayWidth = 28
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FlightAirwaybillSQLFK_ITINERARY_SERIAL: TIntegerField
      DisplayWidth = 21
      FieldName = 'FK_ITINERARY_SERIAL'
      Visible = False
    end
    object FlightAirwaybillSQLPACKAGES_COUNT: TIntegerField
      DisplayWidth = 18
      FieldName = 'PACKAGES_COUNT'
      Visible = False
    end
    object FlightAirwaybillSQLSEQUENCE_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQUENCE_NUMBER'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.SEQUENCE_NUMBER'
      Visible = False
    end
    object FlightAirwaybillSQLSHIPMENT_ORIGIN_AREA: TStringField
      DisplayWidth = 10
      FieldName = 'SHIPMENT_ORIGIN_AREA'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.SHIPMENT_ORIGIN_AREA'
      Visible = False
      Size = 10
    end
    object FlightAirwaybillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField
      DisplayWidth = 5
      FieldName = 'SHIPMENT_ORIGIN_COUNTRY'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.SHIPMENT_ORIGIN_COUNTRY'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object FlightAirwaybillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.FK_DOCUMENT_MASTER_SERIAL'
      Visible = False
    end
    object FlightAirwaybillSQLFK_MOVEMENT_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_MOVEMENT_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.FK_MOVEMENT_SERIAL'
      Visible = False
    end
    object FlightAirwaybillSQLPIECES_S: TStringField
      DisplayWidth = 15
      FieldName = 'PIECES_S'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.PIECES_S'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FlightAirwaybillSQLFK_AIRWAYBILL_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_AIRWAYBILL_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.FK_AIRWAYBILL_SERIAL'
      Visible = False
    end
    object FlightAirwaybillSQLFK_FLIGHT_OUT_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_FLIGHT_OUT_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.FK_FLIGHT_OUT_SERIAL'
      Visible = False
    end
    object FlightAirwaybillSQLSENDER_ADDRESS_2: TStringField
      DisplayWidth = 35
      FieldName = 'SENDER_ADDRESS_2'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_ADDRESS_3: TStringField
      DisplayWidth = 35
      FieldName = 'SENDER_ADDRESS_3'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_ACCOUNT_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SENDER_ACCOUNT_NUMBER'
      Visible = False
    end
    object FlightAirwaybillSQLFK_SENDER_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_SENDER_SERIAL'
      Visible = False
    end
    object FlightAirwaybillSQLDISTRICT_CODE: TStringField
      DisplayWidth = 3
      FieldName = 'DISTRICT_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FlightAirwaybillSQLTARIFF_CODE: TStringField
      DisplayWidth = 17
      FieldName = 'TARIFF_CODE'
      Visible = False
      Size = 17
    end
    object FlightAirwaybillSQLTARIFF_KEYWORD: TStringField
      DisplayWidth = 30
      FieldName = 'TARIFF_KEYWORD'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FlightAirwaybillSQLIS_CLEARED: TStringField
      DisplayWidth = 1
      FieldName = 'IS_CLEARED'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FlightAirwaybillSQLIS_HIGH: TStringField
      DisplayWidth = 1
      FieldName = 'IS_HIGH'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FlightAirwaybillSQLSENDER_DEVICE_TYPE: TStringField
      DisplayWidth = 9
      FieldName = 'SENDER_DEVICE_TYPE'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLSENDER_DEVICE_DETAILS: TStringField
      DisplayWidth = 35
      FieldName = 'SENDER_DEVICE_DETAILS'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_DEVICE_TYPE: TStringField
      DisplayWidth = 9
      FieldName = 'CONSIGNEE_DEVICE_TYPE'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLCONSIGNEE_DEVICE_DETAILS: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_DEVICE_DETAILS'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS_1: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_ADDRESS_1'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS_2: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_ADDRESS_2'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS_3: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_ADDRESS_3'
      Visible = False
      FixedChar = True
      Size = 35
    end
  end
  object FlightOutSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'FLIGHT_OUT_GENERATOR'
    GeneratorMode = gmInsert
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
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      'Select * from FLight_out  where Serial_number = :SerialNumber')
    ReadOnly = True
    UniDirectional = True
    Left = 104
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SerialNumber'
        Value = nil
      end>
    object FlightOutSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.FLIGHT_OUT.SERIAL_NUMBER'
    end
    object FlightOutSQLMAWB: TStringField
      FieldName = 'MAWB'
      Origin = 'CABOUTDATA.FLIGHT_OUT.MAWB'
      FixedChar = True
      Size = 15
    end
    object FlightOutSQLFK_MOVEMENT_SERIAL: TIntegerField
      FieldName = 'FK_MOVEMENT_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_OUT.FK_MOVEMENT_SERIAL'
    end
    object FlightOutSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_OUT.FK_DOCUMENT_MASTER_SERIAL'
    end
    object FlightOutSQLDATE_DEPART: TDateTimeField
      FieldName = 'DATE_DEPART'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DATE_DEPART'
    end
    object FlightOutSQLREMARKS: TStringField
      FieldName = 'REMARKS'
      Origin = 'CABOUTDATA.FLIGHT_OUT.REMARKS'
      FixedChar = True
      Size = 60
    end
    object FlightOutSQLDESTINATION_AREA: TStringField
      FieldName = 'DESTINATION_AREA'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DESTINATION_AREA'
      FixedChar = True
      Size = 3
    end
    object FlightOutSQLDESTINATION_COUNTRY: TStringField
      FieldName = 'DESTINATION_COUNTRY'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DESTINATION_COUNTRY'
      FixedChar = True
      Size = 3
    end
    object FlightOutSQLFK_FLIGHT_TABLE: TIntegerField
      FieldName = 'FK_FLIGHT_TABLE'
    end
  end
  object FindFlightByxSQL: TIBCQuery
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      'Select * from FLight_out  where Mawb starting with :mawb')
    ReadOnly = True
    UniDirectional = True
    Left = 912
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Mawb'
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.FLIGHT_OUT.SERIAL_NUMBER'
    end
    object StringField1: TStringField
      FieldName = 'MAWB'
      Origin = 'CABOUTDATA.FLIGHT_OUT.MAWB'
      FixedChar = True
      Size = 15
    end
    object IntegerField2: TIntegerField
      FieldName = 'FK_MOVEMENT_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_OUT.FK_MOVEMENT_SERIAL'
    end
    object IntegerField3: TIntegerField
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_OUT.FK_DOCUMENT_MASTER_SERIAL'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATE_DEPART'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DATE_DEPART'
    end
    object StringField2: TStringField
      FieldName = 'REMARKS'
      Origin = 'CABOUTDATA.FLIGHT_OUT.REMARKS'
      FixedChar = True
      Size = 60
    end
    object StringField3: TStringField
      FieldName = 'DESTINATION_AREA'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DESTINATION_AREA'
      FixedChar = True
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'DESTINATION_COUNTRY'
      Origin = 'CABOUTDATA.FLIGHT_OUT.DESTINATION_COUNTRY'
      FixedChar = True
      Size = 3
    end
  end
  object FindFLightAirwaybillbyHawbSQL: TIBCQuery
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      
        'Select * from Flight_airwaybill  where hawb_id= :HawbId and FK_f' +
        'light_out_serial= :FlightSErial'
      ' ')
    ReadOnly = True
    UniDirectional = True
    Left = 380
    Top = 640
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'HawbId'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FlightSErial'
        Value = nil
      end>
    object FindFLightAirwaybillbyHawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.SERIAL_NUMBER'
    end
    object FindFLightAirwaybillbyHawbSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.HAWB_ID'
      Size = 10
    end
    object FindFLightAirwaybillbyHawbSQLFK_FLIGHT_OUT_SERIAL: TIntegerField
      FieldName = 'FK_FLIGHT_OUT_SERIAL'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.FK_FLIGHT_OUT_SERIAL'
    end
  end
  object FlightAirwaybillTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    DefaultCloseAction = taCommit
    Left = 536
    Top = 25
  end
  object FlightOutCDS: TIBCDataSource
    DataSet = FlightOutSQL
    OnStateChange = FlightOutCDSStateChange
    Left = 208
    Top = 16
  end
  object FLightAirwaybillCDS: TIBCDataSource
    DataSet = FlightAirwaybillSQL
    Left = 498
    Top = 395
  end
  object DeleteFlightCountriesSQL: TIBCSQL
    Connection = MainFormFRM.CabOutData
    Transaction = FlightAirwaybillTrans
    SQL.Strings = (
      'Delete from flight_airwaybill_country '
      'where fk_flight_airwaybill= :Serialnumber')
    Left = 378
    Top = 227
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Serialnumber'
        ParamType = ptInput
        Value = nil
      end>
  end
  object FlightTableSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_TABLE'
      '  (SERIAL_NUMBER, FLIGHT_NAME, DESTINATION_COUNTRY_CODE)'
      'VALUES'
      '  (:SERIAL_NUMBER, :FLIGHT_NAME, :DESTINATION_COUNTRY_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_TABLE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_TABLE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FLIGHT_NAME = :FLIGHT_NAME, DE' +
        'STINATION_COUNTRY_CODE = :DESTINATION_COUNTRY_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FLIGHT_NAME, DESTINATION_COUNTRY_CODE FROM' +
        ' FLIGHT_TABLE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_TABLE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      'select * from flight_table')
    FetchAll = True
    ReadOnly = True
    Active = True
    Left = 360
    Top = 25
    object FlightTableSQLFLIGHT_NAME: TStringField
      DisplayWidth = 9
      FieldName = 'FLIGHT_NAME'
      Required = True
      FixedChar = True
      Size = 9
    end
    object FlightTableSQLDESTINATION_COUNTRY_CODE: TStringField
      DisplayWidth = 2
      FieldName = 'DESTINATION_COUNTRY_CODE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FlightTableSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object FlightAirwaybillCountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL_COUNTRY'
      '  (COUNTRY_CODE, FK_FLIGHT_AIRWAYBILL, ORDER_POSITION)'
      'VALUES'
      '  (:COUNTRY_CODE, :FK_FLIGHT_AIRWAYBILL, :ORDER_POSITION)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL_COUNTRY'
      'WHERE'
      
        '  FK_FLIGHT_AIRWAYBILL = :Old_FK_FLIGHT_AIRWAYBILL AND COUNTRY_C' +
        'ODE = :Old_COUNTRY_CODE')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL_COUNTRY'
      'SET'
      
        '  COUNTRY_CODE = :COUNTRY_CODE, FK_FLIGHT_AIRWAYBILL = :FK_FLIGH' +
        'T_AIRWAYBILL, ORDER_POSITION = :ORDER_POSITION'
      'WHERE'
      
        '  FK_FLIGHT_AIRWAYBILL = :Old_FK_FLIGHT_AIRWAYBILL AND COUNTRY_C' +
        'ODE = :Old_COUNTRY_CODE')
    SQLRefresh.Strings = (
      
        'SELECT COUNTRY_CODE, FK_FLIGHT_AIRWAYBILL, ORDER_POSITION FROM F' +
        'LIGHT_AIRWAYBILL_COUNTRY'
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
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      'Select * from flight_airwaybill_country')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_FLIGHT_AIRWAYBILL'
    MasterSource = FLightAirwaybillCDS
    Active = True
    Left = 552
    Top = 169
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object FlightAirwaybillCountrySQLCOUNTRY_CODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 8
      FieldName = 'COUNTRY_CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object FlightAirwaybillCountrySQLFK_FLIGHT_AIRWAYBILL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_FLIGHT_AIRWAYBILL'
      Required = True
      Visible = False
    end
    object FlightAirwaybillCountrySQLORDER_POSITION: TIntegerField
      FieldName = 'ORDER_POSITION'
    end
  end
  object FlightOutCountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_OUT_COUNTRY'
      '  (FK_FLIGHT_OUT, COUNTRY_CODE, ORDER_POSITION)'
      'VALUES'
      '  (:FK_FLIGHT_OUT, :COUNTRY_CODE, :ORDER_POSITION)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_OUT_COUNTRY'
      'WHERE'
      
        '  FK_FLIGHT_OUT = :Old_FK_FLIGHT_OUT AND COUNTRY_CODE = :Old_COU' +
        'NTRY_CODE')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_OUT_COUNTRY'
      'SET'
      
        '  FK_FLIGHT_OUT = :FK_FLIGHT_OUT, COUNTRY_CODE = :COUNTRY_CODE, ' +
        'ORDER_POSITION = :ORDER_POSITION'
      'WHERE'
      
        '  FK_FLIGHT_OUT = :Old_FK_FLIGHT_OUT AND COUNTRY_CODE = :Old_COU' +
        'NTRY_CODE')
    SQLRefresh.Strings = (
      
        'SELECT FK_FLIGHT_OUT, COUNTRY_CODE, ORDER_POSITION FROM FLIGHT_O' +
        'UT_COUNTRY'
      'WHERE'
      
        '  FK_FLIGHT_OUT = :FK_FLIGHT_OUT AND COUNTRY_CODE = :COUNTRY_COD' +
        'E')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_OUT_COUNTRY'
      'WHERE'
      
        'FK_FLIGHT_OUT = :Old_FK_FLIGHT_OUT AND COUNTRY_CODE = :Old_COUNT' +
        'RY_CODE'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      'select * from Flight_out_country order by order_position')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_FLIGHT_OUT'
    MasterSource = FlightOutCDS
    ReadOnly = True
    Active = True
    Left = 697
    Top = 146
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIAL_NUMBER'
        Value = nil
      end>
    object FlightOutCountrySQLFK_FLIGHT_OUT: TIntegerField
      FieldName = 'FK_FLIGHT_OUT'
      Required = True
    end
    object FlightOutCountrySQLCOUNTRY_CODE: TStringField
      FieldName = 'COUNTRY_CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object FlightOutCountrySQLORDER_POSITION: TIntegerField
      FieldName = 'ORDER_POSITION'
    end
  end
  object UpdateHawbTypeSQL: TIBCSQL
    Connection = MainFormFRM.CabOutData
    Transaction = UpdateHawbTrans
    SQL.Strings = (
      'Update Flight_airwaybill'
      'set IS_HIGH= :IsHigh'
      'where serial_number= :SerialNumber')
    AutoCommit = True
    Left = 681
    Top = 226
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IsHigh'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'SerialNumber'
        ParamType = ptInput
        Value = nil
      end>
  end
  object UpdateHawbTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    Left = 809
    Top = 250
  end
  object FindAirwayBillSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      'Select serial_number, hawb_id from Airwaybill  where '
      '(is_scanned<>'#39'Y'#39' and is_scanned is not null)'
      'and hawb_id= :HawbId')
    ReadOnly = True
    UniDirectional = True
    Left = 408
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'HawbId'
        Value = nil
      end>
    object FindAirwayBillSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object FindAirwayBillSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
  end
  object AirwaybillItemSQL: TIBCQuery
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
        'COUNT, ITEMS_COUNT, PAYMENT_METHOD, IS_HIGH, CUSTOMS_VALUE, CURR' +
        'ENCY, CURRENCY_RATE, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_' +
        'ADDRESS_3, CONSIGNEE_ADDRESS_1, CONSIGNEE_ADDRESS_2, CONSIGNEE_A' +
        'DDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, CONSIGNEE_D' +
        'EVICE_TYPE, CONSIGNEE_DEVICE_DETAILS, VALUE_TYPE, INCOTERMS)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEQUENCE_NUMBER, :HAWB_ID, :SHIPMENT_ORIGIN_' +
        'AREA, :SHIPMENT_ORIGIN_COUNTRY, :PIECES, :WEIGHT, :DESCRIPTION, ' +
        ':FK_DOCUMENT_MASTER_SERIAL, :FK_MOVEMENT_SERIAL, :PIECES_S, :SEN' +
        'DER_NAME, :SENDER_ADDRESS, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY_CODE, :CONSIGNEE_NAME, :CONSIGNEE_ADDRESS, :CONSIGNE' +
        'E_POST_CODE, :CONSIGNEE_CITY, :CONSIGNEE_COUNTRY_CODE, :FK_ITINE' +
        'RARY_SERIAL, :PACKAGES_COUNT, :ITEMS_COUNT, :PAYMENT_METHOD, :IS' +
        '_HIGH, :CUSTOMS_VALUE, :CURRENCY, :CURRENCY_RATE, :SENDER_ADDRES' +
        'S_1, :SENDER_ADDRESS_2, :SENDER_ADDRESS_3, :CONSIGNEE_ADDRESS_1,' +
        ' :CONSIGNEE_ADDRESS_2, :CONSIGNEE_ADDRESS_3, :SENDER_DEVICE_TYPE' +
        ', :SENDER_DEVICE_DETAILS, :CONSIGNEE_DEVICE_TYPE, :CONSIGNEE_DEV' +
        'ICE_DETAILS, :VALUE_TYPE, :INCOTERMS)')
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
        'UNT = :ITEMS_COUNT, PAYMENT_METHOD = :PAYMENT_METHOD, IS_HIGH = ' +
        ':IS_HIGH, CUSTOMS_VALUE = :CUSTOMS_VALUE, CURRENCY = :CURRENCY, ' +
        'CURRENCY_RATE = :CURRENCY_RATE, SENDER_ADDRESS_1 = :SENDER_ADDRE' +
        'SS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :' +
        'SENDER_ADDRESS_3, CONSIGNEE_ADDRESS_1 = :CONSIGNEE_ADDRESS_1, CO' +
        'NSIGNEE_ADDRESS_2 = :CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3 = ' +
        ':CONSIGNEE_ADDRESS_3, SENDER_DEVICE_TYPE = :SENDER_DEVICE_TYPE, ' +
        'SENDER_DEVICE_DETAILS = :SENDER_DEVICE_DETAILS, CONSIGNEE_DEVICE' +
        '_TYPE = :CONSIGNEE_DEVICE_TYPE, CONSIGNEE_DEVICE_DETAILS = :CONS' +
        'IGNEE_DEVICE_DETAILS, VALUE_TYPE = :VALUE_TYPE, INCOTERMS = :INC' +
        'OTERMS'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_' +
        'AREA, SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, SENDER_NAME' +
        ', SENDER_ADDRESS, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_' +
        'CODE, CONSIGNEE_NAME, CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CO' +
        'NSIGNEE_CITY, CONSIGNEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKA' +
        'GES_COUNT, ITEMS_COUNT, PAYMENT_METHOD, IS_HIGH, CUSTOMS_VALUE, ' +
        'CURRENCY, CURRENCY_RATE, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SEN' +
        'DER_ADDRESS_3, CONSIGNEE_ADDRESS_1, CONSIGNEE_ADDRESS_2, CONSIGN' +
        'EE_ADDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS, CONSIGN' +
        'EE_DEVICE_TYPE, CONSIGNEE_DEVICE_DETAILS, VALUE_TYPE, INCOTERMS ' +
        'FROM AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM AIRWAYBILL'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = FlightAirwaybillTrans
    SQL.Strings = (
      
        'Select * from airwaybill_item  where fk_airwaybill_serial=:AirSe' +
        'rial')
    UniDirectional = True
    Left = 88
    Top = 681
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AirSerial'
        Value = nil
      end>
    object AirwaybillItemSQLSEQUENCE: TIntegerField
      FieldName = 'SEQUENCE'
    end
    object AirwaybillItemSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object AirwaybillItemSQLPIECES: TIntegerField
      FieldName = 'PIECES'
    end
    object AirwaybillItemSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 80
    end
    object AirwaybillItemSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object AirwaybillItemSQLFK_AIRWAYBILL_SERIAL: TIntegerField
      FieldName = 'FK_AIRWAYBILL_SERIAL'
      Required = True
    end
    object AirwaybillItemSQLTARIFF_CODE: TStringField
      FieldName = 'TARIFF_CODE'
      Size = 17
    end
    object AirwaybillItemSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object AirwaybillItemSQLCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object AirwaybillItemSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
    end
    object AirwaybillItemSQLUNIT_OF_MEASURE: TStringField
      FieldName = 'UNIT_OF_MEASURE'
      FixedChar = True
      Size = 9
    end
  end
  object FA_ItemSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'ITEM_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL_ITEM'
      
        '  (SEQUENCE, WEIGHT, PIECES, DESCRIPTION, SERIAL_NUMBER, TARIFF_' +
        'CODE, AMOUNT, CURRENCY_RATE, CURRENCY, FK_FA_SERIAL)'
      'VALUES'
      
        '  (:SEQUENCE, :WEIGHT, :PIECES, :DESCRIPTION, :SERIAL_NUMBER, :T' +
        'ARIFF_CODE, :AMOUNT, :CURRENCY_RATE, :CURRENCY, :FK_FA_SERIAL)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL_ITEM'
      'SET'
      
        '  SEQUENCE = :SEQUENCE, WEIGHT = :WEIGHT, PIECES = :PIECES, DESC' +
        'RIPTION = :DESCRIPTION, SERIAL_NUMBER = :SERIAL_NUMBER, TARIFF_C' +
        'ODE = :TARIFF_CODE, AMOUNT = :AMOUNT, CURRENCY_RATE = :CURRENCY_' +
        'RATE, CURRENCY = :CURRENCY, FK_FA_SERIAL = :FK_FA_SERIAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SEQUENCE, WEIGHT, PIECES, DESCRIPTION, SERIAL_NUMBER, TAR' +
        'IFF_CODE, AMOUNT, CURRENCY_RATE, CURRENCY, FK_FA_SERIAL FROM FLI' +
        'GHT_AIRWAYBILL_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_AIRWAYBILL_ITEM'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM FLIGHT_AIRWAYBILL_ITEM'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = WriteTRans
    SQL.Strings = (
      'Select * from Flight_airwaybill_item  where fk_fa_serial= -1')
    FetchAll = True
    Left = 328
    Top = 753
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
  object WriteTRans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    Left = 945
    Top = 234
  end
  object UpdateTableSQL: TIBCSQL
    Connection = MainFormFRM.CabOutData
    Transaction = UpdateHawbTrans
    AutoCommit = True
    Left = 1297
    Top = 114
  end
  object AirwaybillOriginalSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
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
        'COUNT, ITEMS_COUNT, PAYMENT_METHOD, IS_HIGH, VALUE_TYPE, CUSTOMS' +
        '_VALUE, CURRENCY, CURRENCY_RATE, SENDER_ADDRESS_1, SENDER_ADDRES' +
        'S_2, SENDER_ADDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS' +
        ', CONSIGNEE_ADDRESS_1, CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3,' +
        ' CONSIGNEE_DEVICE_TYPE, CONSIGNEE_DEVICE_DETAILS, INCOTERMS, IS_' +
        'SCANNED, SENDER_EMAIL, CONSIGNEE_EMAIL, SERVICE_CODE, ACCOUNT_NU' +
        'MBER)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEQUENCE_NUMBER, :HAWB_ID, :SHIPMENT_ORIGIN_' +
        'AREA, :SHIPMENT_ORIGIN_COUNTRY, :PIECES, :WEIGHT, :DESCRIPTION, ' +
        ':FK_DOCUMENT_MASTER_SERIAL, :FK_MOVEMENT_SERIAL, :PIECES_S, :SEN' +
        'DER_NAME, :SENDER_ADDRESS, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY_CODE, :CONSIGNEE_NAME, :CONSIGNEE_ADDRESS, :CONSIGNE' +
        'E_POST_CODE, :CONSIGNEE_CITY, :CONSIGNEE_COUNTRY_CODE, :FK_ITINE' +
        'RARY_SERIAL, :PACKAGES_COUNT, :ITEMS_COUNT, :PAYMENT_METHOD, :IS' +
        '_HIGH, :VALUE_TYPE, :CUSTOMS_VALUE, :CURRENCY, :CURRENCY_RATE, :' +
        'SENDER_ADDRESS_1, :SENDER_ADDRESS_2, :SENDER_ADDRESS_3, :SENDER_' +
        'DEVICE_TYPE, :SENDER_DEVICE_DETAILS, :CONSIGNEE_ADDRESS_1, :CONS' +
        'IGNEE_ADDRESS_2, :CONSIGNEE_ADDRESS_3, :CONSIGNEE_DEVICE_TYPE, :' +
        'CONSIGNEE_DEVICE_DETAILS, :INCOTERMS, :IS_SCANNED, :SENDER_EMAIL' +
        ', :CONSIGNEE_EMAIL, :SERVICE_CODE, :ACCOUNT_NUMBER)')
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
        'UNT = :ITEMS_COUNT, PAYMENT_METHOD = :PAYMENT_METHOD, IS_HIGH = ' +
        ':IS_HIGH, VALUE_TYPE = :VALUE_TYPE, CUSTOMS_VALUE = :CUSTOMS_VAL' +
        'UE, CURRENCY = :CURRENCY, CURRENCY_RATE = :CURRENCY_RATE, SENDER' +
        '_ADDRESS_1 = :SENDER_ADDRESS_1, SENDER_ADDRESS_2 = :SENDER_ADDRE' +
        'SS_2, SENDER_ADDRESS_3 = :SENDER_ADDRESS_3, SENDER_DEVICE_TYPE =' +
        ' :SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS = :SENDER_DEVICE_DET' +
        'AILS, CONSIGNEE_ADDRESS_1 = :CONSIGNEE_ADDRESS_1, CONSIGNEE_ADDR' +
        'ESS_2 = :CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3 = :CONSIGNEE_A' +
        'DDRESS_3, CONSIGNEE_DEVICE_TYPE = :CONSIGNEE_DEVICE_TYPE, CONSIG' +
        'NEE_DEVICE_DETAILS = :CONSIGNEE_DEVICE_DETAILS, INCOTERMS = :INC' +
        'OTERMS, IS_SCANNED = :IS_SCANNED, SENDER_EMAIL = :SENDER_EMAIL, ' +
        'CONSIGNEE_EMAIL = :CONSIGNEE_EMAIL, SERVICE_CODE = :SERVICE_CODE' +
        ', ACCOUNT_NUMBER = :ACCOUNT_NUMBER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_' +
        'AREA, SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_D' +
        'OCUMENT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, SENDER_NAME' +
        ', SENDER_ADDRESS, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_' +
        'CODE, CONSIGNEE_NAME, CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CO' +
        'NSIGNEE_CITY, CONSIGNEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKA' +
        'GES_COUNT, ITEMS_COUNT, PAYMENT_METHOD, IS_HIGH, VALUE_TYPE, CUS' +
        'TOMS_VALUE, CURRENCY, CURRENCY_RATE, SENDER_ADDRESS_1, SENDER_AD' +
        'DRESS_2, SENDER_ADDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DET' +
        'AILS, CONSIGNEE_ADDRESS_1, CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRES' +
        'S_3, CONSIGNEE_DEVICE_TYPE, CONSIGNEE_DEVICE_DETAILS, INCOTERMS,' +
        ' IS_SCANNED, SENDER_EMAIL, CONSIGNEE_EMAIL, SERVICE_CODE, ACCOUN' +
        'T_NUMBER FROM AIRWAYBILL'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM AIRWAYBILL'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = WriteTRans
    SQL.Strings = (
      'Select * from airwaybill  where '
      '(is_scanned='#39'N'#39' or IS_SCANNED='#39#39' or is_scanned is null)'
      'and Hawb_ID= :HawbID')
    Left = 505
    Top = 474
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'HawbID'
        Value = nil
      end>
    object AirwaybillOriginalSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object AirwaybillOriginalSQLSEQUENCE_NUMBER: TIntegerField
      FieldName = 'SEQUENCE_NUMBER'
    end
    object AirwaybillOriginalSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
    object AirwaybillOriginalSQLSHIPMENT_ORIGIN_AREA: TStringField
      FieldName = 'SHIPMENT_ORIGIN_AREA'
      Size = 10
    end
    object AirwaybillOriginalSQLSHIPMENT_ORIGIN_COUNTRY: TStringField
      FieldName = 'SHIPMENT_ORIGIN_COUNTRY'
      FixedChar = True
      Size = 5
    end
    object AirwaybillOriginalSQLPIECES: TIntegerField
      FieldName = 'PIECES'
    end
    object AirwaybillOriginalSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object AirwaybillOriginalSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object AirwaybillOriginalSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
    end
    object AirwaybillOriginalSQLFK_MOVEMENT_SERIAL: TIntegerField
      FieldName = 'FK_MOVEMENT_SERIAL'
    end
    object AirwaybillOriginalSQLPIECES_S: TStringField
      FieldName = 'PIECES_S'
      FixedChar = True
      Size = 15
    end
    object AirwaybillOriginalSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLSENDER_ADDRESS: TStringField
      FieldName = 'SENDER_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object AirwaybillOriginalSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLSENDER_COUNTRY_CODE: TStringField
      FieldName = 'SENDER_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object AirwaybillOriginalSQLCONSIGNEE_NAME: TStringField
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLCONSIGNEE_ADDRESS: TStringField
      FieldName = 'CONSIGNEE_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLCONSIGNEE_POST_CODE: TStringField
      FieldName = 'CONSIGNEE_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object AirwaybillOriginalSQLCONSIGNEE_CITY: TStringField
      FieldName = 'CONSIGNEE_CITY'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLCONSIGNEE_COUNTRY_CODE: TStringField
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object AirwaybillOriginalSQLFK_ITINERARY_SERIAL: TIntegerField
      FieldName = 'FK_ITINERARY_SERIAL'
    end
    object AirwaybillOriginalSQLPACKAGES_COUNT: TIntegerField
      FieldName = 'PACKAGES_COUNT'
    end
    object AirwaybillOriginalSQLITEMS_COUNT: TIntegerField
      FieldName = 'ITEMS_COUNT'
    end
    object AirwaybillOriginalSQLPAYMENT_METHOD: TStringField
      FieldName = 'PAYMENT_METHOD'
      FixedChar = True
      Size = 2
    end
    object AirwaybillOriginalSQLIS_HIGH: TStringField
      FieldName = 'IS_HIGH'
      FixedChar = True
      Size = 1
    end
    object AirwaybillOriginalSQLVALUE_TYPE: TStringField
      FieldName = 'VALUE_TYPE'
      FixedChar = True
      Size = 1
    end
    object AirwaybillOriginalSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
    end
    object AirwaybillOriginalSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
    end
    object AirwaybillOriginalSQLCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object AirwaybillOriginalSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLSENDER_DEVICE_TYPE: TStringField
      FieldName = 'SENDER_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object AirwaybillOriginalSQLSENDER_DEVICE_DETAILS: TStringField
      FieldName = 'SENDER_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLCONSIGNEE_ADDRESS_1: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLCONSIGNEE_ADDRESS_2: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLCONSIGNEE_ADDRESS_3: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLCONSIGNEE_DEVICE_TYPE: TStringField
      FieldName = 'CONSIGNEE_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object AirwaybillOriginalSQLCONSIGNEE_DEVICE_DETAILS: TStringField
      FieldName = 'CONSIGNEE_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object AirwaybillOriginalSQLINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      FixedChar = True
      Size = 9
    end
    object AirwaybillOriginalSQLIS_SCANNED: TStringField
      FieldName = 'IS_SCANNED'
      FixedChar = True
      Size = 1
    end
    object AirwaybillOriginalSQLSENDER_EMAIL: TStringField
      FieldName = 'SENDER_EMAIL'
      FixedChar = True
      Size = 60
    end
    object AirwaybillOriginalSQLCONSIGNEE_EMAIL: TStringField
      FieldName = 'CONSIGNEE_EMAIL'
      FixedChar = True
      Size = 60
    end
    object AirwaybillOriginalSQLSERVICE_CODE: TStringField
      FieldName = 'SERVICE_CODE'
      Size = 10
    end
    object AirwaybillOriginalSQLACCOUNT_NUMBER: TStringField
      FieldName = 'ACCOUNT_NUMBER'
      FixedChar = True
      Size = 15
    end
  end
  object SelectSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = WriteTRans
    SQL.Strings = (
      'Select * from customer where code=-1;')
    ReadOnly = True
    Left = 1297
    Top = 170
  end
end
