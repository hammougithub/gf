object f_eng_prev: Tf_eng_prev
  Left = 0
  Top = 0
  Caption = 'f_eng_prev'
  ClientHeight = 738
  ClientWidth = 1234
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
    Left = 8
    Top = 3
    Width = 1306
    Height = 845
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 15
      Top = 15
      Width = 1049
      Height = 756
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2500.312500000000000000
        3469.348958333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel4: TQRLabel
        Left = 678
        Top = 90
        Width = 201
        Height = 22
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
        XLNumFormat = nfGeneral
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
        Left = 588
        Top = 148
        Width = 421
        Height = 20
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          67.348484848484850000
          1945.890151515152000000
          488.276515151515200000
          1392.670454545455000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 148
        Width = 77
        Height = 20
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          67.348484848484850000
          1688.522727272727000000
          488.276515151515200000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 170
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          560.916666666667000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 169
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          560.435606060606100000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 249
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          825.018939393939500000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 201
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          666.268939393939500000
          254.962121212121200000)
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
        FontSize = 11
      end
      object M7: TQRLabel
        Left = 511
        Top = 265
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          875.530303030303000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 185
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          613.352272727272700000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 297
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          981.363636363636400000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 217
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          719.185606060606100000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 313
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1034.280303030303000000
          254.962121212121200000)
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
        FontSize = 11
      end
      object M12: TQRLabel
        Left = 511
        Top = 345
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1140.113636363636000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 170
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          560.916666666667000000
          76.729166666666700000)
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
        FontSize = 11
      end
      object D3: TQRLabel
        Left = 589
        Top = 202
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          666.750000000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 217
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          717.020833333333000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 392
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1296.458333333330000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 360
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1190.625000000000000000
          254.962121212121200000)
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
        FontSize = 11
      end
      object D2: TQRLabel
        Left = 589
        Top = 186
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          613.833333333333000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 281
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          928.446969696969700000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 329
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1087.196969696970000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 233
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          772.102272727272700000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 376
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1243.541666666667000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 360
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1190.625000000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 202
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          666.750000000000000000
          76.729166666666700000)
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
        FontSize = 11
      end
      object l4: TQRLabel
        Left = 986
        Top = 217
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          717.020833333333000000
          76.729166666666700000)
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
        FontSize = 11
      end
      object l5: TQRLabel
        Left = 986
        Top = 233
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          769.937500000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 249
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          822.854166666667000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 265
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          875.770833333333000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 281
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          928.687500000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 297
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          981.604166666667000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 313
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1034.520833333330000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 329
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1087.437500000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 344
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1137.708333333330000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 186
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          613.833333333333000000
          76.729166666666700000)
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
        FontSize = 11
      end
      object l14: TQRLabel
        Left = 986
        Top = 376
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1243.541666666670000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 233
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          769.937500000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 249
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          822.854166666667000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 265
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          875.770833333333000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 281
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          928.687500000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 329
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1087.437500000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 345
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1140.354166666670000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 361
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1193.270833333330000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 376
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1243.541666666670000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 392
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1296.458333333330000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 297
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          981.604166666667000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 313
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1034.520833333330000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 392
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1296.458333333333000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 408
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1349.375000000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 424
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1402.291666666670000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 456
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1508.125000000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 408
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1349.375000000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 472
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1561.041666666670000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 440
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1455.208333333330000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 536
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1772.708333333330000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 552
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1825.625000000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 504
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1666.875000000000000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 488
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1613.958333333330000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 520
        Width = 397
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666700000
          1947.333333333330000000
          1719.791666666670000000
          1312.333333333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 424
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1402.291666666670000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 440
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1455.208333333330000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 456
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1508.125000000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 472
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1561.041666666670000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 488
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1613.958333333330000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 504
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1666.875000000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 520
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1719.791666666670000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 552
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1825.625000000000000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 986
        Top = 536
        Width = 23
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.916666666666700000
          3262.312500000000000000
          1772.708333333330000000
          76.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 408
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1349.375000000000000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 424
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1402.291666666667000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 440
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1455.208333333333000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 456
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1508.125000000000000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 472
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1561.041666666667000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 488
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1613.958333333333000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 504
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1666.875000000000000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 520
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1719.791666666667000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 536
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1772.708333333333000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 552
        Width = 77
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1825.625000000000000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 158
        Top = 96
        Width = 227
        Height = 21
        Size.Values = (
          69.453125000000000000
          522.552083333333300000
          317.500000000000000000
          750.755208333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
        Left = 339
        Top = 162
        Width = 114
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          537.104166666666800000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 339
        Top = 198
        Width = 114
        Height = 20
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          656.166666666666800000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 339
        Top = 180
        Width = 114
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          595.312500000000000000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 339
        Top = 217
        Width = 114
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          717.020833333333400000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 9
        Top = 162
        Width = 114
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          29.104166666666670000
          537.104166666666800000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 9
        Top = 180
        Width = 114
        Height = 18
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          59.972222222222200000
          28.222222222222200000
          596.194444444444000000
          377.472222222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 9
        Top = 198
        Width = 114
        Height = 20
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          29.104166666666670000
          656.166666666666800000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 195
        Top = 179
        Width = 93
        Height = 20
        Size.Values = (
          66.145833333333340000
          645.583333333333400000
          592.666666666666800000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 184
        Top = 207
        Width = 109
        Height = 21
        Size.Values = (
          68.035714285714290000
          608.541666666666800000
          684.136904761904800000
          359.077380952381000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 44
        Top = 164
        Width = 38
        Height = 16
        Size.Values = (
          52.916666666666670000
          145.520833333333300000
          542.395833333333300000
          125.677083333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 9
        Top = 217
        Width = 114
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          66.145833333333340000
          29.104166666666670000
          717.020833333333400000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 10
        Top = 272
        Width = 444
        Height = 224
        Size.Values = (
          740.833333333333000000
          31.750000000000000000
          899.583333333333000000
          1468.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 205
        Top = 290
        Width = 71
        Height = 17
        Size.Values = (
          56.696428571428570000
          676.577380952381100000
          960.059523809523800000
          234.345238095238100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 10
        Top = 365
        Width = 442
        Height = 28
        Size.Values = (
          92.604166666666700000
          34.395833333333300000
          1206.500000000000000000
          1463.145833333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsTopAndBottom
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 122
        Top = 364
        Width = 4
        Height = 133
        Size.Values = (
          439.208333333333000000
          402.166666666667000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 236
        Top = 364
        Width = 4
        Height = 133
        Size.Values = (
          439.208333333333000000
          780.520833333333000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 400
        Top = 364
        Width = 4
        Height = 133
        Size.Values = (
          439.208333333333000000
          1322.916666666670000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 362
        Top = 364
        Width = 4
        Height = 133
        Size.Values = (
          439.208333333333000000
          1198.562500000000000000
          1203.854166666670000000
          13.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 409
        Top = 369
        Width = 39
        Height = 18
        Size.Values = (
          58.796296296296290000
          1352.314814814815000000
          1220.023148148148000000
          129.351851851851900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 372
        Top = 369
        Width = 26
        Height = 18
        Size.Values = (
          58.796296296296290000
          1228.842592592593000000
          1220.023148148148000000
          85.254629629629630000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 252
        Top = 369
        Width = 98
        Height = 18
        Size.Values = (
          58.796296296296290000
          834.907407407407400000
          1220.023148148148000000
          323.379629629629600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 138
        Top = 369
        Width = 88
        Height = 18
        Size.Values = (
          58.796296296296290000
          455.671296296296300000
          1220.023148148148000000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 20
        Top = 369
        Width = 98
        Height = 18
        Size.Values = (
          58.796296296296290000
          64.675925925925930000
          1220.023148148148000000
          323.379629629629600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 407
        Top = 429
        Width = 43
        Height = 16
        Size.Values = (
          52.916666666666700000
          1347.611111111110000000
          1418.166666666670000000
          141.111111111111000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 373
        Top = 429
        Width = 29
        Height = 16
        Size.Values = (
          52.916666666666670000
          1232.202380952381000000
          1417.410714285714000000
          94.494047619047620000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 262
        Top = 429
        Width = 76
        Height = 16
        Size.Values = (
          52.916666666666700000
          867.833333333333000000
          1418.166666666670000000
          250.472222222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 28
        Top = 429
        Width = 78
        Height = 16
        Size.Values = (
          52.916666666666700000
          91.722222222222200000
          1418.166666666670000000
          257.527777777778000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 158
        Top = 521
        Width = 166
        Height = 21
        Size.Values = (
          68.035714285714290000
          521.607142857142900000
          1723.571428571429000000
          548.065476190476200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 256
        Top = 640
        Width = 202
        Height = 20
        Size.Values = (
          66.145833333333340000
          846.666666666666600000
          2116.666666666667000000
          669.395833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 117
        Top = 674
        Width = 105
        Height = 21
        Size.Values = (
          68.035714285714290000
          385.535714285714300000
          2230.059523809524000000
          347.738095238095200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 511
        Top = 568
        Width = 77
        Height = 16
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          52.916666666666670000
          1688.522727272727000000
          1878.541666666667000000
          254.962121212121200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 973
        Top = 631
        Width = 38
        Height = 17
        Size.Values = (
          56.223958333333330000
          3217.994791666667000000
          2086.901041666667000000
          125.677083333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 927
        Top = 607
        Width = 84
        Height = 17
        Size.Values = (
          56.223958333333330000
          3065.859375000000000000
          2007.526041666667000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 146
        Top = 291
        Width = 54
        Height = 18
        Size.Values = (
          58.208333333333320000
          481.541666666666700000
          963.083333333333200000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 589
        Top = 568
        Width = 421
        Height = 16
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
        XLNumFormat = nfGeneral
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
        Left = 48
        Top = 331
        Width = 400
        Height = 18
        Size.Values = (
          58.208333333333320000
          158.750000000000000000
          1095.375000000000000000
          1322.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 411
        Top = 310
        Width = 35
        Height = 18
        Size.Values = (
          58.208333333333320000
          1359.958333333333000000
          1026.583333333333000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 384
        Top = 311
        Width = 21
        Height = 17
        Size.Values = (
          56.696428571428570000
          1270.000000000000000000
          1028.095238095238000000
          68.035714285714290000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 13
        Top = 538
        Width = 446
        Height = 18
        Size.Values = (
          58.208333333333320000
          42.333333333333330000
          1778.000000000000000000
          1476.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 13
        Top = 555
        Width = 446
        Height = 18
        Size.Values = (
          58.208333333333340000
          42.333333333333340000
          1836.208333333333000000
          1473.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 10
        Top = 574
        Width = 448
        Height = 18
        Size.Values = (
          60.854166666666680000
          34.395833333333340000
          1897.062500000000000000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 11
        Top = 592
        Width = 448
        Height = 18
        Size.Values = (
          58.208333333333320000
          37.041666666666670000
          1957.916666666667000000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Top = 6
        Width = 296
        Height = 18
        Size.Values = (
          60.476190476190480000
          11.339285714285710000
          18.898809523809520000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 197
        Top = 26
        Width = 102
        Height = 19
        Size.Values = (
          64.255952380952380000
          650.119047619047600000
          86.934523809523810000
          336.398809523809500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 93
        Top = 42
        Width = 206
        Height = 17
        Size.Values = (
          56.696428571428570000
          306.160714285714300000
          139.851190476190500000
          680.357142857142900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 55
        Top = 63
        Width = 243
        Height = 19
        Size.Values = (
          64.255952380952380000
          181.428571428571400000
          207.886904761904800000
          805.089285714285700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 7
        Top = 674
        Width = 105
        Height = 21
        Size.Values = (
          68.035714285714290000
          22.678571428571430000
          2230.059523809524000000
          347.738095238095200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 143
        Top = 429
        Width = 75
        Height = 16
        Size.Values = (
          52.916666666666670000
          472.470238095238100000
          1417.410714285714000000
          249.464285714285700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        Left = 686
        Top = 704
        Width = 325
        Height = 19
        Enabled = False
        Size.Values = (
          62.838541666666680000
          2268.802083333333000000
          2328.333333333333000000
          1074.869791666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
      object QRShape4: TQRShape
        Left = 511
        Top = 168
        Width = 499
        Height = 1
        Size.Values = (
          4.810606060606061000
          1688.522727272727000000
          555.625000000000000000
          1650.037878787879000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object q11: TQRLabel
        Left = 589
        Top = 679
        Width = 422
        Height = 19
        Enabled = False
        Size.Values = (
          62.838541666666680000
          1947.994791666667000000
          2245.651041666667000000
          1395.677083333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'q11'
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
    end
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
    Left = 186
    Top = 1
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
    Left = 248
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
        ' '
      '(objet='#39'd'#39' or objet='#39'r'#39')')
    SQLConnection = f_dm.connect_db_gf
    Left = 312
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
    Left = 392
  end
end
