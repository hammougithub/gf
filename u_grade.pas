unit u_grade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.DBClient, SimpleDS;

type
  TF_GRADE = class(TForm)
    SimpleDataSet_grade: TSimpleDataSet;
    del: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    SpeedButton4: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Label9: TLabel;
    Label1: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure on_create(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_GRADE: TF_GRADE;

implementation

{$R *.dfm}

uses u_db1, u_dm;

procedure TF_GRADE.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
 //  Realign;
end;



procedure TF_GRADE.SpeedButton4Click(Sender: TObject);
var i:word;
begin
      if  MessageDlgPos('Confirmer la supression (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                          del.Close;
                          del.ExecSQL;
                    end;

    f_dm1.grade.First;//SimpleDataSet_grade.Open;
     if  MessageDlgPos('Insérer les données dans GRADE (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                   // f_dm.SimpleDataSet_agent.Open;
     i:=0;
     while not f_dm1.grade.Eof do begin

           f_dm.SimpleDataSet_grade.append;
           f_dm.SimpleDataSet_grade.FieldByName('code').AsString:=trim(f_dm1.grade.FieldByName('code').AsString);
           if trim(f_dm1.grade.FieldByName('nom').AsString)<>'' then
                           f_dm.SimpleDataSet_grade.FieldByName('grade').AsString:=trim(f_dm1.grade.FieldByName('nom').AsString)
                           else f_dm.SimpleDataSet_grade.FieldByName('grade').AsString:=trim(f_dm1.grade.FieldByName('nom_ar').AsString);

           f_dm.SimpleDataSet_grade.FieldByName('gradea').AsString:=trim(f_dm1.grade.FieldByName('nom_ar').AsString);
           f_dm.SimpleDataSet_grade.FieldByName('categ').AsString:=trim(f_dm1.grade.FieldByName('cat').AsString);
           f_dm.SimpleDataSet_grade.FieldByName('section').AsString:=trim(f_dm1.grade.FieldByName('sec').AsString);
           f_dm.SimpleDataSet_grade.post;  i:=i+1;
           f_dm1.grade.Next;
                                    end;
     f_dm.SimpleDataSet_grade.ApplyUpdates(-1);   f_dm.SimpleDataSet_grade.Refresh;

     MessageDlgPos(inttostr(i)+' grades ajoutés ...',mtConfirmation, [], 0, 5,530);
                                    end;
end;

end.
