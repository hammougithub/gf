object F_etat_avis: TF_etat_avis
  Left = 246
  Top = 152
  Width = 544
  Height = 373
  HorzScrollBar.Position = 51
  VertScrollBar.Position = 48
  Caption = 'AVIS DE VIREMENT'
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
    Left = 5
    Top = -32
    Width = 1079
    Height = 576
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
      2855
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
    Units = MM
    Zoom = 100
    object QRDBText1: TQRDBText
      Left = 951
      Top = 91
      Width = 68
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2516.1875
        240.770833333333
        179.916666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_ligne
      DataField = 'MANDAT'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText2: TQRDBText
      Left = 793
      Top = 91
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2098.14583333333
        240.770833333333
        148.166666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_ligne
      DataField = 'Chapitre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 776
      Top = 91
      Width = 21
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2053.16666666667
        240.770833333333
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_ligne
      DataField = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 581
      Top = 91
      Width = 60
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1537.22916666667
        240.770833333333
        158.75)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_ligne
      DataField = 'Montant'
      Mask = '###,###,###.00'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText5: TQRDBText
      Left = 97
      Top = 91
      Width = 60
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        256.645833333333
        240.770833333333
        158.75)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_ligne
      DataField = 'Montant'
      Mask = '###,###,###.00'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText6: TQRDBText
      Left = 874
      Top = 153
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2312.45833333333
        404.8125
        89.9583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'Nom'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText7: TQRDBText
      Left = 420
      Top = 170
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1111.25
        449.791666666667
        89.9583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'Nom'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText8: TQRDBText
      Left = 369
      Top = 192
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        976.3125
        508
        177.270833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'COMPTE'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText9: TQRDBText
      Left = 825
      Top = 176
      Width = 69
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2182.8125
        465.666666666667
        182.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'BANQUE'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText10: TQRDBText
      Left = 721
      Top = 176
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1907.64583333333
        465.666666666667
        177.270833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'COMPTE'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText11: TQRDBText
      Left = 306
      Top = 224
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        809.625
        592.666666666667
        177.270833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'COMPTE'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText12: TQRDBText
      Left = 363
      Top = 248
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        960.4375
        656.166666666667
        89.9583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'Nom'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText13: TQRDBText
      Left = 325
      Top = 280
      Width = 69
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        859.895833333333
        740.833333333333
        182.5625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = F_principale.t_fournisseur
      DataField = 'BANQUE'
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
  end
end
