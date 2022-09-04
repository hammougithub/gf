unit U_sql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Datasnap.DBClient, Data.DB, Data.SqlExpr,
  Datasnap.Provider,printers;

type
  Tf_sql = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    SQLQuery1: TSQLQuery;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DataSetProvider3: TDataSetProvider;
    ClientDataSet3: TClientDataSet;
    DataSource3: TDataSource;
    SQLQuery2: TSQLQuery;
    DBNavigator3: TDBNavigator;
    SQLQuery3: TSQLQuery;
    SQLStoredProc1: TSQLStoredProc;
    SQLDataSet1: TSQLDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    t1: TRichEdit;
    Panel4: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    DBGrid4: TDBGrid;
    Label1: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid2: TDBGrid;
    T2: TRichEdit;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Panel8: TPanel;
    DBNavigator2: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure q2(Sender: TObject);
    procedure qq2(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);


  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_sql: Tf_sql; s:string;
  i: integer;
  x,y: integer;
  printDialog : TPrintDialog;
  myPrinter   : TPrinter;

implementation

{$R *.dfm}

procedure Tf_sql.BitBtn1Click(Sender: TObject);
begin
     clientdataset1.close;sqlquery1.close;sqlquery1.SQL.clear;
     sqlquery1.SQL.Add(t1.Text);
   //  sqlquery1.SQL.Add(trim(t1.Lines[0])+' ');
  //   sqlquery1.SQL.Add(trim(t1.Lines[1])+' ');
  //   sqlquery1.SQL.Add(trim(t1.Lines[2]));
        try
         sqlquery1.Active:=true ; clientdataset1.Open
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
end;



procedure Tf_sql.BitBtn2Click(Sender: TObject);
begin
     clientdataset1.close;sqlquery1.close;sqlquery1.SQL.clear;
     sqlquery1.SQL.Add(t1.Text);
    // sqlquery1.SQL.Add(t1.Lines[0]);
   //  sqlquery1.SQL.Add(t1.Lines[1]);
   ///  sqlquery1.SQL.Add(t1.Lines[2]);
        try
         sqlquery1.ExecSQL ;
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
end;



procedure Tf_sql.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
 //  Realign;
end;



procedure Tf_sql.q2(Sender: TObject);
begin
     clientdataset2.close;sqlquery2.close;sqlquery2.SQL.clear;
     sqlquery2.SQL.Add(t2.text);
     //sqlquery2.SQL.Add(t2.Lines[1]);
     //sqlquery2.SQL.Add(t2.Lines[2]);
        try
         sqlquery2.Active:=true ; clientdataset2.Open
        except
         showmessage('Erreur commande SQl2 ...');//t1.Clear;
        end;
end;

procedure Tf_sql.qq2(Sender: TObject);
begin
     clientdataset2.close;sqlquery2.close;sqlquery2.SQL.clear;
     //  sqlquery2.SQL.LoadFromFile('pop.txt');
     sqlquery2.SQL.Add(t2.Text);
    // sqlquery2.SQL.Add(t2.Lines[0]);
    // sqlquery2.SQL.Add(t2.Lines[1]);
    // sqlquery2.SQL.Add(t2.Lines[2]);
        try
         sqlquery2.ExecSQL
        except
         showmessage('Erreur commande SQl2 ...');//t1.Clear;
        end;
end;

procedure Tf_sql.SpeedButton1Click(Sender: TObject);
const
  LeftMargin = 0.05;
  TopMargin = 0.05;
  BottomMargin = 0.05;
begin
   // Create a printer selection dialog
  printDialog := TPrintDialog.Create(f_sql);

  // If the user has selected a printer (or default), then print!
  if printDialog.Execute then
    begin
        {Printer.BeginDoc;
        y := Round(TopMargin*Printer.PageHeight);
        DBGrid1.DataSource.DataSet.First; }

         Printer.BeginDoc;
        y := Round(TopMargin*Printer.PageHeight);
       // x := Round(LeftMargin*Printer.PageWidth);
        DBGrid1.DataSource.DataSet.First;

       

        x := Round(LeftMargin*Printer.PageWidth);
        for i := 0 to DBGrid1.DataSource.DataSet.FieldCount-1 do begin
            printer.Canvas.TextOut(x,y,DBGrid1.Columns[i].title.caption);
            x := x + MulDiv(DBGrid1.Columns[i].Width,Printer.PageWidth, DBGrid1.Width);
        end;

         y := y + printer.Canvas.TextHeight('A')+3;
         printer.Canvas.TextOut(1,y,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A')+3;

        while not DBGrid1.DataSource.DataSet.Eof do
          begin
            x := Round(LeftMargin*Printer.PageWidth);
           for i := 0 to DBGrid1.DataSource.DataSet.FieldCount-1 do
           begin
               printer.Canvas.TextOut(x,y,DBGrid1.DataSource.DataSet.Fields[i].AsString);
               x := x + MulDiv(DBGrid1.Columns[i].Width,Printer.PageWidth, DBGrid1.Width);
           end;
         DBGrid1.DataSource.DataSet.Next;
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
