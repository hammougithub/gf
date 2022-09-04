object f_service: Tf_service
  Left = 0
  Top = 0
  Caption = 'SERVICE'
  ClientHeight = 650
  ClientWidth = 1237
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
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 124
    Height = 20
    Caption = 'Table services'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 34
    Width = 961
    Height = 577
    Color = clSkyBlue
    DataSource = f_dm.Ds_service
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
        FieldName = 'CODE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMA'
        Width = 385
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMF'
        Width = 490
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 617
    Width = 960
    Height = 25
    DataSource = f_dm.Ds_service
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 1
  end
end
