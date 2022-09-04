// l'index Mandat gdcams est utilis� dans u_consul_mandat



unit MAIN;

interface

uses
  u_forme1,
  filectrl,printers,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db,
 //  DBTables,
    ExtCtrls, Buttons, jpeg, StdCtrls, Mask, Grids,
  Unit_function_and_procedure,DBGrids, DBCtrls,
  //RpDefine,RpCon, RpConDS,RpConBDE,
  variants, QRExport, QRPDFFilt, QRXMLSFilt, QRWebFilt,comobj,midaslib,
  IdContext, IdCustomTCPServer, IdTCPServer, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient,
  //sockets,
  WinSock,shellapi,registry,
  IdRawBase, IdRawClient, IdIcmpClient;

type

  TF_principale = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    PrintDialog1: TPrintDialog;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    disable: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    edtLocalPort: TEdit;
    edtRemotePort: TEdit;
    edtRemoteHost: TEdit;
    GESTION: TEdit;
    MainMenu1: TMainMenu;
    TABLES1: TMenuItem;
    FOURNISSEUR1: TMenuItem;
    CHAPITRE1: TMenuItem;
    Adminstration1: TMenuItem;
    ADMINISTRATIONPERS1: TMenuItem;
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
    CREDITSAFFECTES: TMenuItem;
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
    ENVOIDUNMAIL1: TMenuItem;
    qr1: TMenuItem;
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
    EnvoyerunMail1: TMenuItem;
    Parametres1: TMenuItem;
    Sauvegarde1: TMenuItem;
    RequetteSQL1: TMenuItem;
    ouslespanneauxdeconfig1: TMenuItem;
    Priphriquesetimprimantes1: TMenuItem;
    RedmarrgeSpooler1: TMenuItem;
    Services1: TMenuItem;
    RsolutionEcran1: TMenuItem;
    Utilisateur1: TMenuItem;
    Etatdesconnexions1: TMenuItem;
    FromBDtoBD1: TMenuItem;
    NouvelleVersionGF1: TMenuItem;
    ubit6: TMenuItem;
    Aide1: TMenuItem;
    Apropos1: TMenuItem;
    Aide2: TMenuItem;
    Dpanage1: TMenuItem;
    RECONNECT: TMenuItem;
    QUITER1: TMenuItem;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    ZDATE: TMaskEdit;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ydate: TMaskEdit;
    Label2: TLabel;
    ldate: TLabel;
    xdate: TMaskEdit;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    cb1: TCheckBox;
    Panel3: TPanel;
    Button1: TButton;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label12: TLabel;
    dat: TLabel;
    Label5: TLabel;

    procedure QUITER1Click(Sender: TObject);
    procedure FOURNISSEUR1Click(Sender: TObject);
    procedure MAJ4Click(Sender: TObject);
    procedure CHAPITRE1Click(Sender: TObject);
    procedure EDITION2Click(Sender: TObject);
    procedure AVISDEVIREMENT1Click(Sender: TObject);
    procedure MAJ3Click(Sender: TObject);
    procedure Ecran(Sender: TObject);
    procedure imprimer(Sender: TObject);
    procedure EDITION1Click(Sender: TObject);
    procedure w_state(Sender: TObject);
    procedure Adminstration1Click(Sender: TObject);
  //  procedure becrClick(Sender: TObject);
    procedure Consultation1Click(Sender: TObject);
    procedure gettime(Sender: TObject);
    procedure xmandat_0(DataSet: TDataSet);

    procedure ETATDESDEPENSESEXECUTEES1Click(Sender: TObject);
    procedure TYPEDEPENSE1Click(Sender: TObject);

    procedure AVoirlanneedegestion(Sender: TObject);
    procedure CONSUL_engClick(Sender: TObject);
    procedure f_tableau1Click(Sender: TObject);
    procedure COMPTEADMINISTRATIVETABLEAUN31Click(Sender: TObject);
    procedure COMPTEADMINISTRATIFTABLEAUN31Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure filtrer_bd(Sender: TObject);
    procedure JOURNAL1Click(Sender: TObject);
    procedure MAJ1Click(Sender: TObject);
    procedure xxx(DataSet: TDataSet);
    procedure Edition3Click(Sender: TObject);

    procedure BitBtn6Click(Sender: TObject);
    procedure SITUATIONDESCREDITSPARARTICLE1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SITUATIONDESCREDITSPARARTICLEDSETW1Click(Sender: TObject);
    procedure SITUATIONDESCREDITSPARARTICLEDSETWsETTCs1Click(
      Sender: TObject);
    procedure Dpanage1Click(Sender: TObject);
    procedure fermer(Sender: TObject; var Action: TCloseAction);
    procedure NOMBREDEMANDATPARCHAPITREPARSTRUCTURE1Click(Sender: TObject);
    procedure Sauvegarde1Click(Sender: TObject);

    procedure ETATDEVIREMENT1Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure REIMPUTATION1Click(Sender: TObject);
    procedure MAJ5Click(Sender: TObject);
    procedure BAREMEDESFRAIS1Click(Sender: TObject);
    procedure CALCULETEDITION1Click(Sender: TObject);
    procedure PARAMETRESMISSION1Click(Sender: TObject);
    procedure Utilisateur1Click(Sender: TObject);
    procedure RequetteSQL1Click(Sender: TObject);
    procedure Maj6Click(Sender: TObject);
 //   procedure ETATS1Click(Sender: TObject);
    procedure SITUATIONDESCREDITSPARARTICLEDESTWsETTCs1Click(Sender: TObject);
    procedure SITUATIONDESCREDITS2Click(Sender: TObject);
    procedure ETATSEXCEL1Click(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure Pop(Sender: TObject);
    procedure pop1(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);


    procedure Etatdesconnexions1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure onerror_tcpclient(Sender: TObject; SocketError: Integer);
    procedure disableClick(Sender: TObject);
    procedure fermer_gf(Sender: TObject; var Action: TCloseAction);
    procedure ETATS1Click(Sender: TObject);
    procedure RECONNECTClick(Sender: TObject);
    procedure FromBDtoBD1Click(Sender: TObject);
    procedure RedmarrgeSpooler1Click(Sender: TObject);
    procedure ouslespanneauxdeconfig1Click(Sender: TObject);
    procedure Priphriquesetimprimantes1Click(Sender: TObject);
    procedure Services1Click(Sender: TObject);
    procedure RsolutionEcran1Click(Sender: TObject);
    procedure pop3(Sender: TObject);
    procedure FichierAvisdefirement1Click(Sender: TObject);
    procedure Parametres1Click(Sender: TObject);
    procedure Donnes1Click(Sender: TObject);
    procedure GRADE1Click(Sender: TObject);
    procedure FONCTION1Click(Sender: TObject);
    procedure LISTEDEMANDATDUNFOURNISSEUR1Click(Sender: TObject);
    procedure LISTEDESENGAGEMENTSDUNFOURNISSEUR1Click(Sender: TObject);
    procedure pop4(Sender: TObject);
    procedure NouvelleVersionGF1Click(Sender: TObject);
    procedure Misejours1Click(Sender: TObject);
    procedure MOIS1Click(Sender: TObject);
    procedure MAJ7Click(Sender: TObject);
    procedure ubit6Click(Sender: TObject);
    procedure AGENTS1Click(Sender: TObject);
    procedure LIEU1Click(Sender: TObject);
    procedure GRADEFONCTION1Click(Sender: TObject);
    procedure ADMINISTRATIONPERS1Click(Sender: TObject);
    procedure LISTEDESFACTURESDUNFOURNISSEUR1Click(Sender: TObject);
    procedure SERVICE1Click(Sender: TObject);
    procedure MAJ8Click(Sender: TObject);
    procedure MAJ9Click(Sender: TObject);
    procedure DEPENSESANNULEES2Click(Sender: TObject);
    procedure DESIGNATION1Click(Sender: TObject);
    procedure EDITIONETAT1Click(Sender: TObject);
    procedure PARAMETERS1Click(Sender: TObject);
    procedure VERIFIERDESIGNATION1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EnvoyerunMail1Click(Sender: TObject);
    procedure qr1Click(Sender: TObject);

  private
    { D�clarations priv�es }
  public
    etats:word;
    { D�clarations publiques }
  end;

var
  F_principale: TF_principale;error_socket,n_mandat:Integer;
   ref_des,ref_des1:string[25];
  ycompte:string[9];
  vcompte:string[8];
  etat,annee,mois,jour,h,min,sec,ms:word;
  xregion,xmat,xdate,xadm,xfiche,xgestion1,xgestion2,xarticle,xarticle1,xmandat,xchapitre,xchapitre1,xdates,xdates1,xstructure,xstructure1,xengagement,xobs:string;
  s1,esc,xministere,xservice,xcode,xobjet,indexencours,xmission:string;
  montant,x,tot,report:real;
  xgestion_eng,xarticle_eng,xchapitre_eng:string; xcateg_grade,xcateg_fonction:string;
  xgestion3,xbc,xfournisseur2,xstructure2,xchapitre2,xarticle2,xsection2,xdates2,xobs1,xobs2,xobs3:string;
  xx,xtva:real;
  p,TW:char;
  i,j,n,m:integer; bool:boolean;
  num_enre1,num_enre,num_enre_eng:longint;
  tstring:tstringlist;
  //function verrou(t:ttable;s:string):boolean;
  function enlever_blanc( var s:string):string;
  function enlever_blanc1( var s:string):string;
 // procedure fDbiOpenLockList(Tbl: TTable; var LockList: TStringList);
  //procedure EmptySpooler;
implementation

uses u_fournisseur, u_mandat, u_chapitre, u_edit_mandat, u_edit_avis,u_mail,
  u_engagement,u_etat_credits, u_credit, u_edit_eng, u_administration,
  uu_etat_credits, uu_engagement, u_consul_mandat, u_etat_depense,
  u_type_depenses, u_consul_eng, u_tableau3,u_tableau1, u_journal,u_etat_avis_pl,
  u_bc, u_edit_bc, u_situation_credits_article,
  u_situation_credits_article_tw, u_situation_credits_article_tc,
  u_situation, u_bogs,  u_Nombre_mandat, u_sauv,
 // u_forme1,
  u_dm, u_edit_etat_virement, u_apropos, u_reimpute, u_mission,
  u_bareme, u_edit_mission, U_parametres, u_users, U_sql, u_c, u_etat_excel,
  U_etat_con, u_etats, u_dep_annul, uplus, U_f_fichier_avis, u_parameters,
  u_donnees, u_fonction, u_grade, Unit2, u_mandat_fournisseur, U_eng_four,
  u_version_gf, U_convention, f_mois, U_FACTURE, Unit6, Unit7, u_agent, u_lieu,
  u_grade_fonction, u_administration_pers, u_liste_facture,  u_service,
  u_consommation, u_designation, U_parametres_mission, u_etats_consommation,
  u_verif_des, u_principale_ar, u_forme1_ar, u_etat_mandat, Unit_qr2fr,
  u_fb_to_sqlite, u_fb_sqlite;

{$R *.DFM}


{procedure EmptySpooler;
var
   SpoolFile: TSearchRec;
   a : Integer;
   reg        : TRegistry;
begin

// On arr�te le service Spooler d'impression

ShellExecute(0,nil,PChar('net'),PChar('stop spooler'),nil,SW_SHOW);



// On cherche dans le registre le r�pertoire du spool car il se peut que l'utilisateur l'ait chang�.

with TRegistry.Create do try

RootKey := HKEY_LOCAL_MACHINE;

OpenKey('SYSTEM\CurrentControlSet\Control\Print\Printers', false);



// On supprime tous les fichiers en attente

a := FindFirst(IncludeTrailingPathDelimiter(ReadString('DefaultSpoolDirectory'))+'*.*', FaAnyfile, SpoolFile);

while a = 0 do begin

if ((SpoolFile.Attr and FaDirectory <> FaDirectory) and (SpoolFile.Attr and FaVolumeId <> FaVolumeID)) then

DeleteFile(pChar(IncludeTrailingPathDelimiter(ReadString('DefaultSpoolDirectory')) + SpoolFile.Name));

a := FindNext(SpoolFile);

end ;

SysUtils.FindClose(SpoolFile);



CloseKey;

Finally

Free;

end;



// On red�marre le service Spooler d'impression

ShellExecute(0,nil,PChar('net'),PChar('start spooler'),nil,SW_HIDE);

end; }







Function ChangeResolution(Width,Height:Integer):Boolean;
Var Dev:TDeviceMode;
begin
  Dev.dmPelsWidth := Width;
  Dev.dmPelsHeight:= Height;
  Dev.dmFields     := DM_PELSWIDTH Or DM_PELSHEIGHT;
  Result:=ChangeDisplaySettings(Dev,0)=DISP_CHANGE_SUCCESSFUL;
end;

function enlever_blanc( var s:string):string;
var
  t:string;
  k:byte;
begin
  t:='';
  for k:=1 to length(s) do
        if s[k] in ['0','1','2','3','4','5','6','7','8','9'] then t:=t+s[k];
enlever_blanc:=t;
end;

function enlever_blanc1( var s:string):string;
var
  t:string;
  k:byte;
begin
  t:='';
  for k:=1 to length(s) do
        if s[k] in ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e'] then t:=t+s[k];
enlever_blanc1:=t;
end;





{procedure close_tables_connect_db_gf;
begin
    f_edit_mandat.SimpleDataSet_parameters.Close;
    f_edit_etat_virement.SimpleDataSet_parameters.Close;
    f_dm.SimpleDataSet_users.close;
    f_dm.SimpleDataSet_agent.CLOSE;
    f_dm.SimpleDataSet_apc.close;
    f_dm.SimpleDataSet_adm_pers.close;
    f_dm.SimpleDataSet_grade.close;
    f_dm.SimpleDataSet_fonction.close;
    // Les 5 tables ci-dessus �taient dans la BD PERS ...

   f_dm.SimpleDataSet_convention.close;f_dm.SimpleDataSet_facture.close;
   f_dm.Sm.close;
   f_dm.SQLDataSet_mandat.close;
   f_dm.clientdataset_mandat.close;
   f_dm.SQLDataSet_reimputation.close;
   f_dm.clientdataset_reimputation.close;
   f_dm.SQLDataSet_lignes_mandat.close;
   f_dm.ClientDataSet_lignes_mandat.close;
   f_dm.SimpleDataSet_depenses_annulees.close;
   f_dm.SimpleDataSet_eng.close;
   f_dm.SimpleDataSet_det_eng.close;
   f_dm.SimpleDataSet_obs_eng.close;
   f_dm.SQLDataSet_det_eng1.close;

   f_dm.SQLDataSet_adm.close;f_dm.ClientDataSet_adm.close;
   f_dm.SQLDataSet_chapitre.close;f_dm.ClientDataSet_chapitre.close;
   f_dm.SQLDataSet_credit.close;f_dm.ClientDataSet_credit.close;
   f_dm.SQLDataSet_depenses_annulees.close;f_dm.ClientDataSet_depenses_annulees.close;
   f_dm.SQLDataSet_fournisseur.close;f_dm.ClientDataSet_fournisseur.close; f_dm.ClientDataSet_fournisseur1.close;
   f_dm.ClientDataSet_fournisseur2.close;
   f_dm.SimpleDataSet_nat_dep.close;
   f_dm.SimpleDataSet_mois.close;

   f_dm.SimpleDataSet_bc.close;
  f_dm.SimpleDataSet_bc_lignes.close;

   f_dm.SimpleDataSet_parameters.close;

   f_dm.SimpleDataSet_lignes_mandat.close;
   f_dm.SimpleDataSet_mission.close;
   f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.close;
   f_dm.SimpleDataSet_depenses_mission.close;
   f_dm.SimpleDataSet_bareme.close;
   f_dm.SimpleDataSet_PARAMETRES_MISSION.close;
    f_dm.SimpleDataSet_programme.close;
    f_dm.SQLDataSet_desig.open;
    f_dm.clientdataset_desig.open;
   // if not f_dm.ibevents_mandat.Registered then f_dm.ibevents_mandat.Registered:=true;
  //  if not f_dm.ibevents_eng.Registered then f_dm.ibevents_eng.Registered:=true;
    f_dm.SimpleDataSet_lieu.close;
end;  }


procedure TF_principale.QUITER1Click(Sender: TObject);
begin
    u_forme1.close_tables_connect_db_gf;
   if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
    application.Terminate;
end;

 procedure TF_principale.FONCTION1Click(Sender: TObject);
begin
      if f_fonction.WindowState=wsMinimized then   f_fonction.WindowState:=wsMaximized ;
   f_fonction.visible:=true;
  //Form2.visible:=true;
end;

procedure TF_principale.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
         showmessage('A u    r e v o i r ...')
end;

procedure TF_principale.FOURNISSEUR1Click(Sender: TObject);
begin
    if f_fournisseur.visible=true then f_fournisseur.Close;
  f_fournisseur.Caption:='FOURNISSEUR';

  with f_fournisseur do begin
      label2.Caption:='Saisir un caract�re dans le champ Artisant si le fournisseur est un artisant ' ;
      fin.Caption:='F I N';
      label1.Caption:='TABLE FOURNISSEUR';
      label6.Caption:='Code F.';
      label3.Caption:='Nom F.';
      label4.Caption:='NF Fournisseur';
      label5.Caption:='RC Fournisseur';
      label7.Caption:='AI Fournisseur ';
      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='Artisant' ;DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Nom' ;DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='Entreprise' ; DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Banque' ;DBGRiD1.Columns[4].alignment:=taleftjustify;
      DBGRiD1.Columns[5].Title.caption:='Compte' ;DBGRiD1.Columns[5].alignment:=taleftjustify;
      DBGRiD1.Columns[6].Title.caption:='N� fiscal' ;DBGRiD1.Columns[6].alignment:=taleftjustify;
      DBGRiD1.Columns[12].Title.caption:='Adresse' ; DBGRiD1.Columns[12].alignment:=taleftjustify;
      DBGRiD1.Columns[13].Title.caption:='Nom dans l"avis de virement' ;DBGRiD1.Columns[13].alignment:=taleftjustify;

  end;
   if f_fournisseur.WindowState=wsMinimized then   f_fournisseur.WindowState:=wsMaximized ;
   f_fournisseur.visible:=true;
end;

procedure TF_principale.FromBDtoBD1Click(Sender: TObject);
begin
    if f_fb_sqlite.WindowState=wsMinimized  then f_fb_sqlite.WindowState:=wsMaximized ;
    f_fb_sqlite.visible:=true;
end;

procedure TF_principale.MAJ4Click(Sender: TObject);

begin
  f_dm.ClientDataSet_mandat.FieldByName('dates').editmask:='##/##/####';

   f_dm.Sm.FieldByName('dates').editmask:='##/##/####';
    f_dm.ClientDataSet_mandat.FieldByName('date_visa_tresor').editmask:='##/##/####';

   f_dm.Sm.FieldByName('date_visa_tresor').editmask:='##/##/####';
   x:=1; // f_mandat est  ouvert

   if f_mandat.WindowState=wsMinimized then    f_mandat.WindowState:=wsMaximized ;
    f_mandat.visible:=true;f_mandat.bringtofront;

end;

procedure TF_principale.CHAPITRE1Click(Sender: TObject);
begin
       if f_chapitre.visible=true then f_chapitre.Close;
  f_chapitre.Caption:='CHAPITRE ET ARTICLE';

  with f_chapitre do begin
      fin.Caption:='F I N';

      DBGRiD1.Columns[0].Title.caption:='Chapitre' ;
      DBGRiD1.Columns[1].Title.caption:='Article' ;
      DBGRiD1.Columns[2].Title.caption:='Type' ;
      DBGRiD1.Columns[3].Title.caption:='Libelle_Ar' ; DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Libelle_Fr' ;DBGRiD1.Columns[4].alignment:=taleftjustify;
      DBGRiD1.Columns[5].Title.caption:='Libelle_etat' ;DBGRiD1.Columns[5].alignment:=taleftjustify;

  end;
    if f_chapitre.WindowState=wsMinimized  then f_chapitre.WindowState:=wsMaximized ;
    f_chapitre.visible:=true;
end;



procedure TF_principale.EDITION2Click(Sender: TObject);
begin
   with f_edit_mandat do begin
    print.enabled:=false;
    preview.enabled:=false; fs.enabled:=false;
    esc.enabled:=false;
    fin.enabled:=true;
    dbgrid1.enabled:=true;
    dbnavigator1.enabled:=true;
   end;

  if f_edit_mandat.WindowState=wsMinimized then    f_edit_mandat.WindowState:=wsMaximized ;
    f_edit_mandat.visible:=true; f_edit_mandat.BringToFront
end;

procedure TF_principale.AVISDEVIREMENT1Click(Sender: TObject);
begin
  if f_edit_avis.WindowState=wsMinimized then  f_edit_avis.WindowState:=wsMaximized ;
  f_edit_avis.visible:=true;

end;

procedure TF_principale.MAJ3Click(Sender: TObject);
begin
  x:=1;f_dm.simpleDataSet_eng.FieldByName('dates').editmask:='##/##/####';
  if ff_engagement.WindowState=wsMinimized then ff_engagement.WindowState:=wsMaximized ;
  ff_engagement.visible:=true;ff_engagement.bringtofront;
end;



procedure TF_principale.Ecran(Sender: TObject);
begin
   f_etat_credit.quickrep1.preview;
end;

procedure TF_principale.imprimer(Sender: TObject);
begin

     if f_etats.WindowState=wsMinimized then f_etats.WindowState:=wsMaximized ;
     f_etats.visible:=true;
     f_etats.bringtofront;

  {if xdate.text='  /  /    ' then
      xdate.text:='31/12/'+gestion.text;
  etat:=1;
  label3.caption:='SITUATION DES CREDITS';
  ldate.visible:=true;
  xdate.visible:=true;
  bitbtn3.visible:=true;
  bitbtn4.visible:=true;
  label3.visible:=true ;
  cb1.visible:=true;}
end;

procedure TF_principale.EDITION1Click(Sender: TObject);
begin

  if f_edit_eng.WindowState=wsMinimized then f_edit_eng.WindowState:=wsMaximized ;
  f_edit_eng.visible:=true;
  f_edit_eng.bringtofront;
end;

procedure TF_principale.w_state(Sender: TObject);
begin
 // windowstate:=wsmaximized
   error_socket:=0;
   decodedate(date,annee,mois,jour);
   decodetime(time,h,min,sec,ms);
  F_principale.dat.caption:=inttostr(jour)+'/'+inttostr(mois)+'/'+inttostr(annee);
   tstring:=tstringlist.Create;
   gestion.BringToFront; gestion.CanFocus
   end;




procedure TF_principale.ADMINISTRATIONPERS1Click(Sender: TObject);
begin
       if f_administration_pers.WindowState=wsMinimized then   f_administration_pers.WindowState:=wsMaximized ;
   f_administration_pers.visible:=true;
end;

procedure TF_principale.Adminstration1Click(Sender: TObject);
begin
    if f_administration.visible=true then f_administration.Close;
  f_administration.Caption:='A D M I N I S T R A T I O N';

  with f_fournisseur do begin
      button1.Caption:='F I N';
      label1.Caption:='Fichier Administration(Dans  LIBELLE_STRUCTURE_SITUATION s�parer l"intitul� par / si vous avez 02 lignes)';

      DBGRiD1.Columns[0].Title.caption:='Code' ;
      DBGRiD1.Columns[1].Title.caption:='Structure' ;
      DBGRiD1.Columns[2].Title.caption:='Libelle_arabe' ; DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='Libelle_structure' ;DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Libelle_fr' ;DBGRiD1.Columns[4].alignment:=taleftjustify;
      DBGRiD1.Columns[5].Title.caption:='Utilisateur' ;
      DBGRiD1.Columns[6].Title.caption:='Date MAj' ;
      end;
   if f_administration.WindowState=wsMinimized then   f_administration.WindowState:=wsMaximized ;
   f_administration.visible:=true;
end;






{procedure TF_principale.becrClick(Sender: TObject);
begin
    case etat of
     1:f_etat_credit.quickrep1.preview;
     3:f_tableau1.quickrep1.preview;
     4:f_tableau3.quickrep1.preview;
    end;
 //   ldate.visible:=false;
    xdate.visible:=false;
    bitbtn3.visible:=false;
    bitbtn4.visible:=false;
    label3.visible:=false;cb1.visible:=false;
end;  }


procedure TF_principale.Consultation1Click(Sender: TObject);
begin
   if not f_consul_mandat.SimpleDataSet_mois.Active then   f_consul_mandat.SimpleDataSet_mois.Active:=true;
   if f_consul_mandat.WindowState=wsMinimized then
     f_consul_mandat.WindowState:=wsMaximized ;
    f_consul_mandat.visible:=true;f_consul_mandat.bringtofront;

end;

procedure TF_principale.gettime(Sender: TObject);
begin
     decodetime(time,h,min,sec,ms);
     label5.Caption:=inttostr(h)+' h '+inttostr(min)+' m '+inttostr(sec)+' s'
end;





procedure TF_principale.GRADE1Click(Sender: TObject);
begin
      if f_GRADE.WindowState=wsMinimized then   f_grade.WindowState:=wsMaximized ;
   f_grade.visible:=true;
end;

procedure TF_principale.GRADEFONCTION1Click(Sender: TObject);
begin
       if f_GRADE_fonction.WindowState=wsMinimized then   f_grade_fonction.WindowState:=wsMaximized ;
   f_grade_fonction.visible:=true;
end;

procedure TF_principale.xmandat_0(DataSet: TDataSet);
begin
 xmandat:='';
end;


procedure TF_principale.ETATDESDEPENSESEXECUTEES1Click(Sender: TObject);
begin
label2.visible:=true;
ydate.visible:=true;
bitbtn1.visible:=true;
bitbtn2.visible:=true;
end;

procedure TF_principale.TYPEDEPENSE1Click(Sender: TObject);
begin
      if f_type_depenses.WindowState=wsMinimized then  f_type_depenses.WindowState:=wsMaximized ;
      f_type_depenses.visible:=true;
end;



procedure TF_principale.ubit6Click(Sender: TObject);
begin
     f_qr2fr.visible:=true;
end;

procedure TF_principale.Utilisateur1Click(Sender: TObject);
begin
    { if not f_users.admin_ib.Connected then begin
            f_users.admin_ib.Open;f_users.t_users.open end;}
      if pos(trim(form1.edit8.text),'SYSDBAsysdba')>0 then   begin
                    if f_users.WindowState=wsMinimized then f_users.WindowState:=wsMaximized ;
                       f_users.visible:=true;f_users.BringToFront
                                              end
                                              else
         begin
             form1.edit8.text:='SYSDBA'; etat:=1;
             form1.TabOrder:=2;
             if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
              form1.visible:=true;end;
   //  if f_users.WindowState=wsMinimized then f_users.WindowState:=wsMaximized ;
    // f_users.visible:=true;
end;

procedure TF_principale.VERIFIERDESIGNATION1Click(Sender: TObject);
begin
   if f_verif_des.WindowState=wsMinimized then    f_verif_des.WindowState:=wsMaximized ;
    f_verif_des.visible:=true;f_mandat.bringtofront;
end;

procedure TF_principale.AVoirlanneedegestion(Sender: TObject);
begin
 decodedate(date,annee,mois,jour);
 decodetime(time,h,min,sec,ms);
 F_principale.gestion.text:=inttostr(annee);
 ydate.text:='31/12/'+inttostr(annee);
 zdate.text:='31/12/'+inttostr(annee);

end;

procedure TF_principale.CONSUL_engClick(Sender: TObject);
begin
     if not (f_consul_eng.sqlt_mois.active) then f_consul_eng.sqlt_mois.Open;
     if not f_consul_eng.sqlt_article.active then f_consul_eng.sqlt_article.Open;

     if f_consul_eng.WindowState=wsMinimized then f_consul_eng.WindowState:=wsMaximized ;
     f_consul_eng.visible:=true;f_consul_eng.bringToFront
end;





procedure TF_principale.DEPENSESANNULEES2Click(Sender: TObject);
begin
   f_dm.SimpleDataSet_depenses_annulees.FieldByName('dates').editmask:='##/##/####';
  if f_DEp_annul.WindowState=wsMinimized then f_DEp_annul.WindowState:=wsmaximized;
  f_DEp_annul.visible:=true;f_DEp_annul.bringtofront;
end;

procedure TF_principale.DESIGNATION1Click(Sender: TObject);
begin
  if f_des.visible=true then f_des.Close;
  f_des.Caption:='D E S I G N A T I O N';

  {with f_des do begin
      label1.Caption:='Table des d�signation' ;
      label2.Caption:='Unit�s' ;
      label3.Caption:='D�signation Quantit�(D.Clic sur D�signation)';
      button1.Caption:='F I N';


     DBGRiD1.Columns[0].Title.caption:='R�f�rence' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='D�signation' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='Unit�' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='Qt� act.' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;

     end; }
    f_dm.ClientDataSet_desig_qt.FieldByName('dates').editmask:='##/##/####';
    if f_des.WindowState=wsMinimized then f_des.WindowState:=wsMaximized ;
     f_des.visible:=true;f_des.bringtofront;
end;

procedure TF_principale.f_tableau1Click(Sender: TObject);
begin
    if f_tableau1.visible=true then
      f_tableau1.BringToFront
    else
    f_tableau1.visible:=true;
end;

procedure TF_principale.COMPTEADMINISTRATIVETABLEAUN31Click(
  Sender: TObject);
begin
   if xdate.text='  /  /    ' then
      xdate.text:='31/12/'+gestion.text;
   etat:=3;
   label3.caption:='COMPTE ADMINISTRATIF TABLEAU N�1';
   ldate.visible:=true;
   xdate.visible:=true;
   bitbtn3.visible:=true;
   bitbtn4.visible:=true;
   label3.visible:=true
end;



procedure TF_principale.COMPTEADMINISTRATIFTABLEAUN31Click(
  Sender: TObject);
begin
  if xdate.text='  /  /    ' then
      xdate.text:='31/12/'+gestion.text;
  etat:=4;
  label3.caption:='COMPTE ADMINISTRATIF TABLEAU N�3';
  ldate.visible:=true;
  xdate.visible:=true;
  bitbtn3.visible:=true;
  bitbtn4.visible:=true;
  label3.visible:=true
end;


procedure TF_principale.BitBtn1Click(Sender: TObject);
begin
      f_dm.sqlDataSet_chapitre.close;f_dm.ClientDataSet_chapitre.Close;
      f_dm.ClientDataSet_chapitre.MasterSource:=f_dm.ds_nat_dep_ib;
      f_dm.clientdataset_chapitre.masterfields:='typ';
      f_dm.sqlDataSet_chapitre.open;f_dm.ClientDataSet_chapitre.open;

      f_etat_depense.quickrep1.print;
      label2.visible:=false;
      ydate.visible:=false;
      bitbtn1.visible:=false;
      bitbtn2.visible:=false;
      f_dm.sqlDataSet_chapitre.close;f_dm.ClientDataSet_chapitre.Close;
      f_dm.ClientDataSet_chapitre.MasterSource:=nil;
      f_dm.clientdataset_chapitre.masterfields:='';
      f_dm.sqlDataSet_chapitre.open;f_dm.ClientDataSet_chapitre.open;

end;

procedure TF_principale.BitBtn2Click(Sender: TObject);
begin
      f_dm.sqlDataSet_chapitre.close;f_dm.ClientDataSet_chapitre.Close;
      f_dm.ClientDataSet_chapitre.MasterSource:=f_dm.ds_nat_dep_ib;
      f_dm.clientdataset_chapitre.masterfields:='typ';
      f_dm.sqlDataSet_chapitre.open;f_dm.ClientDataSet_chapitre.open;
      f_etat_depense.quickrep1.preview;
      label2.visible:=false;
      ydate.visible:=false;
      bitbtn1.visible:=false;
      bitbtn2.visible:=false;
      f_dm.sqlDataSet_chapitre.close;f_dm.ClientDataSet_chapitre.Close;
      f_dm.ClientDataSet_chapitre.MasterSource:=nil;
      f_dm.clientdataset_chapitre.masterfields:='';
      f_dm.sqlDataSet_chapitre.open;f_dm.ClientDataSet_chapitre.open;
end;

procedure TF_principale.BitBtn3Click(Sender: TObject);
begin
   case etat of
     1:f_etat_credit.quickrep1.print;
     3:f_tableau1.quickrep1.print;
     4:f_tableau3.quickrep1.print;
    end;
    ldate.visible:=false;
    xdate.visible:=false;
    bitbtn3.visible:=false;
    bitbtn4.visible:=false;
    label3.visible:=false;cb1.visible:=false;
end;

procedure TF_principale.BitBtn4Click(Sender: TObject);
begin
     case etat of
     1:begin
            PrintDialog1.Execute;
            f_etat_credit.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
            f_etat_credit.quickrep1.PrinterSettings.Copies:=Printer.Copies;
            f_etat_credit.quickrep1.ShowProgress:=true;
            f_etat_credit.quickrep1.preview;
      end;
     3:begin
            PrintDialog1.Execute;
            f_tableau1.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
            f_tableau1.quickrep1.PrinterSettings.Copies:=Printer.Copies;
            f_tableau1.quickrep1.ShowProgress:=true;
            f_tableau1.quickrep1.preview;
      end;
     4:begin
            PrintDialog1.Execute;
            f_tableau3.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
            f_tableau3.quickrep1.PrinterSettings.Copies:=Printer.Copies;
            f_tableau3.quickrep1.ShowProgress:=true;
            f_tableau3.quickrep1.preview;
      end;
    end;
    ldate.visible:=false;
    xdate.visible:=false;
    bitbtn3.visible:=false;
    bitbtn4.visible:=false;
    label3.visible:=false;cb1.visible:=false;
end;


// PROCEDURE DE FILTRE DE LA B.D A CHAQUE
// CHANGEMENT DE L'ANNEE DE GESTION

procedure TF_principale.filtrer_bd(Sender: TObject);
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



procedure TF_principale.JOURNAL1Click(Sender: TObject);
begin
   if f_journal.WindowState=wsMinimized  then  f_journal.WindowState:=wsMaximized ;
   f_journal.visible:=true; f_journal.bringtofront;
end;

procedure TF_principale.LIEU1Click(Sender: TObject);
begin
      if f_LIEU.WindowState=wsMinimized  then  f_lieu.WindowState:=wsMaximized ;
   f_lieu.visible:=true; f_lieu.bringtofront;
end;

procedure TF_principale.LISTEDEMANDATDUNFOURNISSEUR1Click(Sender: TObject);
begin
    if f_mandat_fournisseur.WindowState=wsMinimized then    f_mandat_fournisseur.WindowState:=wsMaximized ;
    f_mandat_fournisseur.visible:=true;f_mandat_fournisseur.bringtofront;

end;

procedure TF_principale.LISTEDESENGAGEMENTSDUNFOURNISSEUR1Click(
  Sender: TObject);
begin
     fac_eng:='liste_eng' ;
      if f_eng_four.WindowState=wsMinimized then    f_eng_four.WindowState:=wsMaximized ;
    f_eng_four.visible:=true;f_eng_four.bringtofront;
end;

procedure TF_principale.LISTEDESFACTURESDUNFOURNISSEUR1Click(Sender: TObject);
begin
     fac_eng:='liste_fac' ;
     if f_liste_facture.WindowState=wsMinimized then f_liste_facture.WindowState:=wsMaximized ;
     f_liste_facture.visible:=true;f_liste_facture.bringtofront;
end;

procedure TF_principale.MAJ1Click(Sender: TObject);
begin
 //  f_dm.clientdataset_bc.FieldByName('dates').editmask:='##/##/####';
   f_dm.simpledataset_bc.FieldByName('dates').editmask:='##/##/####';
    f_dm.simpledataset_bc.refresh;
   if f_bc.WindowState=wsminimized then  f_bc.WindowState:=wsMaximized ;
   f_bc.visible:=true;

end;

procedure TF_principale.xxx(DataSet: TDataSet);
begin
// f_dm.clientdataset_bc.fieldvalues['gestion']:=f_principale.gestion.text;
end;

procedure TF_principale.Edition3Click(Sender: TObject);
begin
  with f_edit_bc do begin
    editer.enabled:=false;
    ecran.enabled:=false;
    dbgrid1.enabled:=true;
    dbnavigator1.enabled:=true;
   // fin.enabled:=true
  end;
  f_dm.simpledataset_bc.refresh;
  if f_edit_bc.WindowState=wsminimized then  f_edit_bc.WindowState:=wsMaximized ; f_edit_bc.Show;
end;









procedure TF_principale.EDITIONETAT1Click(Sender: TObject);
begin
 ar_fr:='f';
    f_etats_consommation.visible:=false;
    with f_etats_consommation do begin
           Caption:='EDITION ETATS CONSOMMATION';
           speedButton1.Caption:='E T A T   A R T I C L E   T O U T    A G E N T';
           speedButton6.Caption:='E T A T  A R T I C L E   P A R  B U R E A U';
           speedButton2.Caption:='E T A T   A R T I C L E   P O U R   U N    A G E N T';
           speedButton7.Caption:='F I N'
    end;
   if f_etats_consommation.visible=true then
      f_etats_consommation.BringToFront
    else
    f_etats_consommation.visible:=true;

end;

procedure TF_principale.EnvoyerunMail1Click(Sender: TObject);
begin
  if f_mail.WindowState=wsMinimized then f_mail.WindowState:=wsMaximized ;
  f_mail.visible:=true;f_mail.bringtofront
end;

procedure TF_principale.Etatdesconnexions1Click(Sender: TObject);
begin
  if f_etat_con.WindowState=wsMinimized then f_etat_con.WindowState:=wsMaximized ;
  f_etat_con.visible:=true;f_etat_con.bringtofront;
end;

procedure TF_principale.BitBtn6Click(Sender: TObject);
 begin
     if tw='z' then begin
          PrintDialog1.Execute;
          f_situation.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
          f_situation.quickrep1.PrinterSettings.Copies:=Printer.Copies;
          f_situation.quickrep1.ShowProgress:=true;
          f_situation.quickrep1.PreviewModal;
     end;



    if tw='c' then f_situation_credit_tc.quickrep1.preview;
    if tw='t' then f_situation_credit_tw.quickrep1.preview;
    label4.visible:=false;
    zdate.visible:=false;
    bitbtn5.visible:=false;
    bitbtn6.visible:=false;
end;











procedure TF_principale.Button1Click(Sender: TObject);
begin
       f_principale_ar.Caption:= '                          (DELPHI XE8 DBEXPRESS) '+
     // ' (' +inttostr(n)+'X' +inttostr(m)+') '+ DateToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+' ' +
            //  timeToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+
             forme1_ar.edit1.text +' : ��������   '
             +forme1_ar.edit8.text+'  ����� ������������������������ ���������������������� '+' : ��������  ';
       if f_principale_ar.WindowState=wsMinimized then    f_principale_ar.WindowState:=wsMaximized ;
    f_principale_ar.visible:=true;f_principale_ar.bringtofront;
end;

procedure TF_principale.SITUATIONDESCREDITS2Click(Sender: TObject);
begin
  if f_etat_excel.Visible=true then
           f_etat_excel.BringToFront
        else f_etat_excel.visible:=true;
end;

procedure TF_principale.SITUATIONDESCREDITSPARARTICLE1Click(
  Sender: TObject);
begin
  tw:='t';
  label4.visible:=true;
  zdate.visible:=true;
  bitbtn5.visible:=true;
  bitbtn6.visible:=true;
end;

procedure TF_principale.BitBtn5Click(Sender: TObject);
begin
   PrintDialog1.Execute;
   if tw='z' then begin
               f_situation.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
               f_situation.quickrep1.PrinterSettings.Copies:=Printer.Copies;
               f_situation.quickrep1.print; end;
   if tw='c' then  begin
               f_situation_credit_tc.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
               f_situation_credit_tc.quickrep1.PrinterSettings.Copies:=Printer.Copies;
               f_situation_credit_tc.quickrep1.print; end;

   if tw='t' then  begin
               f_situation_credit_tw.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
               f_situation_credit_tw.quickrep1.PrinterSettings.Copies:=Printer.Copies;
               f_situation_credit_tw.quickrep1.print; end;

label4.visible:=false;
zdate.visible:=false;
bitbtn5.visible:=false;
bitbtn6.visible:=false;
end;


procedure TF_principale.SITUATIONDESCREDITSPARARTICLEDESTWsETTCs1Click(
  Sender: TObject);
begin
    if f_etat_excel.Visible=true then
           f_etat_excel.BringToFront
        else f_etat_excel.visible:=true;

end;

procedure TF_principale.SITUATIONDESCREDITSPARARTICLEDSETW1Click(
  Sender: TObject);
begin
   tw:='c';
  label4.visible:=true;
  zdate.visible:=true;
  bitbtn5.visible:=true;
  bitbtn6.visible:=true;
end;
procedure TF_principale.SITUATIONDESCREDITSPARARTICLEDSETWsETTCs1Click(
  Sender: TObject);
begin
      tw:='z';
      label4.visible:=true;
      zdate.visible:=true;
      bitbtn5.visible:=true;
      bitbtn6.visible:=true;
end;

procedure TF_principale.SpeedButton3Click(Sender: TObject);
begin
   f_dm.ClientDataSet_mandat.FieldByName('dates').editmask:='##/##/####';
   f_dm.ClientDataSet_mandat.FieldByName('date_visa_tresor').editmask:='##/##/####';
   x:=1; // f_mandat est  ouvert

   if f_mandat.WindowState=wsMinimized then    f_mandat.WindowState:=wsMaximized ;
   f_mandat.visible:=true;f_mandat.bringtofront;
end;

procedure TF_principale.SpeedButton4Click(Sender: TObject);
begin
 {
  //   01 Gf en execution utilisateur:
  //   02 Socket D�sactiv� utilisateur:
  //   03 GF quit� utilisateur:
  error_socket:=0;
  TcpServer1.Active    := False; //Disconnect First
  TcpClient1.Active    := False;
  TcpServer1.LocalPort := edtLocalPort.Text;
  TcpServer1.Active := True;


    TcpClient1.RemoteHost := edtRemoteHost.Text;
    TcpClient1.RemotePort := edtRemotePort.Text;
    TcpClient1.connect;

     if TcpClient1.Active and TcpServer1.Active
        and (error_socket=0)
         then begin //edit2.text:=inttostr(error_socket);
         label9.visible:=true;disable.enabled:=true;
         s:='01 '+ 'Gf en execution utilisateur:'+trim(form1.edit8.text);
   try
   //   if TcpClient1.Connect then
      f_principale.TcpClient1.Sendln(s);
  finally
  //  TcpClient1.Disconnect;
  end;
     end; }
end;

procedure TF_principale.disableClick(Sender: TObject);
begin
    { if error_socket=0 then begin
      if TcpClient1.Active and TcpServer1.Active
         then begin
          s:='02 Socket D�sactiv� utilisateur:'+trim(form1.edit8.text);
      try
        //   if TcpClient1.Connect then
         f_principale.TcpClient1.Sendln(s);
      finally
        //  TcpClient1.Disconnect;
      end;
     TcpServer1.Active    := False; //{Disconnect First
     TcpClient1.Active    := False;
     disable.enabled:=false;
     label9.Visible:= false end;  end; }
end;

procedure TF_principale.Pop(Sender: TObject);
begin
  x:=1;f_dm.simpleDataSet_eng.FieldByName('dates').editmask:='##/##/####';
  if ff_engagement.WindowState=wsMinimized then ff_engagement.WindowState:=wsMaximized ;
  ff_engagement.visible:=true;ff_engagement.bringtofront;
end;

procedure TF_principale.pop1(Sender: TObject);
begin
    f_dm.ClientDataSet_mandat.FieldByName('dates').editmask:='##/##/####';

    f_dm.ClientDataSet_mandat.FieldByName('date_visa_tresor').editmask:='##/##/####';

    x:=1; // f_mandat est  ouvert

    if f_mandat.WindowState=wsMinimized then    f_mandat.WindowState:=wsMaximized ;
    f_mandat.visible:=true;f_mandat.bringtofront;
end;

procedure TF_principale.pop3(Sender: TObject);
begin
    f_dm.simpledataset_bc.FieldByName('dates').editmask:='##/##/####';
    f_dm.simpledataset_bc.refresh;
    if f_bc.WindowState=wsminimized then  f_bc.WindowState:=wsMaximized ;
    f_bc.visible:=true;
end;

procedure TF_principale.pop4(Sender: TObject);
begin
    if f_credit.WindowState=wsMinimized then f_credit.WindowState:=wsmaximized;
     f_credit.visible:=true;f_credit.bringtofront;
end;

procedure TF_principale.Priphriquesetimprimantes1Click(Sender: TObject);
begin
      ShellExecute(Handle,'Open','C:\Windows\system32\control.exe ' ,'printers',Nil,SW_SHOWNORMAL)
end;

procedure TF_principale.qr1Click(Sender: TObject);
begin
    if f_etat_mandat.WindowState=wsMinimized then    f_etat_mandat.WindowState:=wsMaximized ;
    f_etat_mandat.visible:=true;
end;

procedure TF_principale.Donnes1Click(Sender: TObject);
begin
        if f_donnees.visible=true then
           f_donnees.BringToFront
        else f_donnees.visible:=true;
end;

procedure TF_principale.Dpanage1Click(Sender: TObject);
begin
       if f_bogs.visible=true then
           f_bogs.BringToFront
        else f_bogs.visible:=true;
end;

procedure TF_principale.fermer(Sender: TObject; var Action: TCloseAction);
begin
   if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
  // if f_dm.connect_db_pers.Connected  then f_dm.connect_db_pers.Close;
   application.Terminate;
end;



procedure TF_principale.fermer_gf(Sender: TObject; var Action: TCloseAction);
begin
    if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
   // if f_dm.connect_db_pers.Connected  then f_dm.connect_db_pers.Close;

    { if TcpClient1.Active and TcpServer1.Active
        and  (error_socket=0) then begin
          s:='03 GF quit� utilisateur:'+trim(form1.edit8.text);
      try
        //   if TcpClient1.Connect then
         f_principale.TcpClient1.Sendln(s);
      finally
        //  TcpClient1.Disconnect;
      end;
     TcpServer1.Active    := False; {Disconnect First
     TcpClient1.Active    := False;
    end;    }
    application.Terminate;
end;

procedure TF_principale.FichierAvisdefirement1Click(Sender: TObject);
begin
   if f_fichier_avis.visible=true then
           f_fichier_avis.BringToFront
        else f_fichier_avis.visible:=true;
end;

procedure TF_principale.NOMBREDEMANDATPARCHAPITREPARSTRUCTURE1Click(
  Sender: TObject);
begin
     f_Nombre_mandat.quickrep1.preview;
end;



procedure TF_principale.NouvelleVersionGF1Click(Sender: TObject);
begin
    if f_nouvelle_version.visible=true then
           f_nouvelle_version.BringToFront
        else f_nouvelle_version.visible:=true;
end;

procedure TF_principale.oncreate(Sender: TObject);
var
   M,n, D : Integer;
begin
   n := Screen.Width;
   M := Screen.height; // multiplicateur = d�finition actuelle de l'�cran
   D := 768; // diviseur = d�finition de l'�cran � la conception
  // ScaleBy(M, D);
  // Realign;
   F_principale.Caption:='GESTION DU BUDJET DE FONCTIONNEMENT  (DELPHI XE8 DBEXPRESS) '+' (' +inttostr(n)+'X' +inttostr(m)+') '+
   DateToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')),FormatSettings1)+' ' +
              timeToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+
              '             Utilisateur : '+form1.edit8.text+'   Role : '+form1.edit1.text;

end;

procedure TF_principale.onerror_tcpclient(Sender: TObject;
  SocketError: Integer);
begin
   error_socket := Socketerror; {prevent exception from being thrown}
   socketError := 0;
   case error_socket of
     // 0    :
      10061: showmessage(inttostr(error_socket)+'Ne peut pas activer le socket client sur le hote et port sp�cifi�s : asynchronous socket error ');
      10049: showmessage(inttostr(error_socket)+'Tcpclcient Connect Error : error 10049');
      else showmessage(inttostr(error_socket)+'Tcpclcient Connect autre error');
   end;

end;

procedure TF_principale.ouslespanneauxdeconfig1Click(Sender: TObject);
begin
     ShellExecute(Handle,'Open','C:\Windows\system32\control.exe ' ,nil,Nil,SW_SHOWNORMAL)
end;

procedure TF_principale.PARAMETERS1Click(Sender: TObject);
begin
       if f_parameters.WindowState=wsMinimized  then f_parameters.WindowState:=wsMaximized ;
         f_parameters.visible:=true;

end;

procedure TF_principale.Parametres1Click(Sender: TObject);
begin
     if f_parameters.WindowState=wsMinimized then f_parameters.WindowState:=wsMaximized;
     f_parameters.visible:=true;f_parameters.BRingTOFRONT;
end;

procedure TF_principale.PARAMETRESMISSION1Click(Sender: TObject);
begin
    if f_parametres_mission.WindowState=wsMinimized  then f_parametres_mission.WindowState:=wsMaximized ;
         f_parametres_mission.visible:=true;
end;

procedure TF_principale.Sauvegarde1Click(Sender: TObject);
begin
   f_sauv.label1.caption:='         ';
   if f_sauv.WindowState=wsMinimized then   f_sauv.WindowState:=wsMaximized  ;
   f_sauv.visible:=true;
end;








 


procedure TF_principale.SERVICE1Click(Sender: TObject);
begin
     if f_service.WindowState=wsMinimized then f_service.WindowState:=wsMaximized;
     f_service.visible:=true;f_service.BRingTOFRONT;
end;

procedure TF_principale.Services1Click(Sender: TObject);
begin
       ShellExecute(Handle,'Open','C:\Windows\system32\services.msc ' ,nil,Nil,SW_SHOWNORMAL)
end;

procedure TF_principale.ETATDEVIREMENT1Click(Sender: TObject);
begin
   with f_edit_etat_virement do begin
    imp.enabled:=false;
    ecran.enabled:=false;
     end;
  
  if f_edit_etat_virement.WindowState=wsMinimized then f_edit_etat_virement.WindowState:=wsMaximized ;
  f_edit_etat_virement.visible:=true;f_edit_etat_virement.bringtofront
end;



procedure TF_principale.ETATS1Click(Sender: TObject);
begin
  //   f_etats.xdate.text:='31/12/'+trim(gestion.text);
     decodedate(now(),annee,mois,jour);
     if f_etats.WindowState=wsMinimized then f_etats.WindowState:=wsMaximized ;
     f_etats.visible:=true;
     f_etats.bringtofront;
end;

procedure TF_principale.ETATSEXCEL1Click(Sender: TObject);
begin
       f_etat_excel.zdate.text:='31/12/'+trim(gestion.text);
       if f_etat_excel.Visible=true then
           f_etat_excel.BringToFront
        else f_etat_excel.visible:=true
end;

procedure TF_principale.AGENTS1Click(Sender: TObject);
begin
       if f_donnees.visible=true then
           f_donnees.BringToFront
        else f_donnees.visible:=true;
end;

procedure TF_principale.Apropos1Click(Sender: TObject);
begin
    f_apropos.showmodal;
end;

procedure TF_principale.RECONNECTClick(Sender: TObject);
begin
     close_tables_connect_db_gf;
     if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
   //  if f_dm.connect_db_pers.Connected  then f_dm.connect_db_pers.Close;
       form1.visible:=true;form1.BringToFront
end;

procedure TF_principale.RedmarrgeSpooler1Click(Sender: TObject);
var R: TRegistry; SpoolFile: TSearchRec;
    a : Integer;
begin
     // On arr�te le service Spooler d'impression
       //  ShellExecute(0,nil,PChar('net'),PChar('stop spooler'),nil,SW_show);

         ShellExecute(handle,'runas /user:administrator',PChar('net'),PChar('stop spooler'),nil,SW_SHOWNORMAL);
       //  ShellExecute(handle,'open',PChar('net'),PChar('stop spooler'),nil,SW_show);
     // On cherche dans le registre le r�pertoire du spool car il se peut que l'utilisateur l'ait chang�.

    { with TRegistry.Create do try
       RootKey := HKEY_LOCAL_MACHINE;
       OpenKey('SYSTEM\CurrentControlSet\Control\Print\Printers', false);

    // On supprime tous les fichiers en attente
        a := FindFirst(IncludeTrailingPathDelimiter(ReadString('DefaultSpoolDirectory'))+'*.*', FaAnyfile, SpoolFile);
       while a=0 do begin
          if ((SpoolFile.Attr and FaDirectory <> FaDirectory) and (SpoolFile.Attr and FaVolumeId <> FaVolumeID)) then
         DeleteFile(pChar(IncludeTrailingPathDelimiter(ReadString('DefaultSpoolDirectory')) + SpoolFile.Name));
          a := FindNext(SpoolFile);
     end ;
     SysUtils.FindClose(SpoolFile);
     CloseKey;
     Finally
   Free;
   end;}
   ShellExecute(handle,'runas',PChar('net'),PChar('start spooler'),nil,SW_SHOWNORMAL);

    //ShellExecute(handle,'open',PChar('net'),PChar('start spooler'),nil,SW_MAXIMIZE);

 end;

procedure TF_principale.REIMPUTATION1Click(Sender: TObject);
begin
     if f_reimpute.WindowState=wsMinimized then f_reimpute.WindowState:=wsMaximized ;
     f_reimpute.visible:=true;
end;

procedure TF_principale.RequetteSQL1Click(Sender: TObject);
begin
     if f_sql.WindowState=wsMinimized then f_sql.WindowState:=wsMaximized;
     f_sql.visible:=true;f_sql.BRINGTOFRONT;
end;

procedure TF_principale.RsolutionEcran1Click(Sender: TObject);
begin
    // bool:=ChangeResolution(1024,768)
    //ShellExecute(Handle,'Open','C:\Windows\system32\desk.cpl ' ,nil,Nil,SW_SHOWNORMAL);
    ShellExecute(Handle,'Open','C:\Windows\system32\control.exe ' ,'C:\Windows\system32\desk.cpl',Nil,SW_SHOWNORMAL)
end;

procedure TF_principale.MAJ5Click(Sender: TObject);
begin
     f_dm.simpledataset_mission.FieldByName('DATE_MISSION').editmask:='##/##/####';
     f_dm.simpledataset_mission.FieldByName('DATE_etat').editmask:='##/##/####';
     f_dm.simpledataset_mission.FieldByName('DATE_d').editmask:='##/##/####';
     f_dm.simpledataset_mission.FieldByName('DATE_r').editmask:='##/##/####';
     f_dm.simpledataset_mission.FieldByName('DATE_d_pe').editmask:='##/##/####';
     f_dm.simpledataset_mission.FieldByName('DATE_f_pe').editmask:='##/##/####';

      if f_mission.WindowState=wsMinimized then f_mission.WindowState:=wsMaximized ;
      f_mission.visible:=true;f_EDIT_mission.bringtofront;

end;

procedure TF_principale.Maj6Click(Sender: TObject);
begin
     if f_c.WindowState=wsMinimized then f_c.WindowState:=wsMaximized ;
     f_c.visible:=true;f_c.bringtofront;
end;

procedure TF_principale.MAJ7Click(Sender: TObject);
begin
     f_dm.simpleDataSet_facture.FieldByName('dates').editmask:='##/##/####';
     if f_facture.WindowState=wsMinimized then f_facture.WindowState:=wsMaximized ;
     f_facture.visible:=true;f_facture.bringtofront;
end;

procedure TF_principale.MAJ8Click(Sender: TObject);
begin
        ar_fr:='f';
        if f_conSOMMAtion.visible=true then f_conSOMMAtion.Close;
  f_conSOMMAtion.Caption:='C O N S O M M A T I O N';

 { with f_conSOMMAtion do begin
      radiogroup1.Caption:='T R I' ; radiogroup1.Items[0]:=' par d�signation '; radiogroup1.Items[1]:=' par r�f�rence ';
      label3.Caption:='TABLE CONSOMMATION' ;
      label1.Caption:='TABLE DESIGNATION' ;
      label7.Caption:='TABLE AGENT' ;
      label2.Caption:='TABLE SERVICE' ;
      fin.Caption:='F I N';button2.caption:='DESIGNATION'; SpeedButton2.caption:='E T A T S';

      label5.Caption:='Matricule';label4.Caption:='nom(en Ar)'; label6.Caption:='Pr�nom(en Ar)';
      label9.Caption:='DESIGNATION';label10.Caption:='CODE';

      dbgrid3.Columns[1].Title.caption:='ADMMINI' ;dbgrid3.Columns[1].alignment:=taleftjustify;
      dbgrid3.Columns[2].Title.caption:='mat' ; dbgrid3.Columns[2].alignment:=taleftjustify;
      dbgrid3.Columns[3].Title.caption:='Code' ;dbgrid3.Columns[3].alignment:=taleftjustify;
      dbgrid3.Columns[4].Title.caption:='Designation' ; dbgrid3.Columns[4].alignment:=taleftjustify;
      dbgrid3.Columns[5].Title.caption:='Date' ;dbgrid3.Columns[5].alignment:=taleftjustify;
      dbgrid3.Columns[6].Title.caption:='Service' ;dbgrid3.Columns[6].alignment:=taleftjustify;
      dbgrid3.Columns[7].Title.caption:='Qt�' ;dbgrid3.Columns[7].alignment:=taleftjustify;
      dbgrid3.Columns[8].Title.caption:='Obesrvation' ;dbgrid3.Columns[8].alignment:=taleftjustify;

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='D�signation' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Unit�' ;DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='Qt� act.' ;DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Qt� ini.' ; DBGRiD1.Columns[4].alignment:=taleftjustify;

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='Nom Ar' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Nom Fr' ;DBGRiD1.Columns[2].alignment:=taleftjustify;

      DBGRiD4.Columns[0].Title.caption:='Admini' ;DBGRiD4.Columns[0].alignment:=taleftjustify;
      DBGRiD4.Columns[1].Title.caption:='Matricule' ; DBGRiD4.Columns[1].alignment:=taleftjustify;
      DBGRiD4.Columns[2].Title.caption:='Nom Ar' ;DBGRiD4.Columns[2].alignment:=taleftjustify;
      DBGRiD4.Columns[3].Title.caption:='Pr�nom Ar'  ;DBGRiD4.Columns[3].alignment:=taleftjustify;
      DBGRiD4.Columns[4].Title.caption:='Nom Fr' ; DBGRiD4.Columns[4].alignment:=taleftjustify;
      DBGRiD4.Columns[5].Title.caption:='Pr�nom Fr' ; DBGRiD4.Columns[5].alignment:=taleftjustify;



  end; }

    f_dm.SimpleDataSet_consommation.FieldByName('dates').editmask:='##/##/####';
      if f_conSOMMAtion.WindowState=wsMinimized then f_consommation.WindowState:=wsMaximized ;
     f_consommation.visible:=true;f_consommation.bringtofront;
end;

procedure TF_principale.MAJ9Click(Sender: TObject);
begin
   //f_credit.PP.Text:='               ';
  if f_credit.WindowState=wsMinimized then f_credit.WindowState:=wsmaximized;
  f_credit.visible:=true;f_credit.bringtofront;
end;

procedure TF_principale.Misejours1Click(Sender: TObject);
begin
     f_dm.simpleDataSet_convention.FieldByName('dates').editmask:='##/##/####';
     if f_convention.WindowState=wsMinimized then f_convention.WindowState:=wsMaximized ;
     f_convention.visible:=true;f_convention.bringtofront;
end;

procedure TF_principale.MOIS1Click(Sender: TObject);
begin
        if f_M.WindowState=wsMinimized then   f_M.WindowState:=wsMaximized ;
   f_M.visible:=true;
end;

procedure TF_principale.BAREMEDESFRAIS1Click(Sender: TObject);
begin
   if f_BAREME.WindowState=wsMinimized then f_BAREME.WindowState:=wsMaximized ;
  f_BAREME.visible:=true;f_BAREME.bringtofront;
end;

procedure TF_principale.CALCULETEDITION1Click(Sender: TObject);
begin
      f_dm.SimpleDataSet_mission.Next; f_dm.SimpleDataSet_mission.Prior;
      if f_EDIT_mission.WindowState=wsMinimized  then f_EDIT_mission.WindowState:=wsMaximized ;
      f_EDIT_mission.visible:=true;f_EDIT_mission.bringtofront;
      end;

end.


