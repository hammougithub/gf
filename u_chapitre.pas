unit u_chapitre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.DB;

type
  Tf_chapitre = class(TForm)
    DataSource1: TDataSource;
    BindingsList1: TBindingsList;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Panel4: TPanel;
    Fin: TButton;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    procedure FinClick(Sender: TObject);
    procedure oncreate_f_chapitre(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_chapitre: Tf_chapitre;

implementation

{$R *.DFM}



procedure Tf_chapitre.Button1Click(Sender: TObject);
begin
       fin.Align:=alleft;panel4.Align:=alleft;
       DBNavigator1.Align:=alclient;panel3.Align:=alclient;
      dbgrid1.BiDiMode:= bdRightToLeft;//dbgrid1.refresh;f_chapitre.visible:=false; f_chapitre.visible:=true
end;

procedure Tf_chapitre.Button2Click(Sender: TObject);
begin
         fin.Align:=alright;panel4.Align:=alright;
    DBNavigator1.Align:=alclient;panel3.Align:=alclient;
        dbgrid1.BiDiMode:= bdLeftToRight;
end;

procedure Tf_chapitre.FinClick(Sender: TObject);
begin
    f_chapitre.visible:=false
end;

procedure Tf_chapitre.oncreate_f_chapitre(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
   SysLocale.MiddleEast := True
 //  ScaleBy(M, D);
  // Realign;
end;

end.
