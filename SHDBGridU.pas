unit SHDBGridU;

interface

uses
  DBGrids, Controls, Classes;

type

  {Dragging and dropping copied from Borland article TI1562D dated 30th March 1999}

  TSHDBGrid = class(TDBGrid)
  private
    FOnMouseDown: TMouseEvent;  {To enable dragging and dropping}
  protected
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override; {To enable dragging and dropping}
  published
    property Row;  {To enable dragging and dropping}
    property OnMouseDown read FOnMouseDown write FOnMouseDown;  {To enable dragging and dropping}
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('SHLibrary', [TSHDBGrid]);
end;

procedure TSHDBGrid.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Assigned(FOnMouseDown) then
    FOnMouseDown(Self, Button, Shift, X, Y);
  inherited MouseDown(Button, Shift, X, Y);
end;

end.
