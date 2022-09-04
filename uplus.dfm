object f1: Tf1
  Left = 0
  Top = 0
  Caption = 'f1'
  ClientHeight = 741
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 42
    Width = 182
    Height = 16
    Caption = 'D'#233'tail Engagement salah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 376
    Width = 240
    Height = 25
    DataSource = DataSource1
    Kind = dbnHorizontal
    TabOrder = 0
  end
  object DBGrid2: TDBGrid
    Left = 440
    Top = 64
    Width = 433
    Height = 585
    DataSource = ds_det_eng_ib
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 440
    Top = 655
    Width = 240
    Height = 25
    DataSource = ds_det_eng_ib
    Kind = dbnHorizontal
    TabOrder = 2
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 64
    Width = 426
    Height = 289
    Color = clSkyBlue
    DataSource = f_dm.ds_eng_ib
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
        FieldName = 'LIGNE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 39
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
        FieldName = 'FAC_OU_MISS'
        Title.Caption = 'N'#176' Facture ou mission'
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'DESIGNATION'
        Title.Caption = 'DESIGNATION1'
        Width = 480
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'DESIGNATION1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'DESIGNATION2'
        Width = 480
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FICHE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        Width = 34
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
        ReadOnly = True
        Width = 53
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
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
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
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UTILISATEUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_MAJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 456
    Top = 207
    Width = 439
    Height = 382
    Color = clSkyBlue
    DataSource = ds_det_eng_ib
    DrawingStyle = gdsGradient
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FICHE'
        Width = 35
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
        ReadOnly = True
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
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBJET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        PickList.Strings = (
          'd'
          'e')
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
        PickList.Strings = (
          '1 DRT'
          '2 TW47'
          '3 TW03'
          '4 TW30'
          '5 TW33'
          '6 TW11')
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATES'
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
      end
      item
        Expanded = False
        FieldName = 'GESTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        Width = 50
        Visible = True
      end>
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
    Left = 80
  end
  object SimpleDataSet_det_eng: TSimpleDataSet
    Aggregates = <>
    Connection = connect_db_gf
    DataSet.CommandText = 'select * from engagement'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    PacketRecords = 0
    Params = <>
    Left = 712
    Top = 8
  end
  object ds_det_eng_ib: TDataSource
    DataSet = ClientDataSet1
    Left = 576
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet2
    Left = 280
    Top = 8
  end
  object SimpleDataSet2: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from det_eng   order by fiche, ligne'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    PacketRecords = 0
    Params = <>
    Left = 160
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 488
    Top = 16
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SimpleDataSet_det_eng
    Left = 400
    Top = 8
  end
end
