unit u_service;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tf_service = class(TForm)
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label2: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_service: Tf_service;

implementation

{$R *.dfm}



end.
