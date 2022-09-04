unit U_FACTURE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids,db, Vcl.Buttons;

type
  Tf_facture = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label9: TLabel;
    Label7: TLabel;
    DBNavigator5: TDBNavigator;
    Panel11: TPanel;
    Panel12: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    DBNavigator4: TDBNavigator;
    DBGrid5: TDBGrid;
    DBGrid4: TDBGrid;
    Label3: TLabel;
    Label5: TLabel;
    name: TEdit;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    Panel13: TPanel;
    fin: TBitBtn;
    procedure prendre1(Sender: TObject);
    procedure xprendre(Sender: TObject);
    procedure zprendre(Sender: TObject);
    procedure xtrouver(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure finClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_facture: Tf_facture;

implementation

{$R *.dfm}

uses u_dm,u_liste_facture;

procedure Tf_facture.Button1Click(Sender: TObject);
begin
     fac_eng:='liste_fac' ;
     if f_liste_facture.WindowState=wsMinimized then f_liste_facture.WindowState:=wsMaximized ;
     f_liste_facture.visible:=true;f_liste_facture.bringtofront;
end;

procedure Tf_facture.finClick(Sender: TObject);
begin
   f_facture.Visible:=false
end;

procedure Tf_facture.prendre1(Sender: TObject);
begin
    f_dm.simpleDataSet_facture.Edit;
    f_dm.simpleDataSet_facture.FieldByName('structure').asstring:=f_dm.ClientDataSet_adm.fieldByName('code').asstring;
    activecontrol:=dbgrid1;
end;

procedure Tf_facture.SpeedButton1Click(Sender: TObject);
begin
     fac_eng:='liste_fac' ;
     if f_liste_facture.WindowState=wsMinimized then f_liste_facture.WindowState:=wsMaximized ;
     f_liste_facture.visible:=true;f_liste_facture.bringtofront;
end;

procedure Tf_facture.xprendre(Sender: TObject);
begin
    f_dm.simpleDataSet_facture.edit;
    f_dm.simpleDataSet_facture.fieldByName('chapitre').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('chapitre').asstring;
    f_dm.simpleDataSet_facture.fieldByName('article').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('article').asstring;
    activecontrol:=dbgrid1;
end;

procedure Tf_facture.xtrouver(Sender: TObject);
begin
   f_dm.ClientDataSet_fournisseur.Locate('nom',trim(name.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_facture.zprendre(Sender: TObject);
begin
    f_dm.simpleDataSet_facture.edit;
    f_dm.simpleDataSet_facture.fieldByName('benificiaire').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
    activecontrol:=dbgrid1;
end;

end.
