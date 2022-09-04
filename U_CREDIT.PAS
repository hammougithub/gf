unit u_credit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Data.FMTBcd, Data.DB,
  Data.SqlExpr, MyDBGrid;
{type
  TDBGrid           =  class(DBGrids.TDBGrid)
  protected
     procedure      MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  end;}
type
  TF_credit = class(TForm)
    q_cre_affec: TSQLQuery;
    q_enmoins: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBGrid4: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    pp: TEdit;
    procedure prendre_code(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mousedown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dragover(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
  

   



  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_credit: TF_credit;
  SGC : TGridCoord;
implementation

uses MAIN, u_dm, uu_engagement;

{$R *.DFM}
{procedure TDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Assigned(OnMouseDown) then OnMouseDown(Self, Button, Shift, X, Y);
end;}

procedure TF_credit.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
  // Realign;
end;

procedure TF_credit.prendre_code(Sender: TObject);
begin
    f_dm.ClientDataSet_credit.edit;
    f_dm.ClientDataSet_credit.fieldByName('chapitre').asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
    f_dm.ClientDataSet_credit.fieldByName('article').asstring:=f_dm.clientdataset_chapitre.fieldByName('article').asstring;
    activecontrol:=dbgrid4;
end;

procedure TF_credit.BitBtn1Click(Sender: TObject);
begin
   x:=1;f_dm.simpleDataSet_eng.FieldByName('dates').editmask:='##/##/####';
  if ff_engagement.WindowState=wsMinimized then ff_engagement.WindowState:=wsMaximized ;
  ff_engagement.visible:=true;ff_engagement.bringtofront;
end;

procedure TF_credit.Button1Click(Sender: TObject);
begin
f_credit.visible:=false
end;









procedure TF_credit.dragover(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
   GC : TGridCoord;
begin

   GC := (Sender as TMyDBGrid).MouseCoord(X,Y);
   Accept := Source is TMyDBGrid ;//and (GC.X > 0) and (GC.Y > 0);
end;





procedure TF_credit.mousedown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   DG : TMyDBGrid;
begin
   DG := Sender as TMyDBGrid;
   SGC := DG.MouseCoord(X,Y);
   if (SGC.X > 0) and (SGC.Y > 0) then
     (Sender as TMyDBGrid).BeginDrag(False);
end;



end.
