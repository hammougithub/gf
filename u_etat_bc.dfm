object f_etat_bc: Tf_etat_bc
  Left = 148
  Top = 154
  Caption = 'Etat Bon de commande '
  ClientHeight = 742
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 104
    Top = -133
    Width = 794
    Height = 1123
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
    Options = []
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      0.000000000000000000
      2970.000000000000000000
      20.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      0.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Manual
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 9
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 1
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 8
      Width = 775
      Height = 516
      AlignToBottom = False
      BeforePrint = affecter1
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1365.250000000000000000
        2050.520833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel8: TQRLabel
        Left = 655
        Top = 27
        Width = 89
        Height = 44
        Size.Values = (
          116.416666666666700000
          1733.020833333333000000
          71.437500000000000000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1581#1610#1600#1600#1586' '#1605#1582#1589#1589' '#1604#1605#1589#1604#1581#1577' '#1575#1604#1605#1585#1575#1602#1576#1577' '#1575#1604#1605#1575#1604#1610#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 652
        Top = 77
        Width = 89
        Height = 21
        Size.Values = (
          55.562500000000000000
          1725.083333333334000000
          203.729166666666700000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 512
        Top = 273
        Width = 89
        Height = 18
        Size.Values = (
          47.625000000000000000
          1354.666666666667000000
          722.312500000000000000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1575#1604#1575#1587#1605' '#1608' '#1575#1604#1604#1602#1576' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object f1: TQRLabel
        Left = 51
        Top = 273
        Width = 459
        Height = 18
        Size.Values = (
          47.625000000000000000
          134.937500000000000000
          722.312500000000000000
          1214.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 46
        Top = 400
        Width = 560
        Height = 2
        Size.Values = (
          5.291666666666667000
          121.708333333333300000
          1058.333333333333000000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 604
        Top = 126
        Width = 2
        Height = 109
        Size.Values = (
          288.395833333333400000
          1598.083333333333000000
          333.375000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 46
        Top = 425
        Width = 559
        Height = 2
        Size.Values = (
          5.291666666666667000
          121.708333333333300000
          1124.479166666667000000
          1479.020833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 46
        Top = 244
        Width = 2
        Height = 182
        Size.Values = (
          481.541666666666700000
          121.708333333333300000
          645.583333333333400000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object s: TQRLabel
        Left = 712
        Top = 104
        Width = 32
        Height = 21
        Size.Values = (
          55.562500000000000000
          1883.833333333333000000
          275.166666666666700000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '#1601#1600#1600#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object f5: TQRLabel
        Left = 56
        Top = 309
        Width = 434
        Height = 17
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          817.562500000000000000
          1148.291666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '  / '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 177
        Top = 8
        Width = 281
        Height = 18
        Size.Values = (
          47.625000000000000000
          468.312500000000100000
          21.166666666666670000
          743.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          #1575#1604#1580#1605#1600#1607#1600#1608#1585#1610#1600#1577' '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1583#1610#1600#1605#1600#1600#1608#1602#1600#1585#1575#1591#1600#1610#1600#1600#1577' '#1575#1604#1600#1600#1588#1600#1593#1600#1600#1576#1600#1600#1610#1600 +
          #1600#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 167
        Top = 32
        Width = 312
        Height = 22
        Size.Values = (
          58.208333333333340000
          441.854166666666700000
          84.666666666666680000
          825.500000000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'R'#233'publique Alg'#233'rienne D'#233'mocratique et Populaire'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel35: TQRLabel
        Left = 462
        Top = 96
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1222.375000000000000000
          254.000000000000000000
          76.729166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1585#1602#1600#1600#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel36: TQRLabel
        Left = 343
        Top = 96
        Width = 35
        Height = 18
        Size.Values = (
          47.625000000000000000
          907.520833333333300000
          254.000000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1578#1600#1600#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRShape15: TQRShape
        Left = 46
        Top = 243
        Width = 560
        Height = 2
        Size.Values = (
          5.291666666666667000
          121.708333333333300000
          642.937500000000000000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 230
        Top = 117
        Width = 286
        Height = 2
        Size.Values = (
          5.291666666666667000
          608.541666666666800000
          309.562500000000000000
          756.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 515
        Top = 64
        Width = 2
        Height = 55
        Size.Values = (
          145.520833333333300000
          1362.604166666667000000
          169.333333333333300000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 381
        Top = 93
        Width = 2
        Height = 26
        Size.Values = (
          68.791666666666680000
          1008.062500000000000000
          246.062500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 229
        Top = 64
        Width = 2
        Height = 55
        Size.Values = (
          145.520833333333300000
          605.895833333333300000
          169.333333333333300000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object date: TQRLabel
        Left = 249
        Top = 98
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          658.812500000000000000
          259.291666666666700000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel27: TQRLabel
        Left = 329
        Top = 67
        Width = 103
        Height = 24
        Size.Values = (
          63.500000000000000000
          870.479166666666700000
          177.270833333333300000
          272.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1587#1600#1600#1600#1600#1600#1606#1600#1600#1583' '#1591#1600#1600#1600#1600#1600#1604#1600#1600#1576
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 13
      end
      object l21: TQRShape
        Left = 45
        Top = 271
        Width = 561
        Height = 2
        Size.Values = (
          5.291666666666667000
          119.062500000000000000
          717.020833333333400000
          1484.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 232
        Top = 248
        Width = 215
        Height = 21
        Size.Values = (
          55.562500000000000000
          613.833333333333400000
          656.166666666666800000
          568.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1578#1593#1585#1610#1600#1600#1600#1601' '#1576#1575#1604#1605#1600#1578#1600#1593#1600#1600#1575#1605#1600#1604' '#1575#1604#1575#1602#1578#1589#1600#1600#1575#1583#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel28: TQRLabel
        Left = 406
        Top = 291
        Width = 195
        Height = 18
        Size.Values = (
          47.625000000000000000
          1074.208333333333000000
          769.937500000000000000
          515.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' :'#1571#1608' '#1575#1587#1605' '#1575#1604#1588#1585#1603#1600#1577' ('#1578#1581#1583#1610#1583' '#1575#1604#1588#1603#1604' '#1575#1604#1602#1575#1606#1608#1606#1610') '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel29: TQRLabel
        Left = 494
        Top = 309
        Width = 106
        Height = 17
        Size.Values = (
          44.979166666666670000
          1307.041666666667000000
          817.562500000000000000
          280.458333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1610#1578#1589#1585#1601' '#1604#1581#1587#1600#1600#1575#1576' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel2: TQRLabel
        Left = 527
        Top = 326
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          862.541666666666900000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1575#1604#1600#1593#1600#1606#1600#1600#1608#1575#1606' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 503
        Top = 343
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          907.520833333333400000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1575#1604#1607#1575#1578#1601' '#1608#1575#1604#1601#1575#1603#1587' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRShape22: TQRShape
        Left = 46
        Top = 126
        Width = 559
        Height = 2
        Size.Values = (
          5.291666666666667000
          121.708333333333300000
          333.375000000000000000
          1479.020833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 46
        Top = 361
        Width = 560
        Height = 2
        Size.Values = (
          5.291666666666667000
          121.708333333333300000
          955.145833333333500000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 46
        Top = 380
        Width = 560
        Height = 2
        Size.Values = (
          5.291666666666667000
          121.708333333333300000
          1005.416666666667000000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel31: TQRLabel
        Left = 436
        Top = 363
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          960.437500000000000000
          439.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1585#1602#1605' '#1575#1604#1587#1580#1604' '#1575#1604#1578#1580#1575#1585#1610' '#1575#1608' '#1576'. '#1575#1604#1581#1585#1601#1610'  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel32: TQRLabel
        Left = 502
        Top = 383
        Width = 99
        Height = 17
        Size.Values = (
          44.979166666666670000
          1328.208333333333000000
          1013.354166666667000000
          261.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1585#1602#1600#1600#1605' '#1575#1604#1575#1593#1578#1605#1600#1600#1575#1583'  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel33: TQRLabel
        Left = 422
        Top = 404
        Width = 179
        Height = 19
        Size.Values = (
          50.270833333333330000
          1116.541666666667000000
          1068.916666666667000000
          473.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1603#1588#1601' '#1575#1604#1581#1587#1575#1576#1575#1578' '#1575#1604#1576#1606#1603#1610#1577'('#1571#1608' '#1575#1604#1576#1585#1610#1583#1610#1577') '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRShape25: TQRShape
        Left = 229
        Top = 64
        Width = 287
        Height = 2
        Size.Values = (
          5.291666666666667000
          605.895833333333300000
          169.333333333333300000
          759.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 46
        Top = 235
        Width = 559
        Height = 2
        Size.Values = (
          5.291666666666667000
          121.708333333333300000
          621.770833333333400000
          1479.020833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 45
        Top = 149
        Width = 560
        Height = 2
        Size.Values = (
          5.291666666666667000
          119.062500000000000000
          394.229166666666700000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 604
        Top = 244
        Width = 2
        Height = 182
        Size.Values = (
          481.541666666666700000
          1598.083333333333000000
          645.583333333333400000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 45
        Top = 126
        Width = 2
        Height = 109
        Size.Values = (
          288.395833333333400000
          119.062500000000000000
          333.375000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel34: TQRLabel
        Left = 211
        Top = 130
        Width = 215
        Height = 18
        Size.Values = (
          47.625000000000000000
          558.270833333333300000
          343.958333333333400000
          568.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1578#1593#1585#1610#1600#1600#1600#1601' '#1576#1575#1604#1605#1600#1589#1604#1581#1577' '#1575#1604#1605#1600#1578#1593#1600#1600#1600#1575#1602#1583#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel37: TQRLabel
        Left = 535
        Top = 153
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          404.812500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1575#1604#1578#1587#1605#1610#1600#1600#1600#1600#1600#1600#1577' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel38: TQRLabel
        Left = 53
        Top = 170
        Width = 379
        Height = 21
        Size.Values = (
          55.562500000000000000
          140.229166666666700000
          449.791666666666700000
          1002.770833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '110 347'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel39: TQRLabel
        Left = 53
        Top = 153
        Width = 480
        Height = 17
        Size.Values = (
          44.979166666666670000
          140.229166666666700000
          404.812500000000000000
          1270.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel40: TQRLabel
        Left = 434
        Top = 171
        Width = 166
        Height = 20
        Size.Values = (
          52.916666666666670000
          1148.291666666667000000
          452.437500000000000000
          439.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1585#1605#1586' '#1575#1604#1605#1587#1610#1600#1600#1585' ('#1575#1604#1570#1605#1600#1600#1585' '#1576#1575#1604#1589#1585#1601') '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel41: TQRLabel
        Left = 542
        Top = 192
        Width = 58
        Height = 21
        Size.Values = (
          55.562500000000000000
          1434.041666666667000000
          508.000000000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1575#1604#1600#1593#1600#1606#1600#1600#1608#1575#1606' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel42: TQRLabel
        Left = 53
        Top = 192
        Width = 483
        Height = 20
        Size.Values = (
          52.916666666666670000
          140.229166666666700000
          508.000000000000000000
          1277.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1587#1600#1600#1575#1581#1577' '#1582#1600#1605#1600#1600#1610#1587#1600#1600#1578#1610' '#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel43: TQRLabel
        Left = 462
        Top = 214
        Width = 138
        Height = 22
        Size.Values = (
          57.207207207207210000
          1222.804054054054000000
          564.921171171171200000
          364.695945945945900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1575#1604#1600#1607#1600#1600#1575#1578#1601' '#1608' '#1575#1604#1601#1575#1603#1587'  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRShape18: TQRShape
        Left = 230
        Top = 93
        Width = 286
        Height = 2
        Size.Values = (
          4.409722222222222000
          608.541666666666600000
          246.944444444444400000
          756.267361111111000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 9
        Top = 430
        Width = 735
        Height = 2
        Size.Values = (
          5.291666666666667000
          23.812500000000000000
          1137.708333333333000000
          1944.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 9
        Top = 452
        Width = 734
        Height = 2
        Size.Values = (
          5.291666666666667000
          23.812500000000000000
          1195.916666666667000000
          1942.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 8
        Top = 508
        Width = 737
        Height = 2
        Size.Values = (
          5.291666666666667000
          21.166666666666670000
          1344.083333333333000000
          1949.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 8
        Top = 430
        Width = 2
        Height = 79
        Size.Values = (
          209.020833333333300000
          21.166666666666670000
          1137.708333333333000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 743
        Top = 430
        Width = 2
        Height = 79
        Size.Values = (
          209.020833333333300000
          1965.854166666667000000
          1137.708333333333000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 570
        Top = 452
        Width = 2
        Height = 56
        Size.Values = (
          148.166666666666700000
          1508.125000000000000000
          1195.916666666667000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 300
        Top = 361
        Width = 2
        Height = 41
        Size.Values = (
          108.479166666666700000
          793.750000000000000000
          955.145833333333300000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 262
        Top = 434
        Width = 199
        Height = 17
        Size.Values = (
          44.979166666666670000
          693.208333333333300000
          1148.291666666667000000
          526.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1582#1600#1589#1600#1600#1600#1608#1589#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578' '#1575#1604#1600#1591#1600#1600#1604#1600#1600#1600#1600#1576
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel30: TQRLabel
        Left = 578
        Top = 456
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1529.291666666667000000
          1206.500000000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1571#1588#1600#1600#1594#1575#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel44: TQRLabel
        Left = 585
        Top = 473
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1547.812500000000000000
          1251.479166666667000000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1604#1600#1600#1608#1575#1586#1605
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel45: TQRLabel
        Left = 578
        Top = 490
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1529.291666666667000000
          1296.458333333333000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1582#1600#1583#1605#1575#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object c2: TQRLabel
        Left = 619
        Top = 473
        Width = 16
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          1251.479166666667000000
          42.333333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel47: TQRLabel
        Left = 474
        Top = 456
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          1206.500000000000000000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1606#1601#1602#1600#1575#1578' '#1575#1604#1578#1587#1610#1610#1600#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel48: TQRLabel
        Left = 474
        Top = 473
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          1251.479166666667000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1606#1601#1602#1600#1575#1578' '#1575#1604#1578#1580#1607#1610#1610#1586
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel49: TQRLabel
        Left = 474
        Top = 491
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          1299.104166666667000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1606#1601#1602#1600#1600#1600#1575#1578' '#1571#1582#1600#1585#1609
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object c1: TQRLabel
        Left = 619
        Top = 456
        Width = 16
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          1206.500000000000000000
          42.333333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object c3: TQRLabel
        Left = 619
        Top = 490
        Width = 16
        Height = 18
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          47.625000000000000000
          1637.770833333333000000
          1296.458333333333000000
          42.333333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object c6: TQRLabel
        Left = 548
        Top = 491
        Width = 18
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1449.916666666667000000
          1299.104166666667000000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object c5: TQRLabel
        Left = 548
        Top = 473
        Width = 18
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1449.916666666667000000
          1251.479166666667000000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object c4: TQRLabel
        Left = 548
        Top = 456
        Width = 18
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1449.916666666667000000
          1206.500000000000000000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '  X '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel55: TQRLabel
        Left = 350
        Top = 456
        Width = 119
        Height = 17
        Size.Values = (
          44.979166666666670000
          926.041666666666700000
          1206.500000000000000000
          314.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '#1605#1608#1590#1608#1593' '#1575#1604#1591#1604#1576' '#1576#1575#1604#1578#1601#1589#1610#1600#1604' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object vobs1: TQRLabel
        Left = 14
        Top = 456
        Width = 327
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          1206.500000000000000000
          865.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'vobs1'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object vobs2: TQRLabel
        Left = 14
        Top = 473
        Width = 455
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          1251.479166666667000000
          1203.854166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'vobs2'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object vobs3: TQRLabel
        Left = 14
        Top = 490
        Width = 455
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          1296.458333333333000000
          1203.854166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'vobs3'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 649
        Top = 169
        Width = 103
        Height = 18
        Size.Values = (
          47.625000000000000000
          1717.145833333333000000
          447.145833333333300000
          272.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1604#1605#1589#1604#1581#1577' '#1575#1604#1585#1602#1575#1576#1577' '#1575#1604#1605#1575#1604#1610#1577
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 654
        Top = 189
        Width = 97
        Height = 18
        Size.Values = (
          47.625000000000000000
          1730.375000000000000000
          500.062500000000000000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1604#1608#1590#1593' '#1582#1575#1578#1605' '#1575#1604#1578#1571#1588#1610#1585#1577
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 649
        Top = 214
        Width = 110
        Height = 18
        Size.Values = (
          47.625000000000000000
          1717.145833333333000000
          566.208333333333300000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '('#1604#1571#1601#1590#1604' '#1605#1585#1575#1602#1576#1577' '#1608#1605#1578#1575#1576#1593#1577' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 661
        Top = 146
        Width = 90
        Height = 18
        Size.Values = (
          47.625000000000000000
          1748.895833333333000000
          386.291666666666700000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1607#1584#1575' '#1575#1604#1581#1610#1586' '#1605#1582#1589#1589')'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object f4: TQRLabel
        Left = 53
        Top = 326
        Width = 472
        Height = 17
        Size.Values = (
          44.979166666666670000
          140.229166666666700000
          862.541666666666900000
          1248.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object f6: TQRLabel
        Left = 303
        Top = 363
        Width = 132
        Height = 17
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          960.437500000000000000
          349.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object f7: TQRLabel
        Left = 303
        Top = 383
        Width = 196
        Height = 17
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          1013.354166666667000000
          518.583333333333300000)
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
      object QRShape43: TQRShape
        Left = 626
        Top = 417
        Width = 135
        Height = 1
        Size.Values = (
          2.645833333333333000
          1656.291666666667000000
          1103.312500000000000000
          357.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 620
        Top = 19
        Width = 1
        Height = 400
        Size.Values = (
          1058.333333333333000000
          1640.416666666667000000
          50.270833333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Style = psDot
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 622
        Top = 19
        Width = 135
        Height = 1
        Size.Values = (
          2.645833333333333000
          1645.708333333333000000
          50.270833333333330000
          357.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object f11: TQRLabel
        Left = 54
        Top = 343
        Width = 444
        Height = 17
        Size.Values = (
          44.979166666666670000
          142.875000000000000000
          907.520833333333400000
          1174.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object num: TQRLabel
        Left = 391
        Top = 96
        Width = 69
        Height = 21
        Size.Values = (
          55.562500000000000000
          1034.520833333333000000
          254.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'num'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel50: TQRLabel
        Left = 174
        Top = 383
        Width = 125
        Height = 17
        Size.Values = (
          44.979166666666670000
          460.375000000000000000
          1013.354166666667000000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1585#1602#1600#1600#1605' '#1575#1604#1578#1593#1585#1610#1601' '#1575#1604#1575#1581#1589#1575#1574#1610'  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel51: TQRLabel
        Left = 184
        Top = 363
        Width = 115
        Height = 17
        Size.Values = (
          44.979166666666670000
          486.833333333333300000
          960.437500000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1585#1602#1600#1600#1605' '#1575#1604#1578#1593#1585#1610#1601' '#1575#1604#1580#1576#1575#1574#1610'  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object f8: TQRLabel
        Left = 49
        Top = 363
        Width = 134
        Height = 17
        Size.Values = (
          44.979166666666670000
          129.645833333333300000
          960.437500000000000000
          354.541666666666700000)
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
      object f9: TQRLabel
        Left = 49
        Top = 383
        Width = 124
        Height = 17
        Size.Values = (
          44.979166666666670000
          129.645833333333300000
          1013.354166666667000000
          328.083333333333300000)
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
      object QRShape21: TQRShape
        Left = 470
        Top = 452
        Width = 2
        Height = 57
        Size.Values = (
          150.812500000000000000
          1243.541666666667000000
          1195.916666666667000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object f10: TQRLabel
        Left = 52
        Top = 291
        Width = 353
        Height = 18
        Size.Values = (
          47.625000000000000000
          137.583333333333300000
          769.937500000000000000
          933.979166666666600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRShape46: TQRShape
        Left = 640
        Top = 452
        Width = 2
        Height = 56
        Size.Values = (
          148.166666666666700000
          1693.333333333333000000
          1195.916666666667000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 712
        Top = 456
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          1883.833333333333000000
          1206.500000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1602#1587#1605
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel52: TQRLabel
        Left = 712
        Top = 490
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          1883.833333333333000000
          1296.458333333333000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' :'#1576#1606#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel53: TQRLabel
        Left = 708
        Top = 473
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          1873.250000000000000000
          1251.479166666667000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1601#1589#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object section: TQRLabel
        Left = 653
        Top = 456
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          1206.500000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'section'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object chap: TQRLabel
        Left = 653
        Top = 473
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          1251.479166666667000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'chap'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object art: TQRLabel
        Left = 653
        Top = 490
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          1296.458333333333000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'art'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object F13: TQRLabel
        Left = 53
        Top = 405
        Width = 367
        Height = 17
        Size.Values = (
          44.979166666666670000
          140.229166666666700000
          1071.562500000000000000
          971.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'F13'
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
      object QRLabel17: TQRLabel
        Left = 53
        Top = 214
        Width = 445
        Height = 20
        Size.Values = (
          52.916666666666670000
          140.229166666666700000
          566.208333333333300000
          1177.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'FAX 029 28 53 27     TEL 029 28 53 70'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 524
      Width = 775
      Height = 526
      AlignToBottom = False
      BeforePrint = affecter2
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1391.708333333333000000
        2050.520833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape5: TQRShape
        Left = 694
        Top = 5
        Width = 2
        Height = 225
        Size.Values = (
          595.312500000000000000
          1836.208333333333000000
          13.229166666666670000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 287
        Top = 5
        Width = 2
        Height = 225
        Size.Values = (
          595.312500000000000000
          759.354166666666700000
          13.229166666666670000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 248
        Top = 5
        Width = 2
        Height = 245
        Size.Values = (
          648.229166666666700000
          654.843750000000000000
          13.229166666666670000
          6.614583333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 199
        Top = 7
        Width = 2
        Height = 223
        Size.Values = (
          590.020833333333300000
          526.520833333333300000
          18.520833333333330000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 104
        Top = 8
        Width = 4
        Height = 242
        Size.Values = (
          641.614583333333300000
          274.505208333333300000
          19.843750000000000000
          9.921875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 6
        Top = 5
        Width = 2
        Height = 245
        Size.Values = (
          648.229166666666700000
          16.536458333333330000
          13.229166666666670000
          6.614583333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 6
        Top = 5
        Width = 736
        Height = 2
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          13.229166666666670000
          1947.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 6
        Top = 228
        Width = 737
        Height = 2
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          603.250000000000000000
          1949.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 6
        Top = 27
        Width = 736
        Height = 2
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          71.437500000000000000
          1947.333333333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 346
        Top = 8
        Width = 340
        Height = 17
        Size.Values = (
          44.979166666666670000
          915.458333333333300000
          21.166666666666670000
          899.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1576#1600#1610#1600#1606#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 251
        Top = 8
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          664.104166666666700000
          21.166666666666670000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1608#1581#1583#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel24: TQRLabel
        Left = 202
        Top = 8
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          21.166666666666670000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1603#1600#1605#1610#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 109
        Top = 8
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          288.395833333333300000
          21.166666666666670000
          230.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1587#1593#1600#1585' '#1575#1604#1608#1581#1583#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel26: TQRLabel
        Left = 26
        Top = 8
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          68.791666666666670000
          21.166666666666670000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1605#1576#1604#1600#1600#1600#1600#1600#1600#1594
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object u1: TQRLabel
        Left = 251
        Top = 30
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          664.104166666666700000
          79.375000000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object p1: TQRLabel
        Left = 202
        Top = 30
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          79.375000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '24000'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object q1: TQRLabel
        Left = 108
        Top = 30
        Width = 88
        Height = 17
        Size.Values = (
          44.979166666666670000
          285.750000000000000000
          79.375000000000000000
          232.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '1234567891.99'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object m1: TQRLabel
        Left = 9
        Top = 32
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          84.666666666666670000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '12345678912.99'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object l7: TQRLabel
        Left = 290
        Top = 148
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          391.583333333333300000
          1063.625000000000000000)
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
      object u2: TQRLabel
        Left = 251
        Top = 48
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          127.000000000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object p2: TQRLabel
        Left = 202
        Top = 48
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          127.000000000000000000
          119.062500000000000000)
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
      object q2: TQRLabel
        Left = 109
        Top = 48
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          127.000000000000000000
          230.187500000000000000)
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
      object m2: TQRLabel
        Left = 9
        Top = 48
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          127.000000000000000000
          251.354166666666700000)
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
      object l8: TQRLabel
        Left = 290
        Top = 168
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          444.500000000000000000
          1063.625000000000000000)
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
      object l5: TQRLabel
        Left = 290
        Top = 108
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          285.750000000000000000
          1063.625000000000000000)
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
      object l4: TQRLabel
        Left = 290
        Top = 88
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          232.833333333333300000
          1063.625000000000000000)
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
      object l3: TQRLabel
        Left = 290
        Top = 68
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          179.916666666666700000
          1063.625000000000000000)
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
      object l9: TQRLabel
        Left = 290
        Top = 188
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          497.416666666666700000
          1063.625000000000000000)
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
      object l10: TQRLabel
        Left = 290
        Top = 208
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          550.333333333333300000
          1063.625000000000000000)
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
      object l6: TQRLabel
        Left = 290
        Top = 128
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          338.666666666666700000
          1063.625000000000000000)
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
      object l2: TQRLabel
        Left = 290
        Top = 48
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          127.000000000000000000
          1063.625000000000000000)
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
      object u3: TQRLabel
        Left = 251
        Top = 68
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          179.916666666666700000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object u4: TQRLabel
        Left = 251
        Top = 88
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          232.833333333333300000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object u5: TQRLabel
        Left = 251
        Top = 108
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          285.750000000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object u6: TQRLabel
        Left = 251
        Top = 128
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          338.666666666666700000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object u7: TQRLabel
        Left = 251
        Top = 148
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          391.583333333333300000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object u8: TQRLabel
        Left = 251
        Top = 168
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          444.500000000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object u9: TQRLabel
        Left = 251
        Top = 188
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          497.416666666666700000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object u10: TQRLabel
        Left = 251
        Top = 208
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          664.104166666666700000
          550.333333333333300000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object p3: TQRLabel
        Left = 202
        Top = 68
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          179.916666666666700000
          119.062500000000000000)
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
      object p4: TQRLabel
        Left = 202
        Top = 88
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          232.833333333333300000
          119.062500000000000000)
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
      object p5: TQRLabel
        Left = 202
        Top = 108
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          285.750000000000000000
          119.062500000000000000)
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
      object p6: TQRLabel
        Left = 202
        Top = 128
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          338.666666666666700000
          119.062500000000000000)
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
      object p7: TQRLabel
        Left = 202
        Top = 148
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          391.583333333333300000
          119.062500000000000000)
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
      object p8: TQRLabel
        Left = 202
        Top = 168
        Width = 45
        Height = 20
        Size.Values = (
          52.916666666666670000
          534.458333333333300000
          444.500000000000000000
          119.062500000000000000)
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
      object p9: TQRLabel
        Left = 202
        Top = 188
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          497.416666666666700000
          119.062500000000000000)
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
      object p10: TQRLabel
        Left = 202
        Top = 208
        Width = 45
        Height = 19
        Size.Values = (
          50.270833333333330000
          534.458333333333300000
          550.333333333333300000
          119.062500000000000000)
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
      object q3: TQRLabel
        Left = 109
        Top = 68
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          179.916666666666700000
          230.187500000000000000)
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
      object q4: TQRLabel
        Left = 109
        Top = 88
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          232.833333333333300000
          230.187500000000000000)
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
      object q5: TQRLabel
        Left = 108
        Top = 108
        Width = 88
        Height = 19
        Size.Values = (
          50.270833333333330000
          285.750000000000000000
          285.750000000000000000
          232.833333333333300000)
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
      object q6: TQRLabel
        Left = 109
        Top = 128
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          338.666666666666700000
          230.187500000000000000)
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
      object q7: TQRLabel
        Left = 109
        Top = 148
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          391.583333333333300000
          230.187500000000000000)
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
      object q8: TQRLabel
        Left = 109
        Top = 168
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          444.500000000000000000
          230.187500000000000000)
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
      object q9: TQRLabel
        Left = 109
        Top = 188
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          497.416666666666700000
          230.187500000000000000)
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
      object q10: TQRLabel
        Left = 109
        Top = 208
        Width = 87
        Height = 19
        Size.Values = (
          50.270833333333330000
          288.395833333333300000
          550.333333333333300000
          230.187500000000000000)
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
      object m3: TQRLabel
        Left = 9
        Top = 68
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          179.916666666666700000
          251.354166666666700000)
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
      object m4: TQRLabel
        Left = 9
        Top = 88
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          232.833333333333300000
          251.354166666666700000)
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
      object m5: TQRLabel
        Left = 9
        Top = 108
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          285.750000000000000000
          251.354166666666700000)
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
      object m6: TQRLabel
        Left = 9
        Top = 128
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          338.666666666666700000
          251.354166666666700000)
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
      object m7: TQRLabel
        Left = 9
        Top = 148
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          391.583333333333300000
          251.354166666666700000)
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
      object m8: TQRLabel
        Left = 9
        Top = 168
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          444.500000000000000000
          251.354166666666700000)
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
      object m9: TQRLabel
        Left = 9
        Top = 188
        Width = 95
        Height = 20
        Size.Values = (
          52.916666666666670000
          23.812500000000000000
          497.416666666666700000
          251.354166666666700000)
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
      object m10: TQRLabel
        Left = 9
        Top = 208
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          23.812500000000000000
          550.333333333333300000
          251.354166666666700000)
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
      object QRShape36: TQRShape
        Left = 741
        Top = 5
        Width = 2
        Height = 225
        Size.Values = (
          595.312500000000000000
          1960.562500000000000000
          13.229166666666670000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 698
        Top = 8
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1846.791666666667000000
          21.166666666666670000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1585#1602#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object n3: TQRLabel
        Left = 698
        Top = 68
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          179.916666666666700000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n2: TQRLabel
        Left = 698
        Top = 48
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          127.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n5: TQRLabel
        Left = 698
        Top = 108
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          285.750000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n6: TQRLabel
        Left = 698
        Top = 128
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          338.666666666666700000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n8: TQRLabel
        Left = 698
        Top = 168
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          444.500000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n1: TQRLabel
        Left = 698
        Top = 30
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1846.791666666667000000
          79.375000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n7: TQRLabel
        Left = 698
        Top = 148
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          391.583333333333400000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n10: TQRLabel
        Left = 698
        Top = 208
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          550.333333333333400000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n9: TQRLabel
        Left = 698
        Top = 188
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          497.416666666666700000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object n4: TQRLabel
        Left = 698
        Top = 88
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1846.791666666667000000
          232.833333333333400000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape37: TQRShape
        Left = 8
        Top = 248
        Width = 242
        Height = 2
        Size.Values = (
          5.291666666666667000
          21.166666666666670000
          656.166666666666700000
          640.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 6
        Top = 268
        Width = 244
        Height = 2
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          709.083333333333300000
          645.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qr40: TQRShape
        Left = 6
        Top = 331
        Width = 739
        Height = 2
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          875.770833333333300000
          1955.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qr39: TQRShape
        Left = 6
        Top = 371
        Width = 739
        Height = 5
        Size.Values = (
          13.229166666666670000
          15.875000000000000000
          981.604166666666700000
          1955.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qr42: TQRShape
        Left = 743
        Top = 331
        Width = 2
        Height = 41
        Size.Values = (
          108.479166666666700000
          1965.854166666667000000
          875.770833333333300000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 138
        Top = 231
        Width = 108
        Height = 17
        Size.Values = (
          44.979166666666670000
          365.125000000000000000
          611.187500000000000000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1576#1604#1600#1600#1600#1600#1594' '#1576#1583#1608#1606' '#1575#1604#1585#1587#1600#1600#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 148
        Top = 251
        Width = 100
        Height = 16
        Size.Values = (
          42.994791666666670000
          390.260416666666700000
          664.765625000000000000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '#1605'. '#1585#1587#1605' '#1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1590#1575#1601#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 122
        Top = 271
        Width = 124
        Height = 17
        Size.Values = (
          44.979166666666670000
          322.791666666666700000
          717.020833333333300000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1576#1604#1594' '#1576#1581#1587#1575#1576' '#1603#1604' '#1575#1604#1585#1587#1608#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qr16: TQRLabel
        Left = 472
        Top = 334
        Width = 263
        Height = 17
        Enabled = False
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          883.708333333333300000
          695.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' : '#1610#1608#1602#1601' '#1587#1606#1583'  '#1607#1584#1575' '#1575#1604#1591#1604#1576' '#1593#1604#1609' '#1575#1604#1605#1576#1604#1594' '#1575#1604#1575#1580#1605#1575#1604#1610' '#1576#1575#1604#1581#1585#1608#1601'  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object s_en_l: TQRLabel
        Left = 46
        Top = 352
        Width = 671
        Height = 17
        Size.Values = (
          46.302083333333330000
          122.369791666666700000
          932.656250000000000000
          1776.015625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 's_en_l'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qr17: TQRLabel
        Left = 427
        Top = 375
        Width = 309
        Height = 19
        Size.Values = (
          50.270833333333330000
          1129.770833333333000000
          992.187500000000000000
          817.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1610#1604#1578#1586#1605' '#1575#1604#1605#1578#1593#1575#1605#1604' '#1575#1604#1575#1602#1578#1589#1575#1583#1610' '#1576#1578#1606#1601#1610#1584' '#1607#1584#1575' '#1575#1604#1591#1604#1576' '#1581#1587#1576' '#1575#1604#1588#1585#1608#1591' '#1575#1604#1605#1581#1583#1583#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qr20: TQRLabel
        Left = 631
        Top = 396
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1669.520833333333000000
          1047.750000000000000000
          230.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '#1605#1600#1589#1583#1613#1585' '#1575#1604#1578#1605#1608#1610#1600#1600#1604' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qr21: TQRLabel
        Left = 605
        Top = 415
        Width = 136
        Height = 17
        Size.Values = (
          44.979166666666670000
          1600.729166666667000000
          1098.020833333333000000
          359.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '  '#1578#1602#1583#1585' '#1605#1583#1577' '#1575#1604#1578#1587#1604#1610#1605' '#1571#1608' '#1575#1604#1578#1606#1601#1610#1584'  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QR60: TQRLabel
        Left = 7
        Top = 428
        Width = 170
        Height = 19
        Size.Values = (
          50.056306306306310000
          17.877252252252250000
          1133.417792792793000000
          450.506756756756800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' ..................... '#1576#1600#1600#1594#1585#1583#1575#1610#1600#1600#1600#1600#1577' , '#1601#1610' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QR59: TQRLabel
        Left = 303
        Top = 427
        Width = 157
        Height = 22
        Size.Values = (
          58.208333333333330000
          801.687500000000000000
          1129.770833333333000000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1589#1604#1581#1600#1600#1600#1600#1577' '#1575#1604#1605#1578#1593#1575#1602#1600#1600#1600#1600#1600#1583#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object g1: TQRLabel
        Left = 9
        Top = 231
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          611.187500000000000000
          251.354166666666700000)
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
      object g3: TQRLabel
        Left = 9
        Top = 271
        Width = 94
        Height = 17
        Size.Values = (
          46.302083333333330000
          23.151041666666670000
          717.682291666666700000
          248.046875000000000000)
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
      object pp: TQRLabel
        Left = 6
        Top = 379
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          1002.770833333333000000
          235.479166666666700000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object l1: TQRLabel
        Left = 290
        Top = 30
        Width = 402
        Height = 17
        Size.Values = (
          44.979166666666670000
          767.291666666666700000
          79.375000000000000000
          1063.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'l1'
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
      object QQ1: TQRLabel
        Left = 122
        Top = 291
        Width = 124
        Height = 17
        Size.Values = (
          44.979166666666670000
          322.791666666666700000
          769.937500000000000000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'AVOIR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QQ2: TQRLabel
        Left = 110
        Top = 313
        Width = 135
        Height = 17
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          828.145833333333300000
          357.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1575#1580#1605#1575#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object V2: TQRShape
        Left = 6
        Top = 289
        Width = 244
        Height = 2
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          764.645833333333300000
          645.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object V1: TQRShape
        Left = 6
        Top = 308
        Width = 244
        Height = 5
        Size.Values = (
          13.229166666666670000
          16.536458333333330000
          813.593750000000000000
          644.921875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object v3: TQRShape
        Left = 248
        Top = 289
        Width = 2
        Height = 45
        Size.Values = (
          119.062500000000000000
          654.843750000000000000
          763.984375000000000000
          6.614583333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object v5: TQRShape
        Left = 104
        Top = 250
        Width = 2
        Height = 82
        Size.Values = (
          218.281250000000000000
          274.505208333333300000
          661.458333333333300000
          6.614583333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object G4: TQRLabel
        Left = 9
        Top = 291
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          769.937500000000000000
          251.354166666666700000)
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
      object G5: TQRLabel
        Left = 9
        Top = 312
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          825.500000000000000000
          251.354166666666700000)
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
      object v4: TQRShape
        Left = 6
        Top = 331
        Width = 2
        Height = 40
        Enabled = False
        Size.Values = (
          105.833333333333300000
          15.875000000000000000
          875.770833333333300000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object g2: TQRLabel
        Left = 9
        Top = 251
        Width = 95
        Height = 17
        Size.Values = (
          45.035460992907800000
          22.517730496453900000
          664.273049645390100000
          250.509751773049600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1594#1610#1585' '#1582#1575#1590#1600#1600#1593' '#1604#1604#1590#1585#1610#1600#1600#1600#1576#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qtva: TQRLabel
        Left = 111
        Top = 251
        Width = 36
        Height = 16
        Size.Values = (
          42.994791666666670000
          294.348958333333300000
          664.765625000000000000
          95.911458333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'qtva'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qtv: TQRLabel
        Left = 252
        Top = 251
        Width = 231
        Height = 17
        Size.Values = (
          44.979166666666670000
          666.750000000000000000
          664.104166666666700000
          611.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1594#1610#1585' '#1582#1575#1590#1600#1600#1593' '#1604#1590#1585#1610#1600#1600#1600#1576#1577' '#1575#1604#1585#1587#1605' '#1593#1604#1609' '#1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1590#1575#1601#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object v33: TQRShape
        Left = 248
        Top = 248
        Width = 2
        Height = 44
        Size.Values = (
          115.755208333333300000
          654.843750000000000000
          654.843750000000000000
          6.614583333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object v6: TQRShape
        Left = 6
        Top = 248
        Width = 2
        Height = 84
        Size.Values = (
          221.588541666666700000
          16.536458333333330000
          654.843750000000000000
          6.614583333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qr58: TQRLabel
        Left = 132
        Top = 415
        Width = 470
        Height = 17
        Size.Values = (
          44.979166666666670000
          349.250000000000000000
          1098.020833333333000000
          1243.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qr58'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object TAM: TQRLabel
        Left = 154
        Top = 396
        Width = 470
        Height = 17
        Size.Values = (
          44.979166666666670000
          407.458333333333300000
          1047.750000000000000000
          1243.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TAM'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = UTF8Encoding
    Codepage = '1252'
    Left = 64
    Top = 232
  end
end
