unit u_administration_pers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  Tf_administration_pers = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Button1: TButton;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_administration_pers: Tf_administration_pers;

implementation

{$R *.dfm}

procedure Tf_administration_pers.Button1Click(Sender: TObject);
begin
       f_administration_pers.visible:=false
end;

end.
