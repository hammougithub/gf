program Gf_dbexpress;

uses
  Forms,
  u_forme1 in 'u_forme1.pas' {Form1},
  u_dm in 'u_dm.pas' {f_dm: TDataModule},
  u_fournisseur in 'u_fournisseur.pas' {f_fournisseur},
  u_mandat in 'u_mandat.pas' {f_mandat},
  u_chapitre in 'u_chapitre.pas' {f_chapitre},
  u_edit_mandat in 'u_edit_mandat.pas' {f_edit_mandat},
  u_etat_mandat in 'u_etat_mandat.pas' {f_Etat_mandat},
  u_edit_avis in 'u_edit_avis.pas' {F_edit_avis},
  u_etat_avis in 'u_etat_avis.pas' {F_etat_avis},
  u_etat_avis1 in 'u_etat_avis1.pas' {F_etat_avis1},
  u_etat_credits in 'u_etat_credits.pas' {f_etat_credit},
  U_CREDIT in 'U_CREDIT.PAS' {F_credit},
  u_eng_previw in 'u_eng_previw.pas' {f_eng_preview},
  u_obs in 'u_obs.pas' {f_obs},
  u_administration in 'u_administration.pas' {f_administration},
  uu_etat_credits in 'uu_etat_credits.pas' {ff_etat_credits},
  uu_engagement in 'uu_engagement.pas' {ff_engagement},
  u_consul_mandat in 'u_consul_mandat.pas' {f_consul_mandat},
  u_etat_depense in 'u_etat_depense.pas' {F_etat_depense},
  u_type_depenses in 'u_type_depenses.pas' {f_type_depenses},
  u_consul_eng in 'u_consul_eng.pas' {f_consul_eng},
  u_tableau3 in 'u_tableau3.pas' {f_tableau3},
  u_tableau1 in 'u_tableau1.pas' {f_tableau1},
  u_journal in 'u_journal.pas' {f_journal},
  u_etat_journal in 'u_etat_journal.pas' {f_etat_journal},
  U_etat_avis_pl in 'U_etat_avis_pl.pas' {f_un_etat_avis_pl},
  u_etat_pl_avis_pl in 'u_etat_pl_avis_pl.pas' {f_etat_pl_avis_pl},
  u_etat_bc in 'u_etat_bc.pas' {f_etat_bc},
  u_bc in 'u_bc.pas' {f_bc},
  u_edit_bc in 'u_edit_bc.pas' {f_edit_bc},
  u_situation_credits_article_tw in 'u_situation_credits_article_tw.pas' {f_situation_credit_tw},
  u_situation_credits_article_tc in 'u_situation_credits_article_tc.pas' {f_situation_credit_tc},
  U_situation in 'U_situation.pas' {f_situation},
  u_bogs in 'u_bogs.pas' {f_BOGS},
  u_Nombre_mandat in 'u_Nombre_mandat.pas' {f_Nombre_mandat},
  u_sauv in 'u_sauv.pas' {F_sauv},
  u_etat in 'u_etat.pas' {f_etat},
  u_edit_etat_virement in 'u_edit_etat_virement.pas' {F_edit_etat_virement},
  u_etat_virement in 'u_etat_virement.pas' {f_etat_virement},
  u_apropos in 'u_apropos.pas' {F_apropos},
  u_reimpute in 'u_reimpute.pas' {f_reimpute},
  u_mission in 'u_mission.pas' {f_mission},
  u_bareme in 'u_bareme.pas' {f_bareme},
  u_edit_mission in 'u_edit_mission.pas' {F_edit_mission},
  u_etat_k in 'u_etat_k.pas' {f_etat_k},
  U_parametres_mission in 'U_parametres_mission.pas' {f_parametres_mission},
  U_sql in 'U_sql.pas' {f_sql},
  u_c in 'u_c.pas' {f_c},
  u_message in 'u_message.pas' {f_message},
  u_etat_excel in 'u_etat_excel.pas' {f_etat_excel},
  U_etat_con in 'U_etat_con.pas' {f_etat_con},
  u_etats in 'u_etats.pas' {f_etats},
  u_print_sql in 'u_print_sql.pas' {f_imp_sql},
  u_eng_prev1 in 'u_eng_prev1.pas' {f_eng_prev},
  u_edit_eng in 'u_edit_eng.pas' {f_edit_eng},
  u_dep_annul in 'u_dep_annul.pas' {f_dep_annul},
  u_situation_a3_6 in 'u_situation_a3_6.pas' {f_situation_a3_6},
  u_fb_to_sqlite in 'u_fb_to_sqlite.pas' {f_fb_to_sqlite},
  u_etat_bc_sans_avoir_23 in 'u_etat_bc_sans_avoir_23.pas' {f_etat_bc_sans_avoir_23},
  u_etat_bc_sans_avoir_10 in 'u_etat_bc_sans_avoir_10.pas' {f_etat_bc_sans_avoir_10},
  MyDBGrid in 'MyDBGrid.pas',
  SHDBGridU in 'SHDBGridU.pas',
  U_f_fichier_avis in 'U_f_fichier_avis.pas' {f_fichier_avis},
  u_parameters in 'u_parameters.pas' {f_parameters},
  u_donnees in 'u_donnees.pas' {F_donnees},
  Unit_function_and_procedure in 'Unit_function_and_procedure.pas',
  u_grade in 'u_grade.pas' {F_GRADE},
  u_fonction in 'u_fonction.pas' {f_fonction},
  u_agent in 'u_agent.pas' {f_agent},
  u_mandat_fournisseur in 'u_mandat_fournisseur.pas' {f_mandat_fournisseur},
  U_eng_four in 'U_eng_four.pas' {f_eng_four},
  u_version_gf in 'u_version_gf.pas' {f_nouvelle_version},
  u_etat_consommation in 'u_etat_consommation.pas' {f_etat_consommation},
  U_convention in 'U_convention.pas' {F_CONVENTION},
  f_mois in 'f_mois.pas' {f_m},
  U_FACTURE in 'U_FACTURE.pas' {f_facture},
  u_lieu in 'u_lieu.pas' {f_lieu},
  u_administration_pers in 'u_administration_pers.pas' {f_administration_pers},
  u_liste_facture in 'u_liste_facture.pas' {F_liste_facture},
  MAIN in 'MAIN.pas' {F_principale},
  u_consommation in 'u_consommation.pas' {f_consommation},
  u_service in 'u_service.pas' {f_service},
  u_designation in 'u_designation.pas' {f_des},
  U_Parameters_etat_xxx in 'U_Parameters_etat_xxx.pas' {f_Parameters_etat_xxx},
  u_parameters_etat_x in 'u_parameters_etat_x.pas' {f_parameters_etat_x},
  u_situation_a3_1 in 'u_situation_a3_1.pas' {f_situation_a3_1},
  U_situation_a3_2 in 'U_situation_a3_2.pas' {f_situation_a3_2},
  U_situation_a3_3 in 'U_situation_a3_3.pas' {f_situation_a3_3},
  u_situation_a3_4 in 'u_situation_a3_4.pas' {f_situation_a3_4},
  u_situation_a3_5 in 'u_situation_a3_5.pas' {f_situation_a3_5},
  u_etats_consommation in 'u_etats_consommation.pas' {f_etats_consommation},
  u_article_etat_par_bureau in 'u_article_etat_par_bureau.pas' {f_article_etat_par_bureau},
  U_article_etat_tout_agent in 'U_article_etat_tout_agent.pas' {f_article_etat_tout_agent},
  u_article_etat_par_un_agent in 'u_article_etat_par_un_agent.pas' {f_article_etat_par_un_agent},
  u_forme1_ar in 'u_forme1_ar.pas' {FORMe1_ar},
  u_verif_des in 'u_verif_des.pas' {f_verif_des},
  u_principale_ar in 'u_principale_ar.pas' {f_principale_ar},
  u_mail in 'u_mail.pas' {f_mail},
  Unit_qr2fr in 'Unit_qr2fr.pas' {f_qr2fr},
  u_fb_sqlite in 'u_fb_sqlite.pas' {f_fb_sqlite};

// ConverterQR2FR in 'C:\Program Files (x86)\FastReport 6 VCL Enterprise\LibD22\ConverterQR2FR.pas',
 // ConverterQR2FR_5 in 'c:\Program Files (x86)\FastReports\LibD22x64\ConverterQR2FR_5.pas',

//
//   ConverterQR2FR_5 in 'ConverterQR2FR_5.pas';
{$R *.RES}

begin
  Application.Initialize;


  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tf_dm, f_dm);
  Application.CreateForm(Tf_fb_sqlite, f_fb_sqlite);
  form1.show;
  Application.CreateForm(Tf_situation_a3_2, f_situation_a3_2);
  Application.CreateForm(Tf_situation_a3_3, f_situation_a3_3);
  Application.CreateForm(Tf_situation_a3_4, f_situation_a3_4);
  Application.CreateForm(Tf_situation_a3_5, f_situation_a3_5);
  Application.CreateForm(Tf_etats_consommation, f_etats_consommation);
  Application.CreateForm(Tf_article_etat_par_bureau, f_article_etat_par_bureau);
  Application.CreateForm(Tf_article_etat_tout_agent, f_article_etat_tout_agent);
  Application.CreateForm(Tf_article_etat_par_un_agent, f_article_etat_par_un_agent);
  Application.CreateForm(TFORMe1_ar, FORMe1_ar);
  Application.CreateForm(Tf_verif_des, f_verif_des);
  Application.CreateForm(Tf_principale_ar, f_principale_ar);
  Application.CreateForm(Tf_mail, f_mail);
  Application.CreateForm(Tf_qr2fr, f_qr2fr);


  Application.CreateForm(TF_liste_facture, F_liste_facture);
  Application.CreateForm(TF_principale, F_principale);
  Application.CreateForm(Tf_consommation, f_consommation);
  Application.CreateForm(Tf_service, f_service);
  Application.CreateForm(Tf_des, f_des);

  //  A lire
  // l'application peut �tre ferm�e au niveau de Form1 c'est pour �a qu'il ya form1.show
  Application.CreateForm(Tf_Parameters_etat_xxx, f_Parameters_etat_xxx);
  Application.CreateForm(Tf_parameters_etat_x, f_parameters_etat_x);
  Application.CreateForm(Tf_situation_a3_1, f_situation_a3_1);
  Application.CreateForm(Tf_situation_a3_6, f_situation_a3_6);
  // commenter la ligne pr�c�dente  si ...

 Application.CreateForm(Tf_lieu, f_lieu);
   Application.CreateForm(Tf_administration_pers, f_administration_pers);
  Application.CreateForm(TF_CONVENTION, F_CONVENTION);
  Application.CreateForm(Tf_m, f_m);
  Application.CreateForm(Tf_facture, f_facture);
  Application.CreateForm(TF_principale, F_principale);
           Application.CreateForm(Tf_agent, f_agent);
           Application.CreateForm(Tf_eng_four, f_eng_four);
           Application.CreateForm(Tf_nouvelle_version, f_nouvelle_version);
           Application.CreateForm(Tf_etat_consommation, f_etat_consommation);
           Application.CreateForm(Tf_mandat_fournisseur, f_mandat_fournisseur);
           Application.CreateForm(Tf_fb_to_sqlite, f_fb_to_sqlite);
           Application.CreateForm(TF_GRADE, F_GRADE);
           Application.CreateForm(Tf_fonction, f_fonction);
            Application.CreateForm(Tf_etat_bc_sans_avoir_23, f_etat_bc_sans_avoir_23);
            Application.CreateForm(Tf_etat_bc_sans_avoir_10, f_etat_bc_sans_avoir_10);
           Application.CreateForm(TF_principale, F_principale);
            Application.CreateForm(Tf_fichier_avis, f_fichier_avis);
            Application.CreateForm(Tf_parameters, f_parameters);
            Application.CreateForm(TF_donnees, F_donnees);
          Application.CreateForm(Tf_etats, f_etats);
              Application.CreateForm(Tf_imp_sql, f_imp_sql);
            Application.CreateForm(Tf_eng_prev, f_eng_prev);
            Application.CreateForm(Tf_edit_eng, f_edit_eng);
            Application.CreateForm(Tf_dep_annul, f_dep_annul);

         Application.CreateForm(Tf_etat_con, f_etat_con);
   Application.CreateForm(Tf_reimpute, f_reimpute);
  Application.CreateForm(Tf_mission, f_mission);
  Application.CreateForm(Tf_bareme, f_bareme);
  Application.CreateForm(TF_edit_mission, F_edit_mission);
  Application.CreateForm(Tf_etat_k, f_etat_k);
  Application.CreateForm(Tf_parametres_mission, f_parametres_mission);

  Application.CreateForm(Tf_sql, f_sql);
 Application.CreateForm(Tf_c, f_c);
 Application.CreateForm(Tf_message, f_message);
  Application.CreateForm(Tf_etat_excel, f_etat_excel);

  Application.CreateForm(Tf_apropos, f_apropos);
  Application.CreateForm(Tf_etat, f_etat);
  Application.CreateForm(TF_edit_etat_virement, F_edit_etat_virement);
  Application.CreateForm(Tf_etat_virement, f_etat_virement);
  Application.CreateForm(Tf_fournisseur, f_fournisseur);
  Application.CreateForm(Tf_mandat, f_mandat);
 // RescaleForm(F_mandat);
  Application.CreateForm(Tf_chapitre, f_chapitre);
  Application.CreateForm(Tf_edit_mandat, f_edit_mandat);
  Application.CreateForm(Tf_Etat_mandat, f_Etat_mandat);
  Application.CreateForm(TF_edit_avis, F_edit_avis);
  Application.CreateForm(TF_etat_avis, F_etat_avis);
  Application.CreateForm(TF_etat_avis1, F_etat_avis1);
  Application.CreateForm(Tf_etat_credit, f_etat_credit);
  Application.CreateForm(TF_credit, F_credit);

  Application.CreateForm(Tf_eng_preview, f_eng_preview);
  Application.CreateForm(Tf_obs, f_obs);
  Application.CreateForm(Tf_administration, f_administration);
  Application.CreateForm(Tff_etat_credits, ff_etat_credits);
  Application.CreateForm(Tff_engagement, ff_engagement);
  // RescaleForm(F_mandat);

 //Application.CreateForm(Tf_consul_mandat, f_consul_mandat);
 // La ligne qui pr�cede est dans unit u_forme1
  Application.CreateForm(TF_etat_depense, F_etat_depense);
  Application.CreateForm(Tf_type_depenses, f_type_depenses);
  Application.CreateForm(Tf_consul_eng, f_consul_eng);
  Application.CreateForm(Tf_tableau3, f_tableau3);
  Application.CreateForm(Tf_tableau1, f_tableau1);
  Application.CreateForm(Tf_journal, f_journal);
  Application.CreateForm(Tf_etat_journal, f_etat_journal);
  Application.CreateForm(Tf_un_etat_avis_pl, f_un_etat_avis_pl);
  Application.CreateForm(Tf_etat_pl_avis_pl, f_etat_pl_avis_pl);
  Application.CreateForm(Tf_etat_bc, f_etat_bc);
  Application.CreateForm(Tf_bc, f_bc);
  Application.CreateForm(Tf_edit_bc, f_edit_bc);
  Application.CreateForm(Tf_situation_credit_tw, f_situation_credit_tw);
  //Application.CreateForm(Tf_index, f_index);
  Application.CreateForm(Tf_situation_credit_tc, f_situation_credit_tc);
  Application.CreateForm(Tf_situation, f_situation);
  Application.CreateForm(Tf_BOGS, f_BOGS);
  Application.CreateForm(Tf_Nombre_mandat, f_Nombre_mandat);
  Application.CreateForm(TF_sauv, F_sauv);
    

  Application.Run;
  //end  else application.Terminate
  end.
