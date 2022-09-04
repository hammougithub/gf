unit u_etat_virement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls,Unit_function_and_procedure;

type
  Tf_etat_virement = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    l_a: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    nom: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRLabel9: TQRLabel;
    somme: TQRExpr;
    s_en_l: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel36: TQRLabel;
    qrdate1: TQRLabel;
    qrdate2: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    procedure imp(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure avant_imp(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure befor_print(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure avant_imp_qr(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  f_etat_virement: Tf_etat_virement;

implementation

uses main,u_dm, u_edit_etat_virement, U_Parameters_etat_xxx;

{$R *.dfm}

procedure Tf_etat_virement.imp(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    nom.Caption:=' '+trim(F_edit_etat_virement.ClientDataSet_lignes.Fieldbyname('nom').asstring)+' ';
end;

procedure Tf_etat_virement.avant_imp(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       l_a.caption:=trim(F_edit_etat_virement.ClientDataSet_lignes.fieldByName('libelle_arabe').asstring);
        decodedate(f_dm.sm.Fieldbyname('dates').asdatetime,annee,mois,jour);
        qrdate1.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);
end;

procedure Tf_etat_virement.avant_imp_qr(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   s1:='';
   qrlabel15.Caption:=' ? ? ? ? ?  ? ';
   if f_dm.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_virement','qrlabel15']),[]) then
                    qrlabel15.Caption:=trim(f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_dm.SimpleDataSet_parameters.Append;
                        f_dm.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_virement';
                        f_dm.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel15';
                        f_dm.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·Ã„‹‹Â‹‹Ê—Ì‹‹… «·‹Ã‹“«∆‹‹—Ì‹‹… «·‹œÌ‹‹„‹Êﬁ‹—«ÿ‹Ì‹‹… «·‹‘‹⁄‹»‹Ì‹…';
                        f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·Ã„‹‹Â‹‹Ê—Ì‹‹… «·‹Ã‹“«∆‹‹—Ì‹‹… «·‹œÌ‹‹„‹Êﬁ‹—«ÿ‹Ì‹‹… «·‹‘‹⁄‹»‹Ì‹…';
                        f_dm.SimpleDataSet_parameters.Post;s1:='x' ;
                    end;

qrlabel2.Caption:=' ? ? ? ? ?  ? ';
if f_dm.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_virement','qrlabel2']),[]) then
                    qrlabel2.Caption:=trim(f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_dm.SimpleDataSet_parameters.Append;
                        f_dm.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_virement';
                        f_dm.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel2';
                        f_dm.SimpleDataSet_parameters.FieldByName('designation').AsString:='Ê“«—… «·‹‹‹„‹‹«·‹‹Ì‹‹‹‹…';
                        f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString:='Ê“«—… «·‹‹‹„‹‹«·‹‹Ì‹‹‹‹…';
                        f_dm.SimpleDataSet_parameters.Post;s1:='x';
                    end;

qrlabel12.Caption:=' ? ? ? ? ?  ? ';
if f_dm.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_virement','qrlabel12']),[]) then
                    qrlabel12.Caption:=trim(f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_dm.SimpleDataSet_parameters.Append;
                        f_dm.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_virement';
                        f_dm.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel12';
                        f_dm.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹‹‹⁄‹‹«„‹‹‹‹… ··„‹‹Õ‹‹«”‹‹‹‹»‹‹‹…';
                        f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹‹‹⁄‹‹«„‹‹‹‹… ··„‹‹Õ‹‹«”‹‹‹‹»‹‹‹…';
                        f_dm.SimpleDataSet_parameters.Post;s1:='x';
                    end;

qrlabel3.Caption:=' ? ? ? ? ?  ? ';
if f_dm.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_virement','qrlabel3']),[]) then
                    qrlabel3.Caption:=trim(f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_dm.SimpleDataSet_parameters.Append;
                        f_dm.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_virement';
                        f_dm.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel3';
                        f_dm.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹Ã‹‹Â‹‹ÊÌ‹‹‹… ··‹Œ“Ì‹‹‰‹‹… »‹‹€‹‹—œ«Ì‹‹‹‹…';
                        f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹Ã‹‹Â‹‹ÊÌ‹‹‹… ··‹Œ“Ì‹‹‰‹‹… »‹‹€‹‹—œ«Ì‹‹‹‹…';
                        f_dm.SimpleDataSet_parameters.Post;s1:='x';
                    end;

qrlabel1.Caption:=' ? ? ? ? ?  ? ';
if f_dm.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_virement','qrlabel1']),[]) then
                    qrlabel1.Caption:=trim(f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_dm.SimpleDataSet_parameters.Append;
                        f_dm.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_virement';
                        f_dm.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel1';
                        f_dm.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹›—⁄Ì… ··„Ì“«‰Ì… Ê «·Ê”«∆·';
                        f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹›—⁄Ì… ··„Ì“«‰Ì… Ê «·Ê”«∆·';
                        f_dm.SimpleDataSet_parameters.Post;s1:='x';
                    end;



qrlabel10.Caption:=' ? ? ? ? ?  ? ';
if f_dm.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_virement','qrlabel10']),[]) then
                    qrlabel10.Caption:=trim(f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_dm.SimpleDataSet_parameters.Append;
                        f_dm.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_virement';
                        f_dm.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel10';
                        f_dm.SimpleDataSet_parameters.FieldByName('designation').AsString:='€‹‹‹—œ«Ì‹‹‹‹‹… ÌÊ„';
                        f_dm.SimpleDataSet_parameters.FieldByName('libellear').AsString:='€‹‹‹—œ«Ì‹‹‹‹‹… ÌÊ„';
                        f_dm.SimpleDataSet_parameters.Post;s1:='x';
                    end;

  
end;

procedure Tf_etat_virement.befor_print(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var s,s1,s2:string;
begin
    if somme.Value.dblresult<100000000 then begin
    str(somme.Value.dblresult:15:2,s1);s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
    s_en_l.caption:=somme_en_lettre(s);
    if s2<>'00' then s_en_l.caption:=s_en_l.caption+' '+s2+' ”‰ Ì„' ; end;
    decodedate(f_dm.sm.Fieldbyname('dates').asdatetime,annee,mois,jour);
        qrdate2.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);
end;

end.

