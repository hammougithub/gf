unit u_eng_preview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, QuickRpt, Qrctrls, ExtCtrls, Db, DBTables,
  Unit_function_and_procedure;

type
  Tf_eng_preview = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
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
    qrlm: TQRLabel;
    qrlns: TQRLabel;
    Query_as: TQuery;
    Query1: TQuery;
    Query2: TQuery;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLs: TQRLabel;
    s_en_l: TQRLabel;
    QRLabel27: TQRLabel;
    QRL28: TQRLabel;
    Query_somme_eng_economie: TQuery;
    QRLabel28: TQRLabel;
    qrld: TQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    procedure donnees(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_eng_preview: Tf_eng_preview;

implementation

uses MAIN;

{$R *.DFM}

procedure Tf_eng_preview.donnees(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var s1,s:string;
      xas,xns,x:single;

begin
   x:=0;
   f_principale.t_det_eng.first;
   if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l1.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d1.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
            str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m1.caption:=s;
            f_principale.t_det_eng.next;
       end
       else
       begin
          l1.caption:='               ';
          d1.caption:='                                                                                                       ';
          m1.caption:='                ';
       end;

    if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l2.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d2.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
            str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m2.caption:=s;
            f_principale.t_det_eng.next;
       end;


    if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l3.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d3.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m3.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l3.caption:='               ';
          d3.caption:='                                                                                                       ';
          m3.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l4.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d4.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m4.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l4.caption:='               ';
          d4.caption:='                                                                                                       ';
          m4.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l5.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d5.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m5.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l5.caption:='               ';
          d5.caption:='                                                                                                       ';
          m5.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
             x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l6.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d6.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m6.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l6.caption:='               ';
          d6.caption:='                                                                                                       ';
          m6.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l7.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d7.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m7.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l7.caption:='               ';
          d7.caption:='                                                                                                       ';
          m7.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l8.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d8.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m8.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l8.caption:='               ';
          d8.caption:='                                                                                                       ';
          m8.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l9.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d9.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m9.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l9.caption:='               ';
          d9.caption:='                                                                                                       ';
          m9.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
             x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l10.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d10.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m10.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l10.caption:='               ';
          d10.caption:='                                                                                                       ';
          m10.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l11.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d11.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
             m11.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l11.caption:='               ';
          d11.caption:='                                                                                                       ';
          m11.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l12.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d12.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m12.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l12.caption:='               ';
          d12.caption:='                                                                                                       ';
          m12.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l13.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d13.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m13.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l13.caption:='               ';
          d13.caption:='                                                                                                       ';
          m13.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l14.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d14.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m14.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l14.caption:='               ';
          d14.caption:='                                                                                                       ';
          m14.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l15.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d15.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m15.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l15.caption:='               ';
          d15.caption:='                                                                                                       ';
          m15.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l16.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d16.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m16.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l16.caption:='               ';
          d16.caption:='                                                                                                       ';
          m16.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
             x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l17.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d17.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m17.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l17.caption:='               ';
          d17.caption:='                                                                                                       ';
          m17.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l18.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d18.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m18.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l18.caption:='               ';
          d18.caption:='                                                                                                       ';
          m18.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l19.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d19.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m19.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l19.caption:='               ';
          d19.caption:='                                                                                                       ';
          m19.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l20.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d20.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m20.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l20.caption:='               ';
          d20.caption:='                                                                                                       ';
          m20.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l21.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d21.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m21.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l21.caption:='               ';
          d21.caption:='                                                                                                       ';
          m21.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l22.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d22.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m22.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l22.caption:='               ';
          d22.caption:='                                                                                                       ';
          m22.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l23.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d23.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m23.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l23.caption:='               ';
          d23.caption:='                                                                                                       ';
          m23.caption:='                ';
       end;

        if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l24.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d24.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m24.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l24.caption:='               ';
          d24.caption:='                                                                                                       ';
          m24.caption:='                ';
       end;

       if not f_principale.t_det_eng.eof then
       begin
            x:=x+f_principale.t_det_eng.fieldByName('montant').asfloat;
            l25.Caption:=f_principale.t_det_eng.fieldByName('ligne').asstring;
            d25.Caption:=f_principale.t_det_eng.fieldByName('designation').asstring;
             str(f_principale.t_det_eng.fieldByName('montant').asfloat:11:2,s);
            m25.caption:=s;
            f_principale.t_det_eng.next;
       end
        else
       begin
          l25.caption:='               ';
          d25.caption:='                                                                                                       ';
          m25.caption:='                ';
       end;
   str(x:11:2,s);
   qrlm.Caption:=s;


   query_as.Params[0].AsString:=f_principale.t_engagement.fieldByName('gestion').asstring;
   query_as.Params[1].AsString:=f_principale.t_engagement.fieldByName('chapitre').asstring;
   query_as.Params[2].AsString:=f_principale.t_engagement.fieldByName('article').asstring;
   query_as.Params[3].AsString:=f_principale.t_engagement.fieldByName('fiche').asstring;
   query_as.close;
   query_as.prepare;
   query_as.open;

   query1.Params[0].AsString:=f_principale.t_engagement.fieldByName('gestion').asstring;
   query1.Params[1].AsString:=f_principale.t_engagement.fieldByName('chapitre').asstring;
   query1.Params[2].asstring:=f_principale.t_engagement.fieldByName('article').asstring;
   query1.close;
   query1.prepare;
   query1.open;


   query2.Params[0].AsString:=f_principale.t_engagement.fieldByName('gestion').asstring;
   query2.Params[1].AsString:=f_principale.t_engagement.fieldByName('chapitre').asstring;
   query2.Params[2].asstring:=f_principale.t_engagement.fieldByName('article').asstring;
   query2.close;
   query2.prepare;
   query2.open;

   query_somme_eng_economie.Params[0].AsString:=f_principale.t_engagement.fieldByName('gestion').asstring;
   query_somme_eng_economie.Params[1].AsString:=f_principale.t_engagement.fieldByName('chapitre').asstring;
   query_somme_eng_economie.Params[2].AsString:=f_principale.t_engagement.fieldByName('article').asstring;
   query_somme_eng_economie.Params[3].AsString:=f_principale.t_engagement.fieldByName('fiche').asstring;
   query_somme_eng_economie.close;
   query_somme_eng_economie.prepare;
   query_somme_eng_economie.open;

   xas:=0;

    // Somme des crédits délégués et en plus
   if  query1.Fields[0].asstring<>'' then
       xas:=query1.Fields[0].value;

    // Somme des crédits en moins
   if  query2.Fields[0].asstring<>'' then
       xas:=xas-query2.Fields[0].value;

    // Somme des engagements anterieurs en économie///
   if Query_somme_eng_economie.Fields[0].asstring<>'' then
      xas:=xas+Query_somme_eng_economie.Fields[0].value;

   // Somme des engagements anterieurs en dépense////
   if  query_as.Fields[0].asstring<>'' then
         xas:=xas-query_as.Fields[0].value;


      if xas<>0 then begin
               str(xas:11:2,s);
               qrlas.caption:=s
               end
             else
             qrlas.caption:='           ';

  if f_principale.t_engagement.fieldByName('objet').asstring='e'
  then x:=-x;

  if xas-x<>0 then begin
               str(xas-x:11:2,s);
               qrlns.caption:=s;
               end
            else
               qrlns.caption:='           ';

if f_principale.t_engagement.fieldByName('objet').asstring='d' then
      qrl28.caption:='äÜÝÜÞÜÜÜÉ'
else  qrl28.caption:='ÇÞÜÊÜÕÜÜÇÏ';

if f_principale.t_engagement.fieldByName('objet').asstring='e'
  then x:=-x;

str(x:11:2,s);
qrls.caption:=s;

str(frac(x)*100:2:0,s1);
str(trunc(x),s);
s_en_l.caption:=somme_en_lettre(s);

if  frac(x)>0 then
       s_en_l.caption:=somme_en_lettre(s)+' '+s1+' ÓäÊíã'
   else
       s_en_l.caption:=somme_en_lettre(s)+' ';


if f_principale.t_chapitre.FindKey([f_principale.t_engagement.fieldByName('chapitre').asstring,f_principale.t_engagement.fieldByName('article').asstring])
then qrld.caption:=f_principale.t_chapitre.fieldByName('libelle_arabe').asstring

end;
end.
