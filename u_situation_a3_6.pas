unit u_situation_a3_6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  Tf_situation_a3_6 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    DEPENSES: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    ANTERIEURS: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    qrltca1: TQRLabel;
    QRLenplus1: TQRLabel;
    QRLenmoins1: TQRLabel;
    QRLdr1: TQRLabel;
    QRmda1: TQRLabel;
    QRmdm1: TQRLabel;
    qrannul1: TQRLabel;
    QRLtd1: TQRLabel;
    QRLdrt1: TQRLabel;
    QRL471: TQRLabel;
    QRL031: TQRLabel;
    QRL301: TQRLabel;
    QRL111: TQRLabel;
    QRL331: TQRLabel;
    QRLs1: TQRLabel;
    QRLt1: TQRLabel;
    QRRE1: TQRLabel;
    QRBand4: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qrlca: TQRLabel;
    qrlenplus: TQRLabel;
    qrlenmoins: TQRLabel;
    qrldr: TQRLabel;
    qrmda: TQRLabel;
    qrmdm: TQRLabel;
    qrannul: TQRLabel;
    qrltd: TQRLabel;
    QRLdrt: TQRLabel;
    QRL47: TQRLabel;
    QRL03: TQRLabel;
    QRL30: TQRLabel;
    QRL11: TQRLabel;
    QRL33: TQRLabel;
    QRLS: TQRLabel;
    QRLT: TQRLabel;
    QRRE: TQRLabel;
    QRBand5: TQRBand;
    QRLabel43: TQRLabel;
    qrltca2: TQRLabel;
    qrlenplus2: TQRLabel;
    QRLenmoins2: TQRLabel;
    QRLdr2: TQRLabel;
    QRmda2: TQRLabel;
    QRmdm2: TQRLabel;
    qrannul2: TQRLabel;
    QRLtd2: TQRLabel;
    QRLdrt2: TQRLabel;
    QRL472: TQRLabel;
    QRL032: TQRLabel;
    QRL302: TQRLabel;
    QRL112: TQRLabel;
    QRL332: TQRLabel;
    QRLs2: TQRLabel;
    QRLT2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRRe2: TQRLabel;
    q_mdm: TSQLQuery;
    q_reimp: TSQLQuery;
    q_cre_affec: TSQLQuery;
    q_enplus: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_mda: TSQLQuery;
    q_mdms: TSQLQuery;
    q_reimp_ant: TSQLQuery;
    q_reimp_du_mois: TSQLQuery;
    q1: TSQLQuery;
    q_annul_ant: TSQLQuery;
    QRDBText1: TQRDBText;
    QRBand6: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    ladate: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    q_annul_mois: TSQLQuery;
    q_annul_mois_ant_structure: TSQLQuery;
    procedure initier(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure avant_imp(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure total(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure totalg(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure befor_print_band2(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_situation_a3_6: Tf_situation_a3_6;s,s1:string;
   tca,tca1,tca2,tem,tem1,tep,tep1,mdrt,mdrt1,mdrt2,m47,m471,m472,REIMP,REIMP1,REIMP2,REIMP_ant:real;
   mto,mto1,mto2,m03,m031,m032,m30,m301,m302,m33,m331,m332,m11,m111,m112:real;
   tcax,taux,annul,annul1,annul2,annul_ant,cre_tot,taux1,taux2,x:real;
   mda,mda1,mda2,mdm,mdm1,mdm2:real;
implementation

uses MAIN, u_dm, u_etats,Unit_function_and_procedure, u_parameters_etat_x;

{$R *.dfm}
procedure Tf_situation_a3_6.avant_imp(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        tca:=0;
        s:='            '; q_cre_affec.close;
        q_cre_affec.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_cre_affec.Params[1].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
        q_cre_affec.Params[2].Asstring:=f_principale.gestion.text;
        q_cre_affec.open;
        if  q_cre_affec.Fields[0].asstring<>'' then
         begin
           tca:=q_cre_affec.Fields[0].value;
           tca1:=tca1+q_cre_affec.Fields[0].value;
           tca2:=tca2+q_cre_affec.Fields[0].value;
           formater_float(q_cre_affec.Fields[0].value);
           s:=formater_float(q_cre_affec.Fields[0].value);
         end;
        qrlca.caption:=s+' ';

        s:='            ';
        if f_etats.cb1.Checked then begin
        q_enplus.close;
        q_enplus.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_enplus.Params[1].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
        q_enplus.Params[2].Asstring:=f_principale.gestion.text;
        q_enplus.open;
        s:='            ';
        if  q_enplus.Fields[0].asstring<>'' then
          begin
            tca:=tca+q_enplus.Fields[0].value;
            tep:=tep+q_enplus.Fields[0].value;
            tep1:=tep1+q_enplus.Fields[0].value;
            cre_tot:=cre_tot+q_enplus.Fields[0].value;
            s:=formater_float(q_enplus.Fields[0].value);
          end;
        qrlenplus.caption:=s+' ';


        q_enmoins.close;
        q_enmoins.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_enmoins.Params[1].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
        q_enmoins.Params[2].Asstring:=f_principale.gestion.text;
        q_enmoins.open;
        s:='            ';
        if  q_enmoins.Fields[0].asstring<>'' then
          begin
             tca:=tca-q_enmoins.Fields[0].value;
             tem:=tem+q_enmoins.Fields[0].value;
             tem1:=tem1+q_enmoins.Fields[0].value;
             cre_tot:=cre_tot-q_enmoins.Fields[0].value;
             s:=formater_float(q_enmoins.Fields[0].value);
           end;
             qrlenmoins.caption:=s+' ';

        end;

         s:='            ';
        if tca<>0.0 then  s:=formater_float(tca);
        qrldr.caption:=s+' ';




        // depenses annulees antérieures
           annul_ant:=0.0; q_annul_ant.close;
           q_annul_ant.Params[0].AsString:=f_principale.gestion.text;
           q_annul_ant.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_annul_ant.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_annul_ant.Params[3].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7),FormatSettings1);
           q_annul_ant.open;

           if  q_annul_ant.Fields[0].asstring<>'' then
               annul_ant:=q_annul_ant.Fields[0].value;
          // annul1_ant:=annul1_ant+annul_ant;
         //  annul2_ant:=annul2_ant+annul_ant;



           // depenses annulees
           annul:=0.0; q_annul_mois.close;
           q_annul_mois.Params[0].AsString:=f_principale.gestion.text;
           q_annul_mois.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_annul_mois.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_annul_mois.Params[3].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_annul_mois.Params[4].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7),FormatSettings1);
           q_annul_mois.open;
           if  q_annul_mois.Fields[0].asstring<>'' then
               annul:=q_annul_mois.Fields[0].value;
           annul1:=annul1+annul;
           annul2:=annul2+annul;

           s:='            ';
           if annul<>0.0 then  s:=formater_float(annul);
           qrannul.caption:=s+' ';



        // MANDATS ANTERIEURS

          // REIMPUTATIONS ANTERIEURES
                REIMP_ant:=0.0; q_reimp_ant.close;
                q_reimp_ant.Params[0].AsString:=f_principale.gestion.text;
                q_reimp_ant.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                q_reimp_ant.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                q_reimp_ant.Params[3].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7),FormatSettings1);

                q_reimp_ant.open;
                if  q_reimp_ant.Fields[0].asstring<>'' then
                    REIMP_ant:=q_REIMP_ant.Fields[0].value;

           mda:=0; q_mda.close;
           q_mda.Params[0].AsString:=f_principale.gestion.text;
           q_mda.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mda.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;;
           q_mda.Params[3].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7),FormatSettings1);
           q_mda.open;
           if  q_mda.Fields[0].asstring<>'' then
               mda:=q_mda.Fields[0].value;

           // mandats et reimputations antérieures
           // METTRE A JOUR la valeur des mandats antérieurs avec les reimputations antérieures
           //  METTRE A JOUR la valeur des mandats antérieurs avec les dépenses annulées
           mda:=mda+REIMP_ant-annul_ant;
           s:='            ';
           if mda<>0.0 then  s:=formater_float(mda);
           qrmda.caption:=s+' ';


           mda1:=mda1+mda;
           mda2:=mda2+mda;





          // MANDATS DU MOIS

           mdm:=0.0; q_mdms.close;
           q_mdms.Params[0].AsString:=f_principale.gestion.text;
           q_mdms.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdms.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdms.Params[3].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_mdms.Params[4].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7),FormatSettings1);
           q_mdms.open;
           if  q_mdms.Fields[0].asstring<>'' then
               mdm:=q_mdms.Fields[0].value;
           mdm1:=mdm1+mdm;
           mdm2:=mdm2+mdm;

           s:='            ';
           if mdm<>0.0 then  s:=formater_float(mdm);
           qrmdm.caption:=s+' ';






           // REIMPUTATIONS DU MOIS


         REIMP:=0.0; q_reimp_du_mois.close;
           q_reimp_du_mois.Params[0].AsString:=f_principale.gestion.text;
           q_reimp_du_mois.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_reimp_du_mois.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_reimp_du_mois.Params[3].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_reimp_du_mois.Params[4].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7),FormatSettings1);
           q_reimp_du_mois.open;
           if  q_reimp_du_mois.Fields[0].asstring<>'' then
               REIMP:=q_REIMP_du_mois.Fields[0].value;
           REIMP1:=REIMP1+reimp;
           REIMP2:=REIMP2+reimp;

           s:='            ';
           if REIMP<>0.0 then  s:=formater_float(REIMP);
           qrre.caption:=s+' ';


           s:='            ';
           if mdm+mda+reimp-annul<>0.0 then  s:=formater_float(mdm+mda+reimp-annul);
           qrltd.caption:=s+' ';

           // les mandats pAr structure ////////////
                 // MANDATS DRT (antérieures et du mois)
                 // REIMPUTATION DRT (antérieures et du mois)
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='1';

                    q_reimp.Params[3].AsString:=f_principale.gestion.text;
                    q_reimp.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;

                    // mandats annulées drt

                    q_annul_mois_ant_structure.close;
                    q_annul_mois_ant_structure.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_annul_mois_ant_structure.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_annul_mois_ant_structure.Params[2].AsString:='1';

                    q_annul_mois_ant_structure.Params[3].AsString:=f_principale.gestion.text;
                    q_annul_mois_ant_structure.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_annul_mois_ant_structure.open;
                    if  q_annul_mois_ant_structure.Fields[0].asstring<>'' then
                         tcax:=tcax-q_annul_mois_ant_structure.Fields[0].value;


           q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='1';

           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_mdm.open;
          if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           mdrt:=tcax;
           mdrt1:=mdrt1+tcax;
           mdrt2:=mdrt2+tcax;
           s:='            ';

           if mdrt<>0.0 then  s:=formater_float(mdrt);
           qrldrt.caption:=s+' ';

           // MANDATS TW 47
              // REIMPUTATION TW 47
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='2';

                    q_reimp.Params[3].AsString:=f_principale.gestion.text;
                    q_reimp.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;

            // mandats annulées TW 47

                    q_annul_mois_ant_structure.close;
                    q_annul_mois_ant_structure.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_annul_mois_ant_structure.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_annul_mois_ant_structure.Params[2].AsString:='2';

                    q_annul_mois_ant_structure.Params[3].AsString:=f_principale.gestion.text;
                    q_annul_mois_ant_structure.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_annul_mois_ant_structure.open;
                    if  q_annul_mois_ant_structure.Fields[0].asstring<>'' then
                         tcax:=tcax-q_annul_mois_ant_structure.Fields[0].value;


           q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='2';

           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m47:=tcax;
           m471:=m471+tcax;
           m472:=m472+tcax;
           s:='            ';

           if m47<>0.0 then  s:=formater_float(m47);
           qrl47.caption:=s+' ';

         // MANDATS TW 03
             // REIMPUTATION TW 03
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='3';

                    q_reimp.Params[3].AsString:=f_principale.gestion.text;
                    q_reimp.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;

           // mandats annulées TW 03

                    q_annul_mois_ant_structure.close;
                    q_annul_mois_ant_structure.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_annul_mois_ant_structure.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_annul_mois_ant_structure.Params[2].AsString:='3';

                    q_annul_mois_ant_structure.Params[3].AsString:=f_principale.gestion.text;
                    q_annul_mois_ant_structure.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_annul_mois_ant_structure.open;
                    if  q_annul_mois_ant_structure.Fields[0].asstring<>'' then
                         tcax:=tcax-q_annul_mois_ant_structure.Fields[0].value;

           q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='3';

           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m03:=tcax;
           m031:=m031+tcax;
           m032:=m032+tcax;
           s:='            ';

           if m03<>0.0 then  s:=formater_float(m03);
           qrl03.caption:=s+' ';

           // MANDATS TW 30

           // REIMPUTATION TW 30
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='4';

                    q_reimp.Params[3].AsString:=f_principale.gestion.text;
                    q_reimp.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;
            // mandats annulées TW 30

                    q_annul_mois_ant_structure.close;
                    q_annul_mois_ant_structure.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_annul_mois_ant_structure.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_annul_mois_ant_structure.Params[2].AsString:='4';

                    q_annul_mois_ant_structure.Params[3].AsString:=f_principale.gestion.text;
                    q_annul_mois_ant_structure.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_annul_mois_ant_structure.open;
                    if  q_annul_mois_ant_structure.Fields[0].asstring<>'' then
                         tcax:=tcax-q_annul_mois_ant_structure.Fields[0].value;

           q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='4';

           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m30:=tcax;
           m301:=m301+tcax;
           m302:=m302+tcax;
           s:='            ';

           if m30<>0.0 then  s:=formater_float(m30);
           qrl30.caption:=s+' ';

            // MANDATS TW 11
            // REIMPUTATION TW 11
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='6';

                    q_reimp.Params[3].AsString:=f_principale.gestion.text;
                    q_reimp.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;

           // toutes mandats annulées TW 11
                    q_annul_mois_ant_structure.close;
                    q_annul_mois_ant_structure.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_annul_mois_ant_structure.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_annul_mois_ant_structure.Params[2].AsString:='6';

                    q_annul_mois_ant_structure.Params[3].AsString:=f_principale.gestion.text;
                    q_annul_mois_ant_structure.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_annul_mois_ant_structure.open;
                    if  q_annul_mois_ant_structure.Fields[0].asstring<>'' then
                         tcax:=tcax-q_annul_mois_ant_structure.Fields[0].value;

           q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='6';

           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);

           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m11:=tcax;
           m111:=m111+tcax;
           m112:=m112+tcax;
           s:='            ';

           if m11<>0.0 then  s:=formater_float(m11);
           qrl11.caption:=s+' ';

        // MANDATS TW 33
        // REIMPUTATION TW 33
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='5';

                    q_reimp.Params[3].AsString:=f_principale.gestion.text;
                    q_reimp.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;

            // toutes mandats annulées TW 33

                    q_annul_mois_ant_structure.close;
                    q_annul_mois_ant_structure.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
                    q_annul_mois_ant_structure.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
                    q_annul_mois_ant_structure.Params[2].AsString:='5';

                    q_annul_mois_ant_structure.Params[3].AsString:=f_principale.gestion.text;
                    q_annul_mois_ant_structure.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
                    q_annul_mois_ant_structure.open;
                    if  q_annul_mois_ant_structure.Fields[0].asstring<>'' then
                         tcax:=tcax-q_annul_mois_ant_structure.Fields[0].value;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='5';

           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m33:=tcax;
           m331:=m331+tcax;
           m332:=m332+tcax;
           s:='            ';

           if m33<>0.0 then  s:=formater_float(m33);
           qrl33.caption:=s+' ';

        // SOLDE DISPONIBLE

         s:='            ';
         if tca-mda-mdm-reimp+annul<>0.0 then  s:=formater_float((tca-mda-mdm-reimp+annul));
         if trim(s)='-0.00' then s:='            ';
         qrls.caption:=s+' ';

         // LE TAUX

        s1:='     ';
        if (tca<>0) AND ((mda+mdm+reimp-annul) <>0) then begin
            taux:=((mda+mdm+reimp-annul)/tca*100);
            s1:=formater_float(taux);
         end;
        qrlt.caption:=s1+' ';

end;

procedure Tf_situation_a3_6.befor_print_band2(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlabel27.Caption:='                ';
   if f_dm.ClientDataSet_adm.locate('structure_situation',vararrayof([1]),[]) then
         qrlabel27.Caption:=trim(f_dm.ClientDataSet_adm.FieldByName('LIBELLE_structure_situation').AsString);

   qrlabel28.Caption:='                ';
   if f_dm.ClientDataSet_adm.locate('structure_situation',vararrayof([2]),[]) then
   qrlabel28.Caption:=trim(f_dm.ClientDataSet_adm.FieldByName('LIBELLE_structure_situation').AsString);

   qrlabel29.Caption:='                ';
   if f_dm.ClientDataSet_adm.locate('structure_situation',vararrayof([3]),[]) then
   qrlabel29.Caption:=trim(f_dm.ClientDataSet_adm.FieldByName('LIBELLE_structure_situation').AsString);

   qrlabel30.Caption:='                ';
   if f_dm.ClientDataSet_adm.locate('structure_situation',vararrayof([4]),[]) then
   qrlabel30.Caption:=trim(f_dm.ClientDataSet_adm.FieldByName('LIBELLE_structure_situation').AsString);

   qrlabel31.Caption:='                ';
   if f_dm.ClientDataSet_adm.locate('structure_situation',vararrayof([5]),[]) then
         qrlabel31.Caption:=trim(f_dm.ClientDataSet_adm.FieldByName('LIBELLE_structure_situation').AsString);

   qrlabel32.Caption:='                ';
   if f_dm.ClientDataSet_adm.locate('structure_situation',vararrayof([6]),[]) then
   qrlabel32.Caption:=trim(f_dm.ClientDataSet_adm.FieldByName('LIBELLE_structure_situation').AsString);

end;

procedure Tf_situation_a3_6.initier(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   s1:='';
    qrlabel50.Caption:=' ? ? ? ? ?  ? ';
   if f_etats.SimpleDataSet_parameters4.locate('forme;champ',
                   vararrayof(['f_situation_a3','qrlabel50']),[]) then
                    qrlabel50.Caption:=trim(f_etats.SimpleDataSet_parameters4.FieldByName('libellefr').AsString)
                    else begin
                        f_etats.SimpleDataSet_parameters4.Append;
                        f_etats.SimpleDataSet_parameters4.FieldByName('forme').AsString:='f_situation_a3';
                        f_etats.SimpleDataSet_parameters4.FieldByName('champ').AsString:='qrlabel50';
                        f_etats.SimpleDataSet_parameters4.FieldByName('designation').AsString:='DIRECTION REGIONALE DU TRESOR  A GHARDAIA';
                        f_etats.SimpleDataSet_parameters4.FieldByName('libellefr').AsString:='DIRECTION REGIONALE DU TRESOR  A GHARDAIA';
                        f_etats.SimpleDataSet_parameters4.Post;s1:='x' ;
                    end;
if s1='x'  then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_etats.SimpleDataSet_parameters4;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"état de consommation, validez ou resaisissez les nouvelles données ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                         end;
   tca:=0.0;tca1:=0.0;tca2:=0.0; reimp:=0.0;  reimp1:=0.0; reimp2:=0.0;annul:=0.0;
   mdrt:=0.0;mdrt1:=0.0;mdrt2:=0.0;
   m47:=0.0;m471:=0.0;m472:=0.0;
   m03:=0.0;m031:=0.0;m032:=0.0;
   m30:=0.0;m301:=0.0;m302:=0.0;
   m33:=0.0;m331:=0.0;m332:=0.0;
   m11:=0.0;m111:=0.0;m112:=0.0;
   mto:=0.0;mto1:=0.0;mto2:=0.0;
   ladate.caption:=f_etats.xdate.text
end;












procedure Tf_situation_a3_6.total(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
        s:='            ';
        if tca1<>0.0 then  s:=formater_float(tca1);
        qrltca1.caption:=s+' ';


        s:='            ';
        if tep<>0.0 then  s:=formater_float(tep);
        qrlenplus1.caption:=s+' ';


        s:='            ';
        if tem<>0.0 then  s:=formater_float(tem);
        qrlenmoins1.caption:=s+' ';


        s:='            ';
        if tca1-tem+tep<>0.0 then  s:=formater_float(tca1+tep-tem);
        qrldr1.caption:=s+' ';

        s:='            ';
        if mda1<>0.0 then  s:=formater_float(mda1);
        qrmda1.caption:=s+' ';

        s:='            ';
        if mdm1<>0.0 then  s:=formater_float(mdm1);
        qrmdm1.caption:=s+' ';

         s:='            ';
        if annul1<>0.0 then  s:=formater_float(annul1);
        qrannul1.caption:=s+' ';

        s:='            ';
        if REIMP1<>0.0 then  s:=formater_float(REIMP1);
        qrre1.caption:=s+' ';

        s:='            ';
        if mdm1+mda1+REIMP1-annul1<>0.0 then  s:=formater_float(mdm1+mda1+REIMP1-annul1);
        qrltd1.caption:=s+' ';

        s:='            ';
        if mdrt1<>0.0 then  s:=formater_float(mdrt1);
        qrldrt1.caption:=s+' ';

        s:='            ';
        if m471<>0.0 then  s:=formater_float(m471);
        qrl471.caption:=s+' ';

        s:='            ';
        if m031<>0.0 then  s:=formater_float(m031);
        qrl031.caption:=s+' ';

         s:='            ';
        if m301<>0.0 then  s:=formater_float(m301);
        qrl301.caption:=s+' ';

        s:='            ';
        if m111<>0.0 then  s:=formater_float(m111);
        qrl111.caption:=s+' ';
        s:='            ';

        if m331<>0.0 then  s:=formater_float(m331);
        qrl331.caption:=s+' ';


        s:='            ';
        if ((tca1-tem+tep)-(mdm1+mda1+reimp1)+annul1)<>0.0 then  s:=formater_float((tca1-tem+tep)-(mdm1+mda1+reimp1)+annul1);
        qrls1.caption:=s+' ';


        s1:='     ';
        if ((tca1-tem+tep) <>0) AND ((mda1+mdm1+reimp1-annul1) <>0) then begin
            taux:=(mda1+mdm1+reimp1-annul1)/(tca1-tem+tep)*100;
            s1:=formater_float(taux);
         end;
        qrlt1.caption:=s1+' ';


        mda1:=0.0;mdm1:=0.0;tca1:=0.0;tem:=0.0;tep:=0.0;reimp1:=0.0; annul1:=0.0;
        m471:=0.0;mdrt1:=0.0;m031:=0.0;m301:=0.0;m111:=0.0;
        m331:=0.0;
end;

procedure Tf_situation_a3_6.totalg(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
        s:='            ';
        if tca2<>0.0 then  //str(tca2:12:2,s);
        s:=formater_float(tca2);
        qrltca2.caption:=s+' ';


        s:='            ';
        if tep1<>0.0 then  s:=formater_float(tep1); //str(tep1:12:2,s);
        qrlenplus2.caption:=s+' ';


        s:='            ';
        if tem1<>0.0 then  s:=formater_float(tem1);
        qrlenmoins2.caption:=s+' ';


        s:='            ';
        if tca2-tem1+tep1<>0.0 then  s:=formater_float(tca2+tep1-tem1);
        qrldr2.caption:=s+' ';

        s:='            ';
        if mda2<>0.0 then  s:=formater_float(mda2);
        qrmda2.caption:=s+' ';

        s:='            ';
        if mdm2<>0.0 then  s:=formater_float(mdm2);
        qrmdm2.caption:=s+' ';


          s:='            ';
        if annul2<>0.0 then  s:=formater_float(annul2);
        qrannul2.caption:=s+' ';

        s:='            ';
        if REIMP2<>0.0 then  s:=formater_float(REIMP2);
        qrre2.caption:=s+' ';

        s:='            ';
        if mdm2+mda2+REIMP2-annul2<>0.0 then  s:=formater_float(mdm2+mda2+REIMP2-annul2);
        qrltd2.caption:=s+' ';



        s:='            ';
        if mdrt2<>0.0 then  s:=formater_float(mdrt2);
        qrldrt2.caption:=s+' ';

        s:='            ';
        if m472<>0.0 then  s:=formater_float(m472);
        qrl472.caption:=s+' ';

        s:='            ';
        if m032<>0.0 then  s:=formater_float(m032);
        qrl032.caption:=s+' ';

         s:='            ';
        if m302<>0.0 then  s:=formater_float(m302);
        qrl302.caption:=s+' ';

        s:='            ';
        if m112<>0.0 then  s:=formater_float(m112);
        qrl112.caption:=s+' ';
        s:='            ';

        if m332<>0.0 then  s:=formater_float(m332);
        qrl332.caption:=s+' ';


        s:='            ';
        if (tca2-tem1+tep1)-(mdm2+mda2+reimp2)+annul2<>0.0 then s:=formater_float((tca2-tem1+tep1)-(mdm2+mda2+reimp2)+annul2);
        qrls2.caption:=s+' ';


        s1:='     ';
        if ((tca2-tem1+tep1)<>0) AND ((mda2+mdm2+reimp2-annul2) <>0) then begin
            taux:=(mda2+mdm2+reimp2-annul2)/(tca2-tem1+tep1)*100;
            s1:=formater_float(taux);
         end;
        qrlt2.caption:=s1+' ';


        mda2:=0.0;mdm2:=0.0;tca2:=0.0;tem1:=0.0;tep1:=0.0;reimp2:=0.0;
        m472:=0.0;mdrt2:=0.0;m032:=0.0;m302:=0.0;m112:=0.0; annul2:=0.0;
        m332:=0.0;
end;

end.
