unit u_pack;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, Db, Grids, DBGrids, DBCtrls;

type
  Tf_pack = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    t_Mandat_pack: TTable;
    t_lignes_pack: TTable;
    pack: TQuery;
    gestion: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DataSource2: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure filtre(Sender: TObject; var Action: TCloseAction);
    procedure creer_forme(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_pack: Tf_pack;

implementation

uses MAIN;

{$R *.DFM}

procedure Tf_pack.Button1Click(Sender: TObject);
begin
    LABEL1.visible:=true;
    t_mandat_pack.active:=false;
    t_mandat_pack.emptytable;
    t_mandat_pack.active:=true;

   // pack.sql.clear;
    //pack.sql.add
    //('insert into mandat_pack select * from mandat where gestion>='+edit1.text+gestion.text+edit1.text);
  //  pack.ExecSQL;
   // t_mandat_pack.Refresh;

    f_principale.t_mandat.active:=false;
    f_principale.t_mandat.emptytable;
    f_principale.t_mandat.active:=true;

    pack.sql.clear;
    pack.sql.add('insert into mandat select * from mandat_pack');
    pack.ExecSQL;
    f_principale.t_mandat.Refresh;

    t_lignes_pack.active:=false;
    t_lignes_pack.emptytable;
    t_lignes_pack.active:=true;

    pack.sql.clear;
    pack.sql.add
    ('insert into lignes_pack select * from lignes where gestion>='+edit1.text+gestion.text+edit1.text);
    pack.ExecSQL;
    t_lignes_pack.Refresh;
    f_principale.t_ligne.active:=false;
    f_principale.t_ligne.emptytable;
    f_principale.t_ligne.active:=true;

    pack.sql.clear;
    pack.sql.add('insert into lignes select * from lignes_pack');
    pack.ExecSQL;
    f_principale.t_ligne.refresh;
    LABEL1.visible:=false;
end;

procedure Tf_pack.Button2Click(Sender: TObject);
begin
    f_principale.t_mandat.filtered:=false;
    f_principale.t_mandat.filter:='gestion='+f_principale.gestion.Text;
    f_principale.t_mandat.filtered:=true;
    f_principale.t_ligne.filtered:=false;
    f_principale.t_ligne.filter:='gestion='+f_principale.gestion.Text;
    f_principale.t_ligne.filtered:=true;
    f_pack.visible:=false
end;

procedure Tf_pack.filtre(Sender: TObject; var Action: TCloseAction);
begin
    f_principale.t_mandat.filtered:=false;
    f_principale.t_mandat.filter:='gestion='+f_principale.gestion.Text;
    f_principale.t_mandat.filtered:=true;
    f_principale.t_ligne.filtered:=false;
    f_principale.t_ligne.filter:='gestion='+f_principale.gestion.Text;
    f_principale.t_ligne.filtered:=true;
end;

procedure Tf_pack.creer_forme(Sender: TObject);
begin
   f_pack.t_mandat_pack.open;
   f_pack.t_lignes_pack.open;
end;

end.
