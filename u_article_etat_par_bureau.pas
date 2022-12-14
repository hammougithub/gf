unit u_article_etat_par_bureau;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Vcl.Buttons,
  Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr,printers;

type
  Tf_article_etat_par_bureau = class(TForm)
    DBGrid1: TDBGrid;
    lignes: TSQLQuery;
    cl1: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    DataSource: TDataSource;
    DBGrid3: TDBGrid;
    Button2: TButton;
    Edit3: TEdit;
    Edit1: TEdit;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    procedure find(Sender: TObject);
    procedure des_find(Sender: TObject);
    procedure ref_find(Sender: TObject);
    procedure filtrer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tri(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  f_article_etat_par_bureau: Tf_article_etat_par_bureau;
    i: integer;
  x,y: integer;
  printDialog : TPrintDialog;
  myPrinter   : TPrinter;
implementation

{$R *.dfm}

uses u_forme1,u_dm, u_consommation;

procedure Tf_article_etat_par_bureau.Button2Click(Sender: TObject);
begin

  if ar_fr='a' then begin
       if f_conSOMMAtion.visible=true then f_conSOMMAtion.Close;
       f_conSOMMAtion.Caption:='??????????????????????';

      with f_conSOMMAtion do begin
           radiogroup1.Caption:='????????' ; radiogroup1.Items[0]:=' ??? ??????? '; radiogroup1.Items[1]:=' ??? ???????? ';
           label3.Caption:='????? ?????????' ;
      label1.Caption:='????? ?????????' ;
      label7.Caption:='??? ????????' ;
      label2.Caption:='????? ????????' ;
      fin.Caption:='?????????';button2.caption:='?????????????'; SpeedButton2.caption:='????????';

      label5.Caption:='.??????? ?    ';label4.Caption:='??????????   '; label6.Caption:='?????????????   '  ;
      label9.Caption:='???????  ';label10.Caption:='???????  ';

      dbgrid3.Columns[1].Title.caption:='???????' ;//dbgrid3.Columns[1].alignment:=tarightjustify;
      dbgrid3.Columns[2].Title.caption:='.??? ?' ;// dbgrid3.Columns[2].alignment:=tarightjustify;
      dbgrid3.Columns[3].Title.caption:='????????' ;//dbgrid3.Columns[3].alignment:=tarightjustify;
      dbgrid3.Columns[4].Title.caption:='???????' ; //dbgrid3.Columns[4].alignment:=tarightjustify;
      dbgrid3.Columns[5].Title.caption:='???????' ;//dbgrid3.Columns[5].alignment:=tarightjustify;
      dbgrid3.Columns[6].Title.caption:='???????' ;//dbgrid3.Columns[6].alignment:=tarightjustify;
      dbgrid3.Columns[7].Title.caption:='??????' ;//dbgrid3.Columns[7].alignment:=tarightjustify;
      dbgrid3.Columns[8].Title.caption:='???????????' ;//dbgrid3.Columns[8].alignment:=tarightjustify;

      DBGRiD1.Columns[0].Title.caption:='????????' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='???????' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='??????' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='?. ???????' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='?. ???????' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;



      DBGRiD4.Columns[0].Title.caption:='???????' ;//DBGRiD4.Columns[0].alignment:=tarightjustify;
      DBGRiD4.Columns[1].Title.caption:='.??? ?' ; //DBGRiD4.Columns[1].alignment:=tarightjustify;
      DBGRiD4.Columns[2].Title.caption:='??? ????' ;//DBGRiD4.Columns[2].alignment:=tarightjustify;
      DBGRiD4.Columns[3].Title.caption:='??? ????'  ;//DBGRiD4.Columns[3].alignment:=tarightjustify;
      DBGRiD4.Columns[4].Title.caption:='??? ?????' ; //DBGRiD4.Columns[4].alignment:=tarightjustify;
      DBGRiD4.Columns[5].Title.caption:='???  ?????' ; //DBGRiD4.Columns[5].alignment:=tarightjustify;

          end;


  end;

  if ar_fr='f' then begin
              if f_conSOMMAtion.visible=true then f_conSOMMAtion.Close;
  f_conSOMMAtion.Caption:='C O N S O M M A T I O N';

  with f_conSOMMAtion do begin
      radiogroup1.Caption:='T R I' ; radiogroup1.Items[0]:=' par d?signation '; radiogroup1.Items[1]:=' par r?f?rence ';
      label3.Caption:='TABLE CONSOMMATION' ;
      label1.Caption:='TABLE DESIGNATION' ;
      label7.Caption:='TABLE AGENT' ;
      label2.Caption:='TABLE SERVICE' ;
      fin.Caption:='F I N';button2.caption:='DESIGNATION'; SpeedButton2.caption:='E T A T S';

      label5.Caption:='Matricule';label4.Caption:='nom(en Ar)'; label6.Caption:='Pr?nom(en Ar)';
      label9.Caption:='DESIGNATION';label10.Caption:='CODE';

      dbgrid3.Columns[1].Title.caption:='ADMMINI' ;dbgrid3.Columns[1].alignment:=taleftjustify;
      dbgrid3.Columns[2].Title.caption:='mat' ; dbgrid3.Columns[2].alignment:=taleftjustify;
      dbgrid3.Columns[3].Title.caption:='Code' ;dbgrid3.Columns[3].alignment:=taleftjustify;
      dbgrid3.Columns[4].Title.caption:='Designation' ; dbgrid3.Columns[4].alignment:=taleftjustify;
      dbgrid3.Columns[5].Title.caption:='Date' ;dbgrid3.Columns[5].alignment:=taleftjustify;
      dbgrid3.Columns[6].Title.caption:='Service' ;dbgrid3.Columns[6].alignment:=taleftjustify;
      dbgrid3.Columns[7].Title.caption:='Qt?' ;dbgrid3.Columns[7].alignment:=taleftjustify;
      dbgrid3.Columns[8].Title.caption:='Obesrvation' ;dbgrid3.Columns[8].alignment:=taleftjustify;

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='D?signation' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Unit?' ;DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='Qt? ini.' ;DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Qt? act.' ; DBGRiD1.Columns[4].alignment:=taleftjustify;

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='Nom Ar' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Nom Fr' ;DBGRiD1.Columns[2].alignment:=taleftjustify;

      DBGRiD4.Columns[0].Title.caption:='Admini' ;DBGRiD4.Columns[0].alignment:=taleftjustify;
      DBGRiD4.Columns[1].Title.caption:='Matricule' ; DBGRiD4.Columns[1].alignment:=taleftjustify;
      DBGRiD4.Columns[2].Title.caption:='Nom Ar' ;DBGRiD4.Columns[2].alignment:=taleftjustify;
      DBGRiD4.Columns[3].Title.caption:='Pr?nom Ar'  ;DBGRiD4.Columns[3].alignment:=taleftjustify;
      DBGRiD4.Columns[4].Title.caption:='Nom Fr' ; DBGRiD4.Columns[4].alignment:=taleftjustify;
      DBGRiD4.Columns[5].Title.caption:='Pr?nom Fr' ; DBGRiD4.Columns[5].alignment:=taleftjustify;



  end;
  end;
  f_dm.SimpleDataSet_consommation.FieldByName('dates').editmask:='##/##/####';
      if f_conSOMMAtion.WindowState=wsMinimized then f_consommation.WindowState:=wsMaximized ;
     f_consommation.visible:=true;f_consommation.bringtofront;
end;

procedure Tf_article_etat_par_bureau.des_find(Sender: TObject);
begin
  if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_article_etat_par_bureau.filtrer(Sender: TObject);
begin
     dbgrid1.Canvas.Font.Color:=ClBlue;
     dbgrid1.Canvas.Brush.Color:=ClYellow;
     lignes.close;cl1.Close;
     lignes.Params[0].AsString:=f_dm.clientdataset_desig.FieldByName('ref').asstring;
     lignes.open;Cl1.Open;DBGRID3.Refresh;
     label2.Caption:= inttostr(Cl1.RecordCount)+'-- lignes -- '+trim(f_dm.clientdataset_desig.FieldByName('ref').asstring)+' '+trim(f_dm.clientdataset_desig.FieldByName('designation').asstring)+'     '+DateTimeToStr(Now);
end;

procedure Tf_article_etat_par_bureau.find(Sender: TObject);
begin
 if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_article_etat_par_bureau.ref_find(Sender: TObject);
begin
        if edit3.text<>'' then
        f_dm.clientdataset_desig.locate('ref',trim(edit3.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_article_etat_par_bureau.SpeedButton1Click(Sender: TObject);
const
  LeftMargin = 0.05;
  TopMargin = 0.05;
  BottomMargin = 0.05;
begin
   // Create a printer selection dialog
  printDialog := TPrintDialog.Create(f_article_etat_par_bureau);

  // If the user has selected a printer (or default), then print!
  if printDialog.Execute then
    begin
        Printer.BeginDoc;
        y := Round(TopMargin*Printer.PageHeight);
       // x := Round(LeftMargin*Printer.PageWidth);
        DBGrid3.DataSource.DataSet.First;
        printer.Canvas.TextOut(1,y,label2.Caption);
        y := y + printer.Canvas.TextHeight('A')+3;
        printer.Canvas.TextOut(1,y,'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A')+3;
        printer.Canvas.TextOut(1,y,'             Bureau                                                      Date       Quantit?                    Observation');
        y := y + printer.Canvas.TextHeight('A')+3;
         printer.Canvas.TextOut(1,y,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
        y := y + printer.Canvas.TextHeight('A')+3;
        while not DBGrid3.DataSource.DataSet.Eof do
          begin
            x := Round(LeftMargin*Printer.PageWidth);


           printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[0].AsString);
               x := x + MulDiv(DBGrid3.Columns[0].Width,Printer.PageWidth, DBGrid3.Width);
           printer.Canvas.TextOut(x,y,datetostr(DBGrid3.DataSource.DataSet.Fields[1].Asdatetime));
               x := x + MulDiv(DBGrid3.Columns[1].Width,Printer.PageWidth, DBGrid3.Width);
           printer.Canvas.TextOut(x,y,floattostrf(DBGrid3.DataSource.DataSet.Fields[2].Asfloat,ffNumber,12,2));
               x := x + MulDiv(DBGrid3.Columns[2].Width,Printer.PageWidth, DBGrid3.Width);
                printer.Canvas.TextOut(x,y,DBGrid3.DataSource.DataSet.Fields[3].AsString);


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


procedure Tf_article_etat_par_bureau.tri(Sender: TObject);
begin
case RadioGroup1.ItemIndex of
                     0:begin
                          f_dm.SQLDataSet_desig.Close;f_dm.clientdataset_desig.close;
                          f_dm.SQLDataSet_desig.CommandText:='select * from designation order by designation';
                          f_dm.SQLDataSet_desig.open;f_dm.clientdataset_desig.open
                     end;
                     1:begin
                          f_dm.SQLDataSet_desig.Close;f_dm.clientdataset_desig.close;
                          f_dm.SQLDataSet_desig.CommandText:='select * from designation order by ref';
                          f_dm.SQLDataSet_desig.open;f_dm.clientdataset_desig.open
                     end;

end;
end;

end.
