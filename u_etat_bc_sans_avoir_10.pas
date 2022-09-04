unit u_etat_bc_sans_avoir_10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Unit_function_and_procedure;

type
  Tf_etat_bc_sans_avoir_10 = class(TForm)
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
    ss: TQRLabel;
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
    l21: TQRShape;
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
    u1: TQRLabel;
    p1: TQRLabel;
    q1: TQRLabel;
    m1: TQRLabel;
    l7: TQRLabel;
    u2: TQRLabel;
    p2: TQRLabel;
    q2: TQRLabel;
    m2: TQRLabel;
    l8: TQRLabel;
    l5: TQRLabel;
    l4: TQRLabel;
    l3: TQRLabel;
    l9: TQRLabel;
    l10: TQRLabel;
    l6: TQRLabel;
    l2: TQRLabel;
    u3: TQRLabel;
    u4: TQRLabel;
    u5: TQRLabel;
    u6: TQRLabel;
    u7: TQRLabel;
    u8: TQRLabel;
    u9: TQRLabel;
    u10: TQRLabel;
    p3: TQRLabel;
    p4: TQRLabel;
    p5: TQRLabel;
    p6: TQRLabel;
    p7: TQRLabel;
    p8: TQRLabel;
    p9: TQRLabel;
    p10: TQRLabel;
    q3: TQRLabel;
    q4: TQRLabel;
    q5: TQRLabel;
    q6: TQRLabel;
    q7: TQRLabel;
    q8: TQRLabel;
    q9: TQRLabel;
    q10: TQRLabel;
    m3: TQRLabel;
    m4: TQRLabel;
    m5: TQRLabel;
    m6: TQRLabel;
    m7: TQRLabel;
    m8: TQRLabel;
    m9: TQRLabel;
    m10: TQRLabel;
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
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    qr40: TQRShape;
    qr39: TQRShape;
    qr42: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    qr16: TQRLabel;
    s_en_l: TQRLabel;
    qr17: TQRLabel;
    qr20: TQRLabel;
    qr21: TQRLabel;
    QR60: TQRLabel;
    QR59: TQRLabel;
    g1: TQRLabel;
    g3: TQRLabel;
    l1: TQRLabel;
    g2: TQRLabel;
    qtva: TQRLabel;
    qtv: TQRLabel;
    qr58: TQRLabel;
    mm1: TQRLabel;
    ll1: TQRLabel;
    QRLabel17: TQRLabel;
    TAM: TQRLabel;
    QRLabel20: TQRLabel;
   // procedure affecter1(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure befor1(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure befor2(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  f_etat_bc_sans_avoir_10: Tf_etat_bc_sans_avoir_10;tva:real;mt,total,totaltva,av:real;

implementation
 uses MAIN, u_dm, u_parameters, u_edit_bc, u_parameters_etat_x;
{$R *.dfm}


procedure Tf_etat_bc_sans_avoir_10.befor1(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  // INFORMATIONS PROPRES A UNE INSTALLATION ....
  s1:='' ;
 qrlabel9.Caption:=' ? ? ? ? ?  ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','qrlabel9']),[]) then
                    qrlabel9.Caption:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel9';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='ÕÌ‹‹“ „Œ’’ ·„’·Õ… «·„—«ﬁ»… «·„«·Ì…';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='»‹‹€‹‹—œ«Ì‹‹‹…';
                        f_edit_bc.SimpleDataSet_parameters.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=qrlabel9;designation=ÕÌ‹‹“ „Œ’’ ·„’·Õ… «·„—«ﬁ»… «·„«·Ì…'
                    end;

qrlabel39.Caption:=' ? ? ? ? ? ? ? ? ? ? ? ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','qrlabel39']),[]) then
                    qrlabel39.Caption:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel39';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='«· ”„Ì…';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹Ã‹‹Â‹‹ÊÌ‹‹‹… ··‹Œ“Ì‹‹‰‹‹… »‹‹€‹‹—œ«Ì‹‹…';
                        f_edit_bc.SimpleDataSet_parameters.Post; s1:='x' ;

                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=qrlabel39;designation=«· ”„Ì…'
                    end;


qrlabel38.Caption:=' ? ? ? ? ? ? ? ? ? ? ? ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','qrlabel38']),[]) then
                   qrlabel38.Caption:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel38';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='—„“ «·„”Ì‹‹— («·¬„‹‹— »«·’—›)';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='110 347';
                        f_edit_bc.SimpleDataSet_parameters.Post;
                        s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=qrlabel38;designation=—„“ «·„”Ì‹‹— («·¬„‹‹— »«·’—›) '
                    end;

qrlabel42.Caption:=' ? ? ? ? ? ? ? ? ? ? ? ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','qrlabel42']),[]) then
                   qrlabel42.Caption:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel42';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·‹⁄‹‰‹‹Ê«‰';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='”‹‹«Õ… Œ‹„‹‹Ì”‹‹ Ì €‹‹—œ«Ì‹‹‹‹‹‹‹…';
                        f_edit_bc.SimpleDataSet_parameters.Post;
                        s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=qrlabel42;designation=«·‹⁄‹‰‹‹Ê«‰  '
                    end;

qrlabel17.Caption:=' ? ? ? ? ? ? ? ? ? ? ? ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','qrlabel17']),[]) then
                   qrlabel17.Caption:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel17';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·‹Â‹‹« › Ê «·›«ﬂ” ';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='FAX 029 28 53 27     TEL 029 28 53 70';
                        f_edit_bc.SimpleDataSet_parameters.Post;
                        s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=qrlabel17;designation= «·‹Â‹‹« › Ê «·›«ﬂ”   '
                    end;

                    qr60.Caption:=' ? ? ? ? ? ? ? ? ? ? ? ';
                    if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',vararrayof(['f_etat_bc','qr60']),[]) then
                    qr60.Caption:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='qr60';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='......... »‹‹€—œ«Ì‹‹‹‹… , ›Ì';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:= '......... »‹‹€—œ«Ì‹‹‹‹… , ›Ì';
                        f_edit_bc.SimpleDataSet_parameters.Post; s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=q60;designation=......... »‹‹€—œ«Ì‹‹‹‹… , ›Ì'
                    end;

                    if s1='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_bc.SimpleDataSet_parameters;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"Ètat BC, validez ou resaisissez les nouvelles donnÈes ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                   end;
 decodedate(f_dm.simpleDataSet_bc.Fieldbyname('dates').asdatetime,annee,mois,jour);
   date.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);

  if f_dm.ClientDataSet_adm.locate('code',
         vararrayof([f_dm.simpledataset_bc.fieldbyname('structure').asstring]),[]) then
         //nom.caption:=TRIM(f_dm.clientdataset_adm.fieldbyname('libelle_arabe').asstring);
         qrlabel39.Caption:=qrlabel39.Caption+' - '+TRIM(f_dm.clientdataset_adm.fieldbyname('libelle_arabe').asstring);

  if f_dm.clientdataset_fournisseur.locate('benificiaire',
         vararrayof([f_dm.simpledataset_bc.fieldbyname('fournisseur').asstring]),[]) then begin
         f1.caption:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('nom').asstring);
         f5.caption:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('nom').asstring);
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
         if (trim(f_dm.simpledataset_bc.fieldbyname('au_compte_de').asstring))<>''
            then f5.caption:=trim(f_dm.simpledataset_bc.fieldbyname('au_compte_de').asstring);
         f13.caption:=trim(f_dm.clientdataset_fournisseur.fieldbyname('BANQUE').asstring)
                      +' C. N∞ '+trim(f_dm.clientdataset_fournisseur.fieldbyname('COMPTE').asstring);
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
case strtoint(trim(f_dm.simpledataset_bc.fieldbyname('types1').asstring)) of
    1:begin c4.Caption:=' X '; c5.Caption:='   ';c6.Caption:='   ' end;
    2:begin c5.Caption:=' X '; c4.Caption:='   ';c6.Caption:='   ' end;
    3:begin c6.Caption:=' X '; c5.Caption:='   ';c4.Caption:='   ' end;
end;

case strtoint(trim(f_dm.simpledataset_bc.fieldbyname('types').asstring)) of
    1:begin c1.Caption:=' X '; c2.Caption:='   ';c3.Caption:='   ' end;
    2:begin c2.Caption:=' X '; c1.Caption:='   ';c3.Caption:='   ' end;
    3:begin c3.Caption:=' X '; c1.Caption:='   ';c2.Caption:='   ' end;
    end;

if  f_dm.clientdataset_adm.locate('code',
         vararrayof([f_dm.simpledataset_bc.fieldbyname('structure').asstring]),[]) then
       //  s.caption:=f_dm.clientdataset_adm.fieldbyname('libelle_arabe').asstring;

end;



procedure Tf_etat_bc_sans_avoir_10.befor2(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var s,s1,s2:string;
begin

  
   tot:=0;
   if bool then begin

   if report>0 then begin
                    ll1.caption:=' «·„Ã„‹‹‹Ê⁄ «·”‹‹‹‹«»ﬁ';
                   // FloatToStrf(report,ffNumber,12,2);
                   // str(report:12:2,s);
                   mm1.caption:=FloatToStrf(report,ffNumber,12,2);
                      end ;
   if report=0 then begin
                      ll1.caption:='                          ';
                       mm1.caption:='                       ';
                    end ;

   if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l1.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n1.caption:=trim(inttostr(j));
                     u1.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q1.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p1.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m1.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;

               end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l2.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n2.caption:=trim(inttostr(j));
                     u2.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q2.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p2.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m2.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;

               end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l3.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n3.caption:=trim(inttostr(j));
                     u3.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q3.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p3.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m3.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;

               end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l4.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n4.caption:=trim(inttostr(j));
                     u4.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q4.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p4.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m4.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;
          end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l5.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n5.caption:=trim(inttostr(j));
                     u5.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q5.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p5.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m5.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;
          end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l6.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n6.caption:=trim(inttostr(j));
                     u6.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q6.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p6.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m6.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;
          end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l7.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n7.caption:=trim(inttostr(j));
                     u7.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q7.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p7.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m7.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;
          end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l8.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n8.caption:=trim(inttostr(j));
                     u8.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q8.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p8.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m8.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;
          end;
      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l9.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n9.caption:=trim(inttostr(j));
                     u9.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q9.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p9.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m9.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;
          end;

      if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
                 l10.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('lib').asstring);
                 if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then
                  begin
                     n10.caption:=trim(inttostr(j));
                     u10.caption:=trim(f_dm.simpledataset_bc_lignes.fieldbyname('unite').asstring);
                     str(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat:12:2,s);
                     q10.caption:=s;
                     if frac(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat)>0 then
                         str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:2,s)
                     else  str(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat:8:0,s);
                     p10.caption:=s;
                     mt:=(f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)*(f_dm.simpledataset_bc_lignes.fieldbyname('qt').asfloat);
                     m10.caption:=FloatToStrf(mt,ffNumber,12,2);
                     tot:=tot+mt;
                     j:=j+1;
                 end;
                 f_dm.simpledataset_bc_lignes.next;
          end;

      report:=report+tot;
      //xx:=tot;
       str(report:12:2,s);g1.caption:=FloatToStrf(report,ffNumber,12,2);//S;
      // total:=total+tot;
       tva:=0.0;
       if (f_dm.simpledataset_bc.fieldbyname('tva').asfloat)<>0 then begin
               qrlabel13.caption:='„. —”„ «·ﬁÌ„… «·„÷«›…';
               qtv.caption:='                                            ' ;
               tva:=(report*0.01*f_dm.simpledataset_bc.fieldbyname('tva').asfloat);
               //totaltva:=totaltva+tva;
               str(f_dm.simpledataset_bc.fieldbyname('tva').asfloat:4:2,s);
               qtva.caption:=s+'%';
               str(tva:12:2,s);
               g2.caption:=FloatToStrf(tva,ffNumber,12,2);
               qrlabel12.caption:='«·„»·‹‹‹‹€ »œÊ‰ «·—”‹‹„';
               qrlabel15.caption:='«·„»·€ «·«Ã„«·Ì';
                end

           else begin
                      qtv.caption:='€Ì— Œ«÷‹‹⁄ ·÷—Ì‹‹‹»… «·—”„ ⁄·Ï «·ﬁÌ„… «·„÷«›…' ;
                      qtva.caption:='            ';qrlabel13.caption:='            ';
                      qrlabel12.caption:='«·„»·€ «·«Ã„«·Ì';
                      g2.caption:='              '; qrlabel15.caption:='             ';
           end;

      report:=report+tva;str(report:12:2,s);
      if (f_dm.simpledataset_bc.fieldbyname('tva').asfloat)<>0 then
       g3.caption:=FloatToStrf(report,ffNumber,12,2) else g3.caption:='               ';
       //total:=total+xx;

       // total:=xx;
        s:='                   ';
        if (trim(f_dm.simpledataset_bc.FieldByName('delais').Asstring))='»⁄œ  ”·Ì„ Â' then
                    s:=' .»⁄œ  ”·Ì„ Â–« «·ÿ·» '
         else // (trim(f_dm.simpledataset_bc.FieldByName('delais').Asstring))<>'' then
                    s:=' » '+trim(f_dm.simpledataset_bc.FieldByName('delais').Asstring)+' ÊÂ–«  «» œ«¡ „‰  «—ÌŒ «„÷«¡ Â–« «·”‰œ ' ;
         qr58.Caption:=trim(s);//+' ÊÂ–«  «» œ«¡ „‰  «—ÌŒ «„÷«¡ Â–« «·”‰œ '   ;

        TAM.Caption:=trim(f_dm.simpledataset_bc.FieldByName('tam').Asstring);

        if report<100000000 then begin
             str(report:15:2,s1);

              s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);

              s_en_l.caption:=somme_en_lettre(s);
              if s2<>'00' then s_en_l.caption:=s_en_l.caption+' '+s2+' ”‰ Ì„' ;
                              end;
      end;

     // end;
      bool:=false;

end;

end.
