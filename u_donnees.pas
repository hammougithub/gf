unit u_donnees;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.Buttons,strutils,
  Vcl.StdCtrls;

type
  TF_donnees = class(TForm)
    DBGrid4: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid6: TDBGrid;
    DBNavigator1: TDBNavigator;
    SpeedButton4: TSpeedButton;
    DEl: TSQLQuery;
    insert: TSQLQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator3: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    procedure base(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure prendre_agent_actuel(Sender: TObject);
    procedure seek(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_donnees: TF_donnees;i:integer;

implementation

{$R *.dfm}

uses u_db1, u_dm, u_forme1, MAIN;

procedure TF_donnees.base(Sender: TObject);
begin
  f_dm1.adoc2.Close;
 if trim(f_dm.ClientDataSet_adm.fieldbyname('code').asstring)='1'
    then f_dm1.adoc2.connectionstring:=
        //  'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=access_files\drt.mdb;Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';
                  'Provider=;Data '+
                  'Source='+trim(form1.edit5.Text)+'drt.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';
  if trim(f_dm.ClientDataSet_adm.fieldbyname('code').asstring)='2'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'TW47.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';
   if trim(f_dm.ClientDataSet_adm.fieldbyname('code').asstring)='v'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'drtvac.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';
   if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='3'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'TW03.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';

   if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='4'
    then f_dm1.adoc2.connectionstring:=
         'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'TW30.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';
   if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='5'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'TW33.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';
   if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='6'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'TW11.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';


   if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='7'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'Tc47.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';

   if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='8'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'Tc03.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';

  if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='9'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'Tc30.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';

   if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='a'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'Tc33.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';

    if trim(f_dm.clientdataset_adm.fieldbyname('code').asstring)='b'
    then f_dm1.adoc2.connectionstring:=
          'Provider=Microsoft.ACE.OLEDB.12.0;Data '+
                  'Source='+trim(form1.edit5.Text)+'Tc11.mdb'+';Jet OLEDB:Database Password=¶†¦§¨©¤§«®°±Un1g‡z9†';

  f_dm1.adoc2.Connected:=true;
  f_dm1.employes.Open;
  end;

procedure TF_donnees.prendre_agent_actuel(Sender: TObject);
begin
      if not f_dm.SimpleDataSet_agent.locate('region;adm;mat',
      vararrayof(['47',f_dm.ClientDataSet_adm.FieldByName('code').AsString,f_dm1.employes.FieldByName('code').AsString]),[])
      then begin
           f_dm.SimpleDataSet_agent.append;
           f_dm.SimpleDataSet_agent.FieldByName('region').AsString:='47';
           f_dm.SimpleDataSet_agent.FieldByName('adm').AsString:=f_dm.ClientDataSet_adm.FieldByName('code').AsString;
           f_dm.SimpleDataSet_agent.FieldByName('mat').AsString:=f_dm1.employes.FieldByName('code').AsString;
           f_dm.SimpleDataSet_agent.FieldByName('noma').AsString:=trim(f_dm1.employes.FieldByName('nom_ar').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('prenoma').AsString:=trim(f_dm1.employes.FieldByName('prenom_ar').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('nom').AsString:=trim(f_dm1.employes.FieldByName('nom').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('prenom').AsString:=trim(f_dm1.employes.FieldByName('prenom').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('grade_actuel').AsString:=trim(f_dm1.employes.FieldByName('codegrade_').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('fonction_actuelle').AsString:=trim(f_dm1.employes.FieldByName('codefoncspec_').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('codebanque').AsString:=trim(f_dm1.employes.FieldByName('codebanque_').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('numcompte').AsString:=trim(f_dm1.employes.FieldByName('numcompte').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('numeross').AsString:=trim(f_dm1.employes.FieldByName('numeross').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('sf').AsString:='C';
           f_dm.SimpleDataSet_agent.FieldByName('situation').AsString:='T';
           f_dm.SimpleDataSet_agent.FieldByName('stagiaire').AsString:='t';
           f_dm.SimpleDataSet_agent.FieldByName('SERVICE_milit').AsString:='1';
           f_dm.SimpleDataSet_agent.FieldByName('datenaiss').asdatetime:=f_dm1.employes.FieldByName('datenaiss').asdatetime;
           f_dm.SimpleDataSet_agent.FieldByName('dateembauche').asdatetime:=f_dm1.employes.FieldByName('dateembauche').asdatetime;
            if (f_dm1.employes.FieldByName('datesortie').asdatetime>f_dm1.employes.FieldByName('dateembauche').asdatetime)
               then f_dm.SimpleDataSet_agent.FieldByName('datesortie').asstring:=f_dm1.employes.FieldByName('datesortie').asstring;
           f_dm.SimpleDataSet_agent.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
           f_dm.SimpleDataSet_agent.FieldByName('date_maj').asstring:=F_principale.dat.caption;
           f_dm.SimpleDataSet_agent.post; end
           else showmessage('Un agent de même matricule existe déja ...');
end;

procedure TF_donnees.seek(Sender: TObject);
begin
 if edit1.text<>'' then
      if not(f_dm.SimpleDataSet_agent.Locate('mat',trim(edit1.text),[])) then
      f_dm.simpleDataSet_agent.last;
end;

procedure TF_donnees.SpeedButton4Click(Sender: TObject);
begin
     if  MessageDlgPos('Confirmer la supression (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                          del.Close;
                          del.Params[0].asstring:=trim(f_dm.ClientDataSet_adm.fieldbyname('code').asstring);
                          del.ExecSQL;
                         // MessageDlgPos(inttostr(del.r)+' agents supprimés ...',mtConfirmation, [mbYes], 0, 300,570);
                    end;
     i:=0;
     f_dm1.employes.First;
     if  MessageDlgPos('Insérer les données dans PERS (o/n)  ',mtConfirmation, [mbYes, mbNo], 0, 5,530)= IDyes
                    then begin
                   // f_dm.SimpleDataSet_agent.Open;
     while not f_dm1.employes.Eof do begin

           f_dm.SimpleDataSet_agent.append;
           f_dm.SimpleDataSet_agent.FieldByName('region').AsString:='47';
           f_dm.SimpleDataSet_agent.FieldByName('adm').AsString:=f_dm.ClientDataSet_adm.FieldByName('code').AsString;
           f_dm.SimpleDataSet_agent.FieldByName('mat').AsString:=f_dm1.employes.FieldByName('code').AsString;
           f_dm.SimpleDataSet_agent.FieldByName('noma').AsString:=trim(f_dm1.employes.FieldByName('nom_ar').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('prenoma').AsString:=trim(f_dm1.employes.FieldByName('prenom_ar').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('nom').AsString:=trim(f_dm1.employes.FieldByName('nom').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('prenom').AsString:=trim(f_dm1.employes.FieldByName('prenom').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('grade_actuel').AsString:=trim(f_dm1.employes.FieldByName('codegrade_').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('fonction_actuelle').AsString:=trim(f_dm1.employes.FieldByName('codefoncspec_').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('codebanque').AsString:=trim(f_dm1.employes.FieldByName('codebanque_').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('numcompte').AsString:=trim(f_dm1.employes.FieldByName('numcompte').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('numeross').AsString:=trim(f_dm1.employes.FieldByName('numeross').AsString);
           f_dm.SimpleDataSet_agent.FieldByName('sf').AsString:='C';
           f_dm.SimpleDataSet_agent.FieldByName('situation').AsString:='T';
           f_dm.SimpleDataSet_agent.FieldByName('stagiaire').AsString:='t';
           f_dm.SimpleDataSet_agent.FieldByName('SERVICE_milit').AsString:='1';
           f_dm.SimpleDataSet_agent.FieldByName('datenaiss').asdatetime:=f_dm1.employes.FieldByName('datenaiss').asdatetime;
           f_dm.SimpleDataSet_agent.FieldByName('dateembauche').asdatetime:=f_dm1.employes.FieldByName('dateembauche').asdatetime;
            if (f_dm1.employes.FieldByName('datesortie').asdatetime>f_dm1.employes.FieldByName('dateembauche').asdatetime)
               then f_dm.SimpleDataSet_agent.FieldByName('datesortie').asstring:=f_dm1.employes.FieldByName('datesortie').asstring;
           f_dm.SimpleDataSet_agent.FieldByName('utilisateur').asstring:=trim(form1.edit8.Text);;
           f_dm.SimpleDataSet_agent.FieldByName('date_maj').asstring:=F_principale.dat.caption;
           f_dm.SimpleDataSet_agent.post;
           f_dm1.employes.Next;i:=i+1;
   end;
     f_dm.SimpleDataSet_agent.ApplyUpdates(-1);
     MessageDlgPos(inttostr(i)+' agents ajoutés ...',mtConfirmation, [], 0, 5,530);
end;
end;

end.



