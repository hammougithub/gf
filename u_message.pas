unit u_message;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  Tf_message = class(TForm)
    Animate1: TAnimate;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_message: Tf_message;

implementation

{$R *.dfm}

end.
