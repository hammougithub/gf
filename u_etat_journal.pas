unit u_etat_journal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Unit_function_and_procedure,QuickRpt, Qrctrls, ExtCtrls;

type
  Tf_etat_journal = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    lh: TQRShape;
    ligne_verticale1: TQRShape;
    lv2: TQRShape;
    lv3: TQRShape;
    lv4: TQRShape;
    lv5: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText6: TQRDBText;
    mt1: TQRLabel;
    mt3: TQRLabel;
    mt2: TQRLabel;
    lv6: TQRShape;
    lv7: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    lv8: TQRShape;
    lv10: TQRShape;
    lv11: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    procedure montandumandat(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etat_journal: Tf_etat_journal;

implementation

uses u_journal, MAIN, u_dm;

{$R *.DFM}

procedure Tf_etat_journal.montandumandat(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var s:string;
begin

     with f_journal do begin
      {  query3.close;
        query3.Params[0].AsString:=f_principale.gestion.text;
        query3.Params[1].Asinteger:=f_dm.ibd_mandat.fieldByName('mandat').asinteger;
        query3.Params[2].AsString:=f_dm.ibd_mandat.fieldByName('chapitre').asstring;
        query3.Params[3].Asstring:=f_dm.ibd_mandat.fieldByName('article').asstring;
        query3.open;}

       { sqlquery3.close;
        sqlquery3.Params[0].AsString:=f_principale.gestion.text;
        sqlquery3.Params[1].Asinteger:=f_dm.ClientDataSet_mandat.fieldByName('mandat').asinteger;
        sqlquery3.Params[2].AsString:=f_dm.ClientDataSet_mandat.fieldByName('chapitre').asstring;
        sqlquery3.Params[3].Asstring:=f_dm.ClientDataSet_mandat.fieldByName('article').asstring;
        sqlquery3.open;}
     end;


  
   with f_journal do begin
        montant_mandat.Close;
        montant_mandat.Params[0].AsString:=f_principale.gestion.text;
        montant_mandat.Params[1].Asinteger:=f_journal.ClientDataSet1.fieldByName('mandat').asinteger;
        montant_mandat.Params[2].AsString:=f_journal.ClientDataSet1.fieldByName('chapitre').asstring;
        montant_mandat.Params[3].Asstring:=f_journal.ClientDataSet1.fieldByName('article').asstring;
     end;
     f_journal.montant_mandat.open;
     s:='            ';
     if  f_journal.montant_mandat.Fields[0].asstring<>'' then begin
          s:=formater_float(f_journal.montant_mandat.Fields[0].value);
          mt1.caption:=s+' ';
          mt2.caption:=s+' ';
          mt3.caption:=s+' ';
     end
   else
     begin
          mt1.caption:='     ';
          mt2.caption:='     ';
          mt3.caption:='      ';
     end;
end;

end.


