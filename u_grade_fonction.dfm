object F_grade_fonction: TF_grade_fonction
  Left = 0
  Top = 0
  Caption = 'GRADES ET FONCTIONS'
  ClientHeight = 718
  ClientWidth = 1218
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
  object Label9: TLabel
    Left = 8
    Top = 8
    Width = 640
    Height = 16
    Caption = 
      'TABLE DES GRADES (Les calculs sont  ne  fonction  des valeurs  d' +
      'u Champ CATEG dans Grade et Fontion)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 663
    Top = 8
    Width = 155
    Height = 16
    Caption = 'TABLE DES FONCTIONS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object DBNavigator3: TDBNavigator
    Left = 8
    Top = 655
    Width = 308
    Height = 18
    DataSource = f_dm.ds_grade
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 0
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 26
    Width = 649
    Height = 623
    Color = clSkyBlue
    DataSource = f_dm.ds_grade
    DrawingStyle = gdsClassic
    TabOrder = 1
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
        FieldName = 'GRADEA'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORDRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE_PERS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_MAJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UTILISATEUR'
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 663
    Top = 26
    Width = 554
    Height = 623
    Color = clSkyBlue
    DataSource = f_dm.ds_fonction
    DrawingStyle = gdsClassic
    TabOrder = 2
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
        FieldName = 'FONCTIONA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONCTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORDRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ETAT_NOMINATIF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_MAJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UTILISATEUR'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 663
    Top = 655
    Width = 308
    Height = 18
    DataSource = f_dm.ds_fonction
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Kind = dbnHorizontal
    TabOrder = 3
  end
end
