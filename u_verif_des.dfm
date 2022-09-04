object f_verif_des: Tf_verif_des
  Left = 0
  Top = 0
  Caption = 'V'#233'rification D'#233'signation'
  ClientHeight = 712
  ClientWidth = 1245
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1245
    Height = 712
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 90.909090909090910000
      end
      item
        Value = 9.090909090909092000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Panel1
        Row = 0
      end
      item
        Column = 0
        Control = Panel3
        Row = 1
      end
      item
        Column = 0
        Control = Panel5
        Row = 2
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 25.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 25.000000000000000000
      end>
    TabOrder = 0
    ExplicitLeft = 336
    ExplicitTop = 8
    ExplicitWidth = 721
    ExplicitHeight = 425
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1129
      Height = 25
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 653
      object Button1: TButton
        Left = 1
        Top = 1
        Width = 75
        Height = 23
        Align = alLeft
        Caption = 'V'#233'rifier'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 26
      Width = 1129
      Height = 660
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      ExplicitWidth = 653
      ExplicitHeight = 373
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 1127
        Height = 658
        Align = alClient
        Color = clSkyBlue
        DataSource = f_dm.Ds_designation
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'REF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESIGNATION'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_ACTUEL'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_TOTAL'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_CONSOMMEE'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prix'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_MAJ'
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 686
      Width = 1129
      Height = 25
      Align = alClient
      TabOrder = 2
      ExplicitTop = 399
      ExplicitWidth = 653
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 336
        Height = 23
        DataSource = f_dm.Ds_designation
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
        Align = alLeft
        TabOrder = 0
      end
    end
  end
  object q_qt_consommee: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (qt) from consommation where ref=:x')
    SQLConnection = f_dm.connect_db_gf
    Left = 1112
    Top = 123
  end
  object q_qt_desig: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'x'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum (qt) from designation_qt where ref=:x')
    SQLConnection = f_dm.connect_db_gf
    Left = 1096
    Top = 291
  end
  object cl2: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    FieldDefs = <
      item
        Name = 'REF'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'DATES'
        DataType = ftDate
      end
      item
        Name = 'QT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'NOMA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 125
      end
      item
        Name = 'NOMA_1'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PRENOMA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OBSERVATION'
        Attributes = [faFixed]
        DataType = ftString
        Size = 125
      end
      item
        Name = 'SERVICE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ADM'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MAT'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'DESIGNATION'
        Attributes = [faFixed]
        DataType = ftString
        Size = 125
      end
      item
        Name = 'ADM_1'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MAT_1'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'CODE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    StoreDefs = True
    Left = 1140
    Top = 208
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = q_qt_desig
    Options = [poCascadeUpdates, poUseQuoteChar]
    Left = 1132
    Top = 368
  end
end
