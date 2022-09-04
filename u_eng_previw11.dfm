object f_eng_preview: Tf_eng_preview
  Left = 141
  Top = 55
  Caption = 'f_eng_preview'
  ClientHeight = 727
  ClientWidth = 929
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
    Left = 0
    Top = 0
    Width = 1142
    Height = 739
    BeforePrint = donnees
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
      50.000000000000000000
      2794.000000000000000000
      50.000000000000000000
      4318.000000000000000000
      50.000000000000000000
      800.000000000000000000
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
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 70
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 13
      Top = 13
      Width = 917
      Height = 662
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2502.202380952381000000
        3466.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel4: TQRLabel
        Left = 593
        Top = 79
        Width = 176
        Height = 19
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          71.815476190476190000
          2241.398809523810000000
          298.601190476190500000
          665.238095238095200000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = #1578#1600#1600#1601#1600#1600#1600#1575#1589#1600#1610#1600#1600#1600#1600#1600#1600#1604' '#1575#1604#1575#1604#1600#1578#1600#1600#1586#1575#1605#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel5: TQRLabel
        Left = 515
        Top = 132
        Width = 368
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.208333333333300000
          1947.333333333330000000
          500.062500000000000000
          1391.708333333330000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1591#1600#1576#1610#1600#1600#1600#1600#1593#1600#1600#1600#1600#1577' '#1575#1604#1575#1604#1600#1578#1600#1586#1575#1605#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 451
        Top = 132
        Width = 64
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          58.208333333333300000
          1703.916666666670000000
          500.062500000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1605#1600#1576#1600#1604#1600#1600#1594
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object d1: TQRLabel
        Left = 515
        Top = 148
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          560.916666666667000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'd1'
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
      object m1: TQRLabel
        Left = 451
        Top = 148
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          560.916666666667000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                        '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M6: TQRLabel
        Left = 451
        Top = 218
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          825.500000000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                              '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M3: TQRLabel
        Left = 451
        Top = 176
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          666.750000000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                     '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M7: TQRLabel
        Left = 451
        Top = 232
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          875.770833333333000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                              '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M2: TQRLabel
        Left = 451
        Top = 162
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          613.833333333333000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                           '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M9: TQRLabel
        Left = 451
        Top = 260
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          981.604166666667000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                                  '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M4: TQRLabel
        Left = 451
        Top = 190
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          719.666666666667000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                        '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M10: TQRLabel
        Left = 451
        Top = 274
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1034.520833333330000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                                '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M12: TQRLabel
        Left = 451
        Top = 302
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1140.354166666670000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                              '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l1: TQRLabel
        Left = 863
        Top = 148
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          560.916666666667000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object D3: TQRLabel
        Left = 515
        Top = 176
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          666.750000000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                   '
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
      object D4: TQRLabel
        Left = 515
        Top = 190
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          717.020833333333000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                '
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
      object l15: TQRLabel
        Left = 863
        Top = 343
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1296.458333333330000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M13: TQRLabel
        Left = 451
        Top = 315
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1190.625000000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                                '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object D2: TQRLabel
        Left = 515
        Top = 162
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          613.833333333333000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                '
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
      object M8: TQRLabel
        Left = 451
        Top = 246
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          928.687500000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                            '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M11: TQRLabel
        Left = 451
        Top = 288
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1087.437500000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                              '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M5: TQRLabel
        Left = 451
        Top = 204
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          772.583333333333000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                       '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object M14: TQRLabel
        Left = 451
        Top = 329
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1243.541666666670000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l13: TQRLabel
        Left = 863
        Top = 315
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1190.625000000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l3: TQRLabel
        Left = 863
        Top = 176
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          666.750000000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l4: TQRLabel
        Left = 863
        Top = 190
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          717.020833333333000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l5: TQRLabel
        Left = 863
        Top = 204
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          769.937500000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '      '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l6: TQRLabel
        Left = 863
        Top = 218
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          822.854166666667000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '           '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l7: TQRLabel
        Left = 863
        Top = 232
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          875.770833333333000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '              '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l8: TQRLabel
        Left = 863
        Top = 246
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          928.687500000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '            '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l9: TQRLabel
        Left = 863
        Top = 260
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          981.604166666667000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l10: TQRLabel
        Left = 863
        Top = 274
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1034.520833333330000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l11: TQRLabel
        Left = 863
        Top = 288
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1087.437500000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '              '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l12: TQRLabel
        Left = 863
        Top = 301
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1137.708333333330000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                    '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l2: TQRLabel
        Left = 863
        Top = 162
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          613.833333333333000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l14: TQRLabel
        Left = 863
        Top = 329
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1243.541666666670000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '             '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object D5: TQRLabel
        Left = 515
        Top = 204
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          769.937500000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '            '
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
      object D6: TQRLabel
        Left = 515
        Top = 218
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          822.854166666667000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '             '
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
      object D7: TQRLabel
        Left = 515
        Top = 232
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          875.770833333333000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '            '
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
      object D8: TQRLabel
        Left = 515
        Top = 246
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          928.687500000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object D11: TQRLabel
        Left = 515
        Top = 288
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1087.437500000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '               '
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
      object D12: TQRLabel
        Left = 515
        Top = 302
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1140.354166666670000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                '
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
      object d13: TQRLabel
        Left = 515
        Top = 316
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1193.270833333330000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '               '
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
      object d14: TQRLabel
        Left = 515
        Top = 329
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1243.541666666670000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                '
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
      object d15: TQRLabel
        Left = 515
        Top = 343
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1296.458333333330000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object D9: TQRLabel
        Left = 515
        Top = 260
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          981.604166666667000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '            '
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
      object D10: TQRLabel
        Left = 515
        Top = 274
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1034.520833333330000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '               '
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
      object M15: TQRLabel
        Left = 451
        Top = 343
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1296.458333333330000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l16: TQRLabel
        Left = 863
        Top = 357
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1349.375000000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object d17: TQRLabel
        Left = 515
        Top = 371
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1402.291666666670000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d19: TQRLabel
        Left = 515
        Top = 399
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1508.125000000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d16: TQRLabel
        Left = 515
        Top = 357
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1349.375000000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d20: TQRLabel
        Left = 515
        Top = 413
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1561.041666666670000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d18: TQRLabel
        Left = 515
        Top = 385
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1455.208333333330000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d24: TQRLabel
        Left = 515
        Top = 469
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1772.708333333330000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d25: TQRLabel
        Left = 515
        Top = 483
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1825.625000000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d22: TQRLabel
        Left = 515
        Top = 441
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1666.875000000000000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d21: TQRLabel
        Left = 515
        Top = 427
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1613.958333333330000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object d23: TQRLabel
        Left = 515
        Top = 455
        Width = 347
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1719.791666666670000000
          1312.333333333330000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
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
      object l17: TQRLabel
        Left = 863
        Top = 371
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1402.291666666670000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l18: TQRLabel
        Left = 863
        Top = 385
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1455.208333333330000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l19: TQRLabel
        Left = 863
        Top = 399
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1508.125000000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l20: TQRLabel
        Left = 863
        Top = 413
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1561.041666666670000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l21: TQRLabel
        Left = 863
        Top = 427
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1613.958333333330000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l22: TQRLabel
        Left = 863
        Top = 441
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1666.875000000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l23: TQRLabel
        Left = 863
        Top = 455
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1719.791666666670000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l25: TQRLabel
        Left = 863
        Top = 483
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1825.625000000000000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object l24: TQRLabel
        Left = 863
        Top = 469
        Width = 20
        Height = 14
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1772.708333333330000000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '                 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m16: TQRLabel
        Left = 451
        Top = 357
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1349.375000000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m17: TQRLabel
        Left = 451
        Top = 371
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1402.291666666670000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m18: TQRLabel
        Left = 451
        Top = 385
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1455.208333333330000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m19: TQRLabel
        Left = 451
        Top = 399
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1508.125000000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m20: TQRLabel
        Left = 451
        Top = 413
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1561.041666666670000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m21: TQRLabel
        Left = 451
        Top = 427
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1613.958333333330000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m22: TQRLabel
        Left = 451
        Top = 441
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1666.875000000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m23: TQRLabel
        Left = 451
        Top = 455
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1719.791666666670000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m24: TQRLabel
        Left = 451
        Top = 469
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1772.708333333330000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'm24'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object m25: TQRLabel
        Left = 451
        Top = 483
        Width = 64
        Height = 14
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1825.625000000000000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 138
        Top = 84
        Width = 171
        Height = 18
        Size.Values = (
          66.145833333333340000
          521.229166666666800000
          317.500000000000000000
          645.583333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1600#1610#1600#1586#1575#1606#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577' '#1575#1604#1600#1583#1608#1604#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 16
      end
      object QRLabel8: TQRLabel
        Left = 297
        Top = 142
        Width = 100
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          537.104166666666800000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1578#1600#1575#1588#1610#1600#1600#1600#1600#1585#1577' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel9: TQRLabel
        Left = 297
        Top = 174
        Width = 100
        Height = 18
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          656.166666666666800000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '#1585#1602#1600#1600#1600#1600#1600#1605'  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel10: TQRLabel
        Left = 297
        Top = 158
        Width = 100
        Height = 18
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          595.312500000000000000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1600#1585#1575#1602#1576' '#1575#1604#1600#1605#1600#1600#1600#1575#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel11: TQRLabel
        Left = 297
        Top = 190
        Width = 100
        Height = 18
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          717.020833333333400000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1578#1600#1600#1600#1575#1585#1610#1582'  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel12: TQRLabel
        Left = 8
        Top = 142
        Width = 100
        Height = 18
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          29.104166666666670000
          537.104166666666800000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '  '#1587#1600#1600#1606#1600#1577'  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel13: TQRLabel
        Left = 7
        Top = 158
        Width = 100
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          28.222222222222200000
          596.194444444444000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                          '
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
      object QRLabel14: TQRLabel
        Left = 8
        Top = 174
        Width = 100
        Height = 18
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          29.104166666666670000
          656.166666666666800000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1576#1600#1600#1591#1600#1600#1575#1602#1600#1600#1600#1577' '#1585#1602#1600#1600#1600#1600#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel16: TQRLabel
        Left = 171
        Top = 157
        Width = 81
        Height = 18
        Size.Values = (
          66.145833333333340000
          645.583333333333400000
          592.666666666666700000
          306.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1608#1586#1575#1585#1577'   :  110 347'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel17: TQRLabel
        Left = 161
        Top = 181
        Width = 95
        Height = 18
        Size.Values = (
          68.035714285714290000
          608.541666666666700000
          684.136904761904800000
          359.077380952381000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1600#1589#1600#1604#1600#1581#1600#1577' : '#1605'.'#1580'.'#1582
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRDBText1: TQRDBText
        Left = 38
        Top = 144
        Width = 33
        Height = 14
        Size.Values = (
          52.916666666666670000
          143.630952380952400000
          544.285714285714300000
          124.732142857142900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = f_dm.SimpleDataSet_eng
        DataField = 'Gestion'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 8
        Top = 190
        Width = 100
        Height = 18
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          29.104166666666670000
          717.020833333333400000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.SimpleDataSet_eng
        DataField = 'FICHE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 14
      end
      object QRShape1: TQRShape
        Left = 8
        Top = 238
        Width = 388
        Height = 196
        Size.Values = (
          740.833333333333000000
          31.750000000000000000
          899.583333333333000000
          1468.437500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 179
        Top = 254
        Width = 62
        Height = 15
        Size.Values = (
          56.696428571428570000
          676.577380952381000000
          960.059523809523800000
          234.345238095238100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   : '#1605#1600#1600#1608#1590#1600#1600#1608#1593
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
      object QRShape2: TQRShape
        Left = 9
        Top = 319
        Width = 387
        Height = 25
        Size.Values = (
          92.604166666666700000
          34.395833333333300000
          1206.500000000000000000
          1463.145833333330000000)
        XLColumn = 0
        Shape = qrsTopAndBottom
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 106
        Top = 319
        Width = 4
        Height = 116
        Size.Values = (
          439.208333333333000000
          402.166666666667000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 206
        Top = 319
        Width = 4
        Height = 116
        Size.Values = (
          439.208333333333000000
          780.520833333333000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 350
        Top = 319
        Width = 4
        Height = 116
        Size.Values = (
          439.208333333333000000
          1322.916666666670000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 317
        Top = 319
        Width = 4
        Height = 116
        Size.Values = (
          439.208333333333000000
          1198.562500000000000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 358
        Top = 321
        Width = 34
        Height = 15
        Size.Values = (
          56.696428571428570000
          1353.154761904762000000
          1213.303571428571000000
          128.511904761904800000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1576#1600#1600#1575#1576
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
      object QRLabel19: TQRLabel
        Left = 325
        Top = 321
        Width = 23
        Height = 15
        Size.Values = (
          55.562500000000000000
          1227.666666666667000000
          1214.437500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1575#1583#1577
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
      object QRLabel20: TQRLabel
        Left = 220
        Top = 320
        Width = 85
        Height = 15
        Size.Values = (
          55.562500000000000000
          833.437500000000000000
          1209.145833333333000000
          320.145833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1585#1589#1610#1600#1600#1600#1600#1583' '#1575#1604#1602#1600#1583#1610#1600#1600#1600#1605
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
      object QRLabel21: TQRLabel
        Left = 121
        Top = 321
        Width = 76
        Height = 15
        Size.Values = (
          55.562500000000000000
          457.729166666666600000
          1214.437500000000000000
          288.395833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1576#1604#1600#1600#1593' '#1575#1604#1593#1605#1604#1610#1600#1600#1577
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
      object QRLabel22: TQRLabel
        Left = 16
        Top = 320
        Width = 85
        Height = 15
        Size.Values = (
          55.562500000000000000
          60.854166666666680000
          1209.145833333333000000
          320.145833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1585#1589#1610#1600#1600#1583' '#1575#1604#1580#1583#1610#1600#1600#1583
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
      object QRDBText5: TQRDBText
        Left = 357
        Top = 375
        Width = 37
        Height = 14
        Size.Values = (
          52.916666666666700000
          1347.611111111110000000
          1418.166666666670000000
          141.111111111111000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.SimpleDataSet_eng
        DataField = 'Chapitre'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRDBText6: TQRDBText
        Left = 326
        Top = 375
        Width = 25
        Height = 14
        Size.Values = (
          52.916666666666670000
          1232.202380952381000000
          1417.410714285714000000
          94.494047619047620000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.SimpleDataSet_eng
        DataField = 'Article'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object qrlas: TQRLabel
        Left = 230
        Top = 375
        Width = 66
        Height = 14
        Size.Values = (
          52.916666666666700000
          867.833333333333000000
          1418.166666666670000000
          250.472222222222000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qrlns: TQRLabel
        Left = 24
        Top = 375
        Width = 68
        Height = 14
        Size.Values = (
          52.916666666666700000
          91.722222222222200000
          1418.166666666670000000
          257.527777777778000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlns'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 138
        Top = 456
        Width = 145
        Height = 18
        Size.Values = (
          68.035714285714290000
          521.607142857142900000
          1723.571428571429000000
          548.065476190476200000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1600#1604#1575#1581#1592#1600#1600#1600#1600#1600#1600#1575#1578' '#1575#1604#1605#1589#1604#1581#1600#1600#1600#1600#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel24: TQRLabel
        Left = 224
        Top = 560
        Width = 177
        Height = 18
        Size.Values = (
          66.145833333333340000
          846.666666666666600000
          2116.666666666667000000
          669.395833333333400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel25: TQRLabel
        Left = 102
        Top = 590
        Width = 92
        Height = 18
        Size.Values = (
          68.035714285714290000
          385.535714285714300000
          2230.059523809524000000
          347.738095238095200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1594#1600#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1600#1577' '#1610#1608#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLs: TQRLabel
        Left = 451
        Top = 497
        Width = 64
        Height = 14
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1703.916666666670000000
          1878.541666666670000000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                               '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object s_en_l: TQRLabel
        Left = 850
        Top = 552
        Width = 34
        Height = 16
        Size.Values = (
          60.476190476190480000
          3212.797619047619000000
          2086.428571428571000000
          128.511904761904800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 's_en_l'
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
      object QRLabel27: TQRLabel
        Left = 810
        Top = 531
        Width = 74
        Height = 15
        Size.Values = (
          56.696428571428570000
          3061.607142857143000000
          2007.053571428571000000
          279.702380952381000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1575#1604#1600#1605#1580#1600#1605#1600#1608#1593' '#1576#1575#1604#1581#1585#1608#1601
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
      object QRL28: TQRLabel
        Left = 127
        Top = 255
        Width = 48
        Height = 15
        Size.Values = (
          55.562500000000000000
          481.541666666666700000
          963.083333333333400000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL28'
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
      object QRLabel28: TQRLabel
        Left = 515
        Top = 497
        Width = 368
        Height = 14
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1878.541666666670000000
          1391.708333333330000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '#1575#1604#1600#1605#1600#1580#1600#1605#1600#1608#1593' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qrld: TQRLabel
        Left = 41
        Top = 289
        Width = 350
        Height = 15
        Size.Values = (
          55.562500000000000000
          156.104166666666700000
          1092.729166666667000000
          1322.916666666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
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
      object QRDBText3: TQRDBText
        Left = 360
        Top = 272
        Width = 32
        Height = 15
        Size.Values = (
          55.562500000000000000
          1359.958333333333000000
          1026.583333333333000000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.SimpleDataSet_eng
        DataField = 'Chapitre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 336
        Top = 272
        Width = 18
        Height = 15
        Size.Values = (
          56.696428571428570000
          1270.000000000000000000
          1028.095238095238000000
          68.035714285714290000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_dm.SimpleDataSet_eng
        DataField = 'Article'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object o1: TQRLabel
        Left = 11
        Top = 470
        Width = 390
        Height = 15
        Size.Values = (
          55.562500000000000000
          42.333333333333340000
          1778.000000000000000000
          1473.729166666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'o1'
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
      object o2: TQRLabel
        Left = 11
        Top = 486
        Width = 390
        Height = 15
        Size.Values = (
          58.208333333333340000
          42.333333333333340000
          1836.208333333333000000
          1473.729166666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'o2'
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
      object o3: TQRLabel
        Left = 9
        Top = 502
        Width = 392
        Height = 16
        Size.Values = (
          60.854166666666680000
          34.395833333333340000
          1897.062500000000000000
          1481.666666666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'o3'
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
      object o4: TQRLabel
        Left = 9
        Top = 519
        Width = 392
        Height = 15
        Size.Values = (
          55.562500000000000000
          34.395833333333340000
          1960.562500000000000000
          1481.666666666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'o4'
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
      object QRLabel1: TQRLabel
        Left = 3
        Top = 5
        Width = 259
        Height = 16
        Size.Values = (
          60.476190476190480000
          11.339285714285710000
          18.898809523809520000
          978.958333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          #1575#1604#1580#1605#1600#1600#1607#1600#1600#1608#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1583#1610#1600#1600#1605#1600#1608#1602#1600#1585#1575#1591#1600#1610#1600#1600#1577' '#1575#1604#1600#1588#1600#1593#1600#1576#1600#1610#1600 +
          #1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
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
      object QRLabel2: TQRLabel
        Left = 172
        Top = 23
        Width = 89
        Height = 17
        Size.Values = (
          64.255952380952380000
          650.119047619047600000
          86.934523809523810000
          336.398809523809500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1608#1586#1575#1585#1577' '#1575#1604#1600#1600#1600#1605#1600#1600#1575#1604#1600#1600#1610#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
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
      object QRLabel38: TQRLabel
        Left = 81
        Top = 37
        Width = 180
        Height = 15
        Size.Values = (
          56.696428571428570000
          306.160714285714300000
          139.851190476190500000
          680.357142857142900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1600#1600#1593#1600#1600#1575#1605#1600#1600#1600#1600#1577' '#1604#1604#1605#1600#1600#1581#1600#1600#1575#1587#1600#1600#1600#1600#1576#1600#1600#1600#1577
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
      object QRLabel3: TQRLabel
        Left = 48
        Top = 55
        Width = 213
        Height = 17
        Size.Values = (
          64.255952380952380000
          181.428571428571400000
          207.886904761904800000
          805.089285714285700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
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
      object qrdate1: TQRLabel
        Left = 6
        Top = 590
        Width = 92
        Height = 18
        Size.Values = (
          68.035714285714290000
          22.678571428571430000
          2230.059523809524000000
          347.738095238095200000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrdate1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object qrlm: TQRLabel
        Left = 125
        Top = 375
        Width = 66
        Height = 14
        Size.Values = (
          52.916666666666670000
          472.470238095238100000
          1417.410714285714000000
          249.464285714285700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlm'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object Q1: TQRLabel
        Left = 600
        Top = 574
        Width = 284
        Height = 17
        Enabled = False
        Size.Values = (
          64.255952380952380000
          2267.857142857143000000
          2169.583333333333000000
          1073.452380952381000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Il y a plus de 25 lignes dans cet engagement ...'
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
    end
  end
  object SQLQuery_as: TSQLQuery
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
        DataType = ftSmallint
        Name = 'f'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from det_eng'
      
        'where gestion=:x and chapitre=:y and article=:z and fiche<:f and' +
        ' objet='#39'd'#39)
    SQLConnection = f_dm.connect_db_gf
    Left = 600
    Top = 32
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'e'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'f'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where gestion=:d and chapitre=:e and article=:f and plus_moins='#39 +
        'm'#39)
    SQLConnection = f_dm.connect_db_gf
    Left = 504
    Top = 40
  end
  object sqlQuery_somme_eng_economie: TSQLQuery
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
        DataType = ftSmallint
        Name = 'f'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from det_eng'
      
        'where gestion=:x and chapitre=:y and article=:z and fiche<:f and' +
        ' objet='#39'e'#39)
    SQLConnection = f_dm.connect_db_gf
    Left = 416
    Top = 80
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'e'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'f'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where gestion=:d and chapitre=:e and article=:f and plus_moins<>' +
        #39'm'#39)
    SQLConnection = f_dm.connect_db_gf
    Left = 360
    Top = 32
  end
end
