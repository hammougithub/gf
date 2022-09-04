object f_parameters: Tf_parameters
  Left = 0
  Top = 0
  Caption = 'Parameters'
  ClientHeight = 673
  ClientWidth = 1498
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = on_create
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1498
    Height = 673
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 642
      Width = 1496
      Height = 30
      Align = alBottom
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 1494
        Height = 28
        Align = alBottom
        TabOrder = 0
        ExplicitWidth = 1117
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 536
          Height = 26
          DataSource = f_dm.ds_parameters
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alLeft
          TabOrder = 0
        end
        object Fin: TButton
          Left = 1418
          Top = 1
          Width = 75
          Height = 26
          Align = alRight
          Caption = 'Fin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = FinClick
          ExplicitLeft = 301
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 33
      Width = 1496
      Height = 609
      Align = alClient
      Color = clSkyBlue
      DataSource = f_dm.ds_parameters
      DrawingStyle = gdsGradient
      TabOrder = 1
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
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1496
      Height = 32
      Align = alTop
      TabOrder = 2
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 79
        Height = 30
        Align = alLeft
        Caption = 'Parameters'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitTop = -4
      end
      object Edit1: TEdit
        Left = 86
        Top = 3
        Width = 841
        Height = 26
        Color = clSkyBlue
        TabOrder = 0
      end
    end
  end
end
