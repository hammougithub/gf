unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, SimpleDS,
  Data.SqlExpr;

type
  TForm6 = class(TForm)
    connect_db_gf: TSQLConnection;
    ds_lignes_ib_1: TDataSource;
    SimpleDataSet_lignes_mandat: TSimpleDataSet;
    ds_mandat_ib: TDataSource;
    SimpleDataSet_mandat: TSimpleDataSet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

end.
