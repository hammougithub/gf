unit u_fonction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, Data.DB, Data.SqlExpr, Datasnap.DBClient, SimpleDS,
  Vcl.Grids, Vcl.DBGrids;

type
  Tf_fonction = class(TForm)
    SimpleDataSet_FONCTION: TSimpleDataSet;
    del: TSQLQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    SpeedButton4: TSpeedButton;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid4: TDBGrid;
    procedure SpeedButton4Click(Sender: TObject);
    procedure prendre(Sender: TObject);
    procedure on_create(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_fonction: Tf_fonction;

implementation

{$R *.dfm}

uses u_db1, u_dm;

procedure Tf_fonction.on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
  // Realign;
end;

procedure Tf_fonction.prendre(Sender: TObject);
begin
     f_dm.SimpleDataSet_fonction.append;
           f_dm.SimpleDataSet_fonction.FieldByName('code').AsString:=trim(f_dm1.fonction.FieldByName('code').AsString);
           f_dm.SimpleDataSet_fonction.FieldByName('fonction').AsString:=trim(f_dm1.fonction.FieldByName('nom').AsString);
           f_dm.SimpleDataSet_fonction.FieldByName('fonctiona').AsString:=trim(f_dm1.fonction.FieldByName('nom_ar').AsString);
           f_dm.SimpleDataSet_fonction.FieldByName('etat_nominatif').AsString:='o';
           SimpleDataSet_fonction.FieldByName('indice').Asinteger:=f_dm1.fonction.FieldByName('indice').Asinteger;
           f_dm.SimpleDataSet_fonction.post;
           //f_dm.SimpleDataSet_fonction.ApplyUpdates(-1);
end;

procedure Tf_fonction.SpeedButton4Click(Sender: TObject);
var i:word;
begin
      if  MessageDlgPos('Confirmer la supression (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                          del.Close;
                          del.ExecSQL;
                    end;

    f_dm1.fonction.First;//SimpleDataSet_fonction.Open;
     if  MessageDlgPos('Insérer les données dans fonction (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                       i:=0;
     while not f_dm1.fonction.Eof do begin

          f_dm.SimpleDataSet_fonction.append;
           f_dm.SimpleDataSet_fonction.FieldByName('code').AsString:=trim(f_dm1.fonction.FieldByName('code').AsString);
           if trim(f_dm1.fonction.FieldByName('nom').AsString)<>'' then
                                        f_dm.SimpleDataSet_fonction.FieldByName('fonction').AsString:=trim(f_dm1.fonction.FieldByName('nom').AsString)
                                        else  f_dm.SimpleDataSet_fonction.FieldByName('fonction').AsString:=trim(f_dm1.fonction.FieldByName('nom_ar').AsString);

           f_dm.SimpleDataSet_fonction.FieldByName('fonctiona').AsString:=trim(f_dm1.fonction.FieldByName('nom_ar').AsString);
           f_dm.SimpleDataSet_fonction.FieldByName('etat_nominatif').AsString:='o';
            f_dm.SimpleDataSet_fonction.FieldByName('indice').Asinteger:=f_dm1.fonction.FieldByName('indice').Asinteger;
          // SimpleDataSet_fonction.FieldByName('categ').AsString:=trim(f_dm1.fonction.FieldByName('cat').AsString);
          // SimpleDataSet_fonction.FieldByName('section').AsString:=trim(f_dm1.fonction.FieldByName('sec').AsString);
           f_dm.SimpleDataSet_fonction.post;  i:=i+1;
           f_dm1.fonction.Next;
                                    end;f_dm.SimpleDataSet_fonction.ApplyUpdates(-1);

     MessageDlgPos(inttostr(i)+' fonctions ajoutées ...',mtConfirmation, [], 0, 5,530);
     MessageDlgPos('Le champ CATEG est utilisé dans les calculs.mettre categ=99 ou categ=  (voir Programme) ...',mtConfirmation, [], 0, 5,530);
     //f_dm.SimpleDataSet_fonction.refresh ;//SimpleDataSet_fonction.Close;
                               end;
end;

end.
