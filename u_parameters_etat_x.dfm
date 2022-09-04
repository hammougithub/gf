object f_parameters_etat_x: Tf_parameters_etat_x
  Left = 0
  Top = 0
  Caption = 'f_parameters_etat_x'
  ClientHeight = 661
  ClientWidth = 1246
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
  object Label1: TLabel
    Left = 11
    Top = 0
    Width = 197
    Height = 19
    Caption = 'Parametres de l'#39#233'tat mandat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 21
    Width = 1257
    Height = 615
    Color = clSkyBlue
    DataSource = DataSource1
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
        FieldName = 'FORME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESIGNATION'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAMP'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIBELLEAR'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIBELLEFR'
        Width = 450
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 642
    Width = 888
    Height = 20
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 1
  end
  object DataSource1: TDataSource
    Left = 216
    Top = 200
  end
end
