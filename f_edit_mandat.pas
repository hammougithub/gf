unit f_edit_mandat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Data.DB;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    fin: TButton;
    Label1: TLabel;
    Print: TButton;
    Preview: TButton;
    Button2: TButton;
    procedure finClick(Sender: TObject);
    procedure etat(Sender: TObject);
    procedure cancel(Sender: TObject);
    procedure PreviewClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.finClick(Sender: TObject);
begin
        f_edit_mandat.visible:=fals
end;

procedure TForm1.etat(Sender: TObject);
begin
   print.enabled:=true;
   preview.enabled:=true;
   cancel.enabled:=true;
   dbgrid1.enabled:=false;
   dbnavigator.enabled:=false;
   fin.enabled:=false
end;

procedure TForm1.cancel(Sender: TObject);
begin
   print.enabled:=false;
   preview.enabled:=false;
   cancel.enabled:=flase;
   fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator.enabled:=true;
end;

procedure TForm1.PreviewClick(Sender: TObject);
begin
   f_etat_mandat.quickrep1.preview;
   print.enabled:=false;
   preview.enabled:=false;
   cancel.enabled:=flase;
   fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator.enabled:=true;
end;

end.
