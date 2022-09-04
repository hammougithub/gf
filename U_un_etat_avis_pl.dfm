object f_un_etat_avis_pl: Tf_un_etat_avis_pl
  Left = 59
  Top = 221
  Width = 746
  Height = 446
  Caption = 'f_un_etat_avis_pl'
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
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = F_principale.t_fournisseur
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
    Page.PaperSize = Custom
    Page.Values = (
      0
      1524
      0
      2854.96
      0
      0
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object QRBand1: TQRBand
      Left = 0
      Top = 0
      Width = 1079
      Height = 529
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1399.54
        2854.85416666667)
      BandType = rbTitle
      object QRDBText2: TQRDBText
        Left = 513
        Top = 127
        Width = 342
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1357.3125
          336.020833333333
          904.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'Nom'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 876
        Top = 96
        Width = 74
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          2317.75
          254
          195.791666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_ligne
        DataField = 'Mandat'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 762
        Top = 97
        Width = 52
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          2016.125
          256.645833333333
          137.583333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_ligne
        DataField = 'Chapitre'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 729
        Top = 97
        Width = 32
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1928.8125
          256.645833333333
          84.6666666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_ligne
        DataField = 'Article'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText5: TQRDBText
        Left = 535
        Top = 97
        Width = 117
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1415.52083333333
          256.645833333333
          309.5625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_ligne
        DataField = 'Montant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Mask = '###,###,###.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText6: TQRDBText
        Left = 720
        Top = 160
        Width = 157
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1905
          423.333333333333
          415.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'BANQUE'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText7: TQRDBText
        Left = 515
        Top = 160
        Width = 229
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1362.60416666667
          423.333333333333
          605.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'COMPTE'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText8: TQRDBText
        Left = 57
        Top = 101
        Width = 118
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          150.8125
          267.229166666667
          312.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_ligne
        DataField = 'Montant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Mask = '###,###,###.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText9: TQRDBText
        Left = 30
        Top = 138
        Width = 394
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          79.375
          365.125
          1042.45833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'Nom'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText10: TQRDBText
        Left = 91
        Top = 165
        Width = 320
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          240.770833333333
          436.5625
          846.666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'COMPTE'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText11: TQRDBText
        Left = 27
        Top = 202
        Width = 316
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          71.4375
          534.458333333333
          836.083333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'COMPTE'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText12: TQRDBText
        Left = 230
        Top = 267
        Width = 193
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          608.541666666667
          706.4375
          510.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'BANQUE'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText13: TQRDBText
        Left = 24
        Top = 230
        Width = 356
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          63.5
          608.541666666667
          941.916666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_fournisseur
        DataField = 'Nom'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel1: TQRLabel
        Left = 775
        Top = 13
        Width = 175
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2050.52083333333
          34.3958333333333
          463.020833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·„œÌ—Ì… «·ÃÂÊÌ… ··Œ“Ì‰… €—œ«Ì…'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 823
        Top = 45
        Width = 127
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2177.52083333333
          119.0625
          336.020833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·‹‹—„‹‹“  :  110300'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 876
        Top = 75
        Width = 74
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          2317.75
          198.4375
          195.791666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Õ‹Ê«·‹‹… —ﬁ‹„'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 729
        Top = 76
        Width = 32
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1928.8125
          201.083333333333
          84.6666666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·„«œ…'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 762
        Top = 76
        Width = 52
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          2016.125
          201.083333333333
          137.583333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·»‹‹«»'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 35
        Top = 12
        Width = 185
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          92.6041666666667
          31.75
          489.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«„‹‹‹—  »«·‹ ‹Õ‹ÊÌ‹‹‹‹‹·'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel7: TQRLabel
        Left = 535
        Top = 76
        Width = 117
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          1415.52083333333
          201.083333333333
          309.5625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·‹‹„‹»‹·‹‹‹‹‹€'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 856
        Top = 127
        Width = 93
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2264.83333333333
          336.020833333333
          246.0625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':Ì’—› «·Ï «·”Ìœ'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel9: TQRLabel
        Left = 884
        Top = 160
        Width = 65
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2338.91666666667
          423.333333333333
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':—ﬁ„ «·Õ”«»'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape1: TQRShape
        Left = 511
        Top = 192
        Width = 443
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1352.02083333333
          508
          1172.10416666667)
        Shape = qrsRectangle
      end
      object QRLabel10: TQRLabel
        Left = 624
        Top = 194
        Width = 211
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1651
          513.291666666667
          558.270833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' ‹⁄ÌÌ‹‹‹‹‹‰ «·‹ÊÀ«∆‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹ﬁ'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 512
        Top = 520
        Width = 442
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          1354.66666666667
          1375.83333333333
          1169.45833333333)
        Shape = qrsHorLine
      end
      object QRLabel11: TQRLabel
        Left = 873
        Top = 396
        Width = 65
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2309.8125
          1047.75
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' : ﬁ‹‹‹»‹‹‹· '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 633
        Top = 484
        Width = 161
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1674.8125
          1280.58333333333
          425.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' ‹«—Ì‹Œ «· ﬁÌÌ‹‹œ ⁄·Ï «·Õ”‹‹«»'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 512
        Top = 2
        Width = 442
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          1354.66666666667
          5.29166666666667
          1169.45833333333)
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 512
        Top = 380
        Width = 442
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          1354.66666666667
          1005.41666666667
          1169.45833333333)
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Left = 953
        Top = 2
        Width = 1
        Height = 520
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1375.83333333333
          2521.47916666667
          5.29166666666667
          2.64583333333333)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 511
        Top = 2
        Width = 1
        Height = 520
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1375.83333333333
          1352.02083333333
          5.29166666666667
          2.64583333333333)
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Left = 480
        Top = 2
        Width = 1
        Height = 520
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1375.83333333333
          1270
          5.29166666666667
          2.64583333333333)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 20
        Top = 2
        Width = 1
        Height = 520
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1375.83333333333
          52.9166666666667
          5.29166666666667
          2.64583333333333)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 20
        Top = 2
        Width = 461
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          52.9166666666667
          5.29166666666667
          1219.72916666667)
        Shape = qrsHorLine
      end
      object QRShape10: TQRShape
        Left = 20
        Top = 520
        Width = 461
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          52.9166666666667
          1375.83333333333
          1219.72916666667)
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 20
        Top = 380
        Width = 461
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          52.9166666666667
          1005.41666666667
          1219.72916666667)
        Shape = qrsHorLine
      end
      object QRShape13: TQRShape
        Left = 20
        Top = 193
        Width = 461
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          52.9166666666667
          510.645833333333
          1219.72916666667)
        Shape = qrsHorLine
      end
      object QRLabel13: TQRLabel
        Left = 427
        Top = 139
        Width = 52
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1129.77083333333
          367.770833333333
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':«·„” ›Ì‹‹œ'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel14: TQRLabel
        Left = 412
        Top = 165
        Width = 65
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1090.08333333333
          436.5625
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':—ﬁ„ «·Õ”«»'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 344
        Top = 202
        Width = 133
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          910.166666666667
          534.458333333333
          351.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':Ì’—› ›Ì «·Õ”‹«» —ﬁ„ '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel16: TQRLabel
        Left = 381
        Top = 230
        Width = 97
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1008.0625
          608.541666666667
          256.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':«·„› ÊÕ »«”„ «·”Ìœ'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel17: TQRLabel
        Left = 426
        Top = 267
        Width = 52
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1127.125
          706.4375
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':«·‹Êﬂ‹‹«·…'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape11: TQRShape
        Left = 195
        Top = 381
        Width = 1
        Height = 140
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          370.416666666667
          515.9375
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
      end
      object QRLabel18: TQRLabel
        Left = 105
        Top = 390
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          277.8125
          1031.875
          216.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Œ‹‹« „ «·‹ ‹«—Ì‹Œ'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel19: TQRLabel
        Left = 57
        Top = 80
        Width = 117
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          55.5625
          150.8125
          211.666666666667
          309.5625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·‹‹„‹»‹·‹‹‹‹‹€'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel20: TQRLabel
        Left = 299
        Top = 13
        Width = 175
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          791.104166666667
          34.3958333333333
          463.020833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·„œÌ—Ì… «·ÃÂÊÌ… ··Œ“Ì‰… €—œ«Ì…'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel21: TQRLabel
        Left = 347
        Top = 45
        Width = 127
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          918.104166666667
          119.0625
          336.020833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«·‹‹—„‹‹“  :  110300'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel22: TQRLabel
        Left = 523
        Top = 12
        Width = 185
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1383.77083333333
          31.75
          489.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '«‘‹⁄‹‹«—  »«·‹ ‹Õ‹ÊÌ‹‹‹‹‹·'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
  end
end
