object f_dm1: Tf_dm1
  OldCreateOrder = False
  Height = 515
  Width = 776
  object employes: TADOQuery
    Connection = adoc2
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'select * from employes')
    Left = 88
    Top = 344
  end
  object ds_employes: TDataSource
    DataSet = employes
    Left = 168
    Top = 352
  end
  object GRADE: TADOQuery
    Connection = adoc2
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'select * from fonctions order by code')
    Left = 24
    Top = 200
  end
  object ds_grade: TDataSource
    DataSet = GRADE
    Left = 88
    Top = 200
  end
  object ds_fonction: TDataSource
    DataSet = fonction
    Left = 88
    Top = 256
  end
  object fonction: TADOQuery
    Connection = adoc2
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'select * from fonctionspec')
    Left = 16
    Top = 264
  end
  object adoc2: TADOConnection
    ConnectionString = 
      #39'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=access_files\drt.' +
      'mdb;Jet OLEDB:Database Password='#182#8224#166#167#168#169#164#167#171#174#176#177'Un1g'#8225'z9'#8224#39';'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 152
    Top = 224
  end
end
