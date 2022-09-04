unit u1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, DBTables;

type
  TForm1 = class(TForm)
    Table1: TTable;
    ds1: TDataSource;
    DBGrid1: TDBGrid;
    Table2: TTable;
    Ds2: TDataSource;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Table11: TTable;
    ds11: TDataSource;
    Table22: TTable;
    ds22: TDataSource;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var s:string;
begin
  table2.first;
  repeat
      with table1
       do begin
        IF not FindKey(['2001',table2.fieldByName('chapitre').asstring,table2.fieldByName('article').asstring,table2.fieldByName('mandat').asstring])
        then begin
            insert;
            fieldbyname('gestion').asstring:='2001';
            fieldByName('chapitre').asstring:=table2.fieldByName('chapitre').asstring;
            fieldByName('article').asstring:=table2.fieldByName('article').asstring;
            fieldByName('mandat').asstring:=table2.fieldByName('mandat').asstring;
            fieldByName('structure').asstring:=table2.fieldByName('structure').asstring;
            fieldByName('date').asdatetime:=table2.fieldByName('date').asdatetime;
            fieldByName('obesrvation').asstring:='Saisie a partir de mandat.dbf';
            post;
        end;
        end;
  table2.next
  until table2.eof;
  str(table1.RecordCount,s);
  l1.caption:=s;
  str(table2.RecordCount,s);
  l2.caption:=s;
end;

procedure TForm1.Button2Click(Sender: TObject);

  var s:string;
begin
  table22.first;
  repeat
      with table11
       do begin
        IF not FindKey(['2001',table22.fieldByName('chapitre').asstring,table22.fieldByName('art').asstring,table22.fieldByName('mandat').asstring,table22.fieldByName('ligne').asstring])
        then begin
            insert;
            fieldbyname('gestion').asstring:='2001';
            fieldByName('chapitre').asstring:=table22.fieldByName('chapitre').asstring;
            fieldByName('article').asstring:=table22.fieldByName('art').asstring;
            fieldByName('mandat').asstring:=table22.fieldByName('mandat').asstring;
            fieldByName('ligne').asstring:=table22.fieldByName('ligne').asstring;
            fieldByName('montant').asfloat:=table22.fieldByName('montant').asfloat;
            fieldByName('observation').asstring:='Saisie a partir de ligne.dbf';
            post;
        end;
        end;
  table22.next
  until table22.eof;
  str(table11.RecordCount,s);
  l3.caption:=s;
  str(table22.RecordCount,s);
  l4.caption:=s;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  table11.first;
  repeat

        IF  table1.FindKey([table11.fieldByName('gestion').asstring,table11.fieldByName('chapitre').asstring,table11.fieldByName('article').asstring,table11.fieldByName('mandat').asstring])
        then begin
     table11.edit;
            table11.fieldbyname('date').asdatetime:=table1.fieldbyname('date').asdatetime;
           table11.post;
        end;
        
  table11.next
  until table11.eof;
end;

end.
