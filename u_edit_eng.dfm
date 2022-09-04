object f_edit_eng: Tf_edit_eng
  Left = 6
  Top = 29
  Caption = 'Edition_engagement'
  ClientHeight = 723
  ClientWidth = 1521
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate
  OnShow = refresh
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1521
    Height = 723
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 344
      Width = 1519
      Height = 198
      Align = alBottom
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 1517
        Height = 196
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = clSkyBlue
        DataSource = f_dm.ds_det_eng_ib
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'LIGNE'
            Width = 50
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'DESIGNATION'
            Width = 480
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'DESIGNATION1'
            Title.Caption = 'DESIGNATION2'
            Width = 480
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MONTANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_OU_MISS'
            Width = 80
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 542
      Width = 1519
      Height = 155
      Align = alBottom
      TabOrder = 1
      object Panel9: TPanel
        Left = 1
        Top = 27
        Width = 1517
        Height = 25
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 1462
          Top = 1
          Width = 54
          Height = 23
          Align = alRight
          Caption = #1575#1604#1587#1591#1585' '#1575#1604#1575#1608#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 16
        end
        object DBEdit1: TDBEdit
          Left = 1
          Top = 1
          Width = 1461
          Height = 23
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clSkyBlue
          DataField = 'LIGNE1'
          DataSource = f_dm.ds_obs_ib
          ParentBiDiMode = False
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel10: TPanel
        Left = 1
        Top = 52
        Width = 1517
        Height = 26
        Align = alTop
        TabOrder = 1
        object Label6: TLabel
          Left = 1456
          Top = 1
          Width = 60
          Height = 24
          Align = alRight
          Caption = #1575#1604#1587#1591#1585' '#1575#1604#1579#1575#1606#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 16
        end
        object DBEdit2: TDBEdit
          Left = 1
          Top = 1
          Width = 1455
          Height = 24
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clSkyBlue
          DataField = 'LIGNE2'
          DataSource = f_dm.ds_obs_ib
          ParentBiDiMode = False
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel11: TPanel
        Left = 1
        Top = 78
        Width = 1517
        Height = 26
        Align = alTop
        TabOrder = 2
        object Label7: TLabel
          Left = 1458
          Top = 1
          Width = 58
          Height = 24
          Align = alRight
          Caption = #1575#1604#1587#1591#1585' '#1575#1604#1579#1575#1604#1579
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 16
        end
        object DBEdit3: TDBEdit
          Left = 1
          Top = 1
          Width = 1457
          Height = 24
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clSkyBlue
          DataField = 'LIGNE3'
          DataSource = f_dm.ds_obs_ib
          ParentBiDiMode = False
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel12: TPanel
        Left = 1
        Top = 104
        Width = 1517
        Height = 25
        Align = alTop
        TabOrder = 3
        object Label8: TLabel
          Left = 1458
          Top = 1
          Width = 58
          Height = 23
          Align = alRight
          Caption = #1575#1604#1587#1591#1585' '#1575#1604#1585#1575#1576#1593
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 16
        end
        object DBEdit4: TDBEdit
          Left = 1
          Top = 1
          Width = 1457
          Height = 23
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clSkyBlue
          DataField = 'LIGNE4'
          DataSource = f_dm.ds_obs_ib
          ParentBiDiMode = False
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel14: TPanel
        Left = 1
        Top = 1
        Width = 1517
        Height = 26
        Align = alTop
        TabOrder = 4
        object Label4: TLabel
          Left = 1291
          Top = 1
          Width = 225
          Height = 24
          Align = alRight
          Caption = #1605#1600#1600#1600#1600#1600#1600#1604#1575#1581#1600#1600#1600#1600#1600#1600#1592#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578' '#1575#1604#1600#1605#1600#1600#1600#1600#1589#1600#1600#1600#1600#1600#1600#1600#1600#1604#1600#1600#1600#1600#1581#1600#1600#1600#1577
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 16
        end
      end
      object Panel16: TPanel
        Left = 1
        Top = 130
        Width = 1517
        Height = 24
        Align = alBottom
        TabOrder = 5
        object DBNavigator2: TDBNavigator
          Left = 1008
          Top = 1
          Width = 508
          Height = 22
          DataSource = f_dm.ds_obs_ib
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alRight
          TabOrder = 0
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1519
      Height = 343
      Align = alClient
      TabOrder = 2
      object Panel5: TPanel
        Left = 761
        Top = 1
        Width = 757
        Height = 341
        Align = alClient
        TabOrder = 0
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 755
          Height = 22
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 164
            Top = 1
            Width = 331
            Height = 20
            Align = alRight
            Caption = 'Double cliquer sur l'#39'engagement pour imprimer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitLeft = -275
            ExplicitHeight = 16
          end
          object Label1: TLabel
            Left = 584
            Top = 1
            Width = 170
            Height = 20
            Align = alRight
            Caption = 'Table des engagements'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            ExplicitLeft = 145
            ExplicitHeight = 16
          end
          object Edit1: TEdit
            Left = 495
            Top = 1
            Width = 89
            Height = 20
            Align = alRight
            Color = clSkyBlue
            TabOrder = 0
            OnChange = seek_eng
            ExplicitHeight = 21
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 317
          Width = 755
          Height = 23
          Align = alBottom
          TabOrder = 1
          object DBNavigator1: TDBNavigator
            Left = 330
            Top = 1
            Width = 424
            Height = 21
            DataSource = f_dm.ds_eng_ib
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 1
          end
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 23
          Width = 755
          Height = 294
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clSkyBlue
          DataSource = f_dm.ds_eng_ib
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = etat
          Columns = <
            item
              Expanded = False
              FieldName = 'GESTION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FICHE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STRUCTURE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAPITRE'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARTICLE'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBJET'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UTILISATEUR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_MAJ'
              Visible = True
            end>
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 760
        Height = 341
        Align = alLeft
        TabOrder = 1
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 758
          Height = 16
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          Caption = 'Parametres de l'#39#233'tat Engagement'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          ExplicitWidth = 239
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 17
          Width = 758
          Height = 269
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clSkyBlue
          DataSource = DataSource1
          DrawingStyle = gdsGradient
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FORME'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESIGNATION'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAMP'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIBELLEAR'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIBELLEFR'
              Width = 250
              Visible = True
            end>
        end
        object Panel15: TPanel
          Left = 1
          Top = 286
          Width = 758
          Height = 23
          Align = alBottom
          TabOrder = 1
          object DBNavigator3: TDBNavigator
            Left = 433
            Top = 1
            Width = 324
            Height = 21
            DataSource = DataSource1
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 1
          end
        end
        object TPanel
          Left = 1
          Top = 309
          Width = 758
          Height = 31
          Align = alBottom
          TabOrder = 2
          object cb1: TCheckBox
            Left = 426
            Top = 1
            Width = 331
            Height = 29
            Align = alRight
            Caption = #1604#1600#1591#1600#1576#1593' '#1591#1600#1576#1610#1600#1600#1600#1600#1593#1600#1600#1600#1600#1577' '#1575#1604#1575#1604#1600#1578#1600#1586#1575#1605#1600#1575#1578'  '#1601#1610' '#1587#1591#1585#1610#1606'  '#1575#1606#1602#1600#1600#1585' '#1575#1604#1600#1582#1600#1575#1606#1577
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            TabOrder = 0
          end
          object cb: TCheckBox
            Left = 1
            Top = 1
            Width = 304
            Height = 29
            Align = alLeft
            Caption = 
              #1604#1600#1591#1600#1576#1593' '#1575#1604#1600#1585#1589#1610#1600#1600#1600#1600#1583' '#1575#1604#1600#1602#1600#1583#1610#1600#1600#1605' '#1608' '#1575#1604#1585#1589#1610#1600#1600#1600#1600#1583' '#1575#1604#1580#1600#1583#1610#1600#1600#1600#1583' '#1575#1606#1602#1600#1600#1585' '#1575#1604#1600 +
              #1582#1600#1575#1606#1577
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            State = cbChecked
            TabOrder = 1
          end
        end
      end
    end
    object Panel13: TPanel
      Left = 1
      Top = 697
      Width = 1519
      Height = 25
      Align = alBottom
      TabOrder = 3
      object Button1: TButton
        Left = 257
        Top = 1
        Width = 129
        Height = 23
        Align = alLeft
        Caption = 'Configurer Imprimante'
        TabOrder = 0
        OnClick = config
      end
      object Button2: TButton
        Left = 1
        Top = 1
        Width = 256
        Height = 23
        Align = alLeft
        Caption = 'Afficher et masquer (Libell'#233'es) de l'#39#233'tat Engagement'
        TabOrder = 1
        OnClick = param
      end
      object fs_ds: TButton
        Left = 386
        Top = 1
        Width = 101
        Height = 23
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Designer Fs'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        OnClick = dsfs
      end
      object fs: TButton
        Left = 487
        Top = 1
        Width = 82
        Height = 23
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Fastreport'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        OnClick = fsClick
      end
      object print: TButton
        Left = 569
        Top = 1
        Width = 75
        Height = 23
        Align = alLeft
        Caption = #1591#1600#1576#1575#1593#1600#1577
        Enabled = False
        TabOrder = 4
        OnClick = printClick
      end
      object preview: TButton
        Left = 718
        Top = 1
        Width = 74
        Height = 23
        Align = alLeft
        Caption = #1593#1604#1609' '#1575#1604#1588#1600#1600#1575#1588#1577
        Enabled = False
        TabOrder = 5
        OnClick = previewClick
      end
      object esc: TButton
        Left = 644
        Top = 1
        Width = 74
        Height = 23
        Align = alLeft
        Caption = 'Cancel'
        Enabled = False
        TabOrder = 6
        OnClick = escClick
      end
      object fin: TButton
        Left = 792
        Top = 1
        Width = 75
        Height = 23
        Align = alLeft
        Caption = 'F I N'
        TabOrder = 7
        OnClick = finClick
      end
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 1104
    Top = 272
  end
  object PrintDialog1: TPrintDialog
    Left = 1120
    Top = 88
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 1096
    Top = 136
  end
  object SaveDialog1: TSaveDialog
    Left = 1104
    Top = 200
  end
  object simpledataset_parameters: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 
      'select * from parameters  where forme='#39'f_eng_prev'#39' or '#13#10' forme='#39 +
      'f_etat_engagement'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 120
    Top = 136
  end
  object simpledataset_parameters1: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters where forme='#39'f_eng_preview'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 120
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = simpledataset_parameters
    Left = 992
    Top = 128
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44321.428022060200000000
    ReportOptions.LastChange = 44336.686413738430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 471
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      RightMargin = 0.508000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 1122.822450000000000000
        Top = 18.897650000000000000
        Width = 1630.081052760000000000
        object QRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 1101.000000000000000000
          Top = 29.102350000000000000
          Width = 244.400000000000000000
          Height = 22.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1600#1600#1601#1600#1600#1600#1575#1589#1600#1610#1600#1600#1600#1600#1600#1600#1604' '#1575#1604#1575#1604#1600#1578#1600#1600#1586#1575#1605#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object QRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 414.800000000000000000
          Top = 188.502350000000000000
          Width = 260.800000000000000000
          Height = 30.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1600#1610#1600#1586#1575#1606#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577' '#1575#1604#1600#1583#1608#1604#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577)
          ParentFont = False
        end
        object QRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 599.800000000000000000
          Top = 261.302350000000000000
          Width = 119.000000000000000000
          Height = 48.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '     '#1578#1600#1571#1588#1610#1600#1600#1600#1600#1585#1577'      '
            #1575#1604#1605#1600#1585#1575#1602#1576' '#1575#1604#1600#1605#1600#1600#1600#1575#1604#1610)
          ParentFont = False
        end
        object QRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 599.800000000000000000
          Top = 310.302350000000000000
          Width = 119.000000000000000000
          Height = 48.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            ' '#1585#1602#1600#1600#1600#1600#1600#1605' '
            #1578#1600#1600#1600#1575#1585#1610#1582' ')
          ParentFont = False
        end
        object memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 362.000000000000000000
          Top = 315.702350000000000000
          Width = 133.200000000000000000
          Height = 30.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1600#1589#1600#1604#1600#1581#1600#1577' : '#1605'.'#1580'.'#1582)
          ParentFont = False
          VAlign = vaCenter
        end
        object memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 359.800000000000000000
          Top = 271.102350000000000000
          Width = 136.400000000000000000
          Height = 39.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            #1608#1586#1575#1585#1577'   :  110 347')
          ParentFont = False
          VAlign = vaCenter
        end
        object QRLabel12: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 211.800000000000000000
          Top = 268.302350000000000000
          Width = 51.800000000000000000
          Height = 39.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            #1587#1600#1600#1606#1600#1577'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object QRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 145.000000000000000000
          Top = 308.302350000000000000
          Width = 119.000000000000000000
          Height = 29.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            #1576#1600#1600#1591#1600#1600#1575#1602#1600#1600#1600#1577' '#1585#1602#1600#1600#1600#1600#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object QRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 426.400000000000000000
          Top = 411.502350000000000000
          Width = 76.000000000000000000
          Height = 26.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            ': '#1605#1600#1600#1608#1590#1600#1600#1608#1593)
          ParentFont = False
        end
        object QRShape1_1: TfrxShapeView
          AllowVectorExport = True
          Left = 105.600000000000000000
          Top = 403.502350000000000000
          Width = 685.440000000000000000
          Height = 80.000000000000000000
          Frame.Typ = []
        end
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Left = 854.400000000000000000
          Top = 125.102350000000000000
          object TableColumn2: TfrxTableColumn
            Width = 95.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 630.257266666667000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 46.080000000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow8: TfrxTableRow
            Height = 28.800000000000000000
            object TableCell28: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                #1575#1604#1600#1605#1600#1576#1600#1604#1600#1600#1594)
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                #1591#1600#1576#1610#1600#1600#1600#1600#1593#1600#1600#1600#1600#1577' '#1575#1604#1575#1604#1600#1578#1600#1586#1575#1605#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578)
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell30: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftRight, ftTop, ftBottom]
            end
          end
          object ligne1: TfrxTableRow
            Height = 26.880000000000000000
            object m1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow9: TfrxTableRow
            Height = 26.880000000000000000
            object m2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow25: TfrxTableRow
            Height = 26.880000000000000000
            object m3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow1: TfrxTableRow
            Height = 26.880000000000000000
            object m4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow24: TfrxTableRow
            Height = 26.880000000000000000
            object m5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow23: TfrxTableRow
            Height = 26.880000000000000000
            object m6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow22: TfrxTableRow
            Height = 26.880000000000000000
            object m7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow21: TfrxTableRow
            Height = 26.880000000000000000
            object m8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow20: TfrxTableRow
            Height = 26.880000000000000000
            object m9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow19: TfrxTableRow
            Height = 26.880000000000000000
            object m10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow18: TfrxTableRow
            Height = 26.880000000000000000
            object m11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow17: TfrxTableRow
            Height = 26.880000000000000000
            object m12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow16: TfrxTableRow
            Height = 26.880000000000000000
            object m13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow15: TfrxTableRow
            Height = 26.880000000000000000
            object m14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow14: TfrxTableRow
            Height = 26.880000000000000000
            object m15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow13: TfrxTableRow
            Height = 26.880000000000000000
            object m16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow12: TfrxTableRow
            Height = 26.880000000000000000
            object m17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow11: TfrxTableRow
            Height = 26.880000000000000000
            object m18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow10: TfrxTableRow
            Height = 26.880000000000000000
            object m19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow7: TfrxTableRow
            Height = 26.880000000000000000
            object m20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow6: TfrxTableRow
            Height = 26.880000000000000000
            object m21: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d21: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l21: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow2: TfrxTableRow
            Height = 26.880000000000000000
            object m22: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d22: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l22: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow3: TfrxTableRow
            Height = 26.880000000000000000
            object m23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow4: TfrxTableRow
            Height = 26.880000000000000000
            object m24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow5: TfrxTableRow
            Height = 26.880000000000000000
            object m25: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object d25: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
            object l25: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow29: TfrxTableRow
            Height = 28.897650000000000000
            object tot: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '         500.00')
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = []
              Memo.UTF8W = (
                '  '#1575#1604#1600#1605#1580#1600#1605#1600#1608#1593)
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftTop]
            end
          end
        end
        object frxDBDataset1GESTION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 145.200000000000000000
          Top = 268.102350000000000000
          Width = 67.200000000000000000
          Height = 39.360000000000000000
          DataField = 'GESTION'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."GESTION"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1FICHE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 145.000000000000000000
          Top = 333.302350000000000000
          Width = 119.040000000000000000
          Height = 28.800000000000000000
          DataField = 'FICHE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."FICHE"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxDBDataset1CHAPITRE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 727.200000000000000000
          Top = 422.702350000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHAPITRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1ARTICLE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 691.800000000000000000
          Top = 422.702350000000000000
          Width = 28.800000000000000000
          Height = 19.200000000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICLE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object sujet: TfrxMemoView
          AllowVectorExport = True
          Left = 320.800000000000000000
          Top = 412.102350000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            #1606#1600#1601#1600#1602#1600#1577)
          ParentFont = False
        end
        object chapitre: TfrxMemoView
          AllowVectorExport = True
          Left = 258.800000000000000000
          Top = 449.502350000000000000
          Width = 345.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1601#1602#1575#1578' '#1575#1604#1578#1606#1602#1604#1575#1578' '#1608#1575#1604#1605#1607#1605#1575#1578)
          ParentFont = False
          VAlign = vaBottom
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Left = 105.600000000000000000
          Top = 482.902350000000000000
          object TableColumn4: TfrxTableColumn
            Width = 137.030600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 137.030600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn7: TfrxTableColumn
            Width = 137.030600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 137.030600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 137.030600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow27: TfrxTableRow
            Height = 28.497650000000000000
            object TableCell87: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                #1575#1604#1585#1589#1610#1600#1600#1600#1600#1600#1583' '#1575#1604#1580#1600#1583#1610#1600#1600#1600#1600#1600#1583)
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell88: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                #1605#1600#1576#1604#1600#1600#1600#1594' '#1575#1604#1593#1605#1604#1610#1600#1600#1600#1600#1600#1577)
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell89: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                #1575#1604#1600#1585#1589#1610#1600#1600#1600#1600#1600#1600#1600#1583' '#1575#1604#1602#1600#1583#1610#1600#1600#1600#1600#1600#1605)
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell90: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                #1575#1604#1605#1600#1600#1600#1600#1575#1583#1577)
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell91: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                #1575#1604#1600#1576#1600#1600#1600#1600#1600#1575#1576)
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow28: TfrxTableRow
            Height = 192.000000000000000000
            object qrlns: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '0.0')
              ParentFont = False
              VAlign = vaCenter
            end
            object montant_operation: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '         500.00')
              ParentFont = False
              VAlign = vaCenter
            end
            object qrlas: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '0.0')
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell95: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxDBDataset1."ARTICLE"]')
              ParentFont = False
              VAlign = vaCenter
            end
            object TableCell96: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxDBDataset1."CHAPITRE"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 326.400000000000000000
          Top = 720.302350000000000000
          Width = 268.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1604#1575#1581#1592#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578' '#1575#1604#1605#1600#1589#1600#1604#1600#1581#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 873.902350000000000000
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 307.200000000000000000
          Top = 912.302350000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1594#1600#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1600#1577' '#1610#1608#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 1507.200000000000000000
          Top = 864.502350000000000000
          Width = 115.200000000000000000
          Height = 28.800000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1605#1580#1600#1605#1600#1608#1593' '#1576#1575#1604#1581#1585#1608#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 844.800000000000000000
          Top = 893.102350000000000000
          Width = 777.600000000000000000
          Height = 28.800000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1582#1605#1587#1605#1575#1574#1577' '#1583#1610#1606#1575#1585' '#1580#1586#1575#1574#1585#1610' .')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3LIGNE1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 104.600000000000000000
          Top = 749.702350000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Trim(<frxDBDataset3."LIGNE1">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3LIGNE2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.600000000000000000
          Top = 774.502350000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Trim(<frxDBDataset3."LIGNE2">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3LIGNE3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.600000000000000000
          Top = 796.302350000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Trim(<frxDBDataset3."LIGNE3">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3LIGNE4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 104.600000000000000000
          Top = 822.102350000000000000
          Width = 681.600000000000000000
          Height = 19.200000000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Trim(<frxDBDataset3."LIGNE4">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 5.200000000000000000
          Top = 9.902350000000000000
          Width = 369.000000000000000000
          Height = 29.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              #1575#1604#1580#1605#1600#1600#1607#1600#1600#1608#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1583#1610#1600#1600#1605#1600#1608#1602#1600#1585#1575#1591#1600#1610#1600#1600#1577' '#1575#1604#1600#1588#1600#1593#1600#1576#1600#1610#1600 +
              #1577)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 248.600000000000000000
          Top = 38.302350000000000000
          Width = 125.600000000000000000
          Height = 31.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1608#1586#1575#1585#1577' '#1575#1604#1600#1600#1600#1605#1600#1600#1575#1604#1600#1600#1610#1600#1600#1600#1600#1577)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 104.702350000000000000
          Width = 263.400000000000000000
          Height = 31.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577)
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 157.200000000000000000
          Top = 71.302350000000000000
          Width = 216.800000000000000000
          Height = 32.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1600#1600#1593#1600#1600#1575#1605#1600#1600#1600#1600#1577' '#1604#1604#1605#1600#1600#1581#1600#1600#1575#1587#1600#1600#1600#1600#1576#1600#1600#1600#1577)
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 71.400000000000000000
          Top = 138.902350000000000000
          Width = 301.800000000000000000
          Height = 31.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1601#1585#1593#1610#1577' '#1604#1604#1605#1610#1586#1575#1606#1610#1577' '#1608' '#1575#1604#1608#1587#1575#1574#1604)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 1036.800000000000000000
          Top = 998.702350000000000000
          Width = 585.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object qrdate: TfrxMemoView
          AllowVectorExport = True
          Left = 204.600000000000000000
          Top = 912.302350000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 224
    Top = 104
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = f_dm.ds_eng_ib
    BCDToCurrency = False
    Left = 232
    Top = 184
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 80
    Top = 104
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSource = f_dm.ds_obs_ib
    BCDToCurrency = False
    Left = 320
    Top = 208
  end
  object total: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
        Value = '2018'
      end
      item
        DataType = ftInteger
        Name = 'b'
        ParamType = ptInput
        Value = '1980'
      end
      item
        DataType = ftString
        Name = 'c'
        ParamType = ptInput
        Value = '34/14'
      end
      item
        DataType = ftString
        Name = 'd'
        ParamType = ptInput
        Value = '06'
      end>
    SQL.Strings = (
      'select sum(montant) from det_eng '
      'where gestion=:a and fiche=:b and chapitre=:c and article=:d ')
    SQLConnection = f_dm.connect_db_gf
    Left = 1071
    Top = 448
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 240
    Top = 256
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
end
