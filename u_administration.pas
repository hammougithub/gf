unit u_administration;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Db,  Buttons,
  ComCtrls;

type
  Tf_administration = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel4: TPanel;
    fin: TButton;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    Panel6: TPanel;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure finClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure oncreate_f_administration(Sender: TObject);
    procedure Button3Click(Sender: TObject);




  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_administration: Tf_administration;

implementation

uses u_dm;

{$R *.DFM}

procedure Tf_administration.Button3Click(Sender: TObject);
begin
      fin.Align:=alleft;panel4.Align:=alleft;
       DBNavigator1.Align:=alclient;panel5.Align:=alclient;
       dbgrid1.BiDiMode:= bdRightToLeft;
end;

procedure Tf_administration.finClick(Sender: TObject);
begin
    f_administration.Visible:=false
end;

procedure Tf_administration.Button2Click(Sender: TObject);
var l_err:integer;
begin
     fin.Align:=alright;panel4.Align:=alright;
    DBNavigator1.Align:=alclient;panel5.Align:=alclient;
   dbgrid1.BiDiMode:= bdLeftToRight;
end;



procedure Tf_administration.oncreate_f_administration(Sender: TObject);
var
   M, D : Integer;
begin
    M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
//   ScaleBy(M, D);
 //  Realign;
end;



end.
