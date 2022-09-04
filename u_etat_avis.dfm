object F_etat_avis: TF_etat_avis
  Left = -2
  Top = 107
  Caption = 'AVIS DE VIREMENT'
  ClientHeight = 570
  ClientWidth = 966
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
    Tag = 1
    Left = 56
    Top = 16
    Width = 1079
    Height = 576
    BeforePrint = prinetr_setup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
    Page.PaperSize = Default
    Page.Continuous = False
    Page.Values = (
      0.000000000000000000
      1524.000000000000000000
      0.000000000000000000
      2854.960000000000000000
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
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 0
      Top = 0
      Width = 1079
      Height = 317
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        838.729166666666700000
        2854.854166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRDBText2: TQRDBText
        Left = 513
        Top = 123
        Width = 364
        Height = 21
        Size.Values = (
          55.562500000000000000
          1357.312500000000000000
          325.437500000000000000
          963.083333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataField = 'Nom'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 906
        Top = 100
        Width = 44
        Height = 21
        Size.Values = (
          55.562500000000000000
          2397.125000000000000000
          264.583333333333000000
          116.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Mandat'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 762
        Top = 100
        Width = 52
        Height = 21
        Size.Values = (
          55.562500000000000000
          2016.125000000000000000
          264.583333333333000000
          137.583333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Chapitre'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 746
        Top = 100
        Width = 23
        Height = 21
        Size.Values = (
          55.562500000000000000
          1973.791666666670000000
          264.583333333333000000
          60.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Article'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText5: TQRDBText
        Left = 535
        Top = 101
        Width = 117
        Height = 21
        Size.Values = (
          55.562500000000000000
          1415.520833333330000000
          267.229166666667000000
          309.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Montant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Mask = '###,###,###.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText6: TQRDBText
        Left = 720
        Top = 160
        Width = 157
        Height = 21
        Size.Values = (
          55.562500000000000000
          1905.000000000000000000
          423.333333333333000000
          415.395833333333000000)
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
      object QRDBText7: TQRDBText
        Left = 515
        Top = 160
        Width = 229
        Height = 21
        Size.Values = (
          55.562500000000000000
          1362.604166666670000000
          423.333333333333000000
          605.895833333333000000)
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
      object QRDBText8: TQRDBText
        Left = 57
        Top = 101
        Width = 118
        Height = 21
        Size.Values = (
          55.562500000000000000
          150.812500000000000000
          267.229166666667000000
          312.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Montant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Mask = '###,###,###.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText9: TQRDBText
        Left = 39
        Top = 138
        Width = 394
        Height = 21
        Size.Values = (
          55.562500000000000000
          103.187500000000000000
          365.125000000000000000
          1042.458333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Nom'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText10: TQRDBText
        Left = 97
        Top = 165
        Width = 320
        Height = 21
        Size.Values = (
          55.562500000000000000
          256.645833333333000000
          436.562500000000000000
          846.666666666667000000)
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
      object QRDBText11: TQRDBText
        Left = 25
        Top = 197
        Width = 325
        Height = 21
        Size.Values = (
          55.562500000000000000
          66.145833333333300000
          521.229166666667000000
          859.895833333333000000)
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
      object QRDBText12: TQRDBText
        Left = 235
        Top = 266
        Width = 192
        Height = 21
        Size.Values = (
          55.562500000000000000
          621.770833333333000000
          703.791666666667000000
          508.000000000000000000)
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
      object QRDBText13: TQRDBText
        Left = -19
        Top = 225
        Width = 400
        Height = 21
        Size.Values = (
          55.562500000000000000
          -50.270833333333300000
          595.312500000000000000
          1058.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Nom'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 214
    Top = 64
  end
end
