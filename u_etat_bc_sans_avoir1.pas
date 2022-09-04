unit u_etat_bc_sans_avoir1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,Unit_function_and_procedure;

type
  Tetat_bc_1 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    f1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    s: TQRLabel;
    f5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape19: TQRShape;
    QRShape17: TQRShape;
    QRShape20: TQRShape;
    date: TQRLabel;
    QRLabel27: TQRLabel;
    ll21: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape18: TQRShape;
    QRShape14: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    c2: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    c1: TQRLabel;
    c3: TQRLabel;
    c6: TQRLabel;
    c5: TQRLabel;
    c4: TQRLabel;
    QRLabel55: TQRLabel;
    vobs1: TQRLabel;
    vobs2: TQRLabel;
    vobs3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    f4: TQRLabel;
    f6: TQRLabel;
    f7: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    f11: TQRLabel;
    num: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    f8: TQRLabel;
    f9: TQRLabel;
    QRShape21: TQRShape;
    f10: TQRLabel;
    QRShape46: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    section: TQRLabel;
    chap: TQRLabel;
    art: TQRLabel;
    F13: TQRLabel;
    nom: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    l7: TQRLabel;
    l8: TQRLabel;
    l5: TQRLabel;
    l4: TQRLabel;
    l3: TQRLabel;
    l9: TQRLabel;
    l10: TQRLabel;
    l6: TQRLabel;
    l2: TQRLabel;
    QRShape36: TQRShape;
    QRLabel11: TQRLabel;
    n3: TQRLabel;
    n2: TQRLabel;
    n5: TQRLabel;
    n6: TQRLabel;
    n8: TQRLabel;
    n1: TQRLabel;
    n7: TQRLabel;
    n10: TQRLabel;
    n9: TQRLabel;
    n4: TQRLabel;
    l1: TQRLabel;
    N11: TQRLabel;
    N12: TQRLabel;
    N13: TQRLabel;
    N14: TQRLabel;
    N15: TQRLabel;
    N16: TQRLabel;
    N17: TQRLabel;
    N18: TQRLabel;
    N19: TQRLabel;
    N20: TQRLabel;
    N21: TQRLabel;
    N22: TQRLabel;
    N23: TQRLabel;
    l11: TQRLabel;
    l12: TQRLabel;
    l13: TQRLabel;
    l14: TQRLabel;
    l15: TQRLabel;
    l16: TQRLabel;
    l17: TQRLabel;
    l18: TQRLabel;
    l19: TQRLabel;
    l20: TQRLabel;
    l21: TQRLabel;
    l22: TQRLabel;
    l23: TQRLabel;
    u7: TQRLabel;
    u10: TQRLabel;
    u9: TQRLabel;
    u8: TQRLabel;
    u6: TQRLabel;
    u5: TQRLabel;
    u4: TQRLabel;
    u3: TQRLabel;
    u2: TQRLabel;
    u1: TQRLabel;
    u17: TQRLabel;
    u20: TQRLabel;
    u19: TQRLabel;
    u18: TQRLabel;
    u16: TQRLabel;
    u15: TQRLabel;
    u14: TQRLabel;
    u13: TQRLabel;
    u12: TQRLabel;
    u11: TQRLabel;
    p6: TQRLabel;
    p10: TQRLabel;
    p9: TQRLabel;
    p8: TQRLabel;
    p7: TQRLabel;
    p5: TQRLabel;
    p4: TQRLabel;
    p3: TQRLabel;
    p2: TQRLabel;
    p1: TQRLabel;
    p19: TQRLabel;
    p23: TQRLabel;
    p22: TQRLabel;
    p21: TQRLabel;
    p20: TQRLabel;
    p18: TQRLabel;
    p17: TQRLabel;
    p16: TQRLabel;
    p15: TQRLabel;
    p14: TQRLabel;
    q5: TQRLabel;
    q12: TQRLabel;
    q11: TQRLabel;
    q10: TQRLabel;
    q9: TQRLabel;
    q8: TQRLabel;
    q7: TQRLabel;
    q6: TQRLabel;
    q4: TQRLabel;
    q3: TQRLabel;
    q2: TQRLabel;
    q1: TQRLabel;
    q17: TQRLabel;
    q23: TQRLabel;
    q22: TQRLabel;
    q21: TQRLabel;
    q20: TQRLabel;
    q19: TQRLabel;
    q18: TQRLabel;
    q16: TQRLabel;
    q15: TQRLabel;
    q14: TQRLabel;
    q13: TQRLabel;
    m6: TQRLabel;
    M12: TQRLabel;
    M11: TQRLabel;
    m10: TQRLabel;
    m9: TQRLabel;
    m8: TQRLabel;
    m7: TQRLabel;
    m5: TQRLabel;
    m4: TQRLabel;
    m3: TQRLabel;
    m2: TQRLabel;
    m1: TQRLabel;
    M18: TQRLabel;
    M23: TQRLabel;
    M22: TQRLabel;
    M21: TQRLabel;
    M20: TQRLabel;
    M19: TQRLabel;
    M17: TQRLabel;
    M16: TQRLabel;
    M15: TQRLabel;
    M14: TQRLabel;
    M13: TQRLabel;
    u21: TQRLabel;
    u23: TQRLabel;
    u22: TQRLabel;
    p11: TQRLabel;
    p12: TQRLabel;
    p13: TQRLabel;
    QRLabel12: TQRLabel;
    procedure befor1(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure before2(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  etat_bc_1: Tetat_bc_1;tva:real;mt,total,totaltva,av:real;

implementation
   uses MAIN, u_dm;
{$R *.dfm}

procedure Tetat_bc_1.befor1(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
decodedate(f_dm.simpleDataSet_bc.Fieldbyname('dates').asdatetime,annee,mois,jour);
   date.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);

if f_dm.ClientDataSet_adm.locate('code',
         vararrayof([f_dm.simpledataset_bc.fieldbyname('structure').asstring]),[]) then
         nom.caption:=TRIM(f_dm.clientdataset_adm.fieldbyname('libelle_arabe').asstring);

  if f_dm.clientdataset_fournisseur.locate('benificiaire',
         vararrayof([f_dm.simpledataset_bc.fieldbyname('fournisseur').asstring]),[]) then begin
         f1.caption:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('nom').asstring);
       //  f2.caption:=f_dm.clientdataset_fournisseur.fieldbyname('lib').asstring;
         num.caption:=trim(f_dm.simpledataset_bc.fieldbyname('gestion').asstring)+'/'+
         trim(f_dm.simpledataset_bc.fieldbyname('bc1').asstring);
                       ;
         f4.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('adresse').asstring);
         f6.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('rc').asstring);
         f8.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('nf').asstring);
         f9.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('ai').asstring);
         f11.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('telephone').asstring);
         f10.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('entreprise').asstring);
         f13.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('BANQUE').asstring)
                      +' C. N° '+trim(f_dm.clientdataset_fournisseur.fieldbyname('COMPTE').asstring);
         vobs1.caption:=trim(f_dm.simpledataset_bc.fieldbyname('obs1').asstring);
         vobs2.caption:=trim(f_dm.simpledataset_bc.fieldbyname('obs2').asstring);
         vobs3.caption:=trim(f_dm.simpledataset_bc.fieldbyname('obs3').asstring);

        art.caption:=trim(f_dm.simpledataset_bc.fieldbyname('article').asstring);
        chap.caption:=trim(f_dm.simpledataset_bc.fieldbyname('chapitre').asstring);
        section.caption:=trim(f_dm.simpledataset_bc.fieldbyname('section').asstring);
         if f_dm.clientdataset_fournisseur.fieldbyname('artisant').asstring<>''then
           begin
         //   n1.caption:=f_dm.clientdataset_fournisseur.fieldbyname('nf').asstring;
           // n2.caption:=label2.caption
           end
         else
            begin
            // n2.caption:=label11.caption;
            // n1.caption:=f_dm.clientdataset_fournisseur.fieldbyname('nf').asstring;
            end;
        // nn1.caption:=f_dm.clientdataset_fournisseur.fieldbyname('rc').asstring;
end;
case strtoint(trim(f_dm.simpledataset_bc.fieldbyname('types').asstring)) of
    1:c1.Caption:=' X ';
    2:c2.Caption:='X';
    3:c3.Caption:='X';
    4:c4.Caption:=' X ';
    5:c5.Caption:=' X ';
    6:c6.Caption:='X';
end;

if  f_dm.clientdataset_adm.locate('code',
         vararrayof([f_dm.simpledataset_bc.fieldbyname('structure').asstring]),[]) then
         s.caption:=f_dm.clientdataset_adm.fieldbyname('libelle_arabe').asstring;

end;




procedure Tetat_bc_1.before2(Sender: TQRCustomBand; var PrintBand: Boolean);
var s,s1,s2:string;
begin
   if bool then begin
     if report>0 then begin
                        nn1.caption:='     ';
                        ll1.caption:=' ÇáãÌãÜÜÜæÚ ÇáÓÜÜÜÜÇÈÞ';
                        uu1.caption:='                              ';
                        pp1.caption:='                              ';
                        qq1.caption:='                              ';
                        str(report:12:2,s);
                        mm1.caption:=s;
           end   ;


   if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
         { if report>0 then begin
                        n1.caption:='     ';
                        l1.caption:=' ÇáãÌãÜÜÜæÚ ÇáÓÜÜÜÜÇÈÞ';
                        u1.caption:='                              ';
                        p1.caption:='                              ';
                         q1.caption:='                              ';
                        str(report:12:2,s);
                        m1.caption:=s;


          end
          else begin   }
                 n1.caption:=trim(inttostr(j));j:=j+1;
                 l1.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 u1.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                 str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                 q1.caption:=s;
                 if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                 else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                 p1.caption:=s;
                 mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                 str(mt:12:2,s);
                 m1.caption:=S;
                 tot:=tot+mt;
                 f_dm.simpledataset_bc_lignes.next;

               end;

     if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n2.caption:=trim(inttostr(j));j:=j+1;
      l2.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u2.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q2.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p2.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m2.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

     if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n3.caption:=trim(inttostr(j));j:=j+1;
      l3.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u3.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q3.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p3.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m3.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

     if not f_dm.simpledataset_bc_lignes.eof then begin
       n:=n-1;
      n4.caption:=trim(inttostr(j));j:=j+1;
      l4.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u4.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q4.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p4.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m4.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n5.caption:=trim(inttostr(j));j:=j+1;
      l5.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u5.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q5.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p5.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m5.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

     if not f_dm.simpledataset_bc_lignes.eof then begin
     n:=n-1;
      n6.caption:=trim(inttostr(j));j:=j+1;
      l6.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u6.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q6.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p6.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m6.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n7.caption:=trim(inttostr(j));j:=j+1;
      l7.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u7.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q7.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p7.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m7.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n8.caption:=trim(inttostr(j));j:=j+1;
      l8.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u8.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q8.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p8.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m8.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n9.caption:=trim(inttostr(j));j:=j+1;
      l9.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u9.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q9.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p9.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m9.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n10.caption:=trim(inttostr(j));j:=j+1;
      l10.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u10.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q10.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p10.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m10.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;



      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n11.caption:=trim(inttostr(j));j:=j+1;
      l11.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u11.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q11.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p11.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m11.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;
      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n12.caption:=trim(inttostr(j));j:=j+1;
      l12.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u12.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q12.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p12.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m12.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;
     if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n13.caption:=trim(inttostr(j));j:=j+1;
      l13.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u13.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q13.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p13.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m13.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

     if not f_dm.simpledataset_bc_lignes.eof then begin
     n:=n-1;
      n14.caption:=trim(inttostr(j));j:=j+1;
      l14.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u14.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q14.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p14.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m14.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n15.caption:=trim(inttostr(j));j:=j+1;
      l15.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u15.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q15.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p15.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m15.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

     if not f_dm.simpledataset_bc_lignes.eof then begin
     n:=n-1;
      n16.caption:=trim(inttostr(j));j:=j+1;
      l16.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u16.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q16.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p16.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m16.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n17.caption:=trim(inttostr(j));j:=j+1;
      l17.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u17.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q17.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p17.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m17.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n18.caption:=trim(inttostr(j));j:=j+1;
      l18.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u18.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q18.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p18.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m18.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n19.caption:=trim(inttostr(j));j:=j+1;
      l19.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u19.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q19.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p19.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m19.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n20.caption:=trim(inttostr(j));j:=j+1;
      l20.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u20.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q20.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p20.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m20.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;
      if not f_dm.simpledataset_bc_lignes.eof then begin
       n:=n-1;
      n21.caption:=trim(inttostr(j));j:=j+1;
      l21.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u21.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q21.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p21.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m21.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n22.caption:=trim(inttostr(j));j:=j+1;
      l22.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u22.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q22.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p22.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m22.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
      n:=n-1;
      n23.caption:=trim(inttostr(j));j:=j+1;
      l23.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
      u23.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
      str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
      q23.caption:=s;
      if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
         else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
      p23.caption:=s;
      mt:=f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
      str(mt:12:2,s);
      m23.caption:=S;
      tot:=tot+mt;
      f_dm.simpledataset_bc_lignes.next;
                                                 end;


      report:=report+tot;
      xx:=tot;
      
      bool:=false;

end;
end;

end.
