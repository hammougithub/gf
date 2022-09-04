object f_dm: Tf_dm
  OldCreateOrder = False
  Height = 1004
  Width = 1182
  object ds_mandat_ib: TDataSource
    DataSet = sm
    Left = 116
    Top = 488
  end
  object ds_lignes_ib_1: TDataSource
    DataSet = SimpleDataSet_lignes_mandat
    Left = 123
    Top = 337
  end
  object ds_chapitre_ib: TDataSource
    DataSet = ClientDataSet_chapitre
    Left = 567
    Top = 399
  end
  object Ds_adm_ib: TDataSource
    DataSet = ClientDataSet_adm
    Left = 585
    Top = 455
  end
  object ds_eng_ib: TDataSource
    DataSet = SimpleDataSet_eng
    Left = 860
    Top = 726
  end
  object ds_det_eng_ib: TDataSource
    DataSet = SimpleDataSet_det_eng
    Left = 837
    Top = 510
  end
  object ds_credit_ib: TDataSource
    DataSet = ClientDataSet_credit
    Left = 574
    Top = 15
  end
  object ds_obs_ib: TDataSource
    DataSet = SimpleDataSet_obs_eng
    Left = 837
    Top = 397
  end
  object ds_mois_ib: TDataSource
    DataSet = SimpleDataSet_mois
    Left = 113
    Top = 857
  end
  object DS_mandat: TDataSource
    DataSet = SimpleDataSet_mandat1
    Left = 104
    Top = 803
  end
  object ds_nat_dep_ib: TDataSource
    DataSet = SimpleDataSet_nat_dep
    Left = 838
    Top = 610
  end
  object ds_reimputation: TDataSource
    DataSet = ClientDataSet_reimputation
    Left = 616
    Top = 115
  end
  object ds_mission: TDataSource
    DataSet = SimpleDataSet_mission
    Left = 115
    Top = 201
  end
  object ds_fonction: TDataSource
    DataSet = SimpleDataSet_fonction
    Left = 118
    Top = 58
  end
  object ds_grade: TDataSource
    DataSet = SimpleDataSet_grade
    Left = 828
    Top = 338
  end
  object ds_agent: TDataSource
    AutoEdit = False
    DataSet = SimpleDataSet_agent
    Left = 817
    Top = 288
  end
  object ds_bareme: TDataSource
    DataSet = SimpleDataSet_bareme
    Left = 794
    Top = 236
  end
  object ds_depenses_mission: TDataSource
    DataSet = SimpleDataSet_depenses_mission
    Left = 115
    Top = 157
  end
  object ds_apc: TDataSource
    DataSet = SimpleDataSet_apc
    Left = 824
    Top = 132
  end
  object ds_adm: TDataSource
    DataSet = SimpleDataSet_adm_pers
    Left = 859
    Top = 772
  end
  object ds_adm_apc_grade_fonction_mission: TDataSource
    DataSet = SimpleDataSet_adm_apc_grade_fonction_mission
    Left = 836
    Top = 453
  end
  object ds_parametres_mission: TDataSource
    DataSet = SimpleDataSet_PARAMETRES_MISSION
    Left = 470
    Top = 1302
  end
  object connect_db_gf: TSQLConnection
    ConnectionName = 'gf'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=oilc/3050:i:\chapitre_delphi\dB_INTERBASE\GF.fdb'
      'User_Name=gf'
      'Password=123'
      'Role=RoleName'
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
    Left = 178
    Top = 6
  end
  object ClientDataSet_chapitre: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_chapitre'
    BeforePost = avant_post_chapitre
    OnReconcileError = onreconcl_error
    Left = 514
    Top = 405
  end
  object DataSetProvider_chapitre: TDataSetProvider
    DataSet = SQLDataSet_chapitre
    Left = 423
    Top = 398
  end
  object SQLDataSet_chapitre: TSQLDataSet
    SchemaName = 'gf'
    CommandText = 'select *  from ARTICLE order by chapitre,article'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = connect_db_gf
    Left = 337
    Top = 400
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
    Left = 333
    Top = 713
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
    AfterInsert = after_insert_simpledataset_det_eng
    BeforePost = beforpost_simpledataset_det_eng
    AfterDelete = after_delete_simpledataset_det_eng
    OnReconcileError = onreconcl_error
    Left = 731
    Top = 505
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
    Left = 727
    Top = 398
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
    AfterInsert = after_insert_simpledataset_eng
    BeforePost = before_post_simpledataset_eng
    AfterPost = after_post_simpledataset_eng
    AfterCancel = count1
    OnReconcileError = onreconcl_error
    AfterApplyUpdates = after_update_eng
    Left = 731
    Top = 732
  end
  object ClientDataSet_credit: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_credit'
    AfterInsert = after_insert_credit
    BeforePost = before_post_credit
    AfterScroll = after_scrol_credit
    OnReconcileError = reconcilerreur
    Left = 497
    Top = 12
  end
  object DataSetProvider_credit: TDataSetProvider
    DataSet = SQLDataSet_credit
    Left = 424
    Top = 8
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
    Left = 340
    Top = 10
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
    OnReconcileError = reconcilerreur
    Left = 16
    Top = 867
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
    Left = 721
    Top = 611
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
    AfterInsert = afteriinsert_sds_lignes
    BeforePost = before_post_sds_lignes_1
    AfterDelete = after_delete_sds_lignes_mandat
    OnReconcileError = onreconcl_error
    Left = 29
    Top = 338
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
    OnReconcileError = onreconcl_error
    Left = 17
    Top = 808
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
    Left = 344
    Top = 160
  end
  object ClientDataSet_mandat: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_mandat'
    AfterInsert = clientdataset_mandat_after_insert
    BeforePost = clientdataset_manda_before_post
    AfterPost = clientdataset_mandat_after_post
    AfterScroll = afterscroll_cdm
    Left = 502
    Top = 168
  end
  object DataSetProvider_mandat: TDataSetProvider
    DataSet = SQLDataSet_mandat
    Left = 435
    Top = 161
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
    Left = 346
    Top = 223
  end
  object DataSetProvider_lignes_mandat: TDataSetProvider
    DataSet = SQLDataSet_lignes_mandat
    Left = 441
    Top = 223
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
    AfterInsert = clientdataset_lignes_mandat_afterinsert
    BeforePost = clientdataset_linges_mandat_beforpost
    AfterDelete = client_lignes_mandat_after_del
    Left = 511
    Top = 224
  end
  object ds_lignes_mandat: TDataSource
    DataSet = ClientDataSet_lignes_mandat
    Left = 593
    Top = 297
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
    Left = 344
    Top = 115
  end
  object ClientDataSet_reimputation: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_reimputation'
    Left = 498
    Top = 115
  end
  object DataSetProvider_reimputation: TDataSetProvider
    DataSet = SQLDataSet_reimputation
    Left = 427
    Top = 555
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
    Left = 719
    Top = 450
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
    AfterInsert = after_insert_mission
    BeforePost = mision_avant_post
    AfterPost = post1
    OnReconcileError = SimpleDataSet_missionReconcileError
    AfterApplyUpdates = after_applay_upd_mission
    Left = 40
    Top = 194
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
    Left = 36
    Top = 154
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
    Left = 742
    Top = 893
  end
  object SimpleDataSet_agent: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from employes order by region,adm,mat'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    BeforePost = avant_post_agent
    Left = 724
    Top = 293
  end
  object SimpleDataSet_adm_pers: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from administration_pers order by CODE_ADM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    BeforePost = avant_post_adm_pers
    Left = 726
    Top = 780
  end
  object SimpleDataSet_fonction: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from fonction order by CATEG, ORDRE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    BeforePost = avant_post_fnc
    Left = 34
    Top = 56
  end
  object SimpleDataSet_bareme: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from BAREME order by CAT'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 728
    Top = 233
  end
  object SimpleDataSet_apc: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from apc order by CODE_ADM, CODE_APC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 735
    Top = 129
  end
  object ds_bc_lignes: TDataSource
    DataSet = SimpleDataSet_bc_lignes
    Left = 129
    Top = 593
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
    Left = 727
    Top = 680
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
    Left = 852
    Top = 674
  end
  object ds_depenses_annulees: TDataSource
    DataSet = SimpleDataSet_depenses_annulees
    Left = 125
    Top = 643
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
    Left = 334
    Top = 515
  end
  object DataSetProvider_depenses_annulees: TDataSetProvider
    DataSet = SQLDataSet_depenses_annulees
    Left = 424
    Top = 507
  end
  object ClientDataSet_depenses_annulees: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_depenses_annulees'
    AfterInsert = afterinsertdepannulees
    Left = 531
    Top = 522
  end
  object ClientDataSet_fournisseur: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_fournisseur'
    Left = 553
    Top = 58
  end
  object DataSource_fournisseur: TDataSource
    DataSet = ClientDataSet_fournisseur1
    Left = 650
    Top = 64
  end
  object DataSetProvider_fournisseur: TDataSetProvider
    DataSet = SQLDataSet_fournisseur
    Left = 420
    Top = 61
  end
  object SQLDataSet_fournisseur: TSQLDataSet
    CommandText = 'select * from fournisseur order by benificiaire'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = connect_db_gf
    Left = 341
    Top = 61
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
    AfterInsert = after_insert
    BeforePost = befort_post_bc_lignes
    AfterDelete = after_delete
    OnReconcileError = onreconcl_error
    Left = 22
    Top = 589
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
    AfterInsert = after_insert_bc
    BeforePost = befort_post_bc
    AfterScroll = combien
    OnReconcileError = onreconcl_error
    Left = 20
    Top = 750
  end
  object ds_bc: TDataSource
    DataSet = SimpleDataSet_bc
    Left = 127
    Top = 749
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
    Left = 957
    Top = 109
  end
  object ds_parameters: TDataSource
    DataSet = SimpleDataSet_parameters
    Left = 851
    Top = 822
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
    Left = 968
    Top = 191
  end
  object SimpleDataSet_grade: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from grade order by code'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    BeforePost = avant_post_grade
    Left = 726
    Top = 344
  end
  object ClientDataSet_fournisseur1: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_fournisseur'
    AfterScroll = afterscrol1
    Left = 628
    Top = 22
  end
  object DataSource_fournisseur1: TDataSource
    DataSet = ClientDataSet_fournisseur1
    Left = 819
    Top = 54
  end
  object DataSource_fournisseur2: TDataSource
    DataSet = ClientDataSet_fournisseur2
    Left = 710
    Top = 62
  end
  object ClientDataSet_fournisseur2: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider_fournisseur'
    AfterScroll = after_scrol2
    Left = 496
    Top = 63
  end
  object SimpleDataSet_programme: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from programme'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 18
    Top = 700
  end
  object DataSource_programme: TDataSource
    DataSet = SimpleDataSet_programme
    Left = 139
    Top = 700
  end
  object simpledataset_convention: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from convention  order by gestion,convention'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    AfterInsert = apres
    Left = 733
    Top = 183
  end
  object ds_convention: TDataSource
    DataSet = simpledataset_convention
    Left = 829
    Top = 185
  end
  object ds_facture: TDataSource
    DataSet = SimpleDataSet_facture
    Left = 108
    Top = 241
  end
  object SQLDataSet_adm: TSQLDataSet
    CommandText = 'select * from administration order by code'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = connect_db_gf
    Left = 339
    Top = 448
  end
  object ClientDataSet_adm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_adm'
    BeforePost = AVANT_post_desig
    OnReconcileError = onreconcl_error
    Left = 519
    Top = 447
  end
  object DataSetProvider_adm: TDataSetProvider
    DataSet = SQLDataSet_adm
    Left = 423
    Top = 447
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
    AfterInsert = a1
    BeforeEdit = b1
    BeforePost = b2
    AfterPost = a2
    AfterScroll = a3
    Left = 25
    Top = 483
  end
  object SimpleDataSet_lieu: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from lieu'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    BeforePost = avant_post_lieu
    Left = 24
    Top = 387
  end
  object ds_lieu: TDataSource
    DataSet = SimpleDataSet_lieu
    Left = 124
    Top = 387
  end
  object SimpleDataSet_users: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from utilisateur'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 726
    Top = 554
  end
  object DataSource_users: TDataSource
    DataSet = SimpleDataSet_users
    Left = 845
    Top = 561
  end
  object Ds_service: TDataSource
    DataSet = SimpleDataSet_service
    Left = 117
    Top = 290
  end
  object SimpleDataSet_service: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from SERVICE order by code'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    Left = 33
    Top = 290
  end
  object SimpleDataSet_desig: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from designation order by ref'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    BeforePost = befor_des
    OnReconcileError = onreconcl_error
    Left = 32
    Top = 103
  end
  object Ds_designation: TDataSource
    DataSet = ClientDataSet_desig
    Left = 110
    Top = 108
  end
  object DataSource2: TDataSource
    Left = 985
    Top = 599
  end
  object SimpleDataSet_consommation: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from consommation order by ref,dates'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    AfterInsert = edit
    BeforePost = befor_cons
    AfterPost = designation
    BeforeDelete = avant_sup_cons
    AfterDelete = after_del_cons
    AfterApplyUpdates = SimpleDataSet_consommationAfterApplyUpdates
    Left = 23
    Top = 535
  end
  object Ds_consommation: TDataSource
    DataSet = SimpleDataSet_consommation
    Left = 118
    Top = 540
  end
  object Ds_unites: TDataSource
    DataSet = SimpleDataSet_unites
    Left = 122
    Top = 438
  end
  object SimpleDataSet_unites: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from unites order by unite'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 30
    Top = 436
  end
  object SimpleDataSet_parameters: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from parameters order by forme,champ'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    OnReconcileError = onreconcl_error
    Left = 736
    Top = 836
  end
  object DataSetProvider_desig: TDataSetProvider
    DataSet = SQLDataSet_desig
    Left = 433
    Top = 612
  end
  object ClientDataSet_desig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_desig'
    BeforePost = AVANT_post_desig
    BeforeDelete = befor_del_des
    AfterDelete = after_del_des
    OnReconcileError = onreconcl_error
    Left = 522
    Top = 342
  end
  object SQLDataSet_desig: TSQLDataSet
    CommandText = 'select * from designation order by ref'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = connect_db_gf
    Left = 342
    Top = 342
  end
  object SimpleDataSet1: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select *  from designation order by ref'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    BeforePost = befor_des
    OnReconcileError = onreconcl_error
    Left = 476
    Top = 694
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
    Left = 35
    Top = 237
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
    AfterInsert = apres_ins1
    Left = 20
    Top = 644
  end
  object SQLDataSet_desig_qt: TSQLDataSet
    CommandText = 'select * from designation_qt order by ref,dates'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = connect_db_gf
    Left = 347
    Top = 285
  end
  object ClientDataSet_desig_qt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_desig_qt'
    AfterInsert = afterinsert
    BeforePost = avant_post_qt_desig
    AfterPost = after_post_qt_des
    BeforeDelete = before_delete_desig_qt
    AfterDelete = after_delete_qt_desig
    AfterScroll = afterscrol_desig_qt
    OnReconcileError = onreconcl_error
    AfterApplyUpdates = after_apply_qt_ds
    Left = 512
    Top = 285
  end
  object DataSetProvider_desig_qt: TDataSetProvider
    DataSet = SQLDataSet_desig_qt
    Left = 442
    Top = 291
  end
  object DataSource_desig_qt: TDataSource
    DataSet = ClientDataSet_desig_qt
    Left = 610
    Top = 354
  end
end
