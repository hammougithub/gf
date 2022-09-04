unit u_obs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, Mask;

type
  Tf_obs = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button1: TButton;
    
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_obs: Tf_obs;

implementation

uses MAIN, u_dm;

{$R *.DFM}



procedure Tf_obs.Button1Click(Sender: TObject);
begin
    modalresult:=1
end;

end.
