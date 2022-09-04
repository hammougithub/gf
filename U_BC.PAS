unit u_bc;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Db,  Mask, Buttons,variants,
   dbcgrids, ComCtrls, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient;

type
  Tf_bc = class(TForm)
    compter: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label12: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    num: TEdit;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label4: TLabel;
    ww: TEdit;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    ai: TEdit;
    rc: TEdit;
    nf: TEdit;
    Label8: TLabel;
    nom: TEdit;
    Label9: TLabel;
    mat: TEdit;
    Label11: TLabel;
    Label6: TLabel;
    Panel11: TPanel;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label3: TLabel;
    DBNavigator5: TDBNavigator;
    DBGrid4: TDBGrid;
    Panel15: TPanel;
    Panel16: TPanel;
    Label7: TLabel;
    DBGrid5: TDBGrid;
    Panel17: TPanel;
    DBNavigator4: TDBNavigator;
    Panel18: TPanel;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    procedure prendre_code_fournisseur(Sender: TObject);
    procedure prendre_article(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure fermer(Sender: TObject; var Action: TCloseAction);
    procedure prendre_code(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Seek(Sender: TObject);
    procedure seek2(Sender: TObject);
    procedure seek3(Sender: TObject);
    procedure seek4(Sender: TObject);
    procedure seek5(Sender: TObject);
    procedure on_create(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure count(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_bc: Tf_bc;

implementation

uses MAIN, u_dm, u_edit_bc;

{$R *.DFM}

procedure Tf_bc.prendre_code(Sender: TObject);
begin
    f_dm.simpleDataSet_bc.Edit;
    f_dm.simpleDataSet_bc.FieldByName('structure').asstring:=f_dm.ClientDataSet_adm.fieldByName('code').asstring;
    activecontrol:=dbgrid1;
end;

procedure Tf_bc.prendre_code_fournisseur(Sender: TObject);
begin
   f_dm.SimpleDataSet_bc.edit;
   f_dm.SimpleDataSet_bc.fieldByName('fournisseur').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
    activecontrol:=dbgrid1;
end;

procedure Tf_bc.Seek(Sender: TObject);
begin
if mat.text<>'' then
    (f_dm.ClientDataSet_fournisseur.locate('benificiaire',trim(mat.text),[loCaseInsensitive,loPartialKey]));
end;

procedure Tf_bc.seek2(Sender: TObject);
begin
    if nom.text<>'' then
    (f_dm.ClientDataSet_fournisseur.locate('nom',trim(nom.text),[loCaseInsensitive,loPartialKey]));
end;

procedure Tf_bc.seek3(Sender: TObject);
begin
     if nf.text<>'' then
    (f_dm.ClientDataSet_fournisseur.locate('nf',trim(nf.text),[loCaseInsensitive,loPartialKey])) ;
end;

procedure Tf_bc.seek4(Sender: TObject);
begin
      if rc.text<>'' then
   (f_dm.ClientDataSet_fournisseur.locate('rc',trim(rc.text),[loCaseInsensitive,loPartialKey]));
end;

procedure Tf_bc.seek5(Sender: TObject);
begin
 if (num.text<>'') then  f_dm.simpleDataSet_bc.locate('bc1',trim(num.text),[]);
end;

procedure Tf_bc.SpeedButton1Click(Sender: TObject);
begin
   with f_edit_bc do begin
    editer.enabled:=false;
    ecran.enabled:=false;
    dbgrid1.enabled:=true;
    dbnavigator1.enabled:=true;
    //fin.enabled:=true
  end;
  if f_edit_bc.WindowState=wsminimized then  f_edit_bc.WindowState:=wsMaximized ; f_edit_bc.Show;
end;

procedure Tf_bc.prendre_article(Sender: TObject);
begin
   f_dm.SimpleDataSet_bc.edit;
   f_dm.SimpleDataSet_bc.fieldByName('CHAPITRE').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('chapitre').asstring;
   f_dm.SimpleDataSet_bc.fieldByName('article').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('article').asstring;
    activecontrol:=dbgrid1;
end;

procedure Tf_bc.Button1Click(Sender: TObject);
begin
  // if f_principale.t_bc.modified then f_principale.t_bc.Cancel;
 //  if f_principale.t_bc_ligne.modified then f_principale.t_bc_ligne.Cancel;
  f_bc.visible:=false;
end;

procedure Tf_bc.Button2Click(Sender: TObject);
begin
    f_dm.SimpleDataSet_bc.First;
    while not f_dm.SimpleDataSet_bc.eof do begin
            //  s:=copy(f_dm.SimpleDataSet_bc.fieldByName('bc').asstring, 6, 5);
              f_dm.SimpleDataSet_bc.edit;
 f_dm.SimpleDataSet_bc.fieldByName('bc1').asinteger:=strtoint(trim(f_dm.SimpleDataSet_bc.fieldByName('bc').asstring));


              f_dm.SimpleDataSet_bc.Next;

     end;

   {  f_dm.SimpleDataSet_bc_lignes.First;
     while not f_dm.SimpleDataSet_bc_lignes.eof do begin
            //  s:=copy(f_dm.SimpleDataSet_bc.fieldByName('bc').asstring, 6, 5);
              f_dm.SimpleDataSet_bc_lignes.edit;
 f_dm.SimpleDataSet_bc_lignes.fieldByName('bc1').asinteger:=strtoint(trim(f_dm.SimpleDataSet_bc_lignes.fieldByName('bc').asstring));
              f_dm.SimpleDataSet_bc_lignes.Next; }


    // end;
end;

procedure Tf_bc.count(Sender: TObject);
begin
      compter.CLOSE;
  //   compter.sql.clear;
  //  compter.sql.Add('SELECT count(bc1) from BC_LIGNE');  //  and mandat=:x
    compter.Params[0].AsString:=f_principale.gestion.text;
    compter.Params[1].Asinteger:=f_dm.SimpleDataSet_bc.fieldByName('bc1').asinteger;

   compter.open;
     s1:='            ';
    if  compter.Fields[0].asstring<>'' then str(compter.Fields[0].value:12:2,s1) ;
     ww.text:=s1;
end;

procedure Tf_bc.fermer(Sender: TObject; var Action: TCloseAction);
begin
    // if f_principale.t_bc.modified then f_principale.t_bc.Cancel;
  //   if f_principale.t_bc_ligne.modified then f_principale.t_bc_ligne.Cancel;
     f_bc.visible:=false;
end;

procedure Tf_bc.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
 //  Realign;
end;

end.
