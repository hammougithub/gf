unit u_etat_k;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, QRCtrls;

type
  Tf_etat_k = class(TForm)
    QuickRep1: TQuickRep;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    qdepart: TQRLabel;
    qdestination: TQRLabel;
    qdd: TQRLabel;
    qheuredepart: TQRLabel;
    qheureretour: TQRLabel;
    qvehicule: TQRLabel;
    qobservation: TQRLabel;
    qdr: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel15: TQRLabel;
    QNOM: TQRLabel;
    qgrade: TQRLabel;
    qfonction: TQRLabel;
    QRLabel4: TQRLabel;
    l3: TQRLabel;
    l4: TQRLabel;
    s_en_l: TQRLabel;
    QRLabel10: TQRLabel;
    lab1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    l22: TQRLabel;
    l11: TQRLabel;
    QRLabel14: TQRLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etat_k: Tf_etat_k;

implementation

{$R *.dfm}





end.
