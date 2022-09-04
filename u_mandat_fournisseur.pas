unit u_mandat_fournisseur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  Datasnap.Provider,printers, Vcl.Buttons;

type
  Tf_mandat_fournisseur = class(TForm)
    DBGrid1: TDBGrid;
    ai: TEdit;
    rc: TEdit;
    nf: TEdit;
    nom: TEdit;
    mat: TEdit;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    SQL_lignes: TSQLQuery;
    DataSource: TDataSource;
    DBNavigator2: TDBNavigator;
    DataSetProvider4: TDataSetProvider;
    cl_lignes11: TClientDataSet;
    SpeedButton1: TSpeedButton;
    procedure seek(Sender: TObject);
    procedure calc(Column: TColumn);
    procedure ca(Sender: TObject);
    procedure seek1(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure on_create(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_mandat_fournisseur: Tf_mandat_fournisseur;
  i: integer;
  x,y: integer;
  printDialog : TPrintDialog;
  myPrinter   : TPrinter;
implementation

{$R *.dfm}

uses u_dm, MAIN;

procedure Tf_mandat_fournisseur.ca(Sender: TObject);
begin
     sql_lignes.close; cl_lignes11.close;
     sql_lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     sql_lignes.Params[1].asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring ;
     cl_lignes11.open;sql_lignes.open;
end;

procedure Tf_mandat_fournisseur.calc(Column: TColumn);
begin
     sql_lignes.close;
     sql_lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     sql_lignes.Params[1].asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring ;
     sql_lignes.open;
end;

procedure Tf_mandat_fournisseur.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
   ScaleBy(M, D);
   Realign;
end;

procedure Tf_mandat_fournisseur.seek(Sender: TObject);
begin
if mat.text<>'' then
    (f_dm.ClientDataSet_fournisseur1.locate('benificiaire',trim(mat.text),[loCaseInsensitive,loPartialKey]));
end;

procedure Tf_mandat_fournisseur.seek1(Sender: TObject);
begin
 if trim(nom.text)<>'' then
     (f_dm.ClientDataSet_fournisseur1.locate('nom',trim(nom.text),[loCaseInsensitive,loPartialKey])) ;
end;

procedure Tf_mandat_fournisseur.SpeedButton1Click(Sender: TObject);
const
  LeftMargin = 0.05;
  TopMargin = 0.05;
  BottomMargin = 0.05;
begin
   // Create a printer selection dialog
  printDialog := TPrintDialog.Create(f_mandat_fournisseur);

  // If the user has selected a printer (or default), then print!
  if printDialog.Execute then
    begin
        Printer.BeginDoc;
        y := Round(TopMargin*Printer.PageHeight);
       // x := Round(LeftMargin*Printer.PageWidth);
        DBGrid3.DataSource.DataSet.First;
        printer.Canvas.TextOut(1,y,'Liste des mandats :'+trim(f_dm.ClientDataSet_fournisseur1.fieldByName('nom').asstring));
        y := y + printer.Canvas.TextHeight('A');
        printer.Canvas.TextOut(1,y,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A');
        printer.Canvas.TextOut(1,y,'Structure                Mandat          Ligne                Chapitre      Article                Date                 Montant                                   Observation ');
        y := y + printer.Canvas.TextHeight('A');
         printer.Canvas.TextOut(1,y,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A');
        while not DBGrid3.DataSource.DataSet.Eof do
          begin
            x := Round(LeftMargin*Printer.PageWidth);
         {  for i := 0 to DBGrid3.DataSource.DataSet.FieldCount-1 do
           begin
               printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[i].AsString);
               x := x + MulDiv(DBGrid3.Columns[i].Width,Printer.PageWidth, DBGrid3.Width);
           end; }

           printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[0].AsString);
               x := x + MulDiv(DBGrid3.Columns[0].Width,Printer.PageWidth, DBGrid3.Width);
               printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[1].AsString);
               x := x + MulDiv(DBGrid3.Columns[1].Width,Printer.PageWidth, DBGrid3.Width);
             printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[2].AsString);
               x := x + MulDiv(DBGrid3.Columns[2].Width,Printer.PageWidth, DBGrid3.Width);
             printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[3].AsString);
               x := x + MulDiv(DBGrid3.Columns[3].Width,Printer.PageWidth, DBGrid3.Width);
                printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[4].AsString);
               x := x + MulDiv(DBGrid3.Columns[4].Width,Printer.PageWidth, DBGrid3.Width);
             printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[5].AsString);
               x := x + MulDiv(DBGrid3.Columns[5].Width,Printer.PageWidth, DBGrid3.Width);


            printer.Canvas.TextOut(x,y,floattostrf(DBGrid3.DataSource.DataSet.Fields[6].Asfloat,ffNumber,12,2));
              x := x + MulDiv(DBGrid3.Columns[6].Width,Printer.PageWidth, DBGrid3.Width);
              printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[7].AsString);
              x := x + MulDiv(DBGrid3.Columns[7].Width,Printer.PageWidth, DBGrid3.Width);
           
         DBGrid3.DataSource.DataSet.Next;
         y := y + printer.Canvas.TextHeight('A')+3;
         if y > (1-TopMargin-BottomMargin)* Printer.PageHeight then
           begin
              y := Round(TopMargin*Printer.PageHeight);
              Printer.NewPage;
           end;
      end;
    Printer.EndDoc;
    end;
end;

end.
