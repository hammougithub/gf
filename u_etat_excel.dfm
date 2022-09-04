object f_etat_excel: Tf_etat_excel
  Left = 0
  Top = 0
  Caption = 'f_etat_excel'
  ClientHeight = 454
  ClientWidth = 877
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
  object Button1: TButton
    Left = 8
    Top = 48
    Width = 713
    Height = 25
    Caption = 
      'Situation_credit_tw_tc par article  (Attention les d'#233'penses annu' +
      'l'#233'es ne sont pas calcul'#233'es --> Saisir des mandats provisoirs ave' +
      'c montant n'#233'gatif'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ZDATE: TMaskEdit
    Left = 727
    Top = 50
    Width = 62
    Height = 21
    Color = clSkyBlue
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '31/12/2013'
  end
  object Edit1: TEdit
    Left = 792
    Top = 50
    Width = 77
    Height = 21
    Color = clSkyBlue
    TabOrder = 2
  end
  object Button2: TButton
    Left = 24
    Top = 96
    Width = 145
    Height = 25
    Caption = 'Situation des cr'#233'dits'
    TabOrder = 3
    OnClick = credit
  end
  object adoc1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=c:\drtpaie.xls;;HD' +
      'R=yes;IMEX=1";'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 656
    Top = 96
  end
  object article: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from article order by chapitre,article')
    SQLConnection = f_dm.connect_db_gf
    Left = 104
    Top = 392
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 632
    Top = 304
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 640
    Top = 256
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = article
    Left = 624
    Top = 200
  end
  object q_cre_affec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and article=:y and gestion=:z and plus_moins='#39 +
        'n'#39)
    SQLConnection = f_dm.connect_db_gf
    Left = 88
    Top = 192
  end
  object q_enplus: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and article=:y and plus_moins='#39'p'#39' and gestion=' +
        ':z')
    SQLConnection = f_dm.connect_db_gf
    Left = 24
    Top = 192
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
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (credit) from credit'
      
        'where chapitre=:x and article=:y and plus_moins='#39'm'#39' and gestion=' +
        ':z')
    SQLConnection = f_dm.connect_db_gf
    Left = 24
    Top = 248
  end
  object q_mdm: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'y'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 's'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'r'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'w'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select sum (montant) from lignes where chapitre=:x and article=:' +
        'y and'
      '(structure=:s or structure=:r) and gestion=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 24
    Top = 312
  end
  object q_reimp_ant: TSQLQuery
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
        DataType = ftDateTime
        Name = 'w'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from mandat_reimpute'
      'where gestion=:x and chapitre=:y and article=:z and dates<:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 80
    Top = 312
  end
  object q_mda: TSQLQuery
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
        DataType = ftDateTime
        Name = 'w'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from lignes'
      'where gestion=:x and chapitre=:y and article=:z and dates<:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 168
    Top = 312
  end
  object q_mdms: TSQLQuery
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
        DataType = ftDateTime
        Name = 'w'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'v'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from lignes'
      
        'where gestion=:x and chapitre=:y and article=:z and (dates<=:w a' +
        'nd dates>=:v)')
    SQLConnection = f_dm.connect_db_gf
    Left = 232
    Top = 312
  end
  object q_reimp_du_mois: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end
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
        DataType = ftDateTime
        Name = 'w'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'v'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (montant) from mandat_reimpute'
      
        ' where gestion=:z and chapitre=:x and article=:y  and (dates<=:w' +
        '  and dates>=:v)'
      '')
    SQLConnection = f_dm.connect_db_gf
    Left = 104
    Top = 240
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
        DataType = ftString
        Name = 's'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'r'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'z'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'w'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from mandat_reimpute where chapitre=:x and ' +
        'article=:y and'
      '(structure=:s or structure=:r) and gestion=:z and dates<=:w')
    SQLConnection = f_dm.connect_db_gf
    Left = 24
    Top = 376
  end
  object q_c_a: TSQLQuery
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
    Left = 336
    Top = 184
  end
  object q_en_p: TSQLQuery
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
    Left = 384
    Top = 192
  end
  object q_en_m: TSQLQuery
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
    Left = 432
    Top = 184
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
        DataType = ftDateTime
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from det_eng where objet='#39'd'#39' and chapitre=:' +
        'x and gestion=:y and dates<=:z')
    SQLConnection = f_dm.connect_db_gf
    Left = 328
    Top = 248
  end
  object q_mdm1: TSQLQuery
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
        DataType = ftDateTime
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from lignes where chapitre=:x and gestion=:' +
        'y and dates<=:z')
    SQLConnection = f_dm.connect_db_gf
    Left = 432
    Top = 248
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
        DataType = ftDateTime
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from det_eng where objet='#39'e'#39' and chapitre=:' +
        'x and gestion=:y and dates<=:z ')
    SQLConnection = f_dm.connect_db_gf
    Left = 384
    Top = 248
  end
  object q_reimp1: TSQLQuery
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
        DataType = ftDateTime
        Name = 'z'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum (montant) from mandat_reimpute  where chapitre=:x and' +
        ' gestion=:y and dates<=:z')
    SQLConnection = f_dm.connect_db_gf
    Left = 336
    Top = 320
  end
end
