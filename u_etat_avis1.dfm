object F_etat_avis1: TF_etat_avis1
  Left = 185
  Top = 149
  Width = 544
  Height = 375
  VertScrollBar.Position = 268
  Caption = 'F_etat_avis1'
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
    Left = 40
    Top = -244
    Width = 1079
    Height = 576
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = printer_setup
    DataSet = F_principale.t_ligne
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
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
    Units = Inches
    Zoom = 100
    object QRBand1: TQRBand
      Left = 0
      Top = 0
      Width = 1079
      Height = 420
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        1112.52
        2854.85416666667)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 906
        Top = 100
        Width = 44
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2397.125
          264.583333333333
          116.416666666667)
        Alignment = taRightJustify
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
      object QRDBText2: TQRDBText
        Left = 762
        Top = 100
        Width = 52
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2016.125
          264.583333333333
          137.583333333333)
        Alignment = taRightJustify
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
      object QRDBText3: TQRDBText
        Left = 39
        Top = 137
        Width = 394
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          103.1875
          362.479166666667
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
      object QRDBText4: TQRDBText
        Left = 746
        Top = 100
        Width = 23
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1973.79166666667
          264.583333333333
          60.8541666666667)
        Alignment = taRightJustify
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
        Left = 530
        Top = 101
        Width = 117
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1402.29166666667
          267.229166666667
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_ligne
        DataField = 'Montant'
        Font.Charset = ARABIC_CHARSET
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
        Left = 55
        Top = 101
        Width = 117
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          145.520833333333
          267.229166666667
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = F_principale.t_ligne
        DataField = 'Montant'
        Font.Charset = ARABIC_CHARSET
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
      object QRDBText7: TQRDBText
        Left = 513
        Top = 122
        Width = 364
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1357.3125
          322.791666666667
          963.083333333333)
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
      object QRDBText8: TQRDBText
        Left = -19
        Top = 224
        Width = 400
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          -50.2708333333333
          592.666666666667
          1058.33333333333)
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
      object QRDBText9: TQRDBText
        Left = 720
        Top = 159
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
          420.6875
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
      object QRDBText10: TQRDBText
        Left = 515
        Top = 159
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
          420.6875
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
      object QRDBText11: TQRDBText
        Left = 97
        Top = 164
        Width = 320
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          256.645833333333
          433.916666666667
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
      object QRDBText12: TQRDBText
        Left = 25
        Top = 196
        Width = 325
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          66.1458333333333
          518.583333333333
          859.895833333333)
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
      object QRDBText13: TQRDBText
        Left = 235
        Top = 265
        Width = 192
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          621.770833333333
          701.145833333333
          508)
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
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 252
    Top = 80
  end
end
