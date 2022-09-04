object f_etat_journal: Tf_etat_journal
  Left = 10
  Top = 92
  Caption = 'f_etat_journal'
  ClientHeight = 576
  ClientWidth = 906
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
    Left = 24
    Top = 8
    Width = 952
    Height = 1347
    DataSet = f_journal.ClientDataSet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      0.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      2100.000000000000000000
      100.000000000000000000
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
    Units = MM
    Zoom = 120
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 45
      Top = 23
      Width = 907
      Height = 272
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        599.722222222222200000
        1999.809027777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 510
        Top = 29
        Width = 301
        Height = 29
        Size.Values = (
          63.940972222222200000
          1124.479166666670000000
          63.940972222222200000
          663.663194444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'JOURNAL DES MANDATS'
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
      object QRLabel2: TQRLabel
        Left = 585
        Top = 58
        Width = 170
        Height = 29
        Size.Values = (
          63.940972222222200000
          1289.843750000000000000
          127.881944444444000000
          374.826388888889000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DE PAIEMENT'
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
      object QRLabel3: TQRLabel
        Left = 3
        Top = 86
        Width = 96
        Height = 20
        Size.Values = (
          44.097222222222200000
          6.614583333333330000
          189.618055555556000000
          211.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Ordonnateur'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 34
        Top = 115
        Width = 68
        Height = 20
        Size.Values = (
          44.097222222222200000
          74.965277777777800000
          253.559027777778000000
          149.930555555556000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Gestion'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 67
        Top = 144
        Width = 58
        Height = 20
        Size.Values = (
          44.097222222222200000
          147.725694444444000000
          317.500000000000000000
          127.881944444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Section'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 69
        Top = 173
        Width = 116
        Height = 20
        Size.Values = (
          44.097222222222200000
          152.135416666667000000
          381.440972222222000000
          255.763888888889000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Date de journ'#233'e'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 104
        Top = 115
        Width = 49
        Height = 20
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.097222222222200000
          229.305555555556000000
          253.559027777778000000
          108.038194444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_journal.ClientDataSet1
        DataField = 'Gestion'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 101
        Top = 86
        Width = 40
        Height = 20
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.097222222222200000
          222.690972222222000000
          189.618055555556000000
          88.194444444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '055'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 128
        Top = 144
        Width = 40
        Height = 20
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.097222222222200000
          282.222222222222000000
          317.500000000000000000
          88.194444444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '110'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 441
        Top = 154
        Width = 363
        Height = 20
        Size.Values = (
          44.097222222222200000
          972.343750000000000000
          339.548611111111000000
          800.364583333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'R'#233'publique Alg'#233'rienne D'#233'mocratique et Populaire'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 440
        Top = 219
        Width = 322
        Height = 20
        Size.Values = (
          44.097222222222230000
          970.138888888889000000
          482.864583333333400000
          709.965277777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Direction R'#233'gionale du Tr'#233'sor '#224' GHARDAIA'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 189
        Top = 173
        Width = 116
        Height = 35
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          77.170138888888900000
          416.718750000000000000
          381.440972222222000000
          255.763888888889000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                       '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 440
        Top = 197
        Width = 266
        Height = 20
        Size.Values = (
          44.097222222222230000
          970.138888888888900000
          434.357638888889000000
          586.493055555555700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Direction G'#233'n'#233'rale de la comptabilit'#233
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 440
        Top = 176
        Width = 167
        Height = 20
        Size.Values = (
          44.097222222222230000
          970.138888888888900000
          388.055555555555500000
          368.211805555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Minist'#232're des Finances'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 45
      Top = 295
      Width = 907
      Height = 62
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        136.701388888888900000
        1999.809027777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel12: TQRLabel
        Left = 0
        Top = 0
        Width = 84
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          0.000000000000000000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '    Num'#233'ro'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 0
        Top = 41
        Width = 84
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          89.958333333333300000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   mandats'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 85
        Top = 0
        Width = 83
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222200000
          187.413194444444000000
          0.000000000000000000
          183.003472222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 85
        Top = 41
        Width = 83
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222200000
          187.413194444444000000
          90.399305555555600000
          183.003472222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 85
        Top = 20
        Width = 83
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222200000
          187.413194444444000000
          44.097222222222200000
          183.003472222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '  Chapitre'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 0
        Top = 20
        Width = 84
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          44.979166666666700000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '       des'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 168
        Top = 0
        Width = 36
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          370.416666666667000000
          0.000000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 168
        Top = 20
        Width = 36
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          370.416666666667000000
          44.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '  Art'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 168
        Top = 41
        Width = 36
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          370.416666666667000000
          89.958333333333300000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 204
        Top = 0
        Width = 84
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          449.791666666667000000
          0.000000000000000000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '    Num'#233'ro'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 204
        Top = 41
        Width = 84
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          449.791666666667000000
          89.958333333333300000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   l'#39'engagt.'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 204
        Top = 20
        Width = 84
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          449.791666666667000000
          44.979166666666700000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '         de'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 288
        Top = 0
        Width = 41
        Height = 20
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          635.000000000000000000
          0.000000000000000000
          89.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 288
        Top = 20
        Width = 41
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          635.000000000000000000
          44.979166666666700000
          89.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Code'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 288
        Top = 41
        Width = 41
        Height = 20
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          635.000000000000000000
          89.958333333333300000
          89.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 331
        Top = 40
        Width = 107
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          45.861111111111100000
          730.250000000000000000
          88.194444444444400000
          236.361111111111000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' Par Cr'#233'ance '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 440
        Top = 40
        Width = 106
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          45.861111111111100000
          970.138888888889000000
          88.194444444444400000
          232.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' Par Mandat'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 547
        Top = 40
        Width = 106
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          45.861111111111100000
          1206.500000000000000000
          88.194444444444400000
          232.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' Par Chapitre '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 654
        Top = 40
        Width = 158
        Height = 21
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          1442.861111111110000000
          88.194444444444400000
          349.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '       en d'#233'pense'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 331
        Top = 0
        Width = 322
        Height = 38
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666700000
          730.250000000000000000
          0.000000000000000000
          709.083333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                      M O N T A N T'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 654
        Top = 0
        Width = 158
        Height = 21
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          1442.861111111110000000
          0.000000000000000000
          349.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '            Date'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 654
        Top = 19
        Width = 158
        Height = 21
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          45.861111111111100000
          1442.861111111110000000
          42.333333333333300000
          349.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '       d'#39'admission '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 45
      Top = 357
      Width = 907
      Height = 20
      AlignToBottom = False
      BeforePrint = montandumandat
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.097222222222230000
        1999.809027777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = 0
        Width = 84
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          0.000000000000000000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_journal.ClientDataSet1
        DataField = 'MANDAT'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 85
        Top = 0
        Width = 83
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222200000
          187.413194444444000000
          0.000000000000000000
          183.003472222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_journal.ClientDataSet1
        DataField = 'Chapitre'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 168
        Top = 0
        Width = 36
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          370.416666666667000000
          0.000000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_journal.ClientDataSet1
        DataField = 'Article'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 205
        Top = 1
        Width = 84
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.097222222222220000
          451.996527777777800000
          2.204861111111111000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = f_journal.ClientDataSet1
        DataField = 'NUM_ENGAGEMENT'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object ligne_verticale1: TQRShape
        Left = 0
        Top = 20
        Width = 1
        Height = 800
        Size.Values = (
          1763.888888888889000000
          0.000000000000000000
          44.097222222222230000
          2.204861111111111000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lv2: TQRShape
        Left = 85
        Top = 20
        Width = 1
        Height = 795
        Size.Values = (
          1752.864583333333000000
          187.413194444444400000
          44.097222222222230000
          2.204861111111111000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lv3: TQRShape
        Left = 168
        Top = 20
        Width = 1
        Height = 790
        Size.Values = (
          1741.840277777778000000
          370.416666666666700000
          44.097222222222230000
          2.204861111111111000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lv4: TQRShape
        Left = 205
        Top = 20
        Width = 2
        Height = 800
        Size.Values = (
          1763.888888888889000000
          451.996527777777800000
          44.097222222222230000
          4.409722222222222000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lv5: TQRShape
        Left = 288
        Top = 20
        Width = 2
        Height = 770
        Size.Values = (
          1697.743055555556000000
          635.000000000000000000
          44.097222222222220000
          4.409722222222222000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText6: TQRDBText
        Left = 288
        Top = 0
        Width = 40
        Height = 20
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666700000
          635.000000000000000000
          0.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'QRDBText6'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object mt1: TQRLabel
        Left = 330
        Top = 0
        Width = 108
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          46.302083333333300000
          727.604166666667000000
          0.000000000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'mt1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object mt3: TQRLabel
        Left = 547
        Top = 0
        Width = 106
        Height = 29
        Frame.DrawLeft = True
        Size.Values = (
          63.500000000000000000
          1206.500000000000000000
          0.000000000000000000
          232.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'mt3'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object mt2: TQRLabel
        Left = 440
        Top = 0
        Width = 106
        Height = 21
        Frame.DrawLeft = True
        Size.Values = (
          45.861111111111100000
          970.138888888889000000
          0.000000000000000000
          232.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'mt2'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lv6: TQRShape
        Left = 330
        Top = 20
        Width = 2
        Height = 770
        Size.Values = (
          1697.743055555556000000
          727.604166666666700000
          44.097222222222220000
          4.409722222222222000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lv7: TQRShape
        Left = 440
        Top = 20
        Width = 2
        Height = 770
        Size.Values = (
          1697.743055555556000000
          970.138888888888900000
          44.097222222222220000
          4.409722222222222000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 654
        Top = 0
        Width = 158
        Height = 29
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          63.500000000000000000
          1442.861111111110000000
          0.000000000000000000
          349.250000000000000000)
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
        FontSize = 10
      end
      object lv8: TQRShape
        Left = 547
        Top = 20
        Width = 2
        Height = 770
        Hint = 'lv7'
        Size.Values = (
          1697.743055555556000000
          1206.059027777778000000
          44.097222222222220000
          4.409722222222222000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lv10: TQRShape
        Left = 813
        Top = 20
        Width = 2
        Height = 770
        Size.Values = (
          1697.743055555556000000
          1792.552083333333000000
          44.097222222222220000
          4.409722222222222000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lv11: TQRShape
        Left = 654
        Top = 20
        Width = 2
        Height = 770
        Size.Values = (
          1697.743055555556000000
          1441.979166666667000000
          44.097222222222220000
          4.409722222222222000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand4: TQRBand
      Left = 45
      Top = 377
      Width = 907
      Height = 140
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        308.680555555555600000
        1999.809027777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object lh: TQRShape
        Left = 0
        Top = 0
        Width = 815
        Height = 1
        Size.Values = (
          2.204861111111110000
          0.000000000000000000
          0.000000000000000000
          1796.961805555560000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 6
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
end
