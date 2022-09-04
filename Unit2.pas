unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Data.SqlExpr, Datasnap.DBClient, SimpleDS, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    SimpleDataSet_fonction: TSimpleDataSet;
    del: TSQLQuery;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label9: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses u_db1, u_dm;

procedure TForm2.SpeedButton4Click(Sender: TObject);
var i:word;
begin
      if  MessageDlgPos('Confirmer la supression (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                          del.close;
                          del.ExecSQL;
                    end;

    f_dm1.fonction.First;SimpleDataSet_fonction.Open;
     if  MessageDlgPos('Insérer les données dans GRADE (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                   // f_dm.SimpleDataSet_agent.Open;
     i:=0;
     while not f_dm1.grade.Eof do begin

          SimpleDataSet_fonction.append;
           SimpleDataSet_fonction.FieldByName('code').AsString:=trim(f_dm1.fonction.FieldByName('code').AsString);
           SimpleDataSet_fonction.FieldByName('fonction').AsString:=trim(f_dm1.fonction.FieldByName('nom').AsString);
           SimpleDataSet_fonction.FieldByName('fonctiona').AsString:=trim(f_dm1.fonction.FieldByName('nom_ar').AsString);

           f_dm1.fonction.Next;
                                    end;
     SimpleDataSet_fonction.ApplyUpdates(-1);   f_dm.SimpleDataSet_fonction.Refresh;
     SimpleDataSet_fonction.Close;
     MessageDlgPos(inttostr(i)+' grades ajoutés ...',mtConfirmation, [], 0, 5,530);
                                    end;
end;

end.
