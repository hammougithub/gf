object f_eng_preview: Tf_eng_preview
  Left = 191
  Top = 106
  Caption = 'f_eng_preview'
  ClientHeight = 428
  ClientWidth = 563
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
    Width = 1632
    Height = 1056
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
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 19
      Top = 19
      Width = 1311
      Height = 945
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2500.312500000000000000
        3468.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 12
        Top = 8
        Width = 245
        Height = 21
        Size.Values = (
          56.444444444444400000
          31.750000000000000000
          21.166666666666700000
          649.111111111111000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1580#1605#1607#1608#1585#1610#1577'  '#1575#1604#1580#1586#1575#1574#1585#1610#1577' '#1575#1604#1583#1610#1608#1602#1585#1575#1591#1610#1577' '#1575#1604#1588#1593#1576#1610#1577
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
      object QRLabel2: TQRLabel
        Left = 176
        Top = 32
        Width = 79
        Height = 21
        Size.Values = (
          56.444444444444400000
          465.666666666667000000
          84.666666666666700000
          208.138888888889000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1608#1586#1575#1585#1577' '#1575#1604#1605#1575#1604#1610#1577
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
        Left = 51
        Top = 52
        Width = 204
        Height = 21
        Size.Values = (
          56.444444444444400000
          134.055555555556000000
          137.583333333333000000
          539.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1583#1610#1585#1610#1577' '#1575#1604#1580#1607#1608#1610#1577' '#1604#1604#1582#1586#1610#1606#1577' '#1576#1594#1585#1583#1575#1610#1600#1577
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
      object QRLabel4: TQRLabel
        Left = 847
        Top = 113
        Width = 217
        Height = 27
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          70.555555555555600000
          2240.138888888890000000
          299.861111111111000000
          575.027777777778000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '  '#1578#1601#1600#1600#1600#1600#1575#1589#1610#1600#1600#1600#1600#1600#1604'  '#1575#1604#1575#1604#1578#1586#1575#1605#1600#1600#1575#1578'  '
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
      object QRLabel5: TQRLabel
        Left = 736
        Top = 189
        Width = 526
        Height = 22
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
        Caption = 
          #1591#1600#1600#1576#1600#1610#1600#1600#1600#1600#1600#1600#1600#1600#1593#1577'  '#1575#1604#1575#1604#1600#1578#1600#1586#1575#1605#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575 +
          #1578
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 644
        Top = 189
        Width = 91
        Height = 22
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
        Caption = #1575#1604#1600#1605#1576#1600#1604#1600#1600#1600#1600#1600#1600#1594
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object d1: TQRLabel
        Left = 736
        Top = 212
        Width = 496
        Height = 20
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
      object m1: TQRLabel
        Left = 644
        Top = 212
        Width = 91
        Height = 20
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
        Left = 644
        Top = 312
        Width = 91
        Height = 20
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
        Left = 644
        Top = 252
        Width = 91
        Height = 20
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
        Left = 644
        Top = 331
        Width = 91
        Height = 20
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
        Left = 644
        Top = 232
        Width = 91
        Height = 20
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
        Left = 644
        Top = 371
        Width = 91
        Height = 20
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
        Left = 644
        Top = 272
        Width = 91
        Height = 20
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
        Left = 644
        Top = 391
        Width = 91
        Height = 20
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
        Left = 644
        Top = 431
        Width = 91
        Height = 20
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
        Left = 1233
        Top = 212
        Width = 29
        Height = 20
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
        Left = 736
        Top = 252
        Width = 496
        Height = 20
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
        Left = 736
        Top = 271
        Width = 496
        Height = 20
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
        Left = 1233
        Top = 490
        Width = 29
        Height = 20
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
        Left = 644
        Top = 450
        Width = 91
        Height = 20
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
        Left = 736
        Top = 232
        Width = 496
        Height = 20
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
        Left = 644
        Top = 351
        Width = 91
        Height = 20
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
        Left = 644
        Top = 411
        Width = 91
        Height = 20
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
        Left = 644
        Top = 292
        Width = 91
        Height = 20
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
        Left = 644
        Top = 470
        Width = 91
        Height = 20
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
        Left = 1233
        Top = 450
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 252
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 271
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 291
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 311
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 331
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 351
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 371
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 391
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 411
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 430
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 232
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 470
        Width = 29
        Height = 20
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
        Left = 736
        Top = 291
        Width = 496
        Height = 20
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
        Left = 736
        Top = 311
        Width = 496
        Height = 20
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
        Left = 736
        Top = 331
        Width = 496
        Height = 20
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
        Left = 736
        Top = 351
        Width = 496
        Height = 20
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
        Left = 736
        Top = 411
        Width = 496
        Height = 20
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
        Left = 736
        Top = 431
        Width = 496
        Height = 20
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
        Left = 736
        Top = 451
        Width = 496
        Height = 20
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
        Left = 736
        Top = 470
        Width = 496
        Height = 20
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
        Left = 736
        Top = 490
        Width = 496
        Height = 20
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
        Left = 736
        Top = 371
        Width = 496
        Height = 20
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
        Left = 736
        Top = 391
        Width = 496
        Height = 20
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
        Left = 644
        Top = 490
        Width = 91
        Height = 20
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
        Left = 1233
        Top = 510
        Width = 29
        Height = 20
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
        Left = 736
        Top = 530
        Width = 496
        Height = 20
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
        Left = 736
        Top = 570
        Width = 496
        Height = 20
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
        Left = 736
        Top = 510
        Width = 496
        Height = 20
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
        Left = 736
        Top = 590
        Width = 496
        Height = 20
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
        Left = 736
        Top = 550
        Width = 496
        Height = 20
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
        Left = 736
        Top = 670
        Width = 496
        Height = 20
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
        Left = 736
        Top = 690
        Width = 496
        Height = 20
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
        Left = 736
        Top = 630
        Width = 496
        Height = 20
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
        Left = 736
        Top = 610
        Width = 496
        Height = 20
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
        Left = 736
        Top = 650
        Width = 496
        Height = 20
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
        Left = 1233
        Top = 530
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 550
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 570
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 590
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 610
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 630
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 650
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 690
        Width = 29
        Height = 20
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
        Left = 1233
        Top = 670
        Width = 29
        Height = 20
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
        Left = 644
        Top = 510
        Width = 91
        Height = 20
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
        Left = 644
        Top = 530
        Width = 91
        Height = 20
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
        Left = 644
        Top = 550
        Width = 91
        Height = 20
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
        Left = 644
        Top = 570
        Width = 91
        Height = 20
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
        Left = 644
        Top = 590
        Width = 91
        Height = 20
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
        Left = 644
        Top = 610
        Width = 91
        Height = 20
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
        Left = 644
        Top = 630
        Width = 91
        Height = 20
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
        Left = 644
        Top = 650
        Width = 91
        Height = 20
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
        Left = 644
        Top = 670
        Width = 91
        Height = 20
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
        Left = 644
        Top = 690
        Width = 91
        Height = 20
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
        Left = 221
        Top = 128
        Width = 244
        Height = 21
        Size.Values = (
          56.444444444444400000
          585.611111111111000000
          338.666666666667000000
          645.583333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1600#1610#1600#1586#1575#1606#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577' '#1575#1604#1600#1583#1608#1604#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577
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
      object QRLabel8: TQRLabel
        Left = 424
        Top = 203
        Width = 143
        Height = 23
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          1121.833333333330000000
          536.222222222222000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1578#1600#1600#1575#1588#1600#1610#1600#1600#1585#1577
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 424
        Top = 248
        Width = 143
        Height = 23
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          1121.833333333330000000
          656.166666666667000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '    '#1585#1602#1600#1600#1600#1605'   '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 424
        Top = 225
        Width = 143
        Height = 23
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          1121.833333333330000000
          596.194444444444000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1605#1585#1575#1602#1600#1600#1576' '#1575#1604#1600#1605#1600#1600#1600#1600#1600#1600#1575#1604#1609
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Left = 424
        Top = 271
        Width = 143
        Height = 23
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          1121.833333333330000000
          716.138888888889000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1578#1600#1600#1575#1585#1610#1600#1600#1582'   '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 11
        Top = 203
        Width = 143
        Height = 23
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          28.222222222222200000
          536.222222222222000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1587#1600#1600#1600#1606#1577'   '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 11
        Top = 225
        Width = 143
        Height = 23
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel14: TQRLabel
        Left = 11
        Top = 248
        Width = 143
        Height = 23
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          28.222222222222200000
          656.166666666667000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '#1576#1600#1591#1600#1600#1575#1602#1600#1600#1577' '#1585#1602#1600#1600#1605'   '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel16: TQRLabel
        Left = 228
        Top = 224
        Width = 116
        Height = 17
        Size.Values = (
          45.861111111111100000
          603.250000000000000000
          592.666666666667000000
          306.916666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1608#1586#1575#1585#1577'   :  110 347'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel17: TQRLabel
        Left = 200
        Top = 256
        Width = 175
        Height = 17
        Size.Values = (
          45.861111111111100000
          529.166666666667000000
          677.333333333333000000
          462.138888888889000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1600#1589#1600#1604#1600#1581#1600#1600#1577'  :  '#1605'.'#1580'.'#1582' '#1576#1600#1594#1600#1585#1583#1575#1610#1600#1600#1577
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRDBText1: TQRDBText
        Left = 53
        Top = 205
        Width = 47
        Height = 20
        Size.Values = (
          52.916666666666670000
          140.229166666666700000
          542.395833333333300000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'Gestion'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 11
        Top = 271
        Width = 143
        Height = 23
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          28.222222222222200000
          716.138888888889000000
          377.472222222222000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Fiche'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 12
        Top = 341
        Width = 556
        Height = 280
        Size.Values = (
          740.833333333333000000
          31.750000000000000000
          903.111111111111000000
          1471.083333333330000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 256
        Top = 363
        Width = 81
        Height = 17
        Size.Values = (
          45.861111111111100000
          677.333333333333000000
          959.555555555556000000
          215.194444444444000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '  :'#1605#1600#1600#1608#1590#1600#1600#1600#1608#1593'  '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 13
        Top = 456
        Width = 553
        Height = 35
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
        Left = 152
        Top = 451
        Width = 5
        Height = 169
        Size.Values = (
          448.027777777778000000
          402.166666666667000000
          1192.388888888890000000
          14.111111111111100000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 295
        Top = 455
        Width = 5
        Height = 166
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
        Left = 500
        Top = 456
        Width = 5
        Height = 164
        Size.Values = (
          433.916666666667000000
          1322.916666666670000000
          1206.500000000000000000
          13.229166666666700000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 453
        Top = 454
        Width = 5
        Height = 167
        Size.Values = (
          441.854166666667000000
          1198.562500000000000000
          1201.208333333330000000
          13.229166666666700000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 511
        Top = 459
        Width = 49
        Height = 17
        Size.Values = (
          45.861111111111100000
          1351.138888888890000000
          1213.555555555560000000
          130.527777777778000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1576#1600#1600#1575#1576
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel19: TQRLabel
        Left = 464
        Top = 459
        Width = 33
        Height = 17
        Size.Values = (
          45.861111111111100000
          1227.666666666670000000
          1213.555555555560000000
          88.194444444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1605#1575#1583#1577
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel20: TQRLabel
        Left = 315
        Top = 457
        Width = 121
        Height = 17
        Size.Values = (
          45.861111111111100000
          832.555555555556000000
          1210.027777777780000000
          321.027777777778000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1585#1589#1600#1610#1600#1600#1583' '#1575#1604#1600#1602#1600#1583#1610#1600#1600#1600#1605
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel21: TQRLabel
        Left = 173
        Top = 459
        Width = 109
        Height = 17
        Size.Values = (
          45.861111111111100000
          458.611111111111000000
          1213.555555555560000000
          289.277777777778000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1600#1576#1600#1604#1600#1594' '#1575#1604#1600#1593#1600#1605#1600#1604#1600#1610#1600#1577
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 23
        Top = 457
        Width = 121
        Height = 17
        Size.Values = (
          45.861111111111100000
          59.972222222222200000
          1210.027777777780000000
          321.027777777778000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1585#1589#1600#1610#1600#1600#1583' '#1575#1604#1600#1580#1600#1583#1610#1600#1583
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Left = 509
        Top = 536
        Width = 53
        Height = 20
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
        DataField = 'Chapitre'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRDBText6: TQRDBText
        Left = 464
        Top = 536
        Width = 36
        Height = 20
        Size.Values = (
          52.916666666666700000
          1227.666666666670000000
          1418.166666666670000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Article'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object qrlas: TQRLabel
        Left = 328
        Top = 536
        Width = 95
        Height = 20
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
      object qrlm: TQRLabel
        Left = 184
        Top = 536
        Width = 92
        Height = 20
        Size.Values = (
          52.916666666666700000
          486.833333333333000000
          1418.166666666670000000
          243.416666666667000000)
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
      object qrlns: TQRLabel
        Left = 35
        Top = 536
        Width = 97
        Height = 20
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
        Left = 211
        Top = 651
        Width = 193
        Height = 17
        Size.Values = (
          45.861111111111100000
          557.388888888889000000
          1721.555555555560000000
          511.527777777778000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1605#1600#1604#1575#1581#1592#1600#1600#1600#1600#1600#1575#1578'  '#1575#1604#1605#1589#1600#1604#1600#1600#1581#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel24: TQRLabel
        Left = 389
        Top = 800
        Width = 191
        Height = 21
        Size.Values = (
          56.444444444444400000
          1030.111111111110000000
          2116.666666666670000000
          504.472222222222000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585' '#1575#1604#1600#1580#1600#1607#1600#1600#1608#1610' '#1604#1604#1582#1600#1586#1610#1600#1606#1600#1600#1577
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
      object QRLabel25: TQRLabel
        Left = 81
        Top = 843
        Width = 131
        Height = 17
        Size.Values = (
          45.861111111111100000
          215.194444444444000000
          2229.555555555560000000
          345.722222222222000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #1594#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577' '#1601#1600#1600#1610
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLs: TQRLabel
        Left = 644
        Top = 710
        Width = 91
        Height = 20
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
        Left = 1217
        Top = 789
        Width = 48
        Height = 23
        Size.Values = (
          60.854166666666700000
          3219.979166666670000000
          2087.562500000000000000
          127.000000000000000000)
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
        Left = 1145
        Top = 765
        Width = 121
        Height = 21
        Size.Values = (
          55.562500000000000000
          3029.479166666670000000
          2024.062500000000000000
          320.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #1575#1604#1600#1605#1600#1580#1600#1605#1600#1608#1593' '#1576#1575#1604#1600#1581#1600#1600#1585#1608#1601
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
        Left = 182
        Top = 364
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666700000
          481.541666666667000000
          963.083333333333000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRL28'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel28: TQRLabel
        Left = 736
        Top = 710
        Width = 526
        Height = 20
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
        Caption = '   '#1575#1604#1600#1600#1605#1600#1600#1580#1600#1600#1605#1600#1600#1608#1593
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object qrld: TQRLabel
        Left = 55
        Top = 413
        Width = 500
        Height = 17
        Size.Values = (
          44.979166666666700000
          145.520833333333000000
          1092.729166666670000000
          1322.916666666670000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRDBText3: TQRDBText
        Left = 514
        Top = 388
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666700000
          1359.958333333330000000
          1026.583333333330000000
          108.479166666667000000)
        XLColumn = 0
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
        FontSize = 11
      end
      object QRDBText4: TQRDBText
        Left = 489
        Top = 388
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666700000
          1293.812500000000000000
          1026.583333333330000000
          58.208333333333300000)
        XLColumn = 0
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
        FontSize = 11
      end
      object QRDBText7: TQRDBText
        Left = 18
        Top = 712
        Width = 551
        Height = 17
        Size.Values = (
          44.979166666666700000
          47.625000000000000000
          1883.833333333330000000
          1457.854166666670000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Ligne3'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRDBText8: TQRDBText
        Left = 18
        Top = 695
        Width = 551
        Height = 17
        Size.Values = (
          44.979166666666700000
          47.625000000000000000
          1838.854166666670000000
          1457.854166666670000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Ligne2'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRDBText10: TQRDBText
        Left = 18
        Top = 678
        Width = 551
        Height = 17
        Size.Values = (
          44.979166666666700000
          47.625000000000000000
          1793.875000000000000000
          1457.854166666670000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Ligne1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
      object QRDBText11: TQRDBText
        Left = 17
        Top = 729
        Width = 551
        Height = 17
        Size.Values = (
          44.979166666666700000
          44.979166666666700000
          1928.812500000000000000
          1457.854166666670000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Ligne4'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 11
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 964
      Width = 1311
      Height = 41
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        108.479166666666700000
        3468.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
    end
  end
  object Query_as: TQuery
    DatabaseName = 'gf'
    SQL.Strings = (
      'select sum (montant) from det_eng'
      
        'where gestion=:x and chapitre=:y and article=:z and fiche<:f and' +
        ' objet='#39'd'#39)
    Left = 110
    Top = 138
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'y'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'z'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end>
  end
  object Query1: TQuery
    DatabaseName = 'gf'
    SQL.Strings = (
      'select sum (credit) from credit'
      'where gestion=:a and chapitre=:b and article=:c')
    Left = 94
    Top = 26
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c'
        ParamType = ptUnknown
      end>
  end
  object Query2: TQuery
    DatabaseName = 'gf'
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where gestion=:d and chapitre=:e and article=:f and plus_moins='#39 +
        'm'#39
      '')
    Left = 102
    Top = 82
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end>
  end
  object Query_somme_eng_economie: TQuery
    DatabaseName = 'gf'
    SQL.Strings = (
      'select sum (montant) from det_eng'
      
        'where gestion=:x and chapitre=:y and article=:z and fiche<:f and' +
        ' objet='#39'e'#39
      '')
    Left = 251
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'y'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'z'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end>
  end
end
