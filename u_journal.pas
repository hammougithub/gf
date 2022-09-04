unit u_journal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ExtCtrls, DBCtrls, StdCtrls,
   Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient,
  Data.SqlExpr, IBX.IBCustomDataSet, IBX.IBQuery;

type
  Tf_journal = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Print: TButton;
    Preview: TButton;
    fin: TButton;
    jj: TEdit;
    DataSource2: TDataSource;
    SQLQuery1: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    montant_mandat: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure finClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
    procedure PreviewClick(Sender: TObject);
    procedure vv(Sender: TObject);
    procedure on_create(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_journal: Tf_journal;

implementation

uses MAIN, u_etat_journal, u_dm;

{$R *.DFM}







procedure Tf_journal.Button1Click(Sender: TObject);
begin
   SQLQuery2.ExecSQL() ;
   f_dm.sm.refresh;
   dbgrid1.refresh
end;


procedure Tf_journal.finClick(Sender: TObject);
begin
    f_journal.visible:=false;
end;

procedure Tf_journal.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
   ScaleBy(M, D);
   Realign;
end;

procedure Tf_journal.PrintClick(Sender: TObject);
begin
  sqlquery1.close;clientdataset1.close;
  sqlquery1.Params[0].AsString:=f_principale.gestion.text;
  sqlquery1.open; clientdataset1.open;
  f_etat_journal.quickrep1.print;
  sqlquery1.close;clientdataset1.close;
end;

procedure Tf_journal.PreviewClick(Sender: TObject);
begin
  sqlquery1.close;clientdataset1.close;
  sqlquery1.Params[0].AsString:=f_principale.gestion.text;
  sqlquery1.open; clientdataset1.open;
  f_etat_journal.quickrep1.preview;
  sqlquery1.close;clientdataset1.close;
end;



procedure Tf_journal.vv(Sender: TObject);
begin
   f_dm.sm.edit;
   if f_dm.sm.fieldbyname('journal').asstring='J'
   then  f_dm.sm.fieldbyname('journal').asstring:=' '
   else   f_dm.sm.fieldbyname('journal').asstring:='J';
  // f_dm.simpledataset_mandat.post;
 //  f_dm.simpledataset_mandat.ApplyUpdates(-1);
end;

end.
