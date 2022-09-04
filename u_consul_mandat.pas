
unit u_consul_mandat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Db,  StdCtrls,variants,
  //IBQuery, IBCustomDataSet, IBTable, IBSQL,
   Buttons, Data.FMTBcd,
  Datasnap.DBClient, SimpleDS, Data.SqlExpr, Datasnap.Provider, Data.DBXFirebird,
  Vcl.ComCtrls;

type
  Tf_consul_mandat = class(TForm)
    DataSource1: TDataSource;
    ds_m: TDataSource;
    ds_article_ib: TDataSource;
    DataSource_m: TDataSource;
    SQLQuery_m: TSQLQuery;
    SimpleDataSet_mois: TSimpleDataSet;
    SimpleDataSet_article: TSimpleDataSet;
    somme: TSQLQuery;
    sommet: TSQLQuery;
    DataSetProvider_m: TDataSetProvider;
    ClientDataSet_lignes: TClientDataSet;
    DataSetProvider_lignes: TDataSetProvider;
    ClientDataSet_m: TClientDataSet;
    SQLDataSet_lignes: TSQLDataSet;
    SQL_mandat: TSQLQuery;
    cl_mandat: TClientDataSet;
    DataSource3: TDataSource;
    DataSetProvider2: TDataSetProvider;
    SQL_lignes: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    cl_lignes: TClientDataSet;
    DataSource2: TDataSource;
    DataSource4: TDataSource;
    DataSetProvider3: TDataSetProvider;
    SQL_lignes11: TSQLQuery;
    sql_lignes2: TSQLQuery;
    cl_lignes1: TClientDataSet;
    cl_lignes11: TClientDataSet;
    DataSetProvider4: TDataSetProvider;
    DataSource5: TDataSource;
    somme_lignes: TSQLQuery;
    lignes: TSimpleDataSet;
    DataSource6: TDataSource;
    Panel3: TPanel;
    Panel2: TPanel;
    fin: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    SpeedButton1: TSpeedButton;
    Panel11: TPanel;
    DBGrid5: TDBGrid;
    Label11: TLabel;
    Panel12: TPanel;
    DBGrid6: TDBGrid;
    Panel13: TPanel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel14: TPanel;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    DBGrid4: TDBGrid;
    Label9: TLabel;
    Label2: TLabel;
    DBNavigator3: TDBNavigator;
    BitBtn1: TBitBtn;
    Panel18: TPanel;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Panel20: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Panel19: TPanel;
    ww: TEdit;
    Panel21: TPanel;
    Edit1: TEdit;
    Panel22: TPanel;
    Edit2: TEdit;
    Panel23: TPanel;
    Edit3: TEdit;
    Panel24: TPanel;
    Edit4: TEdit;
    Panel25: TPanel;
    Edit6: TEdit;
    Panel26: TPanel;
    DBNavigator2: TDBNavigator;
    Panel27: TPanel;
    DBNavigator6: TDBNavigator;
    Panel28: TPanel;
    DBNavigator5: TDBNavigator;
    Panel6: TPanel;
    Panel7: TPanel;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    Panel8: TPanel;
    DBNavigator4: TDBNavigator;
    DBGrid8: TDBGrid;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    som: TEdit;
    Button2: TButton;
    Edit5: TEdit;
    Panel29: TPanel;
    procedure calcul(DataSet: TDataSet);
    procedure finClick(Sender: TObject);
   // procedure verif(Sender: TObject);
    procedure forme_creer(Sender: TObject);
    procedure xcalcul(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure ordonner_mandat(Column: TColumn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure on_key_down(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure fermer(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure verif_mdt_eng(Sender: TObject);
    procedure calcul_lignes(DataSet: TDataSet);
    procedure pop(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_consul_mandat: Tf_consul_mandat;
   s:string; termine:boolean; x:real;
implementation

uses MAIN,u_dm;

{$R *.DFM}




procedure Tf_consul_mandat.Button2Click(Sender: TObject);
begin
    termine:=true;
end;

procedure Tf_consul_mandat.calcul(DataSet: TDataSet);
begin
if ((SimpleDataSet_mois.FieldByName('mois').asinteger>0) and (SimpleDataSet_mois.FieldByName('mois').asinteger<13))
 then  begin

// Cette procédure est executée
     // 1) à l'ouverture de la fiche de consultation des engagements
     // 2) en réponse à l'evénement AFTERScroll des tables
     //     Mois et Article.
     ww.text:='                   ';
      FormatSettings.ShortDateFormat:='dd/mm/yyy';
       //S := SysUtils.FormatDateTime('dd/mm/yyy');
       edit6.Text := datetostr(now);

     if not (f_consul_mandat.SimpleDataSet_mois.active) then f_consul_mandat.SimpleDataSet_mois.Open;
     if not f_consul_mandat.SimpleDataSet_article.active then f_consul_mandat.SimpleDataSet_article.Open;
     s:=f_principale.gestion.text;
     SQLDataSet_lignes.close;ClientDataSet_lignes.close;
     sqlquery_m.Close;ClientDataSet_m.close;
     sqlquery_m.sql.clear;
     sqlquery_m.sql.Add('select * from mandat where gestion=:g and chapitre=:c and article=:a and dates>=:d1 and dates<:d2 order by mandat');
     sqlquery_m.Params[0].AsString:=f_principale.gestion.text;
     sqlquery_m.Params[1].AsString:=SimpleDataSet_article.fieldByName('chapitre').asstring;
     sqlquery_m.Params[2].Asstring:=SimpleDataSet_article.fieldByName('article').asstring;
     sqlquery_m.Params[3].Asdatetime:=strtodate('01/'+trim(SimpleDataSet_mois.FieldByName('mois').Asstring)+'/'+s,FormatSettings1);
     if SimpleDataSet_mois.FieldByName('mois').asinteger<>12 then
         sqlquery_m.Params[4].Asdatetime:=strtodate('01/'+inttostr(SimpleDataSet_mois.FieldByName('mois').asinteger+1)+'/'+s,FormatSettings1)
            else  sqlquery_m.Params[4].Asdatetime:=strtodate('01/01/'+inttostr(strtoint(s)+1),FormatSettings1);

     sqlquery_m.open;ClientDataSet_m.Open;

     SQLDataSet_lignes.open;ClientDataSet_lignes.Open;
     somme.CLOSE;
     somme.sql.clear;
     somme.sql.Add('select sum (montant) from lignes where gestion=:g and chapitre=:c and article=:a and dates>=:d11 and dates<:d22');
     somme.Params[0].AsString:=f_principale.gestion.text;
     somme.Params[1].AsString:=SimpleDataSet_article.fieldByName('chapitre').asstring;
     somme.Params[2].Asstring:=SimpleDataSet_article.fieldByName('article').asstring;
     somme.Params[3].Asdatetime:=strtodate('01/'+inttostr(SimpleDataSet_mois.FieldByName('mois').asinteger)+'/'+s,FormatSettings1);
     if SimpleDataSet_mois.FieldByName('mois').asinteger<>12 then
         somme.Params[4].Asdatetime:=strtodate('01/'+inttostr(SimpleDataSet_mois.FieldByName('mois').asinteger+1)+'/'+s,FormatSettings1)
     else  somme.Params[4].Asdatetime:=strtodate('01/01/'+inttostr(strtoint(s)+1),FormatSettings1);

     somme.open;
     s:='            ';
     if  somme.Fields[0].asstring<>'' then s:=floattostrf(somme.Fields[0].value,ffNumber,12,2);
     edit1.text:=s;


     s:=f_principale.gestion.text;
     somme.close;
     somme.sql.clear;
     somme.sql.Add('select sum (montant) from lignes where gestion=:g and chapitre=:c  and dates>=:d11 and dates<:d22');
     somme.Params[0].AsString:=f_principale.gestion.text;
     somme.Params[1].AsString:=simpledataset_article.fieldByName('chapitre').asstring;
     somme.Params[2].Asdatetime:=strtodate('01/'+inttostr(simpledataset_mois.FieldByName('mois').asinteger)+'/'+s,FormatSettings1);
     if simpledataset_mois.FieldByName('mois').asinteger<>12 then
         somme.Params[3].Asdatetime:=strtodate('01/'+inttostr(simpledataset_mois.FieldByName('mois').asinteger+1)+'/'+s,FormatSettings1)
     else  somme.Params[3].Asdatetime:=strtodate('01/01/'+inttostr(strtoint(s)+1),FormatSettings1);


     somme.open;
     s:='            ';
     if  somme.Fields[0].asstring<>'' then s:=floattostrf(somme.Fields[0].value,ffNumber,12,2);
     edit3.text:=s;

     s:=f_principale.gestion.text;
     sommet.close;
     sommet.sql.clear;
     sommet.sql.Add('select sum (montant) from lignes where gestion=:g and chapitre=:c and article=:a  and dates<:d22');
     sommet.Params[0].AsString:=f_principale.gestion.text;
     sommet.Params[1].AsString:=simpledataset_article.fieldByName('chapitre').asstring;
     sommet.Params[2].Asstring:=simpledataset_article.fieldByName('article').asstring;
     if simpledataset_mois.FieldByName('mois').asinteger<>12 then
         sommet.Params[3].Asdatetime:=strtodate('01/'+inttostr(simpledataset_mois.FieldByName('mois').asinteger+1)+'/'+s,FormatSettings1)
     else  sommet.Params[3].Asdatetime:=strtodate('01/01/'+inttostr(strtoint(s)+1),FormatSettings1);
     sommet.open;
     s:='            ';
     if  sommet.Fields[0].asstring<>'' then s:=floattostrf(sommet.Fields[0].value,ffNumber,12,2);
     edit2.text:=s;

     s:=f_principale.gestion.text;
     sommet.close;
     sommet.sql.clear;
     sommet.sql.Add('select sum (montant) from lignes where gestion=:g and chapitre=:c and  dates<:d22');
     sommet.Params[0].AsString:=f_principale.gestion.text;
     sommet.Params[1].AsString:=simpledataset_article.fieldByName('chapitre').asstring;
     if simpledataset_mois.FieldByName('mois').asinteger<>12 then
         sommet.Params[2].Asdatetime:=strtodate('01/'+inttostr(simpledataset_mois.FieldByName('mois').asinteger+1)+'/'+s,FormatSettings1)
     else  sommet.Params[2].Asdatetime:=strtodate('01/01/'+inttostr(strtoint(s)+1),FormatSettings1);

     sommet.open;
     s:='            ';
     if  sommet.Fields[0].asstring<>'' then s:=floattostrf(sommet.Fields[0].value,ffNumber,12,2);
     edit4.text:=s;


     // SQLDataSet_lignes.open;ClientDataSet_lignes.Open;
     // SQLDataSet_lignes.refresh;ClientDataSet_lignes.Refresh;
    somme_lignes.CLOSE;
     somme_lignes.sql.clear;
    somme_lignes.sql.Add('select sum (montant) from lignes where gestion=:g and chapitre=:c and article=:a and mandat=:x');  //  and mandat=:x
     somme_lignes.Params[0].AsString:=f_principale.gestion.text;
     somme_lignes.Params[1].AsString:=SimpleDataSet_article.fieldByName('chapitre').asstring;
    somme_lignes.Params[2].Asstring:=SimpleDataSet_article.fieldByName('article').asstring;
     somme_lignes.Params[3].asinteger:=clientdataset_m.fieldByName('mandat').asinteger;;

    // somme_lignes.Params[3].asinteger:=sqlquery_m.fieldByName('mandat').asinteger;;
   somme_lignes.open;
     s1:='            ';
    if  somme_lignes.Fields[0].asstring<>'' then s1:=floattostrf(somme_lignes.Fields[0].value,ffNumber,12,2) ;
     ww.text:=s1;
 end;
end;

procedure Tf_consul_mandat.calcul_lignes(DataSet: TDataSet);
begin
     SQLDataSet_lignes.open;ClientDataSet_lignes.Open;

    somme_lignes.CLOSE;
     somme_lignes.sql.clear;
    somme_lignes.sql.Add('select sum (montant) from lignes where gestion=:g and chapitre=:c and article=:a and mandat=:x');  //  and mandat=:x
     somme_lignes.Params[0].AsString:=f_principale.gestion.text;
     somme_lignes.Params[1].AsString:=SimpleDataSet_article.fieldByName('chapitre').asstring;
    somme_lignes.Params[2].Asstring:=SimpleDataSet_article.fieldByName('article').asstring;
     somme_lignes.Params[3].asinteger:=clientdataset_m.fieldByName('mandat').asinteger;;

    // somme_lignes.Params[3].asinteger:=sqlquery_m.fieldByName('mandat').asinteger;;
   somme_lignes.open;
     s1:='            ';
    if  somme_lignes.Fields[0].asstring<>'' then s1:=floattostrf(somme_lignes.Fields[0].value,ffNumber,12,2) ;
     ww.text:=s1;
end;

procedure Tf_consul_mandat.fermer(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=vk_escape then begin
        cl_lignes.close;sql_lignes.close;
        dbgrid8.visible:=false;dbnavigator4.visible:=false; end;
end;

procedure Tf_consul_mandat.finClick(Sender: TObject);
begin
    f_consul_mandat.visible:=false
end;






procedure Tf_consul_mandat.forme_creer(Sender: TObject);
var
   M, D : Integer;
begin
//    f_consul_mandat.t_article.open;
//    f_consul_mandat.t_mois.open;
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
 //  Realign;
end;


procedure Tf_consul_mandat.xcalcul(DataSet: TDataSet);
begin
      // Cette procédure est executée
     // 1) en réponse à l'evénement AFTERScroll de la table
     //    mandat (résultat de ibquery1).
   //   sqlQuery_lignes.Open;
     // Calcul TOTAL mandat
     {   tot_man();

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
        if  ibquery1.fieldByName('objet').asstring='d'
          then nouveau_solde:=ancien_solde-me
          else nouveau_solde:=ancien_solde+me;
      str(nouveau_solde:12:2,s);
      edit5.text:=s; }
end;

procedure Tf_consul_mandat.BitBtn1Click(Sender: TObject);
begin
     s:=f_principale.gestion.text;
     sqlquery_m.Close; ClientDataSet_m.Close;
     sqlquery_m.sql.clear;
     sqlquery_m.sql.Add('select * from mandat where gestion=:g order by mandat,chapitre,article');
     sqlquery_m.Params[0].AsString:=f_principale.gestion.text;
     sqlquery_m.open;ClientDataSet_m.open
end;

procedure Tf_consul_mandat.on_key_down(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=vk_escape then som.Text:='';

    if (key=13)  then begin

    termine:=false;
     sql_lignes.close; cl_lignes.Close;
     sql_lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     sql_lignes.open;
     cl_lignes.open;
     cl_lignes.First; dbgrid8.visible:=true;dbnavigator4.Visible:=true;
     x:=0;
    while not cl_lignes.eof and not termine do begin
          Application.ProcessMessages;
          i:=cl_lignes.fieldByName('mandat').asinteger;
          // s:=sql_lignes.fieldByName('gestion').asstring ;
           xarticle:=cl_lignes.fieldByName('article').asstring ;
           xchapitre:=cl_lignes.fieldByName('chapitre').asstring ;
           x:=0;
           while (i=cl_lignes.fieldByName('mandat').asinteger)and
                  (cl_lignes.fieldByName('article').asstring=xarticle)
                  and (cl_lignes.fieldByName('chapitre').asstring=xchapitre)
                 // and (sql_lignes.fieldByName('gestion').asstring=s)
                  and not cl_lignes.Eof do begin
                                            x:=x+cl_lignes.fieldByName('montant').AsFloat;
                                            cl_lignes.Next;
                                            end;

           if x=strtofloat(trim(som.Text)) then begin
           if   MessageDlgPos('Montant trouvé Continuer  ',mtConfirmation, [mbYes, mbNo], 0, 440,600)= IDno
            then begin
                   dbgrid8.visible:=false;dbnavigator4.Visible:=false; end;
           end;


     end;
     //  dbgrid8.visible:=false;dbnavigator4.Visible:=false;
    //   cl_lignes.close;
   f_consul_mandat.ActiveControl:=dbgrid8;

    end;
end;

procedure Tf_consul_mandat.ordonner_mandat(Column: TColumn);
begin
     i:=sqlquery_m.FieldByName('mandat').asinteger;
     xgestion1:=sqlquery_m.FieldByName('gestion').asstring;
     num_enre:=sqlquery_m.FieldByName('mandat').asinteger;
     xchapitre:=sqlquery_m.FieldByName('chapitre').asstring;
     xarticle:=sqlquery_m.FieldByName('article').asstring;
     sqlquery_m.close;
     sqlquery_m.SQL.Clear;
     if column.FieldName='chapitre' then sqlquery_m.SQL.Add('select * from mandat where gestion=:x order by chapitre,mandat')
                  else sqlquery_m.SQL.Add('select * from mandat where gestion=:x order by '+column.FieldName);
     sqlquery_m.Params[0].AsString:=xgestion1;
     sqlquery_m.Open;
  end;
procedure Tf_consul_mandat.pop(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=13) and (trim(som.text)<>'')  then begin
         termine:=false;
     lignes.close;
     lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     lignes.open;

     lignes.First; dbgrid8.visible:=true;dbnavigator4.Visible:=true;
     x:=0;
    while not lignes.eof and not termine do begin
          Application.ProcessMessages;
          i:=lignes.fieldByName('mandat').asinteger;
          // s:=sql_lignes.fieldByName('gestion').asstring ;
           xarticle:=lignes.fieldByName('article').asstring ;
           xchapitre:=lignes.fieldByName('chapitre').asstring ;
           x:=0;
           while (i=lignes.fieldByName('mandat').asinteger)and
                  (lignes.fieldByName('article').asstring=xarticle)
                  and (lignes.fieldByName('chapitre').asstring=xchapitre)
                 // and (sql_lignes.fieldByName('gestion').asstring=s)
                  and not lignes.Eof do begin
                                            x:=x+lignes.fieldByName('montant').AsFloat;
                                            lignes.Next;
                                            end;

           if x=strtofloat(trim(som.Text)) then begin
              edit5.text:='Mandat N° '+inttostr(i);
              if   MessageDlgPos('Montant trouvé Continuer  ',mtConfirmation, [mbYes, mbNo], 0, 300,570)= IDno
                    then begin
                         dbgrid8.visible:=false;dbnavigator4.Visible:=false;termine:=true end;
                         end;
                        edit5.text:='              ';


     end;
     //  dbgrid8.visible:=false;dbnavigator4.Visible:=false;
    //   cl_lignes.close;
    MessageDlgPos('F I N I R  ',mtConfirmation, [mbYes], 0, 300,570);
    dbgrid8.visible:=false;dbnavigator4.Visible:=false; som.text:='              ';
      end;
end;

procedure Tf_consul_mandat.SpeedButton2Click(Sender: TObject);
begin
     termine:=false;
     lignes.close;
     lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     lignes.open;


    sql_mandat.Close;cl_mandat.close;
     sql_mandat.Params[0].asstring:=trim(f_principale.gestion.text);
     sql_mandat.open;cl_mandat.open;

   // dbgrid8.visible:=true;dbnavigator4.Visible:=true;
     lignes.First;
    //edit3.Text:='';
   while not lignes.eof and not termine do begin
           Application.ProcessMessages;
           i:=lignes.fieldByName('mandat').asinteger;
           xstructure:=lignes.fieldByName('structure').asstring ;
           xarticle:=lignes.fieldByName('article').asstring ;
           xchapitre:=lignes.fieldByName('chapitre').asstring ;
           s:=floattostr(lignes.fieldByName('montant').asfloat) ;

           if not cl_mandat.locate('mandat;chapitre;article;structure',vararrayof([i,xchapitre,xarticle,xstructure]),[])
           then begin
                if  MessageDlgPos('Non trouvé dans Mandat, Supprimer cette ligne  ',mtConfirmation, [mbYes, mbNo], 0, 400,570)= IDyes
                    then begin
                         lignes.delete;lignes.ApplyUpdates(-1);end;
                       end;
           lignes.Next
                                          end;
     MessageDlgPos('F I N I R  ',mtConfirmation, [], 0, 300,570);
     cl_mandat.close;
     lignes.close;
    // dbgrid8.visible:=false;dbnavigator4.Visible:=false;
end;

procedure Tf_consul_mandat.SpeedButton4Click(Sender: TObject);
begin
if (trim(som.text)<>'') then  begin

     termine:=false;
     lignes.close;
     lignes.Params[0].asstring:=trim(f_principale.gestion.text);
     lignes.open;

     lignes.First; dbgrid8.visible:=true;dbnavigator4.Visible:=true;
     x:=0;
    while not lignes.eof and not termine do begin
          Application.ProcessMessages;
          i:=lignes.fieldByName('mandat').asinteger;
          // s:=sql_lignes.fieldByName('gestion').asstring ;
           xarticle:=lignes.fieldByName('article').asstring ;
           xchapitre:=lignes.fieldByName('chapitre').asstring ;
           x:=0;
           while (i=lignes.fieldByName('mandat').asinteger)and
                  (lignes.fieldByName('article').asstring=xarticle)
                  and (lignes.fieldByName('chapitre').asstring=xchapitre)
                 // and (sql_lignes.fieldByName('gestion').asstring=s)
                  and not lignes.Eof do begin
                                            x:=x+lignes.fieldByName('montant').AsFloat;
                                            lignes.Next;
                                            end;

           if x=strtofloat(trim(som.Text)) then begin
              edit5.text:='Mandat N° '+inttostr(i);
              if   MessageDlgPos('Montant trouvé Continuer  ',mtConfirmation, [mbYes, mbNo], 0, 300,570)= IDno
                    then begin
                         dbgrid8.visible:=false;dbnavigator4.Visible:=false;termine:=true end;
                         end;
                        edit5.text:='              ';


     end;
     //  dbgrid8.visible:=false;dbnavigator4.Visible:=false;
    //   cl_lignes.close;
    MessageDlgPos('F I N I R  ',mtConfirmation, [], 0, 300,570);
    dbgrid8.visible:=false;dbnavigator4.Visible:=false; som.text:='              ';
end;
end;

procedure Tf_consul_mandat.verif_mdt_eng(Sender: TObject);
var x:real;
begin
     termine:=false;
     sql_lignes2.close; cl_lignes1.Close;
     sql_lignes2.Params[0].asstring:=trim(f_principale.gestion.text);
     sql_lignes2.Params[1].asstring:=SimpleDataSet_article.fieldByName('chapitre').asstring;
     sql_lignes2.Params[2].asstring:=SimpleDataSet_article.fieldByName('article').asstring;
     sql_lignes2.open;cl_lignes1.open;


     sql_lignes11.close; cl_lignes11.Close;
     sql_lignes11.Params[0].asstring:=trim(f_principale.gestion.text);
     sql_lignes11.Params[1].asstring:=SimpleDataSet_article.fieldByName('chapitre').asstring;
     sql_lignes11.Params[2].asstring:=SimpleDataSet_article.fieldByName('article').asstring;
     sql_lignes11.open;
     cl_lignes11.open;


     dbgrid6.visible:=true;dbnavigator5.Visible:=true;
    cl_lignes1.first;
    //edit3.Text:='';
  while not cl_lignes1.eof and not termine do begin
           Application.ProcessMessages;

           xarticle:=cl_lignes1.fieldByName('article').asstring ;
           xchapitre:=cl_lignes1.fieldByName('chapitre').asstring ;
           x:=cl_lignes1.fieldByName('montant').asfloat;

            if cl_lignes11.locate('chapitre;article;montant',vararrayof([xchapitre,xarticle,x]),[])
                 then  cl_lignes1.Delete;

          if not cl_lignes11.locate('chapitre;article;montant',vararrayof([xchapitre,xarticle,x]),[])
          then if   MessageDlgPos('Not found ! Continuer  ',mtConfirmation, [mbYes, mbNo], 0, 300,570)= IDno
               then begin dbgrid6.visible:=false;dbnavigator5.Visible:=false;termine:=true end;
         cl_lignes1.Next
     end;
   //  sql_lignes2.close; cl_lignes1.Close;
   //  sql_lignes11.close;cl_lignes11.open;
    // dbgrid6.visible:=false;dbnavigator5.Visible:=false;
end;

end.
