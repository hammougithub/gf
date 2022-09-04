object F_edit_etat_virement: TF_edit_etat_virement
  Left = 47
  Top = 63
  Caption = 'F_edit_etat_virement'
  ClientHeight = 697
  ClientWidth = 1205
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 62
    Height = 16
    Caption = 'N'#176' Mandat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object imp: TBitBtn
    Left = 824
    Top = 669
    Width = 75
    Height = 25
    Caption = 'Imprimer'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    TabOrder = 0
    OnClick = impClick
  end
  object fin: TBitBtn
    Left = 897
    Top = 669
    Width = 75
    Height = 25
    Caption = 'Fin'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
      00007777777777777777933393303933337073F37F37F73F3377393393303393
      379037FF7F37F37FF777379793303379793037777337F3777737339933303339
      93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
      999037777337F377777793993330333393307377FF37F3337FF7333993303333
      993033377F37F33377F7333993303333993033377337F3337737333333303333
      33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
      03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = finClick
  end
  object Ecran: TBitBtn
    Left = 753
    Top = 669
    Width = 75
    Height = 25
    Caption = 'Ecran'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      033333777777777773333330777777703333333773F333773333333330888033
      33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
      FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
      8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
      8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
      8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
      8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
      FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = EcranClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 38
    Width = 617
    Height = 620
    Color = clSkyBlue
    DataSource = f_dm.ds_mandat_ib
    DrawingStyle = gdsGradient
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = imprimer
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 664
    Width = 608
    Height = 25
    DataSource = f_dm.ds_mandat_ib
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 104
    Top = 11
    Width = 93
    Height = 21
    Color = clSkyBlue
    TabOrder = 5
    OnChange = uu
  end
  object DBGrid2: TDBGrid
    Left = 630
    Top = 38
    Width = 390
    Height = 620
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Color = clSkyBlue
    DataSource = f_dm.ds_lignes_ib_1
    DrawingStyle = gdsGradient
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MANDAT'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAPITRE'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIGNE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BENIFICIAIRE'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MONTANT'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVATION'
        Width = 478
        Visible = True
      end>
  end
  object PrintDialog1: TPrintDialog
    Left = 432
    Top = 640
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 368
    Top = 632
  end
  object lignes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'b'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'd'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select a. mandat,a.montant,b.nom,banque,b.compte,b.nom_avis_de_v' +
        'irement,c.libelle_arabe'
      'from lignes a,fournisseur b,administration c'
      'where a.benificiaire= b.benificiaire and a.structure=c.code'
      'and gestion=:a and mandat=:b and chapitre=:c and'
      'article=:d ')
    SQLConnection = f_dm.connect_db_gf
    Left = 424
    Top = 448
  end
  object DataSetProvider_lignes: TDataSetProvider
    DataSet = lignes
    Left = 480
    Top = 456
  end
  object ClientDataSet_lignes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_lignes'
    Left = 544
    Top = 464
  end
  object simpledataset_parameters: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters where forme='#39'f_etat_virement'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 752
    Top = 136
  end
end
