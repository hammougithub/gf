unit u_etat_consommation1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  QRCtrls, QuickRpt, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient;

type
  Tf_etat_consommation = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    ldate: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRBand4: TQRBand;
    QRLabel37: TQRLabel;
    qr1xx: TQRLabel;
    qrltep: TQRLabel;
    qrltem: TQRLabel;
    qrltdd: TQRLabel;
    qrltme: TQRLabel;
    qrlmdat: TQRLabel;
    qrlsolde22: TQRLabel;
    qrltaux22: TQRLabel;
    qrltdm: TQRLabel;
    QRShape1: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel39: TQRLabel;
    q_cre_affec: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_mde: TSQLQuery;
    q_mde_eco: TSQLQuery;
    q_mdm: TSQLQuery;
    q_enplus: TSQLQuery;
    q_reimp: TSQLQuery;
    q_annul: TSQLQuery;
    q_annul_ant: TSQLQuery;
    sql_chap: TSQLQuery;
    ds1: TDataSource;
    c1: TClientDataSet;
    p1: TDataSetProvider;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qr1: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    enplus: TQRLabel;
    enmoins: TQRLabel;
    dot_diver: TQRLabel;
    mde: TQRLabel;
    qrltot_dep: TQRLabel;
    solde2: TQRLabel;
    qtaux2: TQRLabel;
    QRLabel45: TQRLabel;
    SQLQuery1: TSQLQuery;
    q_annul_mois_ant_structure: TSQLQuery;
    q_annul_mois: TSQLQuery;
    q_reimp_du_mois: TSQLQuery;
    q_reimp_ant: TSQLQuery;
    SQLQuery2: TSQLQuery;
    qrmda: TQRLabel;
    q_mda: TSQLQuery;
    q_mdms: TSQLQuery;
    qrmdm: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    qm: TQRLabel;
    QRBand3: TQRBand;
    procedure BEFORE1(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure before2(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure BEFORE6NAT(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure befort7(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etat_consommation: Tf_etat_consommation;
  s,s1:string;
  mdm,x,tca,tep,tem,tdd,tmde,tmdm,annul,annul_ant,mda_nat,mda_tot, mdm_nat,mdm_tot,REIMP,tot_dep,tot_dep_nat,tot_dep_tot:real;
  cre_tot,cre_tot_nat,taux1,taux2,tep_nat,tem_nat,tmdm_nat,tmde_nat,dot_rev,dot_rev_nat,annul1,annul2,mda,REIMP_ant:real;
implementation
 uses MAIN, uu_etat_credits, u_dm, u_etats,Unit_function_and_procedure;
{$R *.dfm}

procedure Tf_etat_consommation.BEFORE1(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      cre_tot:=0.0;

        q_cre_affec.close;
        q_cre_affec.Params[0].AsString:=c1.fieldByName('chapitre').asstring;
        q_cre_affec.Params[1].Asstring:=f_principale.gestion.text;
        q_cre_affec.open;
        s:='              ';
        if  q_cre_affec.Fields[0].asstring<>'' then
         begin
           tca:=tca+q_cre_affec.Fields[0].value;
           cre_tot:=cre_tot+q_cre_affec.Fields[0].value;
           cre_tot_nat:=cre_tot_nat+q_cre_affec.Fields[0].value;
          s:=formater_float(q_cre_affec.Fields[0].value);
         end;
        qr1.caption:=s+' ';


         // A corriger
        x:=0 ;
        // les engagements en économie ne sont pas nécessairement des crédits en plus ...


        s:='            ';
       // if f_etats.cb1.Checked then begin
            q_enplus.close;
            q_enplus.Params[0].AsString:=c1.fieldByName('chapitre').asstring;
            q_enplus.Params[1].Asstring:=f_principale.gestion.text;
            q_enplus.open;
            s:='            ';
            if  q_enplus.Fields[0].asstring<>'' then
                  begin
                    tep:=tep+q_enplus.Fields[0].value;
                    cre_tot:=cre_tot+q_enplus.Fields[0].value;
                    tep_nat:=tep_nat+q_enplus.Fields[0].value;
                    s:=formater_float(q_enplus.Fields[0].value);
                  end;
             enplus.caption:=s;

             q_enmoins.close;
             q_enmoins.Params[0].AsString:=c1.fieldByName('chapitre').asstring;
             q_enmoins.Params[1].Asstring:=f_principale.gestion.text;
             q_enmoins.open;
             s:='            ';
             if  q_enmoins.Fields[0].asstring<>'' then
                begin
                  tem:=tem+q_enmoins.Fields[0].value;
                  tem_nat:=tem_nat+q_enmoins.Fields[0].value;
                  cre_tot:=cre_tot-q_enmoins.Fields[0].value;
                  s:=formater_float(q_enmoins.Fields[0].value);
               end;
             enmoins.caption:=s+' ';

        dot_rev_nat:=dot_rev_nat+cre_tot;
        dot_rev:=dot_rev+cre_tot;

        s:='            ';
        if cre_tot<>0 then s:=formater_float(cre_tot);
        dot_diver.caption:=s+' ';


        x:=0;
        q_mde_eco.close;
        q_mde_eco.Params[0].AsString:=c1.fieldByName('chapitre').asstring;
        q_mde_eco.Params[1].Asstring:=f_principale.gestion.text;
        q_mde_eco.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
        q_mde_eco.open;
        if  q_mde_eco.Fields[0].asstring<>'' then x:=x-q_mde_eco.Fields[0].value;

        q_mde.close;
        q_mde.Params[0].AsString:=c1.fieldByName('chapitre').asstring;
        q_mde.Params[1].Asstring:=f_principale.gestion.text;
        q_mde.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
        q_mde.open;
        if  q_mde.Fields[0].asstring<>'' then x:=x+q_mde.Fields[0].value;
        tmde:=tmde+x; tmde_nat:=tmde_nat+x;
        s:='            ';

        if  x<>0 then s:=formater_float(x);

         mde.caption:=s+' ';


       // COLONNE DEPENSES ANTERIEURS

         // depenses annulees antérieures
           annul_ant:=0.0; q_annul_ant.close;
           q_annul_ant.Params[0].AsString:=f_principale.gestion.text;
           q_annul_ant.Params[1].Asstring:=c1.fieldByName('chapitre').asstring;
           q_annul_ant.Params[2].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7));
           q_annul_ant.open;

           if  q_annul_ant.Fields[0].asstring<>'' then
               annul_ant:=q_annul_ant.Fields[0].value;

          // REIMPUTATIONS ANTERIEURES
                REIMP_ant:=0.0; q_reimp_ant.close;
                q_reimp_ant.Params[0].AsString:=f_principale.gestion.text;
                q_reimp_ant.Params[1].Asstring:=c1.fieldByName('chapitre').asstring;
                q_reimp_ant.Params[2].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7));

                q_reimp_ant.open;
                if  q_reimp_ant.Fields[0].asstring<>'' then
                    REIMP_ant:=q_REIMP_ant.Fields[0].value;

           // MANDATS ANTERIEURS

           mda:=0; q_mda.close;
           q_mda.Params[0].AsString:=f_principale.gestion.text;
           q_mda.Params[1].Asstring:=c1.fieldByName('chapitre').asstring;
           q_mda.Params[2].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7));
           q_mda.open;
           if  q_mda.Fields[0].asstring<>'' then
               mda:=q_mda.Fields[0].value;

           // mandats et reimputations antérieures
           // METTRE A JOUR la valeur des mandats antérieurs avec les reimputations antérieures
           //  METTRE A JOUR la valeur des mandats antérieurs avec les dépenses annulées
           mda:=mda+REIMP_ant-annul_ant;
           mda_nat:=mda_nat+mda;
           mda_tot:=mda_tot+mda;
           s:='            ';
           if mda<>0.0 then  str(mda:12:2,s);
           qrmda.caption:=s+' ';



 // FIN COLONNE DEPENSES ANTERIEURS

 // COLONNE DEPENSES DU MOIS
            // depenses annulees du mois
           annul:=0.0; q_annul_mois.close;
           q_annul_mois.Params[0].AsString:=f_principale.gestion.text;
           q_annul_mois.Params[1].Asstring:=c1.fieldByName('chapitre').asstring;
           q_annul_mois.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
           q_annul_mois.Params[3].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7));
           q_annul_mois.open;
           if  q_annul_mois.Fields[0].asstring<>'' then
               annul:=q_annul_mois.Fields[0].value;
           // REIMPUTATIONS DU MOIS
           REIMP:=0.0; q_reimp_du_mois.close;
           q_reimp_du_mois.Params[0].AsString:=f_principale.gestion.text;
           q_reimp_du_mois.Params[1].Asstring:=c1.fieldByName('chapitre').asstring;
           q_reimp_du_mois.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
           q_reimp_du_mois.Params[3].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7));
           q_reimp_du_mois.open;
           if  q_reimp_du_mois.Fields[0].asstring<>'' then
               REIMP:=q_REIMP_du_mois.Fields[0].value;
         // MANDATS DU MOIS

           mdm:=0.0; q_mdms.close;
           q_mdms.Params[0].AsString:=f_principale.gestion.text;
           q_mdms.Params[1].Asstring:=C1.fieldByName('chapitre').asstring;
           q_mdms.Params[3].Asdatetime:=strtodate(f_etats.xdate.text);
           q_mdms.Params[4].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7));
           q_mdms.open;
           if  q_mdms.Fields[0].asstring<>'' then
               mdm:=q_mdms.Fields[0].value;
            // METTRE A JOUR la valeur des mandats du mois  avec les reimputations du mois
           //  METTRE A JOUR la valeur des mandats du mois  avec les dépenses annulées du mois
           mdm:=mdm+REIMP-annul;
           mdm_nat:=mdm_nat+mdm;
           mdm_tot:=mdm_tot+mdm;

           s:='            ';
           if mdm<>0.0 then  str(mdm:12:2,s);
           qrmdm.caption:=s+' ';

// fin COLONNE DEPENSES DU MOIS





 // COLONNE  TOTAL DEPENSES

         // Reimputations
        q_reimp.close;
        q_reimp.Params[0].AsString:=c1.fieldByName('chapitre').asstring;
        q_reimp.Params[1].Asstring:=f_principale.gestion.text;
        q_reimp.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
        q_reimp.open;
        REIMP:=0;
        if  q_reimp.Fields[0].asstring<>'' then reimp:=q_reimp.Fields[0].value;



         // depenses annulees
           annul:=0.0; q_annul.close;
           q_annul.Params[0].AsString:=f_principale.gestion.text;
           q_annul.Params[1].Asstring:=c1.fieldByName('chapitre').asstring;
           q_annul.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
           q_annul.open;
           if  q_annul.Fields[0].asstring<>'' then annul:=q_annul.Fields[0].value;


       // tout les MANDATS
        q_mdm.close;
        q_mdm.Params[0].AsString:=c1.fieldByName('chapitre').asstring;
        q_mdm.Params[1].Asstring:=f_principale.gestion.text;
        q_mdm.Params[2].Asdatetime:= strtodate(f_etats.xdate.text);
        q_mdm.open;
        s:='            ';
        s1:='     ';
        tot_dep:=0.0 ;
        if  q_mdm.Fields[0].asstring<>'' then  tot_dep:=q_mdm.Fields[0].value;
            // METTRE A JOUR la valeur des mandats  avec les reimputations
           //  METTRE A JOUR la valeur des mandats  avec les dépenses annulées
           tot_dep:=tot_dep+REIMP-annul;
           tot_dep_nat:=tot_dep_nat+tot_dep;
           tot_dep_tot:=tot_dep_tot+tot_dep;

           s:='            ';
           if tot_dep<>0.0 then  str(tot_dep:12:2,s);
           qrltot_dep.caption:=s+' ';

             s1:='     ';

            if cre_tot<>0.0 then begin
               taux2:=(tot_dep/cre_tot*100);
               str(taux2:5:2,s1);
                                 end;
           qtaux2.caption:=s1+' ';

        s:='            ';
        if (cre_tot<>0) or (tot_dep<>0) then s:=formater_float(cre_tot-tot_dep);
        solde2.caption:=s+' ';


end;

procedure Tf_etat_consommation.before2(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRDBText2.Width:=200;
end;

procedure Tf_etat_consommation.BEFORE6NAT(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  q1.Caption:='   T O T A L '+ c1.fieldByName('typ').asstring;

   s:='            ';if cre_tot_nat<>0 then s:=formater_float(cre_tot_nat);qrlca1.Caption:=s;
   s:='            ';if tep_nat<>0 then s:=formater_float(tep_nat);qrlenplus.Caption:=s;
   s:='            ';if tem_nat<>0 then s:=formater_float(tem_nat);qrlenmoins.Caption:=s;
   s:='            ';if dot_rev_nat<>0 then s:=formater_float(dot_rev_nat);qrldd.Caption:=s;
   s:='            ';if tmde_nat<>0 then s:=formater_float(tmde_nat);qrlmde.caption:=s+' ';
   s:='            ';if mda_nat<>0 then s:=formater_float(mda_nat);qrlmda.caption:=s+' ';
   s:='            ';if mdm_nat<>0 then s:=formater_float(mdm_nat);qrlmdm.caption:=s+' ';
   s:='            ';if tot_dep_nat<>0 then s:=formater_float(tot_dep_nat);qtotd.caption:=s+' ';
   s:='            ';

   if (cre_tot_nat<>0) or (tot_dep_nat<>0) then s:=formater_float(cre_tot_nat-tot_dep_nat);qrlsolde2.caption:=s+' ';
   s1:='     ';
   if cre_tot_nat<>0.0 then begin
               taux2:=(tot_dep_nat/cre_tot_nat*100);
               str(taux2:5:2,s1);
                                 end;
   qrltaux2.caption:=s1+' ';

  tep_nat:=0.0;tem_nat:=0.0;mdm_nat:=0.0;tmde_nat:=0.0;cre_tot_nat:=0.0;dot_rev_nat:=0.0;
  mda_nat:=0.0; tot_dep_nat:=0.0;
end;

procedure Tf_etat_consommation.befort7(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   s:='            ';if cre_tot<>0 then s:=formater_float(cre_tot);qr1xx.Caption:=s;
   s:='            ';if tep<>0 then s:=formater_float(tep);qrltep.Caption:=s;
   s:='            ';if tem<>0 then s:=formater_float(tem);qrltem.Caption:=s;
   s:='            ';if dot_rev<>0 then s:=formater_float(dot_rev);qrltdd.Caption:=s;
   s:='            ';if tmde<>0 then s:=formater_float(tmde);qrltme.caption:=s+' ';
   s:='            ';if mda_tot<>0 then s:=formater_float(mda_tot);qrlmdat.caption:=s+' ';
   s:='            ';if mdm_tot<>0 then s:=formater_float(mdm_tot);qm.caption:=s+' ';
   s:='            ';if tot_dep_tot<>0 then s:=formater_float(tot_dep_tot);qrltdm.caption:=s+' ';
   s:='            ';

   if (cre_tot<>0) or (tot_dep_tot<>0) then s:=formater_float(cre_tot-tot_dep_tot);qrlsolde22.caption:=s+' ';
   s1:='     ';
   if cre_tot<>0.0 then begin
               taux2:=(tot_dep_tot/cre_tot*100);
               str(taux2:5:2,s1);
                                 end;
   qrltaux22.caption:=s1+' ';

  cre_tot:=0.0;tep:=0.0;tem:=0.0; dot_rev:=0.0;    tmde:=0.0;mda_tot:=0.0;mdm_tot:=0.0;tot_dep_tot:=0;
  tep_nat:=0.0;tem_nat:=0.0;mdm_nat:=0.0;tmde_nat:=0.0;cre_tot_nat:=0.0;dot_rev_nat:=0.0;
  mda_nat:=0.0; tot_dep_nat:=0.0;
end;

end.
