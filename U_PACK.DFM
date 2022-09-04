object f_pack: Tf_pack
  Left = 6
  Top = 81
  Width = 778
  Height = 468
  Caption = 'f_pack'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = filtre
  OnCreate = creer_forme
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 36
    Height = 13
    Caption = 'Mandat'
  end
  object Label3: TLabel
    Left = 208
    Top = 128
    Width = 66
    Height = 13
    Caption = 'Mandat_pack'
  end
  object Label6: TLabel
    Left = 408
    Top = 128
    Width = 26
    Height = 13
    Caption = 'Ligne'
  end
  object Label7: TLabel
    Left = 600
    Top = 128
    Width = 52
    Height = 13
    Caption = 'ligne_pack'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 113
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 80
      Width = 229
      Height = 20
      Caption = 'P A C K  E N  C O U R S . . . '
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 216
      Top = 56
      Width = 255
      Height = 13
      Caption = 'IL FAUT UTILISER  CANCEL POUR SORTIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 80
      Top = 24
      Width = 381
      Height = 16
      Caption = 'LES GESTIONS ANTERIEURS SERONT SUPPRIMEES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 8
      Top = 48
      Width = 75
      Height = 25
      Caption = 'P A C K'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 88
      Top = 48
      Width = 89
      Height = 25
      Caption = 'C A N C E L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object gestion: TEdit
      Left = 8
      Top = 16
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '2003'
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 25
      Height = 21
      TabOrder = 3
      Text = '"'
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 144
    Width = 185
    Height = 257
    DataSource = F_principale.ds_mandat
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 192
    Top = 144
    Width = 177
    Height = 257
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 408
    Width = 180
    Height = 25
    DataSource = F_principale.ds_mandat
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 3
  end
  object DBNavigator2: TDBNavigator
    Left = 192
    Top = 408
    Width = 175
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 4
  end
  object DBGrid3: TDBGrid
    Left = 376
    Top = 144
    Width = 193
    Height = 257
    DataSource = F_principale.ds_ligne
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid4: TDBGrid
    Left = 576
    Top = 144
    Width = 193
    Height = 257
    DataSource = DataSource2
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator3: TDBNavigator
    Left = 384
    Top = 408
    Width = 175
    Height = 25
    DataSource = F_principale.ds_ligne
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 7
  end
  object DBNavigator4: TDBNavigator
    Left = 576
    Top = 408
    Width = 185
    Height = 25
    DataSource = DataSource2
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 8
  end
  object t_Mandat_pack: TTable
    DatabaseName = 'gf'
    SessionName = 'session1'
    TableName = 'Mandat_pack.db'
    Left = 680
    Top = 56
  end
  object t_lignes_pack: TTable
    DatabaseName = 'gf'
    SessionName = 'session1'
    TableName = 'lignes_pack.DB'
    Left = 688
    Top = 104
  end
  object pack: TQuery
    DatabaseName = 'gf'
    Left = 680
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = t_Mandat_pack
    Left = 616
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = t_lignes_pack
    Left = 616
    Top = 32
  end
end
