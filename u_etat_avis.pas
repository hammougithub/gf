unit u_etat_avis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TF_etat_avis = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    PrinterSetupDialog1: TPrinterSetupDialog;
    procedure prinetr_setup(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_etat_avis: TF_etat_avis;

implementation

{$R *.DFM}

procedure TF_etat_avis.prinetr_setup(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
PrinterSetupDialog1.execute
end;

end.
