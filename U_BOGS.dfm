object f_BOGS: Tf_BOGS
  Left = 2
  Top = 67
  Caption = 'BOGS'
  ClientHeight = 432
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 24
    Width = 1000
    Height = 401
    Caption = 'Panel1'
    Color = clAppWorkSpace
    TabOrder = 0
    object RichEdit1: TRichEdit
      Left = 24
      Top = 8
      Width = 865
      Height = 385
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        
          '- Dans F_dm j'#39' ai mis 1 2'#176'  ttables ibt_Lignes_1 pour l'#39'utiliser' +
          ' dans la relation maitre-d'#233'tail mandat-lignes'
        ' parcqu'#39'il il y a probl'#233'me quand ibt_lignes est utilis'#233'.'
        
          '- Dans ff_engagement le refresh pour l'#39'annulation d'#39'une insertio' +
          'n est fait avec close_open'
        '   '#224' corriger.'
        
          '-30/03/2014 J'#39'ai mis DisableStringTrim=true (tSimpledataset Mait' +
          're et d'#233'tail) parcequ'#39'il n'#39'y a pas cette'
        
          ' propri'#233't'#233' dans le composant Tibdataset de Interbase (ceci pour ' +
          'r'#233'soudre le Pb '#39'Violation de cl'#233' ....'#39').'
        
          '-30/03/2014 Ajout du trigger  "delete_det_engagement" pour la ta' +
          'ble Engagement : les lignes Det_eng sont supprim'#233's apr'#232's'
        
          ' suppression de l'#39'engagement ma'#238'tre. Ceci pour ne pas utiliser l' +
          'a requette "Query_del_lignes_eng".'
        
          '-30/03/2014 Ajout du trigger "delete_lignes_mandat" pour la tabl' +
          'e  "mandat" : les lignes mandat sont supprim'#233's apr'#232's'
        
          ' suppression du mandat ma'#238'tre. Ceci pour ne pas utiliser la requ' +
          'ette "ib_del_lignes_mandat".'
        '- 30/03/2014 Suppression de la requette "Query_del_lignes_eng"'
        '- 01/04/2014 Ins'#233'rer les formules de calcul dans Excel.'
        '- 21/04/2014 Maj Mandat et lignes mandat avec applayupdate(-1).'
        
          '-24/04/2014 utiliser ScaleBy(M, D) et   Realign avec l'#39'evennemen' +
          't Oncreate de la forme pour la redimenssionner')
      ParentFont = False
      TabOrder = 0
      Zoom = 100
    end
  end
end
