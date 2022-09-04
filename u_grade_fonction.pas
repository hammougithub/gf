unit u_grade_fonction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TF_grade_fonction = class(TForm)
    DBNavigator3: TDBNavigator;
    Label9: TLabel;
    DBGrid3: TDBGrid;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_grade_fonction: TF_grade_fonction;

implementation

{$R *.dfm}

end.
