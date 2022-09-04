unit u_parameters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB;

type
  Tf_parameters = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Fin: TButton;
    procedure on_create(Sender: TObject);
    procedure FinClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_parameters: Tf_parameters;

implementation

{$R *.dfm}

procedure Tf_parameters.FinClick(Sender: TObject);
begin
      f_parameters.visible:=false;
end;

procedure Tf_parameters.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
//   ScaleBy(M, D);
 //  Realign;
end;

end.
