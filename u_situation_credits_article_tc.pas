unit u_situation_credits_article_tc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db,  Data.FMTBcd, Data.SqlExpr;

type
  Tf_situation_credit_tc = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    LADATE: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
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
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRLabel42: TQRLabel;
    QRBand4: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand5: TQRBand;
    QRLabel43: TQRLabel;
    qrlca: TQRLabel;
    qrlenplus: TQRLabel;
    qrlenmoins: TQRLabel;
    qrldr: TQRLabel;
    qrmda: TQRLabel;
    qrmdm: TQRLabel;
    QRLabel44: TQRLabel;
    qrltd: TQRLabel;
    QRLdrt: TQRLabel;
    QRL47: TQRLabel;
    QRL03: TQRLabel;
    QRL30: TQRLabel;
    QRL11: TQRLabel;
    QRL33: TQRLabel;
    QRLS: TQRLabel;
    QRLT: TQRLabel;
    qrltca1: TQRLabel;
    QRLenplus1: TQRLabel;
    QRLenmoins1: TQRLabel;
    QRLdr1: TQRLabel;
    QRmda1: TQRLabel;
    QRmdm1: TQRLabel;
    QRLabel51: TQRLabel;
    QRLtd1: TQRLabel;
    QRLdrt1: TQRLabel;
    QRL471: TQRLabel;
    QRL031: TQRLabel;
    QRL301: TQRLabel;
    QRL111: TQRLabel;
    QRL331: TQRLabel;
    QRLs1: TQRLabel;
    QRLt1: TQRLabel;
    qrltca2: TQRLabel;
    qrlenplus2: TQRLabel;
    QRLenmoins2: TQRLabel;
    QRLdr2: TQRLabel;
    QRmda2: TQRLabel;
    QRmdm2: TQRLabel;
    QRLabel45: TQRLabel;
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
    QRLabel48: TQRLabel;
    q_mdm: TSQLQuery;
    q_cre_affec: TSQLQuery;
    q_enplus: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_mda: TSQLQuery;
    q_mdms: TSQLQuery;
    procedure LIGNE(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure total(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure totalg(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure initier(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
   f_situation_credit_tc: Tf_situation_credit_tc;
   s,s1:string;
   tca,tca1,tca2,tem,tem1,tep,tep1,mdrt,mdrt1,mdrt2,m47,m471,m472:real;
   mto,mto1,mto2,m03,m031,m032,m30,m301,m302,m33,m331,m332,m11,m111,m112:real;
   tcax,taux:real;
   mda,mda1,mda2,mdm,mdm1,mdm2:real;
implementation

uses MAIN, u_dm;

{$R *.DFM}

procedure Tf_situation_credit_tc.LIGNE(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var cre_tot,taux1,taux2,x:real;
begin
        tca:=0;
        s:='            ';q_cre_affec.close;
        q_cre_affec.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_cre_affec.Params[1].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
        q_cre_affec.Params[2].Asstring:=f_principale.gestion.text;
        q_cre_affec.open;
        if  q_cre_affec.Fields[0].asstring<>'' then
         begin
           tca:=q_cre_affec.Fields[0].value;
           tca1:=tca1+q_cre_affec.Fields[0].value;
           tca2:=tca2+q_cre_affec.Fields[0].value;
           str(q_cre_affec.Fields[0].value:12:2,s);
         end;
        qrlca.caption:=s+' ';
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
            tep1:=tep+q_enplus.Fields[0].value;
            cre_tot:=cre_tot+q_enplus.Fields[0].value;
            str(q_enplus.Fields[0].value:12:2,s);
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
             tem1:=tem+q_enmoins.Fields[0].value;
             cre_tot:=cre_tot-q_enmoins.Fields[0].value;
             str(q_enmoins.Fields[0].value:12:2,s);
           end;
             qrlenmoins.caption:=s+' ';


         s:='            ';
        if tca<>0.0 then  str(tca:12:2,s);
        qrldr.caption:=s+' ';

        // MANDATS ANTERIEURS

           mda:=0.0;q_mda.close;
           q_mda.Params[0].AsString:=f_principale.gestion.text;
           q_mda.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mda.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;;
           q_mda.Params[3].Asdatetime:=strtodate('01/'+copy(f_principale.zdate.text,4,7));
           q_mda.open;
           if  q_mda.Fields[0].asstring<>'' then
               mda:=q_mda.Fields[0].value;
           mda1:=mda1+mda;
           mda2:=mda2+mda;

        s:='            ';
        if mda<>0.0 then  str(mda:12:2,s);
        qrmda.caption:=s+' ';

          // MANDATS DU MOIS

           mdm:=0.0; q_mdms.close;
           q_mdms.Params[0].AsString:=f_principale.gestion.text;
           q_mdms.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdms.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdms.Params[3].Asdatetime:=strtodate(f_principale.zdate.text);
           q_mdms.Params[4].Asdatetime:=strtodate('01/'+copy(f_principale.zdate.text,4,7));
           q_mdms.open;
           if  q_mdms.Fields[0].asstring<>'' then
               mdm:=q_mdms.Fields[0].value;
           mdm1:=mdm1+mdm;
           mdm2:=mdm2+mdm;

           s:='            ';
           if mdm<>0.0 then  str(mdm:12:2,s);
           qrmdm.caption:=s+' ';

           s:='            ';
           if mdm+mda<>0.0 then  str(mdm+mda:12:2,s);
           qrltd.caption:=s+' ';


           // les mandats pAr structure ////////////

           // MANDATS TC47
           tcax:=0.0;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='7';
           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_principale.zdate.text);
           q_mdm.open;
          if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;


           mdrt:=tcax;
           mdrt1:=mdrt1+tcax;
           mdrt2:=mdrt2+tcax;
           s:='            ';

           if mdrt<>0.0 then  str(mdrt:12:2,s);
           qrldrt.caption:=s+' ';

           // MANDATS TC 03
           tcax:=0.0;q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='8';
           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_principale.zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;


           m47:=tcax;
           m471:=m471+tcax;
           m472:=m472+tcax;
           s:='            ';

           if m47<>0.0 then  str(m47:12:2,s);
           qrl47.caption:=s+' ';

         // MANDATS TC 30
           tcax:=0.0;q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='9';
           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_principale.zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;


           m03:=tcax;
           m031:=m031+tcax;
           m032:=m032+tcax;
           s:='            ';

           if m03<>0.0 then  str(m03:12:2,s);
           qrl03.caption:=s+' ';

           // MANDATS TC 33
           tcax:=0.0;q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='a';
           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_principale.zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;


           m30:=tcax;
           m301:=m301+tcax;
           m302:=m302+tcax;
           s:='            ';

           if m30<>0.0 then  str(m30:12:2,s);
           qrl30.caption:=s+' ';

            // MANDATS Tc 11
           tcax:=0.0;q_mdm.close;
           q_mdm.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='b';
           q_mdm.Params[3].AsString:=f_principale.gestion.text;
           q_mdm.Params[4].Asdatetime:=strtodate(f_principale.zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;


           m11:=tcax;
           m111:=m111+tcax;
           m112:=m112+tcax;
           s:='            ';

           if m11<>0.0 then  str(m11:12:2,s);
           qrl11.caption:=s+' ';

        // SOLDE DISPONIBLE

         s:='            ';
         if tca-mda-mdm<>0.0 then  str((tca-mda-mdm):12:2,s);
         qrls.caption:=s+' ';

         // LE TAUX

        s1:='     ';
        if (tca<>0) AND ((mda+mdm) <>0) then begin
            taux:=((mda+mdm)/tca*100);
            str(taux:5:2,s1);
         end;
        qrlt.caption:=s1+' ';

end;


procedure Tf_situation_credit_tc.total(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        s:='            ';
        if tca1<>0.0 then  str(tca1:12:2,s);
        qrltca1.caption:=s+' ';


        s:='            ';
        if tep<>0.0 then  str(tep:12:2,s);
        qrlenplus1.caption:=s+' ';


        s:='            ';
        if tem<>0.0 then  str(tem:12:2,s);
        qrlenmoins1.caption:=s+' ';


        s:='            ';
        if tca1-tem+tep<>0.0 then  str(tca1+tep-tem:12:2,s);
        qrldr1.caption:=s+' ';

        s:='            ';
        if mda1<>0.0 then  str(mda1:12:2,s);
        qrmda1.caption:=s+' ';

        s:='            ';
        if mdm1<>0.0 then  str(mdm1:12:2,s);
        qrmdm1.caption:=s+' ';

        s:='            ';
        if mdm1+mda1<>0.0 then  str(mdm1+mda1:12:2,s);
        qrltd1.caption:=s+' ';

        s:='            ';
        if mdrt1<>0.0 then  str(mdrt1:12:2,s);
        qrldrt1.caption:=s+' ';

        s:='            ';
        if m471<>0.0 then  str(m471:12:2,s);
        qrl471.caption:=s+' ';

        s:='            ';
        if m031<>0.0 then  str(m031:12:2,s);
        qrl031.caption:=s+' ';

         s:='            ';
        if m301<>0.0 then  str(m301:12:2,s);
        qrl301.caption:=s+' ';

        s:='            ';
        if m111<>0.0 then  str(m111:12:2,s);
        qrl111.caption:=s+' ';
        s:='            ';

        if m331<>0.0 then  str(m331:12:2,s);
        qrl331.caption:=s+' ';


        s:='            ';
        if (tca1-tem+tep)-(mdm1+mda1)<>0.0 then  str((tca1-tem+tep)-(mdm1+mda1):12:2,s);
        qrls1.caption:=s+' ';

        s1:='     ';
        if ((tca1-tem+tep) <>0) AND ((mda1+mdm1) <>0) then begin
            taux:=(mda1+mdm1)/(tca1-tem+tep)*100;
            str(taux:5:2,s1);
         end;
        qrlt1.caption:=s1+' ';


        mda1:=0.0;mdm1:=0.0;tca1:=0.0;tem:=0.0;tep:=0.0;
        m471:=0.0;mdrt1:=0.0;m031:=0.0;m301:=0.0;m111:=0.0;
        m331:=0.0;
end;

procedure Tf_situation_credit_tc.totalg(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        s:='            ';
        if tca2<>0.0 then  str(tca2:12:2,s);
        qrltca2.caption:=s+' ';


        s:='            ';
        if tep1<>0.0 then  str(tep1:12:2,s);
        qrlenplus2.caption:=s+' ';


        s:='            ';
        if tem1<>0.0 then  str(tem1:12:2,s);
        qrlenmoins2.caption:=s+' ';


        s:='            ';
        if tca2-tem1+tep1<>0.0 then  str(tca2+tep1-tem1:12:2,s);
        qrldr2.caption:=s+' ';

        s:='            ';
        if mda2<>0.0 then  str(mda2:12:2,s);
        qrmda2.caption:=s+' ';

        s:='            ';
        if mdm2<>0.0 then  str(mdm2:12:2,s);
        qrmdm2.caption:=s+' ';

        s:='            ';
        if mdm2+mda2<>0.0 then  str(mdm2+mda2:12:2,s);
        qrltd2.caption:=s+' ';

        s:='            ';
        if mdrt2<>0.0 then  str(mdrt2:12:2,s);
        qrldrt2.caption:=s+' ';

        s:='            ';
        if m472<>0.0 then  str(m472:12:2,s);
        qrl472.caption:=s+' ';

        s:='            ';
        if m032<>0.0 then  str(m032:12:2,s);
        qrl032.caption:=s+' ';

         s:='            ';
        if m302<>0.0 then  str(m302:12:2,s);
        qrl302.caption:=s+' ';

        s:='            ';
        if m112<>0.0 then  str(m112:12:2,s);
        qrl112.caption:=s+' ';
        s:='            ';

        if m332<>0.0 then  str(m332:12:2,s);
        qrl332.caption:=s+' ';


        s:='            ';
        if (tca2-tem1+tep1)-(mdm2+mda2)<>0.0 then  str((tca2-tem1+tep1)-(mdm2+mda2):12:2,s);
        qrls2.caption:=s+' ';

        s1:='     ';
        if ((tca2-tem1+tep1)<>0) AND ((mda2+mdm2) <>0) then begin
            taux:=(mda2+mdm2)/(tca2-tem1+tep1)*100;
            str(taux:5:2,s1);
         end;
        qrlt2.caption:=s1+' ';


        mda2:=0.0;mdm2:=0.0;tca2:=0.0;tem1:=0.0;tep1:=0.0;
        m472:=0.0;mdrt2:=0.0;m032:=0.0;m302:=0.0;m112:=0.0;
        m332:=0.0;
end;

procedure Tf_situation_credit_tc.initier(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   tca:=0.0;tca1:=0.0;tca2:=0.0;
   mdrt:=0.0;mdrt1:=0.0;mdrt2:=0.0;
   m47:=0.0;m471:=0.0;m472:=0.0;
   m03:=0.0;m031:=0.0;m032:=0.0;
   m30:=0.0;m301:=0.0;m302:=0.0;
   m33:=0.0;m331:=0.0;m332:=0.0;
   m11:=0.0;m111:=0.0;m112:=0.0;
   mto:=0.0;mto1:=0.0;mto2:=0.0;
   ladate.caption:=f_principale.zdate.text
end;

end.
