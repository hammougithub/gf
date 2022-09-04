unit U_parametres_mission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  Tf_parametres_mission = class(TForm)
    DBGrid5: TDBGrid;
    DBNavigator4: TDBNavigator;
    Label7: TLabel;
    procedure oncreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_parametres_mission: Tf_parametres_mission;

implementation

{$R *.dfm}

procedure Tf_parametres_mission.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.Width; // multiplicateur = définition actuelle de l'écran
   D := 1024; // diviseur = définition de l'écran à la conception
   ScaleBy(M, D);
   Realign;
end;

end.
