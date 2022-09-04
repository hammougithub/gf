object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 702
  ClientWidth = 1198
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator6: TDBNavigator
    Left = 8
    Top = 450
    Width = 528
    Height = 19
    DataSource = f_dm.ds_lignes_ib_1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 0
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 220
    Width = 594
    Height = 18
    DataSource = f_dm.ds_mandat_ib
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 22
    Width = 619
    Height = 192
    Color = clSkyBlue
    DataSource = f_dm.ds_mandat_ib
    DrawingStyle = gdsClassic
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MANDAT'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAPITRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STRUCTURE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STRUCTURE_SITUATION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 's_s'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATES'
        Title.Caption = 'DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_ENGAGEMENT'
        Title.Caption = 'N'#176'_ENGAGEMENT'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_VISA_TRESOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVATION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOURNAL'
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
  object DBGrid7: TDBGrid
    Left = 6
    Top = 264
    Width = 803
    Height = 180
    Color = clSkyBlue
    DataSource = f_dm.ds_lignes_ib_1
    DrawingStyle = gdsGradient
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GESTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MANDAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAPITRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STRUCTURE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STRUCTURE_SITUATION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATES'
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MONTANT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVATION'
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
  object SimpleDataSet_mandat: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 
      'select * from  mandat where gestion=:x order by '#13#10'mandat,chapitr' +
      'e,article'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftWideString
        Name = 'x'
        ParamType = ptInput
        Value = '2018'
      end>
    DisableStringTrim = True
    FieldDefs = <
      item
        Name = 'GESTION'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MANDAT'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'CHAPITRE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ARTICLE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'STRUCTURE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DATES'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'ENGAGEMENT'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'OBSERVATION'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'JOURNAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'UTILISATEUR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATE_MAJ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_ENGAGEMENT'
        DataType = ftSmallint
      end
      item
        Name = 'DATE_VISA_TRESOR'
        DataType = ftDate
      end
      item
        Name = 'STRUCTURE_SITUATION'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    FetchOnDemand = False
    Params = <>
    StoreDefs = True
    Left = 840
    Top = 240
  end
  object ds_mandat_ib: TDataSource
    DataSet = SimpleDataSet_mandat
    Left = 960
    Top = 240
  end
  object ds_lignes_ib_1: TDataSource
    DataSet = f_dm.SimpleDataSet_lignes_mandat
    Left = 1000
    Top = 320
  end
  object SimpleDataSet_lignes_mandat: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 
      'select * from lignes where gestion=:gestion and mandat=:mandat'#13#10 +
      'and chapitre=:chapitre and article=:article and structure=:struc' +
      'ture'#13#10' and dates=:dates and structure_situation=:structure_situa' +
      'tion'#13#10'order by ligne'
    DataSet.DataSource = ds_mandat_ib
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'GESTION'
        ParamType = ptInput
        Value = '2018'
      end
      item
        DataType = ftSmallint
        Name = 'MANDAT'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'CHAPITRE'
        ParamType = ptInput
        Value = '31/11'
      end
      item
        DataType = ftString
        Name = 'ARTICLE'
        ParamType = ptInput
        Value = 'U '
      end
      item
        DataType = ftString
        Name = 'STRUCTURE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftDate
        Name = 'DATES'
        ParamType = ptInput
        Value = 43104d
      end
      item
        DataType = ftString
        Name = 'STRUCTURE_SITUATION'
        ParamType = ptInput
        Value = '1'
      end>
    DisableStringTrim = True
    IndexFieldNames = 
      'GESTION;MANDAT;CHAPITRE;ARTICLE;STRUCTURE;DATES;STRUCTURE_SITUAT' +
      'ION'
    MasterFields = 
      'GESTION;MANDAT;CHAPITRE;ARTICLE;STRUCTURE;DATES;STRUCTURE_SITUAT' +
      'ION'
    MasterSource = ds_mandat_ib
    PacketRecords = 0
    Params = <>
    Left = 848
    Top = 320
  end
end
