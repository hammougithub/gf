object f_etat_virement: Tf_etat_virement
  Left = 236
  Top = 76
  Caption = 'f_etat_virement'
  ClientHeight = 680
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 40
    Top = 40
    Width = 816
    Height = 1056
    BeforePrint = avant_imp_qr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
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
    Page.PaperSize = LetterSmall
    Page.Continuous = False
    Page.Values = (
      99.060000000000000000
      2794.000000000000000000
      99.060000000000000000
      2159.000000000000000000
      0.000000000000000000
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
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 0
      Top = 37
      Width = 816
      Height = 189
      AlignToBottom = False
      BeforePrint = avant_imp
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        500.062500000000000000
        2159.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 572
        Top = 28
        Width = 185
        Height = 25
        Size.Values = (
          66.145833333333330000
          1514.739583333333000000
          72.760416666666670000
          489.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1608#1586#1575#1585#1577' '#1575#1604#1600#1600#1600#1605#1600#1600#1575#1604#1600#1600#1610#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 437
        Top = 76
        Width = 320
        Height = 25
        Size.Values = (
          66.145833333333330000
          1157.552083333333000000
          201.744791666666700000
          846.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object l_a: TQRLabel
        Left = 523
        Top = 134
        Width = 225
        Height = 25
        Size.Values = (
          66.145833333333330000
          1383.770833333333000000
          354.541666666666700000
          595.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'l_a'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel4: TQRLabel
        Left = 667
        Top = 163
        Width = 90
        Height = 25
        Size.Values = (
          66.145833333333330000
          1764.770833333333000000
          431.270833333333300000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = #1575#1604#1600#1600#1581#1600#1600#1608#1575#1604#1600#1600#1577' '#1585#1602#1600#1600#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 593
        Top = 163
        Width = 68
        Height = 25
        Size.Values = (
          66.145833333333330000
          1568.979166666667000000
          431.270833333333300000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = f_dm.sm
        DataField = 'MANDAT'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 243
        Top = 110
        Width = 111
        Height = 26
        Size.Values = (
          68.791666666666670000
          642.937500000000000000
          291.041666666666700000
          293.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1576#1600#1600#1610#1600#1600#1600#1600#1575#1606' '#1575#1604#1600#1583#1601#1600#1600#1593
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 16
      end
      object QRLabel12: TQRLabel
        Left = 430
        Top = 51
        Width = 328
        Height = 25
        Size.Values = (
          66.145833333333330000
          1137.708333333333000000
          135.598958333333300000
          866.510416666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1600#1600#1593#1600#1600#1575#1605#1600#1600#1600#1600#1577' '#1604#1604#1605#1600#1600#1581#1600#1600#1575#1587#1600#1600#1600#1600#1576#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel15: TQRLabel
        Left = 390
        Top = 4
        Width = 368
        Height = 25
        Size.Values = (
          66.145833333333330000
          1031.875000000000000000
          10.583333333333330000
          973.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          #1575#1604#1580#1605#1600#1607#1600#1608#1585#1610#1600#1577' '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1583#1610#1600#1605#1600#1600#1608#1602#1600#1585#1575#1591#1600#1610#1600#1600#1577' '#1575#1604#1600#1600#1588#1600#1593#1600#1600#1576#1600#1600#1610#1600 +
          #1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel36: TQRLabel
        Left = 554
        Top = 158
        Width = 41
        Height = 24
        Size.Values = (
          63.500000000000000000
          1465.791666666667000000
          418.041666666666700000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1576#1600#1578#1600#1600#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qrdate1: TQRLabel
        Left = 467
        Top = 164
        Width = 76
        Height = 24
        Size.Values = (
          63.500000000000000000
          1235.604166666667000000
          433.916666666666700000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrdate1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 437
        Top = 102
        Width = 320
        Height = 25
        Size.Values = (
          66.145833333333330000
          1156.229166666667000000
          269.875000000000000000
          846.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
    end
    object QRBand2: TQRBand
      Left = 0
      Top = 226
      Width = 816
      Height = 24
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        2159.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 461
        Top = 1
        Width = 309
        Height = 22
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.208333333333330000
          1219.729166666667000000
          2.645833333333333000
          817.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1578#1600#1593#1610#1610#1600#1600#1600#1600#1600#1606' '#1575#1604#1600#1605#1587#1578#1601#1610#1600#1600#1600#1600#1600#1600#1583'   '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 120
        Top = 1
        Width = 340
        Height = 22
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          317.500000000000000000
          2.645833333333333000
          899.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1600#1600#1581#1600#1600#1600#1587#1600#1600#1600#1600#1600#1600#1600#1600#1575#1576
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 20
        Top = 1
        Width = 100
        Height = 22
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          52.916666666666670000
          2.645833333333333000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1605#1600#1576#1604#1600#1600#1600#1594
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
    end
    object QRBand3: TQRBand
      Left = 0
      Top = 250
      Width = 816
      Height = 23
      AlignToBottom = False
      BeforePrint = imp
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        2159.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object nom: TQRLabel
        Left = 463
        Top = 0
        Width = 308
        Height = 21
        Size.Values = (
          55.562500000000000000
          1225.020833333333000000
          0.000000000000000000
          814.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'nom'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRDBText2: TQRDBText
        Left = 341
        Top = 0
        Width = 119
        Height = 21
        Size.Values = (
          56.223958333333330000
          902.890625000000000000
          0.000000000000000000
          314.192708333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'BANQUE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 121
        Top = 0
        Width = 219
        Height = 21
        Size.Values = (
          55.562500000000000000
          320.145833333333300000
          0.000000000000000000
          579.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'COMPTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 20
        Top = 0
        Width = 101
        Height = 21
        Size.Values = (
          55.562500000000000000
          52.916666666666670000
          0.000000000000000000
          267.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'MONTANT'
        Mask = '###,###,###.00'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 118
        Top = 0
        Width = 2
        Height = 600
        Frame.Style = psClear
        Frame.Width = 2
        Size.Values = (
          1587.500000000000000000
          312.208333333333300000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 19
        Top = 0
        Width = 2
        Height = 600
        Frame.Style = psClear
        Frame.Width = 2
        Size.Values = (
          1587.500000000000000000
          50.270833333333330000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 460
        Top = 0
        Width = 2
        Height = 600
        Size.Values = (
          1587.500000000000000000
          1217.083333333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 770
        Top = -1
        Width = 2
        Height = 600
        Frame.Width = 4
        Size.Values = (
          1587.500000000000000000
          2037.291666666667000000
          -2.645833333333333000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand4: TQRBand
      Left = 0
      Top = 273
      Width = 816
      Height = 248
      AlignToBottom = False
      BeforePrint = befor_print
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        656.166666666666700000
        2159.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel9: TQRLabel
        Left = 679
        Top = 19
        Width = 87
        Height = 21
        Size.Values = (
          55.562500000000000000
          1796.520833333333000000
          50.270833333333330000
          230.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = ': '#1575#1608#1602#1601#1578' '#1593#1604#1609' '#1605#1576#1604#1594
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object somme: TQRExpr
        Left = 20
        Top = 1
        Width = 100
        Height = 21
        Size.Values = (
          55.562500000000000000
          52.916666666666670000
          2.645833333333333000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Master = QuickRep1
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(montant)'
        Mask = '###,###,###.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object s_en_l: TQRLabel
        Left = 625
        Top = 19
        Width = 48
        Height = 21
        Size.Values = (
          55.562500000000000000
          1653.645833333333000000
          50.270833333333330000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 's_en_l'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 407
        Top = 80
        Width = 94
        Height = 25
        Size.Values = (
          66.145833333333330000
          1078.177083333333000000
          211.666666666666700000
          248.046875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1594#1600#1600#1600#1585#1583#1575#1610#1600#1600#1600#1577' '#1610#1608#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel11: TQRLabel
        Left = 101
        Top = 80
        Width = 89
        Height = 21
        Size.Values = (
          55.562500000000000000
          267.229166666666700000
          211.666666666666700000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1575#1604#1570#1605#1600#1600#1585' '#1576#1575#1604#1589#1585#1601
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 13
      end
      object QRShape4: TQRShape
        Left = 20
        Top = 0
        Width = 751
        Height = 1
        Size.Values = (
          2.645833333333333000
          52.916666666666670000
          0.000000000000000000
          1987.020833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrdate2: TQRLabel
        Left = 299
        Top = 80
        Width = 100
        Height = 25
        Size.Values = (
          66.145833333333330000
          790.442708333333300000
          211.666666666666700000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrdate2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
    end
  end
end
