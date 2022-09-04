unit u_etat_credits;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, StdCtrls, Grids, DBGrids, Db,
  Data.FMTBcd, Data.SqlExpr;

type
  Tf_etat_credit = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
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
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
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
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    qrlca: TQRLabel;
    qrlenmoins: TQRLabel;
    QRLdd: TQRLabel;
    qrlmde: TQRLabel;
    qrlmdm: TQRLabel;
    qrlenplus: TQRLabel;
    qrltaux1: TQRLabel;
    qrlsolde1: TQRLabel;
    qrlsolde2: TQRLabel;
    qrltaux2: TQRLabel;
    QRBand4: TQRBand;
    QRLabel37: TQRLabel;
    QRLTCA: TQRLabel;
    qrltep: TQRLabel;
    qrltem: TQRLabel;
    qrltdd: TQRLabel;
    qrltme: TQRLabel;
    QRltaux11: TQRLabel;
    qrlsolde11: TQRLabel;
    qrlsolde22: TQRLabel;
    qrltaux22: TQRLabel;
    qrltdm: TQRLabel;
    ldate: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape1: TQRShape;
    q_cre_affec: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_mde: TSQLQuery;
    q_mde_eco: TSQLQuery;
    q_mdm: TSQLQuery;
    q_enplus: TSQLQuery;
    q_reimp: TSQLQuery;
    q_annul: TSQLQuery;
    QRLabel46: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel3: TQRLabel;
    q_annul_ant: TSQLQuery;
    QRLabel4: TQRLabel;
    procedure ligne(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure total(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure initial_var(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etat_credit: Tf_etat_credit;
  s,s1:string;
  x,tca,tep,tem,tdd,tmde,tmdm,annul:real;

implementation

uses MAIN, uu_etat_credits, u_dm, u_etats,Unit_function_and_procedure;

{$R *.DFM}

procedure Tf_etat_credit.ligne(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var cre_tot,taux1,taux2,x:real;

begin
        cre_tot:=0.0;

        q_cre_affec.close;
        q_cre_affec.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_cre_affec.Params[1].Asstring:=f_principale.gestion.text;
        q_cre_affec.open;
        s:='            ';
        if  q_cre_affec.Fields[0].asstring<>'' then
         begin
           tca:=tca+q_cre_affec.Fields[0].value;
           cre_tot:=cre_tot+q_cre_affec.Fields[0].value;

          s:=formater_float(q_cre_affec.Fields[0].value);
         end;
        qrlca.caption:=s+' ';

        // A corriger
        x:=0 ;
        // les engagements en économie ne sont pas nécessairement des crédits en plus ...


        s:='            ';
        if f_etats.cb1.Checked then begin
            q_enplus.close;
            q_enplus.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
            q_enplus.Params[1].Asstring:=f_principale.gestion.text;
            q_enplus.open;
            s:='            ';
            if  q_enplus.Fields[0].asstring<>'' then
                  begin
                    tep:=tep+q_enplus.Fields[0].value;
                    cre_tot:=cre_tot+q_enplus.Fields[0].value;
                   // str(q_enplus.Fields[0].value:12:2,s);
                   s:=formater_float(q_enplus.Fields[0].value);
                  end;
             qrlenplus.caption:=s;

             q_enmoins.close;
             q_enmoins.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
             q_enmoins.Params[1].Asstring:=f_principale.gestion.text;
             q_enmoins.open;
             s:='            ';
             if  q_enmoins.Fields[0].asstring<>'' then
                begin
                  tem:=tem+q_enmoins.Fields[0].value;
                  cre_tot:=cre_tot-q_enmoins.Fields[0].value;
                 // str(q_enmoins.Fields[0].value:12:2,s);
                  s:=formater_float(q_enmoins.Fields[0].value);
               end;
             qrlenmoins.caption:=s+' ';
                          end;


        s:='            ';
        if cre_tot<>0 then //str(cre_tot:12:2,s);
                           s:=formater_float(cre_tot);
        qrldd.caption:=s+' ';

       x:=0;
        q_mde_eco.close;
        q_mde_eco.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_mde_eco.Params[1].Asstring:=f_principale.gestion.text;
        q_mde_eco.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
        q_mde_eco.open;
        if  q_mde_eco.Fields[0].asstring<>'' then x:=x-q_mde_eco.Fields[0].value;

        q_mde.close;
        q_mde.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_mde.Params[1].Asstring:=f_principale.gestion.text;
        q_mde.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
        q_mde.open;
        if  q_mde.Fields[0].asstring<>'' then x:=x+q_mde.Fields[0].value;

        s:='            ';
        s1:='     ';
        if  x<>0 then
          begin
            tmde:=tmde+x;
           // str(x:12:2,s);
            s:=formater_float(x);
            if cre_tot<>0.0 then begin
                  taux1:=x/cre_tot*100;
                  str(taux1:5:2,s1);
                               end
          end;
        qrlmde.caption:=s+' ';
        qrltaux1.caption:=s1+' ';

        s:='            ';
        if cre_tot-x<>0 then //str((cre_tot-x):11:2,s);
                             s:=formater_float(cre_tot-x);
        qrlsolde1.caption:=s+' ';

         // Reimputations
        q_reimp.close;
        q_reimp.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_reimp.Params[1].Asstring:=f_principale.gestion.text;
        q_reimp.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
        q_reimp.open;
        x:=0;
        if  q_reimp.Fields[0].asstring<>'' then begin
            x:=q_reimp.Fields[0].value;tmdm:=tmdm+q_reimp.Fields[0].value;end;


         // depenses annulees
           annul:=0.0; q_annul.close;
           q_annul.Params[0].AsString:=f_principale.gestion.text;
           q_annul.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_annul.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
           q_annul.open;
           if  q_annul.Fields[0].asstring<>'' then begin
               x:=x-q_annul.Fields[0].value;tmdm:=tmdm-q_annul.Fields[0].value end;
          // annul1:=annul1+annul;
          // annul2:=annul2+annul;

        q_mdm.close;
        q_mdm.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_mdm.Params[1].Asstring:=f_principale.gestion.text;
        q_mdm.Params[2].Asdatetime:= strtodate(f_etats.xdate.text);
        q_mdm.open;
        s:='            ';
        s1:='     ';
        if  q_mdm.Fields[0].asstring<>'' then
          begin
            x:=x+ q_mdm.Fields[0].value;
            tmdm:=tmdm+q_mdm.Fields[0].value;
            //str(x:12:2,s);
            s:=formater_float(x);
            if cre_tot<>0.0 then begin
               taux2:=(x/cre_tot*100);
               str(taux2:5:2,s1);
                                 end
          end;
        qrlmdm.caption:=s+' ';
        qrltaux2.caption:=s1+' ';

        s:='            ';
        if (cre_tot<>0) or (x<>0) then s:=formater_float(cre_tot-x);
        qrlsolde2.caption:=s+' ';


  end;




procedure Tf_etat_credit.total(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      s:='            ';
      if tca<>0 then s:=formater_float(tca);
      qrltca.caption:=s+' ';

      s:='            ';
      if tep<>0 then s:=formater_float(tep);
      qrltep.caption:=s+' ';

      s:='            ';
      if tem<>0 then s:=formater_float(tem);
      qrltem.caption:=s+' ';

      s:='            ';
      if tca+tep-tem <>0 then s:=formater_float(tca+tep-tem);
      qrltdd.caption:=s+' ';

      s:='            ';
      if tmde<>0 then s:=formater_float(tmde);
      qrltme.caption:=s+' ';

      s1:='     ';
      if (tmde<>0) and  (tca+tep-tem<>0.0) then
                         s1:=formater_float(tmde/(tca+tep-tem)*100);
      qrltaux11.caption:=s1+' ';

      s:='            ';
      if tca+tep-tem-tmde<>0 then s:=formater_float((tca+tep-tem)-tmde);
      qrlsolde11.caption:=s+' ';

      s:='            ';
      if tmdm<>0 then s:=formater_float(tmdm);
      qrltdm.caption:=s+' ';

      s:='            ';
      if tca+tep-tem-tmdm<>0 then s:=formater_float((tca+tep-tem)-tmdm);
      qrlsolde22.caption:=s+' ';

      s1:='     ';
      if (tmdm<>0) and  (tca+tep-tem<>0.0) then
                         s1:=formater_float(tmdm/(tca+tep-tem)*100);
      qrltaux22.caption:=s1+' ';
end;

procedure Tf_etat_credit.initial_var(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      tca:=0.0;
      tep:=0.0;tem:=0.0;tdd:=0.0;tmde:=0.0;
      tmdm:=0.0;
      ldate.caption:=f_etats.xdate.text
end;



end.
