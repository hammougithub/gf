unit u_rs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Buttons, ExtCtrls,
  DBCtrls, Grids, DBGrids, ComCtrls;

type
  TF_rs = class(TForm)
    Label1: TLabel;
    t1: TRichEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    r2: TIBQuery;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_rs: TF_rs;

implementation

{$R *.dfm}

procedure TF_rs.BitBtn1Click(Sender: TObject);
begin
     r2.Close;r2.SQL.clear;
     r2.SQL.Add(t1.Lines[0]);
     r2.SQL.Add(t1.Lines[1]);
     r2.SQL.Add(t1.Lines[2]);
     r2.Prepare;
        try
         r2.Active:=true ;
        except
         showmessage('Erreur commande SQl ...');//t1.Clear;
        end;
end;

end.
