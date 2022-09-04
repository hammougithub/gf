unit Unit_qr2fr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls, frxDesgn,ConverterQR2FR,ConverterQR2FR_5, u_etat_mandat;

type
  Tf_qr2fr = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_qr2fr: Tf_qr2fr;conv:TConverterQr2Fr;

implementation

{$R *.dfm}

uses u_etat_bc, u_etat_bc_sans_avoir_23, u_etat_bc_sans_avoir_10, u_etat_k;



procedure Tf_qr2fr.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
 if frxReport1.LoadFromFile(OpenDialog1.FileName) then
  if SaveDialog1.Execute then
 frxReport1.SaveToFile(SaveDialog1.FileName);
 frxReport1.LoadFromFile(SaveDialog1.FileName);
 frxReport1.DesignReport();

end;



{procedure TForm2.Button3Click(Sender: TObject);
var conv:ConverterQr2Fr;
begin
    {  frxFR2Events := TConverterQr2Fr.Create;
      conv. := f_Etat_mandat.QuickRep1;
     conv.Target := frxReport1;//FReport;
      conv.Convert;

      frxReport1.SaveToFile('converted_fromQR.fr3');
end;   }

procedure Tf_qr2fr.Button3Click(Sender: TObject);
begin
     conv := TConverterQr2Fr.Create;
     conv.Source:= f_etat_bc.QuickRep1;
   //  conv.Source:= edit1.Text;
     conv.Target := frxReport1;//FReport;
      conv.Convert;

      frxReport1.SaveToFile(trim(edit2.Text)+'.fr3');
      frxReport1.DesignReport();
end;

end.
