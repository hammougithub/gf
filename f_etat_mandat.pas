unit f_etat_mandat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt;

type
  TEtat_mandat = class(TForm)
    QuickRep1: TQuickRep;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Etat_mandat: TEtat_mandat;

implementation

{$R *.DFM}

end.
