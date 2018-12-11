object S_SelectCustomerXFRM: TS_SelectCustomerXFRM
  Left = 386
  Top = 281
  BorderStyle = bsDialog
  Caption = 'S_SelectCustomerXFRM'
  ClientHeight = 702
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 65
    Align = alTop
    Caption = 'Select Customer X'
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
    Top = 649
    Width = 763
    Height = 53
    Align = alBottom
    TabOrder = 1
    object AcceptBTN: TBitBtn
      Left = 10
      Top = 5
      Width = 100
      Height = 41
      Caption = 'Select '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Style = []
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
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = AcceptBTNClick
    end
    object CancelBTN: TBitBtn
      Left = 118
      Top = 5
      Width = 100
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = CancelBTNClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 763
    Height = 120
    Align = alTop
    TabOrder = 2
    object FindHawbBTN: TSpeedButton
      Left = 200
      Top = 46
      Width = 23
      Height = 26
      Hint = 'Find Hawb in this Mawb'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'arial'
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
      OnClick = FindHawbBTNClick
    end
    object ByNameBTN: TSpeedButton
      Left = 400
      Top = 8
      Width = 23
      Height = 24
      Hint = 'Find Hawb in this Mawb'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'arial'
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
      OnClick = ByNameBTNClick
    end
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 54
      Height = 16
      Caption = 'By Name'
    end
    object Label2: TLabel
      Left = 12
      Top = 52
      Width = 50
      Height = 16
      Caption = 'By Code'
    end
    object NameFLD: TwwDBEdit
      Left = 72
      Top = 8
      Width = 321
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyUp = NameFLDKeyUp
    end
    object CodeFLD: TwwDBEdit
      Left = 72
      Top = 48
      Width = 121
      Height = 24
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyUp = CodeFLDKeyUp
    end
    object AddCert1BTN: TRzBitBtn
      Left = 567
      Top = 6
      Width = 130
      Height = 32
      Alignment = taLeftJustify
      Caption = 'Add Customer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = AddCert1BTNClick
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
      Spacing = 5
    end
    object EditBTN: TRzBitBtn
      Left = 567
      Top = 44
      Width = 130
      Height = 32
      Alignment = taLeftJustify
      Caption = 'Edit Customer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = EditBTNClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFF8F8F8
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
      Spacing = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 185
    Width = 763
    Height = 464
    Align = alClient
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 761
      Height = 462
      Selected.Strings = (
        'CODE'#9'10'#9'Code'
        'NAME'#9'20'#9'Name'
        'VAT_ID'#9'10'#9'Vat'
        'ADDRESS1'#9'25'#9'Address1')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      BorderStyle = bsNone
      Color = 13428976
      DataSource = CustomerSRC
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid1DblClick
    end
  end
  object CustomerSRC: TDataSource
    DataSet = CustomerSQL
    Left = 272
    Top = 177
  end
  object CustomerSQL: TIBCQuery
    SQL.Strings = (
      
        'SElect first 40 CU.*,di.code_x as D_District_code, DI.descriptio' +
        'n as D_DESC'
      'from '
      'customer cu'
      'left outer join '
      'District DI '
      'on (fk_District=di.serial_number)')
    Active = True
    Left = 144
    Top = 248
    object CustomerSQLCODE: TIntegerField
      DisplayLabel = 'Code'
      DisplayWidth = 10
      FieldName = 'CODE'
      Required = True
    end
    object CustomerSQLNAME: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 20
      FieldName = 'NAME'
      Required = True
      Size = 80
    end
    object CustomerSQLVAT_ID: TStringField
      DisplayLabel = 'Vat'
      DisplayWidth = 10
      FieldName = 'VAT_ID'
      Size = 30
    end
    object CustomerSQLADDRESS1: TStringField
      DisplayLabel = 'Address1'
      DisplayWidth = 25
      FieldName = 'ADDRESS1'
      Size = 50
    end
    object CustomerSQLACCOUNT_NUMBER: TIntegerField
      DisplayLabel = 'Account'
      DisplayWidth = 10
      FieldName = 'ACCOUNT_NUMBER'
      Visible = False
    end
    object CustomerSQLFK_DISTRICT: TIntegerField
      DisplayWidth = 12
      FieldName = 'FK_DISTRICT'
      Visible = False
    end
    object CustomerSQLPOST_CODE: TStringField
      DisplayWidth = 9
      FieldName = 'POST_CODE'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object CustomerSQLD_DISTRICT_CODE: TStringField
      DisplayWidth = 3
      FieldName = 'D_DISTRICT_CODE'
      ReadOnly = True
      Visible = False
      Size = 3
    end
    object CustomerSQLD_DESC: TStringField
      DisplayWidth = 15
      FieldName = 'D_DESC'
      ReadOnly = True
      Visible = False
      Size = 15
    end
    object CustomerSQLADDRESS2: TStringField
      DisplayLabel = 'Address'
      DisplayWidth = 20
      FieldName = 'ADDRESS2'
      Visible = False
      Size = 50
    end
    object CustomerSQLADDRESS3: TStringField
      DisplayWidth = 20
      FieldName = 'ADDRESS3'
      Visible = False
      Size = 50
    end
    object CustomerSQLQUARANTEE_NUMBER: TStringField
      FieldName = 'QUARANTEE_NUMBER'
      Visible = False
      Size = 10
    end
  end
end
