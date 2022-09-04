unit u_engagement;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Db ;

type
  TF_engagement = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Label3: TLabel;
    plus: TButton;
    Button1: TButton;
    moins: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_engagement: TF_engagement;

implementation

uses MAIN;

{$R *.DFM}

procedure TF_engagement.SpeedButton1Click(Sender: TObject);
begin
 f_engagement.visible:=false
end;


end.
