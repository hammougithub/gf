object f_parametres_mission: Tf_parametres_mission
  Left = 0
  Top = 0
  Caption = 'f_parametres_mission'
  ClientHeight = 482
  ClientWidth = 940
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = oncreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 8
    Top = 30
    Width = 309
    Height = 16
    Caption = 'Table des parametres de mission ( Une seule ligne)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object DBGrid5: TDBGrid
    Left = 4
    Top = 65
    Width = 933
    Height = 62
    Color = clSkyBlue
    DataSource = f_dm.ds_parametres_mission
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'KLM'
        Title.Caption = 'Tarif KLM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HDEJD'
        Title.Caption = 'Heure-D'#233'jeuner-D'#233'part'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HDEJR'
        Title.Caption = 'Heure-D'#233'jeuner-Retour'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HDIND'
        Title.Caption = 'Heure-Diner-D'#233'part'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HDINR'
        Title.Caption = 'Heure-Diner-Retour'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HDECD'
        Title.Caption = 'Heure-D'#233'coucher-D'#233'part'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HDECR'
        Title.Caption = 'Heure-D'#233'coucher-Retour'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDICE_FS'
        Title.Caption = 'INDICE_Fonction_sup'#233'rieure'
        Visible = True
      end>
  end
  object DBNavigator4: TDBNavigator
    Left = 8
    Top = 133
    Width = 790
    Height = 28
    DataSource = f_dm.ds_parametres_mission
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 1
  end
end
