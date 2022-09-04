object f_situation_a3_1: Tf_situation_a3_1
  Left = -46
  Top = 205
  Caption = 'f_situation_a3_1'
  ClientHeight = 483
  ClientWidth = 1280
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
    Left = 35
    Top = 32
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
      BeforePrint = befor_print_band2
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        158.750000000000000000
        4177.770833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel5: TQRLabel
        Left = 2
        Top = 0
        Width = 53
        Height = 59
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          156.104166666666700000
          5.291666666666667000
          0.000000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '             CHAP'
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
      object QRLabel7: TQRLabel
        Left = 55
        Top = 0
        Width = 119
        Height = 29
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          76.729166666666680000
          145.520833333333300000
          0.000000000000000000
          314.854166666666700000)
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
        Left = 55
        Top = 30
        Width = 119
        Height = 29
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          76.729166666666680000
          145.520833333333300000
          79.375000000000000000
          314.854166666666700000)
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
        Left = 175
        Top = 0
        Width = 179
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          47.625000000000000000
          463.020833333333300000
          0.000000000000000000
          473.604166666666700000)
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
        Left = 175
        Top = 18
        Width = 179
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          463.020833333333300000
          47.625000000000000000
          473.604166666666700000)
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
        Left = 175
        Top = 37
        Width = 92
        Height = 22
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          463.020833333333300000
          97.895833333333320000
          243.416666666666700000)
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
        Left = 268
        Top = 37
        Width = 86
        Height = 22
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          709.083333333333200000
          97.895833333333320000
          227.541666666666700000)
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
        Left = 355
        Top = 0
        Width = 116
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          47.625000000000000000
          939.270833333333200000
          0.000000000000000000
          306.916666666666700000)
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
        Left = 355
        Top = 18
        Width = 116
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          939.270833333333200000
          47.625000000000000000
          306.916666666666700000)
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
        Left = 471
        Top = 0
        Width = 111
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1246.187500000000000000
          0.000000000000000000
          293.687500000000000000)
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
        Left = 706
        Top = 0
        Width = 87
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          47.625000000000000000
          1867.958333333333000000
          0.000000000000000000
          230.187500000000000000)
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
        Left = 883
        Top = 0
        Width = 115
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          2336.270833333333000000
          0.000000000000000000
          304.270833333333300000)
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
        Left = 583
        Top = 0
        Width = 122
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1542.520833333333000000
          0.000000000000000000
          322.791666666666700000)
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
        Left = 471
        Top = 18
        Width = 111
        Height = 41
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          108.479166666666700000
          1246.187500000000000000
          47.625000000000000000
          293.687500000000000000)
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
        Left = 583
        Top = 17
        Width = 122
        Height = 42
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          111.125000000000000000
          1542.520833333333000000
          44.979166666666670000
          322.791666666666700000)
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
        Left = 706
        Top = 19
        Width = 87
        Height = 40
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          105.833333333333300000
          1867.958333333333000000
          50.270833333333330000
          230.187500000000000000)
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
        Left = 883
        Top = 17
        Width = 115
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          2336.270833333333000000
          44.979166666666670000
          304.270833333333300000)
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
      object QRLabel15: TQRLabel
        Left = 999
        Top = 38
        Width = 176
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2643.187500000000000000
          100.541666666666700000
          465.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ''
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 1175
        Top = 20
        Width = 132
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          3108.854166666667000000
          52.916666666666670000
          349.250000000000000000)
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
        Left = 1175
        Top = 38
        Width = 132
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          3108.854166666667000000
          100.541666666666700000
          349.250000000000000000)
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
        Left = 999
        Top = 0
        Width = 176
        Height = 37
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          97.895833333333320000
          2643.187500000000000000
          0.000000000000000000
          465.666666666666700000)
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
        Left = 1175
        Top = 0
        Width = 132
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          3108.854166666667000000
          0.000000000000000000
          349.250000000000000000)
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
        Left = 1308
        Top = 1
        Width = 59
        Height = 58
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          153.458333333333300000
          3460.750000000000000000
          2.645833333333333000
          156.104166666666700000)
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
        Left = 883
        Top = 38
        Width = 115
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2336.270833333333000000
          100.541666666666700000
          304.270833333333300000)
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
        Left = 355
        Top = 37
        Width = 116
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          939.270833333333200000
          97.895833333333320000
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
        Left = 794
        Top = 0
        Width = 88
        Height = 23
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          2100.791666666667000000
          0.000000000000000000
          232.833333333333300000)
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
        Left = 794
        Top = 25
        Width = 88
        Height = 34
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          89.958333333333320000
          2100.791666666667000000
          66.145833333333320000
          232.833333333333300000)
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
        66.145833333333330000
        4177.770833333333000000)
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
      BeforePrint = befor_print_bande3
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        4177.770833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object qrltca1: TQRLabel
        Left = 55
        Top = 1
        Width = 119
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          145.520833333333300000
          2.645833333333333000
          314.854166666666700000)
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
        Left = 175
        Top = 1
        Width = 92
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          463.020833333333300000
          2.645833333333333000
          243.416666666666700000)
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
        Left = 268
        Top = 1
        Width = 88
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          709.083333333333200000
          2.645833333333333000
          232.833333333333300000)
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
        Left = 355
        Top = 1
        Width = 116
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          939.270833333333300000
          2.645833333333333000
          306.916666666666700000)
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
        Left = 472
        Top = 1
        Width = 110
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          1248.833333333333000000
          2.645833333333333000
          291.041666666666700000)
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
        Left = 583
        Top = 2
        Width = 122
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1542.520833333333000000
          5.291666666666667000
          322.791666666666700000)
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
        Left = 706
        Top = 1
        Width = 87
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          1867.958333333333000000
          2.645833333333333000
          230.187500000000000000)
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
        Left = 883
        Top = 0
        Width = 115
        Height = 23
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          2336.270833333333000000
          0.000000000000000000
          304.270833333333300000)
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
        Left = 999
        Top = 0
        Width = 176
        Height = 23
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          2643.187500000000000000
          0.000000000000000000
          465.666666666666700000)
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
      object QRLs1: TQRLabel
        Left = 1176
        Top = 1
        Width = 132
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          3111.500000000000000000
          2.645833333333333000
          349.250000000000000000)
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
        Left = 1308
        Top = 1
        Width = 59
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.208333333333320000
          3460.750000000000000000
          2.645833333333333000
          156.104166666666700000)
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
        Left = 795
        Top = 1
        Width = 87
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          2103.437500000000000000
          2.645833333333333000
          230.187500000000000000)
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
        Left = 2
        Top = 1
        Width = 53
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          5.291666666666667000
          2.645833333333333000
          140.229166666666700000)
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
        58.208333333333330000
        4177.770833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 35
        Top = 0
        Width = 23
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          92.604166666666680000
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
        Left = 2
        Top = 0
        Width = 32
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          5.291666666666667000
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
        Left = 55
        Top = 0
        Width = 119
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          145.520833333333300000
          0.000000000000000000
          314.854166666666700000)
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
        Left = 175
        Top = 0
        Width = 92
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          463.020833333333300000
          0.000000000000000000
          243.416666666666700000)
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
        Left = 268
        Top = 0
        Width = 86
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          709.083333333333300000
          0.000000000000000000
          227.541666666666700000)
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
        Left = 355
        Top = 0
        Width = 116
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          939.270833333333300000
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
        Left = 471
        Top = 0
        Width = 111
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          1246.187500000000000000
          0.000000000000000000
          293.687500000000000000)
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
        Left = 583
        Top = 0
        Width = 122
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          1542.520833333333000000
          0.000000000000000000
          322.791666666666700000)
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
        Left = 706
        Top = 0
        Width = 87
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          1867.958333333333000000
          0.000000000000000000
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
        FontSize = 8
      end
      object qrltd: TQRLabel
        Left = 883
        Top = 0
        Width = 115
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2336.270833333333000000
          0.000000000000000000
          304.270833333333300000)
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
        Left = 999
        Top = 0
        Width = 176
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2643.187500000000000000
          0.000000000000000000
          465.666666666666700000)
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
      object QRLS: TQRLabel
        Left = 1175
        Top = 0
        Width = 132
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          3108.854166666667000000
          0.000000000000000000
          349.250000000000000000)
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
        Left = 1308
        Top = 0
        Width = 59
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.562500000000000000
          3460.750000000000000000
          0.000000000000000000
          156.104166666666700000)
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
        Left = 795
        Top = 0
        Width = 86
        Height = 22
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333330000
          2103.437500000000000000
          0.000000000000000000
          227.541666666666700000)
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
      BeforePrint = befor_print_band5
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        870.479166666666700000
        4177.770833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel43: TQRLabel
        Left = 2
        Top = 1
        Width = 53
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          5.291666666666667000
          2.645833333333333000
          140.229166666666700000)
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
        Left = 55
        Top = 2
        Width = 119
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          145.520833333333300000
          5.291666666666667000
          314.854166666666700000)
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
        Left = 175
        Top = 2
        Width = 92
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          463.020833333333300000
          5.291666666666667000
          243.416666666666700000)
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
        Left = 268
        Top = 1
        Width = 88
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          709.083333333333200000
          2.645833333333333000
          232.833333333333300000)
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
        Left = 356
        Top = 1
        Width = 115
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          941.916666666666800000
          2.645833333333333000
          304.270833333333300000)
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
        Left = 472
        Top = 1
        Width = 110
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1248.833333333333000000
          2.645833333333333000
          291.041666666666700000)
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
        Left = 583
        Top = 1
        Width = 122
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1542.520833333333000000
          2.645833333333333000
          322.791666666666700000)
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
        Left = 706
        Top = 1
        Width = 87
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1867.958333333333000000
          2.645833333333333000
          230.187500000000000000)
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
        Left = 883
        Top = 1
        Width = 115
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2336.270833333333000000
          2.645833333333333000
          304.270833333333300000)
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
        Left = 999
        Top = 0
        Width = 176
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          2643.187500000000000000
          0.000000000000000000
          465.666666666666700000)
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
      object QRLs2: TQRLabel
        Left = 1175
        Top = 0
        Width = 132
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333320000
          3108.854166666667000000
          0.000000000000000000
          349.250000000000000000)
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
        Left = 1308
        Top = 0
        Width = 59
        Height = 22
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.208333333333320000
          3460.750000000000000000
          0.000000000000000000
          156.104166666666700000)
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
        Left = 2
        Top = 22
        Width = 1364
        Height = 4
        Size.Values = (
          9.921875000000000000
          6.614583333333333000
          59.531250000000000000
          3608.255208333333000000)
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
        Left = 795
        Top = 1
        Width = 87
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          2103.437500000000000000
          2.645833333333333000
          230.187500000000000000)
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
        478.895833333333300000
        4177.770833333333000000)
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
          584.729166666666700000)
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
          851.958333333333300000)
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
        Top = 141
        Width = 104
        Height = 19
        Size.Values = (
          50.270833333333330000
          2444.750000000000000000
          373.062500000000000000
          275.166666666666700000)
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
          4074.583333333333000000
          799.041666666666700000
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
          4074.583333333333000000
          799.041666666666700000
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
          799.041666666666700000
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
    Left = 288
    Top = 425
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
    Top = 401
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
    Top = 401
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
    Top = 401
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
end
