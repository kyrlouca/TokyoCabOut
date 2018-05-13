object H_FlightairwaybillFRM: TH_FlightairwaybillFRM
  Left = 595
  Top = 365
  Width = 1292
  Height = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label5: TLabel
    Left = 55
    Top = 324
    Width = 42
    Height = 16
    Caption = 'Weight'
  end
  object Label9: TLabel
    Left = 201
    Top = 356
    Width = 42
    Height = 16
    Caption = 'Pieces'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 43
    Top = 142
    Width = 32
    Height = 16
    Caption = 'Items'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label21: TLabel
    Left = 51
    Top = 150
    Width = 32
    Height = 16
    Caption = 'Items'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1274
    Height = 65
    Align = alTop
    Caption = 'Scanned AirwayBill'
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
    Top = 824
    Width = 1274
    Height = 66
    Align = alBottom
    TabOrder = 1
    object AcceptBTN: TBitBtn
      Left = 22
      Top = 8
      Width = 94
      Height = 49
      Caption = 'Accept'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = AcceptBTNClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object CancelBTN: TBitBtn
      Left = 138
      Top = 8
      Width = 95
      Height = 49
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = CancelBTNClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1274
    Height = 759
    Align = alClient
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 521
      Height = 305
      Caption = 'Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 27
        Width = 35
        Height = 16
        Caption = 'Serial'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 40
        Top = 65
        Width = 35
        Height = 16
        Caption = 'Hawb'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 33
        Top = 157
        Width = 42
        Height = 16
        Caption = 'Pieces'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 33
        Top = 185
        Width = 42
        Height = 16
        Caption = 'Weight'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 7
        Top = 211
        Width = 68
        Height = 16
        Caption = 'Description'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 239
        Width = 59
        Height = 16
        Caption = 'Pay (A, C)'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label22: TLabel
        Left = 43
        Top = 131
        Width = 32
        Height = 16
        Caption = 'Items'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 35
        Top = 94
        Width = 41
        Height = 16
        Caption = 'Value'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label20: TLabel
        Left = 24
        Top = 271
        Width = 51
        Height = 16
        Caption = 'Incoterm'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 177
        Top = 271
        Width = 49
        Height = 16
        Caption = 'Service '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label26: TLabel
        Left = 321
        Top = 271
        Width = 48
        Height = 16
        Caption = 'Account'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object SerialFLD: TwwDBEdit
        Left = 80
        Top = 27
        Width = 73
        Height = 24
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object HawbFLD: TwwDBEdit
        Left = 80
        Top = 61
        Width = 121
        Height = 24
        Color = clBtnFace
        DataField = 'HAWB_ID'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object WeightFLD: TwwDBEdit
        Left = 80
        Top = 181
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'WEIGHT'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object DescriptionFLD: TwwDBEdit
        Left = 80
        Top = 207
        Width = 403
        Height = 24
        Color = clWhite
        DataField = 'DESCRIPTION'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object PiecesFLD: TwwDBEdit
        Left = 80
        Top = 155
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'PIECES'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ItemsFLD: TwwDBEdit
        Left = 80
        Top = 127
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'ITEMS_COUNT'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object PaymentFLD: TwwDBEdit
        Left = 80
        Top = 235
        Width = 81
        Height = 24
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'PAYMENT_METHOD'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ValueFLD: TwwDBComboBox
        Left = 80
        Top = 91
        Width = 121
        Height = 24
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'VALUE_TYPE'
        DataSource = FlightAirwaybillCDS
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'High'#9'H'#9'High'#9'H'
          'Medium'#9'M'#9'Medium'#9'M'
          'Low'#9'L'#9'Low'#9'L'
          'Unknown'#9#9'Unknown'#9)
        Sorted = False
        TabOrder = 7
        UnboundDataType = wwDefault
      end
      object IncotermsFLD: TwwDBLookupCombo
        Left = 80
        Top = 267
        Width = 89
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE'#9'5'#9'Code'#9'F'
          'DESCRIPTION'#9'15'#9'DESCRIPTION'#9'F')
        DataField = 'INCOTERMS'
        DataSource = FlightAirwaybillCDS
        LookupTable = IncotermsSQL
        LookupField = 'CODE'
        ParentFont = False
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object ServiceCodeFLD: TwwDBLookupCombo
        Left = 230
        Top = 267
        Width = 83
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE'#9'5'#9'Code'#9'F'
          'DESCRIPTION'#9'30'#9'Description'#9'F')
        DataField = 'SERVICE_CODE'
        DataSource = FlightAirwaybillCDS
        LookupTable = ServiceCodeSQL
        LookupField = 'CODE'
        ParentFont = False
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object AccountNumbFD: TwwDBEdit
        Left = 376
        Top = 267
        Width = 105
        Height = 24
        DataField = 'ACCOUNT_NUMBER'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 319
      Width = 521
      Height = 298
      Caption = 'Sender'
      TabOrder = 1
      object Label10: TLabel
        Left = 39
        Top = 31
        Width = 37
        Height = 16
        Caption = 'Name'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 25
        Top = 61
        Width = 51
        Height = 16
        Caption = 'Address'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 13
        Top = 157
        Width = 63
        Height = 16
        Caption = 'Post Code'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 54
        Top = 189
        Width = 22
        Height = 16
        Caption = 'City'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 31
        Top = 220
        Width = 45
        Height = 16
        Caption = 'Country'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 468
        Top = 24
        Width = 26
        Height = 25
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
      object Label32: TLabel
        Left = 31
        Top = 249
        Width = 43
        Height = 16
        Caption = 'Device'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label31: TLabel
        Left = 247
        Top = 249
        Width = 34
        Height = 16
        Caption = 'Email'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object sname: TwwDBEdit
        Left = 80
        Top = 23
        Width = 201
        Height = 24
        Color = clWhite
        DataField = 'SENDER_NAME'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object sadd1: TwwDBEdit
        Left = 80
        Top = 57
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'SENDER_ADDRESS_1'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object spost: TwwDBEdit
        Left = 80
        Top = 153
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'SENDER_POST_CODE'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object scity: TwwDBEdit
        Left = 80
        Top = 185
        Width = 369
        Height = 24
        Color = clWhite
        DataField = 'SENDER_CITY'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object scountry: TwwDBLookupCombo
        Left = 80
        Top = 216
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE_2'#9'5'#9'Code2'#9'F'
          'NAME'#9'60'#9'NAME'#9'F')
        DataField = 'SENDER_COUNTRY_CODE'
        DataSource = FlightAirwaybillCDS
        LookupTable = CountrySQL
        LookupField = 'CODE_2'
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
      end
      object SelectNameFLD: TwwDBEdit
        Left = 296
        Top = 23
        Width = 160
        Height = 24
        TabStop = False
        CharCase = ecUpperCase
        Color = 12319739
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object sadd2: TwwDBEdit
        Left = 80
        Top = 89
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'SENDER_ADDRESS_2'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object sadd3: TwwDBEdit
        Left = 80
        Top = 121
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'SENDER_ADDRESS_3'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit4: TwwDBEdit
        Left = 80
        Top = 245
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'SENDER_DEVICE_TYPE'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit5: TwwDBEdit
        Left = 304
        Top = 245
        Width = 153
        Height = 24
        Color = clWhite
        DataField = 'SENDER_DEVICE_DETAILS'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 560
      Top = 319
      Width = 561
      Height = 306
      Caption = 'Consignee'
      TabOrder = 2
      object Label15: TLabel
        Left = 39
        Top = 29
        Width = 37
        Height = 16
        Caption = 'Name'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label16: TLabel
        Left = 25
        Top = 61
        Width = 51
        Height = 16
        Caption = 'Address'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 13
        Top = 157
        Width = 63
        Height = 16
        Caption = 'Post Code'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 54
        Top = 189
        Width = 22
        Height = 16
        Caption = 'City'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label19: TLabel
        Left = 31
        Top = 220
        Width = 45
        Height = 16
        Caption = 'Country'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label27: TLabel
        Left = 31
        Top = 249
        Width = 43
        Height = 16
        Caption = 'Device'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label28: TLabel
        Left = 247
        Top = 249
        Width = 34
        Height = 16
        Caption = 'Email'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object namefld: TwwDBEdit
        Left = 80
        Top = 25
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_NAME'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cadd1: TwwDBEdit
        Left = 80
        Top = 57
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_ADDRESS_1'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cpost: TwwDBEdit
        Left = 80
        Top = 153
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_POST_CODE'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ccity: TwwDBEdit
        Left = 80
        Top = 185
        Width = 369
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_CITY'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ccountry: TwwDBLookupCombo
        Left = 80
        Top = 216
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE_2'#9'5'#9'Code2'#9'F'
          'NAME'#9'60'#9'NAME'#9'F')
        DataField = 'CONSIGNEE_COUNTRY_CODE'
        DataSource = FlightAirwaybillCDS
        LookupTable = CountrySQL
        LookupField = 'CODE_2'
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
      end
      object cadd2: TwwDBEdit
        Left = 80
        Top = 89
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_ADDRESS_2'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cadd3: TwwDBEdit
        Left = 80
        Top = 121
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_ADDRESS_3'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 80
        Top = 245
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_DEVICE_TYPE'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 304
        Top = 245
        Width = 153
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_DEVICE_DETAILS'
        DataSource = FlightAirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object CountryGRD: TwwDBGrid
      Left = 568
      Top = 80
      Width = 329
      Height = 169
      ControlType.Strings = (
        'COUNTRY_CODE;CustomEdit;CountryLookupFLD')
      Selected.Strings = (
        'ORDER_POSITION'#9'5'#9'Pos'#9'F'
        'COUNTRY_CODE'#9'8'#9'Code'#9'F'
        'Country'#9'25'#9'Country'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = FAirwaybillCountryCRC
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap]
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
    object ItineraryFLD: TwwDBLookupCombo
      Left = 568
      Top = 16
      Width = 225
      Height = 24
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FLIGHT_NAME'#9'30'#9'Itinerary'#9'F')
      LookupTable = ItinerarySQL
      LookupField = 'FLIGHT_NAME'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = ItineraryFLDCloseUp
    end
    object wwDBNavigator1: TwwDBNavigator
      Left = 570
      Top = 49
      Width = 200
      Height = 24
      AutosizeStyle = asNone
      DataSource = FAirwaybillCountryCRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object wwDBNavigator1Prior: TwwNavButton
        Left = 0
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
        Index = 0
        Style = nbsPrior
      end
      object wwDBNavigator1Next: TwwNavButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Next'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsNext
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 50
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1InsertClick
        Index = 2
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 75
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsDelete
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 100
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 125
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsCancel
      end
      object wwDBNavigator1Refresh: TwwNavButton
        Left = 150
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
        Index = 6
        Style = nbsRefresh
      end
    end
    object CountryLookupFLD: TwwDBLookupCombo
      Left = 600
      Top = 208
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODE_2'#9'5'#9'Code2'#9'F'
        'NAME'#9'60'#9'NAME'#9'F')
      DataField = 'COUNTRY_CODE'
      DataSource = FAirwaybillCountryCRC
      LookupTable = CountrySQL
      LookupField = 'CODE_2'
      TabOrder = 6
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
      ShowMatchText = True
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 624
      Width = 1105
      Height = 169
      Caption = 'Items'
      TabOrder = 7
      object SpeedButton2: TSpeedButton
        Left = 967
        Top = 76
        Width = 26
        Height = 19
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
        OnClick = SpeedButton2Click
      end
      object Label24: TLabel
        Left = 768
        Top = 48
        Width = 39
        Height = 19
        Caption = 'Tariff'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBGrid1: TwwDBGrid
        Left = 16
        Top = 56
        Width = 721
        Height = 97
        ControlType.Strings = (
          'CURRENCY;CustomEdit;CurrencyFLD')
        PictureMasks.Strings = (
          'TARIFF_CODE'#9'####  ## ## ##'#9'T'#9'T')
        Selected.Strings = (
          'SEQUENCE'#9'8'#9'Sequence'
          'DESCRIPTION'#9'19'#9'Description'
          'WEIGHT'#9'10'#9'Weight'
          'PIECES'#9'10'#9'Pieces'
          'TARIFF_CODE'#9'17'#9'Tariff'
          'AMOUNT'#9'10'#9'Amount'
          'CURRENCY'#9'10'#9'Currency')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = FA_ItemSRC
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
      end
      object wwDBNavigator2: TwwDBNavigator
        Left = 25
        Top = 17
        Width = 200
        Height = 24
        AutosizeStyle = asNone
        DataSource = FA_ItemSRC
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        object wwNavButton1: TwwNavButton
          Left = 0
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
          Index = 0
          Style = nbsPrior
        end
        object wwNavButton2: TwwNavButton
          Left = 25
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsNext
        end
        object wwNavButton3: TwwNavButton
          Left = 50
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Insert'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          OnClick = wwDBNavigator1InsertClick
          Index = 2
          Style = nbsInsert
        end
        object wwNavButton4: TwwNavButton
          Left = 75
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsDelete
        end
        object wwNavButton5: TwwNavButton
          Left = 100
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsPost
        end
        object wwNavButton6: TwwNavButton
          Left = 125
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsCancel
        end
        object wwNavButton7: TwwNavButton
          Left = 150
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
          Index = 6
          Style = nbsRefresh
        end
      end
      object SelectTariffFLD: TwwDBEdit
        Left = 763
        Top = 73
        Width = 198
        Height = 24
        CharCase = ecUpperCase
        Color = 12319739
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Picture.PictureMask = '####  ## ## ##'
        Picture.AllowInvalidExit = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object wwDBGrid2: TwwDBGrid
      Left = 952
      Top = 72
      Width = 329
      Height = 169
      ControlType.Strings = (
        'COUNTRY_CODE;CustomEdit;CountryLookupFLD')
      Selected.Strings = (
        'INFO_TYPE'#9'11'#9'Param'#9'F'
        'INFO_VALUE'#9'10'#9'Value'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = FAirwaybillParamSRC
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap]
      TabOrder = 8
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
    object wwDBNavigator3: TwwDBNavigator
      Left = 954
      Top = 41
      Width = 200
      Height = 24
      AutosizeStyle = asNone
      DataSource = FAirwaybillParamSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object wwNavButton8: TwwNavButton
        Left = 0
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
        Index = 0
        Style = nbsPrior
      end
      object wwNavButton9: TwwNavButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Next'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsNext
      end
      object wwNavButton10: TwwNavButton
        Left = 50
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1InsertClick
        Index = 2
        Style = nbsInsert
      end
      object wwNavButton11: TwwNavButton
        Left = 75
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsDelete
      end
      object wwNavButton12: TwwNavButton
        Left = 100
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsPost
      end
      object wwNavButton13: TwwNavButton
        Left = 125
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsCancel
      end
      object wwNavButton14: TwwNavButton
        Left = 150
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
        Index = 6
        Style = nbsRefresh
      end
    end
  end
  object CurrencyFLD: TwwDBLookupCombo
    Left = 336
    Top = 792
    Width = 121
    Height = 24
    DropDownAlignment = taLeftJustify
    DataField = 'CURRENCY'
    DataSource = FA_ItemSRC
    LookupTable = CurrencySQL
    LookupField = 'CURRENCY_CODE'
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
  end
  object FlightAirwaybillCDS: TIBCDataSource
    DataSet = FlightAirwaybillSQL
    Left = 224
    Top = 241
  end
  object FairwaybillCountrySQL: TIBCQuery
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
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      'Select * from flight_airwaybill_country order by Order_position')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_FLIGHT_AIRWAYBILL'
    MasterSource = FlightAirwaybillCDS
    Active = True
    OnPostError = FairwaybillCountrySQLPostError
    Left = 576
    Top = 265
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
      end>
    object FairwaybillCountrySQLORDER_POSITION: TIntegerField
      DisplayLabel = 'Pos'
      DisplayWidth = 5
      FieldName = 'ORDER_POSITION'
    end
    object FairwaybillCountrySQLCOUNTRY_CODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 8
      FieldName = 'COUNTRY_CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object FairwaybillCountrySQLCountry: TStringField
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'Country'
      LookupDataSet = CountrySQL
      LookupKeyFields = 'CODE_2'
      LookupResultField = 'NAME'
      KeyFields = 'COUNTRY_CODE'
      Lookup = True
    end
    object FairwaybillCountrySQLFK_FLIGHT_AIRWAYBILL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_FLIGHT_AIRWAYBILL'
      Required = True
      Visible = False
    end
  end
  object FAirwaybillCountryCRC: TIBCDataSource
    DataSet = FairwaybillCountrySQL
    Left = 632
    Top = 313
  end
  object CountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO COUNTRY'
      
        '  (CODE_3, CODE_2, NAME, FK_CURRENCY_CODE, GREEK_NAME, SERIAL_NU' +
        'MBER)'
      'VALUES'
      
        '  (:CODE_3, :CODE_2, :NAME, :FK_CURRENCY_CODE, :GREEK_NAME, :SER' +
        'IAL_NUMBER)')
    SQLDelete.Strings = (
      'DELETE FROM COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE COUNTRY'
      'SET'
      
        '  CODE_3 = :CODE_3, CODE_2 = :CODE_2, NAME = :NAME, FK_CURRENCY_' +
        'CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, SERIAL_NUMBE' +
        'R = :SERIAL_NUMBER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT CODE_3, CODE_2, NAME, FK_CURRENCY_CODE, GREEK_NAME, SERIA' +
        'L_NUMBER FROM COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM COUNTRY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      'Select * from Country')
    ReadOnly = True
    Active = True
    Left = 817
    Top = 314
    object CountrySQLCODE_2: TStringField
      DisplayLabel = 'Code2'
      DisplayWidth = 5
      FieldName = 'CODE_2'
      FixedChar = True
      Size = 2
    end
    object CountrySQLNAME: TStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      FixedChar = True
      Size = 60
    end
  end
  object UpdateTransaction: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    Left = 704
    Top = 417
  end
  object ItinerarySQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      'Select * from Itinerary')
    ReadOnly = True
    Active = True
    Left = 320
    Top = 105
    object ItinerarySQLFLIGHT_NAME: TStringField
      DisplayLabel = 'Itinerary'
      DisplayWidth = 30
      FieldName = 'FLIGHT_NAME'
      FixedChar = True
      Size = 30
    end
    object ItinerarySQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object ItineraryCRC: TIBCDataSource
    DataSet = ItinerarySQL
    Left = 696
    Top = 225
  end
  object ItineraryCountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO ITINERARY_COUNTRY'
      
        '  (SERIAL_NUMBER, FK_ITINERARY_SERIAL, COUNTRY_CODE, ORDER_POSIT' +
        'ION)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_ITINERARY_SERIAL, :COUNTRY_CODE, :ORDER_P' +
        'OSITION)')
    SQLDelete.Strings = (
      'DELETE FROM ITINERARY_COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE ITINERARY_COUNTRY'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_ITINERARY_SERIAL = :FK_ITIN' +
        'ERARY_SERIAL, COUNTRY_CODE = :COUNTRY_CODE, ORDER_POSITION = :OR' +
        'DER_POSITION'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_ITINERARY_SERIAL, COUNTRY_CODE, ORDER_P' +
        'OSITION FROM ITINERARY_COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :P_1_SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM ITINERARY_COUNTRY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      'select * from itinerary_country order by order_position')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_ITINERARY_SERIAL'
    MasterSource = ItineraryCRC
    ReadOnly = True
    Active = True
    Left = 824
    Top = 185
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = 12
      end
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = 12
      end>
    object ItineraryCountrySQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object ItineraryCountrySQLFK_ITINERARY_SERIAL: TIntegerField
      FieldName = 'FK_ITINERARY_SERIAL'
      Required = True
    end
    object ItineraryCountrySQLCOUNTRY_CODE: TStringField
      FieldName = 'COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object ItineraryCountrySQLORDER_POSITION: TIntegerField
      FieldName = 'ORDER_POSITION'
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
        ', IS_CLEARED, IS_HIGH, SERVICE_CODE, ACCOUNT_NUMBER, INCOTERMS)'
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
        'GH, :SERVICE_CODE, :ACCOUNT_NUMBER, :INCOTERMS)')
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
        'ER, INCOTERMS = :INCOTERMS'
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
        'MS FROM FLIGHT_AIRWAYBILL'
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
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      
        'Select * from Flight_airwaybill where serial_number= :SerialNumb' +
        'er')
    DetailFields = 'FK_FLIGHT_OUT_SERIAL'
    FetchAll = True
    Left = 448
    Top = 129
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SerialNumber'
        ParamType = ptInput
      end>
    object FlightAirwaybillSQLHAWB_ID: TStringField
      DisplayLabel = 'Hawb Id'
      DisplayWidth = 10
      FieldName = 'HAWB_ID'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.HAWB_ID'
      Size = 10
    end
    object FlightAirwaybillSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 18
      FieldName = 'DESCRIPTION'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object FlightAirwaybillSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 10
      FieldName = 'WEIGHT'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.WEIGHT'
      DisplayFormat = '0.00'
    end
    object FlightAirwaybillSQLPIECES: TIntegerField
      DisplayLabel = 'Pieces'
      DisplayWidth = 10
      FieldName = 'PIECES'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.PIECES'
    end
    object FlightAirwaybillSQLSENDER_NAME: TStringField
      DisplayLabel = 'Sender Name'
      DisplayWidth = 19
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_ADDRESS: TStringField
      DisplayLabel = 'Sender Address'
      DisplayWidth = 35
      FieldName = 'SENDER_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_POST_CODE: TStringField
      DisplayWidth = 20
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLSENDER_CITY: TStringField
      DisplayWidth = 35
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_COUNTRY_CODE: TStringField
      DisplayWidth = 25
      FieldName = 'SENDER_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object FlightAirwaybillSQLCONSIGNEE_NAME: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_POST_CODE: TStringField
      DisplayWidth = 24
      FieldName = 'CONSIGNEE_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLCONSIGNEE_CITY: TStringField
      DisplayWidth = 35
      FieldName = 'CONSIGNEE_CITY'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_COUNTRY_CODE: TStringField
      DisplayWidth = 28
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object FlightAirwaybillSQLFK_ITINERARY_SERIAL: TIntegerField
      DisplayWidth = 21
      FieldName = 'FK_ITINERARY_SERIAL'
    end
    object FlightAirwaybillSQLPACKAGES_COUNT: TIntegerField
      DisplayWidth = 18
      FieldName = 'PACKAGES_COUNT'
    end
    object FlightAirwaybillSQLITEMS_COUNT: TIntegerField
      DisplayWidth = 13
      FieldName = 'ITEMS_COUNT'
    end
    object FlightAirwaybillSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 16
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CABOUTDATA.FLIGHT_AIRWAYBILL.SERIAL_NUMBER'
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
    object FlightAirwaybillSQLPAYMENT_METHOD: TStringField
      FieldName = 'PAYMENT_METHOD'
      FixedChar = True
      Size = 2
    end
    object FlightAirwaybillSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLFK_SENDER_SERIAL: TIntegerField
      FieldName = 'FK_SENDER_SERIAL'
    end
    object FlightAirwaybillSQLSENDER_ACCOUNT_NUMBER: TIntegerField
      FieldName = 'SENDER_ACCOUNT_NUMBER'
    end
    object FlightAirwaybillSQLDISTRICT_CODE: TStringField
      FieldName = 'DISTRICT_CODE'
      FixedChar = True
      Size = 3
    end
    object FlightAirwaybillSQLTARIFF_CODE: TStringField
      FieldName = 'TARIFF_CODE'
      Size = 17
    end
    object FlightAirwaybillSQLTARIFF_KEYWORD: TStringField
      FieldName = 'TARIFF_KEYWORD'
      FixedChar = True
      Size = 30
    end
    object FlightAirwaybillSQLIS_CLEARED: TStringField
      FieldName = 'IS_CLEARED'
      FixedChar = True
      Size = 1
    end
    object FlightAirwaybillSQLVALUE_TYPE: TStringField
      FieldName = 'VALUE_TYPE'
      FixedChar = True
      Size = 1
    end
    object FlightAirwaybillSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLSENDER_DEVICE_TYPE: TStringField
      FieldName = 'SENDER_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLSENDER_DEVICE_DETAILS: TStringField
      FieldName = 'SENDER_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_DEVICE_TYPE: TStringField
      FieldName = 'CONSIGNEE_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object FlightAirwaybillSQLCONSIGNEE_DEVICE_DETAILS: TStringField
      FieldName = 'CONSIGNEE_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS_1: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS_2: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLCONSIGNEE_ADDRESS_3: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object FlightAirwaybillSQLIS_HIGH: TStringField
      FieldName = 'IS_HIGH'
      FixedChar = True
      Size = 1
    end
    object FlightAirwaybillSQLSERVICE_CODE: TStringField
      FieldName = 'SERVICE_CODE'
      Size = 10
    end
    object FlightAirwaybillSQLACCOUNT_NUMBER: TStringField
      FieldName = 'ACCOUNT_NUMBER'
      FixedChar = True
      Size = 15
    end
    object FlightAirwaybillSQLINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      FixedChar = True
      Size = 9
    end
  end
  object FA_ItemSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
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
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      'Select * from FLIGHT_AIRWAYBILL_ITEM')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_FA_SERIAL'
    MasterSource = FlightAirwaybillCDS
    Active = True
    Left = 456
    Top = 801
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIAL_NUMBER'
      end
      item
        DataType = ftUnknown
        Name = 'SERIAL_NUMBER'
      end>
    object FA_ItemSQLSEQUENCE: TIntegerField
      DisplayLabel = 'Sequence'
      DisplayWidth = 8
      FieldName = 'SEQUENCE'
    end
    object FA_ItemSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 19
      FieldName = 'DESCRIPTION'
      Size = 80
    end
    object FA_ItemSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 10
      FieldName = 'WEIGHT'
    end
    object FA_ItemSQLPIECES: TIntegerField
      DisplayLabel = 'Pieces'
      DisplayWidth = 10
      FieldName = 'PIECES'
    end
    object FA_ItemSQLTARIFF_CODE: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 17
      FieldName = 'TARIFF_CODE'
      Size = 17
    end
    object FA_ItemSQLAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      DisplayWidth = 10
      FieldName = 'AMOUNT'
    end
    object FA_ItemSQLCURRENCY: TStringField
      DisplayLabel = 'Currency'
      DisplayWidth = 10
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
    end
    object FA_ItemSQLCURRENCY_RATE: TFloatField
      DisplayLabel = 'Curr Rate'
      DisplayWidth = 10
      FieldName = 'CURRENCY_RATE'
      Visible = False
    end
    object FA_ItemSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Visible = False
    end
    object FA_ItemSQLFK_FA_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_FA_SERIAL'
      Required = True
      Visible = False
    end
  end
  object FA_ItemSRC: TIBCDataSource
    DataSet = FA_ItemSQL
    Left = 576
    Top = 801
  end
  object IncotermsSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    SQL.Strings = (
      'Select * from Incoterms')
    ReadOnly = True
    Active = True
    Left = 176
    Top = 17
    object IncotermsSQLCODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 5
      FieldName = 'CODE'
      FixedChar = True
      Size = 5
    end
    object IncotermsSQLDESCRIPTION: TStringField
      DisplayWidth = 15
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object IncotermsSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object ServiceCodeSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    SQL.Strings = (
      'select * from service_code')
    ReadOnly = True
    Active = True
    Left = 272
    Top = 25
    object ServiceCodeSQLCODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 5
      FieldName = 'CODE'
      FixedChar = True
      Size = 5
    end
    object ServiceCodeSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 30
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object ServiceCodeSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object CurrencySQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    SQL.Strings = (
      'Select * from currency')
    ReadOnly = True
    Left = 816
    Top = 265
    object CurrencySQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
    end
    object CurrencySQLCURRENCY_CODE: TStringField
      FieldName = 'CURRENCY_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CurrencySQLCOUNTRY_CODE: TIntegerField
      FieldName = 'COUNTRY_CODE'
    end
    object CurrencySQLXML_CURRENCY: TStringField
      FieldName = 'XML_CURRENCY'
      FixedChar = True
      Size = 2
    end
  end
  object ParamGroupSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      'Select * from Param_FA_Category')
    ReadOnly = True
    Active = True
    Left = 936
    Top = 41
    object ParamGroupSQLDESCRIPTION: TStringField
      DisplayWidth = 15
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 15
    end
    object ParamGroupSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object ParamGroupSRC: TIBCDataSource
    DataSet = ParamGroupSQL
    Left = 1192
    Top = 105
  end
  object FAirwaybillParamSRC: TIBCDataSource
    DataSet = FAIrwayBillParamSQL
    Left = 1040
    Top = 41
  end
  object FAIrwayBillParamSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO FLIGHT_AIRWAYBILL_PARAMETER'
      '  (SERIAL_NUMBER, FK_FLIGHT_AIRWAYBILL, INFO_TYPE, INFO_VALUE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_FLIGHT_AIRWAYBILL, :INFO_TYPE, :INFO_VALU' +
        'E)')
    SQLDelete.Strings = (
      'DELETE FROM FLIGHT_AIRWAYBILL_PARAMETER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE FLIGHT_AIRWAYBILL_PARAMETER'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_FLIGHT_AIRWAYBILL = :FK_FLI' +
        'GHT_AIRWAYBILL, INFO_TYPE = :INFO_TYPE, INFO_VALUE = :INFO_VALUE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_FLIGHT_AIRWAYBILL, INFO_TYPE, INFO_VALU' +
        'E FROM FLIGHT_AIRWAYBILL_PARAMETER'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM FLIGHT_AIRWAYBILL_PARAMETER'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM FLIGHT_AIRWAYBILL_PARAMETER'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'select * from flight_airwayBIll_parameter')
    Active = True
    Left = 1024
    Top = 153
  end
  object ParamGroupItemSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    SQL.Strings = (
      'Select * from param_fa_category_item')
    Left = 1016
    Top = 233
    object ParamGroupItemSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object ParamGroupItemSQLFK_PARAM_FA_CATEGORY: TIntegerField
      FieldName = 'FK_PARAM_FA_CATEGORY'
      Required = True
    end
    object ParamGroupItemSQLINFO_TYPE: TStringField
      FieldName = 'INFO_TYPE'
      FixedChar = True
      Size = 30
    end
    object ParamGroupItemSQLINFO_VALUE: TStringField
      FieldName = 'INFO_VALUE'
      FixedChar = True
      Size = 30
    end
  end
end