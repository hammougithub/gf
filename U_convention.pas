unit U_convention;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TF_CONVENTION = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label9: TLabel;
    Label7: TLabel;
    DBNavigator5: TDBNavigator;
    DBGrid5: TDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    name: TEdit;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    procedure prendre(Sender: TObject);
    procedure prendre1(Sender: TObject);
    procedure prendre3(Sender: TObject);
    procedure trouver1(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_CONVENTION: TF_CONVENTION;

implementation

{$R *.dfm}

uses u_dm;

procedure TF_CONVENTION.prendre(Sender: TObject);
begin
    f_dm.simpleDataSet_convention.Edit;
    f_dm.simpleDataSet_convention.FieldByName('structure').asstring:=f_dm.ClientDataSet_adm.fieldByName('code').asstring;
    activecontrol:=dbgrid1;
end;

procedure TF_CONVENTION.prendre1(Sender: TObject);
begin
        f_dm.simpleDataSet_convention.edit;
    f_dm.simpleDataSet_convention.fieldByName('chapitre').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('chapitre').asstring;
    f_dm.simpleDataSet_convention.fieldByName('article').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('article').asstring;
    activecontrol:=dbgrid1;
end;

procedure TF_CONVENTION.prendre3(Sender: TObject);
begin
    f_dm.simpleDataSet_convention.edit;
    f_dm.simpleDataSet_convention.fieldByName('fournisseur').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
    activecontrol:=dbgrid1;
end;

procedure TF_CONVENTION.trouver1(Sender: TObject);
begin
  f_dm.ClientDataSet_fournisseur.Locate('nom',trim(name.text), [loCaseInsensitive,loPartialKey]);
end;

end.
