object F_etat_depense: TF_etat_depense
  Left = 27
  Top = 190
  Caption = 
    'ETAT DES DEPENSES EXECUTEES PAR NATURE,PAR CHAPITRE ET PAR TRESO' +
    'RERIE'
  ClientHeight = 708
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 673
    Top = 67
    Width = 1632
    Height = 1056
    BeforePrint = initier
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Ledger
    Page.Continuous = False
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      40.000000000000000000
      4318.000000000000000000
      40.000000000000000000
      0.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 15
      Top = 15
      Width = 1617
      Height = 93
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        246.062500000000000000
        4278.312500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 8
        Top = 8
        Width = 183
        Height = 17
        Size.Values = (
          44.979166666666700000
          21.166666666666700000
          21.166666666666700000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'MINISTERE DES FINANCES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 8
        Top = 24
        Width = 300
        Height = 17
        Size.Values = (
          44.979166666666700000
          21.166666666666700000
          63.500000000000000000
          793.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DIRECTION GENERALE DE LA COMPTABILITE.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 9
        Top = 40
        Width = 326
        Height = 17
        Size.Values = (
          45.861111111111100000
          22.930555555555600000
          105.833333333333000000
          862.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DIRECTION REGIONALE DU TRESOR A GHARDAIA'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 502
        Top = 27
        Width = 313
        Height = 17
        Size.Values = (
          44.979166666666700000
          1328.208333333330000000
          71.437500000000000000
          828.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ETAT DES DEPENSES EXECUTEES PAR NATURE,'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 502
        Top = 45
        Width = 313
        Height = 17
        Size.Values = (
          44.979166666666700000
          1328.208333333330000000
          119.062500000000000000
          828.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CHAPITRE ET PAR TRESORERIE.'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 1165
        Top = 25
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666700000
          3082.395833333330000000
          66.145833333333300000
          227.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TABLEAU N'#176
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 1166
        Top = 46
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666700000
          3085.041666666670000000
          121.708333333333000000
          129.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ANNEE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLannee: TQRLabel
        Left = 1216
        Top = 45
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          3217.333333333333000000
          119.062500000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLannee'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object dif: TQRLabel
        Left = 38
        Top = 75
        Width = 69
        Height = 17
        Size.Values = (
          44.097222222222200000
          100.541666666667000000
          197.555555555556000000
          183.444444444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 15
      Top = 162
      Width = 1617
      Height = 19
      AlignToBottom = False
      BeforePrint = ligne
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        4278.312500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      FooterBand = QRBand2
      HeaderBand = QRBand3
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText2: TQRDBText
        Left = 0
        Top = 0
        Width = 41
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          0.000000000000000000
          0.000000000000000000
          107.597222222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'CHAPITRE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLca: TQRLabel
        Left = 232
        Top = 0
        Width = 82
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          613.833333333333000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 41
        Top = 0
        Width = 190
        Height = 19
        Size.Values = (
          49.388888888888900000
          109.361111111111000000
          0.000000000000000000
          502.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'LIBELLE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object qrldrt: TQRLabel
        Left = 315
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          833.437500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLTDRT: TQRLabel
        Left = 396
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1047.750000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrl47: TQRLabel
        Left = 441
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          1166.812500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL33: TQRLabel
        Left = 945
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          2501.194444444440000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL11: TQRLabel
        Left = 819
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          2166.055555555560000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL30: TQRLabel
        Left = 693
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          1834.444444444440000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL03: TQRLabel
        Left = 567
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          1499.305555555560000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt47: TQRLabel
        Left = 523
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          1382.888888888890000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt47'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt11: TQRLabel
        Left = 900
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          2381.250000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt47'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRlt30: TQRLabel
        Left = 774
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2047.875000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt47'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt03: TQRLabel
        Left = 648
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1714.500000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt47'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLto: TQRLabel
        Left = 1071
        Top = 0
        Width = 82
        Height = 17
        Size.Values = (
          45.861111111111100000
          2832.805555555560000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRlsolde: TQRLabel
        Left = 1155
        Top = 0
        Width = 81
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          3055.055555555560000000
          0.000000000000000000
          215.194444444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt33: TQRLabel
        Left = 1027
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          2716.388888888890000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt47'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLtaux: TQRLabel
        Left = 1237
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          3272.895833333330000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt47'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qdif: TQRLabel
        Left = 1284
        Top = 0
        Width = 15
        Height = 17
        Size.Values = (
          44.097222222222200000
          3397.250000000000000000
          0.000000000000000000
          40.569444444444500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 15
      Top = 181
      Width = 1617
      Height = 19
      AlignToBottom = False
      BeforePrint = ligne2
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        4278.312500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel2: TQRLabel
        Left = 0
        Top = 0
        Width = 231
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          0.000000000000000000
          611.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                   TOTAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlca1: TQRLabel
        Left = 232
        Top = 0
        Width = 82
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          613.833333333333000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLdrt1: TQRLabel
        Left = 315
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          833.437500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLTDRT1: TQRLabel
        Left = 396
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1047.750000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrl471: TQRLabel
        Left = 441
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          1166.812500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL331: TQRLabel
        Left = 945
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          2500.312500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRl111: TQRLabel
        Left = 819
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          2166.937500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL301: TQRLabel
        Left = 693
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          1833.562500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL031: TQRLabel
        Left = 567
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          1500.187500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt471: TQRLabel
        Left = 522
        Top = 0
        Width = 44
        Height = 18
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          47.625000000000000000
          1381.125000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt471'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt111: TQRLabel
        Left = 900
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2381.250000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt471'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt301: TQRLabel
        Left = 774
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2047.875000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt471'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt031: TQRLabel
        Left = 648
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1714.500000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt471'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRlto1: TQRLabel
        Left = 1071
        Top = 0
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666700000
          2833.687500000000000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLsolde1: TQRLabel
        Left = 1154
        Top = 0
        Width = 82
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          3053.291666666670000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt331: TQRLabel
        Left = 1026
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2714.625000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt471'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLtaux1: TQRLabel
        Left = 1237
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          3272.895833333330000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt471'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 0
        Width = 1280
        Height = 1
        Size.Values = (
          3.527777777777780000
          0.000000000000000000
          0.000000000000000000
          3386.666666666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 16
        Width = 1280
        Height = 1
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          41.010416666666700000
          3386.666666666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 16
        Width = 1280
        Height = 1
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          43.656250000000000000
          3386.666666666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand3: TQRBand
      Left = 15
      Top = 145
      Width = 1617
      Height = 17
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        4278.312500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRDBText1: TQRDBText
        Left = 41
        Top = 0
        Width = 190
        Height = 17
        Size.Values = (
          44.979166666666700000
          108.479166666667000000
          0.000000000000000000
          502.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Libelle'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 315
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          833.437500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 0
        Top = 0
        Width = 40
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          0.000000000000000000
          105.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 396
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1047.750000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 441
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          1167.694444444440000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 567
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          1499.305555555560000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 693
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          1834.444444444440000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 819
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          2166.055555555560000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 945
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          45.861111111111100000
          2501.194444444440000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object Qxx: TQRLabel
        Left = 522
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1381.125000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 900
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          2381.250000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 774
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2047.875000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 648
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          1714.500000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 232
        Top = 0
        Width = 82
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          613.833333333333000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 1071
        Top = 0
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666700000
          2833.687500000000000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel50: TQRLabel
        Left = 1155
        Top = 0
        Width = 81
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          3055.055555555560000000
          0.000000000000000000
          215.194444444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 1026
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2714.625000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 1237
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          3272.895833333330000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 15
      Top = 200
      Width = 1617
      Height = 19
      Frame.DrawLeft = True
      AlignToBottom = False
      BeforePrint = ligne3
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        4278.312500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel7: TQRLabel
        Left = 0
        Top = 0
        Width = 232
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          0.000000000000000000
          613.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                  TOTAL GENERAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlca2: TQRLabel
        Left = 232
        Top = 0
        Width = 82
        Height = 21
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.562500000000000000
          613.833333333333000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLdrt2: TQRLabel
        Left = 315
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          833.437500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLTDRT2: TQRLabel
        Left = 396
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1047.750000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrl472: TQRLabel
        Left = 441
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          1166.812500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL332: TQRLabel
        Left = 945
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          2500.312500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL112: TQRLabel
        Left = 819
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          2166.937500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL302: TQRLabel
        Left = 693
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          1833.562500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRL032: TQRLabel
        Left = 567
        Top = 0
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666700000
          1500.187500000000000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt472: TQRLabel
        Left = 522
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1381.125000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt472'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt112: TQRLabel
        Left = 900
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2381.250000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt472'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt302: TQRLabel
        Left = 774
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2047.875000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt472'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt032: TQRLabel
        Left = 648
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          1714.500000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt472'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLto2: TQRLabel
        Left = 1071
        Top = 0
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666700000
          2833.687500000000000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLsolde2: TQRLabel
        Left = 1154
        Top = 0
        Width = 82
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          3053.291666666670000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLt332: TQRLabel
        Left = 1026
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          2714.625000000000000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt472'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLtaux2: TQRLabel
        Left = 1237
        Top = 0
        Width = 44
        Height = 17
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666700000
          3272.895833333330000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt472'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 16
        Width = 1280
        Height = 1
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          43.656250000000000000
          3386.666666666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand4: TQRBand
      Left = 15
      Top = 108
      Width = 1617
      Height = 37
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        97.895833333333320000
        4278.312500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel4: TQRLabel
        Left = 41
        Top = 20
        Width = 190
        Height = 19
        Frame.DrawTop = True
        Size.Values = (
          49.388888888888900000
          109.361111111111000000
          52.916666666666700000
          502.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '               LIBELLE NATURE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 232
        Top = 0
        Width = 82
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          613.833333333333000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   CREDIT'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 232
        Top = 20
        Width = 82
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          613.833333333333000000
          52.916666666666700000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' DELEGUE (A)'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 315
        Top = 20
        Width = 80
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          49.388888888888900000
          832.555555555556000000
          52.916666666666700000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '        DRT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 0
        Top = 0
        Width = 40
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          0.000000000000000000
          0.000000000000000000
          105.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 396
        Top = 20
        Width = 44
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          1047.750000000000000000
          52.916666666666700000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '  %'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 315
        Top = 0
        Width = 754
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          832.555555555556000000
          0.000000000000000000
          1994.958333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'D E P E N S E S     E F F E C T U E E S'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 0
        Top = 20
        Width = 40
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          0.000000000000000000
          52.916666666666700000
          105.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CHAPITRE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 522
        Top = 20
        Width = 44
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          1381.125000000000000000
          52.916666666666700000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '     %'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 774
        Top = 20
        Width = 44
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          2047.875000000000000000
          52.916666666666700000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '     %'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 900
        Top = 20
        Width = 44
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          2381.250000000000000000
          52.916666666666700000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '     %'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 648
        Top = 20
        Width = 44
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          1714.500000000000000000
          52.916666666666700000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '     %'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 441
        Top = 20
        Width = 80
        Height = 19
        Size.Values = (
          49.388888888888900000
          1167.694444444440000000
          52.916666666666700000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'T.GHARDAIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 693
        Top = 20
        Width = 80
        Height = 19
        Size.Values = (
          49.388888888888900000
          1834.444444444440000000
          52.916666666666700000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'T.OUARGLA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 567
        Top = 20
        Width = 80
        Height = 19
        Size.Values = (
          49.388888888888900000
          1499.305555555560000000
          52.916666666666700000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'T.LAGHOUAT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 819
        Top = 20
        Width = 80
        Height = 19
        Size.Values = (
          49.388888888888900000
          2166.055555555560000000
          52.916666666666700000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'T.TAMANRASSET'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel31: TQRLabel
        Left = 945
        Top = 20
        Width = 80
        Height = 19
        Size.Values = (
          49.388888888888900000
          2501.194444444440000000
          52.916666666666700000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'T.ILLIZI'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 1071
        Top = 20
        Width = 82
        Height = 19
        Size.Values = (
          49.388888888888900000
          2832.805555555560000000
          52.916666666666700000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '          (B)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel47: TQRLabel
        Left = 1071
        Top = 0
        Width = 82
        Height = 19
        Size.Values = (
          49.388888888888900000
          2832.805555555560000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TO. DEPENSES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 1154
        Top = 0
        Width = 82
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          3053.291666666670000000
          0.000000000000000000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '      SOLDE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 1154
        Top = 20
        Width = 82
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          3053.291666666670000000
          52.916666666666700000
          216.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '      (C=A-B)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 1026
        Top = 20
        Width = 44
        Height = 19
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          2714.625000000000000000
          52.916666666666700000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '     %'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 1237
        Top = 20
        Width = 44
        Height = 19
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          3272.013888888890000000
          52.916666666666700000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   (B/A)'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel55: TQRLabel
        Left = 1237
        Top = 0
        Width = 44
        Height = 19
        Frame.DrawRight = True
        Size.Values = (
          49.388888888888900000
          3272.013888888890000000
          0.000000000000000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '     %'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 1280
        Height = 1
        Size.Values = (
          3.527777777777780000
          0.000000000000000000
          0.000000000000000000
          3386.666666666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 37
        Width = 1280
        Height = 1
        Size.Values = (
          1.763888888888890000
          0.000000000000000000
          97.013888888888900000
          3386.666666666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object q_mdm: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'w'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from lignes'
      'where gestion=:x and chapitre=:y and  structure=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 376
    Top = 136
  end
  object q_enmoins: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      'where chapitre=:x and gestion=:y and plus_moins='#39'm'#39)
    SQLConnection = f_dm.connect_db_gf
    Left = 472
    Top = 136
  end
  object q_cre_affec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and gestion=:y and (plus_moins='#39'n'#39' or  plus_mo' +
        'ins='#39'p'#39')')
    SQLConnection = f_dm.connect_db_gf
    Left = 568
    Top = 136
  end
end
