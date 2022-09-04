program version_gf;

uses
  Vcl.Forms,
  Unit5 in 'C:\Users\achour\Documents\RAD Studio\Projets\Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
