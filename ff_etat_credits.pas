unit ff_etat_credits;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls;

type
  Tetat_credits = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    xgestion: TEdit;
    xdate: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  etat_credits: Tetat_credits;

implementation

uses u_etat_credits;

{$R *.DFM}

procedure Tetat_credits.Button1Click(Sender: TObject);
begin
 f_etat_credit.quickrep1.print;
end;

procedure Tetat_credits.Button2Click(Sender: TObject);
begin
    f_etat_credit.quickrep1.preview;
end;

procedure Tetat_credits.Button3Click(Sender: TObject);
begin
      f_etat_credit.visible:=false
end;

end.
