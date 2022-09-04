unit u_principale_ar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.Mask;

type
  Tf_principale_ar = class(TForm)
    GESTION: TEdit;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    TABLES1: TMenuItem;
    FOURNISSEUR1: TMenuItem;
    CHAPITRE1: TMenuItem;
    Adminstration1: TMenuItem;
    TYPEDEPENSE1: TMenuItem;
    BAREMEDESFRAIS1: TMenuItem;
    PARAMETRESMISSION1: TMenuItem;
    PARAMETERS1: TMenuItem;
    AGENTS1: TMenuItem;
    GRADE1: TMenuItem;
    FONCTION1: TMenuItem;
    MOIS1: TMenuItem;
    LIEU1: TMenuItem;
    SERVICE1: TMenuItem;
    CREDITSAFFECTES1: TMenuItem;
    MAJ9: TMenuItem;
    DEPENSESANNULEES2: TMenuItem;
    FACTURES1: TMenuItem;
    MAJ7: TMenuItem;
    LISTEDESFACTURESDUNFOURNISSEUR1: TMenuItem;
    CONVENTION1: TMenuItem;
    Misejours1: TMenuItem;
    BONDECOMMANDE1: TMenuItem;
    MAJ1: TMenuItem;
    Edition3: TMenuItem;
    MANDATS1: TMenuItem;
    MAJ3: TMenuItem;
    EDITION1: TMenuItem;
    CONSUL_eng: TMenuItem;
    ENGAGEMENTCREDITS1: TMenuItem;
    LISTEDESENGAGEMENTSDUNFOURNISSEUR1: TMenuItem;
    MANDAT1: TMenuItem;
    MAJ4: TMenuItem;
    REIMPUTATION1: TMenuItem;
    EDITION2: TMenuItem;
    AVISDEVIREMENT1: TMenuItem;
    FichierAvisdefirement1: TMenuItem;
    ETATDEVIREMENT1: TMenuItem;
    Consultation1: TMenuItem;
    JOURNAL1: TMenuItem;
    LISTEDEMANDATDUNFOURNISSEUR1: TMenuItem;
    MISSION1: TMenuItem;
    MAJ5: TMenuItem;
    CALCULETEDITION1: TMenuItem;
    CONSONMMA1: TMenuItem;
    MAJ8: TMenuItem;
    DESIGNATION1: TMenuItem;
    EDITIONETAT1: TMenuItem;
    VERIFIERDESIGNATION1: TMenuItem;
    COMPTABILITE1: TMenuItem;
    Maj6: TMenuItem;
    Donnes1: TMenuItem;
    ETATS1: TMenuItem;
    SITUATIONDESCREDITS1: TMenuItem;
    SITUATIONDESCREDITSPARARTICLE1: TMenuItem;
    SITUATIONDESCREDITSPARARTICLEDSETW1: TMenuItem;
    SITUATIONDESCREDITSPARARTICLEDSETWsETTCs1: TMenuItem;
    ETATDESDEPENSESEXECUTEES1: TMenuItem;
    COMPTEADMINISTRATIVETABLEAUN31: TMenuItem;
    COMPTEADMINISTRATIFTABLEAUN31: TMenuItem;
    NOMBREDEMANDATPARCHAPITREPARSTRUCTURE1: TMenuItem;
    OUTILS1: TMenuItem;
    Parametres1: TMenuItem;
    Sauvegarde1: TMenuItem;
    RequetteSQL1: TMenuItem;
    ouslespanneauxdeconfig1: TMenuItem;
    Priphriquesetimprimantes1: TMenuItem;
    RedmarrgeSpooler1: TMenuItem;
    Services1: TMenuItem;
    RsolutionEcran1: TMenuItem;
    Utilisateur1: TMenuItem;
    Aide1: TMenuItem;
    Apropos1: TMenuItem;
    Aide2: TMenuItem;
    Dpanage1: TMenuItem;
    RECONNECT: TMenuItem;
    QUITER1: TMenuItem;
    Button1: TButton;
    dat: TLabel;
    ydate: TMaskEdit;
    xdate: TMaskEdit;
    ZDATE: TMaskEdit;
    procedure FOURNISSEUR1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CHAPITRE1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Adminstration1Click(Sender: TObject);
    procedure QUITER1Click(Sender: TObject);
    procedure MAJ8Click(Sender: TObject);
    procedure quiter(Sender: TObject; var Action: TCloseAction);
    procedure on_activate(Sender: TObject);
    procedure on_create(Sender: TObject);
    procedure filtrer(Sender: TObject);
    procedure AVoirlanneedegestion(Sender: TObject);
    procedure DESIGNATION1Click(Sender: TObject);
    procedure EDITIONETAT1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_principale_ar: Tf_principale_ar;

implementation

{$R *.dfm}

uses u_forme1,u_fournisseur, MAIN, u_chapitre, u_administration, u_dm, u_consommation,
  u_consul_eng, u_consul_mandat, u_designation, u_etats_consommation;





procedure Tf_principale_ar.Adminstration1Click(Sender: TObject);
begin
       if f_administration.visible=true then f_administration.Close;
  f_administration.Caption:='��������';

  with f_administration do begin
      button1.Caption:='���������';
      label1.Caption:='��� ������� (�� LIBELLE_STRUCTURE_SITUATION ���� ������� ������ / ��� ��� ���� 02 �����)';

      DBGRiD1.Columns[0].Title.caption:='�������' ;
      DBGRiD1.Columns[1].Title.caption:='�������' ;
      DBGRiD1.Columns[2].Title.caption:='�������� ��������' ;DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='��� �������' ; DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='����� ���������' ;DBGRiD1.Columns[4].alignment:=tarightjustify;
      DBGRiD1.Columns[5].Title.caption:='��������' ;
      DBGRiD1.Columns[6].Title.caption:='����� �������' ;
      end;
   if f_administration.WindowState=wsMinimized then   f_administration.WindowState:=wsMaximized ;
   f_administration.visible:=true;
end;

procedure Tf_principale_ar.AVoirlanneedegestion(Sender: TObject);
begin
     decodedate(date,annee,mois,jour);
 decodetime(time,h,min,sec,ms);
 F_principale_ar.gestion.text:=inttostr(annee);
 ydate.text:='31/12/'+inttostr(annee);
 zdate.text:='31/12/'+inttostr(annee);
end;

procedure Tf_principale_ar.Button1Click(Sender: TObject);
begin
        if f_principale.WindowState=wsMinimized then    f_principale.WindowState:=wsMaximized ;
    f_principale.visible:=true;f_principale.bringtofront;
end;

procedure Tf_principale_ar.CHAPITRE1Click(Sender: TObject);
begin
           if f_chapitre.visible=true then f_chapitre.Close;
  f_chapitre.Caption:='���������� � ������������';

  with f_chapitre do begin
      fin.Caption:='���������';;
      label1.Caption:='������ ������ � ������';
      DBGRiD1.Columns[0].Title.caption:='���������' ;
      DBGRiD1.Columns[1].Title.caption:='������' ;
      DBGRiD1.Columns[2].Title.caption:='��������' ;
      DBGRiD1.Columns[3].Title.caption:='������� �������' ;DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='������ ��������' ;DBGRiD1.Columns[4].alignment:=tarightjustify;
      DBGRiD1.Columns[5].Title.caption:='������� �� ���������' ;DBGRiD1.Columns[5].alignment:=tarightjustify;

  end;
    if f_chapitre.WindowState=wsMinimized  then f_chapitre.WindowState:=wsMaximized ;
    f_chapitre.visible:=true;
end;

procedure Tf_principale_ar.DESIGNATION1Click(Sender: TObject);
begin
  ar_fr:='a';
  if f_des.visible=true then f_des.Close;
  f_des.Caption:='����� ���������';

  with f_des do begin
      label1.Caption:='����� ���������' ;
      label2.Caption:='��� �������' ;
      button1.Caption:='���������';


      {DBGRiD1.Columns[0].Title.caption:='��������' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='�������' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='�. �������' ;// DBGRiD1.Columns[4].alignment:=tarightjustify; }
     end;
      if f_des.WindowState=wsMinimized then f_des.WindowState:=wsMaximized ;
     f_des.visible:=true;f_des.bringtofront;
end;

procedure Tf_principale_ar.EDITIONETAT1Click(Sender: TObject);
begin
  ar_fr:='a';
   f_etats_consommation.visible:=false;
    with f_etats_consommation do begin
           Caption:='������������� �����������';
           speedButton6.Caption:='����� ������� ��� �������';
           speedButton1.Caption:='����� ������� ��� �������';
           speedButton2.Caption:='����� ������� ���� ����';
           speedButton7.Caption:='���������'
    end;
   if f_etats_consommation.visible=true then
      f_etats_consommation.BringToFront
    else
    f_etats_consommation.visible:=true;
end;

procedure Tf_principale_ar.filtrer(Sender: TObject);
begin
    screen.cursor := crHourGlass;
   if trim(gestion.Text)<>'' then begin
      if (strtoint(trim(gestion.Text))>2000) and  (strtoint(trim(gestion.Text))<3000)
      then begin
               f_dm.SimpleDataSet_facture.close;
               f_dm.SimpleDataSet_facture.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
               f_dm.SimpleDataSet_facture.open;
               f_dm.Sm.close;
               f_consul_eng.sqlt_mois.close;
               f_consul_eng.sqlt_article.close;
               f_consul_mandat.SimpleDataSet_mois.close;
               f_consul_mandat.SimpleDataSet_mois.close;
               f_consul_mandat.SimpleDataSet_article.close;
               f_dm.SQLDataSet_mandat.close;
               f_dm.clientdataset_mandat.close;
               f_dm.SQLDataSet_lignes_mandat.close;
               f_dm.ClientDataSet_lignes_mandat.close;
               f_dm.SQLDataSet_reimputation.close;
               f_dm.clientdataset_reimputation.close;

               f_dm.SQLDataSet_reimputation.Params[0].asstring:=trim(f_principale.GESTION.Text);
               f_dm.SQLDataSet_reimputation.open;
               f_dm.clientdataset_reimputation.Open;

               f_dm.SQLDataSet_mandat.Params[0].asstring:=trim(f_principale.GESTION.Text);
               f_dm.SQLDataSet_mandat.open;
               f_dm.clientdataset_mandat.Open;
               f_dm.SQLDataSet_lignes_mandat.open;
               f_dm.ClientDataSet_lignes_mandat.Open;

                f_dm.SimpleDataSet_bc.close;
               f_dm.SimpleDataSet_bc_lignes.close;

               f_dm.Sm.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
               f_dm.Sm.Open;

               f_dm.SimpleDataSet_bc.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
               f_dm.SimpleDataSet_bc.open;
               f_dm.SimpleDataSet_bc_lignes.open;

              f_dm.SimpleDataSet_eng.Close;
              f_dm.SimpleDataSet_eng.dataset.Params[0].asstring:=trim(f_principale.GESTION.Text);
              f_dm.SimpleDataSet_eng.Open;
              f_dm.SQLDataSet_det_eng1.close;
              f_dm.SimpleDataSet_obs_eng.close;
              f_dm.SQLDataSet_det_eng1.Params[0].asstring:=trim(f_principale.GESTION.Text);
              f_dm.SQLDataSet_det_eng1.Open;

              f_dm.SQLDataSet_desig.close;
              f_dm.clientdataset_desig.close;
              f_dm.SQLDataSet_desig.open;
              f_dm.clientdataset_desig.open;
              f_dm.SQLDataSet_desig_qt.close;
              f_dm.clientdataset_desig_qt.close;
              f_dm.SQLDataSet_desig_qt.open;
              f_dm.clientdataset_desig_qt.open;

             f_dm.SimpleDataSet_det_eng.open;
              f_dm.SimpleDataSet_obs_eng.open;

             f_dm.SQLDataSet_credit.close;f_dm.ClientDataSet_credit.close;
              f_dm.SQLDataSet_credit.Params[0].asstring:=trim(f_principale.GESTION.Text);
              f_dm.SQLDataSet_credit.Open;f_dm.ClientDataSet_credit.open;

              f_dm.Sm.dataset.Params[0].asstring:=trim(f_principale.GESTION.Text);
              f_dm.Sm.open;
              f_dm.SimpleDataSet_lignes_mandat.close;
              f_dm.SimpleDataSet_lignes_mandat.open ;


        f_dm.SimpleDataSet_mission.close;

        f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.close;
        f_dm.SimpleDataSet_depenses_mission.close;

        f_dm.SimpleDataSet_mission.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
        f_dm.SimpleDataSet_mission.open;
        f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.open;
        f_dm.SimpleDataSet_depenses_mission.Open;

      end;end; Screen.Cursor:=crdefault;
end;

procedure Tf_principale_ar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
       showmessage('                ��������������������� �����      ')
end;

procedure Tf_principale_ar.FOURNISSEUR1Click(Sender: TObject);
begin
  if f_fournisseur.visible=true then f_fournisseur.Close;
  f_fournisseur.Caption:='���������������������������';

  with f_fournisseur do begin
      label2.Caption:='���� ����� �� ����� ������ ��� ��� ������ ������' ;
      fin.Caption:='���������';
      label1.Caption:='������ �����������';
      label6.Caption:='.��� �';
      label3.Caption:='.������ �';
      label4.Caption:='NF ������';
      label5.Caption:='RC ������';
      label7.Caption:='AI ������';
      DBGRiD1.Columns[0].Title.caption:='�������' ;DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='����' ; DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='��������' ;DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='������' ; DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='�������' ;DBGRiD1.Columns[4].alignment:=tarightjustify;
      DBGRiD1.Columns[5].Title.caption:='��� ��������' ;DBGRiD1.Columns[5].alignment:=tarightjustify;
      DBGRiD1.Columns[6].Title.caption:='������� �������' ;DBGRiD1.Columns[6].alignment:=tarightjustify;
      DBGRiD1.Columns[12].Title.caption:='���������������' ;DBGRiD1.Columns[12].alignment:=tarightjustify;
      DBGRiD1.Columns[13].Title.caption:='����� �� ������� ������' ;DBGRiD1.Columns[13].alignment:=tarightjustify;

  end;

  if f_fournisseur.WindowState=wsMinimized then   f_fournisseur.WindowState:=wsMaximized ;
   f_fournisseur.visible:=true;
end;

procedure Tf_principale_ar.MAJ8Click(Sender: TObject);
begin
     ar_fr:='a';
     if f_conSOMMAtion.visible=true then f_conSOMMAtion.Close;
  f_conSOMMAtion.Caption:='����������������������';

  with f_conSOMMAtion do begin
      radiogroup1.Caption:='��������' ; radiogroup1.Items[0]:=' ��� ������� '; radiogroup1.Items[1]:=' ��� �������� ';
      label3.Caption:='����� ���������' ;
      label1.Caption:='����� ���������' ;
      label7.Caption:='��� ��������' ;
      label2.Caption:='����� ��������' ;
      fin.Caption:='���������';button2.caption:='�������������'; SpeedButton2.caption:='��������';

      label5.Caption:='.������� �    ';label4.Caption:='����������   '; label6.Caption:='�������������   '  ;
      label9.Caption:='�������  ';label10.Caption:='�������  ';
      
      dbgrid3.Columns[1].Title.caption:='�������' ;//dbgrid3.Columns[1].alignment:=tarightjustify;
      dbgrid3.Columns[2].Title.caption:='.��� �' ;// dbgrid3.Columns[2].alignment:=tarightjustify;
      dbgrid3.Columns[3].Title.caption:='��������' ;//dbgrid3.Columns[3].alignment:=tarightjustify;
      dbgrid3.Columns[4].Title.caption:='�������' ; //dbgrid3.Columns[4].alignment:=tarightjustify;
      dbgrid3.Columns[5].Title.caption:='�������' ;//dbgrid3.Columns[5].alignment:=tarightjustify;
      dbgrid3.Columns[6].Title.caption:='�������' ;//dbgrid3.Columns[6].alignment:=tarightjustify;
      dbgrid3.Columns[7].Title.caption:='������' ;//dbgrid3.Columns[7].alignment:=tarightjustify;
      dbgrid3.Columns[8].Title.caption:='�����������' ;//dbgrid3.Columns[8].alignment:=tarightjustify;

      DBGRiD1.Columns[0].Title.caption:='��������' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='�������' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='�. �������' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='�. �������' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;

      

      DBGRiD4.Columns[0].Title.caption:='�������' ;//DBGRiD4.Columns[0].alignment:=tarightjustify;
      DBGRiD4.Columns[1].Title.caption:='.��� �' ; //DBGRiD4.Columns[1].alignment:=tarightjustify;
      DBGRiD4.Columns[2].Title.caption:='��� ����' ;//DBGRiD4.Columns[2].alignment:=tarightjustify;
      DBGRiD4.Columns[3].Title.caption:='��� ����'  ;//DBGRiD4.Columns[3].alignment:=tarightjustify;
      DBGRiD4.Columns[4].Title.caption:='��� �����' ; //DBGRiD4.Columns[4].alignment:=tarightjustify;
      DBGRiD4.Columns[5].Title.caption:='���  �����' ; //DBGRiD4.Columns[5].alignment:=tarightjustify;



  end;

    f_dm.SimpleDataSet_consommation.FieldByName('dates').editmask:='##/##/####';
      if f_conSOMMAtion.WindowState=wsMinimized then f_consommation.WindowState:=wsMaximized ;
     f_consommation.visible:=true;f_consommation.bringtofront;
end;

procedure Tf_principale_ar.on_activate(Sender: TObject);
begin
  error_socket:=0;
   decodedate(date,annee,mois,jour);
   decodetime(time,h,min,sec,ms);
  F_principale_ar.dat.caption:=inttostr(jour)+'/'+inttostr(mois)+'/'+inttostr(annee);
   tstring:=tstringlist.Create;
end;

procedure Tf_principale_ar.on_create(Sender: TObject);
  var
   M,n, D : Integer;
begin
   n := Screen.Width;
   M := Screen.height; // multiplicateur = d�finition actuelle de l'�cran
   D := 768; // diviseur = d�finition de l'�cran � la conception
   ScaleBy(M, D);
   Realign;
  // F_principale.Caption:='GESTION DU BUDJET DE FONCTIONNEMENT  (DELPHI XE8 DBEXPRESS) '+' (' +inttostr(n)+'X' +inttostr(m)+') '+
  // DateToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')),FormatSettings1)+' ' +
  //            timeToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+
   //           '             Utilisateur : '+form1.edit8.text+'   Role : '+form1.edit1.text;

end;

procedure Tf_principale_ar.quiter(Sender: TObject; var Action: TCloseAction);
begin
  if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
   application.Terminate;
end;

procedure Tf_principale_ar.QUITER1Click(Sender: TObject);
begin
   //close_tables_connect_db_gf;
   if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
   application.Terminate;
end;

end.
