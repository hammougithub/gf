object f_etat_credit: Tf_etat_credit
  Left = 140
  Top = 98
  Caption = 'f_etat_credits'
  ClientHeight = 651
  ClientWidth = 1020
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
    Top = 112
    Width = 1123
    Height = 794
    BeforePrint = initial_var
    DataSet = f_dm.ClientDataSet_chapitre
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      10.000000000000000000
      2100.000000000000000000
      10.000000000000000000
      2970.000000000000000000
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
    object QRBand1: TQRBand
      Left = 4
      Top = 4
      Width = 1115
      Height = 82
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        216.958333333333400000
        2950.104166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 74
        Top = 19
        Width = 170
        Height = 17
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          50.270833333333330000
          449.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MINISTERE DES FINANCES'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 74
        Top = 54
        Width = 298
        Height = 17
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          142.875000000000000000
          788.458333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DIRECTION REGIONALE DU TRESOR GHARDAIA'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object ldate: TQRLabel
        Left = 739
        Top = 61
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666670000
          1955.270833333333000000
          161.395833333333300000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ldate'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 74
        Top = 36
        Width = 294
        Height = 19
        Size.Values = (
          50.270833333333330000
          195.791666666666700000
          95.250000000000000000
          777.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DIRECTION GENERALE DE LA COMPTABILITE.'
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
      object QRLabel3: TQRLabel
        Left = 1022
        Top = 64
        Width = 16
        Height = 14
        Size.Values = (
          37.041666666666670000
          2704.041666666667000000
          169.333333333333300000
          42.333333333333330000)
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
      object QRLabel4: TQRLabel
        Left = 484
        Top = 61
        Width = 244
        Height = 17
        Size.Values = (
          44.979166666666670000
          1280.583333333333000000
          161.395833333333300000
          645.583333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SITUATION DES CREDITS ARRETEE AU'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 4
      Top = 86
      Width = 1115
      Height = 55
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        145.520833333333300000
        2950.104166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 74
        Top = 0
        Width = 49
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          0.000000000000000000
          129.645833333333300000)
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
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 74
        Top = 18
        Width = 49
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          47.625000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Chapitre'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 74
        Top = 36
        Width = 49
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          95.250000000000000000
          129.645833333333300000)
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
      object QRLabel9: TQRLabel
        Left = 124
        Top = 0
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          328.083333333333300000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Cr'#233'dits'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 124
        Top = 18
        Width = 101
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          328.083333333333300000
          47.625000000000000000
          267.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'affect'#233's'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 124
        Top = 36
        Width = 101
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          328.083333333333300000
          95.250000000000000000
          267.229166666666700000)
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
      object QRLabel12: TQRLabel
        Left = 227
        Top = 0
        Width = 307
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          600.604166666666800000
          0.000000000000000000
          812.270833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Mouvements d'#39'ordre de virement'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 226
        Top = 18
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          597.958333333333200000
          47.625000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'En plus'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 329
        Top = 36
        Width = 102
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          870.479166666666800000
          95.250000000000000000
          269.875000000000000000)
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
      object QRLabel15: TQRLabel
        Left = 432
        Top = 18
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          47.625000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Dot. divers'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 432
        Top = 36
        Width = 102
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          95.250000000000000000
          269.875000000000000000)
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
        Left = 535
        Top = 18
        Width = 102
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          47.625000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'd'#233'penses'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 535
        Top = 0
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Montant des'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 226
        Top = 36
        Width = 102
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          597.958333333333200000
          95.250000000000000000
          269.875000000000000000)
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
      object QRLabel20: TQRLabel
        Left = 329
        Top = 18
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          870.479166666666800000
          47.625000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'En moins'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 535
        Top = 36
        Width = 102
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          95.250000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'engag'#233'es'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 638
        Top = 0
        Width = 45
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          0.000000000000000000
          119.062500000000000000)
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
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 638
        Top = 36
        Width = 45
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          95.250000000000000000
          119.062500000000000000)
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
      object QRLabel25: TQRLabel
        Left = 638
        Top = 18
        Width = 45
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          47.625000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Taux'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 684
        Top = 0
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1809.750000000000000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Solde dispo-'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 684
        Top = 18
        Width = 102
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1809.750000000000000000
          47.625000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'nible apr'#232's'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 684
        Top = 36
        Width = 102
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          1809.750000000000000000
          95.250000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'engagement'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 787
        Top = 0
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          2082.270833333333000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Montant des'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 787
        Top = 17
        Width = 102
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          2082.270833333333000000
          44.979166666666670000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'd'#233'penses'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 787
        Top = 36
        Width = 102
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          2082.270833333333000000
          95.250000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'mandat'#233'es'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 890
        Top = 0
        Width = 102
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          2354.791666666667000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Solde dispo-'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 890
        Top = 18
        Width = 102
        Height = 17
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          2354.791666666667000000
          47.625000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'nible apr'#232's'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 890
        Top = 36
        Width = 102
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          2354.791666666667000000
          95.250000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'mandatement'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 993
        Top = 0
        Width = 45
        Height = 17
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          2627.312500000000000000
          0.000000000000000000
          119.062500000000000000)
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
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 993
        Top = 18
        Width = 45
        Height = 17
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          2627.312500000000000000
          47.625000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Taux'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 993
        Top = 36
        Width = 45
        Height = 17
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          2627.312500000000000000
          95.250000000000000000
          119.062500000000000000)
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
    end
    object QRGroup1: TQRGroup
      Left = 4
      Top = 141
      Width = 1115
      Height = 20
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        2950.104166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'chapitre'
      FooterBand = QRBand3
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText3: TQRDBText
        Left = 16
        Top = 4
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          10.583333333333330000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'CHAPITRE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 4
      Top = 161
      Width = 1115
      Height = 23
      AlignToBottom = False
      BeforePrint = ligne
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666680000
        2950.104166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRDBText4: TQRDBText
        Left = 74
        Top = 0
        Width = 49
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          195.791666666666700000
          0.000000000000000000
          129.645833333333300000)
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
        FontSize = 10
      end
      object qrlca: TQRLabel
        Left = 124
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          328.083333333333300000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlenmoins: TQRLabel
        Left = 329
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          870.479166666666800000
          0.000000000000000000
          269.875000000000000000)
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
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLdd: TQRLabel
        Left = 432
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          1143.000000000000000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '                     '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlmde: TQRLabel
        Left = 535
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          1415.520833333333000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlmde'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlmdm: TQRLabel
        Left = 787
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          2082.270833333333000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlmdm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlenplus: TQRLabel
        Left = 226
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          597.958333333333200000
          0.000000000000000000
          269.875000000000000000)
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
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltaux1: TQRLabel
        Left = 638
        Top = 0
        Width = 45
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          1688.041666666667000000
          0.000000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltaux1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlsolde1: TQRLabel
        Left = 684
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          1809.750000000000000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlsolde1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlsolde2: TQRLabel
        Left = 890
        Top = 0
        Width = 102
        Height = 23
        Frame.DrawLeft = True
        Size.Values = (
          60.854166666666680000
          2354.791666666667000000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlsolde2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltaux2: TQRLabel
        Left = 993
        Top = 0
        Width = 45
        Height = 23
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          60.854166666666680000
          2627.312500000000000000
          0.000000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltaux2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    object QRBand4: TQRBand
      Left = 4
      Top = 184
      Width = 1115
      Height = 96
      AlignToBottom = False
      BeforePrint = total
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        254.000000000000000000
        2950.104166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel37: TQRLabel
        Left = 74
        Top = 3
        Width = 49
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          195.791666666666700000
          7.937500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TOTAL'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLTCA: TQRLabel
        Left = 124
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          328.083333333333300000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLTCA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltep: TQRLabel
        Left = 226
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          597.958333333333200000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltep'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltem: TQRLabel
        Left = 329
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          870.479166666666800000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltem'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltdd: TQRLabel
        Left = 432
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          1143.000000000000000000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltdd'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltme: TQRLabel
        Left = 535
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          1415.520833333333000000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltme'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRltaux11: TQRLabel
        Left = 638
        Top = 3
        Width = 45
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          1688.041666666667000000
          7.937500000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRltaux11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlsolde11: TQRLabel
        Left = 684
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          1809.750000000000000000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlsolde11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlsolde22: TQRLabel
        Left = 890
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          2354.791666666667000000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrlsolde22'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltaux22: TQRLabel
        Left = 993
        Top = 3
        Width = 45
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          50.270833333333330000
          2627.312500000000000000
          7.937500000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltaux22'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrltdm: TQRLabel
        Left = 787
        Top = 3
        Width = 102
        Height = 19
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          50.270833333333330000
          2082.270833333333000000
          7.937500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrltdm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 74
        Top = -1
        Width = 964
        Height = 5
        Size.Values = (
          13.229166666666670000
          195.791666666666700000
          -2.645833333333333000
          2550.583333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 1188
        Top = 80
        Width = 299
        Height = 17
        Size.Values = (
          44.979166666666670000
          3143.250000000000000000
          211.666666666666700000
          791.104166666666800000)
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
      object QRLabel5: TQRLabel
        Left = 74
        Top = 34
        Width = 244
        Height = 18
        Size.Values = (
          47.625000000000000000
          195.791666666666700000
          89.958333333333320000
          645.583333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VISA DU TRESORIER DE WILAYA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel39: TQRLabel
        Left = 708
        Top = 34
        Width = 330
        Height = 18
        Size.Values = (
          47.625000000000000000
          1873.250000000000000000
          89.958333333333320000
          873.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VISA DU DIRECTEUR REGIONAL DU TRESOR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
    end
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
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      'where chapitre=:x and plus_moins='#39'n'#39' and gestion=:y')
    SQLConnection = f_dm.connect_db_gf
    Left = 16
    Top = 64
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
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      'where chapitre=:x and plus_moins='#39'm'#39' and gestion=:y')
    SQLConnection = f_dm.connect_db_gf
    Left = 184
  end
  object q_mde: TSQLQuery
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
        DataType = ftDate
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from det_eng where objet='#39'd'#39' and chapitre=:' +
        'x and gestion=:y and dates<=:z')
    SQLConnection = f_dm.connect_db_gf
    Left = 352
    Top = 8
  end
  object q_mde_eco: TSQLQuery
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
        DataType = ftDate
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from det_eng where objet='#39'e'#39' and chapitre=:' +
        'x and gestion=:y and dates<=:z ')
    SQLConnection = f_dm.connect_db_gf
    Left = 400
    Top = 16
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
        DataType = ftDate
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from lignes where chapitre=:x and gestion=:' +
        'y and dates<=:z')
    SQLConnection = f_dm.connect_db_gf
    Left = 256
    Top = 88
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
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      'where chapitre=:x and plus_moins='#39'p'#39' and gestion=:y')
    SQLConnection = f_dm.connect_db_gf
    Left = 72
    Top = 32
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
        DataType = ftDate
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from mandat_reimpute  where chapitre=:x and' +
        ' gestion=:y and dates<=:z')
    SQLConnection = f_dm.connect_db_gf
    Left = 424
    Top = 72
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
        DataType = ftUnknown
        Name = 'w'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from depenses_annulees'
      'where gestion=:x and chapitre=:y   and dates<:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 512
    Top = 48
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
    Left = 592
    Top = 35
  end
end
