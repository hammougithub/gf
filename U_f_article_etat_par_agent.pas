unit U_f_article_etat_par_agent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider,printers, Data.SqlExpr, Vcl.Buttons;

type
  Tf_article_etat_par_agent = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBNavigator2: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Label10: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    SpeedButton2: TSpeedButton;
    DataSource: TDataSource;
    DataSetProvider: TDataSetProvider;
    cl1: TClientDataSet;
    lignes: TSQLQuery;
    Label3: TLabel;
    procedure find(Sender: TObject);
    procedure filtrer(Sender: TObject);
    procedure des_find(Sender: TObject);
    procedure ref_find(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_article_etat_par_agent: Tf_article_etat_par_agent;
    i: integer;
  x,y: integer;
  printDialog : TPrintDialog;
  myPrinter   : TPrinter;
implementation

{$R *.dfm}

uses u_dm, u_consommation;

procedure Tf_article_etat_par_agent.Button2Click(Sender: TObject);
begin
       f_dm.SimpleDataSet_consommation.FieldByName('dates').editmask:='##/##/####';
      if f_conSOMMAtion.WindowState=wsMinimized then f_consommation.WindowState:=wsMaximized ;
     f_consommation.visible:=true;f_consommation.bringtofront;
end;

procedure Tf_article_etat_par_agent.des_find(Sender: TObject);
begin
  if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_article_etat_par_agent.filtrer(Sender: TObject);
begin
     dbgrid1.Canvas.Font.Color:=ClBlue;
     dbgrid1.Canvas.Brush.Color:=ClYellow;
     lignes.close;cl1.Close;
     lignes.Params[0].AsString:=f_dm.clientdataset_desig.FieldByName('ref').asstring;
     lignes.open;Cl1.Open;DBGRID3.Refresh;
     label2.Caption:= inttostr(Cl1.RecordCount)+'-- lignes -- '+trim(f_dm.clientdataset_desig.FieldByName('designation').asstring)+'     '+DateTimeToStr(Now);
end;

procedure Tf_article_etat_par_agent.find(Sender: TObject);
begin
      if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_article_etat_par_agent.ref_find(Sender: TObject);
begin
      if edit3.text<>'' then
     f_dm.clientdataset_desig.locate('ref',trim(edit3.text), [loCaseInsensitive,loPartialKey]);
end;


procedure Tf_article_etat_par_agent.SpeedButton1Click(Sender: TObject);
const
  LeftMargin = 0.05;
  TopMargin = 0.05;
  BottomMargin = 0.05;
begin
   // Create a printer selection dialog
  printDialog := TPrintDialog.Create(f_article_etat_par_agent);

  // If the user has selected a printer (or default), then print!
  if printDialog.Execute then
    begin
        Printer.BeginDoc;
        y := Round(TopMargin*Printer.PageHeight);
       // x := Round(LeftMargin*Printer.PageWidth);
        DBGrid3.DataSource.DataSet.First;
        printer.Canvas.TextOut(1,y,label2.Caption);
        y := y + printer.Canvas.TextHeight('A')+3;
        printer.Canvas.TextOut(1,y,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A')+3;
        printer.Canvas.TextOut(1,y,'               Bureau                            Nom                        Prénom                  Date       Quantité                    Observation');
        y := y + printer.Canvas.TextHeight('A')+3;
         printer.Canvas.TextOut(1,y,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
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
                printer.Canvas.TextOut(x,y,datetostr(DBGrid3.DataSource.DataSet.Fields[3].Asdatetime));
               x := x + MulDiv(DBGrid3.Columns[3].Width,Printer.PageWidth, DBGrid3.Width);
             printer.Canvas.TextOut(x,y,floattostrf(DBGrid3.DataSource.DataSet.Fields[4].Asfloat,ffNumber,12,2));
               x := x + MulDiv(DBGrid3.Columns[4].Width,Printer.PageWidth, DBGrid3.Width);

               printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[5].Asstring);

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
