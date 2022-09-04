unit u_article_etat_par_agent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.Provider, Datasnap.DBClient,
  Data.SqlExpr, Vcl.Grids, Vcl.DBGrids;

type
  Tf_article_etat_par_agent = class(TForm)
    DBGrid1: TDBGrid;
    lignes: TSQLQuery;
    cl1: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    DataSource: TDataSource;
    DBGrid3: TDBGrid;
    Button2: TButton;
    Edit3: TEdit;
    Edit1: TEdit;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBGrid4: TDBGrid;
    DBNavigator4: TDBNavigator;
    prename: TEdit;
    Label6: TLabel;
    name: TEdit;
    Label4: TLabel;
    mat: TEdit;
    Label5: TLabel;
    Label8: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_article_etat_par_agent: Tf_article_etat_par_agent;

implementation

{$R *.dfm}

end.
