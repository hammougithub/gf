unit u_print_sql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls;

type
  Tf_imp_sql = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_imp_sql: Tf_imp_sql;

implementation

{$R *.dfm}

end.
