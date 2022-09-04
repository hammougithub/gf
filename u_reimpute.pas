unit u_reimpute;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, DB,
   Data.FMTBcd, Data.SqlExpr;

type
  Tf_reimpute = class(TForm)
    q_mdm: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid6: TDBGrid;
    Label1: TLabel;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    Panel9: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    DBNavigator1: TDBNavigator;
    Panel8: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Label5: TLabel;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    DBNavigator2: TDBNavigator;
    Panel11: TPanel;
    DBNavigator4: TDBNavigator;
    procedure prendre_mandat(Sender: TObject);
    procedure prendre_article(Sender: TObject);
    procedure seek_mandat(Sender: TObject);
    procedure oncreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_reimpute: Tf_reimpute;

implementation

uses u_dm, MAIN;

{$R *.dfm}

procedure Tf_reimpute.prendre_mandat(Sender: TObject);
begin
    f_dm.ClientDataSet_reimputation.append;
    f_dm.ClientDataSet_reimputation.edit;
    f_dm.ClientDataSet_reimputation.fieldByName('gestion').asstring:=f_dm.Clientdataset_mandat.fieldByName('gestion').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('mandat').asinteger:=f_dm.Clientdataset_mandat.fieldByName('mandat').asinteger;
    f_dm.ClientDataSet_reimputation.fieldByName('structure_situation').asstring:=f_dm.Clientdataset_mandat.fieldByName('structure_situation').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('structure').asstring:=f_dm.Clientdataset_mandat.fieldByName('structure').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('chapitre').asstring:=f_dm.Clientdataset_mandat.fieldByName('chapitre').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('article').asstring:=f_dm.Clientdataset_mandat.fieldByName('article').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('dates').asdatetime:=f_dm.Clientdataset_mandat.fieldByName('dates').asdatetime;

    q_mdm.close;
    q_mdm.Params[0].AsString:=f_dm.Clientdataset_mandat.fieldByName('gestion').asstring;
    q_mdm.Params[1].asinteger:=f_dm.Clientdataset_mandat.fieldByName('mandat').asinteger;
    q_mdm.Params[2].Asstring:=f_dm.Clientdataset_mandat.fieldByName('chapitre').asstring;
    q_mdm.Params[3].AsString:=f_dm.Clientdataset_mandat.fieldByName('article').asstring;
    q_mdm.open;
    if  q_mdm.Fields[0].asstring<>'' then begin
                  x:=q_mdm.Fields[0].value;
                  f_dm.Clientdataset_reimputation.fieldByName('montant').asfloat:=-x;
            end;
  // f_dm.Clientdataset_reimputation.Post;

    activecontrol:=dbgrid6;
end;

procedure Tf_reimpute.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
 //  Realign;
end;

procedure Tf_reimpute.prendre_article(Sender: TObject);
begin
    x:=-(f_dm.Clientdataset_reimputation.fieldByName('montant').asfloat);
    f_dm.Clientdataset_reimputation.append;f_dm.Clientdataset_reimputation.edit;
    f_dm.ClientDataSet_reimputation.fieldByName('gestion').asstring:=f_dm.Clientdataset_mandat.fieldByName('gestion').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('mandat').asinteger:=f_dm.Clientdataset_mandat.fieldByName('mandat').asinteger;
    f_dm.ClientDataSet_reimputation.fieldByName('structure').asstring:=f_dm.Clientdataset_mandat.fieldByName('structure').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('chapitre').asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('article').asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
    f_dm.ClientDataSet_reimputation.fieldByName('dates').asdatetime:=f_dm.Clientdataset_mandat.fieldByName('dates').asdatetime;
    f_dm.ClientDataSet_reimputation.fieldByName('montant').asfloat:= x;
   // f_dm.ibd_reimputation.post;
    activecontrol:=dbgrid6;
end;

procedure Tf_reimpute.seek_mandat(Sender: TObject);
begin
     if edit1.text<>'' then
     f_dm.ClientDataSet_mandat.locate('mandat',strtoint(edit1.text),[])

end;

end.
