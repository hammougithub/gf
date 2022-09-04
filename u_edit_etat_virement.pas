unit u_edit_etat_virement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,printers,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr,QRPrev,qrprntr,
  Data.DBXFirebird, SimpleDS;

type
  TF_edit_etat_virement = class(TForm)
    imp: TBitBtn;
    fin: TBitBtn;
    Ecran: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Label1: TLabel;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    lignes: TSQLQuery;
    DataSetProvider_lignes: TDataSetProvider;
    DBGrid2: TDBGrid;
    ClientDataSet_lignes: TClientDataSet;
    simpledataset_parameters: TSimpleDataSet;
    procedure finClick(Sender: TObject);
    procedure imprimer(Sender: TObject);
    procedure EcranClick(Sender: TObject);
    procedure impClick(Sender: TObject);
    procedure uu(Sender: TObject);
    procedure oncreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_edit_etat_virement: TF_edit_etat_virement;

implementation

uses u_etat_virement, u_dm;

{$R *.dfm}

procedure TF_edit_etat_virement.finClick(Sender: TObject);
begin
   F_edit_etat_virement.Visible:=false
end;

procedure TF_edit_etat_virement.imprimer(Sender: TObject);
begin
    clientdataset_lignes.close;
    lignes.Close;
    lignes.Params[0].asstring:=f_dm.sm.fieldByName('gestion').asstring;
    lignes.Params[1].asinteger:=f_dm.sm.fieldByName('mandat').asinteger;
    lignes.Params[2].asstring:=f_dm.sm.fieldByName('chapitre').asstring;
    lignes.Params[3].asstring:=f_dm.sm.fieldByName('article').asstring;
  //  lignes.Params[4].asdate:=f_dm.ClientDataSet_mandat.fieldByName('dates').asdatetime;
  //  lignes.Params[5].asstring:=f_dm.ClientDataSet_mandat.fieldByName('structure').asstring;
    lignes.open;lignes.First;
    clientdataset_lignes.Open;
    imp.enabled:=true;
    ecran.enabled:=true;
end;

procedure TF_edit_etat_virement.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
    M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
   ScaleBy(M, D);
   Realign;
   //if f_dm.connect_db_gf.Connected then simpledataset_parameters.Open
end;

procedure TF_edit_etat_virement.EcranClick(Sender: TObject);
begin
   PrintDialog1.Execute;
   f_etat_virement.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_virement.quickrep1.PrevShowThumbs:=false;
   f_etat_virement.quickrep1.PrevShowSearch:=false;

   f_etat_virement.quickrep1.ShowProgress:=true;

   f_etat_virement.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_virement.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_virement.quickrep1.PreviewModal;
   imp.enabled:=false;
   ecran.enabled:=false;
end;

procedure TF_edit_etat_virement.impClick(Sender: TObject);
begin
  PrintDialog1.Execute;
   f_etat_virement.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_virement.quickrep1.PrevShowThumbs:=false;
   f_etat_virement.quickrep1.PrevShowSearch:=false;

   f_etat_virement.quickrep1.ShowProgress:=true;

   f_etat_virement.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_virement.quickrep1.PrinterSettings.Copies:=Printer.Copies;
    f_etat_virement.quickrep1.print;
    imp.enabled:=false;
    ecran.enabled:=false;
end;



procedure TF_edit_etat_virement.uu(Sender: TObject);
begin
     if edit1.text<>'' then
     f_dm.sm.locate('mandat',strtoint(trim(edit1.text)),[]);
end;

end.
