unit u_etat_bc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, StdCtrls,variants,
  Unit_function_and_procedure, QRXMLSFilt, QRExport, QRPDFFilt;

type
  Tf_etat_bc = class(TForm)
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
    s: TQRLabel;
    f5: TQRLabel;
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
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
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
    pp: TQRLabel;
    l1: TQRLabel;
    QQ1: TQRLabel;
    QQ2: TQRLabel;
    V2: TQRShape;
    V1: TQRShape;
    v3: TQRShape;
    v5: TQRShape;
    G4: TQRLabel;
    G5: TQRLabel;
    v4: TQRShape;
    g2: TQRLabel;
    qtva: TQRLabel;
    qtv: TQRLabel;
    v33: TQRShape;
    v6: TQRShape;
    qr58: TQRLabel;
    QRLabel17: TQRLabel;
    TAM: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure affecter1(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure affecter2(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure moins20(Sender: TQRCustomBand; BandPrinted: Boolean);


  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  f_etat_bc: Tf_etat_bc;tva:real;mt,total,totaltva,av:real;
implementation

uses MAIN, u_dm, u_parameters, u_edit_bc, u_parameters_etat_x;

{$R *.DFM}





procedure Tf_etat_bc.affecter1(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
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
         s.caption:=f_dm.clientdataset_adm.fieldbyname('libelle_arabe').asstring;

end;


procedure visible_composants;
begin
  //f_etat_bc.v4.Enabled:=true;
  f_etat_bc.v33.Enabled:=true;
  f_etat_bc.v6.Enabled:=true;
  f_etat_bc.v5.Enabled:=true;
  f_etat_bc.qrlabel13.Enabled:=true;
  f_etat_bc.qrlabel15.Enabled:=true;
  f_etat_bc.qr42.Enabled:=true;
  f_etat_bc.qr40.Enabled:=true;
  f_etat_bc.qr16.Enabled:=true;
  f_etat_bc.qr39.Enabled:=true;
  f_etat_bc.s_en_l.Enabled:=true;
  f_etat_bc.qr17.Enabled:=true;
  f_etat_bc.qr20.Enabled:=true;
  f_etat_bc.qr20.Enabled:=true;
  f_etat_bc.qr21.enabled:=true;
  f_etat_bc.qr58.Enabled:=true;
  //f_etat_bc.qdelais.Enabled:=true;
  f_etat_bc.qr60.enabled:=true;
  f_etat_bc.qr59.Enabled:=true;
  f_etat_bc.qrshape38.Enabled:=true;
  f_etat_bc.qtva.Enabled:=true;
end;

procedure not_visible_composants;
begin
  f_etat_bc.qrlabel13.Enabled:=false;
  f_etat_bc.qrlabel15.Enabled:=false;
  f_etat_bc.v6.Enabled:=false;
  f_etat_bc.v5.Enabled:=false;
  f_etat_bc.v33.Enabled:=false;
 // f_etat_bc.v4.Enabled:=false;
  f_etat_bc.qr42.Enabled:=false;
  f_etat_bc.qr40.Enabled:=false;
  f_etat_bc.qr16.Enabled:=false;
  f_etat_bc.qr39.Enabled:=false;
  f_etat_bc.s_en_l.Enabled:=false;
  f_etat_bc.qr17.Enabled:=false;
  f_etat_bc.qr20.Enabled:=false;
  f_etat_bc.qr20.Enabled:=false;
  f_etat_bc.qr21.enabled:=false;
  f_etat_bc.qr58.Enabled:=false;
  //f_etat_bc.qdelais.Enabled:=false;
  f_etat_bc.qr60.enabled:=false;
  f_etat_bc.qr59.Enabled:=false;
  f_etat_bc.qrshape38.Enabled:=false;
   f_etat_bc.qtva.Enabled:=false;
end;

procedure Tf_etat_bc.affecter2(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var s,s1,s2:string;
begin

{qr60.Caption:=' ? ? ? ? ? ? ? ? ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','qr60']),[]) then
                    qr60.Caption:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        if f_parameters.WindowState=wsMinimized  then f_parameters.WindowState:=wsMaximized ;
                        f_parameters.visible:=true;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=qr60;designation=......... »‹‹€—œ«Ì‹‹‹‹… , ›Ì'
                    end;}

   if bool then begin

        if f_dm.simpledataset_bc.FieldByName('avoir').AsFloat>0 then
               begin
               av:=f_dm.simpledataset_bc.FieldByName('avoir').AsFloat;
               qq1.caption:='AVOIR';  qq2.caption:='«·„Ã„Ê⁄ «·⁄«„ »ﬂ· «·—”Ê„';
               V1.visible:=true;V2.Enabled:=true;
               V3.Enabled:=true;V4.Enabled:=true;  V5.Enabled:=true;
               qr40.Top:=331;   qr16.Top:=334; qq2.top:=313;
               qr39.Top:=371;qr42.Top:=331;
               qr17.Top:=375;   qr20.Top:=394;
               //qdelais.Top:=411;
               qr21.Top:=411;qr58.Top:=411;
               pp.Top:=379;  s_en_l.Top:=352
               end;

         if f_dm.simpledataset_bc.FieldByName('avoir').AsFloat=0 then
               begin
               av:=0.0;
               V1.visible:=false;V1.Enabled:=false;
               V2.visible:=false;V2.Enabled:=false;
               V3.visible:=false;V3.Enabled:=false;
               V4.visible:=false;V4.Enabled:=false;
               V5.Enabled:=false;V5.Enabled:=false;

               qq1.caption:='                            ';  qq2.caption:='                          ';
               g4.caption:='                        ';  g5.caption:='                          ';
               qq2.top:=304;
               qr40.Top:=289;   qr16.Top:=292;
               qr39.Top:=327;qr42.Top:=289;
               qr17.Top:=333;   qr20.Top:=352;
               qr21.Top:=369;qr58.Top:=369; //qdelais.Top:=369;
               pp.Top:=337;  s_en_l.Top:=310; end;








   if not f_dm.simpledataset_bc_lignes.eof then begin
          n:=n-1;
          if report>0 then begin
                        n1.caption:='     ';
                        l1.caption:=' «·„Ã„‹‹‹Ê⁄ «·”‹‹‹‹«»ﬁ';
                        u1.caption:='                              ';
                        p1.caption:='                              ';
                         q1.caption:='                              ';
                        str(report:12:2,s);
                        m1.caption:=s;


          end
          else begin
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
                                                // end;
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

      report:=report+tot;
      xx:=tot;
       str(report:12:2,s);g1.caption:=s;
      // total:=total+tot;
       tva:=0.0;
       if (f_dm.simpledataset_bc.fieldbyname('tva').asfloat)<>0 then begin
               tva:=(xx*0.01*f_dm.simpledataset_bc.fieldbyname('tva').asfloat);
               totaltva:=totaltva+tva;
               str(f_dm.simpledataset_bc.fieldbyname('tva').asfloat:4:2,s);
               qtva.caption:='               ';
               if f_dm.simpledataset_bc_lignes.eof then  qtva.caption:=s+'%';
                   qrlabel15.Caption:='«·„»·€ »Õ”«» ﬂ· «·—”Ê„';
                   qrlabel13.Caption:='„. —”„ «·ﬁÌ„… «·„÷«›…';
                   qrlabel12.Caption:='«·„»·‹‹‹‹€ »œÊ‰ «·—”‹‹„';
                   if av>0 then  qq2.Caption:='«·„Ã„Ê⁄ «·⁄«„ »Õ”«» ﬂ· «·—”Ê„';
                   qtv.caption:='                                   ';

                   str(totaltva:12:2,s);
                   g2.caption:='               ';
                   if f_dm.simpledataset_bc_lignes.eof then g2.caption:=s;
                end
           else begin
                      qtv.caption:='€Ì— Œ«÷‹‹⁄ ·÷—Ì‹‹‹»… «·—”„ ⁄·Ï «·ﬁÌ„… «·„÷«›…' ;
                      qrlabel15.caption:='«·„»·€ «·⁄‹‹‹‹«„';
                      if av>0 then  qq2.Caption:='«·„Ã„‹‹Ê⁄ «·⁄‹‹‹«„';
                      qtva.caption:='            ';
                      qrlabel13.Caption:='                        ';
                      qrlabel12.Caption:='«·„»·€ «·Ã“∆Ì';
           end;

       xx:=xx+tva;str(xx:12:2,s); g3.caption:='               ';




       if f_dm.simpledataset_bc_lignes.eof then g3.caption:=s;
       total:=total+xx;


      if not f_dm.simpledataset_bc_lignes.eof then begin
        not_visible_composants;
        pp.caption:='. . . /. . .';
        qrlabel12.caption:='«·‹„»·‹‹‹‹€ «·„—Õ‹·'
       // f_etat_bc.quickrep1.Preview;
        //f_etat_bc.quickrep1.Print;
      end;

      if f_dm.simpledataset_bc_lignes.eof then begin
         qrlabel12.caption:='«·„»·€ »œÊ‰ «·—”„';
         visible_composants;
          s:='                   ';
        if (trim(f_dm.simpledataset_bc.FieldByName('delais').Asstring))='»⁄œ  ”·Ì„ Â' then
                    s:=' .»⁄œ  ”·Ì„ Â–« «·ÿ·» '
         else // (trim(f_dm.simpledataset_bc.FieldByName('delais').Asstring))<>'' then
                    s:=' » '+trim(f_dm.simpledataset_bc.FieldByName('delais').Asstring)+' ÊÂ–«  «» œ«¡ „‰  «—ÌŒ «„÷«¡ Â–« «·”‰œ ' ;
         qr58.Caption:=trim(s);//+' ÊÂ–«  «» œ«¡ „‰  «—ÌŒ «„÷«¡ Â–« «·”‰œ '   ;
         TAM.Caption:=trim(f_dm.simpledataset_bc.FieldByName('tam').Asstring);
         str(total:15:2,s1);
         g3.caption:=s1;
        pp.caption:='              ';
        if av>0 then begin   //f_dm.simpledataset_bc.FieldByName('avoir').AsFloat
             str(av:12:2,s);
             g4.Caption:=s;
             total:=total-av; s2:='                ';
             str(total:12:2,s2);
             g5.caption:=s2;
           end;
        if total<100000000 then begin
             str(total:15:2,s1);

              s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);

              s_en_l.caption:=somme_en_lettre(s);
              if s2<>'00' then s_en_l.caption:=s_en_l.caption+' '+s2+' ”‰ Ì„' ;
                              end;
      end;

      end;
      bool:=false;

end;
end;



procedure Tf_etat_bc.moins20(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
 {       if f_dm.simpledataset_bc.FieldByName('avoir').AsFloat<>0 then begin
        V1.Enabled:=false;V2.Enabled:=false;
      V3.Enabled:=false;V4.Enabled:=false;
      qq1.Visible:=false; qq2.Visible:=false;
      g5.Visible:=false; g4.Visible:=false;
      qrshape39.Top:=qrshape39.Top-20;
      qrshape40.Top:=qrshape40.Top-20;
      qrshape41.Top:=qrshape41.Top-20;
      qrshape42.Top:=qrshape42.Top-20;
      qrlabel17.Top:=qrlabel17.Top-20;
      qrlabel20.Top:=qrlabel20.Top-20;
      qrlabel16.Top:=qrlabel16.Top-20;
       qrlabel21.Top:=qrlabel21.Top-20;
      qrlabel58.Top:=qrlabel58.Top-20;
      qrlabel56.Top:=qrlabel56.Top-20;
      qrlabel57.Top:=qrlabel57.Top-20;
      pp.Top:=pp.Top-20;
      s_en_l.Top:=s_en_l.Top-20;
    end;   }
end;

end.
