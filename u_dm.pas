unit u_dm;
//  pc-salah/3051:e:\chapitre_delphi\dB_INTERBASE\GF.fdb
//  pc_hp1/firebird_db:g:\chapitre_delphi\dB_INTERBASE\GF.fdb
//  pc_hp1/firebird_db:g:\pers_delphi\db_interbase\pers.fdb
interface

uses
   recerror,
   //ibevents,
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,variants,
  Db,
 // IBDatabase,
 //  IBCustomDataSet, IBQuery, IBTable,

 dateutils,jpeg,
  //IBDatabaseInfo,
   WideStrings, DBXInterbase,
   //IBDatabaseINI,IBUpdateSQL,
   SqlExpr,
  Data.DBXFirebird, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, SimpleDS,midaslib,
  Data.Win.ADODB;


type
  Tf_dm = class(TDataModule)
    ds_mandat_ib: TDataSource;
    ds_lignes_ib_1: TDataSource;
    ds_chapitre_ib: TDataSource;
    Ds_adm_ib: TDataSource;
    ds_eng_ib: TDataSource;
    ds_det_eng_ib: TDataSource;
    ds_credit_ib: TDataSource;
    ds_obs_ib: TDataSource;
    ds_mois_ib: TDataSource;
    DS_mandat: TDataSource;
    ds_nat_dep_ib: TDataSource;
    ds_reimputation: TDataSource;
    ds_mission: TDataSource;
    ds_fonction: TDataSource;
    ds_grade: TDataSource;
    ds_agent: TDataSource;
    ds_bareme: TDataSource;
    ds_depenses_mission: TDataSource;
    ds_apc: TDataSource;
    ds_adm: TDataSource;
    ds_adm_apc_grade_fonction_mission: TDataSource;
    ds_parametres_mission: TDataSource;
    connect_db_gf: TSQLConnection;
    ClientDataSet_chapitre: TClientDataSet;
    DataSetProvider_chapitre: TDataSetProvider;
    SQLDataSet_chapitre: TSQLDataSet;
    SQLDataSet_chapitreCHAPITRE: TStringField;
    SQLDataSet_chapitreARTICLE: TStringField;
    SQLDataSet_chapitreTYP: TStringField;
    SQLDataSet_chapitreLIBELLE_ARABE: TStringField;
    SQLDataSet_chapitreLIBELLE: TStringField;
    SQLDataSet_chapitreLIBELLE_CHAPITRE: TStringField;
    SQLDataSet_chapitreUTILISATEUR: TStringField;
    SQLDataSet_chapitreDATE_MAJ: TStringField;
    SQLDataSet_det_eng1: TSQLDataSet;
    StringField1: TStringField;
    SmallintField1: TSmallintField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField1: TDateField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    SimpleDataSet_det_eng: TSimpleDataSet;
    SimpleDataSet_obs_eng: TSimpleDataSet;
    SimpleDataSet_eng: TSimpleDataSet;
    ClientDataSet_credit: TClientDataSet;
    DataSetProvider_credit: TDataSetProvider;
    SQLDataSet_credit: TSQLDataSet;
    SimpleDataSet_mois: TSimpleDataSet;
    SimpleDataSet_nat_dep: TSimpleDataSet;
    SimpleDataSet_lignes_mandat: TSimpleDataSet;
    SimpleDataSet_mandat1: TSimpleDataSet;
    SQLDataSet_mandat: TSQLDataSet;
    ClientDataSet_mandat: TClientDataSet;
    DataSetProvider_mandat: TDataSetProvider;
    SQLDataSet_lignes_mandat: TSQLDataSet;
    DataSetProvider_lignes_mandat: TDataSetProvider;
    ClientDataSet_lignes_mandat: TClientDataSet;
    ds_lignes_mandat: TDataSource;
    SQLDataSet_reimputation: TSQLDataSet;
    ClientDataSet_reimputation: TClientDataSet;
    DataSetProvider_reimputation: TDataSetProvider;
    SimpleDataSet_adm_apc_grade_fonction_mission: TSimpleDataSet;
    SimpleDataSet_mission: TSimpleDataSet;
    SimpleDataSet_depenses_mission: TSimpleDataSet;
    SimpleDataSet_PARAMETRES_MISSION: TSimpleDataSet;
    SimpleDataSet_agent: TSimpleDataSet;
    SimpleDataSet_adm_pers: TSimpleDataSet;
    SimpleDataSet_fonction: TSimpleDataSet;
    SimpleDataSet_bareme: TSimpleDataSet;
    SimpleDataSet_apc: TSimpleDataSet;
    ds_bc_lignes: TDataSource;
    SimpleDataSet_mandat_c: TSimpleDataSet;
    SimpleDataSet_lignes_c: TSimpleDataSet;
    ds_depenses_annulees: TDataSource;
    SQLDataSet_depenses_annulees: TSQLDataSet;
    DataSetProvider_depenses_annulees: TDataSetProvider;
    ClientDataSet_depenses_annulees: TClientDataSet;
    ClientDataSet_fournisseur: TClientDataSet;
    DataSource_fournisseur: TDataSource;
    DataSetProvider_fournisseur: TDataSetProvider;
    SQLDataSet_fournisseur: TSQLDataSet;
    SimpleDataSet_bc_lignes: TSimpleDataSet;
    SimpleDataSet_bc: TSimpleDataSet;
    ds_bc: TDataSource;
    compter: TSQLQuery;
    ds_parameters: TDataSource;
    SimpleDataSet_agent11: TSimpleDataSet;
    SimpleDataSet_grade: TSimpleDataSet;
    ClientDataSet_fournisseur1: TClientDataSet;
    DataSource_fournisseur1: TDataSource;
    DataSource_fournisseur2: TDataSource;
    ClientDataSet_fournisseur2: TClientDataSet;
    SimpleDataSet_programme: TSimpleDataSet;
    DataSource_programme: TDataSource;
    simpledataset_convention: TSimpleDataSet;
    ds_convention: TDataSource;
    ds_facture: TDataSource;
    SQLDataSet_adm: TSQLDataSet;
    ClientDataSet_adm: TClientDataSet;
    DataSetProvider_adm: TDataSetProvider;
    sm: TSimpleDataSet;
    SimpleDataSet_lieu: TSimpleDataSet;
    ds_lieu: TDataSource;
    SimpleDataSet_users: TSimpleDataSet;
    DataSource_users: TDataSource;
    Ds_service: TDataSource;
    SimpleDataSet_service: TSimpleDataSet;
    SimpleDataSet_desig: TSimpleDataSet;
    Ds_designation: TDataSource;
    DataSource2: TDataSource;
    SimpleDataSet_consommation: TSimpleDataSet;
    Ds_consommation: TDataSource;
    Ds_unites: TDataSource;
    SimpleDataSet_unites: TSimpleDataSet;
    SimpleDataSet_parameters: TSimpleDataSet;
    DataSetProvider_desig: TDataSetProvider;
    ClientDataSet_desig: TClientDataSet;
    SQLDataSet_desig: TSQLDataSet;
    SimpleDataSet1: TSimpleDataSet;
    SimpleDataSet_facture: TSimpleDataSet;
    SimpleDataSet_depenses_annulees: TSimpleDataSet;
    SQLDataSet_desig_qt: TSQLDataSet;
    ClientDataSet_desig_qt: TClientDataSet;
    DataSetProvider_desig_qt: TDataSetProvider;
    DataSource_desig_qt: TDataSource;
   // SimpleDataSet2: TSimpleDataSet;
   // procedure genericrefresh(dataset:tibtable);
  //  procedure genericrefresh1(dataset:tibtable);

    procedure alerter(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure idletime(Sender: TObject);

    procedure eng_maj(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);

    procedure spost(DataSet: TDataSet);

    procedure x_apres_insert_mission(DataSet: TDataSet);
    procedure nnapres_insert(DataSet: TDataSet);
    procedure post1(DataSet: TDataSet);


    procedure ibd_adm_before_post(DataSet: TDataSet);

    procedure reimputation_befor_post(DataSet: TDataSet);

    procedure det_eng_after_post(DataSet: TDataSet);
    procedure after_insert_simpledataset_eng(DataSet: TDataSet);
    procedure before_post_simpledataset_eng(DataSet: TDataSet);
    procedure count1(DataSet: TDataSet);
    procedure after_post_simpledataset_eng(DataSet: TDataSet);
    procedure after_delete_simpledataset_det_eng(DataSet: TDataSet);
    procedure after_insert_simpledataset_det_eng(DataSet: TDataSet);
    procedure beforpost_simpledataset_det_eng(DataSet: TDataSet);
    procedure after_insert_credit(DataSet: TDataSet);
    procedure before_post_credit(DataSet: TDataSet);
    procedure clientdataset_mandat_after_insert(DataSet: TDataSet);
    procedure clientdataset_mandat_after_post(DataSet: TDataSet);
    procedure clientdataset_manda_before_post(DataSet: TDataSet);
    procedure client_lignes_mandat_after_del(DataSet: TDataSet);
    procedure clientdataset_lignes_mandat_afterinsert(DataSet: TDataSet);
    procedure clientdataset_linges_mandat_beforpost(DataSet: TDataSet);

    procedure after_insert_mission(DataSet: TDataSet);
    procedure afterscroll_cdm(DataSet: TDataSet);


    procedure after_delete_sds_lignes_mandat(DataSet: TDataSet);
    procedure afteriinsert_sds_lignes(DataSet: TDataSet);
    procedure before_post_sds_lignes_1(DataSet: TDataSet);
    procedure after_update_eng(Sender: TObject; var OwnerData: OleVariant);
    procedure reconcilerreur(DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure before_post_mission(DataSet: TDataSet);
    procedure after_applay_upd_mission(Sender: TObject;
      var OwnerData: OleVariant);
    procedure mision_avant_post(DataSet: TDataSet);
    procedure onreconcl_error(DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure afterinsertdepannulees(DataSet: TDataSet);
    procedure after1(DataSet: TDataSet);
    procedure after_insert_bc(DataSet: TDataSet);
    procedure befort_post_bc(DataSet: TDataSet);
    procedure befort_post_bc_lignes(DataSet: TDataSet);
    procedure after_insert_bc1(DataSet: TDataSet);


    procedure refresh_bc_lignes(Sender: TObject; var OwnerData: OleVariant);

    procedure after_insert(DataSet: TDataSet);
    procedure after_delete(DataSet: TDataSet);
    procedure after_scrol_credit(DataSet: TDataSet);
    procedure combien(DataSet: TDataSet);
    procedure after_scrol2(DataSet: TDataSet);
    procedure afterscrol1(DataSet: TDataSet);
    procedure apres(DataSet: TDataSet);
    procedure PAPRES(DataSet: TDataSet);


    procedure a1(DataSet: TDataSet);
    procedure a2(DataSet: TDataSet);
    procedure a3(DataSet: TDataSet);
    procedure b1(DataSet: TDataSet);
    procedure b2(DataSet: TDataSet);
    procedure AVANT_post_desig(DataSet: TDataSet);
    procedure avant_post_adm_pers(DataSet: TDataSet);
    procedure avant_post_chapitre(DataSet: TDataSet);
    procedure avant_post_agent(DataSet: TDataSet);
    procedure avant_post_grade(DataSet: TDataSet);
    procedure avant_post_fnc(DataSet: TDataSet);
    procedure avant_post_lieu(DataSet: TDataSet);
    procedure designation(DataSet: TDataSet);
    procedure befor_cons(DataSet: TDataSet);
    procedure befor_des(DataSet: TDataSet);
    procedure edit(DataSet: TDataSet);
    procedure SimpleDataSet_missionReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure after_insert11(DataSet: TDataSet);
    procedure avant_sup_cons(DataSet: TDataSet);
    procedure apres_ins1(DataSet: TDataSet);
    procedure APres_insert1(DataSet: TDataSet);

    procedure avant_post_qt_desig(DataSet: TDataSet);
  
    procedure afterpost_qt_desig(DataSet: TDataSet);
    procedure before_delete_desig_qt(DataSet: TDataSet);
    procedure afterscrol_desig_qt(DataSet: TDataSet);
    procedure afterinsert(DataSet: TDataSet);
    procedure after_delete_qt_desig(DataSet: TDataSet);
    procedure after_apply_qt_ds(Sender: TObject; var OwnerData: OleVariant);
    procedure befor_del_des(DataSet: TDataSet);
    procedure after_del_des(DataSet: TDataSet);
    procedure after_post_qt_des(DataSet: TDataSet);
    procedure SimpleDataSet_consommationAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure after_del_cons(DataSet: TDataSet);
  //  procedure DataSetProvider_creditAfterApplyUpdates(Sender: TObject;
   //   var OwnerData: OleVariant);





  private
    { D�clarations priv�es }
  public

    { D�clarations publiques }
  end;

var
  f_dm: Tf_dm;
   x:integer;s:ansistring;no_error,bo:boolean; xnum,xg:string; qt_desig,qt_d,r,qt_des,qt_cons:real;
    fac_eng:string; sup_des:char;
    FormatSettings1: TFormatSettings;

implementation

uses main, u_administration, uu_engagement, u_mandat,
  u_consul_eng, u_consul_mandat, u_mission, u_forme1, U_CREDIT, u_bc, u_edit_bc,
  u_mandat_fournisseur, U_eng_four, u_liste_facture, u_consommation,
  u_verif_des, u_designation;

{$R *.dfm}







procedure Tf_dm.a1(DataSet: TDataSet);
begin
     f_dm.Sm.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
    j:=1;
end;

procedure Tf_dm.a2(DataSet: TDataSet);
begin
      if (n_mandat=0) then
         begin
            f_mandat.sql1.Close;f_mandat.c1.Close;
             f_mandat.sql1.Params[0].AsString:=f_dm.sm.fieldByName('gestion').asstring;
             f_mandat.sql1.Params[1].asinteger:=f_dm.sm.fieldByName('num_engagement').asinteger;
             f_mandat.sql1.Params[2].AsString:=f_dm.sm.fieldByName('chapitre').asstring;
             f_mandat.sql1.Params[3].AsString:=f_dm.sm.fieldByName('article').asstring;
             f_mandat.sql1.open;f_mandat.c1.Open;
             f_mandat.c1.First;
             if  not f_mandat.c1.Eof   then begin
                        while not f_mandat.c1.Eof do begin
                              f_dm.SimpleDataSet_lignes_mandat.Append;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('ligne').AsInteger:=f_mandat.c1.FieldByName('ligne').AsInteger;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('gestion').AsString:=f_mandat.c1.fieldByName('gestion').asstring;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('mandat').AsInteger:=f_dm.sm.fieldByName('mandat').asinteger;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('chapitre').AsString:=f_mandat.c1.fieldByName('chapitre').asstring;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('article').AsString:=f_mandat.c1.fieldByName('article').asstring;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('benificiaire').AsString:=f_mandat.c1.fieldByName('benificiaire').asstring;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('structure').AsString:=f_mandat.c1.fieldByName('structure').asstring;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('structure_situation').AsString:=f_mandat.c1.fieldByName('structure_situation').asstring;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('dates').AsDateTime:=f_dm.sm.fieldByName('dates').AsDateTime;
                              f_dm.SimpleDataSet_lignes_mandat.FieldByName('montant').AsFloat:=f_mandat.c1.fieldByName('montant').asfloat;
                              f_mandat.c1.next
                             end;
             f_dm.SimpleDataSet_lignes_mandat.post;
             end;
             f_mandat.c1.Close;
             //f_dm.SimpleDataSet_lignes_mandat.Refresh;
          //   x:=simpledataset_lignes_mandat.RecordCount;f_mandat.som1.Text:='rec_count'+inttostr(x);
          end; n_mandat:=1;//f_dm.SimpleDataSet_mandat.ApplyUpdates(-1)
end;

procedure Tf_dm.a3(DataSet: TDataSet);
begin
   ClientDataSet_mandat.locate('gestion;mandat;chapitre;article',
      vararrayof([sm.fieldbyname('gestion').asstring,
                  sm.fieldbyname('mandat').asinteger,
                  sm.fieldbyname('chapitre').asstring,
                 sm.fieldbyname('article').asstring]),[]);
end;

procedure Tf_dm.after1(DataSet: TDataSet);
begin
    f_dm.simpleDataSet_depenses_annulees.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.afteriinsert_sds_lignes(DataSet: TDataSet);
begin
    simpleDataSet_lignes_mandat.FieldByName('ligne').asinteger:=simpleDataSet_lignes_mandat.RecordCount+1;

end;

procedure Tf_dm.afterinsert(DataSet: TDataSet);
begin
//clientdataset_desig_qt.Edit;
//clientDataSet_desig_qt.fieldbyname('ref').Asstring:='.'
f_des.activecontrol:=f_des.dbgrid1;
end;

procedure Tf_dm.afterinsertdepannulees(DataSet: TDataSet);
begin
 f_dm.ClientDataSet_depenses_annulees.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.afterpost_qt_desig(DataSet: TDataSet);
begin
     //mettre � jour qt_actuel dans la table d�signation ....




   // s'agit il  d'une sup ...
   // si sup_des=1 il s'agit alors d'une suppression ..
  if sup_des<>'1'  then ref_des:=ClientDataSet_desig_qt.FieldByName('ref').AsString;   // il ne s'agit pas d'1 suppression
  // S'il s'agit d'1 suppression la variable sup_des contient le ref supp ..
  f_des.edit3.text:= ref_des;

  if not clientDataSet_desig.Locate('ref',vararrayof([ref_des]),[])
  then begin
         showmessage('ERREUR 1 : ref non dans clientDataSet_desig');
         ClientDataSet_desig_qt.Cancel
         end
         else begin
               //   showmessage('pas d"ERREUR ');
         f_verif_des.q_qt_consommee.close;
         f_verif_des.q_qt_consommee.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_consommee.open;
         f_verif_des.q_qt_desig.close;
         f_verif_des.q_qt_desig.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_desig.open;
         qt_d:=0;qt_desig:=0;
         if  f_verif_des.q_qt_consommee.Fields[0].asstring<>'' then qt_d:=f_verif_des.q_qt_consommee.Fields[0].value;
         if  f_verif_des.q_qt_desig.Fields[0].asstring<>'' then qt_desig:=f_verif_des.q_qt_desig.Fields[0].value;
         clientDataSet_desig.edit;
         f_dm.clientDataSet_desig.fieldbyname('qt_consommee').AsFloat:=qt_d ;
         f_dm.clientDataSet_desig.fieldbyname('qt_total').AsFloat:=qt_desig ;
         clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=qt_desig-qt_d ;
         f_des.edit4.text:= 'qt_d='+floattostr(qt_d)+' qt_desig='+floattostr(qt_desig);
         clientDataSet_desig.post;
        // Apres le post on fait applyupdate automatioque ...
        // L'utilisateur n'aura pas � faire applyupdate, c'est pour �viter les erreurs ...
        // Si no laisse le applyupdate � l'utilisateur, il faudra faire plus de control ...
         clientDataSet_desig.ApplyUpdates(-1);
         clientDataSet_desig_qt.ApplyUpdates(-1);
                                    end;
        sup_des:='0';
end;

procedure Tf_dm.afterscrol1(DataSet: TDataSet);
begin
     f_mandat_fournisseur.sql_lignes.close; f_mandat_fournisseur.cl_lignes11.close;
     f_mandat_fournisseur.sql_lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     f_mandat_fournisseur.sql_lignes.Params[1].asstring:=f_dm.ClientDataSet_fournisseur1.fieldByName('benificiaire').asstring ;
     f_mandat_fournisseur.cl_lignes11.open;f_mandat_fournisseur.sql_lignes.open;
end;

procedure Tf_dm.afterscroll_cdm(DataSet: TDataSet);
begin
  {   if SimpleDataSet_mandat.active then begin

      SimpleDataSet_mandat.locate('gestion;mandat;chapitre;article',
      vararrayof([ClientDataSet_mandat.fieldbyname('gestion').asstring,
                  ClientDataSet_mandat.fieldbyname('mandat').asinteger,
                  ClientDataSet_mandat.fieldbyname('chapitre').asstring,
                  ClientDataSet_mandat.fieldbyname('article').asstring]),[]);
     end; }
end;





procedure Tf_dm.afterscrol_desig_qt(DataSet: TDataSet);
begin
//   ref_des:=ClientDataSet_desig_qt.FieldByName('ref').AsString;
   f_des.edit2.text:=ref_des;
end;

procedure Tf_dm.after_applay_upd_mission(Sender: TObject;
  var OwnerData: OleVariant);
begin
     SimpleDataSet_adm_apc_grade_fonction_mission.ApplyUpdates(0);
end;


procedure Tf_dm.after_apply_qt_ds(Sender: TObject; var OwnerData: OleVariant);
begin
         //mettre � jour qt_actuel dans la table d�signation ....




   // s'agit il  d'une sup ...
   // si sup_des=1 il s'agit alors d'une suppression ..
   // Il ne s'agit pas d'une suppression
  if sup_des<>'1'  then begin
   ref_des:=ClientDataSet_desig_qt.FieldByName('ref').AsString;   // il ne s'agit pas d'1 suppression
  // S'il s'agit d'1 suppression la variable sup_des contient le ref supp ..
 // f_des.edit3.text:= ref_des;

  if not clientDataSet_desig.Locate('ref',vararrayof([ref_des]),[])
  then begin
        // showmessage('ERREUR 1 : ref non dans clientDataSet_desig');
         ClientDataSet_desig_qt.Cancel
         end
         else begin
                 showmessage('pas d"ERREUR desig_qt ');
         f_verif_des.q_qt_consommee.close;
         f_verif_des.q_qt_consommee.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_consommee.open;
         f_verif_des.q_qt_desig.close;
         f_verif_des.q_qt_desig.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_desig.open;
         qt_d:=0;qt_desig:=0;
         if  f_verif_des.q_qt_consommee.Fields[0].asstring<>'' then qt_d:=f_verif_des.q_qt_consommee.Fields[0].value;
         if  f_verif_des.q_qt_desig.Fields[0].asstring<>'' then qt_desig:=f_verif_des.q_qt_desig.Fields[0].value;
         clientDataSet_desig.edit;
         f_dm.clientDataSet_desig.fieldbyname('qt_consommee').AsFloat:=qt_d ;
        f_dm.clientDataSet_desig.fieldbyname('qt_total').AsFloat:=qt_desig ;
        f_dm.clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=qt_desig-qt_d ;
         f_des.edit4.text:= 'qt_d='+floattostr(qt_d)+' qt_desig='+floattostr(qt_desig);
        clientDataSet_desig.post;
        // Apres le post on fait applyupdate automatioque ...
        // L'utilisateur n'aura pas � faire applyupdate, c'est pour �viter les erreurs ...
        // Si no laisse le applyupdate � l'utilisateur, il faudra faire plus de control ...
        clientDataSet_desig.ApplyUpdates(0);
       //  clientDataSet_desig_qt.ApplyUpdates(-1);
                                    end;
        sup_des:='0';
  end;
  end;

procedure Tf_dm.combien(DataSet: TDataSet);
begin
              compter.CLOSE;
  //   compter.sql.clear;
  //  compter.sql.Add('SELECT count(bc1) from BC_LIGNE');  //  and mandat=:x
    compter.Params[0].AsString:=f_principale.gestion.text;
    compter.Params[1].Asinteger:=f_dm.SimpleDataSet_bc.fieldByName('bc1').asinteger;

   compter.open;
     s1:='            ';
    if  compter.Fields[0].asstring<>'' then str(compter.Fields[0].value:4:0,s1) ;
     f_bc.ww.text:=s1; f_edit_bc.ww.text:=s1;
end;

procedure Tf_dm.befor_cons(DataSet: TDataSet);
begin
     SimpleDataSet_consommation.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
     SimpleDataSet_consommation.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.befor_del_des(DataSet: TDataSet);
begin
   ref_des1:=ClientDataSet_desig.FieldByName('ref').AsString;
end;

procedure Tf_dm.befor_des(DataSet: TDataSet);
begin
    f_dm.SimpleDataSet_desig.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
    f_dm.SimpleDataSet_desig.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.count1(DataSet: TDataSet);
begin
    SimpleDataSet_eng.locate('gestion;fiche;chapitre;article',vararrayof([xgestion_eng,num_enre_eng,xchapitre_eng,xarticle_eng]),[]);
end;










procedure Tf_dm.after_delete(DataSet: TDataSet);
begin
   // r�organiser les lignes ...


  if  simpledataset_bc_lignes.recordcount>0
   then begin
           simpledataset_bc_lignes.edit;
           simpledataset_bc_lignes.Last;x:=simpledataset_bc_lignes.RecordCount;
           while not  simpledataset_bc_lignes.bof and (x>0) do begin
                   simpledataset_bc_lignes.Edit;
                   simpledataset_bc_lignes.fieldByName('ligne').asinteger:=x;x:=x-1;
                   simpledataset_bc_lignes.Prior;
                 end;
   end;

end;

procedure Tf_dm.after_delete_qt_desig(DataSet: TDataSet);
begin
      sup_des:='1';
      if not clientDataSet_desig.Locate('ref',vararrayof([ref_des]),[])
  then begin
       //  showmessage('ERREUR 1 : ref non dans clientDataSet_desig');
         ClientDataSet_desig_qt.Cancel
         end
         else begin
                 showmessage(' SUPPRESSION QT ');
            // les lignes ci dessous recalcule la qtt� consomme� et la qtt�  global ...
       { f_verif_des.q_qt_consommee.close;
        f_verif_des.q_qt_consommee.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_consommee.open;
         f_verif_des.q_qt_desig.close;
        f_verif_des.q_qt_desig.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_desig.open;
        qt_d:=0;qt_desig:=0;
         if  f_verif_des.q_qt_consommee.Fields[0].asstring<>'' then qt_d:=f_verif_des.q_qt_consommee.Fields[0].value;
         if  f_verif_des.q_qt_desig.Fields[0].asstring<>'' then qt_desig:=f_verif_des.q_qt_desig.Fields[0].value-qt_des;}
         clientDataSet_desig.edit;
       //  f_dm.clientDataSet_desig.fieldbyname('qt_consommee').AsFloat:=qt_d ;
       // JE SOUSTRAIT LA QT SUPPRIMEE qt_des ...
         f_dm.clientDataSet_desig.fieldbyname('qt_total').AsFloat:=f_dm.clientDataSet_desig.fieldbyname('qt_total').AsFloat-qt_des ;
         // JE SOUSTRAIT LA QT SUPPRIMEE qt_des ...
            clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=clientDataSet_desig.fieldbyname('qt_actuel').AsFloat-qt_des;
       //  clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=qt_desig-qt_d ;
         f_des.edit4.text:= 'qt_consommee='+floattostr(qt_d)+' qt_desig='+floattostr(qt_desig);
         clientDataSet_desig.post;
        // Apres le post on fait applyupdate automatioque ...
        // L'utilisateur n'aura pas � faire applyupdate, c'est pour �viter les erreurs ...
        // Si no laisse le applyupdate � l'utilisateur, il faudra faire plus de control ...
         clientDataSet_desig.ApplyUpdates(0);
        clientDataSet_desig_qt.ApplyUpdates(0);
                                    end;
       sup_des:='0';
end;

procedure Tf_dm.after_delete_sds_lignes_mandat(DataSet: TDataSet);
begin

   // r�organiser les lignes ...

  p:='s';
  if  simpledataset_lignes_mandat.recordcount>0
   then begin
                 x:=simpledataset_lignes_mandat.RecordCount;
                 simpledataset_lignes_mandat.first;y:=1;x:=simpledataset_lignes_mandat.RecordCount;
                 //f_mandat.som1.Text:='rec_count'+inttostr(x);
                 while not  simpledataset_lignes_mandat.eof and (y<=x) do begin
                   simpledataset_lignes_mandat.Edit;
                   simpledataset_lignes_mandat.fieldByName('ligne').asinteger:=y;y:=y+1;
                   simpledataset_lignes_mandat.Post;simpledataset_lignes_mandat.next;
                 end;
   end;
 //  simpledataset_lignes_mandat.ApplyUpdates(-1);
   p:=' ';
end;

procedure Tf_dm.after_delete_simpledataset_det_eng(DataSet: TDataSet);
var x:integer;
begin
// r�organiser les lignes ...

  p:='s';
  if  simpledataset_det_eng.recordcount>0
   then begin
               x:=simpledataset_det_eng.RecordCount;
                 simpledataset_det_eng.first;y:=1;
                 while not  simpledataset_det_eng.eof and (y<=x) do begin
                   simpledataset_det_eng.Edit;
                   simpledataset_det_eng.fieldByName('ligne').asinteger:=y;y:=y+1;
                   simpledataset_det_eng.Post;simpledataset_det_eng.next;
                 end;
   end;
  // simpledataset_det_eng.ApplyUpdates(-1);
   p:=' ';

end;








procedure Tf_dm.after_del_cons(DataSet: TDataSet);
begin
      if not clientDataSet_desig.Locate('ref',vararrayof([ref_des]),[])
  then showmessage('ERREUR 1') else begin
        { f_verif_des.q_qt_consommee.close;
         f_verif_des.q_qt_consommee.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_consommee.open;
         f_verif_des.q_qt_desig.close;
         f_verif_des.q_qt_desig.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_desig.open;
         qt_d:=0;qt_desig:=0;
         if  f_verif_des.q_qt_consommee.Fields[0].asstring<>'' then qt_d:=f_verif_des.q_qt_consommee.Fields[0].value;
         if  f_verif_des.q_qt_desig.Fields[0].asstring<>'' then qt_desig:=f_verif_des.q_qt_desig.Fields[0].value;}
        clientDataSet_desig.edit;
        f_dm.clientDataSet_desig.fieldbyname('qt_consommee').AsFloat:=f_dm.clientDataSet_desig.fieldbyname('qt_consommee').AsFloat-qt_cons ;
        f_dm.clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=f_dm.clientDataSet_desig.fieldbyname('qt_actuel').AsFloat+qt_cons ;
        f_dm.clientDataSet_desig.post;
        // Apres le post on fait applyupdate automatioque ...
        // L'utilisateur n'aura pas � faire applyupdate, c'est pour �viter les erreurs ...
        // Si no laisse le applyupdate � l'utilisateur, il faudra faire plus de control ...
       clientDataSet_desig.ApplyUpdates(0);
       SimpleDataSet_consommation.ApplyUpdates(0);
                                    end;
    sup_des:='0';qt_d:=0;
    // Apres le post on fait applyupdate automatioque ...
    // L'utilisateur n'aura pas � faire applyupdate, c'est pour �viter les erreurs ...
    // Si no laisse le applyupdate � l'utilisateur, il faudra faire plus de control ...

    f_dm.ClientDataSet_desig.Refresh;f_consommation.dbgrid1.refresh
end;

procedure Tf_dm.after_del_des(DataSet: TDataSet);
begin
     f_des.del_qt_desig.close;
     f_des.del_qt_desig.Params[0].AsString:=ref_des1;
     f_des.del_qt_desig.execsql;
     f_dm.ClientDataSet_desig_qt.Refresh;f_des.dbgrid3.Refresh;
     f_dm.ClientDataSet_desig.ApplyUpdates(-1)
end;

procedure Tf_dm.after_insert(DataSet: TDataSet);
begin
  simpleDataSet_bc_lignes.fieldbyname('ligne').asinteger:=simpleDataSet_bc_lignes.RecordCount+1;
  simpleDataSet_bc_lignes.fieldbyname('PU').AsFloat:=0;
  simpleDataSet_bc_lignes.fieldbyname('qt').AsString:='0';

end;

procedure Tf_dm.after_insert11(DataSet: TDataSet);
begin
   f_dm.simpleDataSet_depenses_annulees.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;


procedure Tf_dm.after_insert_bc(DataSet: TDataSet);
begin
      f_dm.SimpleDataSet_bc.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.after_insert_bc1(DataSet: TDataSet);
begin
 // f_dm.ClientDataSet_bc.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.after_insert_credit(DataSet: TDataSet);
begin
     f_dm.ClientDataSet_credit.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.after_insert_mission(DataSet: TDataSet);
begin
      f_dm.SimpleDataSet_mission.fieldByName('gestion').asstring:=trim(f_principale.GESTION.Text);
      f_dm.SimpleDataSet_mission.fieldByName('p_e_c').asstring:='n';
end;



procedure Tf_dm.after_insert_simpledataset_det_eng(DataSet: TDataSet);
begin
   SimpleDataSet_det_eng.FieldByName('ligne').asinteger:=SimpleDataSet_det_eng.RecordCount+1;
 //  SimpleDataSet_det_eng.FieldByName('dates').Asdatetime:=SimpleDataSet_eng.FieldByName('dates').asdatetime;
end;

procedure Tf_dm.after_insert_simpledataset_eng(DataSet: TDataSet);
begin
     SimpleDataSet_eng.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
     j:=1;
end;





procedure Tf_dm.after_post_qt_des(DataSet: TDataSet);
begin
     ClientDataSet_desig_qt.ApplyUpdates(0)
end;

procedure Tf_dm.after_post_simpledataset_eng(DataSet: TDataSet);
begin
     //   Si on fait comme suit l'utilisateur n'aura pas � faire applyupdates

  //  SimpleDataSet_eng.ApplyUpdates(1);
   // ajout dans obs_eng

     i := SimpleDataSet_eng.ApplyUpdates(0);
     if i <> 0 then
     raise Exception.Create('Error on ApplyUpdates occured')
   //  else
   //   f_principale.client.Socket.WriteLn('La table Engagement est MAJ ');
 { try
      SimpleDataSet_eng.ApplyUpdates(0);
          except
          on e:exception do //(handle all delphi exceptions)
          showmessage(e.message);
       end  ;
       { //  on E : Exception do
          begin
            // Principale.Log('SQL : ' + ClientDataSetInternet1.CommandText);
             //  FPrincipale.Log('SQL : ' + ClientDataSetInternet2.CommandText);
             //  FPrincipale.Log(E.Message);
               showMessage('pop');
            //   MessageDlg(E.Message, mtError, [mbOK], 0);
          end;
     end; }
     else begin
   if not SimpleDataSet_obs_eng.locate('gestion;fiche;chapitre;article',
   vararrayof([SimpleDataSet_eng.FieldByName('gestion').AsString,
               SimpleDataSet_eng.FieldByName('fiche').AsString,
               SimpleDataSet_eng.FieldByName('chapitre').AsString,
               SimpleDataSet_eng.FieldByName('article').AsString]),[])
             then  begin
                    SimpleDataSet_obs_eng.Append;
                    SimpleDataSet_obs_eng.FieldByName('gestion').AsString:=f_dm.SimpleDataSet_eng.FieldByName('gestion').AsString;
                    SimpleDataSet_obs_eng.FieldByName('fiche').AsString:=f_dm.SimpleDataSet_eng.FieldByName('fiche').AsString;
                    SimpleDataSet_obs_eng.FieldByName('chapitre').AsString:=f_dm.SimpleDataSet_eng.FieldByName('chapitre').AsString;
                    SimpleDataSet_obs_eng.FieldByName('article').AsString:=f_dm.SimpleDataSet_eng.FieldByName('article').AsString;
                    SimpleDataSet_obs_eng.FieldByName('objet').AsString:=f_dm.SimpleDataSet_eng.FieldByName('objet').AsString;
                    SimpleDataSet_obs_eng.Post;f_dm.SimpleDataSet_obs_eng.ApplyUpdates(0) ;
             end;
     end;
end;

procedure Tf_dm.after_scrol2(DataSet: TDataSet);
begin
     if fac_eng='liste_eng'  then  begin
           f_eng_four.sql_lignes.close; f_eng_four.cl_lignes11.close;
           f_eng_four.sql_lignes.Params[0].asstring:=trim(f_principale.gestion.text);
           f_eng_four.sql_lignes.Params[1].asstring:=f_dm.ClientDataSet_fournisseur2.fieldByName('benificiaire').asstring ;
           f_eng_four.cl_lignes11.open;f_eng_four.sql_lignes.open;
     end;
      if fac_eng='liste_fac'  then  begin
           F_liste_facture.sql_lignes.close; F_liste_facture.cl_lignes11.close;
           F_liste_facture.sql_lignes.Params[0].asstring:=f_dm.ClientDataSet_fournisseur2.fieldByName('benificiaire').asstring ;
           F_liste_facture.cl_lignes11.open;F_liste_facture.sql_lignes.open;
     end;
end;

procedure Tf_dm.after_scrol_credit(DataSet: TDataSet);
begin
        r:=0;
        f_credit.q_cre_affec.close;
        f_credit.q_cre_affec.Params[0].AsString:=f_dm.clientdataset_credit.fieldByName('chapitre').asstring;
        f_credit.q_cre_affec.Params[1].Asstring:=f_principale.gestion.text;
        f_credit.q_cre_affec.open;
        f_credit.pp.Text:='                      ';
        if  f_credit.q_cre_affec.Fields[0].asstring<>'' then  r:=f_credit.q_cre_affec.Fields[0].value ;

        f_credit.q_enmoins.close;
        f_credit.q_enmoins.Params[0].AsString:=f_dm.clientdataset_credit.fieldByName('chapitre').asstring;
        f_credit.q_enmoins.Params[1].Asstring:=f_principale.gestion.text;
        f_credit.q_enmoins.open;
        if  f_credit.q_ENMOINS.Fields[0].asstring<>'' then r:=r-f_credit.q_enmoins.Fields[0].value;

        f_credit.pp.Text:=floattostr(r);
end;

procedure Tf_dm.after_update_eng(Sender: TObject; var OwnerData: OleVariant);
begin
   s:='01 La table Engagement est MAJ';
   try
   //   if TcpClient1.Connect then
   //   f_principale.TcpClient1.Sendln(s);
  finally
  //  TcpClient1.Disconnect;
  end;
end;

procedure Tf_dm.alerter(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
// est-ce_que f_mandat est en cours ...
if x=1 then begin
 {
    f_dm.IBD_eng1.Params[0].asstring:=f_principale.GESTION.Text;
 //   if messagedlgpos('REFRESH LA TABLE MANDAT... (Events est utilis� et fait avec Close et open la table (� corriger)) ce message est � supprimer ',mtconfirmation,mbYesNo,0,200,200,mbno)=3
    // then begin
              xgestion1:=f_dm.ibd_mandat.FieldByName('gestion').asstring;
              num_enre:=f_dm.ibd_mandat.FieldByName('mandat').asinteger;
              xchapitre:=f_dm.ibd_mandat.FieldByName('chapitre').asstring;
              xarticle:=f_dm.ibd_mandat.FieldByName('article').asstring;
              ibt_mandat.Refresh;f_mandat.DBGrid6.Refresh;
              f_dm.ibt_mandat.locate('gestion;mandat;chapitre;article',vararrayof([xgestion1,num_enre,xchapitre,xarticle]),[]);
        //  end;}
        end;
end;

procedure Tf_dm.apres(DataSet: TDataSet);
begin
    f_dm.simpleDataSet_convention.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.apres_ins1(DataSet: TDataSet);
begin
  f_dm.simpleDataSet_depenses_annulees.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.APres_insert1(DataSet: TDataSet);
begin
 //  f_dm.simpleDataSet_depenses_annulees.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.AVANT_post_desig(DataSet: TDataSet);
begin
     ClientDataSet_desig.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
     ClientDataSet_desig.FieldByName('date_maj').asstring:=F_principale.dat.caption;
     //mettre � jour qt_actuel ....
    { f_verif_des.q_qt_consommee.close;
     f_verif_des.q_qt_consommee.Params[0].AsString:=f_dm.ClientDataSet_desig.fieldbyname('ref').asstring;
     f_verif_des.q_qt_consommee.open;
     f_verif_des.q_qt_desig.close;
     f_verif_des.q_qt_desig.Params[0].AsString:=f_dm.ClientDataSet_desig.fieldbyname('ref').asstring;
     f_verif_des.q_qt_desig.open;
     qt_d:=0;qt_desig:=0;
     if  f_verif_des.q_qt_consommee.Fields[0].asstring<>'' then qt_d:=f_verif_des.q_qt_consommee.Fields[0].value;
     if  f_verif_des.q_qt_desig.Fields[0].asstring<>'' then qt_desig:=f_verif_des.q_qt_desig.Fields[0].value;
    // f_dm.clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=(f_dm.clientDataSet_desig.fieldbyname('qt_initial').AsFloat)-qt_d

    f_dm.clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=qt_desig-qt_d }
    end;

procedure Tf_dm.avant_post_adm_pers(DataSet: TDataSet);
begin
     SimpleDataSet_adm_pers.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
     SimpleDataSet_adm_pers.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.avant_post_agent(DataSet: TDataSet);
begin
      simpleDataSet_agent.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
      simpleDataSet_agent.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.avant_post_chapitre(DataSet: TDataSet);
begin
    ClientDataSet_chapitre.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
    ClientDataSet_chapitre.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.avant_post_fnc(DataSet: TDataSet);
begin
    simpleDataSet_fonction.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
    simpleDataSet_fonction.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.avant_post_grade(DataSet: TDataSet);
begin
    simpleDataSet_grade.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
      simpleDataSet_grade.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.avant_post_lieu(DataSet: TDataSet);
begin
      simpleDataSet_lieu.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
      simpleDataSet_lieu.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.avant_post_qt_desig(DataSet: TDataSet);
begin
     ClientDataSet_desig_qt.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
     ClientDataSet_desig_qt.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.avant_sup_cons(DataSet: TDataSet);
begin
      ref_des:=SimpleDataSet_consommation.FieldByName('ref').AsString;
      qt_cons:=SimpleDataSet_consommation.FieldByName('qt').Asfloat;
      sup_des:='1'; //f_consommation.edit4.text:=ref_des+ '  x   '+floattostr(qt_d);
      f_consommation.EDIT2.text:=ref_des+floattostr(qt_d);
end;

procedure Tf_dm.ibd_adm_before_post(DataSet: TDataSet);
begin
    ClientDataSet_adm.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
    ClientDataSet_adm.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;



procedure Tf_dm.idletime(Sender: TObject);
begin
   // 99999
    showmessage('TIMER DEPASSE .');
end;










procedure Tf_dm.mision_avant_post(DataSet: TDataSet);
begin
  if simpledataset_mission.FieldByName('p_e_c').asstring='n' then begin
         f_dm.SimpleDataSet_mission.FieldByName('date_d_pe').AsString:='';
         f_dm.SimpleDataSet_mission.FieldByName('date_f_pe').AsString:='';
         f_dm.SimpleDataSet_mission.FieldByName('heure_d_pe').AsString:='';
         f_dm.SimpleDataSet_mission.FieldByName('heure_f_pe').AsString:='';
      end;
end;

procedure Tf_dm.before_post_mission(DataSet: TDataSet);
begin
    SimpleDataSet_mission.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
    SimpleDataSet_mission.FieldByName('date_maj').asstring:=F_principale.dat.caption;
    // V�rifier les dates et heures ...
    // � la place des triggers
    bo:=true;
    if bo and (SimpleDataSet_mission.FieldByName('date_d').AsDateTime<SimpleDataSet_mission.FieldByName('date_mission').AsDateTime)
    then begin
            bo:=false;
            showmessage('Erreur : La date de d�part est ant�rieure � la date Mission ...');
            simpledataset_mission.CancelUpdates; end;//abort; end;

    if bo and (SimpleDataSet_mission.FieldByName('date_r').AsDateTime<SimpleDataSet_mission.FieldByName('date_mission').AsDateTime)
    then begin
            bo:=false;
            showmessage('Erreur : La date de retour est ant�rieure � la date Mission ...');
            simpledataset_mission.CancelUpdates; end;//abort; end;

    if bo and (SimpleDataSet_mission.FieldByName('date_d_pe').AsString<>'') and
        (SimpleDataSet_mission.FieldByName('date_d_pe').AsDateTime<SimpleDataSet_mission.FieldByName('date_mission').AsDateTime)
    then begin
            bo:=false;
            showmessage('Erreur : La date de prise en charge est ant�rieure � la date Mission ...');
            simpledataset_mission.CancelUpdates; end;//abort; end;

    if bo and (SimpleDataSet_mission.FieldByName('date_f_pe').AsString<>'') and
       (simpleDataSet_mission.FieldByName('date_f_pe').AsDateTime<SimpleDataSet_mission.FieldByName('date_mission').AsDateTime)
    then begin
            bo:=false;
            showmessage('Erreur : La date de fin de prise en charge est ant�rieure � la date Mission ...');
            simpledataset_mission.CancelUpdates end;//abort; end;

end;


procedure Tf_dm.b1(DataSet: TDataSet);
begin
    f_mandat.tm.Text:=inttostr(f_dm.Sm.fieldByName('mandat').asinteger);
   n_mandat:=f_dm.Sm.fieldByName('mandat').asinteger;
end;

procedure Tf_dm.b2(DataSet: TDataSet);
begin
       f_dm.Sm.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
    f_dm.Sm.FieldByName('date_maj').asstring:=F_principale.dat.caption;

   f_dm.SimpleDataSet_lignes_mandat.Refresh;
   if   MessageDlgPos('Validez la maj du mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 1, 450)= idno
      then  begin    Sm.CancelUpdates;abort; end
end;

procedure Tf_dm.before_delete_desig_qt(DataSet: TDataSet);
begin
      ref_des:=ClientDataSet_desig_qt.FieldByName('ref').AsString;
      qt_des:=ClientDataSet_desig_qt.FieldByName('qt').Asfloat;
      sup_des:='1';
end;

procedure Tf_dm.before_post_credit(DataSet: TDataSet);
begin
     ClientDataSet_credit.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
     ClientDataSet_credit.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;

procedure Tf_dm.before_post_sds_lignes_1(DataSet: TDataSet);
begin
      simpledataset_lignes_mandat.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
      simpledataset_lignes_mandat.FieldByName('date_maj').asstring:=F_principale.dat.caption;
      //V�rifier que   les masterfields n'ont pas �t� modifi�s
      if (simpledataset_lignes_mandat.FieldByName('chapitre').asstring<>sm.FieldByName('chapitre').asstring)
         or (simpledataset_lignes_mandat.FieldByName('article').asstring<>sm.FieldByName('article').asstring)
         or (simpledataset_lignes_mandat.FieldByName('structure').asstring<>sm.FieldByName('structure').asstring)
         or (simpledataset_lignes_mandat.FieldByName('structure_situation').asstring<>sm.FieldByName('structure_situation').asstring)
      then begin showmessage('Erreur. Un des champs masterfield (chapitre,article,structure ou structure_situation) est modifi� ...');
                 simpledataset_lignes_mandat.Cancel;abort; end;

    // il ne s'agit pas d'une suppression ...
    // il ne s'agit pas d'une suppression ...
    if not(p='s') then begin

         {if   MessageDlgPos('Validez la maj de la ligne mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 10, 385)= idYes
          then begin
                   clientdataset_lignes_mandat.Post;
                   clientdataset_lignes_mandat.ApplyUpdates(-1) // Pour ne pas faire un ApplyUpdates sur le dbnavigator
               end
               else begin
                       clientdataset_lignes_mandat.CancelUpdates;abort; end;
                  end; }

     //  if   MessageDlgPos('Validez la maj de la ligne mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 400,570)= IDNo then
      // begin simpledataset_lignes_mandat.CancelUpdates;abort; end;
    end;
end;



procedure Tf_dm.before_post_simpledataset_eng(DataSet: TDataSet);
begin
     no_error:=true;
     SimpleDataSet_eng.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
     SimpleDataSet_eng.FieldByName('date_maj').asstring:=F_principale.dat.caption;

     // peut etre  Remplac� par une contrainte d'int�grit�
    // ff_engagement.edit1.text:=(copy(SimpleDataSet_eng.FieldByName('dates').asstring,7,4));
     if (copy(SimpleDataSet_eng.FieldByName('dates').asstring,7,4))<>
         trim(f_principale.gestion.text) then begin
          showmessage('Date incorrecte ...');no_error:=false;
          SimpleDataSet_eng.CancelUpdates;abort;
          end;
      if no_error then begin
              if   MessageDlgPos('Validez la maj de l"engagement (post)',mtConfirmation, [mbYes, mbNo], 0, 2,435)= IDNo then
              begin SimpleDataSet_eng.CancelUpdates;abort; end;
      end;

end;





procedure Tf_dm.beforpost_simpledataset_det_eng(DataSet: TDataSet);
begin
       if p<>'s' then begin
     // V�rifier le fac_ou_miss
         SQLDataSet_det_eng1.First;
         if SQLDataSet_det_eng1.locate('gestion;fac_ou_miss',vararrayof([SimpleDataSet_det_eng.FieldByName('gestion').AsString,SimpleDataSet_det_eng.FieldByName('fac_ou_miss').AsString]),[])
             then
               if (SimpleDataSet_det_eng.FieldByName('fiche').AsString<>SQLDataSet_det_eng1.FieldByName('fiche').AsString)then
               showmessage('Un N� de facture ou de mission identique existe dans la fiche eng N�'+(SQLDataSet_det_eng1.FieldByName('fiche').AsString));

     SimpleDataSet_det_eng.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
     SimpleDataSet_det_eng.FieldByName('date_maj').asstring:=F_principale.dat.caption;


      if   MessageDlgPos('Validez la maj de la ligne (post)',mtConfirmation, [mbYes, mbNo], 0, 10,320)= IDNo then
       begin SimpleDataSet_det_eng.CancelUpdates;abort; end;
         end;

end;


procedure Tf_dm.befort_post_bc(DataSet: TDataSet);
begin
  f_dm.SimpleDataSet_bc.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
    f_dm.SimpleDataSet_bc.FieldByName('date_maj').asstring:=F_principale.dat.caption;

   if   MessageDlgPos('Validez la maj du BC (post)',mtConfirmation, [mbYes, mbNo], 0, 5, 280)= idno
     then  begin    f_dm.SimpleDataSet_bc.CancelUpdates;abort; end;

end;



procedure Tf_dm.befort_post_bc_lignes(DataSet: TDataSet);
begin
     simpledataset_bc_lignes.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
      simpledataset_bc_lignes.FieldByName('date_maj').asstring:=F_principale.dat.caption;
    // il ne s'agit pas d'une suppression ...
    // il ne s'agit pas d'une suppression ...
    if not(p='s') then begin

         {if   MessageDlgPos('Validez la maj de la ligne mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 10, 385)= idYes
          then begin
                   clientdataset_lignes_mandat.Post;
                   clientdataset_lignes_mandat.ApplyUpdates(-1) // Pour ne pas faire un ApplyUpdates sur le dbnavigator
               end
               else begin
                       clientdataset_lignes_mandat.CancelUpdates;abort; end;
                  end; }

     //  if   MessageDlgPos('Validez la maj de la ligne mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 400,570)= IDNo then
      // begin simpledataset_lignes_mandat.CancelUpdates;abort; end;
    end;
 
end;





procedure Tf_dm.designation(DataSet: TDataSet);
begin
   xregion:=f_dm.simpledataset_consommation.fieldbyname('region').Asstring;
  xadm:=f_dm.simpledataset_consommation.fieldbyname('adm').Asstring;
  xmat:=f_dm.simpledataset_consommation.fieldbyname('mat').Asstring;
  xservice:=f_dm.simpledataset_consommation.fieldbyname('service').Asstring;
  xdate:=f_dm.simpledataset_consommation.fieldbyname('dates').Asstring;
    SimpleDataSet_consommation.ApplyUpdates(0);
end;

procedure Tf_dm.det_eng_after_post(DataSet: TDataSet);
begin
//    with DataSet as TClientDataSet do
 //  ApplyUpdates(1);
end;







procedure Tf_dm.edit(DataSet: TDataSet);
begin
 f_dm.SimpleDataSet_consommation.Edit;
 f_dm.SimpleDataSet_consommation.FieldByName('observation').AsString:=' ';
end;

procedure Tf_dm.eng_maj(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
// est-ce_que f_engagement est en cours ...
if x=1 then begin
    if messagedlgpos('REFRESH LA TABLE ENGAGEMENT (Events est utilis� et fait avec Close et open la table (� corriger)) ce message est � supprimer ',mtconfirmation,mbYesNo,0,200,200,mbno)=3
     then begin
    {  xgestion1:=f_dm.ibd_ENG1.FieldByName('gestion').asstring;
              num_enre:=f_dm.ibd_eng1.FieldByName('fiche').asinteger;
              xchapitre:=f_dm.ibd_eng1.FieldByName('chapitre').asstring;
              xarticle:=f_dm.ibd_eng1.FieldByName('article').asstring;
              f_dm.ibd_eng1.Close;f_dm.ibd_eng1.open;f_dm.ibd_eng1.FieldByName('dates').editmask:='##/##/####';
              f_dm.ibd_eng1.locate('gestion;fiche;chapitre;article',vararrayof([xgestion1,num_enre,xchapitre,xarticle]),[]);
          end;}
        end; end;
end;





procedure Tf_dm.post1(DataSet: TDataSet);
begin
   if simpledataset_adm_apc_grade_fonction_mission.locate('gestion;numero_mission',vararrayof([simpledataset_mission.FieldByName('gestion').asstring,
                       simpledataset_mission.FieldByName('numero_mission').asstring]),[])
        then begin
                   simpledataset_adm_apc_grade_fonction_mission.Edit;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_adm').AsString:=simpledataset_agent.FieldByName('adm').AsString;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_apc').AsString:=simpledataset_agent.FieldByName('apc').AsString;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_grade').AsString:=simpledataset_agent.FieldByName('grade_actuel').asstring;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_fonction').AsString:=simpledataset_agent.FieldByName('fonction_actuelle').asstring;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('categ_fonction').AsString:=f_dm.simpledataset_fonction.FieldByName('categ').AsString;//simpledataset_agent.FieldByName('fonction_actuelle').asstring;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('categ_grade').AsString:=f_dm.simpledataset_grade.FieldByName('categ').AsString;;
                   simpledataset_adm_apc_grade_fonction_mission.Post;
                   // ApplyUpdates(-1) est execut� sur la table mission
                   //simpledataset_adm_apc_grade_fonction_mission.ApplyUpdates(-1) ;
        end
        else begin
                   simpledataset_adm_apc_grade_fonction_mission.Append;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('gestion').AsString:=simpledataset_mission.FieldByName('gestion').AsString;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('numero_mission').AsString:=simpledataset_mission.FieldByName('numero_mission').AsString;

                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_adm').AsString:=simpledataset_agent.FieldByName('adm').AsString;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_apc').AsString:=simpledataset_agent.FieldByName('apc').AsString;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_grade').AsString:=simpledataset_agent.FieldByName('grade_actuel').asstring;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_fonction').AsString:=simpledataset_agent.FieldByName('fonction_actuelle').asstring;
                    simpledataset_adm_apc_grade_fonction_mission.FieldByName('categ_fonction').AsString:=f_dm.simpledataset_fonction.FieldByName('categ').AsString;//xcateg_fonction;//simpledataset_agent.FieldByName('fonction_actuelle').asstring;
                   simpledataset_adm_apc_grade_fonction_mission.FieldByName('categ_grade').AsString:=f_dm.simpledataset_grade.FieldByName('categ').AsString;//xcateg_grade;
                   simpledataset_adm_apc_grade_fonction_mission.Post
                   // ApplyUpdates(-1) est execut� sur la table mission
                   //simpledataset_adm_apc_grade_fonction_mission.ApplyUpdates(-1) ;
        end;


  //  SimpleDataSet_mandat.refresh;f_mandat.dbgrid6.refresh;
end;


procedure Tf_dm.nnapres_insert(DataSet: TDataSet);
begin
   f_dm.simpledataset_depenses_mission.FieldByName('gestion').AsString:=f_dm.simpledataset_mission.FieldByName('gestion').asstring;
   f_dm.simpledataset_depenses_mission.FieldByName('numero_mission').AsString:=f_dm.simpledataset_mission.FieldByName('numero_mission').asstring;
end;




procedure Tf_dm.onreconcl_error(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
    Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure Tf_dm.PAPRES(DataSet: TDataSet);
begin
  f_dm.simpleDataSet_FACTURE.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
end;

procedure Tf_dm.reconcilerreur(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
     Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure Tf_dm.refresh_bc_lignes(Sender: TObject; var OwnerData: OleVariant);
begin
   // SimpleDataSet_bc_lignes.close;
   // SimpleDataSet_bc_lignes.open;
   xnum:=SimpleDataSet_bc.FieldByName('bc').AsString;
   xg:=SimpleDataSet_bc.FieldByName('gestion').AsString;
    SimpleDataSet_bc.close;
    SimpleDataSet_bc.open;
    SimpleDataSet_bc.locate('gestion;bc',vararrayof([xg,xnum]),[]);

end;

procedure Tf_dm.reimputation_befor_post(DataSet: TDataSet);
begin
     clientdataset_reimputation.FieldByName('utilisateur').asstring:=form1.Edit8.text;
     clientdataset_reimputation.FieldByName('date_maj').asstring:=F_principale.dat.caption;
end;





procedure Tf_dm.SimpleDataSet_consommationAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  // il ne s'agit pas d'une sup  ...
  if sup_des<>'1'  then //ref_des:=SimpleDataSet_consommation.FieldByName('ref').AsString;
   //f_consommation.EDIT2.text:=trim(ref_des)+' '+sup_des+' '+floattostr(qt_d);;

 // if not clientDataSet_desig.Locate('ref',vararrayof([simpledataset_consommation.fieldbyname('ref').asstring]),[])
// if not clientDataSet_desig.Locate('ref',vararrayof([ref_des]),[])
                  begin
 ref_des:=SimpleDataSet_consommation.FieldByName('ref').AsString;
 if not clientDataSet_desig.Locate('ref',vararrayof([ref_des]),[])
  then showmessage('ERREUR 1') else begin
         f_verif_des.q_qt_consommee.close;
         f_verif_des.q_qt_consommee.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_consommee.open;
         f_verif_des.q_qt_desig.close;
         f_verif_des.q_qt_desig.Params[0].AsString:=ref_des;
         f_verif_des.q_qt_desig.open;
         qt_d:=0;qt_desig:=0;
         if  f_verif_des.q_qt_consommee.Fields[0].asstring<>'' then qt_d:=f_verif_des.q_qt_consommee.Fields[0].value;
         if  f_verif_des.q_qt_desig.Fields[0].asstring<>'' then qt_desig:=f_verif_des.q_qt_desig.Fields[0].value;
        clientDataSet_desig.edit;
        f_dm.clientDataSet_desig.fieldbyname('qt_consommee').AsFloat:=qt_d ;
        f_dm.clientDataSet_desig.fieldbyname('qt_total').AsFloat:=qt_desig ;
        f_dm.clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=qt_desig-qt_d ;
        f_dm.clientDataSet_desig.post;
        // Apres le post on fait applyupdate automatioque ...
        // L'utilisateur n'aura pas � faire applyupdate, c'est pour �viter les erreurs ...
        // Si no laisse le applyupdate � l'utilisateur, il faudra faire plus de control ...
       clientDataSet_desig.ApplyUpdates(0);
     //  SimpleDataSet_consommation.ApplyUpdates(-1);
                                    end;
    sup_des:='0';qt_d:=0;
    // Apres le post on fait applyupdate automatioque ...
    // L'utilisateur n'aura pas � faire applyupdate, c'est pour �viter les erreurs ...
    // Si no laisse le applyupdate � l'utilisateur, il faudra faire plus de control ...

    f_dm.ClientDataSet_desig.Refresh;f_consommation.dbgrid1.refresh
                  end;
end;

procedure Tf_dm.SimpleDataSet_missionReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
        Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure Tf_dm.clientdataset_lignes_mandat_afterinsert(DataSet: TDataSet);
begin
   ClientDataSet_lignes_mandat.FieldByName('ligne').asinteger:=ClientDataSet_lignes_mandat.RecordCount+1;
 //  ClientDataSet_lignes_mandat.FieldByName('dates').Asdatetime:=ClientDataSet_mandat.FieldByName('dates').asdatetime;
end;

procedure Tf_dm.clientdataset_linges_mandat_beforpost(DataSet: TDataSet);
begin
      clientdataset_lignes_mandat.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);
      clientdataset_lignes_mandat.FieldByName('date_maj').asstring:=F_principale.dat.caption;
    // il ne s'agit pas d'une suppression ...
    // il ne s'agit pas d'une suppression ...
    if not(p='s') then begin

         {if   MessageDlgPos('Validez la maj de la ligne mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 10, 385)= idYes
          then begin
                   clientdataset_lignes_mandat.Post;
                   clientdataset_lignes_mandat.ApplyUpdates(-1) // Pour ne pas faire un ApplyUpdates sur le dbnavigator
               end
               else begin
                       clientdataset_lignes_mandat.CancelUpdates;abort; end;
                  end; }

       if   MessageDlgPos('Validez la maj de la ligne mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 400,570)= IDNo then
       begin clientdataset_lignes_mandat.CancelUpdates;abort; end;
    end;
end;

procedure Tf_dm.clientdataset_mandat_after_insert(DataSet: TDataSet);
begin
    f_dm.ClientDataSet_mandat.fieldByName('gestion').asstring:=f_principale.GESTION.Text;
    j:=1;
end;

procedure Tf_dm.clientdataset_mandat_after_post(DataSet: TDataSet);
begin
      sm.locate('gestion;mandat;chapitre;article',
                       vararrayof([clientdataset_mandat.FieldByName('gestion').asstring,
                       clientdataset_mandat.FieldByName('mandat').asinteger,
                       clientdataset_mandat.FieldByName('chapitre').asstring,
                       clientdataset_mandat.FieldByName('article').asstring]),[]);
      sm.refresh;f_mandat.dbgrid6.refresh;
end;

procedure Tf_dm.clientdataset_manda_before_post(DataSet: TDataSet);
begin
    f_dm.clientdataset_mandat.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
    f_dm.clientdataset_mandat.FieldByName('date_maj').asstring:=F_principale.dat.caption;
    { if   MessageDlgPos('Validez la maj du mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 10, 500)= idyes
      then begin
                 clientdataset_mandat.Post;
                 clientdataset_mandat.ApplyUpdates(-1) // Pour ne pas faire un ApplyUpdates sur le dbnavigator
               end
               else begin
                       clientdataset_mandat.CancelUpdates;abort;
                  end;  }

     if   MessageDlgPos('Validez la maj du mandat (post)',mtConfirmation, [mbYes, mbNo], 0, 5, 480)= idno
      then  begin    clientdataset_mandat.CancelUpdates;abort; end;

end;

procedure Tf_dm.client_lignes_mandat_after_del(DataSet: TDataSet);
var x:integer;
begin

   // r�organiser les lignes ...

  p:='s';
  if  ClientDataSet_lignes_mandat.recordcount>0
   then begin
           ClientDataSet_lignes_mandat.edit;
           ClientDataSet_lignes_mandat.Last;x:=ClientDataSet_lignes_mandat.RecordCount;
           while not  ClientDataSet_lignes_mandat.bof and (x>0) do begin
                   ClientDataSet_lignes_mandat.Edit;
                   ClientDataSet_lignes_mandat.fieldByName('ligne').asinteger:=x;x:=x-1;
                   ClientDataSet_lignes_mandat.Prior;
                 end;
   end;
   ClientDataSet_lignes_mandat.ApplyUpdates(-1);
   p:=' ';

end;



procedure Tf_dm.spost(DataSet: TDataSet);
var i:word;
begin
     ClientDataSet_fournisseur.FieldByName('utilisateur').asstring:=trim(form1.edit8.text);
     ClientDataSet_fournisseur.FieldByName('date_maj').asstring:=F_principale.dat.caption;
     // Pour les avis de virement ...
     s:='';
     for i:=1 to 80-length(trim(f_dm.ClientDataSet_fournisseur.fieldByName('nom').asstring)) do s:=s+' ';
     s:=s+trim(f_dm.ClientDataSet_fournisseur.fieldByName('nom').asstring);
     f_dm.ClientDataSet_fournisseur.fieldbyname('nom_avis_de_virement').asstring:=s;

   s:='';
   for i:=1 to 25-length(trim(f_dm.clientdataset_fournisseur.fieldByName('banque').asstring)) do s:=s+' ';
      s:=s+trim(f_dm.clientdataset_fournisseur.fieldByName('banque').asstring);
      f_dm.clientdataset_fournisseur.fieldbyname('banque').asstring:=s;

   s:='';
   for i:=1 to 25-length(trim(f_dm.clientdataset_fournisseur.fieldByName('compte').asstring)) do s:=s+' ';
      s:=s+trim(f_dm.clientdataset_fournisseur.fieldByName('compte').asstring);
      f_dm.clientdataset_fournisseur.fieldbyname('compte').asstring:=s;
end;





procedure Tf_dm.x_apres_insert_mission(DataSet: TDataSet);
begin
    f_dm.simpledataset_mission.fieldByName('gestion').asstring:=trim(f_principale.GESTION.Text);
end;

end.

