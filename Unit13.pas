unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, frxClass,
  frxDBSet, Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TForm13 = class(TForm)
    DBGrid3: TDBGrid;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    fs_ds: TButton;
    RadioGroup2: TRadioGroup;
    DBNavigator3: TDBNavigator;
    DataSource: TDataSource;
    DataSetProvider: TDataSetProvider;
    cl1: TClientDataSet;
    lignes: TSQLQuery;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    DataSource1: TDataSource;
    cl2: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    custommer1: TSQLQuery;
    q1: TSQLQuery;
    Cl3: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    DataSource2: TDataSource;
    RadioGroup1: TRadioGroup;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

end.
