unit u_parameters_etat_x;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  Tf_parameters_etat_x = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_parameters_etat_x: Tf_parameters_etat_x;

implementation

{$R *.dfm}

end.
