unit u_tableau3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, StdCtrls, Db,  Data.FMTBcd,System.Variants,
  Data.SqlExpr;

type
  Tf_tableau3 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel30: TQRLabel;
    QRBand2: TQRBand;
    Label22: TLabel;
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
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    qrlca: TQRLabel;
    qrlenmoins: TQRLabel;
    QRLdd: TQRLabel;
    qrlmdm: TQRLabel;
    qrlenplus: TQRLabel;
    qrltaux1: TQRLabel;
    qrlsolde1: TQRLabel;
    QRBand4: TQRBand;
    QRLabel37: TQRLabel;
    QRLTCA: TQRLabel;
    qrltep: TQRLabel;
    qrltem: TQRLabel;
    qrltdd: TQRLabel;
    qrltmdm: TQRLabel;
    QRltaux11: TQRLabel;
    qrlsolde11: TQRLabel;
    QRLabel31: TQRLabel;
    q_cre_affec: TSQLQuery;
    q_enplus: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_mdm: TSQLQuery;
    q_reimp: TSQLQuery;
    QRLabel46: TQRLabel;
    QRLabel29: TQRLabel;
    q_annul: TSQLQuery;
    q_annul_mois: TSQLQuery;
    q_annul_mois_ant: TSQLQuery;
    q_annul_ant: TSQLQuery;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    procedure init_var(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure total(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ligne(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure befor1(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_tableau3: Tf_tableau3;
  s,s1:string;
  tca,tep,tem,tdd,tmde,tmdm,annul,annul1,annul2,annul_ant:real;
implementation

uses MAIN, u_dm, u_etats, u_parameters_etat_x;

{$R *.DFM}

procedure Tf_tableau3.befor1(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
       qrlabel2.Caption:=' ? ? ? ? ?  ? ';
   if f_etats.SimpleDataSet_parameters3.locate('forme;champ',
                   vararrayof(['f_tableau3','qrlabel2']),[]) then
                    qrlabel2.Caption:=trim(f_etats.SimpleDataSet_parameters3.FieldByName('libellefr').AsString)
                    else begin
                        f_etats.SimpleDataSet_parameters3.Append;
                        f_etats.SimpleDataSet_parameters3.FieldByName('forme').AsString:='f_tableau3';
                        f_etats.SimpleDataSet_parameters3.FieldByName('champ').AsString:='qrlabel2';
                        f_etats.SimpleDataSet_parameters3.FieldByName('designation').AsString:='DIRECTION REGIONALE DU TRESOR  A GHARDAIA';
                        f_etats.SimpleDataSet_parameters3.FieldByName('libellefr').AsString:='DIRECTION REGIONALE DU TRESOR  A GHARDAIA';
                        f_etats.SimpleDataSet_parameters3.Post;s1:='x' ;
                    end;
 qrlabel30.Caption:=' ? ? ? ? ?  ? ';
   if f_etats.SimpleDataSet_parameters3.locate('forme;champ',
                   vararrayof(['f_tableau3','qrlabel30']),[]) then
                    qrlabel30.Caption:=trim(f_etats.SimpleDataSet_parameters3.FieldByName('libellefr').AsString)
                    else begin
                        f_etats.SimpleDataSet_parameters3.Append;
                        f_etats.SimpleDataSet_parameters3.FieldByName('forme').AsString:='f_tableau3';
                        f_etats.SimpleDataSet_parameters3.FieldByName('champ').AsString:='qrlabel30';
                        f_etats.SimpleDataSet_parameters3.FieldByName('designation').AsString:='ORDONNATEUR  110 347';
                        f_etats.SimpleDataSet_parameters3.FieldByName('libellefr').AsString:='ORDONNATEUR  110 347';
                        f_etats.SimpleDataSet_parameters3.Post;s1:='x' ;
                    end;
if s1='x'  then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_etats.SimpleDataSet_parameters3;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"état Tableau N°1 , validez ou resaisissez les nouvelles données ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                         end;
end;

procedure Tf_tableau3.init_var(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      tca:=0.0;
      tep:=0.0;tem:=0.0;tdd:=0.0;tmde:=0.0;
      tmdm:=0.0;
      qrlabel29.caption:=f_principale.GESTION.text
end;

procedure Tf_tableau3.total(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   s:='            ';
      if tca<>0 then str(tca:12:2,s);
      qrltca.caption:=s+' ';

      s:='            ';
      if tep<>0 then str(tep:12:2,s);
      qrltep.caption:=s+' ';

      s:='            ';
      if tem<>0 then str(tem:12:2,s);
      qrltem.caption:=s+' ';

      s:='            ';
      if tca+tep-tem <>0 then str(tca+tep-tem:12:2,s);
      qrltdd.caption:=s+' ';

      s:='            ';
      if tmdm<>0 then str(tmdm:12:2,s);
      qrltmdm.caption:=s+' ';

      s1:='     ';
      if (tmdm<>0) and  (tca+tep-tem<>0.0) then
                         str(tmdm/(tca+tep-tem)*100:5:2,s1);
      qrltaux11.caption:=s1+' ';

      s:='            ';
      if tca+tep-tem-tmdm<>0 then str((tca+tep-tem)-tmdm:12:2,s);
      qrlsolde11.caption:=s+' ';

end;

procedure Tf_tableau3.ligne(Sender: TQRCustomBand; var PrintBand: Boolean);
var cre_tot,taux1,x:real;
begin
       qrlabel33.caption:=trim(f_dm.ClientDataSet_chapitre.FieldByName('Libelle_chapitre').AsString);
       cre_tot:=0.0;q_cre_affec.close;
        q_cre_affec.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_cre_affec.Params[1].Asstring:=f_principale.gestion.text;
        q_cre_affec.open;
        s:='            ';
        if  q_cre_affec.Fields[0].asstring<>'' then
         begin
           tca:=tca+q_cre_affec.Fields[0].value;
           cre_tot:=cre_tot+q_cre_affec.Fields[0].value;
           str(q_cre_affec.Fields[0].value:12:2,s);
         end;
        qrlca.caption:=s+' ';
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
            str(q_enplus.Fields[0].value:12:2,s);
           end;
           qrlenplus.caption:=s+' ';

           q_enmoins.close;
           q_enmoins.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_enmoins.Params[1].Asstring:=f_principale.gestion.text;
           q_enmoins.open;
           s:='            ';
           if  q_enmoins.Fields[0].asstring<>'' then
             begin
             tem:=tem+q_enmoins.Fields[0].value;
             cre_tot:=cre_tot-q_enmoins.Fields[0].value;
             str(q_enmoins.Fields[0].value:12:2,s);
             end;
             qrlenmoins.caption:=s+' ';
           end;
        s:='            ';
        if cre_tot<>0 then str(cre_tot:12:2,s);
        qrldd.caption:=s+' ';

        x:=0;
        // Reimputations
        q_reimp.close;
        q_reimp.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_reimp.Params[1].Asstring:=f_principale.gestion.text;
        q_reimp.Params[2].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
        q_reimp.open;
        if  q_reimp.Fields[0].asstring<>'' then x:=x+q_reimp.Fields[0].value;






        {     // depenses annulees mois et antérieures
           annul_ant:=0.0; q_annul_mois_ant.close;
           q_annul_mois_ant.Params[0].AsString:=f_principale.gestion.text;
           q_annul_mois_ant.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
         //  q_annul_mois_ant.Params[2].AsString:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
           q_annul_mois_ant.Params[2].Asdatetime:=strtodate(f_etats.xdate.text);
          q_annul_mois_ant.open;

           if  q_annul_mois_ant.Fields[0].asstring<>'' then
               annul_ant:=q_annul_mois_ant.Fields[0].value;
          // annul1_ant:=annul1_ant+annul_ant;
         //  annul2_ant:=annul2_ant+annul_ant; }



         // depenses annulees
           annul_ant:=0.0; q_annul.close;
           q_annul.Params[0].AsString:=f_principale.gestion.text;
           q_annul.Params[1].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
           q_annul.Params[2].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);//strtodate(f_etats.xdate.text);
//           q_annul_ant.Params[3].Asdatetime:=strtodate('01/'+copy(f_etats.xdate.text,4,7));
           q_annul.open;

           if  q_annul.Fields[0].asstring<>'' then
               annul_ant:=q_annul.Fields[0].value;



        //Mandats
        q_mdm.close;
        q_mdm.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
        q_mdm.Params[1].Asstring:=f_principale.gestion.text;
        q_mdm.Params[2].Asdatetime:=strtodate(f_etats.xdate.text,FormatSettings1);
        q_mdm.open;
        if  q_mdm.Fields[0].asstring<>'' then x:=x+q_mdm.Fields[0].value;

         x:=x-annul_ant;
        s:='        0.00';
        s1:=' 0.00';
        if  x<>0 then
          begin
            tmdm:=tmdm+x;
            str(x:12:2,s);
            if cre_tot<>0.0 then begin
                  taux1:=x/cre_tot*100;
                  str(taux1:5:2,s1);
                               end
          end;
        qrlmdm.caption:=s+' ';
        qrltaux1.caption:=s1+' ';

        s:='        0.00';
        if cre_tot-x<>0 then str((cre_tot-x):11:2,s);
        qrlsolde1.caption:=s+' ';


end;





end.
