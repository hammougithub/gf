object f_bareme: Tf_bareme
  Left = 23
  Top = 68
  Caption = 'Bareme des frais de missions et depla'#231'ements'
  ClientHeight = 727
  ClientWidth = 1300
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = on_create
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1300
    Height = 727
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 8
    ExplicitWidth = 1196
    ExplicitHeight = 561
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1298
      Height = 391
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 184
      ExplicitTop = 32
      ExplicitWidth = 1033
      ExplicitHeight = 409
      object Panel6: TPanel
        Left = 370
        Top = 1
        Width = 927
        Height = 389
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 535
        ExplicitTop = 112
        ExplicitWidth = 353
        ExplicitHeight = 27
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 369
        Height = 389
        Align = alLeft
        Caption = 'Panel7'
        TabOrder = 1
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitHeight = 361
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 367
          Height = 16
          Align = alTop
          Caption = 'Table Bareme(cat=fs pour fonction Sup'#233'rieur)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitTop = 0
          ExplicitWidth = 311
        end
        object DBNavigator4: TDBNavigator
          Left = 1
          Top = 365
          Width = 367
          Height = 23
          DataSource = f_dm.ds_bareme
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 300
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 17
          Width = 367
          Height = 348
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_bareme
          DrawingStyle = gdsGradient
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CAT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REGION'
              PickList.Strings = (
                'n'
                's')
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REPAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HEBER'
              Visible = True
            end>
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 392
      Width = 1298
      Height = 334
      Align = alBottom
      Caption = 'Panel1'
      TabOrder = 1
      ExplicitWidth = 1256
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 577
        Height = 332
        Align = alLeft
        Caption = 'Panel2'
        TabOrder = 0
        ExplicitLeft = 24
        ExplicitTop = 16
        ExplicitHeight = 305
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 575
          Height = 23
          Align = alTop
          Caption = 
            'Table Grade(le calcul Mission est en fonction de CATEG dans les ' +
            'tables Grade et Fonction)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitLeft = 9
          ExplicitTop = 17
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 24
          Width = 575
          Height = 283
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_grade
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = prendre
          Columns = <
            item
              Expanded = False
              FieldName = 'CODE'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEG'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRADEA'
              Width = 203
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
        object Panel8: TPanel
          Left = 1
          Top = 307
          Width = 575
          Height = 24
          Align = alBottom
          TabOrder = 1
          object DBNavigator2: TDBNavigator
            Left = 1
            Top = 1
            Width = 388
            Height = 22
            DataSource = f_dm.ds_grade
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            Align = alClient
            TabOrder = 0
            ExplicitLeft = -23
            ExplicitTop = 19
            ExplicitWidth = 336
          end
          object Panel9: TPanel
            Left = 389
            Top = 1
            Width = 185
            Height = 22
            Align = alRight
            TabOrder = 1
            ExplicitLeft = 319
            ExplicitTop = 0
            ExplicitHeight = 41
          end
        end
      end
      object Panel3: TPanel
        Left = 578
        Top = 1
        Width = 719
        Height = 332
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 632
        ExplicitTop = 16
        ExplicitWidth = 385
        ExplicitHeight = 281
        object Label5: TLabel
          Left = 1
          Top = 1
          Width = 717
          Height = 16
          Align = alTop
          Caption = 'Table fonction'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitLeft = 436
          ExplicitTop = 5
          ExplicitWidth = 85
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 17
          Width = 717
          Height = 291
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_fonction
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODE'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEG'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONCTIONA'
              Width = 200
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
              FieldName = 'INDICE'
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
        object Panel10: TPanel
          Left = 1
          Top = 308
          Width = 717
          Height = 23
          Align = alBottom
          TabOrder = 1
          ExplicitLeft = 112
          ExplicitTop = 288
          ExplicitWidth = 441
          object Panel11: TPanel
            Left = 531
            Top = 1
            Width = 185
            Height = 21
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 288
            ExplicitTop = 16
            ExplicitHeight = 23
          end
          object DBNavigator3: TDBNavigator
            Left = 1
            Top = 1
            Width = 530
            Height = 21
            DataSource = f_dm.ds_fonction
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 21
            ExplicitTop = 2
            ExplicitWidth = 324
          end
        end
      end
    end
  end
end
