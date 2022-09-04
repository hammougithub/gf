unit u_forme1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Unit_function_and_procedure, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls,ShellAPI, Data.Cloud.CloudAPI, Data.Cloud.AmazonAPI,
  Data.SqlExpr, Data.DBXCommon;

  procedure close_tables_connect_db_gf;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    Edit4: TEdit;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label10: TLabel;
    bd_c: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit5: TEdit;
    Label2: TLabel;
    SQLMonitor1: TSQLMonitor;
    Button1: TButton;
    Label3: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Edit2: TEdit;


    procedure lors_creation(Sender: TObject);

    procedure form1_close(Sender: TObject; var Action: TCloseAction);
    procedure bb(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure enter(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure on_enter(Sender: TObject);
    procedure ar(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);





  private
    { D�clarations priv�es }

      procedure WMNCPaint(var Msg: TWMNCPaint) ; message WM_NCPAINT;
      procedure WMNCACTIVATE(var Msg: TWMNCActivate) ; message WM_NCACTIVATE;
      procedure DrawCaptionText() ;
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;i:word;T:TextFile;s,s1,s2:string;
  annee,mois,jour:word;fileDate   : Integer;ar_fr:char;FormatAc: TFormatSettings;


implementation

uses u_dm,u_db1,MAIN, u_message, u_mandat, u_consul_mandat, u_users, U_sql,
  u_edit_mandat, u_edit_eng, u_edit_etat_virement, u_etats, u_edit_bc,u_forme1_ar,
  u_edit_mission;

{$R *.dfm}

 procedure tForm1.DrawCaptionText;
const
    captionText = 'delphi.about.com';
var
    canvas: TCanvas;
begin
    canvas := TCanvas.Create;
    try
      canvas.Handle := GetWindowDC(Self.Handle) ;
      with canvas do
      begin
        Brush.Style := bsClear;
        Font.Color := clMaroon;
        TextOut(Self.Width - 110, 6, captionText) ;
      end;
    finally
      ReleaseDC(Self.Handle, canvas.Handle) ;
      canvas.Free;
    end;
end;



procedure tForm1.WMNCACTIVATE(var Msg: TWMNCActivate) ;
begin
    inherited;
    DrawCaptionText;
end;

procedure tForm1.WMNCPaint(var Msg: TWMNCPaint) ;
begin
    inherited;
    DrawCaptionText;
end;









procedure open_tables_connect_db_gf;
begin
     try f_dm.SQLDataSet_desig.open; except showmessage('table f_dm.SQLDataSet_desig not open ...');end;
     try f_dm.clientdataset_desig.open; except showmessage('table f_dm.clientdataset_desig not open ...');end;

     try f_dm.SQLDataSet_desig_qt.open; except showmessage('table f_dm.SQLDataSet_desig_qt not open ...');end;
     try f_dm.clientdataset_desig_qt.open; except showmessage('table f_dm.clientdataset_desig_qt not open ...');end;

     try f_dm.SimpleDataSet_unites.open; except showmessage('table f_dm.SimpleDataSet_unites not open ...');end;
     try f_dm.clientdataset_desig.open; except showmessage('table f_dm.clientdataset_desig not open ...');end;


     try f_dm.SimpleDataSet_consommation.open; except showmessage('table f_dm.SimpleDataSet_consommation not open ...');end;
     try f_dm.SimpleDataSet_service.open; except showmessage('table f_dm.SimpleDataSet_service not open ...');end;
     try f_dm.SimpleDataSet_users.open; except showmessage('table f_dm.SimpleDataSet_users not open ...');end;

    //Les 5 tables ci-dessus �taient dans la BD PERS ...
    //Faire une seule table pour remplacer les 2 tables pers et pers_adm ...
     try f_dm.SimpleDataSet_agent.open; except showmessage('table f_dm.SimpleDataSet_agent not open ...');end;
     try f_dm.SimpleDataSet_apc.open; except showmessage('table f_dm.SimpleDataSet_apc not open ...');end;
     try f_dm.SimpleDataSet_adm_pers.open; except showmessage('table f_dm.SimpleDataSet_adm_pers not open ...');end;
     try f_dm.SimpleDataSet_grade.open; except showmessage('table f_dm.SimpleDataSet_grade not open ...');end;
     try f_dm.SimpleDataSet_fonction.open; except showmessage('table f_dm.SimpleDataSet_fonction not open ...');end;

     try f_dm.SimpleDataSet_convention.open; except showmessage('table f_dm.SimpleDataSet_convention not open ...');end;
     try f_dm.SimpleDataSet_parameters.open; except showmessage('table -- f_dm.SimpleDataSet_parameters not open ...');end;
     try f_dm.SQLDataSet_reimputation.open; except showmessage('table f_dm.SQLDataSet_reimputation not open ...');end;
     try f_dm.clientdataset_reimputation.open; except showmessage('table f_dm.clientdataset_reimputation not open ...');end;



     try f_dm.SQLDataSet_mandat.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.SQLDataSet_mandat.Open; except showmessage('table f_dm.SQLDataSet_mandat not open ...');end;
     try f_dm.clientdataset_mandat.open; except showmessage('table f_dm.clientdataset_mandat not open ...');end;



   try f_dm.SQLDataSet_lignes_mandat.open; except showmessage('f_dm.SQLDataSet_lignes_mandat not open ...');end;
   try f_dm.ClientDataSet_lignes_mandat.open; except showmessage('f_dm.ClientDataSet_lignes_mandat not open ...');end;
   try f_dm.Sm.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.Sm.Open; except showmessage('f_dm.Sm.DataSet not open ...');end;

   try f_dm.SimpleDataSet_lignes_mandat.open; except showmessage('table f_dm.SimpleDataSet_lignes_mandat not open ...');end;



   try f_dm.SQLDataSet_reimputation.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.SQLDataSet_reimputation.Open; except showmessage('f_dm.SQLDataSet_reimputation.DataSet not open ...');end;







  try f_dm.SimpleDataSet_depenses_annulees.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.SimpleDataSet_depenses_annulees.Open; except showmessage('table-- f_dm.SimpleDataSet_depenses_annulees not open ....');end;



  try f_dm.SimpleDataSet_facture.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.SimpleDataSet_facture.Open; except showmessage('f_dm.SimpleDataSet_facture not open ....');end;


  try f_dm.SimpleDataSet_eng.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.SimpleDataSet_eng.Open; except showmessage('f_dm.SimpleDataSet_eng not open ...');end;





  try f_dm.SimpleDataSet_det_eng.Open; except showmessage('f_dm.SimpleDataSet_det_eng not open ...');end;

   try f_dm.SimpleDataSet_obs_eng.Open; except showmessage('f_dm.SimpleDataSet_obs_eng not open ...');end;

   try f_dm.SQLDataSet_det_eng1.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.SQLDataSet_det_eng1.Open; except showmessage('f_dm.SQLDataSet_det_eng1 not open ...');end;


    try f_dm.SQLDataSet_adm.open; except showmessage('table f_dm.SQLDataSet_adm not open ...');end;
    try f_dm.ClientDataSet_adm.open; except showmessage('table f_dm.ClientDataSet_adm not open ...');end;
    try f_dm.SQLDataSet_chapitre.open; except showmessage('table f_dm.SQLDataSet_chapitre not open ...');end;
    try f_dm.ClientDataSet_chapitre.open; except showmessage('table f_dm.ClientDataSet_chapitre not open ...');end;



    try f_dm.SQLDataSet_credit.Params[0].asstring:=trim(f_principale.GESTION.Text);
       f_dm.SQLDataSet_credit.Open; except showmessage('f_dm.SQLDataSet_credit not open ...');end;

    try f_dm.SQLDataSet_depenses_annulees.Params[0].asstring:=trim(f_principale.GESTION.Text);
        f_dm.SQLDataSet_depenses_annulees.Open; except showmessage('f_dm.SQLDataSet_depenses_annulees not open ...');end;
    try f_dm.ClientDataSet_depenses_annulees.open; except showmessage('table f_dm.ClientDataSet_depenses_annulees not open ...');end;




    try f_dm.SQLDataSet_fournisseur.open; except showmessage('table f_dm.SQLDataSet_fournisseur not open ...');end;
    try f_dm.ClientDataSet_fournisseur.open; except showmessage('table f_dm.ClientDataSet_fournisseur not open ...');end;
    try f_dm.ClientDataSet_fournisseur1.open; except showmessage('table f_dm.ClientDataSet_fournisseur1 not open ...');end;
    try f_dm.ClientDataSet_fournisseur2.open; except showmessage('table f_dm.ClientDataSet_fournisseur2 not open ...');end;
    try f_dm.SimpleDataSet_nat_dep.open; except showmessage('table f_dm.SimpleDataSet_nat_dep not open ...');end;
    try f_dm.SimpleDataSet_mois.open; except showmessage('table f_dm.SimpleDataSet_mois not open ...');end;


    try f_dm.SimpleDataSet_bc.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
        f_dm.SimpleDataSet_bc.Open; except showmessage('f_dm.SimpleDataSet_bc not open ...');end;
    try f_dm.SimpleDataSet_bc_lignes.open; except showmessage('table f_dm.SimpleDataSet_bc_lignes not open ...');end;


     try f_dm.SimpleDataSet_mission.DataSet.Params[0].asstring:=trim(f_principale.GESTION.Text);
         f_dm.SimpleDataSet_mission.Open; except showmessage('f_dm.SimpleDataSet_mission not open ...');end;


    try f_dm.SimpleDataSet_mandat_c.open; except showmessage('table f_dm.SimpleDataSet_mandat_c not open ...');end;
    try f_dm.SimpleDataSet_lignes_c.open; except showmessage('table f_dm.SimpleDataSet_lignes_c not open ...');end;
    try f_dm.SimpleDataSet_programme.open; except showmessage('table f_dm.SimpleDataSet_programme not open ...');end;
    try f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.open; except showmessage('table f_dm.SimpleDataSet_adm_apc_grade_fonction_mission not open ...');end;
    try f_dm.SimpleDataSet_depenses_mission.open; except showmessage('table f_dm.SimpleDataSet_depenses_mission not open ...');end;
    try f_dm.SimpleDataSet_bareme.open; except showmessage('table f_dm.SimpleDataSet_bareme not open ...');end;

    try f_dm.SimpleDataSet_PARAMETRES_MISSION.open; except showmessage('table f_dm.SimpleDataSet_PARAMETRES_MISSION not open ...');end;
    try f_dm.SimpleDataSet_lieu.open; except showmessage('table f_dm.SimpleDataSet_lieu not open ...');end;

    try f_edit_mission.simpledataset_parameters.open; except showmessage('table f_edit_mission.simpledataset_parameters not open ...');end;
    try f_edit_eng.simpledataset_parameters.open; except showmessage('table f_edit_eng.simpledataset_parameters not open ...');end;
    try f_edit_eng.simpledataset_parameters1.open; except showmessage('table f_edit_eng.simpledataset_parameters1 not open ...');end;
    try f_edit_mandat.simpledataset_parameters.open; except showmessage('table-- f_edit_mandat.simpledataset_parameters not open ...');end;
    try f_edit_bc.simpledataset_parameters.open; except showmessage('table f_edit_bc.simpledataset_parameters not open ...');end;
    try F_edit_etat_virement.simpledataset_parameters.open; except showmessage('table F_edit_etat_virement.simpledataset_parameters not open ...');end;


   with  f_etats do begin
      try simpledataset_parameters1.open; except showmessage('table f_etats.simpledataset_parameters1 not open ...');end;
      try simpledataset_parameters2.open; except showmessage('table f_etats.simpledataset_parameters2 not open ...');end;
      try simpledataset_parameters3.open; except showmessage('table f_etats.simpledataset_parameters3 not open ...');end;
      try simpledataset_parameters4.open; except showmessage('table f_etats.simpledataset_parameters4 not open ...');end;
                     end;

end;

 procedure close_tables_connect_db_gf;
begin
    f_dm.SQLDataSet_desig.Close;
    f_dm.clientdataset_desig.Close;
    f_dm.SQLDataSet_desig_qt.Close;
    f_dm.clientdataset_desig_qt.Close;
    f_dm.SimpleDataSet_unites.close;
    f_dm.SimpleDataSet_consommation.close;
//    f_dm.SimpleDataSet_designation.close ;
    f_dm.SimpleDataSet_service.close;
    f_dm.SimpleDataSet_users.close;
    f_dm.SimpleDataSet_agent.CLOSE;
    f_dm.SimpleDataSet_apc.close;
    f_dm.SimpleDataSet_adm_pers.close;
    f_dm.SimpleDataSet_grade.close;
    f_dm.SimpleDataSet_fonction.close;
    // Les 5 tables ci-dessus �taient dans la BD PERS ...

   f_dm.SimpleDataSet_convention.close;f_dm.SimpleDataSet_facture.close;
   f_dm.Sm.close;
   f_dm.SQLDataSet_mandat.close;
   f_dm.clientdataset_mandat.close;
   f_dm.SQLDataSet_reimputation.close;
   f_dm.clientdataset_reimputation.close;
   f_dm.SQLDataSet_lignes_mandat.close;
   f_dm.ClientDataSet_lignes_mandat.close;
   f_dm.SimpleDataSet_depenses_annulees.close;
   f_dm.SimpleDataSet_eng.close;
   f_dm.SimpleDataSet_det_eng.close;
   f_dm.SimpleDataSet_obs_eng.close;
   f_dm.SQLDataSet_det_eng1.close;

   f_dm.SQLDataSet_adm.close;f_dm.ClientDataSet_adm.close;
   f_dm.SQLDataSet_chapitre.close;f_dm.ClientDataSet_chapitre.close;
   f_dm.SQLDataSet_credit.close;f_dm.ClientDataSet_credit.close;
   f_dm.SQLDataSet_depenses_annulees.close;f_dm.ClientDataSet_depenses_annulees.close;
   f_dm.SQLDataSet_fournisseur.close;f_dm.ClientDataSet_fournisseur.close; f_dm.ClientDataSet_fournisseur1.close;
   f_dm.ClientDataSet_fournisseur2.close;
   f_dm.SimpleDataSet_nat_dep.close;
   f_dm.SimpleDataSet_mois.close;

   f_dm.SimpleDataSet_bc.close;
  f_dm.SimpleDataSet_bc_lignes.close;

   f_dm.SimpleDataSet_parameters.close;
   f_edit_mandat.SimpleDataSet_parameters.close;

   f_dm.SimpleDataSet_lignes_mandat.close;
   f_dm.SimpleDataSet_mission.close;
   f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.close;
   f_dm.SimpleDataSet_depenses_mission.close;
   f_dm.SimpleDataSet_bareme.close;
   f_dm.SimpleDataSet_PARAMETRES_MISSION.close;
    f_dm.SimpleDataSet_programme.close;
   // if not f_dm.ibevents_mandat.Registered then f_dm.ibevents_mandat.Registered:=true;
  //  if not f_dm.ibevents_eng.Registered then f_dm.ibevents_eng.Registered:=true;
    f_dm.SimpleDataSet_lieu.close;
    f_edit_mandat.simpledataset_parameters.Close;
    f_edit_eng.simpledataset_parameters.Close;
    f_edit_mission.simpledataset_parameters.Close;
    f_edit_eng.simpledataset_parameters1.Close;
    f_edit_bc.simpledataset_parameters.Close;
     F_edit_etat_virement.simpledataset_parameters.close;
   with  f_etats do begin
   simpledataset_parameters1.close;
   simpledataset_parameters2.close;
   simpledataset_parameters3.close;
   simpledataset_parameters4.close end
end;


procedure TForm1.lors_creation(Sender: TObject);
var
   M, D,n : Integer; c:char;
begin

      Application.UpdateFormatSettings := false;
         // Create new setting and configure for the brazillian format
  Formatac                     := TFormatSettings.Create;
  formatac.DecimalSeparator    := ',';
  formatac.ThousandSeparator   := '.';
  formatac.CurrencyDecimals    := 2;
  formatac.DateSeparator       := '/';
  formatac.ShortDateFormat     := 'dd/mm/yyyy';
  formatac.LongDateFormat      := 'dd/mm/yyyy';
  formatac.TimeSeparator       := ':';
  formatac.TimeAMString        := 'AM';
  formatac.TimePMString        := 'PM';
  formatac.ShortTimeFormat     := 'hh:nn';
  formatac.LongTimeFormat      := 'hh:nn:ss';
  formatac.CurrencyString      := 'دج';

  // Assign the App region settings to the newly created format
  SysUtils.FormatSettings := Formatac;
   edit4.Text:=datetostr(now,Formatac);
etat:=0;
{ScaleBy redimensionne un contr�le sans d�placer son coin sup�rieur gauche.
 Cela revient � modifier les propri�t�s Height et Width mais le contr�le tente �galement de modifier les proportions et de r�organiser tous les contr�les enfant pour conserver leur emplacement et leur taille relatives.
Les param�tres M et D d�finissent un multiplicateur et un diviseur servant
� changer l'�chelle du contr�le. Par exemple, pour r�duire un contr�le � 75% de sa taille initiale, sp�cifiez les valeurs 75 pour M et 100 pour D (75/100). Tout couple de valeurs ayant le m�me rapport produit le m�me effet. Ainsi M = 3 et D = 4 donne �galement un contr�le � 75% de sa hauteur pr�c�dente.}
   M := Screen.height; // multiplicateur = d�finition actuelle de l'�cran
   D := 768; // diviseur = d�finition de l'�cran � la conception
 // ScaleBy(M, D);
 //  Realign;
   n := Screen.Width;
 form1.Caption:='GESTION DU BUDGET DE FONCTIONNEMENT  (DELPHI XE8 DBEXPRESS) '+'('+inttostr(n)+'X' +inttostr(m)+') '+
   'Program date '+DateToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')),FormatSettings1)+' '+
              timeToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+'              DRT GHARDAIA';

   s:=trim(GetCurrentDir);s:=s+'\utilisateur';
   if SysUtils.FileExists(s)then begin
                      AssignFile(T, s);reset(t);
                      readln(t,s1); readln(t,s1) ; edit6.Text:=s1;
                      readln(t,s1); readln(t,s1) ; edit2.Text:=s1;
                      readln(t,s1); readln(t,s1) ; edit9.Text:=s1;
                      readln(t,s1); readln(t,s1) ; edit1.Text:=s1;
                      readln(t,s1);readln(t,s1) ;edit8.Text:=s1;
                      readln(t,s1);readln(t,s1) ;edit10.Text:=s1;
                        readln(t,s1);readln(t,s1) ;edit5.Text:=s1;
                               end; closefile(t);

   
end;







procedure TForm1.on_enter(Sender: TObject);
begin

 screen.Cursor:=-17;
   if (f_dm.connect_db_gf.connected) then  f_dm.connect_db_gf.Close;
   if not (f_dm.connect_db_gf.Connected) then  begin
         f_dm.connect_db_gf.Params.Values['database']:= edit9.Text;
         f_dm.connect_db_gf.Params.Values['User_Name'] := edit8.Text;
         f_dm.connect_db_gf.Params.Values['Password'] := edit10.Text;
         f_dm.connect_db_gf.Params.Values['role'] := trim(edit1.Text);
             try
                 f_dm.connect_db_gf.Open;
             except
                showmessage(' Base de donn�es gf(dbexpress) non ouverte, V�rifier mot de passe et serveur  ...');
              end;
              end;


    if bd_c.Checked then begin
            if f_dm1.adoc2.Connected then f_dm1.adoc2.Close;
                 try
                  f_dm1.adoc2.connectionstring:=
                // 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=I:\chapitre_delphi\programme_ib_1.1_dbexpress_delphi_xe2\access_files\drt.mdb;Jet OLEDB:Database Password=������������Un1g�z9�';
                  'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(edit5.Text)+'drt.mdb'+';Jet OLEDB:Database Password=������������Un1g�z9�';
                  f_dm1.adoc2.Connected:=true;
                  f_dm1.grade.Open;
                  f_dm1.employes.Open;
                  f_dm1.fonction.Open;
             except
               showmessage(' Base de donn�es COMPTABILITE(ADO) non ouverte ...');
             end;
    end;

     if f_dm.connect_db_gf.Connected  then  open_tables_connect_db_gf;

     if   f_dm.connect_db_gf.Connected  then begin    //  and  f_dm.connect_db_pers.Connected
             // La ligne suivante �tait dans gf_dbexpress projet code source
             Application.CreateForm(Tf_consul_mandat, f_consul_mandat);

             n := Screen.Width;
   M := Screen.height;
      F_principale.Caption:='GESTION DU BUDGET DE FONCTIONNEMENT  (DELPHI XE8 DBEXPRESS) '+' (' +inttostr(n)+'X' +inttostr(m)+') '+
   DateToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+' ' +
              timeToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+
              '    User : '+form1.edit8.text+'    Role : '+form1.edit1.text;
             screen.Cursor:=crdefault
             ;form1.hide; if etat=0 then f_principale.Show; if etat=1 then f_users.Show
             //if trim(edit8.Text)<>'SYSDBA' then f_principale.Show;
      end;
       Screen.Cursor:=crdefault;//le curseur redevient celui par d�faut
end;



procedure TForm1.BitBtn3Click(Sender: TObject);
begin
    if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
   // if f_dm.connect_db_pers.Connected  then f_dm.connect_db_pers.Close;
    application.terminate;
end;




procedure TForm1.enter(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if (key=13) then
      begin
   screen.Cursor:=-17;
   if (f_dm.connect_db_gf.connected) then  f_dm.connect_db_gf.Close;
   if not (f_dm.connect_db_gf.Connected) then  begin
         f_dm.connect_db_gf.Params.Values['database']:= edit9.Text;
         f_dm.connect_db_gf.Params.Values['User_Name'] := edit8.Text;
         f_dm.connect_db_gf.Params.Values['Password'] := edit10.Text;
             try
                 f_dm.connect_db_gf.Open;
             except
                showmessage(' Base de donn�es gf(dbexpress) non ouverte, V�rifier mot de passe et serveur  ...');
              end;
              end;


    if bd_c.Checked then begin
            if f_dm1.adoc2.Connected then f_dm1.adoc2.Close;
                 try
                  f_dm1.adoc2.connectionstring:=
                // 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=I:\chapitre_delphi\programme_ib_1.1_dbexpress_delphi_xe2\access_files\drt.mdb;Jet OLEDB:Database Password=������������Un1g�z9�';
                 'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(edit5.Text)+'drt.mdb'+';Jet OLEDB:Database Password=������������Un1g�z9�';
                  f_dm1.adoc2.Connected:=true;
                  f_dm1.grade.Open;
                  f_dm1.employes.Open;
                  f_dm1.fonction.Open;
             except
               showmessage(' Base de donn�es COMPTABILITE(ADO) non ouverte ...');
             end;
    end;

     if f_dm.connect_db_gf.Connected  then  open_tables_connect_db_gf;

     if   f_dm.connect_db_gf.Connected  then begin    //  and  f_dm.connect_db_pers.Connected
             // La ligne suivante �tait dans gf_dbexpress projet code source
             Application.CreateForm(Tf_consul_mandat, f_consul_mandat);

             n := Screen.Width;
   M := Screen.height;
      F_principale.Caption:='GESTION DU BUDGET DE FONCTIONNEMENT  (DELPHI XE8 DBEXPRESS) '+' (' +inttostr(n)+'X' +inttostr(m)+') '+
   DateToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+' ' +
              timeToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+
              '    User : '+form1.edit8.text+'    Role : '+form1.edit1.text;
             screen.Cursor:=crdefault
             ;form1.hide; if etat=0 then f_principale.Show; if etat=1 then f_users.Show
             //if trim(edit8.Text)<>'SYSDBA' then f_principale.Show;
      end;
       Screen.Cursor:=crdefault;//le curseur redevient celui par d�faut
end;
end;

procedure TForm1.ar(Sender: TObject);
begin
   if FORMe1_ar.WindowState=wsMinimized then    FORMe1_ar.WindowState:=wsMaximized ;
    FORMe1_ar.visible:=true;FORMe1_ar.bringtofront;
end;

procedure TForm1.bb(Sender: TObject);
begin
   // test;
    etat:=0;
 screen.Cursor:=-17;
   if (f_dm.connect_db_gf.connected) then  f_dm.connect_db_gf.Close;
   if not (f_dm.connect_db_gf.Connected) then  begin
         f_dm.connect_db_gf.Params.Values['database']:= trim(edit6.Text)+'/'+trim(edit2.Text)+':'+trim(edit9.Text);
         f_dm.connect_db_gf.Params.Values['User_Name'] :=trim(edit8.Text);
         f_dm.connect_db_gf.Params.Values['Password'] := trim(edit10.Text);
         f_dm.connect_db_gf.Params.Values['role'] := trim(edit1.Text);
             try
                 f_dm.connect_db_gf.open;
             except
                 on e:exception do begin showmessage(e.message) end
               // showmessage(' Base de donn�es gf(dbexpress) non ouverte, V�rifier mot de passe et serveur  ...');
              end;
              end;


    if bd_c.Checked then begin
            if f_dm1.adoc2.Connected then f_dm1.adoc2.Close;
                 try
                  f_dm1.adoc2.connectionstring:=
               // 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=I:\chapitre_delphi\programme_ib_1.1_dbexpress_delphi_xe2\access_files\drt.mdb;Jet OLEDB:Database Password=������������Un1g�z9�';
                  'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(edit5.Text)+'drt.mdb'+';Jet OLEDB:Database Password=������������Un1g�z9�';
                  f_dm1.adoc2.Connected:=true;
                  f_dm1.grade.Open;
                  f_dm1.employes.Open;
                  f_dm1.fonction.Open;
             except
               showmessage(' Base de donn�es COMPTABILITE(ADO) non ouverte ...');
             end;
    end;

     if f_dm.connect_db_gf.Connected  then begin
      // showmessage(' Base de donn�es   ouverte ...');
       open_tables_connect_db_gf;
      // showmessage(' Tables Acives ...');
     end;


     if   f_dm.connect_db_gf.Connected  then begin      //  and  f_dm.connect_db_pers.Connected
             // La ligne suivante �tait dans gf_dbexpress projet code source
             // v�rifier nom utilisateur dans la table utilisateur  ..
             if not (f_dm.SimpleDataSet_users.Locate('id',trim(edit8.Text),[])) then  begin
                 showmessage('le nom de l"utilsateur n"est pas dans la table Utilisateur');
                 f_sql.t1.Lines[0]:='select * from utilisateur';
                 //if f_sql.WindowState=wsMinimized then f_sql.WindowState:=wsMaximized;
                   // f_sql.visible:=true;f_sql.BRINGTOFRONT;
                   etat:=1
                  end;
             Application.CreateForm(Tf_consul_mandat, f_consul_mandat);

             n := Screen.Width;
   M := Screen.height;
      F_principale.Caption:='GESTION DU BUDGET DE FONCTIONNEMENT  (DELPHI XE8 DBEXPRESS) '+' (' +inttostr(n)+'X' +inttostr(m)+') '+
   DateToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+' ' +
              timeToStr(FileDateToDateTime(Fileage('Gf_dbexpress.exe')))+
             '    User : '+form1.edit8.text+'    Role : '+form1.edit1.text;
             screen.Cursor:=crdefault
             ;form1.hide; if etat=0 then f_principale.Show;
             if etat=1 then  begin f_sql.Show;end;//f_sql.BRINGTOFRONT;f_principale.Show end;
             //if trim(edit8.Text)<>'SYSDBA' then f_principale.Show;
      end;
       Screen.Cursor:=crdefault;//le curseur redevient celui par d�faut
end;

procedure TForm1.form1_close(Sender: TObject; var Action: TCloseAction);
begin
   if f_dm.connect_db_gf.Connected  then f_dm.connect_db_gf.Close;
  //  if f_dm.connect_db_pers.Connected  then f_dm.connect_db_pers.Close;
    application.Terminate;
end;



procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    showmessage('               Au revoir ...')
end;

Initialization
 // DecimalSeparator:='.';
 //   ThousandSeparator := ','
end.
