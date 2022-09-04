unit uplus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, SimpleDS,
  Data.SqlExpr, Vcl.StdCtrls, Datasnap.Provider;

type
  Tf1 = class(TForm)
    connect_db_gf: TSQLConnection;
    SimpleDataSet_det_eng: TSimpleDataSet;
    ds_det_eng_ib: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DataSource1: TDataSource;
    SimpleDataSet2: TSimpleDataSet;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DBGrid1: TDBGrid;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f1: Tf1;

implementation

{$R *.dfm}

end.
