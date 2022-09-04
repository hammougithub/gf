unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, SimpleDS,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    SimpleDataSet_mandat: TSimpleDataSet;
    ds_mandat_ib: TDataSource;
    ds_lignes_ib_1: TDataSource;
    SimpleDataSet_lignes_mandat: TSimpleDataSet;
    DBNavigator6: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    DBGrid7: TDBGrid;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

end.
