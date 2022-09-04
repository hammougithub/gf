unit u_situation_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, QRCtrls, QuickRpt,
  Vcl.ExtCtrls, Data.DB, Data.SqlExpr;

type
  TForm9 = class(TForm)
    q_reimp: TSQLQuery;
    q_annul_mois_ant_structure: TSQLQuery;
    q_annul_mois: TSQLQuery;
    q_annul_ant: TSQLQuery;
    q_annul: TSQLQuery;
    q1: TSQLQuery;
    q_reimp_du_mois: TSQLQuery;
    q_reimp_ant: TSQLQuery;
    q_mdms: TSQLQuery;
    q_mda: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_enplus: TSQLQuery;
    q_cre_affec: TSQLQuery;
    q_mdm: TSQLQuery;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    LADATE: TQRLabel;
    QRLabel44: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    DEPENSES: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    ANTERIEURS: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRLabel42: TQRLabel;
    qrltca1: TQRLabel;
    QRLenplus1: TQRLabel;
    QRLenmoins1: TQRLabel;
    QRLdr1: TQRLabel;
    QRmda1: TQRLabel;
    QRmdm1: TQRLabel;
    qrannul1: TQRLabel;
    QRLtd1: TQRLabel;
    QRLdrt1: TQRLabel;
    QRL111: TQRLabel;
    QRL331: TQRLabel;
    QRLs1: TQRLabel;
    QRLt1: TQRLabel;
    QRRE1: TQRLabel;
    QRBand4: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qrlca: TQRLabel;
    qrlenplus: TQRLabel;
    qrlenmoins: TQRLabel;
    qrldr: TQRLabel;
    qrmda: TQRLabel;
    qrmdm: TQRLabel;
    qrannul: TQRLabel;
    qrltd: TQRLabel;
    QRLdrt: TQRLabel;
    QRL11: TQRLabel;
    QRL33: TQRLabel;
    QRLS: TQRLabel;
    QRLT: TQRLabel;
    QRRE: TQRLabel;
    QRBand5: TQRBand;
    QRLabel43: TQRLabel;
    qrltca2: TQRLabel;
    qrlenplus2: TQRLabel;
    QRLenmoins2: TQRLabel;
    QRLdr2: TQRLabel;
    QRmda2: TQRLabel;
    QRmdm2: TQRLabel;
    qrannul2: TQRLabel;
    QRLtd2: TQRLabel;
    QRLdrt2: TQRLabel;
    QRL112: TQRLabel;
    QRL332: TQRLabel;
    QRLs2: TQRLabel;
    QRLT2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRRe2: TQRLabel;
    procedure QRLabel32Print(sender: TObject; var Value: string);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}



end.
