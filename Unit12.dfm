object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'Form12'
  ClientHeight = 326
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ClientDataSet_chapitre: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_chapitre'
    Left = 240
    Top = 298
  end
  object SimpleDataSet_depenses_annulees: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from  depenses_annulees where gestion=:x order by chapi' +
      'tre,article,dates'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    Params = <>
    Left = 800
    Top = 16
  end
  object SimpleDataSet_facture: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from facture  where gestion=:a order by facture'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptInput
        Value = '2019'
      end>
    Params = <>
    Left = 488
    Top = 160
  end
  object SimpleDataSet1: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from designation order by ref'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 939
    Top = 298
  end
  object SQLDataSet_desig: TSQLDataSet
    CommandText = 'select * from designation order by ref'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = connect_db_gf
    Left = 496
    Top = 298
  end
  object ClientDataSet_desig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_desig'
    Left = 584
    Top = 298
  end
  object DataSetProvider_desig: TDataSetProvider
    DataSet = SQLDataSet_desig
    Left = 688
    Top = 298
  end
  object SimpleDataSet_parameters: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from parameters order by forme,champ'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 344
    Top = 248
  end
  object SimpleDataSet_unites: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from unites order by unite'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 939
    Top = 298
  end
  object Ds_unites: TDataSource
    DataSet = SimpleDataSet_unites
    Left = 939
    Top = 298
  end
  object Ds_consommation: TDataSource
    DataSet = SimpleDataSet_consommation
    Left = 928
    Top = 298
  end
  object SimpleDataSet_consommation: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from consommation order by dates,designation'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 939
    Top = 298
  end
  object DataSource2: TDataSource
    Left = 872
    Top = 298
  end
  object Ds_designation: TDataSource
    DataSet = ClientDataSet_desig
    Left = 904
    Top = 298
  end
  object SimpleDataSet_desig: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from designation order by ref'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 939
    Top = 298
  end
  object SimpleDataSet_service: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from SERVICE order by code'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 504
    Top = 298
  end
  object Ds_service: TDataSource
    DataSet = SimpleDataSet_service
    Left = 416
    Top = 298
  end
  object DataSource_users: TDataSource
    DataSet = SimpleDataSet_users
    Left = 184
    Top = 16
  end
  object SimpleDataSet_users: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from utilisateur'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 160
    Top = 40
  end
  object ds_lieu: TDataSource
    DataSet = SimpleDataSet_lieu
    Left = 456
    Top = 80
  end
  object SimpleDataSet_lieu: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from lieu'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 520
    Top = 104
  end
  object sm: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from  mandat where gestion=:x '#13#10' order by mandat,chapit' +
      're,article'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    DisableStringTrim = True
    Params = <>
    Left = 808
    Top = 298
  end
  object DataSetProvider_adm: TDataSetProvider
    DataSet = SQLDataSet_adm
    Left = 248
    Top = 298
  end
  object ClientDataSet_adm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_adm'
    Left = 152
    Top = 298
  end
  object SQLDataSet_adm: TSQLDataSet
    CommandText = 'select * from administration order by code'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = connect_db_gf
    Left = 80
    Top = 298
  end
  object ds_facture: TDataSource
    DataSet = SimpleDataSet_facture
    Left = 568
    Top = 200
  end
  object ds_convention: TDataSource
    DataSet = simpledataset_convention
    Left = 440
    Top = 298
  end
  object simpledataset_convention: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from convention  order by gestion,convention'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 353
    Top = 298
  end
  object IBEvents_eng: TIBEvents
    AutoRegister = False
    Database = gf_ib1
    Events.Strings = (
      'ajout_eng'
      'modif_eng')
    Registered = False
    Left = 936
    Top = 240
  end
  object DataSource_programme: TDataSource
    DataSet = SimpleDataSet_programme
    Left = 312
    Top = 8
  end
  object SimpleDataSet_programme: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from programme'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 361
    Top = 16
  end
  object ClientDataSet_fournisseur2: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_fournisseur'
    Left = 424
    Top = 298
  end
  object DataSource_fournisseur2: TDataSource
    DataSet = ClientDataSet_fournisseur2
    Left = 232
    Top = 298
  end
  object DataSource_fournisseur1: TDataSource
    DataSet = ClientDataSet_fournisseur1
    Left = 200
    Top = 298
  end
  object ClientDataSet_fournisseur1: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_fournisseur'
    Left = 328
    Top = 298
  end
  object SimpleDataSet_grade: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from grade order by code'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 345
    Top = 80
  end
  object SimpleDataSet_agent11: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'AGENT'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 192
    Top = 120
  end
  object ds_parameters: TDataSource
    DataSet = SimpleDataSet_parameters
    Left = 456
    Top = 248
  end
  object compter: TSQLQuery
    GetMetadata = True
    DataSource = ds_bc_lignes
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
      end>
    SQL.Strings = (
      'SELECT count(bc1) from BC_LIGNE'
      'where gestion=:a and bc1=:b')
    SQLConnection = connect_db_gf
    Left = 216
    Top = 264
  end
  object ds_bc: TDataSource
    DataSet = SimpleDataSet_bc
    Left = 24
    Top = 200
  end
  object SimpleDataSet_bc: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from bc where gestion=:x order by bc1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    DisableStringTrim = True
    Params = <>
    Left = 112
    Top = 200
  end
  object SimpleDataSet_bc_lignes: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from bc_ligne where gestion=:gestion   and bc1=:bc1 ord' +
      'er by ligne'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'gestion'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'bc1'
        ParamType = ptInput
      end>
    DisableStringTrim = True
    IndexFieldNames = 'GESTION;bc1'
    MasterFields = 'GESTION;bc1'
    MasterSource = ds_bc
    PacketRecords = 0
    Params = <>
    Left = 112
    Top = 248
  end
  object SQLDataSet_fournisseur: TSQLDataSet
    CommandText = 'select * from fournisseur order by benificiaire'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = connect_db_gf
    Left = 48
    Top = 298
  end
  object DataSetProvider_fournisseur: TDataSetProvider
    DataSet = SQLDataSet_fournisseur
    Left = 104
    Top = 298
  end
  object DataSource_fournisseur: TDataSource
    DataSet = ClientDataSet_fournisseur
    Left = 176
    Top = 298
  end
  object ClientDataSet_fournisseur: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_fournisseur'
    Left = 320
    Top = 298
  end
  object ClientDataSet_depenses_annulees: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_depenses_annulees'
    Left = 648
    Top = 128
  end
  object DataSetProvider_depenses_annulees: TDataSetProvider
    DataSet = SQLDataSet_depenses_annulees
    Left = 832
    Top = 136
  end
  object SQLDataSet_depenses_annulees: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 
      'select * from  depenses_annulees where gestion=:x order by chapi' +
      'tre,article,dates'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'x'
        ParamType = ptInput
        Value = '2019'
      end>
    SQLConnection = connect_db_gf
    Left = 792
    Top = 72
  end
  object ds_depenses_annulees: TDataSource
    DataSet = SimpleDataSet_depenses_annulees
    Left = 912
    Top = 72
  end
  object SimpleDataSet_lignes_c: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'LIGNES'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 219
    Top = 298
  end
  object SimpleDataSet_mandat_c: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'MANDAT'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    FetchOnDemand = False
    Params = <>
    Left = 217
    Top = 298
  end
  object salah_pers: TSQLConnection
    ConnectionName = 'salah_pers'
    DriverName = 'FIREBIRD'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=FIREBIRD'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=database.fdb'
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'IsolationLevel=ReadCommitted'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'Trim Char=False')
    Left = 939
    Top = 298
  end
  object ds_bc_lignes: TDataSource
    DataSet = SimpleDataSet_bc_lignes
    Left = 32
    Top = 256
  end
  object SimpleDataSet_apc: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from apc order by CODE_ADM, CODE_APC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 96
    Top = 80
  end
  object SimpleDataSet_bareme: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from BAREME order by CAT'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 744
    Top = 200
  end
  object SimpleDataSet_fonction: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from fonction order by CATEG, ORDRE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 360
    Top = 136
  end
  object SimpleDataSet_adm_pers: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from administration_pers order by CODE_ADM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 328
    Top = 196
  end
  object SimpleDataSet_agent: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from employes order by region,adm,noma,prenoma'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 96
    Top = 144
  end
  object SimpleDataSet_PARAMETRES_MISSION: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'PARAMETRES_MISSION'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 608
    Top = 256
  end
  object SimpleDataSet_depenses_mission: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select *'#13#10'             from depenses_mission  where GESTION=:ges' +
      'tion'#13#10'             and numero_mission=:numero_mission'
    DataSet.DataSource = ds_mission
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'gestion'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'numero_mission'
        ParamType = ptInput
      end>
    DisableStringTrim = True
    IndexFieldNames = 'GESTION;NUMERO_MISSION'
    MasterFields = 'GESTION;NUMERO_MISSION'
    MasterSource = ds_mission
    PacketRecords = 0
    Params = <>
    Left = 560
    Top = 298
  end
  object SimpleDataSet_mission: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from mission where gestion=:x order by'#13#10'gestion,NUMERO_' +
      'MISSION'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    DisableStringTrim = True
    Params = <>
    Left = 840
    Top = 298
  end
  object SimpleDataSet_adm_apc_grade_fonction_mission: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from ADM_APC_GRADE_FONCTION_MISSION'#13#10'           where G' +
      'ESTION=:gestion   and numero_mission=:numero_mission'
    DataSet.DataSource = ds_mission
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'gestion'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'numero_mission'
        ParamType = ptInput
      end>
    DisableStringTrim = True
    IndexFieldNames = 'GESTION;NUMERO_MISSION'
    MasterFields = 'GESTION;NUMERO_MISSION'
    MasterSource = ds_mission
    PacketRecords = 0
    Params = <>
    Left = 712
    Top = 298
  end
  object DataSetProvider_reimputation: TDataSetProvider
    DataSet = SQLDataSet_reimputation
    Left = 592
    Top = 298
  end
  object ClientDataSet_reimputation: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_reimputation'
    Left = 488
    Top = 298
  end
  object SQLDataSet_reimputation: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 'select * from  mandat_reimpute where gestion=:x order by mandat'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    SQLConnection = connect_db_gf
    Left = 448
    Top = 298
  end
  object ds_lignes_mandat: TDataSource
    DataSet = ClientDataSet_lignes_mandat
    Left = 376
    Top = 298
  end
  object ClientDataSet_lignes_mandat: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    IndexFieldNames = 'GESTION;MANDAT;CHAPITRE;ARTICLE;STRUCTURE;DATES'
    MasterFields = 'GESTION;MANDAT;CHAPITRE;ARTICLE;STRUCTURE;dates'
    MasterSource = DS_mandat
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetProvider_lignes_mandat'
    Left = 696
    Top = 298
  end
  object DataSetProvider_lignes_mandat: TDataSetProvider
    DataSet = SQLDataSet_lignes_mandat
    Left = 600
    Top = 298
  end
  object SQLDataSet_lignes_mandat: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 
      'select * from lignes where gestion=:gestion and mandat=:mandat'#13#10 +
      'and chapitre=:chapitre and article=:article'#13#10'and structure=:stru' +
      'cture and dates=:dates'#13#10'order by ligne'
    DataSource = DS_mandat
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'GESTION'
        ParamType = ptInput
        Value = '2013'
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
        Value = '7'
      end
      item
        DataType = ftDate
        Name = 'DATES'
        ParamType = ptInput
        Value = 41284d
      end>
    SQLConnection = connect_db_gf
    Left = 472
    Top = 298
  end
  object DataSetProvider_mandat: TDataSetProvider
    DataSet = SQLDataSet_mandat
    Left = 608
    Top = 298
  end
  object ClientDataSet_mandat: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_mandat'
    Left = 680
    Top = 298
  end
  object SQLDataSet_mandat: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 
      'select * from  mandat where gestion=:x order by'#13#10'mandat,chapitre' +
      ',article'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
        Value = '2013'
      end>
    SQLConnection = connect_db_gf
    Left = 512
    Top = 298
  end
  object SimpleDataSet_mandat1: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
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
    Left = 816
    Top = 298
  end
  object SimpleDataSet_lignes_mandat: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
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
        Value = 1980
      end
      item
        DataType = ftString
        Name = 'CHAPITRE'
        ParamType = ptInput
        Value = '34/14'
      end
      item
        DataType = ftString
        Name = 'ARTICLE'
        ParamType = ptInput
        Value = '06'
      end
      item
        DataType = ftString
        Name = 'STRUCTURE'
        ParamType = ptInput
        Value = 'a'
      end
      item
        DataType = ftDate
        Name = 'DATES'
        ParamType = ptInput
        Value = 43465d
      end
      item
        DataType = ftString
        Name = 'STRUCTURE_SITUATION'
        ParamType = ptInput
        Value = '5'
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
    Left = 776
    Top = 298
  end
  object SimpleDataSet_nat_dep: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'NATURE_DEP'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 128
    Top = 298
  end
  object SimpleDataSet_mois: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'MOIS'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 648
    Top = 298
  end
  object SQLDataSet_credit: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 'select * from  credit where gestion=:x order by chapitre,article'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    SQLConnection = connect_db_gf
    Left = 88
    Top = 298
  end
  object DataSetProvider_credit: TDataSetProvider
    DataSet = SQLDataSet_credit
    Left = 168
    Top = 298
  end
  object ClientDataSet_credit: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_credit'
    Left = 272
    Top = 298
  end
  object SimpleDataSet_eng: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.GetMetadata = True
    DataSet.CommandText = 
      'select * from ENGAGEMENT where gestion=:x order by fiche,chapitr' +
      'e,article'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
        Value = '2018'
      end>
    DisableStringTrim = True
    Params = <>
    Left = 256
    Top = 298
  end
  object SimpleDataSet_obs_eng: TSimpleDataSet
    Aggregates = <>
    AggregatesActive = True
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from obs_eng where GESTION=:gestion and FICHE=:fiche an' +
      'd '#13#10'CHAPITRE=:chapitre and article=:article  and objet=:objet'
    DataSet.DataSource = ds_eng_ib
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
        Name = 'FICHE'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'CHAPITRE'
        ParamType = ptInput
        Value = '33/12'
      end
      item
        DataType = ftString
        Name = 'ARTICLE'
        ParamType = ptInput
        Value = 'U '
      end
      item
        DataType = ftString
        Name = 'OBJET'
        ParamType = ptInput
        Value = 'e'
      end>
    DisableStringTrim = True
    IndexFieldNames = 'GESTION;FICHE;CHAPITRE;ARTICLE;OBJET'
    MasterFields = 'GESTION;FICHE;CHAPITRE;ARTICLE;OBJET'
    MasterSource = ds_eng_ib
    PacketRecords = 0
    Params = <>
    Left = 96
    Top = 298
  end
  object SimpleDataSet_det_eng: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from det_eng where GESTION=:gestion and FICHE=:fiche an' +
      'd '#13#10'CHAPITRE=:chapitre and article=:article and objet=:objet and' +
      ' dates=:dates and '#13#10'structure=:structure   and structure_situati' +
      'on=:structure_situation order by ligne'
    DataSet.DataSource = ds_eng_ib
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'gestion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fiche'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'chapitre'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'article'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'objet'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dates'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'structure'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'structure_situation'
        ParamType = ptInput
      end>
    DisableStringTrim = True
    IndexFieldNames = 
      'GESTION;FICHE;CHAPITRE;ARTICLE;OBJET;DATES;STRUCTURE;STRUCTURE_S' +
      'ITUATION'
    MasterFields = 
      'GESTION;FICHE;CHAPITRE;ARTICLE;OBJET;DATES;STRUCTURE;STRUCTURE_S' +
      'ITUATION'
    MasterSource = ds_eng_ib
    PacketRecords = 0
    Params = <>
    Left = 112
    Top = 298
  end
  object SQLMonitor1: TSQLMonitor
    SQLConnection = connect_db_gf
    Left = 528
    Top = 16
  end
  object SQLDataSet_det_eng1: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 'select * from det_eng where GESTION=:x order by ligne'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'x'
        ParamType = ptInput
        Value = '2013'
      end>
    SQLConnection = connect_db_gf
    Left = 192
    Top = 298
    object StringField1: TStringField
      FieldName = 'GESTION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object SmallintField1: TSmallintField
      FieldName = 'FICHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'CHAPITRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 5
    end
    object StringField3: TStringField
      FieldName = 'ARTICLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'OBJET'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DateField1: TDateField
      FieldName = 'DATES'
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'STRUCTURE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IntegerField1: TIntegerField
      FieldName = 'LIGNE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'MONTANT'
      Required = True
      Precision = 18
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'DESIGNATION'
      FixedChar = True
      Size = 100
    end
    object StringField7: TStringField
      FieldName = 'UTILISATEUR'
      FixedChar = True
      Size = 12
    end
    object StringField8: TStringField
      FieldName = 'DATE_MAJ'
      FixedChar = True
    end
    object StringField9: TStringField
      FieldName = 'FAC_OU_MISS'
      FixedChar = True
      Size = 10
    end
  end
  object SQLDataSet_chapitre: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 'select *  from ARTICLE order by chapitre,article'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = connect_db_gf
    Left = 120
    Top = 298
    object SQLDataSet_chapitreCHAPITRE: TStringField
      FieldName = 'CHAPITRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 5
    end
    object SQLDataSet_chapitreARTICLE: TStringField
      FieldName = 'ARTICLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLDataSet_chapitreTYP: TStringField
      FieldName = 'TYP'
      FixedChar = True
      Size = 1
    end
    object SQLDataSet_chapitreLIBELLE_ARABE: TStringField
      FieldName = 'LIBELLE_ARABE'
      FixedChar = True
      Size = 80
    end
    object SQLDataSet_chapitreLIBELLE: TStringField
      FieldName = 'LIBELLE'
      FixedChar = True
      Size = 80
    end
    object SQLDataSet_chapitreLIBELLE_CHAPITRE: TStringField
      FieldName = 'LIBELLE_CHAPITRE'
      FixedChar = True
      Size = 80
    end
    object SQLDataSet_chapitreUTILISATEUR: TStringField
      FieldName = 'UTILISATEUR'
      FixedChar = True
      Size = 12
    end
    object SQLDataSet_chapitreDATE_MAJ: TStringField
      FieldName = 'DATE_MAJ'
      FixedChar = True
    end
  end
  object DataSetProvider_chapitre: TDataSetProvider
    DataSet = SQLDataSet_chapitre
    Left = 160
    Top = 298
  end
  object connect_db_gf: TSQLConnection
    ConnectionName = 'gf'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'Database=c:\chapitre_delphi\dB_INTERBASE\GF.fdb'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=16.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      
        'VendorLib=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbcli' +
        'ent.dll'
      
        'VendorLibWin64=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\' +
        'fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'User_Name=gf'
      'Password=123'
      'Role=sysdba'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 72
    Top = 8
  end
  object ds_parametres_mission: TDataSource
    DataSet = SimpleDataSet_PARAMETRES_MISSION
    Left = 720
    Top = 256
  end
  object ds_adm_apc_grade_fonction_mission: TDataSource
    DataSet = SimpleDataSet_adm_apc_grade_fonction_mission
    Left = 640
    Top = 298
  end
  object ds_adm: TDataSource
    DataSet = SimpleDataSet_adm_pers
    Left = 232
    Top = 200
  end
  object ds_apc: TDataSource
    DataSet = SimpleDataSet_apc
    Left = 16
    Top = 80
  end
  object ds_depenses_mission: TDataSource
    DataSet = SimpleDataSet_depenses_mission
    Left = 456
    Top = 298
  end
  object ds_bareme: TDataSource
    DataSet = SimpleDataSet_bareme
    Left = 656
    Top = 200
  end
  object ds_agent: TDataSource
    DataSet = SimpleDataSet_agent
    Left = 16
    Top = 144
  end
  object ds_grade: TDataSource
    DataSet = SimpleDataSet_grade
    Left = 272
    Top = 72
  end
  object ds_fonction: TDataSource
    DataSet = SimpleDataSet_fonction
    Left = 272
    Top = 144
  end
  object ds_mission: TDataSource
    DataSet = SimpleDataSet_mission
    Left = 784
    Top = 298
  end
  object ds_reimputation: TDataSource
    DataSet = ClientDataSet_reimputation
    Left = 392
    Top = 298
  end
  object ds_nat_dep_ib: TDataSource
    DataSet = SimpleDataSet_nat_dep
    Left = 24
    Top = 298
  end
  object DS_mandat: TDataSource
    DataSet = SimpleDataSet_mandat1
    Left = 426
    Top = 298
  end
  object ds_mois_ib: TDataSource
    DataSet = SimpleDataSet_mois
    Left = 616
    Top = 298
  end
  object ds_obs_ib: TDataSource
    DataSet = SimpleDataSet_obs_eng
    Left = 16
    Top = 298
  end
  object ds_credit_ib: TDataSource
    DataSet = ClientDataSet_credit
    Left = 32
    Top = 298
  end
  object ds_det_eng_ib: TDataSource
    DataSet = SimpleDataSet_det_eng
    Left = 40
    Top = 298
  end
  object ds_eng_ib: TDataSource
    DataSet = SimpleDataSet_eng
    Left = 184
    Top = 298
  end
  object IBU_adm: TIBUpdateSQL
    Left = 616
    Top = 24
  end
  object Ds_adm_ib: TDataSource
    DataSet = ClientDataSet_adm
    Left = 56
    Top = 298
  end
  object ds_chapitre_ib: TDataSource
    DataSet = ClientDataSet_chapitre
    Left = 64
    Top = 298
  end
  object IBEvents_mandat: TIBEvents
    AutoRegister = False
    Database = gf_ib1
    Events.Strings = (
      'ajout_mandat'
      'modif_lignes'
      'modif_mandat')
    Registered = False
    Left = 928
    Top = 181
  end
  object ds_lignes_ib_1: TDataSource
    DataSet = SimpleDataSet_lignes_mandat
    Left = 864
    Top = 298
  end
  object ds_mandat_ib: TDataSource
    DataSet = sm
    Left = 912
    Top = 298
  end
  object gf_ib1: TIBDatabase
    DatabaseName = 'G:\chapitre_delphi\dB_INTERBASE\GF.GDB'
    Params.Strings = (
      'user_name=GF'
      'password=123')
    LoginPrompt = False
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 672
    Top = 24
  end
end
