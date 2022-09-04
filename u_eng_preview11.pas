unit u_eng_preview11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, QuickRpt, Qrctrls, ExtCtrls, Db, DBTables,
  Unit_function_and_procedure, IBCustomDataSet, IBQuery,variants, IBSQL,
  Data.FMTBcd, Data.SqlExpr;

type
  Tf_eng_preview11 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    d1: TQRLabel;
    m1: TQRLabel;
    M6: TQRLabel;
    M3: TQRLabel;
    M7: TQRLabel;
    M2: TQRLabel;
    M9: TQRLabel;
    M4: TQRLabel;
    M10: TQRLabel;
    M12: TQRLabel;
    l1: TQRLabel;
    D3: TQRLabel;
    D4: TQRLabel;
    l15: TQRLabel;
    M13: TQRLabel;
    D2: TQRLabel;
    M8: TQRLabel;
    M11: TQRLabel;
    M5: TQRLabel;
    M14: TQRLabel;
    l13: TQRLabel;
    l3: TQRLabel;
    l4: TQRLabel;
    l5: TQRLabel;
    l6: TQRLabel;
    l7: TQRLabel;
    l8: TQRLabel;
    l9: TQRLabel;
    l10: TQRLabel;
    l11: TQRLabel;
    l12: TQRLabel;
    l2: TQRLabel;
    l14: TQRLabel;
    D5: TQRLabel;
    D6: TQRLabel;
    D7: TQRLabel;
    D8: TQRLabel;
    D11: TQRLabel;
    D12: TQRLabel;
    d13: TQRLabel;
    d14: TQRLabel;
    d15: TQRLabel;
    D9: TQRLabel;
    D10: TQRLabel;
    M15: TQRLabel;
    l16: TQRLabel;
    d17: TQRLabel;
    d19: TQRLabel;
    d16: TQRLabel;
    d20: TQRLabel;
    d18: TQRLabel;
    d24: TQRLabel;
    d25: TQRLabel;
    d22: TQRLabel;
    d21: TQRLabel;
    d23: TQRLabel;
    l17: TQRLabel;
    l18: TQRLabel;
    l19: TQRLabel;
    l20: TQRLabel;
    l21: TQRLabel;
    l22: TQRLabel;
    l23: TQRLabel;
    l25: TQRLabel;
    l24: TQRLabel;
    m16: TQRLabel;
    m17: TQRLabel;
    m18: TQRLabel;
    m19: TQRLabel;
    m20: TQRLabel;
    m21: TQRLabel;
    m22: TQRLabel;
    m23: TQRLabel;
    m24: TQRLabel;
    m25: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qrlas: TQRLabel;
    qrlns: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLs: TQRLabel;
    s_en_l: TQRLabel;
    QRLabel27: TQRLabel;
    QRL28: TQRLabel;
    QRLabel28: TQRLabel;
    qrld: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    o1: TQRLabel;
    o2: TQRLabel;
    o3: TQRLabel;
    o4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel3: TQRLabel;
    qrdate1: TQRLabel;
    qrlm: TQRLabel;
    Q1: TQRLabel;
    SQLQuery_as: TSQLQuery;
    SQLQuery2: TSQLQuery;
    sqlQuery_somme_eng_economie: TSQLQuery;
    SQLQuery1: TSQLQuery;
    procedure donnees(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  f_eng_preview11: Tf_eng_preview11;

implementation

uses MAIN, u_dm;

{$R *.DFM}

procedure Tf_eng_preview11.donnees(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var s1,s,s2:string;
      xas,xns,x:real;

begin
 x:=0;
   f_dm.ClientDataSet_credit.first;
   f_dm.simpledataset_det_eng.first;

   if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l1.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d1.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m1.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);

            f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          l1.caption:='               ';
          d1.caption:='                                                                                                       ';
          m1.caption:='                ';
       end;

    if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l2.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d2.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m2.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l2.caption:='               ';
          d2.caption:='                                                                                                       ';
          m2.caption:='                ';
       end;

    if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l3.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d3.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m3.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l3.caption:='               ';
          d3.caption:='                                                                                                       ';
          m3.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l4.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d4.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m4.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l4.caption:='               ';
          d4.caption:='                                                                                                       ';
          m4.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l5.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d5.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m5.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l5.caption:='               ';
          d5.caption:='                                                                                                       ';
          m5.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l6.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d6.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m6.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l6.caption:='               ';
          d6.caption:='                                                                                                       ';
          m6.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l7.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d7.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m7.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l7.caption:='               ';
          d7.caption:='                                                                                                       ';
          m7.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l8.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d8.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m8.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l8.caption:='               ';
          d8.caption:='                                                                                                       ';
          m8.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l9.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d9.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m9.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l9.caption:='               ';
          d9.caption:='                                                                                                       ';
          m9.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l10.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d10.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m10.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l10.caption:='               ';
          d10.caption:='                                                                                                       ';
          m10.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l11.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d11.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m11.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l11.caption:='               ';
          d11.caption:='                                                                                                       ';
          m11.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l12.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d12.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m12.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l12.caption:='               ';
          d12.caption:='                                                                                                       ';
          m12.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l13.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d13.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m13.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l13.caption:='               ';
          d13.caption:='                                                                                                       ';
          m13.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l14.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d14.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m14.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l14.caption:='               ';
          d14.caption:='                                                                                                       ';
          m14.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l15.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d15.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m15.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l15.caption:='               ';
          d15.caption:='                                                                                                       ';
          m15.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l16.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d16.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m16.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l16.caption:='               ';
          d16.caption:='                                                                                                       ';
          m16.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l17.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d17.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m17.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l17.caption:='               ';
          d17.caption:='                                                                                                       ';
          m17.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l18.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d18.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m18.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l18.caption:='               ';
          d18.caption:='                                                                                                       ';
          m18.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l19.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d19.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m19.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l19.caption:='               ';
          d19.caption:='                                                                                                       ';
          m19.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l20.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d20.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m20.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l20.caption:='               ';
          d20.caption:='                                                                                                       ';
          m20.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l21.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d21.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m21.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l21.caption:='               ';
          d21.caption:='                                                                                                       ';
          m21.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l22.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d22.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m22.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l22.caption:='               ';
          d22.caption:='                                                                                                       ';
          m22.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l23.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d23.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m23.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l23.caption:='               ';
          d23.caption:='                                                                                                       ';
          m23.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l24.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d24.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m24.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l24.caption:='               ';
          d24.caption:='                                                                                                       ';
          m24.caption:='                ';
       end;

       Q1.Enabled:=false;
       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l25.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d25.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m25.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
           if not f_dm.simpledataset_det_eng.eof then Q1.Enabled:=true;
       end
       else
       begin
          l25.caption:='               ';
          d25.caption:='                                                                                                       ';
          m25.caption:='                ';
       end;

   qrlm.Caption:=formater_float(x);
   qrls.caption:=formater_float(x);

   SQLQuery_as.Close;
   SQLQuery_as.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   SQLQuery_as.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   SQLQuery_as.Params[2].AsString:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   SQLQuery_as.Params[3].Asinteger:=f_dm.simpledataset_eng.fieldByName('fiche').asinteger;
   SQLQuery_as.open;

   sqlquery1.Close;
   sqlquery1.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery1.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery1.Params[2].asstring:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery1.open;

   sqlquery2.Close;
   sqlquery2.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery2.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery2.Params[2].asstring:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery2.open;

   sqlquery_somme_eng_economie.close;
   sqlquery_somme_eng_economie.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery_somme_eng_economie.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery_somme_eng_economie.Params[2].AsString:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery_somme_eng_economie.Params[3].AsSmallint:=f_dm.simpledataset_eng.fieldByName('fiche').asinteger;
   sqlquery_somme_eng_economie.open;

   xas:=0;


   // a faire
      // enlever les lignes de xas   sqlquery1.Fields[0].value  et
      // sqlquery2.Fields[0].value
      // et engager ceuci ...
      // pour que les etats soient corrects ...

    // Somme des crÈdits dÈlÈguÈs et en plus
  if  sqlquery1.Fields[0].asstring<>'' then
       xas:=sqlquery1.Fields[0].value;

    // Somme des crÈdits en moins
   if  sqlquery2.Fields[0].asstring<>'' then
       begin
        xas:=xas-sqlquery2.Fields[0].value;
       end;
    // Somme des engagements anterieurs en Èconomie///
   if sqlquery_somme_eng_economie.Fields[0].asstring<>'' then
      xas:=xas+sqlquery_somme_eng_economie.Fields[0].value;

  // Somme des engagements anterieurs en dÈpense////
  if   sqlquery_as.Fields[0].asstring<>'' then
         xas:=xas-sqlquery_as.Fields[0].value;


      if xas<>0 then qrlas.caption:=formater_float(xas) else qrlas.caption:='           ';
   /////////xxxxxxxxxxxx




  if f_dm.simpledataset_eng.fieldByName('objet').asstring='e'
  then x:=-x;

  if xas-x<>0 then  qrlns.caption:=formater_float(xas-x) else qrlns.caption:='           ';

if f_dm.simpledataset_eng.fieldByName('objet').asstring='d' then
      qrl28.caption:='‰‹›‹ﬁ‹…'
else  qrl28.caption:='«ﬁ‹ ‹’‹‹«œ';


 if f_dm.simpledataset_eng.fieldByName('objet').asstring='e'    // on le remet positif
  then x:=-x;



decodedate(f_dm.simpledataset_eng.Fieldbyname('dates').asdatetime,annee,mois,jour);
   qrdate1.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);



if x<100000000 then begin
    str(x:15:2,s1);s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
    s_en_l.caption:=somme_en_lettre(s);
    if s2<>'00' then s_en_l.caption:=s_en_l.caption+' '+s2+' ”‰ Ì‹„' ; end;



if f_dm.clientdataset_chapitre.locate('chapitre;article',vararrayof([f_dm.simpledataset_eng.fieldByName('chapitre').asstring,f_dm.simpledataset_eng.fieldByName('article').asstring]),[])
then qrld.caption:=f_dm.clientdataset_chapitre.fieldByName('libelle_arabe').asstring ;


o1.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne1').asstring);
o2.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne2').asstring);
o3.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne3').asstring);
o4.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne4').asstring);


end;


end.
