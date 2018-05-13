object H_ScanAirwaibillNewFRM: TH_ScanAirwaibillNewFRM
  Left = 156
  Top = 297
  Width = 1583
  Height = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1565
    Height = 65
    Align = alTop
    Caption = 'SCAN New'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel5: TPanel
      Left = 1379
      Top = 1
      Width = 185
      Height = 63
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object wwDBEdit3: TwwDBEdit
        Left = 40
        Top = 23
        Width = 121
        Height = 24
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = FlightOutCDS
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
    end
  end
  object BottomPNL: TPanel
    Left = 0
    Top = 690
    Width = 1565
    Height = 65
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 10
      Top = 4
      Width = 109
      Height = 54
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
    Width = 1565
    Height = 625
    Align = alClient
    TabOrder = 2
    object HeaderPNL: TPanel
      Left = 1
      Top = 1
      Width = 1563
      Height = 208
      Align = alTop
      TabOrder = 0
      object Label10: TLabel
        Left = 472
        Top = 48
        Width = 73
        Height = 16
        Caption = 'Find Flight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object FindHawbBTN: TSpeedButton
        Left = 748
        Top = 36
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
        Visible = False
        OnClick = FindHawbBTNClick
      end
      object SearchFlightOutFLD: TwwDBEdit
        Left = 564
        Top = 36
        Width = 173
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
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
        Left = 608
        Top = 124
        Width = 137
        Height = 61
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = 'Add Flight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = BitBtn3Click
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
      object GroupBox1: TGroupBox
        Left = 16
        Top = 16
        Width = 281
        Height = 153
        Caption = 'Flight Details'
        TabOrder = 2
        object Label3: TLabel
          Left = 33
          Top = 30
          Width = 32
          Height = 16
          Caption = 'Flight'
        end
        object Label4: TLabel
          Left = 29
          Top = 58
          Width = 36
          Height = 16
          Caption = 'Mawb'
        end
        object Label6: TLabel
          Left = 5
          Top = 83
          Width = 60
          Height = 16
          Caption = 'Departure'
        end
        object Label11: TLabel
          Left = 10
          Top = 115
          Width = 55
          Height = 16
          Caption = 'Remarks'
        end
        object wwDBEdit2: TwwDBEdit
          Left = 72
          Top = 115
          Width = 121
          Height = 24
          Color = clBtnFace
          DataField = 'REMARKS'
          DataSource = FlightOutCDS
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
        object pamenwwDBEdit4: TwwDBEdit
          Left = 72
          Top = 56
          Width = 121
          Height = 24
          Color = clBtnFace
          DataField = 'MAWB'
          DataSource = FlightOutCDS
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
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 72
          Top = 26
          Width = 121
          Height = 24
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
          AllowClearKey = False
        end
        object wwDBEdit5: TwwDBEdit
          Left = 72
          Top = 85
          Width = 121
          Height = 24
          Color = clBtnFace
          DataField = 'DATE_DEPART'
          DataSource = FlightOutCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
        Left = 346
        Top = 24
        Width = 185
        Height = 145
        Caption = 'Select Hawbs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
      Top = 209
      Width = 1563
      Height = 415
      Align = alClient
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 88
        Height = 19
        Caption = 'Scan Hawb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DetailsPNL: TGroupBox
        Left = 991
        Top = 47
        Width = 354
        Height = 250
        Caption = 'Details'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 40
          Top = 40
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
        object Label7: TLabel
          Left = 33
          Top = 121
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
        object Label8: TLabel
          Left = 7
          Top = 154
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
        object Label12: TLabel
          Left = 43
          Top = 75
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
        object Label13: TLabel
          Left = 33
          Top = 98
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
        object wwDBEdit1: TwwDBEdit
          Left = 264
          Top = 32
          Width = 73
          Height = 24
          Color = clBtnFace
          DataField = 'SERIAL_NUMBER'
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
        object WeightFLD: TwwDBEdit
          Left = 80
          Top = 118
          Width = 97
          Height = 24
          Color = clWhite
          DataField = 'WEIGHT'
          DataSource = FLightAirwaybillCDS
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
        object DescriptionFLD: TwwDBEdit
          Left = 83
          Top = 154
          Width = 265
          Height = 35
          Color = clWhite
          DataField = 'DESCRIPTION'
          DataSource = FLightAirwaybillCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -23
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit6: TwwDBEdit
          Left = 80
          Top = 70
          Width = 97
          Height = 24
          Color = clWhite
          DataField = 'ITEMS_COUNT'
          DataSource = FLightAirwaybillCDS
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
        object wwDBEdit7: TwwDBEdit
          Left = 80
          Top = 94
          Width = 97
          Height = 24
          Color = clWhite
          DataField = 'PIECES'
          DataSource = FLightAirwaybillCDS
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
          Top = 34
          Width = 129
          Height = 32
          Color = clWhite
          DataField = 'HAWB_ID'
          DataSource = FLightAirwaybillCDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object EditOneBTN: TfcShapeBtn
        Left = 10
        Top = 281
        Width = 117
        Height = 43
        Caption = 'Edit'
        Color = clBtnFace
        DitherColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000074120000741200000000000000000000FFFFFFF8F8F8
          FBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD0CFCF393939454133869297D0E9F3E4F8FFF4FCFFFBFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEEF0F08988874B454460747995D1E4A4EBFF99
          E2FF97E1FFDBF3FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F8948B87787A7A95B9
          C3B6F1FFB3EEFFB3EEFFB5EFFFA7E2FFE4F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFB
          889BA2A2C4CFB9ECFABCF2FFBBEFFFC1F1FFBEEFFFA1E3FF99DBFFE8F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFFFFA6DBF2C0F5FFC6F5FFC5F2FFCAF4FFCEF5FFBAEDFF90DAFB
          8CDBFD9DDCFFEDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4E8FFBCEDFFD0F6FFD6F8FFD8F8FFC8
          F2FF98DAFE6EC8F775CEF58DDBFCA1DEFFEFF8FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1E6FFC6F0FFDCF9
          FFDDFAFFC8F0FF97D7FF5EB8FC5BB9F967C4F579D1F78DDAFCA4DFFFF4FBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D5F1FFB0E5FFAFE4FDA1DDFD79C8FD42A5FF44A5FF51B1FD5CBBF968C4F679CF
          F58DDAFDA6E0FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC2E6FA46B2F130A3F32498F6319CFB3CA1FF46A8FF
          52B0FD5EBBF969C5F679D0F68EDAFCA8E0FFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D7F51E99EC239AF22C
          9CF7359EFC3DA1FF48A8FF54B2FC5FBDF96BC5F67AD0F78DDBFCACE1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF9ED5F61F9BEE259BF32E9DF8369FFD3EA3FF49ABFF55B4FC61BEF96BC8F67C
          D3F790DCFDB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF97D1F61E9AED269BF42F9DFA389FFD41A4FF4DAC
          FF57B6FC63C0F76FC9F583D6F88FDBFEB7E4FFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90CEF41E9AEF279BF5
          309DFA399FFD42A5FF4EADFF58B7FB64C0F770CAF684D6F88CDBFFDFEFF7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF8ECEF41E99EE279BF5309CFA389FFE43A4FF4DADFF59B8FA64C2F771CCF6
          8DD5F45D7F87797978FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF8CCDF51F99EF289AF5319CFA399FFE42A4FF4F
          AEFE59B8FC6CC5F86BA9C74B4A4A2B2B2B5C5C5CF7F7FCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFF8BCCF41F99F0289A
          F5309DFA39A0FE41A4FF50AFFF7DBEEEA6A9AE5F5F6039393A3D3D3C7472D9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FAFDFF8CCDF42099EE289AF52C9CFC3BA3FE8EC9FDE4EAF4AEAEB16C6C6E6F6F
          715D5A8C675FDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9FDFF83C8F41697F0449EE386ACCEB1B1B4ABABAF
          919194BABABEA8A6B17D6FD97064D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFC8D6DEBAB9B98C
          8C8C626262818182CACACDEEECF69A88DB836ED47C6BC8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFBFBDEDDDCC3C3C3939393929094BAB1CAAE99D89277CC8067BE9B8CCBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8AAA8B27C6C9D866AB3977BBF8D6EB98164
          B1836DB4E8E4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F7A799C37359A0
          7458A1795EA39A87BCE5E1EFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF7F6FAE1DCEBD5CCE2DDD7E8F9F8FBFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 0
        Options = [boFocusable]
        ParentClipping = False
        ParentFont = False
        RoundRectBias = 25
        ShadeStyle = fbsNormal
        Style = bsNew
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        OnClick = FlightAirwaybillGRDDblClick
      end
      object FlightAirwaybillGRD: TwwDBGrid
        Left = 7
        Top = 52
        Width = 914
        Height = 205
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
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        DataSource = FLightAirwaybillCDS
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ReadOnly = True
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = FlightAirwaybillGRDDblClick
        IndicatorColor = icBlack
      end
      object ValueFLD: TwwDBComboBox
        Left = 775
        Top = 144
        Width = 121
        Height = 24
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
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object HawbInputFLD: TwwDBEdit
        Left = 112
        Top = 24
        Width = 153
        Height = 24
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = HawbInputFLDKeyPress
      end
      object DeleteSelectedBTN: TBitBtn
        Left = 136
        Top = 281
        Width = 117
        Height = 43
        Cancel = True
        Caption = 'Delete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
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
      object XMLForOneBTN: TfcShapeBtn
        Left = 698
        Top = 274
        Width = 215
        Height = 43
        Caption = 'Create One XML'
        Color = clBtnFace
        DitherColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676727676727676727676
          72767672767672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767672
          E6E2E2E6DEDEE6DEDEE6E2E2767672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF928E8E8E8A8AFFFFFFFF
          FFFFFFFFFF767672D6D2CEDAD6D6DAD6D6D6D2CE767672FFFFFFFFFFFFFFFFFF
          8E8E8A928E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8A8AA29E
          9EDEDADA96928E8A8A867E7A7A726E6E6A66666E6E6E6E6E6E6A6666726E6E7E
          7A7A8E8A8A96928EDEDADAA29E9E8E8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          8A86869A9692D6D6D2B2AEAE7E7E7A5E5E5A4242425652527A76768A86868A86
          867A76765652524242425E5E5A7E7E7AB2AEAED6D6D69A96968A8686FFFFFFFF
          FFFFFFFFFFFFFFFF868282D6D6D2B6B2AE7A7A763E3E3A52524E9E9A9AEAEAEA
          FAFAFAFEFEFEFEFEFEFAFAFAEAEAEAA29E9A52524E3E3E3A7E7A7AB6B2AED6D6
          D6868282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8E8AA29E9E5A5A56767272CA
          C6C6E6E6E2EAE6E6EAEAEAF2EEEEF2EEEEEAEAEAEAE6E6E6E6E6CAC6C6767272
          5A5A56A6A29E928E8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8682826E6A
          6A767272C6C6C2DEDEDAE2E2DEC6C2C2767672767672767672767672C6C2C2E2
          E2DEDEDEDAC6C6C27672726E6A6A868282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7A76765A5A56AEAAA6D6D2D2DEDADABEBEBA868282FFFFFFFFFFFFFFFF
          FFFFFFFF868282BEBEBADEDADAD6D6D2AEAAA65A5A567A7676FFFFFFFFFFFFFF
          FFFF7676727676727676726E6A667A7676C6C2BED2CECEBABAB6868282FFFFFF
          9A96928A86868A86869A9696FFFFFF868282BEBAB6D6D2CEC6C2BE7A7A766E6A
          6A767672767672767672767672AAA6A6AEAAA6726E6AA29E9EBEBAB6C6C2BE76
          7672FFFFFF9A96968A8A86AAA6A6AAA6A68A8A869A9696FFFFFF767672C6C2BE
          BEBABAA29E9E726E6EB2AEAAAEAAA6767672767672BAB6B6C2BEBE868282B6B2
          B2B2AEAEB2AEAA767672FFFFFF8A8A86B2AEAACAC6C6CAC6C6B2AEAA8A8A86FF
          FFFF767672B6B2AEB6B2AEBAB6B28A8686C6C2BEBEBAB6767672767672BEBAB6
          C6C2BE9E9A96CAC6C6B2AEAAAEAAA6767672FFFFFF8E8A8ABAB6B2DEDAD6DEDA
          D6BAB6B28E8A8AFFFFFF767672B2AEAAB2AEAACECAC69E9A9AC6C2C2C2BEBA76
          7672767672D2CECEDAD6D6BEBEBAD2CECEAEAAAA9E9A9A767672FFFFFFA29E9E
          928E8EC2BEBEC2BEBE928E8EA29E9EFFFFFF767672A29E9AB2AEAAD6D2CEC2BE
          BEDAD6D6D6D2D2767672767672767672767672C6C6C2DEDADABEBAB68A868696
          928E8A8686FFFFFFA29E9E928E8A928E8AA29E9EFFFFFF8A8A869692928A8686
          BEBABADEDEDACAC6C6767672767672767672FFFFFFFFFFFFFFFFFF827E7ED6D2
          D2DEDAD68682827E7A7A96928E8A8A86FFFFFFFFFFFFFFFFFFFFFFFF8E8A8A96
          928E7E7A7A868282DEDADAD6D2D2827E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF928E8EBAB6B2EAE6E6BEBEBA7672726E6A6A7E7A7A7676727676727676
          72767672827E7A726E6A767272C2BEBEEAE6E6BAB6B6928E8EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF9A9692DAD6D6EEEAEAEEEEEABEBAB66A66665A5A5A
          5252524242424242425252525A5A5A6A6666BEBABAF2EEEEEEEEEADEDADA9A96
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8A8AFEFEFEDED6D6EAE6E6F6F6F2F6
          F6F2EAE6E69E9A9A6662624E4A4A4E4A4A6662629E9A9AEEEAE6F6F6F6F6F6F6
          EAE6E6DEDADAFEFEFE8E8E8AFFFFFFFFFFFFFFFFFFFFFFFF928E8EBAB6B2FEFE
          FEEAE2E2F2EEEECAC6C6EAEAEAFAFAFAFAF6F6F6F6F6F6F6F6FAF6F6FAFAFAEA
          EAEACAC6C6F2EEEEEAE6E6FEFEFEBAB6B6928E8EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF928E8EBEBAB6FEFEFEA29E9E969692868282EAEAEAFEFEFEFEFEFEFEFE
          FEFEFEFEEAEAEA8682829A9692A29E9EFEFEFEBEBABA96928EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF96928E96928EFFFFFFFFFFFFFFFFFF767672
          F2EEEEF2EEEEF2EEEEF6F2EE767672FFFFFFFFFFFFFFFFFF96928E969292FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF767672FEFEFEFEFEFEFEFEFEFEFEFE767672FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF767672767672767672767672767672767672FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Options = [boFocusable]
        ParentClipping = False
        ParentFont = False
        RoundRectBias = 25
        ShadeStyle = fbsNormal
        Style = bsNew
        TabOrder = 6
        TabStop = True
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        OnClick = XMLForOneBTNClick
      end
      object XMLBTN: TfcShapeBtn
        Left = 698
        Top = 321
        Width = 215
        Height = 56
        Caption = 'Create XML for All'
        Color = clBtnFace
        DitherColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676727676727676727676
          72767672767672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767672
          E6E2E2E6DEDEE6DEDEE6E2E2767672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF928E8E8E8A8AFFFFFFFF
          FFFFFFFFFF767672D6D2CEDAD6D6DAD6D6D6D2CE767672FFFFFFFFFFFFFFFFFF
          8E8E8A928E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8A8AA29E
          9EDEDADA96928E8A8A867E7A7A726E6E6A66666E6E6E6E6E6E6A6666726E6E7E
          7A7A8E8A8A96928EDEDADAA29E9E8E8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          8A86869A9692D6D6D2B2AEAE7E7E7A5E5E5A4242425652527A76768A86868A86
          867A76765652524242425E5E5A7E7E7AB2AEAED6D6D69A96968A8686FFFFFFFF
          FFFFFFFFFFFFFFFF868282D6D6D2B6B2AE7A7A763E3E3A52524E9E9A9AEAEAEA
          FAFAFAFEFEFEFEFEFEFAFAFAEAEAEAA29E9A52524E3E3E3A7E7A7AB6B2AED6D6
          D6868282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8E8AA29E9E5A5A56767272CA
          C6C6E6E6E2EAE6E6EAEAEAF2EEEEF2EEEEEAEAEAEAE6E6E6E6E6CAC6C6767272
          5A5A56A6A29E928E8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8682826E6A
          6A767272C6C6C2DEDEDAE2E2DEC6C2C2767672767672767672767672C6C2C2E2
          E2DEDEDEDAC6C6C27672726E6A6A868282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7A76765A5A56AEAAA6D6D2D2DEDADABEBEBA868282FFFFFFFFFFFFFFFF
          FFFFFFFF868282BEBEBADEDADAD6D6D2AEAAA65A5A567A7676FFFFFFFFFFFFFF
          FFFF7676727676727676726E6A667A7676C6C2BED2CECEBABAB6868282FFFFFF
          9A96928A86868A86869A9696FFFFFF868282BEBAB6D6D2CEC6C2BE7A7A766E6A
          6A767672767672767672767672AAA6A6AEAAA6726E6AA29E9EBEBAB6C6C2BE76
          7672FFFFFF9A96968A8A86AAA6A6AAA6A68A8A869A9696FFFFFF767672C6C2BE
          BEBABAA29E9E726E6EB2AEAAAEAAA6767672767672BAB6B6C2BEBE868282B6B2
          B2B2AEAEB2AEAA767672FFFFFF8A8A86B2AEAACAC6C6CAC6C6B2AEAA8A8A86FF
          FFFF767672B6B2AEB6B2AEBAB6B28A8686C6C2BEBEBAB6767672767672BEBAB6
          C6C2BE9E9A96CAC6C6B2AEAAAEAAA6767672FFFFFF8E8A8ABAB6B2DEDAD6DEDA
          D6BAB6B28E8A8AFFFFFF767672B2AEAAB2AEAACECAC69E9A9AC6C2C2C2BEBA76
          7672767672D2CECEDAD6D6BEBEBAD2CECEAEAAAA9E9A9A767672FFFFFFA29E9E
          928E8EC2BEBEC2BEBE928E8EA29E9EFFFFFF767672A29E9AB2AEAAD6D2CEC2BE
          BEDAD6D6D6D2D2767672767672767672767672C6C6C2DEDADABEBAB68A868696
          928E8A8686FFFFFFA29E9E928E8A928E8AA29E9EFFFFFF8A8A869692928A8686
          BEBABADEDEDACAC6C6767672767672767672FFFFFFFFFFFFFFFFFF827E7ED6D2
          D2DEDAD68682827E7A7A96928E8A8A86FFFFFFFFFFFFFFFFFFFFFFFF8E8A8A96
          928E7E7A7A868282DEDADAD6D2D2827E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF928E8EBAB6B2EAE6E6BEBEBA7672726E6A6A7E7A7A7676727676727676
          72767672827E7A726E6A767272C2BEBEEAE6E6BAB6B6928E8EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF9A9692DAD6D6EEEAEAEEEEEABEBAB66A66665A5A5A
          5252524242424242425252525A5A5A6A6666BEBABAF2EEEEEEEEEADEDADA9A96
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8A8AFEFEFEDED6D6EAE6E6F6F6F2F6
          F6F2EAE6E69E9A9A6662624E4A4A4E4A4A6662629E9A9AEEEAE6F6F6F6F6F6F6
          EAE6E6DEDADAFEFEFE8E8E8AFFFFFFFFFFFFFFFFFFFFFFFF928E8EBAB6B2FEFE
          FEEAE2E2F2EEEECAC6C6EAEAEAFAFAFAFAF6F6F6F6F6F6F6F6FAF6F6FAFAFAEA
          EAEACAC6C6F2EEEEEAE6E6FEFEFEBAB6B6928E8EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF928E8EBEBAB6FEFEFEA29E9E969692868282EAEAEAFEFEFEFEFEFEFEFE
          FEFEFEFEEAEAEA8682829A9692A29E9EFEFEFEBEBABA96928EFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF96928E96928EFFFFFFFFFFFFFFFFFF767672
          F2EEEEF2EEEEF2EEEEF6F2EE767672FFFFFFFFFFFFFFFFFF96928E969292FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF767672FEFEFEFEFEFEFEFEFEFEFEFE767672FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF767672767672767672767672767672767672FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Options = [boFocusable]
        ParentClipping = False
        ParentFont = False
        RoundRectBias = 25
        ShadeStyle = fbsNormal
        Shape = bsRoundRect
        Style = bsNew
        TabOrder = 7
        TabStop = True
        TextOptions.Alignment = taLeftJustify
        TextOptions.Style = fclsLowered
        TextOptions.VAlignment = vaVCenter
        OnClick = XMLBTNClick
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
      end
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
      end
      item
        DataType = ftUnknown
        Name = 'FlightSErial'
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
      end
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
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
      end
      item
        DataType = ftUnknown
        Name = 'SERIAL_NUMBER'
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
      end
      item
        DataType = ftInteger
        Name = 'SerialNumber'
        ParamType = ptInput
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
