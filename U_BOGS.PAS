unit u_bogs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls,  DBCtrls, Grids, DBGrids, Db;

type
  Tf_BOGS = class(TForm)
    Panel1: TPanel;
    RichEdit1: TRichEdit;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_BOGS: Tf_BOGS;

implementation

{$R *.DFM}



end.
