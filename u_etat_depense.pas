unit u_etat_depense;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db,  Data.FMTBcd, Data.SqlExpr;

type
  TF_etat_depense = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLca: TQRLabel;
    qrlca1: TQRLabel;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    qrlca2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    qrldrt: TQRLabel;
    QRLdrt1: TQRLabel;
    QRLdrt2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLTDRT: TQRLabel;
    QRLTDRT1: TQRLabel;
    QRLTDRT2: TQRLabel;
    QRLabel21: TQRLabel;
    QRLannee: TQRLabel;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    Qxx: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    qrl47: TQRLabel;
    QRL33: TQRLabel;
    QRL11: TQRLabel;
    QRL30: TQRLabel;
    QRL03: TQRLabel;
    QRLt47: TQRLabel;
    QRLt11: TQRLabel;
    QRlt30: TQRLabel;
    QRLt03: TQRLabel;
    qrl471: TQRLabel;
    QRL331: TQRLabel;
    QRl111: TQRLabel;
    QRL301: TQRLabel;
    QRL031: TQRLabel;
    QRLt471: TQRLabel;
    QRLt111: TQRLabel;
    QRLt301: TQRLabel;
    QRLt031: TQRLabel;
    qrl472: TQRLabel;
    QRL332: TQRLabel;
    QRL112: TQRLabel;
    QRL302: TQRLabel;
    QRL032: TQRLabel;
    QRLt472: TQRLabel;
    QRLt112: TQRLabel;
    QRLt302: TQRLabel;
    QRLt032: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel50: TQRLabel;
    QRLto: TQRLabel;
    QRlsolde: TQRLabel;
    QRlto1: TQRLabel;
    QRLsolde1: TQRLabel;
    QRLto2: TQRLabel;
    QRLsolde2: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel56: TQRLabel;
    QRLt33: TQRLabel;
    QRLtaux: TQRLabel;
    QRLt331: TQRLabel;
    QRLtaux1: TQRLabel;
    QRLt332: TQRLabel;
    QRLtaux2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape1: TQRShape;
    dif: TQRLabel;
    qdif: TQRLabel;
    q_mdm: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_cre_affec: TSQLQuery;
    procedure ligne(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ligne2(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ligne3(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure initier(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
   F_etat_depense: TF_etat_depense;
   s,s1:string;
   tca,tca1,tca2,mdrt,mdrt1,mdrt2,m47,m471,m472:real;
   mto,mto1,mto2,m03,m031,m032,m30,m301,m302,m33,m331,m332,m11,m111,m112:real;
   tcax,taux:real;

implementation

uses MAIN, u_dm;

{$R *.DFM}

procedure TF_etat_depense.ligne(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        q_cre_affec.close;
        tca:=0;s:='            ';
        q_cre_affec.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_cre_affec.Params[1].Asstring:=f_principale.gestion.text;
        q_cre_affec.open;
        if  q_cre_affec.Fields[0].asstring<>'' then
         begin
           tca:=q_cre_affec.Fields[0].value;
           tca1:=tca1+q_cre_affec.Fields[0].value;
           tca2:=tca2+q_cre_affec.Fields[0].value;
          // cre_tot:=cre_tot+q_cre_affec.Fields[0].value;
         end;

        q_enmoins.close;
        q_enmoins.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_enmoins.Params[1].Asstring:=f_principale.gestion.text;
        q_enmoins.open;

        if  q_enmoins.Fields[0].asstring<>'' then
          begin
             tca:=-q_enmoins.Fields[0].value;
             tca1:=tca1-q_enmoins.Fields[0].value;
             tca2:=tca2-q_enmoins.Fields[0].value
          end;

        s:='            ';
        if tca<>0.0 then  str(tca:12:2,s);
        qrlca.caption:=s+' ';

           tcaX:=0.0;
           q_mdm.close;
           q_mdm.Params[0].AsString:=f_principale.gestion.text;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[2].AsString:='1';
           q_mdm.Params[3].Asdatetime:=strtodate(f_principale.ydate.text);

           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;
           mdrt:=tcax;
           mdrt1:=mdrt1+tcax;
           mdrt2:=mdrt2+tcax;
        s:='            ';
        if mdrt<>0.0 then  str(mdrt:12:2,s);
        qrldrt.caption:=s+' ';
        s1:='     ';
        if tca<>0 then begin
            taux:=(mdrt/tca*100);
            str(taux:5:2,s1);
         end;
        qrltdrt.caption:=s1+' ';

           tcax:=0.0;q_mdm.close;
           q_mdm.Params[0].AsString:=f_principale.gestion.text;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[2].AsString:='2';
           q_mdm.Params[3].Asdatetime:=strtodate(f_principale.ydate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;
           m47:=tcax;
           m471:=m471+tcax;
           m472:=m472+tcax;
           s:='            ';
           s1:='     ';
           if m47<>0.0 then  str(m47:12:2,s);
           qrl47.caption:=s+' ';
           if tca<>0 then begin
               taux:=(m47/tca*100);
               str(taux:5:2,s1);
           end;
           qrlt47.caption:=s1+' ';

           tcax:=0.0;q_mdm.close;
           q_mdm.Params[0].AsString:=f_principale.gestion.text;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[2].AsString:='3';
           q_mdm.Params[3].Asdatetime:=strtodate(f_principale.ydate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;
           m03:=tcax;
           m031:=m031+tcax;
           m032:=m032+tcax;
           s:='            ';
           s1:='     ';
           if m03<>0.0 then  str(m03:12:2,s);
           qrl03.caption:=s+' ';
           if tca<>0 then begin
               taux:=(m03/tca*100);
               str(taux:5:2,s1);
           end;
           qrlt03.caption:=s1+' ';

           tcax:=0.0; q_mdm.close;
           q_mdm.Params[0].AsString:=f_principale.gestion.text;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[2].AsString:='4';
           q_mdm.Params[3].Asdatetime:=strtodate(f_principale.ydate.text);
           q_mdm.open;

           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;
           m30:=tcax;
           m301:=m301+tcax;
           m302:=m302+tcax;
           s:='            ';
           s1:='     ';
           if m30<>0.0 then  str(m30:12:2,s);
           qrl30.caption:=s+' ';
           if tca<>0 then begin
               taux:=(m30/tca*100);
               str(taux:5:2,s1);
           end;
           qrlt30.caption:=s1+' ';

           tcax:=0.0; q_mdm.close;
           q_mdm.Params[0].AsString:=f_principale.gestion.text;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[2].AsString:='5';
           q_mdm.Params[3].Asdatetime:=strtodate(f_principale.ydate.text);

           q_mdm.open;

           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;
           m33:=tcax;
           m331:=m331+tcax;
           m332:=m332+tcax;
           s:='            ';
           s1:='     ';
           if m33<>0.0 then  str(m33:12:2,s);
           qrl33.caption:=s+' ';
           if tca<>0 then begin
               taux:=(m33/tca*100);
               str(taux:5:2,s1);
           end;
           qrlt33.caption:=s1+' ';

           tcax:=0.0; q_mdm.close;
           q_mdm.Params[0].AsString:=f_principale.gestion.text;
           q_mdm.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_mdm.Params[2].AsString:='6';
           q_mdm.Params[3].Asdatetime:=strtodate(f_principale.ydate.text);

           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=q_mdm.Fields[0].value;
           m11:=tcax;
           m111:=m111+tcax;
           m112:=m112+tcax;
           s:='            ';
           s1:='     ';
           if m11<>0.0 then  str(m11:12:2,s);
           qrl11.caption:=s+' ';
           if tca<>0 then begin
               taux:=(m11/tca*100);
               str(taux:5:2,s1);
           end;
           qrlt11.caption:=s1+' ';


           tcax:=mdrt+m47+m03+m30+m11+m33;

           mto:=tcax;
           mto1:=mto1+tcax;
           mto2:=mto2+tcax;
           s:='            ';
           s1:='     ';

           if mto<>0.0 then  str(mto:12:2,s);
           qrlto.caption:=s+' ';
           s:='            ';
           if tca-mto<>0.0 then  str(tca-mto:12:2,s);

           qrlsolde.caption:=s+' ';

           if tca<>0 then begin
               taux:=(mto/tca*100);
               str(taux:5:2,s1);
           end;
           qrltaux.caption:=s1+' ';

end;



procedure TF_etat_depense.ligne2(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     s:='            ';
     s1:='     ';
     if tca1<>0.0 then  str(tca1:12:2,s);
     qrlca1.caption:=s+' ';
     s:='            ';
     if mdrt1<>0.0 then  str(mdrt1:12:2,s);
     qrldrt1.caption:=s+' ';
     if tca1<>0 then begin
          taux:=(mdrt1/tca1*100);
          str(taux:5:2,s1);
     end;
     qrltdrt1.caption:=s1+' ';
     mdrt1:=0;

     s:='            ';
     s1:='     ';
     if m471<>0.0 then  str(m471:12:2,s);
     qrl471.caption:=s+' ';
     if tca1<>0 then begin
          taux:=(m471/tca1*100);
          str(taux:5:2,s1);
     end;
     qrlt471.caption:=s1+' ';
     m471:=0.0;

     s:='            ';
     s1:='     ';
     if m031<>0.0 then  str(m031:12:2,s);
     qrl031.caption:=s+' ';
     if tca1<>0 then begin
          taux:=(m031/tca1*100);
          str(taux:5:2,s1);
     end;
     qrlt031.caption:=s1+' ';
     m031:=0.0;

     s:='            ';
     s1:='     ';
     if m301<>0.0 then  str(m301:12:2,s);
     qrl301.caption:=s+' ';
     if tca1<>0 then begin
          taux:=(m301/tca1*100);
          str(taux:5:2,s1);
     end;
     qrlt301.caption:=s1+' ';
     m301:=0.0;

     s:='            ';
     s1:='     ';
     if m331<>0.0 then  str(m331:12:2,s);
     qrl331.caption:=s+' ';
     if tca1<>0 then begin
          taux:=(m331/tca1*100);
          str(taux:5:2,s1);
     end;
     qrlt331.caption:=s1+' ';
     m331:=0.0;

     s:='            ';
     s1:='     ';
     if m111<>0.0 then  str(m111:12:2,s);
     qrl111.caption:=s+' ';
     if tca1<>0 then begin
          taux:=(m111/tca1*100);
          str(taux:5:2,s1);
     end;
     qrlt111.caption:=s1+' ';
     m111:=0.0;

     s:='            ';
     s1:='     ';
     if mto1<>0.0 then  str(mto1:12:2,s);
     qrlto1.caption:=s+' ';
     s:='            ';
     if tca1-mto1<>0.0 then  str(tca1-mto1:12:2,s);
     qrlsolde1.caption:=s+' ';
     if tca1<>0 then begin
          taux:=(mto1/tca1*100);
          str(taux:5:2,s1);
     end;
     qrltaux1.caption:=s1+' ';
     mto1:=0.0;

     tca1:=0;
end;

procedure TF_etat_depense.ligne3(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     s:='            ';
     s1:='     ';
     if tca2<>0.0 then  str(tca2:12:2,s);
     qrlca2.caption:=s+' ';
     s:='            ';
     if mdrt2<>0.0 then  str(mdrt2:12:2,s);
     qrldrt2.caption:=s+' ';
     if tca2<>0 then begin
          taux:=(mdrt2/tca2*100);
          str(taux:5:2,s1);
     end;
     qrltdrt2.caption:=s1+' ';


     s:='            ';
     s1:='     ';
     if m472<>0.0 then  str(m472:12:2,s);
     qrl472.caption:=s+' ';
     if tca2<>0 then begin
          taux:=(m472/tca2*100);
          str(taux:5:2,s1);
     end;
     qrlt472.caption:=s1+' ';

     s:='            ';
     s1:='     ';
     if m032<>0.0 then  str(m032:12:2,s);
     qrl032.caption:=s+' ';
     if tca2<>0 then begin
          taux:=(m032/tca2*100);
          str(taux:5:2,s1);
     end;
     qrlt032.caption:=s1+' ';

     s:='            ';
     s1:='     ';
     if m302<>0.0 then  str(m302:12:2,s);
     qrl302.caption:=s+' ';
     if tca2<>0 then begin
          taux:=(m302/tca2*100);
          str(taux:5:2,s1);
     end;
     qrlt302.caption:=s1+' ';

     s:='            ';
     s1:='     ';
     if m332<>0.0 then  str(m332:12:2,s);
     qrl332.caption:=s+' ';
     if tca2<>0 then begin
          taux:=(m332/tca2*100);
          str(taux:5:2,s1);
     end;
     qrlt332.caption:=s1+' ';

     s:='            ';
     s1:='     ';
     if m112<>0.0 then  str(m112:12:2,s);
     qrl112.caption:=s+' ';
     if tca2<>0 then begin
          taux:=(m112/tca2*100);
          str(taux:5:2,s1);
     end;
     qrlt112.caption:=s1+' ';

     s:='            ';
     s1:='     ';
     if mto2<>0.0 then  str(mto2:12:2,s);
     qrlto2.caption:=s+' ';
     s:='            ';
     if tca2-mto2<>0.0 then  str(tca2-mto2:12:2,s);
     qrlsolde2.caption:=s+' ';
     if tca2<>0 then begin
          taux:=(mto2/tca2*100);
          str(taux:5:2,s1);
     end;
     qrltaux2.caption:=s1+' ';
end;

procedure TF_etat_depense.initier(Sender: TCustomQuickRep;
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
   qrlannee.caption:=f_principale.gestion.text
   end;

end.
