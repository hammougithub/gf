unit u_agent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Data.DB;

type
  Tf_agent = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    mat: TEdit;
    adm: TEdit;
    Label13: TLabel;
    prename: TEdit;
    Label6: TLabel;
    name: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    DBGrid6: TDBGrid;
    DBNavigator7: TDBNavigator;
    procedure on_create(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_agent: Tf_agent;

implementation

{$R *.dfm}

procedure Tf_agent.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
   ScaleBy(M, D);
   Realign;
end;

end.
