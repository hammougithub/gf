unit u_consul_eng;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,variants,
  //DBTables,IBCustomDataSet, IBQuery, IBTable, IBSQL,
   Buttons, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, SimpleDS, Datasnap.Provider, Data.DBXFirebird;

type
  Tf_consul_eng = class(TForm)
    DataSource2: TDataSource;
    ds_mois_ib: TDataSource;
    ds_article_ib: TDataSource;
    DataSource1: TDataSource;
    teaee: TSQLQuery;
    teaed: TSQLQuery;
    somme_credit: TSQLQuery;
    ibq_total_eng: TSQLQuery;
    sqlt_mois: TSimpleDataSet;
    sqlt_article: TSimpleDataSet;
    SimpleDataSet1: TSimpleDataSet;
    SimpleDataSet2: TSimpleDataSet;
    cl_lignes: TClientDataSet;
    SQL_eng: TSQLQuery;
    cl_eng: TClientDataSet;
    SQL_lignes: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    DataSource3: TDataSource;
    DataSetProvider2: TDataSetProvider;
    del_ligne: TSQLQuery;
    lignes: TSimpleDataSet;
    Panel1: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    total_eng: TEdit;
    Label6: TLabel;
    Panel11: TPanel;
    Edit1: TEdit;
    Label5: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label7: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label9: TLabel;
    Edit5: TEdit;
    Label10: TLabel;
    Panel16: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel18: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    Panel3: TPanel;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    DBNavigator2: TDBNavigator;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit7: TEdit;
    Panel4: TPanel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator4: TDBNavigator;
    Panel5: TPanel;
    DBGrid8: TDBGrid;
    DBNavigator5: TDBNavigator;
    Panel17: TPanel;
    SpeedButton2: TSpeedButton;
    Button2: TButton;
    procedure calcul(DataSet: TDataSet);
    procedure calcul_teaed(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure oncreate_f_consul_eng(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pop(Sender: TObject);
  //  procedure calcul_teaed(DataSet: TDataSet);



  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_consul_eng: Tf_consul_eng;  ligne:integer;
  me,tc,ted,tee,ancien_solde,nouveau_solde:real;
  s:string;termine:boolean;
implementation
   uses MAIN, u_dm, u_edit_eng;

{$R *.DFM}

procedure tot_eng();
 // Calcul TOTAL ENGAGEMENT
 begin
     me:=0.0;
     f_consul_eng.ibq_total_eng.close ;
     f_consul_eng.ibq_total_eng.sql.clear;
     f_consul_eng.ibq_total_eng.sql.Add('select sum (montant) from det_eng where gestion=:g and chapitre=:c and article=:a  and fiche=:f');
     f_consul_eng.ibq_total_eng.Params[0].AsString:=f_principale.gestion.text;
     f_consul_eng.ibq_total_eng.Params[1].AsString:=f_consul_eng.sqlt_article.fieldByName('chapitre').asstring;
     f_consul_eng.ibq_total_eng.Params[2].Asstring:=f_consul_eng.sqlt_article.fieldByName('article').asstring;
     f_consul_eng.ibq_total_eng.Params[3].Asinteger:=f_consul_eng.SimpleDataSet1.fieldByName('fiche').asinteger;
     //f_consul_eng.ibq_total_eng.prepare;
     f_consul_eng.ibq_total_eng.open;
     s:='            ';
     if  f_consul_eng.ibq_total_eng.Fields[0].asstring<>''
         then
         begin me:=f_consul_eng.ibq_total_eng.Fields[0].value;
               str(f_consul_eng.ibq_total_eng.Fields[0].value:12:2,s);
         end;
     f_consul_eng.total_eng.text:=s;
end;


procedure  tot_eng_dep_ant();
begin
ted:=0.0;
// Total des engagements en dépense antérieurs
 with f_consul_eng do begin
     teaed.Close;
     teaed.sql.clear;
     teaed.sql.Add('select sum (montant) from det_eng where gestion=:x and chapitre=:y and article=:z and fiche<:f and objet=:d');
     teaed.Params[0].AsString:=f_principale.gestion.text;
     teaed.Params[1].AsString:=sqlt_article.fieldByName('chapitre').asstring;
     teaed.Params[2].Asstring:=sqlt_article.fieldByName('article').asstring;
     teaed.Params[3].Asinteger:=SimpleDataSet1.fieldByName('fiche').asinteger;
     teaed.Params[4].Asstring:='d';
     teaed.open;
     s:='            ';
     if  teaed.Fields[0].asstring<>''
      then
      begin
        ted:=teaed.Fields[0].value;
        str(teaed.Fields[0].value:12:2,s);
      end;
     edit1.text:=s;
                       end;
end;

procedure  total_credit();
begin
// Total des crédits de l'article
tc:=0.0;
 with f_consul_eng do begin
     somme_credit.Close;
     somme_credit.sql.clear;
     somme_credit.sql.Add('select sum (credit) from credit where gestion=:x and chapitre=:y and article=:z and (plus_moins=:a or plus_moins=:b)');
     somme_credit.Params[0].AsString:=f_principale.gestion.text;
     somme_credit.Params[1].AsString:=sqlt_article.fieldByName('chapitre').asstring;
     somme_credit.Params[2].Asstring:=sqlt_article.fieldByName('article').asstring;
     somme_credit.Params[3].Asstring:='n';
     somme_credit.Params[4].Asstring:='p';
     somme_credit.open;
     if  somme_credit.Fields[0].asstring<>'' then tc:=somme_credit.Fields[0].value;
                     end;
// Crédit en moins

     with f_consul_eng do begin
     somme_credit.close;
     somme_credit.sql.clear;
     somme_credit.sql.Add('select sum (credit) from credit where gestion=:x and chapitre=:y and article=:z and (plus_moins=:a)');
     somme_credit.Params[0].AsString:=f_principale.gestion.text;
     somme_credit.Params[1].AsString:=sqlt_article.fieldByName('chapitre').asstring;
     somme_credit.Params[2].Asstring:=sqlt_article.fieldByName('article').asstring;
     somme_credit.Params[3].Asstring:='m';
     somme_credit.open;
     if  somme_credit.Fields[0].asstring<>'' then tc:=tc-somme_credit.Fields[0].value;
     s:='            ';
     if  tc<>0.0 then str(tc:12:2,s);
     edit3.text:=s;
                       end;
end;

procedure  tot_eng_eco_ant();
begin
tee:=0.0;
// Total des engagements en économie antérieurs
 with f_consul_eng do begin
     teaee.Close;
     teaee.sql.clear;
     teaee.sql.Add('select sum (montant) from det_eng where gestion=:x and chapitre=:y and article=:z and fiche<:f and objet=:a');
     teaee.Params[0].AsString:=f_principale.gestion.text;
     teaee.Params[1].AsString:=sqlt_article.fieldByName('chapitre').asstring;
     teaee.Params[2].Asstring:=sqlt_article.fieldByName('article').asstring;
     teaee.Params[3].Asinteger:=SimpleDataSet1.fieldByName('fiche').asinteger;
     teaee.Params[4].Asstring:='e';
     teaee.open ;
     s:='            ';
     if  teaee.Fields[0].asstring<>''
      then
      begin
       str(teaee.Fields[0].value:12:2,s);
       tee:=teaee.Fields[0].value
      end;
     edit2.text:=s;
                       end;
end;





procedure Tf_consul_eng.calcul(DataSet: TDataSet);
begin

     // Cette procédure est executée
     // 1) à l'ouverture de la fiche de consultation des engagements
     // 2) en réponse à l'evénement AFTERScroll des tables
     //     Mois et Article.
     if not (sqlt_mois.dataset.active) then      f_consul_eng.sqlt_mois.Open;
     if not f_consul_eng.sqlt_article.active then      f_consul_eng.sqlt_article.Open;
 if ((sqlt_mois.FieldByName('mois').asinteger>0) and (sqlt_mois.FieldByName('mois').asinteger<13))
 then  begin
     s:=f_principale.gestion.text;
     edit6.text:=trim(sqlt_mois.FieldByName('nom').AsString);
     edit7.text:=trim(sqlt_article.FieldByName('chapitre').AsString);
     edit8.text:=trim(sqlt_article.FieldByName('article').AsString);
     SimpleDataSet1.close;

   //  SimpleDataSet1.DataSet.CommandText:='select * from engagement where gestion=:g and chapitre=:c and article=:a and dates>=:d1 and dates<:d2';
     SimpleDataSet1.DataSet.Params[0].AsString:=f_principale.gestion.text;
     SimpleDataSet1.DataSet.Params[1].AsString:=sqlt_article.fieldByName('chapitre').asstring;
     SimpleDataSet1.DataSet.Params[2].Asstring:=sqlt_article.fieldByName('article').asstring;
     SimpleDataSet1.DataSet.Params[3].Asdatetime:=strtodate('01/'+inttostr(sqlt_mois.FieldByName('mois').asinteger)+'/'+s,FormatSettings1);
     if sqlt_mois.FieldByName('mois').asinteger<>12 then
         SimpleDataSet1.DataSet.Params[4].Asdatetime:=strtodate('01/'+inttostr(sqlt_mois.FieldByName('mois').asinteger+1)+'/'+s,FormatSettings1)
     else  SimpleDataSet1.DataSet.Params[4].Asdatetime:=strtodate('01/01/'+inttostr(strtoint(s)+1),FormatSettings1);
     SimpleDataSet1.open;
     SimpleDataSet2.open;
    // Calcul TOTAL ENGAGEMENT
         tot_eng();

     // Total des engagements en dépense antérieurs
        tot_eng_dep_ant();

     // Total des engagements en économie antérieurs
        tot_eng_eco_ant();

     // Total des crédits
        total_credit;

     // Ancien solde
        ancien_solde:=tc-ted+tee;
        str(ancien_solde:12:2,s);
        edit4.text:=s;
     // Nouveau solde
        if  SimpleDataSet1.fieldByName('objet').asstring='d'
          then nouveau_solde:=ancien_solde-me
          else nouveau_solde:=ancien_solde+me;
      str(nouveau_solde:12:2,s);
      edit5.text:=s;
end;
end;


procedure Tf_consul_eng.Button1Click(Sender: TObject);
begin
 f_consul_ENG.visible:=false
end;

procedure Tf_consul_eng.calcul_teaed(DataSet: TDataSet);
begin
     // Cette procédure est executée
     // 1) en réponse à l'evénement AFTERScroll de la table
     //    Engagement (résultat de ibquery1).
      SimpleDataSet1.Open;
     // Calcul TOTAL ENGAGEMENT
        tot_eng();

     // Total des engagements en dépense antérieurs
         tot_eng_dep_ant();

      // Total des engagements en économie antérieurs
         tot_eng_eco_ant();

      // Total des crédits
        total_credit;

     // Ancien solde
        ancien_solde:=tc-ted+tee;
        str(ancien_solde:12:2,s);
        edit4.text:=s;
     // Nouveau solde
        if  SimpleDataSet1.fieldByName('objet').asstring='d'
          then nouveau_solde:=ancien_solde-me
          else nouveau_solde:=ancien_solde+me;
      str(nouveau_solde:12:2,s);
      edit5.text:=s;
end;







procedure Tf_consul_eng.oncreate_f_consul_eng(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
 //  Realign;
end;

procedure Tf_consul_eng.pop(Sender: TObject);
begin
      termine:=true;
end;

procedure Tf_consul_eng.SpeedButton1Click(Sender: TObject);
begin
 if f_edit_eng.WindowState=wsMinimized then f_edit_eng.WindowState:=wsMaximized ;
  f_edit_eng.visible:=true;
  f_edit_eng.bringtofront;
end;

procedure Tf_consul_eng.SpeedButton2Click(Sender: TObject);
begin
     termine:=false;


     lignes.close; lignes.Close;
     lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     lignes.open;


     sql_eng.Close;cl_eng.close;
     sql_eng.Params[0].asstring:=trim(f_principale.gestion.text);
     sql_eng.open;cl_eng.open;

     dbgrid8.visible:=true;dbnavigator5.Visible:=true;
    lignes.First;
     while not lignes.eof and not termine do begin
           Application.ProcessMessages;
           i:=lignes.fieldByName('fiche').asinteger;
           xarticle:=lignes.fieldByName('article').asstring ;
           xstructure:=lignes.fieldByName('structure').asstring ;
           xchapitre:=lignes.fieldByName('chapitre').asstring ;
           s:=floattostr(lignes.fieldByName('montant').asfloat) ;
           ligne:=lignes.fieldByName('ligne').asinteger;
           if not cl_eng.locate('fiche;chapitre;article;structure',vararrayof([i,xchapitre,xarticle,xstructure]),[])
          then begin
               if  MessageDlgPos('Non trouvé dans Engagement, Supprimer cette ligne  ',mtConfirmation, [mbYes, mbNo], 0, 400,570)= IDyes
                 then begin
                         lignes.delete;lignes.ApplyUpdates(-1);end;
               end;
         lignes.Next
                                     end;
       MessageDlgPos('F I N I R  ',mtConfirmation, [], 0, 400,570);
     cl_eng.close; dbgrid8.visible:=false;dbnavigator5.Visible:=false;
     lignes.close;

end;

end.

