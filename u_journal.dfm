object f_journal: Tf_journal
  Left = 6
  Top = 78
  Caption = 'JOURNAL DES MANDATS DE PAIEMENT'
  ClientHeight = 680
  ClientWidth = 946
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = on_create
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 2
    Width = 110
    Height = 16
    Caption = 'Fichier Mandat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 386
    Top = 618
    Width = 388
    Height = 13
    Caption = 
      'Double Cliquer sur le mandat  pour l'#39'ajouter  ou  l'#39'enlever du j' +
      'ournal.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 361
    Height = 587
    Color = clSkyBlue
    DataSource = f_dm.ds_mandat_ib
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = vv
    Columns = <
      item
        Expanded = False
        FieldName = 'Gestion'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MANDAT'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Chapitre'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Journal'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 617
    Width = 360
    Height = 22
    DataSource = f_dm.ds_mandat_ib
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 175
    Top = 647
    Width = 105
    Height = 32
    Caption = 'Nouveau Journal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Print: TButton
    Left = 19
    Top = 646
    Width = 75
    Height = 33
    Caption = #1591#1600#1600#1576#1600#1600#1575#1593#1600#1600#1577
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
    OnClick = PrintClick
  end
  object Preview: TButton
    Left = 92
    Top = 646
    Width = 84
    Height = 33
    Caption = #1593#1604#1609' '#1575#1604#1588#1600#1600#1600#1575#1588#1577
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 4
    OnClick = PreviewClick
  end
  object fin: TButton
    Left = 856
    Top = 614
    Width = 81
    Height = 28
    Caption = 'FIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 5
    OnClick = finClick
  end
  object jj: TEdit
    Left = 336
    Top = 651
    Width = 33
    Height = 21
    TabOrder = 6
    Text = #39'J'#39
    Visible = False
  end
  object DataSource2: TDataSource
    Left = 440
    Top = 8
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'g'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from mandat where journal='#39'J'#39' and gestion=:g order by m' +
        'andat')
    SQLConnection = f_dm.connect_db_gf
    Left = 504
    Top = 240
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 488
    Top = 304
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 504
    Top = 360
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update  mandat set journal='#39' '#39' where journal='#39'J'#39' ')
    SQLConnection = f_dm.connect_db_gf
    Left = 688
    Top = 216
  end
  object SQLQuery3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from lignes'
      'where gestion=:a and mandat=:d and chapitre=:b and article=:c')
    Left = 688
    Top = 72
  end
  object montant_mandat: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'b'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from lignes'
      'where gestion=:a and mandat=:d and chapitre=:b and article=:c')
    SQLConnection = f_dm.connect_db_gf
    Left = 664
    Top = 384
  end
end
