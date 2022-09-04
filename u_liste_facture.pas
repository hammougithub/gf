unit u_liste_facture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids,printers, Vcl.DBGrids;

type
  TF_liste_facture = class(TForm)
    cl_lignes11: TClientDataSet;
    DataSetProvider4: TDataSetProvider;
    DataSource: TDataSource;
    SQL_lignes: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGrid3: TDBGrid;
    DBNavigator2: TDBNavigator;
    rc: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    ai: TEdit;
    nf: TEdit;
    Label4: TLabel;
    nom: TEdit;
    Label3: TLabel;
    mat: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    procedure seek(Sender: TObject);
    procedure nom_seek(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_liste_facture: TF_liste_facture;
  i: integer;
  x,y: integer; printDialog : TPrintDialog;
  myPrinter   : TPrinter;
implementation

{$R *.dfm}

uses u_dm;

procedure TF_liste_facture.nom_seek(Sender: TObject);
begin
 if trim(nom.text)<>'' then
     (f_dm.ClientDataSet_fournisseur2.locate('nom',trim(nom.text),[loCaseInsensitive,loPartialKey])) ;
end;

procedure TF_liste_facture.seek(Sender: TObject);
begin
      if mat.text<>'' then
    (f_dm.ClientDataSet_fournisseur2.locate('benificiaire',trim(mat.text),[loCaseInsensitive,loPartialKey]));
end;

procedure TF_liste_facture.SpeedButton1Click(Sender: TObject);
const
  LeftMargin = 0.05;
  TopMargin = 0.05;
  BottomMargin = 0.05;
begin
   // Create a printer selection dialog
  printDialog := TPrintDialog.Create(F_liste_facture);

  // If the user has selected a printer (or default), then print!
  if printDialog.Execute then
    begin
        Printer.BeginDoc;
        y := Round(TopMargin*Printer.PageHeight);
       // x := Round(LeftMargin*Printer.PageWidth);
        DBGrid3.DataSource.DataSet.First;
        printer.Canvas.TextOut(1,y,trim(f_dm.ClientDataSet_fournisseur2.fieldByName('nom').asstring));
        y := y + printer.Canvas.TextHeight('A')+3;
        printer.Canvas.TextOut(1,y,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A')+3;
        printer.Canvas.TextOut(1,y,'        Gestion        Facture                           Date         Structure     Montant       Chapitre     Article          Observation');
        y := y + printer.Canvas.TextHeight('A')+3;
         printer.Canvas.TextOut(1,y,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A')+3;
        while not DBGrid3.DataSource.DataSet.Eof do
          begin
            x := Round(LeftMargin*Printer.PageWidth);


           printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[0].AsString);
               x := x + MulDiv(DBGrid3.Columns[0].Width,Printer.PageWidth, DBGrid3.Width);
             printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[1].AsString);
               x := x + MulDiv(DBGrid3.Columns[1].Width,Printer.PageWidth, DBGrid3.Width);
               printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[2].AsString);
               x := x + MulDiv(DBGrid3.Columns[2].Width,Printer.PageWidth, DBGrid3.Width);
                printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[3].AsString);
               x := x + MulDiv(DBGrid3.Columns[3].Width,Printer.PageWidth, DBGrid3.Width);
             printer.Canvas.TextOut(x,y,floattostrf(DBGrid3.DataSource.DataSet.Fields[4].Asfloat,ffNumber,12,2));
               x := x + MulDiv(DBGrid3.Columns[4].Width,Printer.PageWidth, DBGrid3.Width);

               printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[5].Asstring);
              x := x + MulDiv(DBGrid3.Columns[5].Width,Printer.PageWidth, DBGrid3.Width);
            printer.Canvas.TextOut(x,y,(DBGrid3.DataSource.DataSet.Fields[6].AsString));
              x := x + MulDiv(DBGrid3.Columns[6].Width,Printer.PageWidth, DBGrid3.Width);
              printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[7].AsString);

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
