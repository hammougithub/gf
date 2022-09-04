unit u_fournisseur;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Buttons;

type
  Tf_fournisseur = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ai: TEdit;
    Label7: TLabel;
    rc: TEdit;
    Label5: TLabel;
    nf: TEdit;
    Label4: TLabel;
    nom: TEdit;
    Label3: TLabel;
    mat: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Panel4: TPanel;
    fin: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure seek(Sender: TObject);
    procedure seek1(Sender: TObject);
    procedure seek2(Sender: TObject);
    procedure seek3(Sender: TObject);
    procedure seek4(Sender: TObject);
    procedure fin1(Sender: TObject);

    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_fournisseur: Tf_fournisseur;

implementation

{$R *.DFM}

uses u_dm;

procedure Tf_fournisseur.Button1Click(Sender: TObject);
begin
       fin.Align:=alleft;panel4.Align:=alleft;
       label2.Align:=alleft; DBNavigator1.Align:=alclient;panel3.Align:=alclient;
       dbgrid1.BiDiMode:= bdRightToLeft;
end;

procedure Tf_fournisseur.Button2Click(Sender: TObject);
begin
    fin.Align:=alright;panel4.Align:=alright;
    label2.Align:=alright; DBNavigator1.Align:=alclient;panel3.Align:=alclient;
    dbgrid1.BiDiMode:= bdLeftToRight;
end;

procedure Tf_fournisseur.fin1(Sender: TObject);
begin
  f_fournisseur.visible:=false;
end;

procedure Tf_fournisseur.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
  // Realign;
end;



procedure Tf_fournisseur.seek(Sender: TObject);
begin
    if mat.text<>'' then
    (f_dm.ClientDataSet_fournisseur.locate('benificiaire',trim(mat.text),[loCaseInsensitive,loPartialKey]));
end;

procedure Tf_fournisseur.seek1(Sender: TObject);
begin
  if trim(nom.text)<>'' then
     (f_dm.ClientDataSet_fournisseur.locate('nom',trim(nom.text),[loCaseInsensitive,loPartialKey])) ;
end;

procedure Tf_fournisseur.seek2(Sender: TObject);
begin
  if nf.text<>'' then
    (f_dm.ClientDataSet_fournisseur.locate('nf',trim(nf.text),[loCaseInsensitive,loPartialKey])) ;
end;

procedure Tf_fournisseur.seek3(Sender: TObject);
begin
  if rc.text<>'' then
   (f_dm.ClientDataSet_fournisseur.locate('rc',trim(rc.text),[loCaseInsensitive,loPartialKey]));
end;

procedure Tf_fournisseur.seek4(Sender: TObject);
begin
   if ai.text<>'' then
    (f_dm.ClientDataSet_fournisseur.locate('ai',trim(ai.text),[loCaseInsensitive,loPartialKey]));
end;

end.
