object H_airwaybillFRM: TH_airwaybillFRM
  Left = 725
  Top = 135
  ClientHeight = 821
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
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
  object Label15: TLabel
    Left = 23
    Top = 318
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
    Left = 9
    Top = 350
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
    Left = -3
    Top = 382
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
    Left = 38
    Top = 414
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
    Left = 15
    Top = 446
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
  object TitlePNL: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 65
    Align = alTop
    Caption = 'Edit AirwayBill'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 746
  end
  object Panel4: TPanel
    Left = 0
    Top = 755
    Width = 748
    Height = 66
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 861
    ExplicitWidth = 746
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
    Top = 65
    Width = 748
    Height = 690
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 746
    ExplicitHeight = 796
    object GroupBox1: TGroupBox
      Left = 32
      Top = 16
      Width = 649
      Height = 289
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
        Top = 29
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
        Top = 99
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
        Top = 224
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
      object Label4: TLabel
        Left = 13
        Top = 73
        Width = 62
        Height = 16
        Caption = 'Sequence'
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
        Left = 40
        Top = 137
        Width = 35
        Height = 16
        Caption = 'Origin'
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
        Left = 24
        Top = 252
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
        Top = 163
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
      object Label25: TLabel
        Left = 43
        Top = 196
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
      object wwDBEdit1: TwwDBEdit
        Left = 80
        Top = 29
        Width = 73
        Height = 24
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = AirwaybillCDS
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
        Top = 95
        Width = 121
        Height = 24
        Color = clWhite
        DataField = 'HAWB_ID'
        DataSource = AirwaybillCDS
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
      object wwDBEdit3: TwwDBEdit
        Left = 80
        Top = 220
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'PIECES'
        DataSource = AirwaybillCDS
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
      object SequenceFLD: TwwDBEdit
        Left = 80
        Top = 69
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'SEQUENCE_NUMBER'
        DataSource = AirwaybillCDS
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
      object OriginFLD: TwwDBEdit
        Left = 80
        Top = 133
        Width = 121
        Height = 24
        Color = clWhite
        DataField = 'SHIPMENT_ORIGIN_COUNTRY'
        DataSource = AirwaybillCDS
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
      object WeightFLD: TwwDBEdit
        Left = 80
        Top = 248
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'WEIGHT'
        DataSource = AirwaybillCDS
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
      object DescriptionFLD: TwwDBEdit
        Left = 80
        Top = 159
        Width = 321
        Height = 24
        Color = clWhite
        DataField = 'DESCRIPTION'
        DataSource = AirwaybillCDS
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
      object PiecesFLD: TwwDBEdit
        Left = 160
        Top = 220
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'PIECES_S'
        DataSource = AirwaybillCDS
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
      object wwDBEdit13: TwwDBEdit
        Left = 80
        Top = 192
        Width = 73
        Height = 24
        DataField = 'ITEMS_COUNT'
        DataSource = AirwaybillCDS
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
      object wwDBEdit14: TwwDBEdit
        Left = 272
        Top = 216
        Width = 121
        Height = 24
        DataField = 'PAYMENT_METHOD'
        DataSource = AirwaybillCDS
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 32
      Top = 312
      Width = 649
      Height = 217
      Caption = 'Sender'
      TabOrder = 1
      object Label10: TLabel
        Left = 39
        Top = 25
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
        Top = 65
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
        Top = 97
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
        Top = 129
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
        Top = 161
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
      object wwDBEdit2: TwwDBEdit
        Left = 80
        Top = 25
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'SENDER_NAME'
        DataSource = AirwaybillCDS
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
      object wwDBEdit4: TwwDBEdit
        Left = 80
        Top = 57
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'SENDER_ADDRESS'
        DataSource = AirwaybillCDS
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
      object wwDBEdit5: TwwDBEdit
        Left = 80
        Top = 89
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'SENDER_POST_CODE'
        DataSource = AirwaybillCDS
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
      object wwDBEdit6: TwwDBEdit
        Left = 80
        Top = 153
        Width = 73
        Height = 24
        Color = clWhite
        DataField = 'SENDER_COUNTRY_CODE'
        DataSource = AirwaybillCDS
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
      object wwDBEdit7: TwwDBEdit
        Left = 80
        Top = 121
        Width = 369
        Height = 24
        Color = clWhite
        DataField = 'SENDER_CITY'
        DataSource = AirwaybillCDS
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
    end
    object GroupBox3: TGroupBox
      Left = 32
      Top = 544
      Width = 649
      Height = 209
      Caption = 'Consignee'
      TabOrder = 2
      object Label20: TLabel
        Left = 39
        Top = 25
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
      object Label21: TLabel
        Left = 25
        Top = 65
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
      object Label22: TLabel
        Left = 13
        Top = 97
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
      object Label23: TLabel
        Left = 54
        Top = 129
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
      object Label24: TLabel
        Left = 31
        Top = 161
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
      object wwDBEdit8: TwwDBEdit
        Left = 80
        Top = 32
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_NAME'
        DataSource = AirwaybillCDS
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
      object wwDBEdit9: TwwDBEdit
        Left = 80
        Top = 64
        Width = 377
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_ADDRESS'
        DataSource = AirwaybillCDS
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
      object wwDBEdit10: TwwDBEdit
        Left = 80
        Top = 96
        Width = 81
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_POST_CODE'
        DataSource = AirwaybillCDS
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
      object wwDBEdit11: TwwDBEdit
        Left = 80
        Top = 160
        Width = 81
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_COUNTRY_CODE'
        DataSource = AirwaybillCDS
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
      object wwDBEdit12: TwwDBEdit
        Left = 80
        Top = 128
        Width = 369
        Height = 24
        Color = clWhite
        DataField = 'CONSIGNEE_CITY'
        DataSource = AirwaybillCDS
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
    end
  end
  object AirwaybillCDS: TIBCDataSource
    DataSet = AirwaybillSQL
    Left = 600
    Top = 161
  end
  object AirwaybillSQL: TIBCQuery
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
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM AIRWAYBILL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = MainFormFRM.CabOutData
    Transaction = MainFormFRM.UsedForReadOnlyTrans
    UpdateTransaction = UpdateTransaction
    SQL.Strings = (
      'SElect * from airwaybill where Serial_number= :SerialNUmber')
    Left = 392
    Top = 153
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SerialNUmber'
        ParamType = ptInput
        Value = nil
      end>
    object AirwaybillSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object AirwaybillSQLSEQUENCE_NUMBER: TIntegerField
      FieldName = 'SEQUENCE_NUMBER'
    end
    object AirwaybillSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
    object AirwaybillSQLSHIPMENT_ORIGIN_AREA: TStringField
      FieldName = 'SHIPMENT_ORIGIN_AREA'
      Size = 10
    end
    object AirwaybillSQLSHIPMENT_ORIGIN_COUNTRY: TStringField
      FieldName = 'SHIPMENT_ORIGIN_COUNTRY'
      FixedChar = True
      Size = 5
    end
    object AirwaybillSQLPIECES: TIntegerField
      FieldName = 'PIECES'
    end
    object AirwaybillSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object AirwaybillSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object AirwaybillSQLFK_DOCUMENT_MASTER_SERIAL: TIntegerField
      FieldName = 'FK_DOCUMENT_MASTER_SERIAL'
      Required = True
    end
    object AirwaybillSQLFK_MOVEMENT_SERIAL: TIntegerField
      FieldName = 'FK_MOVEMENT_SERIAL'
      Required = True
    end
    object AirwaybillSQLPIECES_S: TStringField
      FieldName = 'PIECES_S'
      FixedChar = True
      Size = 15
    end
    object AirwaybillSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwaybillSQLSENDER_ADDRESS: TStringField
      FieldName = 'SENDER_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object AirwaybillSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object AirwaybillSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 35
    end
    object AirwaybillSQLSENDER_COUNTRY_CODE: TStringField
      FieldName = 'SENDER_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object AirwaybillSQLCONSIGNEE_NAME: TStringField
      FieldName = 'CONSIGNEE_NAME'
      FixedChar = True
      Size = 35
    end
    object AirwaybillSQLCONSIGNEE_ADDRESS: TStringField
      FieldName = 'CONSIGNEE_ADDRESS'
      FixedChar = True
      Size = 35
    end
    object AirwaybillSQLCONSIGNEE_POST_CODE: TStringField
      FieldName = 'CONSIGNEE_POST_CODE'
      FixedChar = True
      Size = 9
    end
    object AirwaybillSQLCONSIGNEE_CITY: TStringField
      FieldName = 'CONSIGNEE_CITY'
      FixedChar = True
      Size = 35
    end
    object AirwaybillSQLCONSIGNEE_COUNTRY_CODE: TStringField
      FieldName = 'CONSIGNEE_COUNTRY_CODE'
      FixedChar = True
      Size = 2
    end
    object AirwaybillSQLFK_ITINERARY_SERIAL: TIntegerField
      FieldName = 'FK_ITINERARY_SERIAL'
    end
    object AirwaybillSQLPACKAGES_COUNT: TIntegerField
      FieldName = 'PACKAGES_COUNT'
    end
    object AirwaybillSQLITEMS_COUNT: TIntegerField
      FieldName = 'ITEMS_COUNT'
    end
    object AirwaybillSQLPAYMENT_METHOD: TStringField
      FieldName = 'PAYMENT_METHOD'
      FixedChar = True
      Size = 2
    end
  end
  object UpdateTransaction: TIBCTransaction
    DefaultConnection = MainFormFRM.CabOutData
    Left = 496
    Top = 265
  end
end
