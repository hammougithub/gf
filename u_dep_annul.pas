unit u_dep_annul;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Data.DB;

type
  Tf_dep_annul = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    DBNavigator1: TDBNavigator;
    Panel8: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    DBGrid5: TDBGrid;
    Panel9: TPanel;
    DBNavigator5: TDBNavigator;
    Panel10: TPanel;
    Panel11: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    procedure on_create(Sender: TObject);
    procedure prendre_code(Sender: TObject);
    procedure prendre_article(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_dep_annul: Tf_dep_annul;

implementation

{$R *.dfm}

uses u_dm;

procedure Tf_dep_annul.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
  // Realign;
end;

procedure Tf_dep_annul.prendre_article(Sender: TObject);
begin
   f_dm.SimpleDataSet_depenses_annulees.edit;
    f_dm.SimpleDataSet_depenses_annulees.fieldByName('chapitre').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('chapitre').asstring;
    f_dm.SimpleDataSet_depenses_annulees.fieldByName('article').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('article').asstring;
    activecontrol:=dbgrid1;
end;

procedure Tf_dep_annul.prendre_code(Sender: TObject);
begin
    f_dm.SimpleDataSet_depenses_annulees.Edit;
    f_dm.SimpleDataSet_depenses_annulees.FieldByName('structure').asstring:=f_dm.ClientDataSet_adm.fieldByName('code').asstring;
    f_dm.SimpleDataSet_depenses_annulees.FieldByName('structure_situation').asstring:=f_dm.ClientDataSet_adm.fieldByName('structure_situation').asstring;
    activecontrol:=dbgrid1;
end;

end.
