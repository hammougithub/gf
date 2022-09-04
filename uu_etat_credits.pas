unit uu_etat_credits;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls;

type
  Tff_etat_credits = class(TForm)
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
  ff_etat_credits: Tff_etat_credits;

implementation

uses u_etat_credits;

{$R *.DFM}

procedure Tff_etat_credits.Button1Click(Sender: TObject);
begin
 f_etat_credit.quickrep1.print;
end;

procedure Tff_etat_credits.Button2Click(Sender: TObject);
begin
    f_etat_credit.quickrep1.preview;
end;

procedure Tff_etat_credits.Button3Click(Sender: TObject);
begin
      ff_etat_credits.visible:=false
end;

end.
