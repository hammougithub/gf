object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'F_situation_1'
  ClientHeight = 512
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 10
    Top = 10
    Width = 1632
    Height = 1056
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
    Page.Orientation = poPortrait
    Page.PaperSize = Ledger
    Page.Continuous = False
    Page.Values = (
      99.060000000000000000
      2794.000000000000000000
      50.800000000000000000
      4318.000000000000000000
      50.800000000000000000
      762.000000000000000000
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
      Left = 19
      Top = 19
      Width = 1325
      Height = 96
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        254.000000000000000000
        3505.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 7
        Top = 20
        Width = 282
        Height = 19
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          52.916666666666670000
          746.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel2: TQRLabel
        Left = 7
        Top = 43
        Width = 430
        Height = 19
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          113.770833333333300000
          1137.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel3: TQRLabel
        Left = 7
        Top = 67
        Width = 448
        Height = 19
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          177.270833333333300000
          1185.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel4: TQRLabel
        Left = 547
        Top = 24
        Width = 322
        Height = 19
        Size.Values = (
          50.270833333333330000
          1447.270833333333000000
          63.500000000000000000
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
      object LADATE: TQRLabel
        Left = 873
        Top = 24
        Width = 104
        Height = 19
        Size.Values = (
          49.388888888888890000
          2310.694444444444000000
          63.500000000000000000
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
      object QRLabel44: TQRLabel
        Left = 1278
        Top = 83
        Width = 17
        Height = 13
        Size.Values = (
          35.277777777777780000
          3382.256944444444000000
          220.486111111111100000
          44.097222222222220000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Am'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Mistral'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 115
      Width = 1325
      Height = 57
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        150.812500000000000000
        3505.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel5: TQRLabel
        Left = 2
        Top = 0
        Width = 33
        Height = 54
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          143.315972222222200000
          4.409722222222222000
          0.000000000000000000
          88.194444444444450000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                  CHAP'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 35
        Top = 0
        Width = 23
        Height = 54
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          143.315972222222200000
          92.604166666666680000
          0.000000000000000000
          61.736111111111120000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '            ART'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 58
        Top = 0
        Width = 80
        Height = 29
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          76.729166666666700000
          153.458333333333000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '            CREDITS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 58
        Top = 29
        Width = 81
        Height = 27
        Frame.DrawLeft = True
        Size.Values = (
          71.437500000000000000
          153.458333333333000000
          76.729166666666700000
          214.312500000000000000)
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
        Left = 139
        Top = 0
        Width = 138
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222220000
          368.211805555555600000
          0.000000000000000000
          366.006944444444400000)
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
        Left = 139
        Top = 17
        Width = 138
        Height = 18
        Frame.DrawLeft = True
        Size.Values = (
          48.506944444444440000
          368.211805555555600000
          44.097222222222220000
          366.006944444444400000)
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
        Left = 139
        Top = 35
        Width = 75
        Height = 21
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          367.770833333333000000
          92.604166666666700000
          198.437500000000000000)
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
        Left = 214
        Top = 35
        Width = 63
        Height = 21
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          566.649305555555600000
          92.604166666666670000
          167.569444444444400000)
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
        Left = 278
        Top = 0
        Width = 78
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          48.506944444444440000
          736.423611111111100000
          0.000000000000000000
          207.256944444444400000)
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
        Left = 278
        Top = 18
        Width = 78
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          50.711805555555560000
          736.423611111111100000
          48.506944444444440000
          207.256944444444400000)
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
        Left = 356
        Top = 0
        Width = 80
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222220000
          941.475694444444400000
          0.000000000000000000
          211.666666666666700000)
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
        Left = 508
        Top = 0
        Width = 68
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222230000
          1342.760416666667000000
          0.000000000000000000
          178.593750000000000000)
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
        Left = 646
        Top = 0
        Width = 80
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222230000
          1708.767361111111000000
          0.000000000000000000
          211.666666666666700000)
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
        Left = 436
        Top = 0
        Width = 72
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          0.000000000000000000
          190.500000000000000000)
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
        Left = 356
        Top = 18
        Width = 80
        Height = 38
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          101.423611111111100000
          941.475694444444400000
          48.506944444444440000
          211.666666666666700000)
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
        Left = 436
        Top = 17
        Width = 72
        Height = 39
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          103.187500000000000000
          1153.583333333333000000
          44.979166666666670000
          190.500000000000000000)
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
        Left = 508
        Top = 19
        Width = 68
        Height = 37
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          97.013888888888880000
          1342.760416666667000000
          50.711805555555560000
          178.593750000000000000)
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
        Left = 646
        Top = 18
        Width = 80
        Height = 18
        Frame.DrawLeft = True
        Size.Values = (
          48.506944444444440000
          1708.767361111111000000
          48.506944444444440000
          211.666666666666700000)
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
        Left = 726
        Top = 37
        Width = 75
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.711805555555560000
          1920.434027777778000000
          97.013888888888880000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'SIEGE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 1102
        Top = 37
        Width = 73
        Height = 18
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          48.506944444444440000
          2914.826388888889000000
          97.013888888888900000
          194.027777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ILLIIZI'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 726
        Top = 20
        Width = 75
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          48.506944444444440000
          1920.434027777778000000
          52.916666666666660000
          198.437500000000000000)
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
      object QRLabel32: TQRLabel
        Left = 1101
        Top = 20
        Width = 73
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          48.506944444444440000
          2912.621527777778000000
          52.916666666666660000
          194.027777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TW - TC'
        Color = clWhite
        OnPrint = QRLabel32Print
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 1175
        Top = 20
        Width = 80
        Height = 19
        Frame.DrawLeft = True
        Size.Values = (
          49.388888888888890000
          3107.972222222222000000
          52.916666666666670000
          211.666666666666700000)
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
        Top = 37
        Width = 80
        Height = 18
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          48.506944444444440000
          3108.854166666667000000
          97.013888888888900000
          211.666666666666700000)
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
        Left = 726
        Top = 0
        Width = 448
        Height = 19
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          50.711805555555560000
          1920.434027777778000000
          0.000000000000000000
          1186.215277777778000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'REPARTITION  DES DEPENSES PAR STRUCTURE'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 1254
        Top = 18
        Width = 42
        Height = 21
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.121527777777790000
          3318.315972222222000000
          48.506944444444440000
          110.243055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'B/A'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 1174
        Top = 0
        Width = 80
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666660000
          3106.649305555556000000
          0.000000000000000000
          211.666666666666700000)
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
        Left = 1254
        Top = 0
        Width = 42
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          48.506944444444440000
          3318.315972222222000000
          0.000000000000000000
          110.243055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '%'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 1254
        Top = 39
        Width = 42
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.097222222222230000
          3318.315972222222000000
          103.628472222222200000
          110.243055555555600000)
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
        FontSize = 8
      end
      object QRLabel40: TQRLabel
        Left = 646
        Top = 37
        Width = 80
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.711805555555560000
          1708.767361111111000000
          97.013888888888880000
          211.666666666666700000)
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
        Left = 278
        Top = 36
        Width = 78
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          736.423611111111100000
          94.809027777777780000
          207.256944444444400000)
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
        Left = 575
        Top = 0
        Width = 71
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222230000
          1521.354166666667000000
          0.000000000000000000
          187.413194444444400000)
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
        Left = 575
        Top = 19
        Width = 71
        Height = 37
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          97.013888888888880000
          1521.354166666667000000
          50.711805555555560000
          187.413194444444400000)
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
      Left = 19
      Top = 172
      Width = 1325
      Height = 17
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        3505.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'chapitre'
      FooterBand = QRBand3
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 211
      Width = 1325
      Height = 22
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        3505.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel42: TQRLabel
        Left = 2
        Top = 0
        Width = 56
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          5.291666666666670000
          0.000000000000000000
          148.166666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TOTAL '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltca1: TQRLabel
        Left = 58
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          153.458333333333000000
          0.000000000000000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltca1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLenplus1: TQRLabel
        Left = 139
        Top = 0
        Width = 75
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          367.770833333333000000
          0.000000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLenplus1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLenmoins1: TQRLabel
        Left = 214
        Top = 0
        Width = 63
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          566.649305555555600000
          0.000000000000000000
          167.569444444444400000)
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
        Left = 278
        Top = 0
        Width = 78
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          736.423611111111100000
          0.000000000000000000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdr1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRmda1: TQRLabel
        Left = 356
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          941.475694444444400000
          0.000000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmda1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRmdm1: TQRLabel
        Left = 436
        Top = 0
        Width = 72
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1153.583333333333000000
          0.000000000000000000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmdm1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrannul1: TQRLabel
        Left = 508
        Top = 0
        Width = 68
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1342.760416666667000000
          0.000000000000000000
          178.593750000000000000)
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
      object QRLtd1: TQRLabel
        Left = 646
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1708.767361111111000000
          0.000000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLtd1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLdrt1: TQRLabel
        Left = 726
        Top = 0
        Width = 75
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1920.434027777778000000
          0.000000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdrt1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL111: TQRLabel
        Left = 1026
        Top = 0
        Width = 75
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          2714.184027777778000000
          0.000000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL111'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL331: TQRLabel
        Left = 1102
        Top = 0
        Width = 73
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          2914.826388888889000000
          0.000000000000000000
          194.027777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL331'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLs1: TQRLabel
        Left = 1174
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          3106.649305555556000000
          0.000000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLs1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLt1: TQRLabel
        Left = 1254
        Top = 0
        Width = 42
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.121527777777790000
          3318.315972222222000000
          0.000000000000000000
          110.243055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLt1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRRE1: TQRLabel
        Left = 575
        Top = 0
        Width = 71
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1521.354166666667000000
          0.000000000000000000
          187.413194444444400000)
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
    end
    object QRBand4: TQRBand
      Left = 19
      Top = 189
      Width = 1325
      Height = 22
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        3505.729166666667000000)
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
        Left = 58
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          153.458333333333000000
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
        FontSize = 8
      end
      object qrlenplus: TQRLabel
        Left = 139
        Top = 0
        Width = 75
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          367.770833333333000000
          0.000000000000000000
          198.437500000000000000)
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
        Left = 214
        Top = 0
        Width = 63
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          566.649305555555600000
          0.000000000000000000
          167.569444444444400000)
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
        Left = 278
        Top = 0
        Width = 78
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          736.423611111111100000
          0.000000000000000000
          207.256944444444400000)
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
        Left = 355
        Top = 0
        Width = 81
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          939.270833333333300000
          0.000000000000000000
          213.871527777777800000)
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
        Left = 436
        Top = 0
        Width = 72
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.562500000000000000
          1153.583333333333000000
          0.000000000000000000
          190.500000000000000000)
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
        Left = 508
        Top = 0
        Width = 68
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1342.760416666667000000
          0.000000000000000000
          178.593750000000000000)
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
        Left = 646
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1708.767361111111000000
          0.000000000000000000
          211.666666666666700000)
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
        Left = 726
        Top = 0
        Width = 75
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1920.434027777778000000
          0.000000000000000000
          198.437500000000000000)
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
      object QRL11: TQRLabel
        Left = 1026
        Top = 0
        Width = 75
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          2714.184027777778000000
          0.000000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL11'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL33: TQRLabel
        Left = 1101
        Top = 0
        Width = 73
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          56.444444444444440000
          2913.944444444444000000
          0.000000000000000000
          194.027777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL33'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLS: TQRLabel
        Left = 1174
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          3106.649305555556000000
          0.000000000000000000
          211.666666666666700000)
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
        Left = 1254
        Top = 0
        Width = 42
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.121527777777790000
          3318.315972222222000000
          0.000000000000000000
          110.243055555555600000)
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
        Left = 575
        Top = 0
        Width = 71
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777790000
          1521.354166666667000000
          0.000000000000000000
          187.413194444444400000)
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
      Left = 19
      Top = 233
      Width = 1325
      Height = 96
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        254.000000000000000000
        3505.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel43: TQRLabel
        Left = 2
        Top = 0
        Width = 56
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          56.223958333333330000
          6.614583333333332000
          0.000000000000000000
          148.828125000000000000)
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
        Left = 58
        Top = 0
        Width = 80
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          56.223958333333330000
          152.135416666666700000
          0.000000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltca2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlenplus2: TQRLabel
        Left = 139
        Top = 0
        Width = 75
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          56.223958333333330000
          367.109375000000000000
          0.000000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlenplus2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLenmoins2: TQRLabel
        Left = 214
        Top = 0
        Width = 63
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          566.649305555555600000
          0.000000000000000000
          167.569444444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLenmoins2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLdr2: TQRLabel
        Left = 278
        Top = 0
        Width = 78
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          736.423611111111100000
          0.000000000000000000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdr2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRmda2: TQRLabel
        Left = 357
        Top = 0
        Width = 79
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          943.680555555555600000
          0.000000000000000000
          209.461805555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmda2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRmdm2: TQRLabel
        Left = 435
        Top = 0
        Width = 73
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          55.121527777777780000
          1150.937500000000000000
          0.000000000000000000
          194.027777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRmdm2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrannul2: TQRLabel
        Left = 508
        Top = 0
        Width = 68
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          57.326388888888900000
          1342.760416666667000000
          0.000000000000000000
          178.593750000000000000)
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
      object QRLtd2: TQRLabel
        Left = 646
        Top = 0
        Width = 80
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          57.326388888888900000
          1708.767361111111000000
          0.000000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLtd2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLdrt2: TQRLabel
        Left = 726
        Top = 0
        Width = 75
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          57.326388888888900000
          1920.434027777778000000
          0.000000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLdrt2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL112: TQRLabel
        Left = 1026
        Top = 0
        Width = 75
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          57.326388888888900000
          2714.184027777778000000
          0.000000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL112'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL332: TQRLabel
        Left = 1101
        Top = 0
        Width = 73
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          57.326388888888900000
          2912.621527777778000000
          0.000000000000000000
          194.027777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL332'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLs2: TQRLabel
        Left = 1174
        Top = 0
        Width = 80
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          57.326388888888900000
          3106.649305555556000000
          0.000000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLs2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLT2: TQRLabel
        Left = 1254
        Top = 0
        Width = 42
        Height = 22
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          57.326388888888900000
          3318.315972222222000000
          0.000000000000000000
          110.243055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLT2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 21
        Width = 1294
        Height = 1
        Size.Values = (
          3.307291666666667000
          3.307291666666667000
          56.223958333333330000
          3423.046875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 807
        Top = 40
        Width = 370
        Height = 22
        Size.Values = (
          57.326388888888890000
          2134.305555555556000000
          105.833333333333300000
          978.958333333333200000)
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
        Left = 40
        Top = 40
        Width = 193
        Height = 22
        Size.Values = (
          57.326388888888890000
          105.833333333333300000
          105.833333333333300000
          511.527777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VISA DU TRESORIER'
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
        Left = 575
        Top = 0
        Width = 71
        Height = 22
        Frame.DrawLeft = True
        Size.Values = (
          57.326388888888890000
          1521.354166666667000000
          0.000000000000000000
          187.413194444444400000)
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
    end
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
    Left = 496
    Top = 432
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
    Left = 648
    Top = 527
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
    Left = 784
    Top = 527
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
    Left = 864
    Top = 527
  end
  object q_annul: TSQLQuery
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
      'select sum (montant) from depenses_annulees'
      'where gestion=:x and chapitre=:y and article=:z ')
    SQLConnection = f_dm.connect_db_gf
    Left = 856
    Top = 376
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
    Left = 984
    Top = 408
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
    Left = 1104
    Top = 472
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
    Left = 1024
    Top = 440
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
    Left = 896
    Top = 464
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
    Left = 808
    Top = 464
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
    Left = 736
    Top = 456
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
    Left = 664
    Top = 448
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
    Left = 576
    Top = 432
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
      
        'select sum (montant) from lignes where chapitre=:x and article=:' +
        'y and'
      '(structure_situation=:s) and gestion=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 440
    Top = 464
  end
end
