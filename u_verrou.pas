unit u_verrou;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids;

type
  Tf_verrou = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_verrou: Tf_verrou;

implementation

{$R *.DFM}

end.
