unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

end.
