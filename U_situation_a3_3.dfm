object f_situation_a3_3: Tf_situation_a3_3
  Left = -46
  Top = 154
  Caption = 'f_situation_a3_3'
  ClientHeight = 499
  ClientWidth = 1279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 40
    Top = 0
    Width = 1587
    Height = 1123
    BeforePrint = befor_print_qr
    DataSet = f_dm.ClientDataSet_chapitre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.Orientation = poLandscape
    Page.PaperSize = A3
    Page.Continuous = False
    Page.Values = (
      99.100000000000000000
      2970.000000000000000000
      50.800000000000000000
      4200.000000000000000000
      10.000000000000000000
      10.000000000000000000
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
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand2: TQRBand
      Left = 4
      Top = 200
      Width = 1579
      Height = 60
      AlignToBottom = False
      BeforePrint = BEFOR_PRINT_BAND2
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        158.750000000000000000
        4177.770833333334000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel5: TQRLabel
        Left = 19
        Top = 1
        Width = 57
        Height = 58
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          153.458333333333300000
          50.270833333333330000
          2.645833333333333000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '             CHAPITRE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 77
        Top = 1
        Width = 121
        Height = 28
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          72.760416666666680000
          205.052083333333300000
          3.307291666666667000
          320.807291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '  CREDITS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 77
        Top = 30
        Width = 121
        Height = 29
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          76.067708333333320000
          205.052083333333300000
          79.375000000000000000
          320.807291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'INITIAUX'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 200
        Top = 1
        Width = 186
        Height = 16
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          42.994791666666670000
          529.166666666666700000
          3.307291666666667000
          492.786458333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'MOUVEMENT'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 200
        Top = 17
        Width = 186
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          49.609375000000000000
          529.166666666666700000
          46.302083333333330000
          492.786458333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'D'#39' ORDRE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 200
        Top = 38
        Width = 90
        Height = 21
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          56.223958333333330000
          529.166666666666700000
          99.218750000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'EN PLUS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 291
        Top = 38
        Width = 95
        Height = 21
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          56.223958333333330000
          770.598958333333200000
          99.218750000000000000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'EN MOINS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 388
        Top = 1
        Width = 116
        Height = 16
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          42.994791666666670000
          1025.260416666667000000
          3.307291666666667000
          307.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DOTATION'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 388
        Top = 17
        Width = 116
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          49.609375000000000000
          1025.260416666667000000
          46.302083333333330000
          307.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'REVISEE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object DEPENSES: TQRLabel
        Left = 505
        Top = 1
        Width = 116
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          46.302083333333330000
          1336.145833333333000000
          3.307291666666667000
          307.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DEPENSES'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 730
        Top = 1
        Width = 94
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          46.302083333333330000
          1931.458333333333000000
          3.307291666666667000
          248.046875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DEPENSES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 914
        Top = 1
        Width = 112
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          47.625000000000000000
          2418.291666666667000000
          2.645833333333333000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TOTAL DES'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 622
        Top = 1
        Width = 106
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          46.302083333333330000
          1647.031250000000000000
          3.307291666666667000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DEPENSES'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object ANTERIEURS: TQRLabel
        Left = 505
        Top = 19
        Width = 116
        Height = 40
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          105.833333333333300000
          1336.145833333333000000
          49.609375000000000000
          307.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ANTERIEURS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 622
        Top = 19
        Width = 106
        Height = 40
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          105.833333333333300000
          1647.031250000000000000
          49.609375000000000000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DU MOIS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 730
        Top = 18
        Width = 94
        Height = 41
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          108.479166666666700000
          1931.458333333333000000
          47.625000000000000000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ANNULEES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 914
        Top = 20
        Width = 112
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          2418.291666666667000000
          52.916666666666670000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DEPENSES'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 1028
        Top = 21
        Width = 106
        Height = 38
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          99.218750000000000000
          2718.593750000000000000
          56.223958333333330000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DRT'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel31: TQRLabel
        Left = 1135
        Top = 21
        Width = 106
        Height = 38
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          99.218750000000000000
          3003.020833333333000000
          56.223958333333330000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TW - TC'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 1242
        Top = 21
        Width = 107
        Height = 38
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          100.541666666666700000
          3286.125000000000000000
          55.562500000000000000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TW - TC'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 1350
        Top = 19
        Width = 106
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          3571.875000000000000000
          49.609375000000000000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DISPONIBLE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 1350
        Top = 40
        Width = 106
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          49.609375000000000000
          3571.875000000000000000
          105.833333333333300000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'C=A-B'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 1028
        Top = 1
        Width = 321
        Height = 19
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          2719.916666666667000000
          2.645833333333333000
          849.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'REPARTITION  DES DEPENSES PAR STRUCTURE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 1350
        Top = 1
        Width = 106
        Height = 19
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          49.609375000000000000
          3571.875000000000000000
          3.307291666666667000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'SOLDE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 1457
        Top = 1
        Width = 44
        Height = 58
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          153.458333333333300000
          3854.979166666667000000
          2.645833333333333000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 %     B/A'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 914
        Top = 40
        Width = 112
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          2418.291666666667000000
          105.833333333333300000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '(B)'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 388
        Top = 37
        Width = 116
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333340000
          1026.583333333333000000
          97.895833333333340000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '(A)'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 825
        Top = 1
        Width = 88
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          46.302083333333330000
          2182.812500000000000000
          3.307291666666667000
          231.510416666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'MONTANTS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 825
        Top = 19
        Width = 88
        Height = 40
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          105.833333333333300000
          2182.812500000000000000
          49.609375000000000000
          231.510416666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'REIMPUTES'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRGroup1: TQRGroup
      Left = 4
      Top = 260
      Width = 1579
      Height = 25
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333340000
        4177.770833333334000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'chapitre'
      FooterBand = QRBand3
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object QRBand3: TQRBand
      Left = 4
      Top = 307
      Width = 1579
      Height = 24
      AlignToBottom = False
      BeforePrint = total
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        4177.770833333334000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object qrltca1: TQRLabel
        Left = 77
        Top = 0
        Width = 121
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          205.052083333333300000
          0.000000000000000000
          320.807291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltca1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLenplus1: TQRLabel
        Left = 200
        Top = 0
        Width = 90
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          529.166666666666700000
          0.000000000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLenplus1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLenmoins1: TQRLabel
        Left = 291
        Top = 0
        Width = 95
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          770.598958333333200000
          0.000000000000000000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLenmoins1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLdr1: TQRLabel
        Left = 388
        Top = 0
        Width = 116
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          1025.260416666667000000
          0.000000000000000000
          307.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdr1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRmda1: TQRLabel
        Left = 505
        Top = 0
        Width = 116
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          1336.145833333333000000
          0.000000000000000000
          307.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmda1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRmdm1: TQRLabel
        Left = 622
        Top = 0
        Width = 106
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          1647.031250000000000000
          0.000000000000000000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmdm1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrannul1: TQRLabel
        Left = 730
        Top = 0
        Width = 94
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          1931.458333333333000000
          0.000000000000000000
          248.046875000000000000)
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
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLtd1: TQRLabel
        Left = 914
        Top = 0
        Width = 112
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          2417.630208333333000000
          0.000000000000000000
          297.656250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLtd1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLdrt1: TQRLabel
        Left = 1028
        Top = 0
        Width = 106
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          2718.593750000000000000
          0.000000000000000000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdrt1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRL471: TQRLabel
        Left = 1135
        Top = 0
        Width = 106
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          3003.020833333333000000
          0.000000000000000000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL471'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRL031: TQRLabel
        Left = 1242
        Top = 0
        Width = 107
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          3286.125000000000000000
          0.000000000000000000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL031'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLs1: TQRLabel
        Left = 1350
        Top = 0
        Width = 106
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          3571.875000000000000000
          0.000000000000000000
          281.119791666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLs1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLt1: TQRLabel
        Left = 1457
        Top = 0
        Width = 44
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.208333333333320000
          3854.979166666667000000
          0.000000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRRE1: TQRLabel
        Left = 825
        Top = 0
        Width = 88
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          59.531250000000000000
          2182.812500000000000000
          0.000000000000000000
          231.510416666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 19
        Top = 0
        Width = 57
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          50.270833333333330000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.ClientDataSet_chapitre
        DataField = 'CHAPITRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object QRBand4: TQRBand
      Left = 4
      Top = 285
      Width = 1579
      Height = 22
      AlignToBottom = False
      BeforePrint = befor_print_band4
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333340000
        4177.770833333334000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 53
        Top = 0
        Width = 23
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          140.229166666666700000
          0.000000000000000000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.ClientDataSet_chapitre
        DataField = 'ARTICLE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 19
        Top = 0
        Width = 32
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          50.270833333333330000
          0.000000000000000000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.ClientDataSet_chapitre
        DataField = 'CHAPITRE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object qrlca: TQRLabel
        Left = 77
        Top = 0
        Width = 121
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          203.729166666666700000
          0.000000000000000000
          320.145833333333300000)
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
        FontSize = 8
      end
      object qrlenplus: TQRLabel
        Left = 200
        Top = 0
        Width = 90
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          529.166666666666700000
          0.000000000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                                '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlenmoins: TQRLabel
        Left = 291
        Top = 0
        Width = 95
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          769.937500000000000000
          0.000000000000000000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                     '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrldr: TQRLabel
        Left = 388
        Top = 0
        Width = 116
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1026.583333333333000000
          0.000000000000000000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrldr'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrmda: TQRLabel
        Left = 505
        Top = 0
        Width = 116
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1336.145833333333000000
          0.000000000000000000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrmda'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrmdm: TQRLabel
        Left = 622
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1645.708333333333000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrmdm'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrannul: TQRLabel
        Left = 730
        Top = 0
        Width = 94
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1931.458333333333000000
          0.000000000000000000
          248.708333333333300000)
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
        FontSize = 8
      end
      object qrltd: TQRLabel
        Left = 914
        Top = 0
        Width = 112
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2418.291666666667000000
          0.000000000000000000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltd'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLdrt: TQRLabel
        Left = 1028
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2719.916666666667000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdrt'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL47: TQRLabel
        Left = 1135
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          3003.020833333333000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL47'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL03: TQRLabel
        Left = 1242
        Top = 0
        Width = 107
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          3286.125000000000000000
          0.000000000000000000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL03'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLS: TQRLabel
        Left = 1350
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          3571.875000000000000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLT: TQRLabel
        Left = 1457
        Top = 0
        Width = 44
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.562500000000000000
          3854.979166666667000000
          0.000000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLT'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRRE: TQRLabel
        Left = 825
        Top = 0
        Width = 88
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2182.812500000000000000
          0.000000000000000000
          232.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRRE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand5: TQRBand
      Left = 4
      Top = 331
      Width = 1579
      Height = 329
      AlignToBottom = False
      BeforePrint = totalg
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        870.479166666666800000
        4177.770833333334000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel43: TQRLabel
        Left = 19
        Top = 0
        Width = 57
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          50.270833333333330000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'T-G'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrltca2: TQRLabel
        Left = 77
        Top = 0
        Width = 121
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          203.729166666666700000
          0.000000000000000000
          320.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltca2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlenplus2: TQRLabel
        Left = 200
        Top = 0
        Width = 90
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          529.166666666666700000
          0.000000000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlenplus2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLenmoins2: TQRLabel
        Left = 291
        Top = 0
        Width = 95
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          769.937500000000000000
          0.000000000000000000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLenmoins2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLdr2: TQRLabel
        Left = 388
        Top = 0
        Width = 116
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1026.583333333333000000
          0.000000000000000000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdr2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRmda2: TQRLabel
        Left = 505
        Top = 0
        Width = 116
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1336.145833333333000000
          0.000000000000000000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmda2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRmdm2: TQRLabel
        Left = 622
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1645.708333333333000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmdm2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrannul2: TQRLabel
        Left = 730
        Top = 0
        Width = 94
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1931.458333333333000000
          0.000000000000000000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLtd2: TQRLabel
        Left = 914
        Top = 0
        Width = 112
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2418.291666666667000000
          0.000000000000000000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLtd2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLdrt2: TQRLabel
        Left = 1028
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2719.916666666667000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdrt2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRL472: TQRLabel
        Left = 1135
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          3003.020833333333000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL472'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRL032: TQRLabel
        Left = 1242
        Top = 0
        Width = 107
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          3286.125000000000000000
          0.000000000000000000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL032'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLs2: TQRLabel
        Left = 1350
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          3571.875000000000000000
          0.000000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLs2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLT2: TQRLabel
        Left = 1457
        Top = 0
        Width = 44
        Height = 21
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.562500000000000000
          3854.979166666667000000
          0.000000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLT2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 19
        Top = 21
        Width = 1487
        Height = 2
        Size.Values = (
          5.291666666666667000
          50.270833333333330000
          55.562500000000000000
          3934.354166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 999
        Top = 73
        Width = 356
        Height = 18
        Size.Values = (
          46.302083333333340000
          2642.526041666667000000
          191.822916666666700000
          942.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VISA DU DIRECTEUR REGIONAL DU TRESOR'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 77
        Top = 64
        Width = 260
        Height = 17
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          169.333333333333300000
          687.916666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VISA DU TRESORIER DE WILAYA'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRRe2: TQRLabel
        Left = 825
        Top = 0
        Width = 88
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          56.223958333333330000
          2182.812500000000000000
          0.000000000000000000
          231.510416666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand6: TQRBand
      Left = 4
      Top = 19
      Width = 1579
      Height = 181
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        478.895833333333400000
        4177.770833333334000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel44: TQRLabel
        Left = 14
        Top = 20
        Width = 221
        Height = 19
        Size.Values = (
          50.270833333333330000
          37.041666666666670000
          52.916666666666670000
          584.729166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MINISTERE DES FINANCES.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel45: TQRLabel
        Left = 14
        Top = 46
        Width = 366
        Height = 19
        Size.Values = (
          50.270833333333330000
          37.041666666666670000
          121.708333333333300000
          968.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DIRECTION GENERALE DE LA COMPTABILITE.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel50: TQRLabel
        Left = 14
        Top = 70
        Width = 402
        Height = 19
        Size.Values = (
          50.270833333333330000
          37.041666666666670000
          185.208333333333300000
          1063.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DIRECTION REGIONALE DU TRESOR A GHARDAIA.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel51: TQRLabel
        Left = 601
        Top = 141
        Width = 322
        Height = 19
        Size.Values = (
          50.270833333333330000
          1590.145833333333000000
          373.062500000000000000
          851.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SITUATION DES CREDITS  ARRETEE AU '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object ladate: TQRLabel
        Left = 924
        Top = 142
        Width = 104
        Height = 19
        Size.Values = (
          49.609375000000000000
          2444.088541666667000000
          377.031250000000000000
          274.505208333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'LADATE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel53: TQRLabel
        Left = 1540
        Top = 302
        Width = 15
        Height = 19
        Size.Values = (
          50.270833333333330000
          4074.583333333334000000
          799.041666666666800000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Am'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Mistral'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 1540
        Top = 302
        Width = 15
        Height = 19
        Size.Values = (
          50.270833333333330000
          4074.583333333334000000
          799.041666666666800000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Am'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Mistral'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 1000
        Top = 302
        Width = 15
        Height = 19
        Size.Values = (
          50.270833333333330000
          2645.833333333333000000
          799.041666666666800000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Am'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Mistral'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
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
        Name = 'r'
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
      
        'select sum (montant) from lignes where chapitre=:x and article=:' +
        'y and'
      '(structure_situation=:r) and gestion=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 72
    Top = 379
  end
  object q_reimp: TSQLQuery
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
        Name = 's'
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
      
        'select sum (montant) from mandat_reimpute where chapitre=:x and ' +
        'article=:y and'
      '(structure_situation=:s) and gestion=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 136
    Top = 379
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
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and article=:y and gestion=:z and plus_moins='#39 +
        'n'#39)
    SQLConnection = f_dm.connect_db_gf
    Left = 208
    Top = 379
  end
  object q_enplus: TSQLQuery
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
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and article=:y and plus_moins='#39'p'#39' and gestion=' +
        ':z')
    SQLConnection = f_dm.connect_db_gf
    Left = 296
    Top = 379
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
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and article=:y and plus_moins='#39'm'#39' and gestion=' +
        ':z')
    SQLConnection = f_dm.connect_db_gf
    Left = 352
    Top = 379
  end
  object q_mda: TSQLQuery
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
      'where gestion=:x and chapitre=:y and article=:z and dates<:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 432
    Top = 379
  end
  object q_mdms: TSQLQuery
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
      end
      item
        DataType = ftDate
        Name = 'v'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from lignes'
      
        'where gestion=:x and chapitre=:y and article=:z and (dates<=:w a' +
        'nd dates>=:v)')
    SQLConnection = f_dm.connect_db_gf
    Left = 512
    Top = 379
  end
  object q_reimp_ant: TSQLQuery
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
      'select sum (montant) from mandat_reimpute'
      'where gestion=:x and chapitre=:y and article=:z and dates<:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 632
    Top = 379
  end
  object q_reimp_du_mois: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end
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
        DataType = ftDate
        Name = 'w'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'v'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from mandat_reimpute where gestion=:z and c' +
        'hapitre=:x and article=:y  and (dates<=:w  and dates>=:v)')
    SQLConnection = f_dm.connect_db_gf
    Left = 720
    Top = 379
  end
  object q1: TSQLQuery
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
      end>
    SQL.Strings = (
      
        'select sum (montant) from mandat_reimpute where chapitre=:x and ' +
        'article=:y and gestion=:z '
      '')
    SQLConnection = f_dm.connect_db_gf
    Left = 624
    Top = 443
  end
  object q_annul_ant: TSQLQuery
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
        DataType = ftUnknown
        Name = 'w'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from depenses_annulees'
      'where gestion=:x and chapitre=:y and article=:z '
      '            and dates<:w ')
    SQLConnection = f_dm.connect_db_gf
    Left = 552
    Top = 443
  end
  object q_annul_mois: TSQLQuery
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
        DataType = ftUnknown
        Name = 'w'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'v'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from depenses_annulees'
      'where gestion=:x and chapitre=:y and article=:z '
      '            and (dates<=:w and dates>=:v)'
      '')
    SQLConnection = f_dm.connect_db_gf
    Left = 448
    Top = 459
  end
  object q_annul_mois_ant_structure: TSQLQuery
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
        Name = 's'
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
      
        'select sum (montant) from depenses_annulees where chapitre=:x an' +
        'd article=:y and'
      '(structure_situation=:s) and gestion=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 283
    Top = 464
  end
end
