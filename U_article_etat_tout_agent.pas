unit U_article_etat_tout_agent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider,printers, Data.SqlExpr, Vcl.Buttons, frxClass, frxDBSet,
  Vcl.Mask;

type
  Tf_article_etat_tout_agent = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Label10: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    DataSource: TDataSource;
    DataSetProvider: TDataSetProvider;
    cl1: TClientDataSet;
    lignes: TSQLQuery;
    RadioGroup1: TRadioGroup;
    frxReport1: TfrxReport;
    fs_ds: TButton;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    RadioGroup2: TRadioGroup;
    frxDBDataset3: TfrxDBDataset;
    DataSource1: TDataSource;
    cl2: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DBNavigator3: TDBNavigator;
    custommer1: TSQLQuery;
    Label4: TLabel;
    q1: TSQLQuery;
    Cl3: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    DataSource2: TDataSource;
    procedure find(Sender: TObject);
    procedure filtrer(Sender: TObject);
    procedure des_find(Sender: TObject);
    procedure ref_find(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tri(Sender: TObject);
    procedure fs_dsClick(Sender: TObject);
    procedure group_by(Sender: TObject);
    procedure fsClick(Sender: TObject);

  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  f_article_etat_tout_agent: Tf_article_etat_tout_agent;
    i: integer;
  x,y: integer;
  printDialog : TPrintDialog;
  myPrinter   : TPrinter;xadm,xmat:string;
implementation

{$R *.dfm}

uses u_forme1,u_dm, u_consommation, u_article_etat_par_agent;

procedure Tf_article_etat_tout_agent.Button2Click(Sender: TObject);
begin
       if ar_fr='a' then begin
       if f_conSOMMAtion.visible=true then f_conSOMMAtion.Close;
       f_conSOMMAtion.Caption:='«”‹‹ ‹Â‹‹‹‹‹‹‹‹‹‹·«ﬂ« ';

      with f_conSOMMAtion do begin
           radiogroup1.Caption:=' — Ì‹‹‹»' ; radiogroup1.Items[0]:=' Õ”» «·«”‹‹„ '; radiogroup1.Items[1]:=' Õ”» «·‹—„‹‹“ ';
           label3.Caption:='„‹‹·› «·«” Â·«ﬂ' ;
      label1.Caption:='„·‹‹› «· ⁄ÌÌ‰« ' ;
      label7.Caption:='„·› «·„ÊŸ›Ì‰' ;
      label2.Caption:='„·‹‹› «·„’·Õ« ' ;
      fin.Caption:='‰‹Â‹‹‹«Ì…';button2.caption:='«·‹ ‹⁄ÌÌ‹‹‹« '; SpeedButton2.caption:=' ‹Õ—Ì—« ';

      label5.Caption:='.—ﬁ‹‹‹‹„ „    ';label4.Caption:='«··ﬁ‹‹‹‹‹»   '; label6.Caption:='«·«”‹‹‹‹‹‹‹‹„   '  ;
      label9.Caption:='«· ⁄ÌÌ‰  ';label10.Caption:='«·—„‹‹“  ';

      dbgrid3.Columns[1].Title.caption:='«·«œ«—…' ;//dbgrid3.Columns[1].alignment:=tarightjustify;
      dbgrid3.Columns[2].Title.caption:='.—ﬁ„ „' ;// dbgrid3.Columns[2].alignment:=tarightjustify;
      dbgrid3.Columns[3].Title.caption:='«·—„‹‹‹“' ;//dbgrid3.Columns[3].alignment:=tarightjustify;
      dbgrid3.Columns[4].Title.caption:='«· ⁄ÌÌ‰' ; //dbgrid3.Columns[4].alignment:=tarightjustify;
      dbgrid3.Columns[5].Title.caption:='«· «—ÌŒ' ;//dbgrid3.Columns[5].alignment:=tarightjustify;
      dbgrid3.Columns[6].Title.caption:='«·„’·Õ…' ;//dbgrid3.Columns[6].alignment:=tarightjustify;
      dbgrid3.Columns[7].Title.caption:='«·ﬂ„Ì…' ;//dbgrid3.Columns[7].alignment:=tarightjustify;
      dbgrid3.Columns[8].Title.caption:='„·«ÕŸ‹‹‹‹« ' ;//dbgrid3.Columns[8].alignment:=tarightjustify;

      DBGRiD1.Columns[0].Title.caption:='«·—„‹‹‹“' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='«· ⁄ÌÌ‰' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='«·ÊÕœ…' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='ﬂ. «·«’·Ì…' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='ﬂ. «·Õ«·Ì…' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;



      DBGRiD4.Columns[0].Title.caption:='«·«œ«—…' ;//DBGRiD4.Columns[0].alignment:=tarightjustify;
      DBGRiD4.Columns[1].Title.caption:='.—ﬁ„ „' ; //DBGRiD4.Columns[1].alignment:=tarightjustify;
      DBGRiD4.Columns[2].Title.caption:='·ﬁ» ⁄—»Ì' ;//DBGRiD4.Columns[2].alignment:=tarightjustify;
      DBGRiD4.Columns[3].Title.caption:='«”„ ⁄—»Ì'  ;//DBGRiD4.Columns[3].alignment:=tarightjustify;
      DBGRiD4.Columns[4].Title.caption:='·ﬁ» ›—‰”Ì' ; //DBGRiD4.Columns[4].alignment:=tarightjustify;
      DBGRiD4.Columns[5].Title.caption:='«”„  ›—‰”Ì' ; //DBGRiD4.Columns[5].alignment:=tarightjustify;

          end;


  end;

  if ar_fr='f' then begin
              if f_conSOMMAtion.visible=true then f_conSOMMAtion.Close;
  f_conSOMMAtion.Caption:='C O N S O M M A T I O N';

  with f_conSOMMAtion do begin
      radiogroup1.Caption:='T R I' ; radiogroup1.Items[0]:=' par dÈsignation '; radiogroup1.Items[1]:=' par rÈfÈrence ';
      label3.Caption:='TABLE CONSOMMATION' ;
      label1.Caption:='TABLE DESIGNATION' ;
      label7.Caption:='TABLE AGENT' ;
      label2.Caption:='TABLE SERVICE' ;
      fin.Caption:='F I N';button2.caption:='DESIGNATION'; SpeedButton2.caption:='E T A T S';

      label5.Caption:='Matricule';label4.Caption:='nom(en Ar)'; label6.Caption:='PrÈnom(en Ar)';
      label9.Caption:='DESIGNATION';label10.Caption:='CODE';

      dbgrid3.Columns[1].Title.caption:='ADMMINI' ;dbgrid3.Columns[1].alignment:=taleftjustify;
      dbgrid3.Columns[2].Title.caption:='mat' ; dbgrid3.Columns[2].alignment:=taleftjustify;
      dbgrid3.Columns[3].Title.caption:='Code' ;dbgrid3.Columns[3].alignment:=taleftjustify;
      dbgrid3.Columns[4].Title.caption:='Designation' ; dbgrid3.Columns[4].alignment:=taleftjustify;
      dbgrid3.Columns[5].Title.caption:='Date' ;dbgrid3.Columns[5].alignment:=taleftjustify;
      dbgrid3.Columns[6].Title.caption:='Service' ;dbgrid3.Columns[6].alignment:=taleftjustify;
      dbgrid3.Columns[7].Title.caption:='QtÈ' ;dbgrid3.Columns[7].alignment:=taleftjustify;
      dbgrid3.Columns[8].Title.caption:='Obesrvation' ;dbgrid3.Columns[8].alignment:=taleftjustify;

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='DÈsignation' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='UnitÈ' ;DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='QtÈ ini.' ;DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='QtÈ act.' ; DBGRiD1.Columns[4].alignment:=taleftjustify;

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='Nom Ar' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Nom Fr' ;DBGRiD1.Columns[2].alignment:=taleftjustify;

      DBGRiD4.Columns[0].Title.caption:='Admini' ;DBGRiD4.Columns[0].alignment:=taleftjustify;
      DBGRiD4.Columns[1].Title.caption:='Matricule' ; DBGRiD4.Columns[1].alignment:=taleftjustify;
      DBGRiD4.Columns[2].Title.caption:='Nom Ar' ;DBGRiD4.Columns[2].alignment:=taleftjustify;
      DBGRiD4.Columns[3].Title.caption:='PrÈnom Ar'  ;DBGRiD4.Columns[3].alignment:=taleftjustify;
      DBGRiD4.Columns[4].Title.caption:='Nom Fr' ; DBGRiD4.Columns[4].alignment:=taleftjustify;
      DBGRiD4.Columns[5].Title.caption:='PrÈnom Fr' ; DBGRiD4.Columns[5].alignment:=taleftjustify;



  end;
  end;
  f_dm.SimpleDataSet_consommation.FieldByName('dates').editmask:='##/##/####';
      if f_conSOMMAtion.WindowState=wsMinimized then f_consommation.WindowState:=wsMaximized ;
     f_consommation.visible:=true;f_consommation.bringtofront;
end;





procedure Tf_article_etat_tout_agent.des_find(Sender: TObject);
begin
  if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_article_etat_tout_agent.filtrer(Sender: TObject);
begin
     dbgrid1.Canvas.Font.Color:=ClBlue;
     dbgrid1.Canvas.Brush.Color:=ClYellow;
     lignes.close;cl1.Close;
     lignes.Params[0].AsString:=f_dm.clientdataset_desig.FieldByName('ref').asstring;
     lignes.open;Cl1.Open;DBGRID3.Refresh;
     label2.Caption:= inttostr(Cl1.RecordCount)+'-- lignes -- '+trim(f_dm.clientdataset_desig.FieldByName('designation').asstring)+'     '+DateTimeToStr(Now);
end;

procedure Tf_article_etat_tout_agent.find(Sender: TObject);
begin
      if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;


procedure Tf_article_etat_tout_agent.fsClick(Sender: TObject);
begin
       case RadioGroup2.ItemIndex of
                     0:begin
                         frxReport1.LoadFromFile('consommation_par_agent.fr3'); frxReport1.ShowProgress:=true;frxReport1.ShowReport;
                     end;
                     1:begin
                          frxReport1.LoadFromFile('consommation_par_service.fr3'); ; frxReport1.ShowProgress:=true;frxReport1.ShowReport;
                      end; end;
end;

procedure Tf_article_etat_tout_agent.fs_dsClick(Sender: TObject);
begin
 case RadioGroup2.ItemIndex of
                     0:begin
                         frxReport1.LoadFromFile('consommation_par_agent.fr3'); frxReport1.DesignReport();
                     end;
                     1:begin
                          frxReport1.LoadFromFile('consommation_par_service.fr3'); frxReport1.DesignReport();
                      end; end;

end;

procedure Tf_article_etat_tout_agent.group_by(Sender: TObject);
begin
       case RadioGroup2.ItemIndex of
                     0:begin
                          lignes.Close;cl1.close; lignes.SQL.Clear;
                          lignes.SQL.Add('select a.ref,a.dates,a.qt,c.noma,b.adm,b.mat,b.noma,b.prenoma,a.observation,a.service,a.adm,a.mat,a.designation,b.adm,b.mat,c.code,c.noma ');
                          lignes.SQL.Add('from consommation a,employes b,service c where ref=:x and a.service=c.code and a.adm=b.adm and a.mat=b.mat ');
                          lignes.SQL.Add('order by a.adm,a.mat');
                          lignes.Params[0].AsString:=f_dm.clientdataset_desig.FieldByName('ref').asstring;
                          lignes.open;cl1.open;
                     end;
                     1:begin
                         lignes.Close;cl1.close; lignes.SQL.Clear;
                          lignes.SQL.Add('select a.ref,a.dates,a.qt,c.noma,b.adm,b.mat,b.noma,b.prenoma,a.observation,a.service,a.adm,a.mat,a.designation,b.adm,b.mat,c.code,c.noma ');
                          lignes.SQL.Add('from consommation a,employes b,service c where ref=:x and a.service=c.code and a.adm=b.adm and a.mat=b.mat ');
                          lignes.SQL.Add('order by a.service,a.adm,a.mat');
                          lignes.Params[0].AsString:=f_dm.clientdataset_desig.FieldByName('ref').asstring;
                          lignes.open;cl1.open;
                     end;   end;
end;



procedure Tf_article_etat_tout_agent.ref_find(Sender: TObject);
begin
      if edit3.text<>'' then
     f_dm.clientdataset_desig.locate('ref',trim(edit3.text), [loCaseInsensitive,loPartialKey]);
end;


procedure Tf_article_etat_tout_agent.SpeedButton1Click(Sender: TObject);
const
  LeftMargin = 0.05;
  TopMargin = 0.05;
  BottomMargin = 0.05;
begin
   // Create a printer selection dialog
  printDialog := TPrintDialog.Create(f_article_etat_tout_agent);

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
        printer.Canvas.TextOut(1,y,'               Bureau                            Nom                        PrÈnom                  Date       QuantitÈ                    Observation');
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


procedure Tf_article_etat_tout_agent.tri(Sender: TObject);
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
