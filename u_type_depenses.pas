unit u_type_depenses;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids;

type
  Tf_type_depenses = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_type_depenses: Tf_type_depenses;

implementation

{$R *.DFM}

end.
