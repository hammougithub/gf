object F_edit_mission: TF_edit_mission
  Left = 0
  Top = 115
  Caption = 'Calcul Mission'
  ClientHeight = 866
  ClientWidth = 1325
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = oncreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel
    Left = 365
    Top = 342
    Width = 428
    Height = 20
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 1325
    Height = 866
    Align = alClient
    TabOrder = 0
    object Panel9: TPanel
      Left = 1
      Top = 432
      Width = 1323
      Height = 400
      Align = alBottom
      TabOrder = 0
      object Label13: TLabel
        Left = 5
        Top = 107
        Width = 404
        Height = 16
        Caption = 
          'Nombre de jours complet entre date_d'#233'but et date_fin de  la miss' +
          'ion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 477
        Top = 103
        Width = 111
        Height = 16
        Caption = 'repas jour complet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Visible = False
      end
      object Label2: TLabel
        Left = 665
        Top = 103
        Width = 140
        Height = 16
        Caption = 'd'#233'coucher jour complet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Visible = False
      end
      object Label27: TLabel
        Left = 594
        Top = 158
        Width = 239
        Height = 16
        Caption = 'Nombre de jours complet pris en charge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 594
        Top = 202
        Width = 189
        Height = 16
        Caption = 'Total d'#233'coucher pris en charge '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 594
        Top = 180
        Width = 160
        Height = 16
        Caption = 'Total repas pris en charge '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 4
        Top = 158
        Width = 69
        Height = 16
        Caption = 'Total repas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 138
        Top = 158
        Width = 98
        Height = 16
        Caption = 'Total d'#233'coucher'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 341
        Top = 158
        Width = 114
        Height = 16
        Caption = 'Montant d'#233'coucher'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 356
        Top = 129
        Width = 85
        Height = 16
        Caption = 'Montant repas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 184
        Top = 129
        Width = 69
        Height = 16
        Caption = 'Dernier jour'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 129
        Width = 75
        Height = 16
        Caption = 'Premier  jour'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 6
        Top = 237
        Width = 194
        Height = 16
        Caption = 'Montant total d'#233'coucher et repas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 6
        Top = 259
        Width = 95
        Height = 16
        Caption = 'Autre d'#233'penses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 9
        Top = 281
        Width = 31
        Height = 16
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 509
        Top = 346
        Width = 49
        Height = 16
        Caption = 'Tarif KM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 3
        Top = 302
        Width = 81
        Height = 16
        Caption = 'Param'#232'tres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 507
        Top = 324
        Width = 171
        Height = 16
        Caption = 'Indice de fonction sup'#233'rieure'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 56
        Top = 325
        Width = 154
        Height = 16
        Caption = 'Heure de d'#233'jeuner d'#233'part'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 284
        Top = 325
        Width = 134
        Height = 16
        Caption = 'Heure de diner  d'#233'part'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 57
        Top = 347
        Width = 152
        Height = 16
        Caption = 'Heure de d'#233'jeuner  retour'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 284
        Top = 347
        Width = 129
        Height = 16
        Caption = 'Heure de diner  retour'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 57
        Top = 371
        Width = 165
        Height = 16
        Caption = 'Heure de d'#233'coucher d'#233'part'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 285
        Top = 369
        Width = 160
        Height = 16
        Caption = 'Heure de d'#233'coucher retour'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object pec: TLabel
        Left = 869
        Top = 101
        Width = 246
        Height = 24
        Caption = 'Mission avec prise en charge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Visible = False
      end
      object Label16: TLabel
        Left = 90
        Top = 128
        Width = 35
        Height = 16
        Caption = 'repas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 259
        Top = 128
        Width = 35
        Height = 16
        Caption = 'repas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object DBGrid5: TDBGrid
        Left = 4
        Top = 4
        Width = 516
        Height = 62
        Color = clSkyBlue
        DataSource = f_dm.ds_depenses_mission
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'GESTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_MISSION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTOCAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVION_BATEAU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAXI_SERVICE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEHICULE_PERS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VF'
            Title.Caption = 'VOIE FERREE'
            Visible = True
          end>
      end
      object DBGrid8: TDBGrid
        Left = 526
        Top = 4
        Width = 358
        Height = 62
        Color = clSkyBlue
        DataSource = f_dm.ds_adm_apc_grade_fonction_mission
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGrid1: TDBGrid
        Left = 890
        Top = 4
        Width = 415
        Height = 62
        Color = clSkyBlue
        DataSource = f_dm.ds_adm_apc_grade_fonction_mission
        DrawingStyle = gdsGradient
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODE_ADM'
            Title.Caption = 'ADM'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODE_APC'
            Title.Caption = 'APC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODE_GRADE'
            Title.Caption = 'GRADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODE_FONCTION'
            Title.Caption = 'FNC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEG_GRADE'
            Title.Caption = 'CAT_G'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEG_FONCTION'
            Title.Caption = 'CAT_F'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GESTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_MISSION'
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
          end>
      end
      object BitBtn1: TBitBtn
        Left = 3
        Top = 67
        Width = 113
        Height = 36
        Caption = 'Calcul mission'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000E7E7E7B7B7B7
          9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F
          9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F
          9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FB7B7B7005972005972
          0059720059720059720059720059720059720059720059720059720059720059
          7200597200597200597200597200597200597200597200597200597200597200
          59720059720059720059720059720059720059720059729F9F9F0059727FCFE5
          7BCDE576CBE461C4E042B8DA27AED50EA4CF009FCD009FCD009FCD009FCC009F
          CC009FCD009FCC009FCD009FCD009FCD009FCD009FCD009FCD009FCD009FCD00
          9FCD009FCD009FCD009FCD009FCD009FCD009FCD0059729F9F9F00597289D7EE
          84D6ED80D4EC7CD3EC77D1EB73D0EA67CCE94FC4E53ABDE200597216B0DD07AB
          DB00A9DA00A9DA00A9DA00A9DA00A9D900A9DA00A8D900597200A8DA00A9DA00
          A9DA00A9DA00A9DA00A9D900A9D900A9DA00A9DA0059729F9F9F00597293DFF5
          8EDDF48ADCF485DBF381D9F37DD8F378D6F274D5F170D4F100597267D2F05DCF
          EF4DCAEE3FC6EC33C2EC29BFEA20BDE918BAE811B8E900597208B5E805B4E603
          B4E601B3E600B3E600B2E601B2E602B4E603B4E70059729F9F9F0059729CE4F9
          00597294E2F80059728BE0F800597282DDF70059727ADAF700597271D9F60059
          7268D6F60059725FD4F500597257D2F40059724FCFF400597246CCF30059723F
          CAF300597237C9F20059722FC7F200597228C5F2005972B7B7B7005972005972
          0059720059720059720059720059720059720059720059720059720059720059
          7200597200597200597200597200597200597200597200597200597200597200
          5972005972005972005972005972005972005972005972E7E7E7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF4F4F4F1F1F1F2F2F2F4F4F4F6
          F6F6F8F8F8FAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          971E00901A008918008617008617008717008918008C19008E19008E19008A18
          00831500791000700D006D0B006C0B006F0D00750F00B48073D1D1D1D6D6D6DB
          DBDBDFDFDFE4E4E4E8E8E8F1F1F1FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          991F00FFA086FF9980FF957AFF9277FF9176FF9076FF9176FF9278FF9378FF93
          78FF9176FF8C70FF8568FF7E62FF7B5EFF7A5C6F0D00931D01A47166BABABABD
          BDBDBEBEBEC0C0C0C4C4C4D1D1D1EBEBEBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
          9C2100FFA38BEF3200EE2E00EE2C00ED2A00EC2900EC2700EB2700EB2700EB25
          00EB2500EB2400EA2200E91F00E81C00FF7D60700D00C24024921D049D6C62B3
          B3B3B3B3B3B3B3B3B4B4B4BCBCBCD5D5D5F1F1F1FDFDFDFFFFFFFFFFFFFFFFFF
          9D2100FFA68EF03600F03300EF3300EE3100EE2F00EE2D00ED2C00ED2900EC28
          00EC2700EB2500EA2300EA2200E91E00FF8265740F00D34F32CD3F258E1C049A
          6B62B2B2B2B2B2B2B2B2B2B4B4B4C1C1C1DEDEDEF6F6F6FEFEFEFFFFFFFFFFFF
          9D2100FFA78FF13700F13700F13600F03400F03400F03300EF3200EE2F00EE2E
          00ED2C00EC2900EB2700EB2400EA2100FF8568750F00D45134D02914CA341E87
          1804986A62B2B2B2B2B2B2B2B2B2B7B7B7C9C9C9E7E7E7FAFAFAFFFFFFFFFFFF
          9D2100FFA78FF14513F13700F13700F13700F13600F13600F03600F03400F033
          00EF3200EE2F00EE2D00ED2900EB2400FF886C760F00D55234D12A14C81D0ACC
          3D25791000B4B4B4B5B5B5B7B7B7B9B9B9C2C2C2DADADAF5F5F5FFFFFFFFFFFF
          9D2100FFA78FF36338F13700F13700F13700F13700F13700F13700F13700F136
          00F03600F03400EF3200EE2F00ED2C00FF8F747A1000D55436D22C14CA1D0AD6
          452D7D1201C5C5C5C9C9C9CDCDCDD0D0D0D6D6D6E3E3E3F7F7F7FFFFFFFFFFFF
          9D2100FFA78FF58766F3592CF13700F13700F13700F13700F13700F13700F137
          00F13700F13700F13600F03400EF3100FF987D811400D55436D32D14CC1F0BD7
          492F801301EDEDEDEFEFEFF0F0F0F2F2F2F4F4F4F7F7F7FDFDFDFFFFFFFFFFFF
          9D2100FFA78FF69175F58564F3582AF13700F13700F13700F13700F13700F137
          00F13700F13700F13700F13700F03400FFA0878A1800D55436D32D15CC1F0BD8
          4A31801401FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FF79B82F7957AF5896AF35F33F13904F13700F13700F13700F137
          00F13700F13700F13700F13700F13700FFA38B921C00D55436D32E15CD210BD9
          4C33821403FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FF7A58FF79F87F79A80F69478F47049F24C1CF13700F13700F137
          00F13700F13700F13700F13700F13700FFA68E971E00D55436D32E15CE210BD9
          4E34831403FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FF8AE9BF7A994F7A38DF79E85F7987DF68A6BF46B42F24F1EF137
          00F13700F13700F13700F13700F13700FFA78F9A1F00D55436D42E15CE210BDA
          5036841503FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FF9B8A7F8B2A0F8AD99F7A792F7A38BF79C83F7967BF69074F478
          54F36338F25223F14513F13D08F13801FFA78F9C2100D55436D42E15CE220BDB
          5136851503FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FFAC1B2F9BCACF9B6A5F8B09EF8AC97F7A690F7A189F79A81F795
          79F68F71F5896AF58362F47C59F47752FFA78F9D2100D55436D42E15CF220BDB
          5237861703FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FFAC8BDFAC4B6FABFB0F9BAAAF9B5A3F8AF9CF8AA95F7A48EF79F
          87F7997EF69377F68D6FF58767F5825FFFA78F9D2100D55436D42E15D0220DDC
          5438891803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FFBD1C7FACCC1FAC8BBFAC2B5FABDAEF9B8A8F9B4A2F8AE9AF7A8
          93F7A38CF79E85F7977CF69175F68B6DFFA78F9D2100D55234D1250FD0220DDC
          56398B1903FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D2100FFA78FFFA78FFFA78FFFA78FFFA78FFFA78FFFA78FFFA78FFFA78FFFA7
          8FFFA78FFFA78FFFA78FFFA78FFFA78FFFA78F9D2100C64527D83E24D0220DDD
          573A901C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D21009D21009D21009D21009D21009D21009D21009D21009D21009D21009D21
          009D21009D21009D21009D21009D21009D21009D21009D2200C84828D83E24DF
          5B3D961E03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DFB6ABB9482BF99F86FDA58DFDA48DFCA188FC9A7EFC9477FC9477FC977AFCA0
          87FDA991FDAC94FDB19CFDB4A0FDB19CFDAB93F9A388B84A28A02500C84828E0
          5D3F9C2204FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFDFB6ABB03C1CF69E86FACBBFFAC8BBFABFB0F79D84F47651F35828F248
          00F35100F45800F46500F56C00F56E00F56F00F56A05F79D80BD5532A32A00C8
          4828A02304FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFB6ABA83313F1967DFAC6B9FAC2B4F9B8A8F8B09DF7A690F68D
          6FF57752F4683DF45F2CF45C1EF45C10F46308F56800F56A05F89F84BF5B37A4
          2C009F2401FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDFB6ABA52E0EEA8D72FAA58DFAA38AFAA086FA9D82FA9A
          7EFA977AFA9477FA9274FA9071FA9171FA9576FA9D81FAA388FA9F84FAB19CBD
          5531A02500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFDFB6ABA22A0AB23E1EB23E1EB23E1EB23E1EB23E
          1EB23E1EB23E1EB23E1EB23E1EB23E1EB33F1FB64523B84B28B94C29BA4E2CB2
          431E9E2300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 3
        OnClick = but1
      end
      object b1: TBitBtn
        Left = 160
        Top = 67
        Width = 203
        Height = 36
        Caption = 'Recalcul avec les donn'#233'es saisies'
        Enabled = False
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
          57705557757777775FF7555555555555000755555555555F777F555555555550
          87075555555555F7577F5555555555088805555555555F755F75555555555033
          805555555555F755F75555555555033B05555555555F755F75555555555033B0
          5555555555F755F75555555555033B05555555555F755F75555555555033B055
          55555555F755F75555555555033B05555555555F755F75555555555033B05555
          555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
          5555F777F7555555555501900555555555557777755555555555099055555555
          5555777755555555555550055555555555555775555555555555}
        NumGlyphs = 2
        TabOrder = 4
        OnClick = but2
      end
      object nb: TEdit
        Left = 415
        Top = 102
        Width = 38
        Height = 21
        Color = clSkyBlue
        TabOrder = 5
      end
      object edit_repas: TEdit
        Left = 594
        Top = 102
        Width = 37
        Height = 21
        Color = clSkyBlue
        TabOrder = 6
        Visible = False
      end
      object edit_dec: TEdit
        Left = 811
        Top = 102
        Width = 37
        Height = 21
        Color = clSkyBlue
        TabOrder = 7
        Visible = False
      end
      object Edit5: TEdit
        Left = 850
        Top = 188
        Width = 39
        Height = 21
        Color = clAqua
        TabOrder = 8
      end
      object Edit6: TEdit
        Left = 850
        Top = 215
        Width = 40
        Height = 21
        Color = clAqua
        TabOrder = 9
      end
      object Edit7: TEdit
        Left = 850
        Top = 161
        Width = 39
        Height = 21
        Color = clAqua
        TabOrder = 10
      end
      object Edit1: TEdit
        Left = 86
        Top = 155
        Width = 39
        Height = 21
        Color = clSkyBlue
        TabOrder = 11
      end
      object Edit2: TEdit
        Left = 248
        Top = 156
        Width = 37
        Height = 21
        Color = clSkyBlue
        TabOrder = 12
      end
      object Edit4: TEdit
        Left = 461
        Top = 155
        Width = 39
        Height = 21
        Color = clSkyBlue
        TabOrder = 13
      end
      object Edit3: TEdit
        Left = 459
        Top = 125
        Width = 39
        Height = 21
        Color = clSkyBlue
        TabOrder = 14
      end
      object edit_repas2: TEdit
        Left = 299
        Top = 127
        Width = 37
        Height = 21
        Color = clSkyBlue
        TabOrder = 15
      end
      object edit_repas1: TEdit
        Left = 130
        Top = 126
        Width = 39
        Height = 21
        Color = clSkyBlue
        TabOrder = 16
      end
      object es1: TEdit
        Left = 12
        Top = 185
        Width = 457
        Height = 21
        Color = clSkyBlue
        TabOrder = 17
      end
      object es2: TEdit
        Left = 12
        Top = 212
        Width = 457
        Height = 21
        Color = clSkyBlue
        TabOrder = 18
      end
      object Edit8: TEdit
        Left = 206
        Top = 236
        Width = 457
        Height = 21
        Color = clSkyBlue
        TabOrder = 19
      end
      object depense: TEdit
        Left = 206
        Top = 258
        Width = 465
        Height = 21
        Color = clSkyBlue
        TabOrder = 20
      end
      object total: TEdit
        Left = 206
        Top = 280
        Width = 127
        Height = 21
        Color = clSkyBlue
        TabOrder = 21
      end
      object xklm: TEdit
        Left = 576
        Top = 346
        Width = 52
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 22
        Text = '10'
      end
      object t_indice: TEdit
        Left = 692
        Top = 319
        Width = 29
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 23
        Text = '424'
      end
      object Edit9: TEdit
        Left = 762
        Top = 324
        Width = 159
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 24
        Text = '424'
      end
      object Edit10: TEdit
        Left = 762
        Top = 351
        Width = 159
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 25
        Text = '424'
      end
      object xdejeuner_d: TEdit
        Left = 230
        Top = 320
        Width = 25
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 26
        Text = '10'
      end
      object xdiner_d: TEdit
        Left = 451
        Top = 324
        Width = 26
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 27
        Text = '18'
      end
      object xdejeuner_r: TEdit
        Left = 228
        Top = 347
        Width = 25
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 28
        Text = '14'
      end
      object xdiner_r: TEdit
        Left = 452
        Top = 345
        Width = 25
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 29
        Text = '21'
      end
      object xdecoucher_d: TEdit
        Left = 228
        Top = 372
        Width = 25
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 30
        Text = '6'
      end
      object xdecoucher_r: TEdit
        Left = 453
        Top = 367
        Width = 25
        Height = 21
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 31
        Text = '1'
      end
      object r1: TRadioGroup
        Left = 926
        Top = 311
        Width = 223
        Height = 65
        Caption = 'Type d'#39'impression'
        Color = clCream
        ItemIndex = 1
        Items.Strings = (
          'Papier pr'#233'imprim'#233
          'Papier vierge')
        ParentBackground = False
        ParentColor = False
        TabOrder = 32
      end
    end
    object Panel12: TPanel
      Left = 1
      Top = 1
      Width = 1323
      Height = 431
      Align = alClient
      TabOrder = 1
      object Panel13: TPanel
        Left = 1
        Top = 1
        Width = 850
        Height = 429
        Align = alLeft
        TabOrder = 0
        object Panel14: TPanel
          Left = 1
          Top = 408
          Width = 848
          Height = 20
          Align = alBottom
          TabOrder = 0
          object DBNavigator1: TDBNavigator
            Left = 1
            Top = 1
            Width = 416
            Height = 18
            DataSource = f_dm.ds_mission
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 0
          end
        end
        object Panel15: TPanel
          Left = 1
          Top = 1
          Width = 848
          Height = 24
          Align = alTop
          TabOrder = 1
          object Label31: TLabel
            Left = 200
            Top = 1
            Width = 3
            Height = 22
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 16
          end
          object Label32: TLabel
            Left = 203
            Top = 1
            Width = 82
            Height = 22
            Align = alLeft
            Caption = 'N'#176' de mission'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            ExplicitHeight = 16
          end
          object Label7: TLabel
            Left = 176
            Top = 1
            Width = 24
            Height = 22
            Align = alLeft
            Caption = '        '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 16
          end
          object Label29: TLabel
            Left = 1
            Top = 1
            Width = 175
            Height = 22
            Align = alLeft
            Caption = 'Table des ordres de mission '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            ExplicitHeight = 16
          end
          object mat: TEdit
            Left = 285
            Top = 1
            Width = 76
            Height = 22
            Align = alLeft
            Color = clSkyBlue
            TabOrder = 0
            OnChange = find_mission
            ExplicitHeight = 21
          end
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 25
          Width = 848
          Height = 383
          Align = alClient
          Color = clSkyBlue
          DataSource = f_dm.ds_mission
          DrawingStyle = gdsGradient
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = but1
          Columns = <
            item
              Expanded = False
              FieldName = 'GESTION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ReadOnly = True
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_MISSION'
              Title.Caption = 'N'#176' MISSION'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMA'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRENOMA'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_MISSION'
              Title.Caption = 'DATE_MISS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIEU_DEPART'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIEU_MISSION'
              Width = 100
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
              FieldName = 'DATE_D'
              Title.Caption = 'D_D'#233'part'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HEURE_D'
              Title.Caption = 'h_d'#233'part'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_R'
              Title.Caption = 'D_retour'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HEURE_R'
              Title.Caption = 'H_retour'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P_E_C'
              PickList.Strings = (
                'o'
                'n')
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_D_PE'
              Title.Caption = 'D_d'#233'but_charge'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HEURE_D_PE'
              Title.Caption = 'H_d'#233'but_charge'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_F_PE'
              Title.Caption = 'D_fin_charge'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HEURE_F_PE'
              Title.Caption = 'H_fin_charge'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOTIF'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOYEN_T'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARQUE'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMMATRICULATION'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVATION'
              Width = 250
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
              FieldName = 'DATE_ETAT'
              Visible = True
            end>
        end
      end
      object Panel16: TPanel
        Left = 851
        Top = 1
        Width = 471
        Height = 429
        Align = alClient
        TabOrder = 1
        object Panel17: TPanel
          Left = 1
          Top = 406
          Width = 469
          Height = 22
          Align = alBottom
          TabOrder = 0
          object DBNavigator2: TDBNavigator
            Left = 1
            Top = 1
            Width = 467
            Height = 20
            DataSource = DataSource1
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            Align = alClient
            TabOrder = 0
          end
        end
        object Panel18: TPanel
          Left = 1
          Top = 1
          Width = 469
          Height = 24
          Align = alTop
          TabOrder = 1
          object Label33: TLabel
            Left = 1
            Top = 1
            Width = 205
            Height = 22
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            Caption = 'Parametres de l'#39#233'tat Mission'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            ExplicitHeight = 16
          end
        end
        object Panel19: TPanel
          Left = 1
          Top = 25
          Width = 469
          Height = 381
          Align = alClient
          TabOrder = 2
          object DBGrid6: TDBGrid
            Left = 1
            Top = 1
            Width = 467
            Height = 379
            Align = alClient
            Color = clSkyBlue
            DataSource = DataSource1
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
                FieldName = 'DESIGNATION'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHAMP'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIBELLEAR'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIBELLEFR'
                Width = 450
                Visible = True
              end>
          end
        end
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 832
      Width = 1323
      Height = 33
      Align = alBottom
      TabOrder = 2
      object imp: TSpeedButton
        Left = 455
        Top = 1
        Width = 106
        Height = 31
        Align = alLeft
        Caption = 'Print'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFC
          FCF9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAECE6E2D8C6B9F5
          F4F4F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF2F2F2B6B6
          B6ABABABDCDCDCECECECF5F5F5F8F8F8F5F5F5EBEBEBC1B1A4AB876CB39177BC
          A18FCFCDCCE8E8E8F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEFEFEFB1B1B17A7A7A7171
          717171717F7F7FB0B0B0C6C6C6CFCFCFC0BAB59F816AA07C5ECCB5A3F3EAE2CB
          B19DBA9D87C3BFBCDFDFDFF6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCECECECA9A9A97777777575759291907171
          71B0AFAE7775757272728F8E8EA494868F6C4FA5846ADFCDBEF29B80F3EAE3F8
          F1ECD7C2B2BD9C85BFB8B4D7D7D7F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFCFCE7E7E7A3A3A3747474777777979695B5B3B1B7B5B47171
          71E5E5E57A78777E76718F725A967155C1A793E9D7C8EF9679F26F49F29D82F5
          EDE6F8F4EFE3D3C8C3A088BEB4ACCFCFCFEDEDEDFCFCFCFFFFFFFFFFFFFFFFFF
          FDFDFDE2E2E29D9D9D7373737A79799F9E9DBBBAB8BDBCBABCB9B8BAB8B77171
          71E5E5E57A787766564C9A76590C83000C83000C83000C8300EF977AF19A7FF3
          9E84F6A28AFAF6F2EDE3DBC6A58BC0B0A6C8C8C8E7E7E7F9F9F9FFFFFFE0E0E0
          9C9C9C7171717D7C7CA5A4A3C3C3C0C4C2C0C1C0BFC0BEBDBEBCBBBDBBB97171
          71E5E5E57A787739383A433A38587532789B590C83000C8300EAD9CC87E8E530
          F2F831F4FAB7A590FBF8F6F2ECE5CCAB94C2AC9EC2C2C2DFDFDFFFFFFF7A7A7A
          80807FACABABCCCBCACCCAC9C9C8C7C7C6C5C5C4C2C4C2C0C2C0BEC0BEBD7171
          71E0E0E07A78773130332C2B2D3936367B614D3E735E076E34538C7A86E7E330
          F2F730F3F98BF1F2F7A58EFDFAF8F1E8E1C8A48BC3AA98C4C3C2FFFFFF7A7A7A
          BDBCBCD2D1D1D0CFCFCFCECCCDCCCBCACAC9C8C7C6C7C6C4C5C4C2C3C2C07171
          71DFDEDE7A78774E4D4D2C2A2D32313339393A6A574A386B554E8573EE9577EF
          977BF29B80F49F85EDE3DBD1B9A6C09C80C4A38DC4B2A6D8D5D3FFFFFF7A7A7A
          C8C7C7D6D5D4D4D3D2D2D1D0D0CFCFCECECDCDCCCACACAC8C9C8C6C7C6C37171
          71DFDEDE7A78777E7C7A726F703D3C3F39383A4241425D534C526063CAB29EEE
          9679E2CFC2C1A691AD8A6EB59D8BB7ADA7BBBBBBDCDCDCF6F6F6FFFFFF7A7A7A
          D5D5D4DDDDDCD7D7D6D6D5D4D4D3D2D1D0CFCFCFCECECDCCCCCBCACAC9C87171
          71DFDEDE7A78777F7C7B8482818785856362624342434B494B5A555282654FA5
          866B8F715A958578747270B1B1B1B5B5B5B8B8B8CECECEF2F2F2FFFFFF7A7A7A
          E2E2E2EEEDEDE0DFDFD9D9D8D7D7D6D5D4D4D4D2D2D2D0CFCFCFCECECDCC7171
          71DFDEDE7A78777F7B7B8481818A8786908E8D8A88875A59595453535E5A5B6A
          635E7D7C7BBAB9B8717171B1B1B1B5B5B5B7B7B7C5C5C5E7E7E7FFFFFF7A7A7A
          E6E6E6F8F8F8F1F1F1E6E6E6DBDADAD9D8D8D7D6D5D5D5D3D3D2D1CCCCCB7171
          71DFDEDE7A78777E7C7B8481818A8786918E8D9895949F9C9C8281805F5E5E64
          62627D7B7BBAB9B9717171B2B2B2B9B9B9C7C7C7E6E6E6F9F9F9FFFFFF7A7A7A
          E8E8E8FAFAFAF9F9F9F8F8F8F1F1F1E9E8E9E1E1E1DBDBDBD7D6D5A6A5A57171
          717373737776767D7A798482818A8787908F8D989794A09D9CA7A5A4A3A1A078
          76767D7B7BBAB9B9717171BBBBBBCFCFCFEDEDEDFBFBFBFFFFFFFFFFFF7A7A7A
          E9E9EAFBFBFBFAFAFAFAFAFAF9F9F9F8F8F8F8F8F8F7F7F7E6E6E67878787171
          71A5A4A4BCBBBA8C8C8B797878898685908E8D989794A09D9CA7A5A4AEACABB5
          B3B1A7A5A5BAB9B9717171D8D8D8F3F3F3FDFDFDFFFFFFFFFFFFFFFFFF7A7A7A
          D7D7D7FCFCFCFBFBFBFBFBFBFBFBFAFAFAFAF9F9F9E9E9E97C7C7C7171718C8C
          8CD0CFCFCDCBCAB9B7B6B0AFAE828282848382989594A09D9CA7A4A3AEACABB4
          B2B2BBB9B8BAB9B8717171F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C
          717171939393C7C7C7E0E0E0DFDFDFDFDFDFC2C2C27171717171718C8C8CD9D8
          D8D8D8D7BBBAB89997949D9A99BAB8B7A4A3A27F7F7E959493A6A5A4AEABABB5
          B3B2BBB8B7BAB9B8717171FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB
          828282717171717171717171717171717171807F7F9F9F9FCFCFCFE9E9E9E5E5
          E4CAC8C7A7A5A3A09E9D999795918F8EA3A19FBDBCBB979696868584A8A6A5B4
          B3B1BAB8B8BAB9B9777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9C9B9B9D9C9A7575759B9B9BC9C9C8E1E0E1E7E6E6EAEAEAEDEDEEE0DFDFC7C5
          C4B3B1AEADABA9A7A5A3A09F9D999794918E8E8E8C8BACABAABAB7B78D8C8C94
          9392B7B6B5BBB9B87A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A5A5A5B6B4B2AFADAB8786867B7A7AB7B6B5C4C2C2ABAAA8A7A5A4ADABA9B3B0
          AFB6B4B2B2B0AEADABAAA7A5A3A19E9C999794908F8D8A8787918F8EB9B7B6B0
          AFAD888887A2A0A07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FAFAFABDBCBCAAA9A7916B4ED2D2D17C7C7C8D8C8CC0BFBEA7A5A3A7A5A3ADAB
          A9B2B0AFB6B4B2B3B1AEADABA9A7A5A3A19E9D999794918F8D8A8887868584C6
          C5C3B3B1B07171719F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9F9F9967153F9F9F9EEEEEE949494747474A6A6A6B5B3B2A7A5
          A3ADABAAB3B1AEB6B4B2B3B0AEADABAAA7A5A4A09E9D999795918E8DB5B4B3D0
          CECE878686737373E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9C775AFFFFFFFFFFFFFFFFFFC0C0C0767676818181B7B6
          B6ACAAA8ADABA9B2B0AFB6B4B2B3B0AEAEABA9A7A5A4A3A09FBEBDBCDDDCDBAD
          ACAC717171B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFA37E62FFFFFFF9F5F1FCF9F7FEFDFCEBEBEB8F8F8F7171
          719B9A9AB7B5B4ADABAAB2B1AEB6B4B2B8B6B4C5C3C2E0E0DFEAE9E9CFCFCE76
          7676A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFAB866AFFFFFFF1E6DDF4EBE4F7F0EBF9F5F1FDFBFABCBC
          BC747474797979B2B0AFD3D3D2DBDADBE6E6E6EBEAEAEEEDEDC0C0C07575759A
          9A9AFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB28D71F6F1EDF7F0EAEDDED3EFE1D7F1E6DDF4EBE4F8F2
          EDEFEFEF7B7B7B7171718A89899B9B9B999999878686717171757575BBBBBBFE
          FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEEE5DEC7A993E6D8CFFCF9F7EDDFD4EADACCECDDD1EFE1
          D7FDFBF9B994799F9F9F7C7C7C7171717A7A7A8E8E8EB1B1B1EAEAEAFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFCFBDCC8B9D4BBA9FAF6F4F5EDE7EADACCE9D7
          C9FBF8F6BF9B80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E8E1D1B5A1EFE4DEFCF9F7F1E5
          DCFCF9F7C5A185FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFADEC9B9DEC9B9FDFB
          FAFEFEFDC8A489FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE5DDD4BA
          A5F3EBE6C4A085FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB
          F9DAC5B5BF9B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = fsClick
        OnDblClick = fsClick
        ExplicitHeight = 39
      end
      object BitBtn2: TBitBtn
        Left = 159
        Top = 1
        Width = 202
        Height = 31
        Align = alLeft
        Caption = 'Parametres de mission'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C20E0000C20E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF696968666666868887FF00FFFF00FFFF00FFFF00FF
          FF00FF4F8D55497F4E42724836603D36603D36603D36603D36603D36603D3660
          3D36603D36603D36603D36603D36603D36603D36603D36603D36603D36603D36
          603D36603D38603E6A6C68747373A9A6A7BEBABB888B8AFF00FFFF00FFACAEAC
          8D8581837B7760606099C29D97C09B95BF9993BD9791BC958FBB938CB9918AB7
          8F88B68D86B48A84B38982B18680B0847EAE827CAD807AAC7E78AA7C75A87A73
          A77872A576738573676767A9A6A7D1CDCF9A9797888484FF00FFFF00FF8D8581
          C9C6C4FFFFFFA49B969BC39F99C29D97C09B95BF9993BD9791BC958FBB938CB9
          918AB78F88B68D86B48A84B38982B18680B0847EAE827CAD807AAC7E78AA7C75
          A87A799478646563A3A0A1D1CDCFB5B2B39B9598979797FF00FFFF00FFFF00FF
          FF00FF5392589FC6A39DC5A19BC39F99C29D97C09B95BF9993BD9791BC958FBB
          938CB9918AB78F88B68D86B48A84B38982B18680B0847EAE827CAD807AAC7E78
          A87B6C6E6A868584D0CCCEBCBABA999395959292FF00FFFF00FFFF00FFFF00FF
          FF00FF539258A1C8A59FC6A39DC5A19BC39F99C29D97C09B95BF9993BD9791BC
          958FBB938CB8918AB68E88B58C86B28984B18882AF8580AF837EAD827DA87F73
          83726A6A6AD2CED0CBC7C9918D8E989496FF00FFFF00FFFF00FFFF00FFACAEAC
          8D8581837B77606060A1C8A59FC6A39DC5A19BC39F99C29D97C09B95BF9993BD
          9791BA948EB7908BB38D89B08A87AF8885AC8584AC8582AC8380AC827D947B63
          6564A9A6A7D0CCCE8E8A89989395FF00FFFF00FFFF00FFFF00FFFF00FF8D8581
          C9C6C4FFFFFFA49B96A3C9A7A1C8A59FC6A39DC5A19BC39F99C29D97BF9A94BC
          9791B2918893827B7B7473706D706D6B716F6B787A72808E7B82A37F696B66A8
          A4A4CDCACBA4A0A29B95983A613FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258A8CCABA6CBA9A3C9A7A1C8A59FC6A39DC5A19BC29E98BE9A92A6
          8D787672827F789F988CBBB19EC7BAA6B8AE9C9994877A777274716D74716CC4
          BFBFA39F9E9892947AA97C36603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AACEADA8CCABA6CBA9A3C9A7A1C8A59FC6A39CC29E8C92857874
          72AAA495CAC7AFD9C8B2E4C8B3E5C9B4E5C9B4E4C8B3DAC6B09C9188716E6B93
          8E8A8F88887EA87E7CAD8036603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
          8D8581837B77606060AACEADA8CCABA6CBA9A3C9A7A0C6A498AC957C7975C2BD
          A8CEC9B1D2C6ACD9C6ACE1D1BDE5D8C5E5D4C1E2CFBAE5C9B4E3C8B2C6B3A672
          6F6C829C7D80AB817EAC8136603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
          C9C6C4FFFFFFA49B96ACCFAFAACEADA8CCABA6CAA8A1C0A17E7B77B1AB9CD0C4
          ABD8BDA2DCBEA3DDBFA4E9D7C6EBDED0E5EADFEBDECFE7D9C8E3CBB7E5C9B49E
          998C77757082A88180B08437603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1ACCFAFAACEADA8CBAA96A08F8E8982CEC0A6D7B7
          9ADCBBA0DDBFA4E4CDB7ECE1D2E6EBE0E5EBE0E5EADFEADFD0EADECEE3CBB5D9
          C6B17A777282967E82B18636603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1AED1B1ACCFAFA9CCAC86847FB2AC9CD2AF8FD8B4
          96DCBA9DDEBFA5EDE2D3E7ECE1E6EBE1E6EBE0E5EBE0ECE1D3ECE0D2E5D1BEE3
          C9B39895887C817584B38936603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
          8D8581837B77606060AED1B1AED1B1AED1B1ABCDAE807C79C3B6A0D2AC8AD9B4
          93DBB698E2C6AFEFE3D6E7ECE1E7ECE1E6EBE1E6EBE0E5EBE0EDE2D4E9D6C4E5
          C9B4B4B19F75736E86B48A36603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
          C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B1ADCFB07F7B78CAB599D2A986D8B0
          8FD9AE8DDDBA9DEBDDCCEFE6D7EEE6D7E7ECE1E6EBE1E6EBE0E5EBE0EAD9C8E5
          C9B4C2BEA974716E88B68D37603EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1AED1B1AED1B148814E837F7B9098749D966DA49C
          74A59E76A6A37CA5A37EA8A985AEB798B0BFA3A4BEA3A4BEA3A4BEA3B0BA9EE4
          C8B3B7B3A17876728AB78F37603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1AED1B1AED1B148814E898882B6A493C2B28EC7B6
          94C9BA98D2CFB5D2D2B8CBC2A5C9BFA1CCC3A6D2D1B9D5D7C0D6DBC5B1BEA1E1
          CFBC9D998D8085798CB99137603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
          8D8581837B77606060AED1B1AED1B1AED1B147814E9EA697938C85C2B08CC5B4
          90C8B895D3D1B8D4E3D2D8DDC9D2D2B8CBC2A5C9BFA1C9BFA1C9BFA1A5A37ED0
          B3977F7B768D9D878EB89137603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
          C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B147814EACCAAD84807DB69880C2B0
          8DC7B491D2D0B7D5E4D2D4E3D2D8DFCAD8DDC9D4D6BED3D2B9D0CDB3A1A783A4
          96887E7B7692B69291BB9436603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1AED1B1AED1B147814EAED1B1A7B9A4837E7ABDAD
          8CC2B08DCFD2BBD2E3D0D5E4D2D4E3D2D4E3D2D4E3D2D6DCC7DFDBC8AEB19B78
          757293AE9194BD9793BD9736603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1AED1B1AED1B147814EAED1B1AED0B09A9F92807B
          79B4A99AD2D0BBD7D4C0D0D8C1D2D9C3D2D9C3CFD6C0D2D0BBA8A4987875728F
          9C8A98BF9A97BF9A95BF9936603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
          8D8581837B77606060AED1B1AED1B1AED1B147814EAED1B1AED1B1AED0B0A7B9
          A4827F7B8D8A84ACA79CC2BDADC8C5B2BFBBABA39F9484817C807D795F835E9C
          C39F9BC29E99C29D97C09B36603DFF00FFFF00FFFF00FFFF00FFFF00FF8D8581
          C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B147814EAED1B1AED1B1AED1B1AED1
          B1ACCAAD9EA6978988827D79767976737A777588888198A392A1C2A248814E9F
          C6A39DC5A19BC39F99C29D36603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1AED1B1AED1B147814E47814E47814E47814E4781
          4E47814E47814E48814E48814E48814E48814E48814E48814E47814E47814EA1
          C8A59FC6A39DC5A19BC39F36603DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF539258AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1
          B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1ACCFAFAACEADA8CCABA6CBA9A3
          C9A7A1C8A59FC6A39DC5A136603DFF00FFFF00FFFF00FFFF00FFFF00FFACAEAC
          8D8581837B77606060AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1
          B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1ACCFAFAACEADA8CCABA6
          CBA9A3C9A7A1C8A59FC6A3427248FF00FFFF00FFFF00FFFF00FFFF00FF8D8581
          C9C6C4FFFFFFA49B96AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1
          B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1AED1B1ACCFAFAACEADA8
          CCABA6CBA9A3C9A7A1C8A5497F4EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF518F56518F56518F56518F565190565290575290575290575290575291
          5752915752915752915753915853925853925853925853925853925853925853
          9258539258539258539258539258FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object fs: TButton
        Left = 561
        Top = 1
        Width = 101
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Fastreport'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = fsClick
      end
      object fs_ds: TButton
        Left = 361
        Top = 1
        Width = 94
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Designer Fs'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        OnClick = fs_dsClick
      end
      object ecran: TButton
        Left = 662
        Top = 1
        Width = 124
        Height = 31
        Align = alLeft
        Caption = #1593#1604#1609' '#1575#1604#1588#1600#1600#1575#1588#1577
        Enabled = False
        TabOrder = 3
        OnClick = fsClick
      end
      object BitBtn3: TBitBtn
        Left = 1
        Top = 1
        Width = 158
        Height = 31
        Align = alLeft
        Caption = 'Bar'#232'mes de frais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          66090000424D660900000000000036000000280000001C0000001C0000000100
          18000000000030090000C20B0000C20B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFAAABAB999C9E999C9E999C9D999C9E9A9D9E9A9D9E
          9A9D9E9A9D9F9A9D9F9A9E9F9B9EA09B9EA09B9EA09B9FA09B9FA19C9FA19C9F
          A19CA0A29CA0A29CA0A29B9EA0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA
          ABABFEFEFDFEFEFDFEFEFDFEFEFDFCFCFBFAFAF9F8F8F7F6F6F5F4F4F3F2F2F1
          F0F0EFEEEEEDECECEBEAEAE9E8E8E7E4E4E3DFDFDEDBDBDAD6D6D6D2D2D29B9E
          A0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFEFDFEFEFDFEFEFDFE
          FEFDFEFEFDFCFCFBFAFAF9F8F8F7F6F6F5F4F4F3F2F2F1F0F0EFEEEEEDECECEB
          EAEAE9E8E8E7E4E4E3DFDFDEDBDBDAD6D6D69B9EA0FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFAAABABD7F2FFD7F2FFD7F2FFD7F2FFD7F2FFD7F2FFD7F2FFD7
          F2FFF8F8F7F6F6F5F4F4F3F2F2F1F0F0EFEEEEEDECECEBEAEAE9E8E8E7E4E4E3
          DFDFDEDBDBDA9B9EA0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAABABD7F2
          FF5FCCFF3ABAF13ABAF13ABAF13ABAF15DC7F8C9E2EEE7E7E6E5E5E4E4E4E3E8
          E8E7F0F0EFF0F0EFEEEEEDECECEBEAEAE9E8E8E7E4E4E3DFDFDE9B9EA0FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFAAABABD7F2FF5FCCFF837D7E837D7E5FCC
          FF817B7C55B5E27F7F7B938F8E78747566616283828695969B94989E989CA29C
          A0A5A5A6ABA5A6ABE8E8E7E4E4E39B9EA0FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFAAABABD7F2FF5FCCFF837D7E5FCCFF837D7E9A9596009CFF009CFF009C
          FF009CFF0088DEA7A6A896999DB6BAC0C9CED4999CA1CDCCCEA5A6ABEAEAE9E8
          E8E79B9EA0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAABABD7F2FF5FCCFF
          5FCCFF5FCCFF5FCCFF5ECAFC009CFF3EB5E53ABAF129B3F7069AF50088DEBB6C
          17A7A6A8CECECDE1E1E0EEEEEDEEEEEDECECEBEAEAE99B9EA0FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFAAABABD7F2FFD7F2FFA5A6ABA5A6ABB5B5B5A9ABA8
          BDBCB7009AFB44C8FD3DC4FF2AB8FFB96B17CE7419A05C1481858A83878B999A
          9FA4A5A9EFEFEEEDEDEC9B9EA0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA
          ABABFEFEFDFEFEFDA5A6ABCDCCCEA3A3A2B4B2B1D2D1CCB7B3AE009CFF44C9FF
          BB6C17D47719F7A349D07519A05C14828589ADACAD999A9FEFEFEEEFEFEE9B9E
          A0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFEFDFEFEFDFEFEFDFE
          FEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDD4771BF9C086F8B670F8B266F7A349
          D07519A05C14A7A6A8CECECDE1E1E0EFEFEE9B9EA0FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFAAABABFEFEFDFEFEFDA5A6ABA5A6ABB5B5B5A9ABA8BEBDB8A6
          A5A0C2BDBC9D9899D4771BF9C086F8B670F8B266F7A349D07519A05C148C8C91
          CECECDE1E1E09A9D9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFE
          FDFEFEFDA5A6ABCDCCCEA3A3A2B4B2B1D2D1CCB7B3AEE7E2E0DAD3D5B9B7B7D4
          771BF9C086F8B670F8B266F7A349D07519A05C14A7A6A8CECECD909395FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFEFDFEFEFDFEFEFDFEFEFDFEFE
          FDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDD4771BF9C086F8B670F8
          B266F7A349D07519A05C14A7A6A8838587FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFAAABABFEFEFDFEFEFDA5A6ABA5A6ABB5B5B5A9ABA8BEBDB8A6A5A0C2BD
          BC9D9899837D7E9F9DA2A5A6ABD4771BF9C086F8B670F8B266F7A349D07519A0
          5C14848688FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFEFDFEFEFD
          A5A6ABCDCCCEA3A3A2B4B2B1D2D1CCB7B3AEE7E2E0DAD3D5B9B7B7CDCCCEBEC2
          C7DBE0E7D4771BF9C086F8B670F8B266F7A349D07519A05C14FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFAAABABFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFD
          FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDD4771BF9C0
          86F8B670F8B266F7A349D377199E5B14FF00FFFF00FFFF00FFFF00FFFF00FFAA
          ABABFEFEFDFEFEFDA5A6ABA5A6ABB5B5B5A9ABA8BEBDB8A6A5A0C2BDBC9D9899
          837D7E9F9DA2A5A6AB9BA0A6999DA39CA0A5D4771BF9C086F8B670F8B266F7A3
          49A05C14FF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFEFDFEFEFDA5A6ABCD
          CCCEA3A3A2B4B2B1D2D1CCB7B3AEE7E2E0DAD3D5B9B7B7CDCCCEBEC2C7DBE0E7
          D9DEE49A9DA2CDCCCED4771BF9C086F8B670F8B266A05C14FF00FFFF00FFFF00
          FFFF00FFFF00FFAAABABFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
          FEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFD
          D4771BD4771BA05C14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFE
          FDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
          FEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFD9B9EA0FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFAAABABFEFEFDFEFEFDFEFEFDFEFEFDFEFE
          FDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
          FEFDFEFEFDFEFEFDFEFEFDFEFEFD9B9EA0FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFAAABAB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9C9B9B9C9B9C9C9B9C9C9B9EA09B9EA09B9EA09B9EA09B
          9EA09B9EA0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF}
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn3Click
      end
      object fin: TBitBtn
        Left = 1249
        Top = 1
        Width = 73
        Height = 31
        Align = alRight
        Caption = 'fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF19160F6B594FCE7DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBAB4DEB5F18E95509E95509EC6927F2996CF9C9B2FEF6F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBAB4DEB5F18E95509E9550AE95509E9560AE9560AE9560AEF7D45F4AA84FA
          D8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBAB4DEB5F19EA5509E9550AE9550AE9560BE9550AEA550BE9560BE9560CEA
          560BEB611BF08D5AF7BC9FFDECE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF021D581848770000000000
          00FBAB4DDB5008E9560AEA550AE9560AEA560BE9560BEA560BE9560CE9570CE9
          560CE9570CE9560DE9560DDE530D0D2155184878FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03215C1848790000000000
          00FBAB4DDB5009E9550AE9550BE9560BE9560BE9560BE9560CEA570CE9570DE9
          570DE9570DE9570DE9580EE9570F112456194879FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05245F1849790000000000
          00FBAB4DDB5009E9550BE9560CE9560CEA570CE9570CE9570CE9560DE9570DE9
          570EE9570EEA570EE9570EE9570F12275A184979FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF062863184A7B0000000000
          00FBAB4DDB510AEA570BE9560CE9560CE9560DE9570DEA570DE9570DE9570EE9
          570EE9570EE9580EE9570FE9580F142A5E194A7BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF092C68184B7C0000000000
          00FBAB4DDE6120EB5F18E9560CEA570DEA570DE9570DEA570EEA570EE9570EE9
          570FE9580FEA580FEA580FEA5810152F63194B7BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FEFFFFFF0B316D194C7D0000000000
          00FBAB4DE37640EE7B40EC6F2FEB631EE95810E9570EE9570EE9570EEA570FEA
          5810E9580FE95810EA5811EA5811173368194C7DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C8EAEAFA0C3572194D7E0000000000
          00FBAB4DE57A46EE7F47EE7C43EE793FED6D2EEA601AEA580FE9580FE9580FEA
          5810EA5811EA5811E95811EA59111A376D194E7EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C83434D91037801A4E800000000000
          00FBAB4DE67E4BEF824BEF7F48EE7D45EE7B41EE7439EC6624E95810E95810EA
          5910EA5811EA5911EA5912EA59121C3C721A4E80FFFFFFFFFFFFFFFFFF1616C8
          1616C81616C81616C81616C81616C81616C87070FC3439D21A4B890000000000
          00FBAB4DE6824FEF8651C35B18EE8149EF7E47EE7C44EE7940EC6827EA5A12EA
          5912EA5911E95912E95A12E959131E41771A5081FFFFFFFFFFFFFFFFFF1616C8
          C0C0FE9494FD7171FD7171FD7171FD7171FD7171FD7070FC353AD30202130000
          00FBAB4DE684548292914B6980C35B18EF824CEF8049EE7D45EE7A42EC6927E9
          5912E95912E95A12EA5A13E9591421467D1A5183FFFFFFFFFFFFFFFFFF1616C8
          CECEFEC5C5FEA0A0FE7F7FFD7171FD7171FD7171FD7171FD6E6EFB1919970000
          00FBAB4DE7885A9CA89E809E9EF08855F08551EF834EEF814AEE7E47EE7B43EB
          6626EA5913E95913E95A14E95914224B831B5285FFFFFFFFFFFFFFFFFF1616C8
          D4D4FECFCFFECBCBFEBABAFEA0A0FE8C8CFD7D7DFD7272FC373DD30202130000
          00FBAB4DE88D60F19262F18E5EF08C5BEF8A58EF8753F08551EF824DEF7F4AEE
          773DEA611EEA5A14E95A15EA5A1524518A1B5386FFFFFFFFFFFFFFFFFF1616C8
          1616C81616C81616C81616C81616C81616C8BCBCFE575CDB1B4E8E0000000000
          00FBAB4DE89066F29668F19264F09060F18D5CF08A59EF8956EF8552EF834FEE
          814BED6F33EA5A14E95B15EA5A1527568F1C5488FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C85B5BE01D55A21C558A0000000000
          00FBAB4DE9966CF2986DF2966AF19466F19263F18E5EF08C5AEF8957EF8754EF
          8451EE804AEB6524EA5B15EA5A162A5B961C5689FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C8EAEAFA2061A41C578B0000000000
          00FBAB4DE99871F39D73F29A70F2976BF19568F19264F19060F18D5DEF8B5AF0
          8856F08653ED7236EA5B16EA5B172D619C1C578BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FEFFFFFF2367AB1C598C0000000000
          00FBAB4DEA9B75F3A179F39E76F29B71F2996EF2966AF19467F19163F18E5FF0
          8B5BF08958EF814DEB601DEA5B182F66A11C588CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF256CB01C598E0000000000
          00FBAB4DECA07CF3A57FF3A27AF39F77F29D74F29A6FF2976CF19568F19265F1
          9061F08D5DF08A59EB6B2DEA5C18326CA81C5A8EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2872B71C5B900000000000
          00FBAB4DECA581F4A985F4A680F3A47DF3A079F39E75F29B71F2986EF1966AF1
          9366F19063F18E60ED753DEA5C183371AE1C5B8FFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B78BD1D5C910000000000
          00FBAB4DEDA886F4AD8AF4AA86F4A783F3A47EF3A27BF39F77F29C73F1996FF2
          976CF19569F19264EF804CEA5B183575B31D5D91FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D7DC31D5D920000000000
          00FBAB4DEEAC8CF5B090F4AE8CF4AB89F4A884F4A681F3A47DF3A078F29E75F2
          9B72F2986DF1966AF08A5AEA5C18387BB91D5E92FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F82C91E5E940000000000
          00FBAB4DEEAF91F5B495F5B291F4AF8DF4AC8AF4AA86F4A682F3A47EF3A17BF3
          9E77F29C73F2996FF19467EA5C193B80BF1E5F94FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3287CE1E60950000000000
          00FBAC4EF6B898F6B89BF6B697F5B293F5B090F5AD8CF4AB87F3A884F3A680F3
          A27CF3A079F29D75F29A70EA5C193D84C21E6095FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF338BD31E60970000000000
          008A6841D7A068FBB87CF9B98EF7B797F5B495F5B191F5AE8DF4AC8AF4A985F4
          A682F3A47EF3A07AF29A70EA5C193E88C71E6096FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3690D71E62980000000000
          0000000000000018120B574229BD8B59DEA46CFAB67AF8B68BF6B18EF4AD8BF4
          AA87F4A783F3A47FF2976CEA5C19408CCC1F6198FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3793DC1E62980000000000
          000000000000000000000000000000000000001E170E664C30C7935FFCB774FA
          B47AF7B184F5A983F19063EA5C194290D11E6298FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3997DF1E63990000000000
          0000000000000000000000000000000000000000000000000000000000000027
          1E137A5B39CE9861FBB26CF489424294D41F6299FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A99E31F639A1F639A1F63
          9A1E639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F
          649A1F639A1F639A1F639A2F6A981F639A1F649AFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B9CE63B9CE63B9CE63B9C
          E63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B
          9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE6FFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 5
        OnClick = finClick
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 952
    Top = 480
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = f_dm.ds_depenses_mission
    BCDToCurrency = False
    Left = 1112
    Top = 552
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = f_dm.ds_mission
    BCDToCurrency = False
    Left = 1016
    Top = 552
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 1040
    Top = 504
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44369.326880127300000000
    ReportOptions.LastChange = 44370.338708645800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     if <frxDBDataset1."p_e_c">='#39'o'#39' then memo9.visible:=true'
      '     else  memo9.visible:=false'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 1144
    Top = 480
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 1054.488503860000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 387.779530000000000000
          Top = 78.959060000000000000
          Width = 350.000000000000000000
          Height = 25.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1600#1600#1593#1600#1600#1575#1605#1600#1600#1600#1600#1577' '#1604#1604#1605#1600#1600#1581#1600#1600#1575#1587#1600#1600#1600#1600#1576#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 389.379530000000000000
          Top = 419.959060000000000000
          Width = 69.000000000000000000
          Height = 32.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1587#1575#1593#1577' '#1575#1604#1584#1607#1575#1576)
          ParentFont = False
          VAlign = vaCenter
        end
        object l11: TfrxMemoView
          AllowVectorExport = True
          Left = 28.379530000000000000
          Top = 574.959060000000000000
          Width = 715.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object l22: TfrxMemoView
          AllowVectorExport = True
          Left = 29.379530000000000000
          Top = 601.959060000000000000
          Width = 714.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              ' '#1593#1600#1600#1600#1600#1583#1583' '#1575#1604#1600#1605#1576#1610#1600#1600#1600#1578' '#1601#1610' '#1575#1604#1600#1588#1600#1605#1600#1600#1575#1604' : 4 * 1'#160'200.00 '#1583#1580'  = 4'#160'800.00 ' +
              #1583#1580' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 73.379530000000000000
          Top = 827.959060000000000000
          Width = 142.000000000000000000
          Height = 29.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1594#1600#1600#1600#1585#1583#1575#1610#1600#1600#1600#1600#1600#1577' '#1610#1608#1605)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 76.179530000000000000
          Top = 7.559060000000000000
          Width = 470.000000000000000000
          Height = 30.000000000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              #1575#1604#1580#1605#1600#1600#1607#1600#1600#1608#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1586#1575#1574#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1583#1610#1600#1600#1605#1600#1608#1602#1600#1585#1575#1591#1600#1610#1600#1600#1577' '#1575#1604#1600#1588#1600#1593#1600#1576#1600#1610#1600 +
              #1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 342.779530000000000000
          Top = 137.959060000000000000
          Width = 395.000000000000000000
          Height = 25.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1601#1585#1593#1610#1577' '#1604#1604#1605#1610#1586#1575#1606#1610#1577' '#1608' '#1575#1604#1608#1587#1575#1574#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 525.379530000000000000
          Top = 903.959060000000000000
          Width = 196.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1594#1600#1585#1583#1575#1610#1600#1600#1577)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 400.379530000000000000
          Top = 544.959060000000000000
          Width = 118.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '( '#1605#1578#1600#1600#1603#1604#1600#1600#1601' '#1576#1600#1600#1607')')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 152.379530000000000000
          Top = 926.959060000000000000
          Width = 88.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1600#1593#1600#1600#1606#1600#1600#1600#1600#1600#1610)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 293.379530000000000000
          Top = 733.959060000000000000
          Width = 456.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' '#1579#1605#1575#1606#1610#1577' '#1570#1604#1575#1601' '#1583#1610#1606#1575#1585' '#1580#1586#1575#1574#1585#1610'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object l4: TfrxMemoView
          AllowVectorExport = True
          Left = 12.379530000000000000
          Top = 666.959060000000000000
          Width = 732.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' '#1575#1604#1600#1605#1600#1580#1600#1600#1605#1600#1600#1608#1593' '#1575#1604#1603#1604#1610' : 8'#160'000.00 '#1583#1580' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object l3: TfrxMemoView
          AllowVectorExport = True
          Left = 19.379530000000000000
          Top = 630.959060000000000000
          Width = 724.000000000000000000
          Height = 23.000000000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' '#1605#1600#1600#1589#1575#1585#1610#1600#1600#1601' '#1571#1582#1600#1600#1585#1609' :  '#1587#1610#1600#1600#1600#1575#1585#1577' '#1571#1580#1600#1585#1577' : 3'#160'400.00 '#1583#1580' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 245.379530000000000000
          Top = 704.959060000000000000
          Width = 503.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              ' :  '#1571#1606#1600#1575' '#1575#1604#1600#1605#1605#1590#1600#1610' '#1575#1587#1600#1601#1600#1604#1600#1600#1600#1607' '#1575#1588#1600#1600#1607#1600#1600#1583' '#1593#1600#1604#1609' '#1589#1600#1600#1581#1600#1600#1577' '#1575#1604#1600#1605#1600#1576#1600#1600#1575#1604#1594' '#1575 +
              #1604#1600#1605#1600#1576#1600#1610#1600#1606#1577' '#1608' '#1575#1604#1600#1605#1600#1602#1583#1585#1577' '#1576'     ')
          ParentFont = False
        end
        object f: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 372.959060000000000000
          Width = 583.400000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '   '#1575#1604#1608#1592#1600#1610#1601#1577'    '#1585#1574#1610#1587' '#1605#1603#1578#1576)
          ParentFont = False
          VAlign = vaCenter
        end
        object g: TfrxMemoView
          AllowVectorExport = True
          Left = 82.811070000000000000
          Top = 341.179530000000000000
          Width = 575.600000000000000000
          Height = 25.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1605#1601#1578#1588' '#1585#1574#1610#1587#1610)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 541.179530000000000000
          Top = 51.959060000000000000
          Width = 195.000000000000000000
          Height = 25.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1608#1586#1575#1585#1577' '#1575#1604#1600#1600#1600#1605#1600#1600#1575#1604#1600#1600#1610#1600#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 525.379530000000000000
          Top = 544.959060000000000000
          Width = 220.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1578#1600#1600#1593#1600#1600#1608#1610#1600#1600#1590#1600#1600#1600#1575#1578' '#1610#1600#1600#1608#1605#1600#1600#1610#1600#1600#1577' '#1604#1604#1578#1600#1606#1602#1600#1600#1604)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 125.283464570000000000
          Top = 453.543307090000000000
          Width = 109.984251970000000000
          Height = 45.354330710000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."MOYEN_T">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 539.379530000000000000
          Top = 419.959060000000000000
          Width = 113.000000000000000000
          Height = 32.881889760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1578#1580#1575#1607' '#1575#1604#1609)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 653.456692910000000000
          Top = 419.959060000000000000
          Width = 98.220470000000000000
          Height = 32.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1606#1591#1604#1575#1602' '#1605#1606)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 5.379530000000000000
          Top = 419.959060000000000000
          Width = 120.000000000000000000
          Height = 32.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1600#1600#1604#1575#1581#1592#1600#1600#1575#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 125.102362204724000000
          Top = 419.959060000000000000
          Width = 110.000000000000000000
          Height = 32.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1608#1587#1610#1604#1577' '#1575#1604#1578#1606#1602#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 301.606299210000000000
          Top = 419.959060000000000000
          Width = 87.338590000000000000
          Height = 32.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1575#1604#1575#1610#1575#1576)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330708661417000000
          Top = 419.959060000000000000
          Width = 67.000000000000000000
          Height = 32.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1587#1575#1593#1577' '#1575#1604#1575#1610#1575#1576)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 458.379530000000000000
          Top = 419.959060000000000000
          Width = 83.527559055118110000
          Height = 32.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1575#1604#1584#1607#1575#1576)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 665.411070000000000000
          Top = 342.179530000000000000
          Width = 78.200000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1585#1578#1576#1600#1600#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 651.968503937008000000
          Top = 312.400000000000000000
          Width = 84.600000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '('#1575#1604#1600#1600#1600#1587#1600#1600#1610#1600#1600#1583'('#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 372.779530000000000000
          Top = 107.959060000000000000
          Width = 365.000000000000000000
          Height = 25.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1600#1600#1605#1600#1583#1610#1600#1600#1585#1610#1600#1600#1577' '#1575#1604#1600#1580#1600#1600#1607#1600#1600#1608#1610#1600#1600#1600#1577' '#1604#1604#1600#1582#1586#1610#1600#1600#1606#1600#1600#1577' '#1576#1600#1600#1594#1600#1600#1585#1583#1575#1610#1600#1600#1577)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 231.718120000000000000
          Top = 222.943290000000000000
          Width = 270.815770000000000000
          Height = 43.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            #1603#1600#1600#1588#1600#1601' '#1605#1589#1575#1585#1610#1600#1600#1600#1601' '#1575#1604#1578#1606#1602#1600#1600#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1NOMA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 313.480520000000000000
          Width = 638.740570000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[trim(<frxDBDataset1."noma">)+'#39' '#39'+trim(<frxDBDataset1."prenoma">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1LIEU_DEPART: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 653.456692910000000000
          Top = 453.543307090000000000
          Width = 98.267716540000000000
          Height = 45.354330710000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."LIEU_DEPART">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.314960630000000000
          Top = 453.543307090000000000
          Width = 113.007874020000000000
          Height = 45.354330710000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."LIEU_mission">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1DATE_D: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 458.456692910000000000
          Top = 453.543307090000000000
          Width = 83.527563940000000000
          Height = 45.354330710000000000
          DataField = 'DATE_D'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DATE_D"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1HEURE_D: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.291338580000000000
          Top = 453.543307090000000000
          Width = 69.165354330000000000
          Height = 45.354330710000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."HEURE_D"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1DATE_R: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 301.566929130000000000
          Top = 453.543307090000000000
          Width = 87.307093940000000000
          Height = 45.354330710000000000
          DataField = 'DATE_R'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DATE_R"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1HEURE_R: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 234.401574800000000000
          Top = 453.543307090000000000
          Width = 66.897637800000000000
          Height = 45.354360000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."HEURE_R"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1OBSERVATION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 5.228346460000000000
          Top = 453.543307090000000000
          Width = 120.188976380000000000
          Height = 45.354360000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[trim(<frxDBDataset1."OBSERVATION">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object simpledataset_parameters: TSimpleDataSet
    Aggregates = <>
    Connection = f_dm.connect_db_gf
    DataSet.CommandText = 'select * from parameters  where forme='#39'f_etat_mission'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 984
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = simpledataset_parameters
    Left = 1008
    Top = 72
  end
end
