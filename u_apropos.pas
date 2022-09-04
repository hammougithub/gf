unit u_apropos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TF_apropos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_apropos: TF_apropos;

implementation

{$R *.dfm}

procedure TF_apropos.BitBtn1Click(Sender: TObject);
begin
     F_apropos.close
end;

end.
