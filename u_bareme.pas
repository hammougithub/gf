unit u_bareme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Data.DB;

type
  Tf_bareme = class(TForm)
    Panel5: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    Label3: TLabel;
    Panel8: TPanel;
    DBNavigator2: TDBNavigator;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBNavigator3: TDBNavigator;
    procedure prendre(Sender: TObject);
    procedure on_create(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_bareme: Tf_bareme;

implementation

{$R *.dfm}

uses u_dm;

procedure Tf_bareme.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
   //ScaleBy(M, D);
 //  Realign;
end;


procedure Tf_bareme.prendre(Sender: TObject);
begin
      f_dm.SimpleDataSet_bareme.edit;
      f_dm.SimpleDataSet_bareme.fieldByName('cat').asstring:=f_dm.SimpleDataSet_grade.fieldByName('categ').asstring;
end;

end.
