object H_airwaybill2FRM: TH_airwaybill2FRM
  Left = 70
  Top = -8
  ClientHeight = 817
  ClientWidth = 1266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
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
  object Label15: TLabel
    Left = 19
    Top = 258
    Width = 28
    Height = 13
    Caption = 'Name'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label16: TLabel
    Left = 7
    Top = 284
    Width = 38
    Height = 13
    Caption = 'Address'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label17: TLabel
    Left = -2
    Top = 310
    Width = 49
    Height = 13
    Caption = 'Post Code'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label18: TLabel
    Left = 31
    Top = 336
    Width = 17
    Height = 13
    Caption = 'City'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label19: TLabel
    Left = 12
    Top = 362
    Width = 36
    Height = 13
    Caption = 'Country'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object TitlePNL: TPanel
    Left = 0
    Top = 0
    Width = 1266
    Height = 46
    Align = alTop
    Caption = 'Edit AirwayBill'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 763
    Width = 1266
    Height = 54
    Align = alBottom
    TabOrder = 1
    object AcceptBTN: TBitBtn
      Left = 18
      Top = 7
      Width = 76
      Height = 39
      Caption = 'Accept'
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
      ParentFont = False
      TabOrder = 0
      OnClick = AcceptBTNClick
    end
    object CancelBTN: TBitBtn
      Left = 112
      Top = 7
      Width = 77
      Height = 39
      Cancel = True
      Caption = 'Cancel'
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
      ParentFont = False
      TabOrder = 1
      OnClick = CancelBTNClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 46
    Width = 1266
    Height = 717
    Align = alClient
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 26
      Top = 7
      Width = 397
      Height = 289
      Caption = 'Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 33
        Top = 24
        Width = 26
        Height = 13
        Caption = 'Serial'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 33
        Top = 80
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
      object Label3: TLabel
        Left = 27
        Top = 197
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
      object Label4: TLabel
        Left = 11
        Top = 59
        Width = 49
        Height = 13
        Caption = 'Sequence'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 33
        Top = 126
        Width = 27
        Height = 13
        Caption = 'Origin'
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
        Top = 219
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
        Top = 147
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
      object Label25: TLabel
        Left = 35
        Top = 174
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
      object Label23: TLabel
        Left = 33
        Top = 102
        Width = 27
        Height = 13
        Caption = 'Value'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label20: TLabel
        Left = 20
        Top = 262
        Width = 41
        Height = 13
        Caption = 'Incoterm'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label21: TLabel
        Left = 131
        Top = 262
        Width = 64
        Height = 13
        Caption = 'Service Code'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label22: TLabel
        Left = 277
        Top = 262
        Width = 43
        Height = 13
        Caption = 'Account '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 2
        Top = 245
        Width = 57
        Height = 13
        Caption = 'Pay Method'
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
        Left = 65
        Top = 24
        Width = 59
        Height = 24
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = AirwaybillCDS
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
      object HawbFLD: TwwDBEdit
        Left = 65
        Top = 77
        Width = 98
        Height = 24
        Color = clWhite
        DataField = 'HAWB_ID'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit3: TwwDBEdit
        Left = 65
        Top = 193
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'PIECES'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object SequenceFLD: TwwDBEdit
        Left = 65
        Top = 56
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'SEQUENCE_NUMBER'
        DataSource = AirwaybillCDS
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
      object OriginFLD: TwwDBEdit
        Left = 65
        Top = 123
        Width = 98
        Height = 24
        Color = clWhite
        DataField = 'SHIPMENT_ORIGIN_COUNTRY'
        DataSource = AirwaybillCDS
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
      object WeightFLD: TwwDBEdit
        Left = 65
        Top = 216
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'WEIGHT'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object DescriptionFLD: TwwDBEdit
        Left = 65
        Top = 144
        Width = 261
        Height = 24
        Color = clWhite
        DataField = 'DESCRIPTION'
        DataSource = AirwaybillCDS
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
      object PiecesFLD: TwwDBEdit
        Left = 130
        Top = 193
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'PIECES_S'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit13: TwwDBEdit
        Left = 65
        Top = 171
        Width = 59
        Height = 24
        DataField = 'ITEMS_COUNT'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit14: TwwDBEdit
        Left = 65
        Top = 236
        Width = 98
        Height = 24
        DataField = 'PAYMENT_METHOD'
        DataSource = AirwaybillCDS
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ValueFLD: TwwDBComboBox
        Left = 65
        Top = 98
        Width = 98
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'VALUE_TYPE'
        DataSource = AirwaybillCDS
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'High'#9'H'#9'High'#9'H'
          'Medium'#9'M'#9'Medium'#9'M'
          'Low'#9'L'#9'Low'#9'L'
          'Unknown'#9#9'Unknown'#9)
        ItemIndex = 3
        ParentFont = False
        Sorted = False
        TabOrder = 10
        UnboundDataType = wwDefault
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 65
        Top = 259
        Width = 59
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE'#9'5'#9'Code'#9'F'
          'DESCRIPTION'#9'15'#9'DESCRIPTION'#9'F')
        DataField = 'INCOTERMS'
        DataSource = AirwaybillCDS
        LookupTable = IncotermsSQL
        LookupField = 'CODE'
        ParentFont = False
        TabOrder = 11
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 206
        Top = 259
        Width = 61
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE'#9'5'#9'Code'#9'F'
          'DESCRIPTION'#9'30'#9'Description'#9'F')
        DataField = 'SERVICE_CODE'
        DataSource = AirwaybillCDS
        LookupTable = ServiceCodeSQL
        LookupField = 'CODE'
        ParentFont = False
        TabOrder = 12
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 319
        Top = 259
        Width = 72
        Height = 24
        DataField = 'ACCOUNT_NUMBER'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object GroupBox4: TGroupBox
      Left = 26
      Top = 305
      Width = 397
      Height = 242
      Caption = 'Sender'
      TabOrder = 1
      OnClick = GroupBox4Click
      object Label26: TLabel
        Left = 32
        Top = 18
        Width = 28
        Height = 13
        Caption = 'Name'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label27: TLabel
        Left = 20
        Top = 50
        Width = 38
        Height = 13
        Caption = 'Address'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label28: TLabel
        Left = 11
        Top = 128
        Width = 49
        Height = 13
        Caption = 'Post Code'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label29: TLabel
        Left = 44
        Top = 154
        Width = 17
        Height = 13
        Caption = 'City'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label30: TLabel
        Left = 25
        Top = 180
        Width = 36
        Height = 13
        Caption = 'Country'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 367
        Top = 17
        Width = 21
        Height = 16
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
        OnClick = SpeedButton1Click
      end
      object Label31: TLabel
        Left = 201
        Top = 202
        Width = 25
        Height = 13
        Caption = 'Email'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label32: TLabel
        Left = 25
        Top = 202
        Width = 34
        Height = 13
        Caption = 'Device'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object wwDBEdit15: TwwDBEdit
        Left = 65
        Top = 15
        Width = 176
        Height = 24
        Color = clWhite
        DataField = 'SENDER_NAME'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit16: TwwDBEdit
        Left = 65
        Top = 44
        Width = 306
        Height = 24
        Color = clWhite
        DataField = 'SENDER_ADDRESS_1'
        DataSource = AirwaybillCDS
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
      object wwDBEdit17: TwwDBEdit
        Left = 65
        Top = 122
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'SENDER_POST_CODE'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit18: TwwDBEdit
        Left = 65
        Top = 148
        Width = 300
        Height = 24
        Color = clWhite
        DataField = 'SENDER_CITY'
        DataSource = AirwaybillCDS
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
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 65
        Top = 173
        Width = 98
        Height = 21
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODE_2'#9'5'#9'Code2'#9'F'
          'NAME'#9'60'#9'NAME'#9'F')
        DataField = 'SENDER_COUNTRY_CODE'
        DataSource = AirwaybillCDS
        LookupTable = SenderCountrySQL
        LookupField = 'CODE_2'
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object wwDBEdit19: TwwDBEdit
        Left = 65
        Top = 70
        Width = 306
        Height = 24
        Color = clWhite
        DataField = 'SENDER_ADDRESS_2'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit20: TwwDBEdit
        Left = 65
        Top = 96
        Width = 306
        Height = 24
        Color = clWhite
        DataField = 'SENDER_ADDRESS_3'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object SelectNameFLD: TwwDBEdit
        Left = 247
        Top = 15
        Width = 111
        Height = 24
        CharCase = ecUpperCase
        Color = 12319739
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit4: TwwDBEdit
        Left = 65
        Top = 199
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'SENDER_DEVICE_TYPE'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit5: TwwDBEdit
        Left = 247
        Top = 199
        Width = 124
        Height = 24
        Color = clWhite
        DataField = 'SENDER_DEVICE_DETAILS'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
      Left = 449
      Top = 312
      Width = 397
      Height = 235
      Caption = 'Consignee'
      TabOrder = 2
      object Label10: TLabel
        Left = 32
        Top = 18
        Width = 28
        Height = 13
        Caption = 'Name'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 20
        Top = 50
        Width = 38
        Height = 13
        Caption = 'Address'
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
        Left = 11
        Top = 128
        Width = 49
        Height = 13
        Caption = 'Post Code'
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
        Left = 44
        Top = 154
        Width = 17
        Height = 13
        Caption = 'City'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 25
        Top = 180
        Width = 36
        Height = 13
        Caption = 'Country'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label33: TLabel
        Left = 25
        Top = 202
        Width = 34
        Height = 13
        Caption = 'Device'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label34: TLabel
        Left = 201
        Top = 202
        Width = 25
        Height = 13
        Caption = 'Email'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object CnameFLD: TwwDBEdit
        Left = 65
        Top = 18
        Width = 306
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_NAME'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object Cadd1FLD: TwwDBEdit
        Left = 65
        Top = 44
        Width = 306
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_ADDRESS_1'
        DataSource = AirwaybillCDS
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
      object CpostFLD: TwwDBEdit
        Left = 65
        Top = 122
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_POST_CODE'
        DataSource = AirwaybillCDS
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
      object CCityFLD: TwwDBEdit
        Left = 65
        Top = 148
        Width = 300
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_CITY'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object CAdd2FLd: TwwDBEdit
        Left = 65
        Top = 70
        Width = 306
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_ADDRESS_2'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object CAdd3FLD: TwwDBEdit
        Left = 65
        Top = 96
        Width = 306
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_ADDRESS_3'
        DataSource = AirwaybillCDS
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
      object CCountryFLD: TwwDBEdit
        Left = 65
        Top = 177
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_COUNTRY_CODE'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit6: TwwDBEdit
        Left = 65
        Top = 199
        Width = 59
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_DEVICE_TYPE'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit7: TwwDBEdit
        Left = 247
        Top = 199
        Width = 124
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_DEVICE_DETAILS'
        DataSource = AirwaybillCDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 26
      Top = 585
      Width = 813
      Height = 98
      ControlType.Strings = (
        'CURRENCY;CustomEdit;CurrencyFLD')
      Selected.Strings = (
        'SERIAL_NUMBER'#9'5'#9'S/N'
        'SEQUENCE'#9'5'#9'SQ'
        'WEIGHT'#9'10'#9'Weight'
        'PIECES'#9'10'#9'Pieces'
        'DESCRIPTION'#9'28'#9'Description'
        'TARIFF_CODE'#9'17'#9'Tariff'
        'AMOUNT'#9'10'#9'Amount'
        'CURRENCY'#9'13'#9'Currency'
        'CURRENCY_RATE'#9'10'#9'Rate'
        'UNIT_OF_MEASURE'#9'8'#9'KG')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = AirItemSRC
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -10
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBNavigator1: TwwDBNavigator
      Left = 26
      Top = 553
      Width = 142
      Height = 20
      DataSource = AirItemSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object wwDBNavigator1Prior: TwwNavButton
        Left = 0
        Top = 0
        Width = 20
        Height = 20
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
        Left = 20
        Top = 0
        Width = 21
        Height = 20
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
        Left = 41
        Top = 0
        Width = 20
        Height = 20
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 61
        Top = 0
        Width = 20
        Height = 20
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
        Left = 81
        Top = 0
        Width = 21
        Height = 20
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
        Left = 102
        Top = 0
        Width = 20
        Height = 20
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
        Left = 122
        Top = 0
        Width = 20
        Height = 20
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
    object CurrencyFLD: TwwDBLookupCombo
      Left = 676
      Top = 637
      Width = 98
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'CURRENCY'
      DataSource = AirItemSRC
      LookupTable = CurrencySQL
      LookupField = 'CURRENCY_CODE'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object AirwaybillCDS: TIBCDataSource
    DataSet = AirwayBillSQL
    Left = 528
    Top = 137
  end
  object AirwayBillSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'AIRWAYBILL_GENERATOR'
    GeneratorMode = gmInsert
    DMLRefresh = True
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
        ', :CONSIGNEE_EMAIL, :SERVICE_CODE, :ACCOUNT_NUMBER)'
      'RETURNING '
      
        '  SERIAL_NUMBER, SEQUENCE_NUMBER, HAWB_ID, SHIPMENT_ORIGIN_AREA,' +
        ' SHIPMENT_ORIGIN_COUNTRY, PIECES, WEIGHT, DESCRIPTION, FK_DOCUME' +
        'NT_MASTER_SERIAL, FK_MOVEMENT_SERIAL, PIECES_S, SENDER_NAME, SEN' +
        'DER_ADDRESS, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY_CODE,' +
        ' CONSIGNEE_NAME, CONSIGNEE_ADDRESS, CONSIGNEE_POST_CODE, CONSIGN' +
        'EE_CITY, CONSIGNEE_COUNTRY_CODE, FK_ITINERARY_SERIAL, PACKAGES_C' +
        'OUNT, ITEMS_COUNT, PAYMENT_METHOD, IS_HIGH, VALUE_TYPE, CUSTOMS_' +
        'VALUE, CURRENCY, CURRENCY_RATE, SENDER_ADDRESS_1, SENDER_ADDRESS' +
        '_2, SENDER_ADDRESS_3, SENDER_DEVICE_TYPE, SENDER_DEVICE_DETAILS,' +
        ' CONSIGNEE_ADDRESS_1, CONSIGNEE_ADDRESS_2, CONSIGNEE_ADDRESS_3, ' +
        'CONSIGNEE_DEVICE_TYPE, CONSIGNEE_DEVICE_DETAILS, INCOTERMS, IS_S' +
        'CANNED, SENDER_EMAIL, CONSIGNEE_EMAIL, SERVICE_CODE, ACCOUNT_NUM' +
        'BER')
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
    UpdateTransaction = UpdateTrans
    SQL.Strings = (
      'Select * from airwaybill where serial_number = :SerialNumber')
    Active = True
    AfterInsert = AirwayBillSQLAfterInsert
    Left = 416
    Top = 129
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SerialNumber'
        ParamType = ptInput
        Value = nil
      end>
    object AirwayBillSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object AirwayBillSQLSEQUENCE_NUMBER: TIntegerField
      FieldName = 'SEQUENCE_NUMBER'
    end
    object AirwayBillSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
    object AirwayBillSQLSHIPMENT_ORIGIN_AREA: TStringField
      FieldName = 'SHIPMENT_ORIGIN_AREA'
      Size = 10
    end
    object AirwayBillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField
      FieldName = 'SHIPMENT_ORIGIN_COUNTRY'
      FixedChar = True
      Size = 5
    end
    object AirwayBillSQLPIECES: TIntegerField
      FieldName = 'PIECES'
    end
    object AirwayBillSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object AirwayBillSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object AirwayBillSQLPIECES_S: TStringField
      FieldName = 'PIECES_S'
      FixedChar = True
      Size = 15
    end
    object AirwayBillSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_ADDRESS: TStringField
      FieldName = 'SENDER_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object AirwayBillSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_COUNTRY_CODE: TStringField
      FieldName = 'SENDER_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object AirwayBillSQLCONSIGNEE_NAME: TStringField
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_ADDRESS: TStringField
      FieldName = 'CONSIGNEE_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_POST_CODE: TStringField
      FieldName = 'CONSIGNEE_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object AirwayBillSQLCONSIGNEE_CITY: TStringField
      FieldName = 'CONSIGNEE_CITY'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_COUNTRY_CODE: TStringField
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object AirwayBillSQLFK_ITINERARY_SERIAL: TIntegerField
      FieldName = 'FK_ITINERARY_SERIAL'
    end
    object AirwayBillSQLPACKAGES_COUNT: TIntegerField
      FieldName = 'PACKAGES_COUNT'
    end
    object AirwayBillSQLITEMS_COUNT: TIntegerField
      FieldName = 'ITEMS_COUNT'
    end
    object AirwayBillSQLPAYMENT_METHOD: TStringField
      FieldName = 'PAYMENT_METHOD'
      FixedChar = True
      Size = 2
    end
    object AirwayBillSQLIS_HIGH: TStringField
      FieldName = 'IS_HIGH'
      FixedChar = True
      Size = 1
    end
    object AirwayBillSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
    end
    object AirwayBillSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
    end
    object AirwayBillSQLCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object AirwayBillSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_ADDRESS_1: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_1'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_ADDRESS_2: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_2'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_ADDRESS_3: TStringField
      FieldName = 'CONSIGNEE_ADDRESS_3'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLSENDER_DEVICE_TYPE: TStringField
      FieldName = 'SENDER_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object AirwayBillSQLSENDER_DEVICE_DETAILS: TStringField
      FieldName = 'SENDER_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLCONSIGNEE_DEVICE_TYPE: TStringField
      FieldName = 'CONSIGNEE_DEVICE_TYPE'
      FixedChar = True
      Size = 9
    end
    object AirwayBillSQLCONSIGNEE_DEVICE_DETAILS: TStringField
      FieldName = 'CONSIGNEE_DEVICE_DETAILS'
      FixedChar = True
      Size = 35
    end
    object AirwayBillSQLVALUE_TYPE: TStringField
      FieldName = 'VALUE_TYPE'
      FixedChar = True
      Size = 1
    end
    object AirwayBillSQLINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      FixedChar = True
      Size = 9
    end
    object AirwayBillSQLSERVICE_CODE: TStringField
      FieldName = 'SERVICE_CODE'
      Size = 10
    end
    object AirwayBillSQLACCOUNT_NUMBER: TStringField
      FieldName = 'ACCOUNT_NUMBER'
      FixedChar = True
      Size = 15
    end
  end
  object UpdateTrans: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    Left = 544
    Top = 393
  end
  object SenderCountrySQL: TIBCQuery
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
    SQL.Strings = (
      'Select * from Country')
    ReadOnly = True
    Left = 761
    Top = 34
    object SenderCountrySQLCODE_2: TStringField
      DisplayLabel = 'Code2'
      DisplayWidth = 5
      FieldName = 'CODE_2'
      FixedChar = True
      Size = 2
    end
    object SenderCountrySQLNAME: TStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      FixedChar = True
      Size = 60
    end
  end
  object SenderCountrySRC: TIBCDataSource
    DataSet = SenderCountrySQL
    Left = 904
    Top = 33
  end
  object AirItemSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'AIRWAYBILL_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO AIRWAYBILL_ITEM'
      
        '  (SEQUENCE, WEIGHT, PIECES, DESCRIPTION, SERIAL_NUMBER, FK_AIRW' +
        'AYBILL_SERIAL, TARIFF_CODE, AMOUNT, CURRENCY_RATE, CURRENCY, UNI' +
        'T_OF_MEASURE)'
      'VALUES'
      
        '  (:SEQUENCE, :WEIGHT, :PIECES, :DESCRIPTION, :SERIAL_NUMBER, :F' +
        'K_AIRWAYBILL_SERIAL, :TARIFF_CODE, :AMOUNT, :CURRENCY_RATE, :CUR' +
        'RENCY, :UNIT_OF_MEASURE)')
    SQLDelete.Strings = (
      'DELETE FROM AIRWAYBILL_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE AIRWAYBILL_ITEM'
      'SET'
      
        '  SEQUENCE = :SEQUENCE, WEIGHT = :WEIGHT, PIECES = :PIECES, DESC' +
        'RIPTION = :DESCRIPTION, SERIAL_NUMBER = :SERIAL_NUMBER, FK_AIRWA' +
        'YBILL_SERIAL = :FK_AIRWAYBILL_SERIAL, TARIFF_CODE = :TARIFF_CODE' +
        ', AMOUNT = :AMOUNT, CURRENCY_RATE = :CURRENCY_RATE, CURRENCY = :' +
        'CURRENCY, UNIT_OF_MEASURE = :UNIT_OF_MEASURE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SEQUENCE, WEIGHT, PIECES, DESCRIPTION, SERIAL_NUMBER, FK_' +
        'AIRWAYBILL_SERIAL, TARIFF_CODE, AMOUNT, CURRENCY_RATE, CURRENCY,' +
        ' UNIT_OF_MEASURE FROM AIRWAYBILL_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM AIRWAYBILL_ITEM'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM AIRWAYBILL_ITEM'
      ''
      ') q')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UpdateTrans
    SQL.Strings = (
      'Select * from airwaybill_item')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_AIRWAYBILL_SERIAL'
    MasterSource = AirwaybillCDS
    Active = True
    Left = 136
    Top = 809
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object AirItemSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 5
      FieldName = 'SERIAL_NUMBER'
    end
    object AirItemSQLSEQUENCE: TIntegerField
      DisplayLabel = 'SQ'
      DisplayWidth = 5
      FieldName = 'SEQUENCE'
    end
    object AirItemSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 10
      FieldName = 'WEIGHT'
    end
    object AirItemSQLPIECES: TIntegerField
      DisplayLabel = 'Pieces'
      DisplayWidth = 10
      FieldName = 'PIECES'
    end
    object AirItemSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 28
      FieldName = 'DESCRIPTION'
      Size = 80
    end
    object AirItemSQLTARIFF_CODE: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 17
      FieldName = 'TARIFF_CODE'
      Size = 17
    end
    object AirItemSQLAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      DisplayWidth = 10
      FieldName = 'AMOUNT'
    end
    object AirItemSQLCURRENCY: TStringField
      DisplayLabel = 'Currency'
      DisplayWidth = 13
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
    end
    object AirItemSQLCURRENCY_RATE: TFloatField
      DisplayLabel = 'Rate'
      DisplayWidth = 10
      FieldName = 'CURRENCY_RATE'
    end
    object AirItemSQLUNIT_OF_MEASURE: TStringField
      DisplayLabel = 'KG'
      DisplayWidth = 8
      FieldName = 'UNIT_OF_MEASURE'
      FixedChar = True
      Size = 9
    end
    object AirItemSQLFK_AIRWAYBILL_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_AIRWAYBILL_SERIAL'
      Required = True
      Visible = False
    end
  end
  object AirItemSRC: TIBCDataSource
    DataSet = AirItemSQL
    Left = 248
    Top = 817
  end
  object IncotermsSQL: TIBCQuery
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    SQL.Strings = (
      'Select * from Incoterms')
    ReadOnly = True
    Active = True
    Left = 872
    Top = 153
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
    UpdateTransaction = UpdateTrans
    SQL.Strings = (
      'select * from service_code')
    ReadOnly = True
    Active = True
    Left = 904
    Top = 241
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
    UpdateTransaction = UpdateTrans
    SQL.Strings = (
      'Select * from currency')
    ReadOnly = True
    Left = 848
    Top = 321
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
end
