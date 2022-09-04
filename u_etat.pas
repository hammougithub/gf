unit u_etat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tf_etat = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText13: TQRDBText;
    l_a: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape1: TQRShape;
    QRShape8: TQRShape;
    nom: TQRLabel;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    somme: TQRExpr;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape7: TQRShape;
    QRChildBand1: TQRChildBand;
    procedure pop(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure tot(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure fof(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etat: Tf_etat;

implementation

uses u_dm;

{$R *.dfm}

procedure Tf_etat.pop(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  //  nom.Caption:=trim(f_dm.SimpleDataSet_f.FieldByName('nom').asstring);
   // obs.caption:=trim(f_dm.IBD_lignes_mandat.Fieldbyname('observation').asstring);
end;

procedure Tf_etat.tot(Sender: TQRCustomBand; var PrintBand: Boolean);
var s,s1:string;
begin
   str(frac(somme.Value.dblresult)*100:2:0,s1);
   str(trunc(somme.Value.dblresult),s);
end;

procedure Tf_etat.fof(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
       if f_dm.ClientDataSet_adm.locate('code',f_dm.clientdataset_mandat.fieldByName('structure').asstring,[])
      then l_a.caption:=trim(f_dm.ClientDataSet_adm.fieldByName('libelle_arabe').asstring);
end;

end.
