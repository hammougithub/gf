unit u_user;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids;

type
  Tf_user = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_user: Tf_user;

implementation

{$R *.DFM}

end.
