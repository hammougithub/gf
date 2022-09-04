unit u_version_gf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tf_nouvelle_version = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure get_date(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_nouvelle_version: Tf_nouvelle_version;

implementation

{$R *.dfm}

procedure Tf_nouvelle_version.get_date(Sender: TObject);
var
  fileName1, fileName  : string;
  fileDate   : Integer;

begin
  // Try to open the Unit1.DCU file for the current project
  fileName := 'Gf_dbexpress.exe';
  fileDate := FileAge('Gf_dbexpress.exe');
 // fileDate := FileAge('\\pc_am\I:\chapitre_delphi\programme_ib_1.1_dbexpress_delphi_xe2\Gf_dbexpress.exe');
  // Did we get the file age OK?
  if fileDate > -1 then edit1.Text:=DateToStr(FileDateToDateTime(fileDate));
end;

end.
