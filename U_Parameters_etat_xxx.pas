unit U_Parameters_etat_xxx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tf_Parameters_etat_xxx = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DataSource1: TDataSource;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_Parameters_etat_xxx: Tf_Parameters_etat_xxx;

implementation

{$R *.dfm}

end.
