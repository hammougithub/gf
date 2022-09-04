object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 493
  ClientWidth = 1182
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 48
    Top = 8
    Width = 665
    Height = 281
    DataSource = f_dm.ds_mandat_ib
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 48
    Top = 344
    Width = 665
    Height = 120
    DataSource = f_dm.ds_lignes_ib_1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 313
    Width = 240
    Height = 25
    DataSource = f_dm.ds_mandat_ib
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 2
  end
  object DBNavigator2: TDBNavigator
    Left = 48
    Top = 470
    Width = 240
    Height = 25
    DataSource = f_dm.ds_lignes_ib_1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 3
  end
  object connect_db_gf: TSQLConnection
    ConnectionName = 'gf'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
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
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=pc-salah/3050:e:\chapitre_delphi\dB_INTERBASE\GF.fdb'
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
    VendorLib = 'fbclient.dll'
    Connected = True
    Left = 72
    Top = 8
  end
  object ds_lignes_ib_1: TDataSource
    DataSet = SimpleDataSet_lignes_mandat
    Left = 840
    Top = 792
  end
  object SimpleDataSet_lignes_mandat: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from lignes where gestion=:gestion and mandat=:mandat'#13#10 +
      'and chapitre=:chapitre and article=:article'#13#10'and structure=:stru' +
      'cture and dates=:dates'#13#10'order by ligne'
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
      end>
    DisableStringTrim = True
    IndexFieldNames = 'GESTION;MANDAT;CHAPITRE;ARTICLE;STRUCTURE;DATES'
    MasterFields = 'GESTION;MANDAT;CHAPITRE;ARTICLE;STRUCTURE;DATES'
    MasterSource = ds_mandat_ib
    PacketRecords = 0
    Params = <>
    Left = 736
    Top = 840
  end
  object ds_mandat_ib: TDataSource
    DataSet = SimpleDataSet_mandat
    Left = 840
    Top = 560
  end
  object SimpleDataSet_mandat: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 
      'select * from  mandat where gestion=:x order by'#13#10'mandat,chapitre' +
      ',article'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
        Value = '2018'
      end>
    DisableStringTrim = True
    FetchOnDemand = False
    Params = <>
    Left = 792
    Top = 552
  end
end
