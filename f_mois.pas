unit f_mois;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Data.DB;

type
  Tf_m = class(TForm)
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label1: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_m: Tf_m;

implementation

{$R *.dfm}

end.
