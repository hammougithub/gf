unit u_sauv;

interface

uses
  filectrl,windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls,variants,ExtActns,ShellAPI,DateUtils, DB;


type
  TF_sauv = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label6: TLabel;
    mp: TEdit;
    ProgressBar1: TProgressBar;
    Edit8: TEdit;
    source: TEdit;
    dest: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    OpenDialog1: TOpenDialog;
    go: TBitBtn;
    Label14: TLabel;
    Edit9: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure voir(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mot_passe(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure goClick(Sender: TObject);
    procedure oncreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_sauv: TF_sauv;
  buffer : array [0..255] of Char;
implementation

uses MAIN, u_forme1;

{$R *.DFM}


procedure TF_sauv.SpeedButton1Click(Sender: TObject);
var
w:dword;
i:longbool;
x,y,z,n:cardinal;
s:string;
d:tdatetime;
an,mo,jo:word;
begin
    GetCurrentDirectory(255,buffer);
    ProgressBar1.max:=33;
    ProgressBar1.Step:=1;

    i:=GetDiskFreeSpace(pchar(edit7.text+':'),x,y,z,n);
    edit1.Text:=inttostr(x);
    edit2.Text:=inttostr(y);
    edit3.Text:=inttostr(z);
    edit4.Text:=inttostr(n);
    edit5.Text:=inttostr(trunc(x*y*(N/1024/1024)));
    edit6.Text:=inttostr(trunc(Z/1024/1024)*x*y);

   decodedate(date,an,mo,jo);
   s1:=  buffer;
   w := Length(s1);
   while s1[w]<>'\' do w:=w-1;
   s:=Copy (s1,1 , Pred (w) );
   s:= s+'\bd_'+inttostr(jo)+inttostr(mo)+inttostr(an);
   if not DirectoryExists(s) then
    if not CreateDir(s) then
    raise Exception.Create('Impossible de créer '+s);






    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\administration.db'),pchar(s+'\administration.db'),false);
    if i<>null then begin label1.caption:='Successed';ProgressBar1.StepIt; end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\administration.px'),pchar(s+'\administration.px'),false);
    if i<>null then begin label1.caption:='Successed';ProgressBar1.StepIt;  end;


    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\obs_eng.db'),pchar(s+'\obs_eng.db'),false);
    if i<>null then  begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\obs_eng.px'),pchar(s+'\obs_eng.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;

    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\bc.db'),pchar(s+'\bc.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\bc.px'),pchar(s+'\bc.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\bc.val'),pchar(s+'\bc.val'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;

    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\mandat.db'),pchar(s+'\mandat.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\mandat.px'),pchar(s+'\mandat.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\mandat.val'),pchar(s+'\mandat.val'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;


    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\index.db'),pchar(s+'\index.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\index.px'),pchar(s+'\index.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;


    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\lignes.db'),pchar(s+'\lignes.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\lignes.px'),pchar(s+'\lignes.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\lignes.val'),pchar(s+'\lignes.val'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;

    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\fournisseur.db'),pchar(s+'\fournisseur.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\fournisseur.px'),pchar(s+'\fournisseur.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;

    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\engagement.Db'),pchar(s+'\engagement.Db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\engagement.px'),pchar(s+'\engagement.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\engagement.val'),pchar(s+'\engagement.val'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;

    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\bc_ligne.Db'),pchar(s+'\bc_ligne.Db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\bc_ligne.px'),pchar(s+'\bc_ligne.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\bc_ligne.val'),pchar(s+'\bc_ligne.val'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;


    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\det_eng.db'),pchar(s+'\det_eng.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\det_eng.px'),pchar(s+'\det_eng.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\det_eng.val'),pchar(s+'\det_eng.val'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;


    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\article.db'),pchar(s+'\article.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\article.px'),pchar(s+'\article.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;


    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\credit.db'),pchar(s+'\credit.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\credit.px'),pchar(s+'\credit.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\credit.val'),pchar(s+'\credit.val'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;


    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\nature_dep.db'),pchar(s+'\nature_dep.db'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;
    i:=copyfile(pchar(edit7.text+':\chapitre_delphi\base_de_donnees\nature_dep.px'),pchar(s+'\nature_dep.px'),false);
    if i<>null then begin ProgressBar1.StepIt;label1.caption:='Successed';end;



end;

procedure TF_sauv.BitBtn1Click(Sender: TObject);
begin
f_SAuV.visible:=false
end;

procedure TF_sauv.voir(Sender: TObject);
begin
   ProgressBar1.Stepby(-33);
end;

procedure TF_sauv.BitBtn2Click(Sender: TObject);
var
w:dword;
i:longbool;
x,y,z,n:cardinal;
p,s:string;
t:ttime;d:tdate;
an,mo,jo,Hour,Minute,Second,MilliSecond:word;
begin
    GetCurrentDirectory(255,buffer);
  //  s:='gbak -v -B -user SYSDBA -password masterkey '+trim(form1.edit9.text)+' '+trim(form1.edit9.text)+'1';
    s:=trim(edit9.text);
   // opendialog1.Execute;
  //  source.Text:=opendialog1.FileName;
  ShellExecute(Application.Handle, 'open', 'i:\chapitre_delphi\dB_INTERBASE\backup_gf.bat', nil, nil, SW_SHOWMAXIMIZED);
    ShellExecute(Application.Handle, 'open', pchar(s), nil, nil, SW_SHOWNORMAL);
   // p:=' /k E:\chapitre_delphi\programme_ib\gbak -v -b -user gf -password 123 '+source.text+' '+dest.text ;
  // shellexecute(0, 'open', 'cmd.exe', PChar(P), nil, SW_SHOWMAXIMIZED);

   t:=time;d:=date;
   decodetime(t,Hour,Minute,Second,MilliSecond);
   decodedate(d,an,mo,jo);
   s1:=  buffer;
   w := Length(s1);
   while s1[w]<>'\' do w:=w-1;
   s:=Copy (s1,1 , Pred (w) );
   s:= s+'\bd_'+inttostr(hour)+'-'+inttostr(minute)+'_'+inttostr(jo)+'-'+inttostr(mo)+'-'+inttostr(an);
    if not DirectoryExists(s) then
    if not CreateDir(s) then
    raise Exception.Create('Impossible de créer '+s);
   i:=copyfile(pchar(edit7.text+':\chapitre_delphi\db_interbase\gf.gbk'),pchar(s+'\gf.gbk'),false);
   if i<>null then begin label1.caption:='Successed';edit8.Text:='Le Backup est '+s+'\gf.gbk' end;


end;

procedure TF_sauv.mot_passe(Sender: TObject);
begin
   if mp.Text='123' then begin BitBtn2.Enabled:=true;BitBtn3.Enabled:=true; end
end;


procedure TF_sauv.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.Width; // multiplicateur = définition actuelle de l'écran
   D := 1024; // diviseur = définition de l'écran à la conception
   ScaleBy(M, D);
   Realign;
end;

function ShellCmd(const Command, Parameters: string; const NoActive: boolean = true): integer;
var 
  PRM : string;
begin
  if NoActive then
    PRM := '/c '+Command+' '+Parameters
  else
    PRM := '/k '+Command+' '+Parameters;
  shellexecute(0, 'open', 'cmd.exe', PChar(PRM), nil, SW_SHOWNORMAL);
end;


procedure TF_sauv.BitBtn3Click(Sender: TObject);
begin
    opendialog1.Execute;
    source.Text:=opendialog1.FileName;
    dest.Text:=opendialog1.FileName;
    go.Enabled:=true;
end;

procedure TF_sauv.goClick(Sender: TObject);
var
P: string;
begin
   p:=' /c E:\chapitre_delphi\programme_ib\gbak -v -r -user gf -password 123 '+source.text+' '+dest.text ;
   shellexecute(0, 'open', 'cmd.exe', PChar(P), nil, SW_SHOWMAXIMIZED);
   go.Enabled:=false;
   source.Text:='                                                     ';
   dest.Text:='                                                      ';
end;

end.
