unit u_lieu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tf_lieu = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_lieu: Tf_lieu;

implementation

{$R *.dfm}

uses u_dm;

end.
