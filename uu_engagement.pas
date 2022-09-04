unit uu_engagement;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,variants,
  Db,  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons,
  Data.FMTBcd, Data.SqlExpr;

type
  Tff_engagement = class(TForm)
    eng_mandat: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel7: TPanel;
    DBGrid6: TDBGrid;
    Label8: TLabel;
    Panel8: TPanel;
    DBGrid8: TDBGrid;
    DBNavigator8: TDBNavigator;
    Label7: TLabel;
    Panel9: TPanel;
    DBGrid10: TDBGrid;
    Label11: TLabel;
    DBNavigator9: TDBNavigator;
    Panel13: TPanel;
    Panel14: TPanel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBNavigator3: TDBNavigator;
    Panel15: TPanel;
    DBGrid4: TDBGrid;
    Label6: TLabel;
    DBNavigator4: TDBNavigator;
    Panel16: TPanel;
    Panel17: TPanel;
    DBNavigator5: TDBNavigator;
    name: TEdit;
    DBGrid5: TDBGrid;
    Label1: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    num: TEdit;
    DBNavigator6: TDBNavigator;
    DBGrid7: TDBGrid;
    Label5: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label9: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Panel12: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid3: TDBGrid;

    procedure Button3Click(Sender: TObject);
    procedure prendre_code(Sender: TObject);
    procedure seek_eng(Sender: TObject);
    procedure xprendre_code_structure(Sender: TObject);
    procedure fermer(Sender: TObject; var Action: TCloseAction);
    procedure oncreate_f_engagement(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure imp(Sender: TObject);
    procedure SQL(Sender: TObject);
    procedure mandat(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure xtr(Sender: TObject);
    procedure prendre(Sender: TObject);
    procedure mandater(Sender: TObject);
    procedure trouv(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
   
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  ff_engagement: Tff_engagement;

implementation

uses MAIN, u_dm, u_edit_eng, U_sql, u_mandat, u_consul_eng, U_eng_four;

{$R *.DFM}

(*procedure Tff_engagement.Button1Click(Sender: TObject);
begin
    f_principale.t_engagement.insert;
    f_principale.t_engagement.edit;
end; *)





procedure Tff_engagement.Button3Click(Sender: TObject);
begin
 ff_engagement.visible:=false;x:=0;
end;



procedure Tff_engagement.prendre(Sender: TObject);
begin
       f_dm.SimpleDataSet_det_eng.Edit;
    if f_dm.SimpleDataSet_eng.FieldByName('type').AsString='m' then begin
       f_dm.SimpleDataSet_det_eng.Edit;
       f_dm.SimpleDataSet_det_eng.FieldByName('benificiaire').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
       f_dm.SimpleDataSet_det_eng.FieldByName('designation').asstring:=trim(f_dm.ClientDataSet_fournisseur.fieldByName('nom').asstring)+
       '    '+ ' ÝÊÑÉ '+trim(f_dm.SimpleDataSet_mois.FieldByName('enarabe').asstring)+
       ' '+trim(f_principale.GESTION.Text)+'     '+trim(f_dm.ClientDataSet_adm.fieldByName('libelle_arabe').asstring);
                                 end;


     if f_dm.SimpleDataSet_eng.FieldByName('type').AsString='a' then begin
       f_dm.SimpleDataSet_det_eng.Edit;
       f_dm.SimpleDataSet_det_eng.FieldByName('benificiaire').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
       f_dm.SimpleDataSet_det_eng.FieldByName('designation').asstring:=trim(f_dm.ClientDataSet_fournisseur.fieldByName('nom').asstring);
           //+       '    '+ ' ÝÊÑÉ '+trim(f_dm.SimpleDataSet_mois.FieldByName('enarabe').asstring)+
           //' '+trim(f_principale.GESTION.Text)+'     '+trim(f_dm.ClientDataSet_adm.fieldByName('libelle_arabe').asstring);
                                 end;
      if f_dm.SimpleDataSet_eng.FieldByName('type').AsString='c' then begin
          f_dm.ClientDataSet_adm.Locate('code',f_dm.SimpleDataSet_convention.fieldByName('structure').asstring,[]);

          f_dm.ClientDataSet_fournisseur.Locate('benificiaire',f_dm.SimpleDataSet_convention.fieldByName('fournisseur').asstring,[]);
            f_dm.SimpleDataSet_det_eng.FieldByName('benificiaire').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
           f_dm.SimpleDataSet_det_eng.FieldByName('designation').asstring:=
              ' ÇÊÝÇÞíÉ ÑÞã '+trim(f_dm.SimpleDataSet_convention.fieldByName('convention').asstring)+
              ' ÈÊÇÑíÎ '+trim(f_dm.SimpleDataSet_convention.fieldByName('dates').asstring)+'   '+
               trim(f_dm.ClientDataSet_fournisseur.fieldByName('nom').asstring)+
               '    '+trim(f_dm.ClientDataSet_adm.fieldByName('libelle_arabe').asstring);
        end;

      if f_dm.SimpleDataSet_eng.FieldByName('type').AsString='b' then begin
         f_dm.ClientDataSet_adm.Locate('code',f_dm.SimpleDataSet_bc.fieldByName('structure').asstring,[]);
         f_dm.ClientDataSet_fournisseur.Locate('benificiaire',f_dm.SimpleDataSet_bc.fieldByName('fournisseur').asstring,[]);
         f_dm.SimpleDataSet_det_eng.FieldByName('benificiaire').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
         f_dm.SimpleDataSet_det_eng.Edit;f_dm.SimpleDataSet_det_eng.FieldByName('designation').asstring:=
       ' Ó ØáÈ ÑÞã '+trim(f_dm.SimpleDataSet_bc.fieldByName('bc1').asstring)+
       ' ÈÊÇÑíÎ '+trim(f_dm.SimpleDataSet_bc.fieldByName('dates').asstring)+' '+
       trim(f_dm.ClientDataSet_fournisseur.fieldByName('nom').asstring)+
       '    '+trim(f_dm.ClientDataSet_adm.fieldByName('libelle_arabe').asstring);
     end;

     if f_dm.SimpleDataSet_eng.FieldByName('type').AsString='f' then begin
         f_dm.ClientDataSet_adm.Locate('code',f_dm.SimpleDataSet_facture.fieldByName('structure').asstring,[]);
         f_dm.ClientDataSet_fournisseur.Locate('benificiaire',f_dm.SimpleDataSet_facture.fieldByName('benificiaire').asstring,[]);
         f_dm.SimpleDataSet_det_eng.FieldByName('benificiaire').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
         f_dm.SimpleDataSet_det_eng.FieldByName('montant').AsFloat:=f_dm.SimpleDataSet_facture.FieldByName('montant').AsFloat;
         f_dm.SimpleDataSet_det_eng.Edit;f_dm.SimpleDataSet_det_eng.FieldByName('designation').asstring:=
       ' ÝÊÑÉ '+trim(f_dm.SimpleDataSet_facture.FieldByName('periode').asstring)+
       ' ÝÇÊæÑÉ ÑÞã '+trim(f_dm.SimpleDataSet_facture.fieldByName('facture').asstring)+
       ' ÈÊÇÑíÎ '+trim(f_dm.SimpleDataSet_facture.fieldByName('dates').asstring)+'  '+
       trim(f_dm.ClientDataSet_fournisseur.fieldByName('nom').asstring)+
       '   '+trim(f_dm.ClientDataSet_adm.fieldByName('libelle_arabe').asstring);
     end;

    activecontrol:=dbgrid2;
end;

procedure Tff_engagement.prendre_code(Sender: TObject);
begin
    //f_dm.ibd_eng.edit;
    //f_dm.ibd_eng.fieldByName('chapitre').asstring:=f_dm.ibt_chapitre.fieldByName('chapitre').asstring;
    //f_dm.ibd_eng.fieldByName('article').asstring:=f_dm.ibt_chapitre.fieldByName('article').asstring;

    f_dm.simpleDataSet_eng.Edit;
    f_dm.simpleDataSet_eng.FieldByName('chapitre').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('chapitre').asstring;
    f_dm.simpleDataSet_eng.FieldByName ('article').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('article').asstring;
    activecontrol:=dbgrid3;
end;



procedure Tff_engagement.seek_eng(Sender: TObject);
begin
    if edit1.text<>'' then
      if not(f_dm.simpleDataSet_eng.Locate('fiche',strtoint(edit1.text),[])) then
      f_dm.simpleDataSet_eng.last;
end;







procedure Tff_engagement.imp(Sender: TObject);
begin
  if f_edit_eng.WindowState=wsMinimized then f_edit_eng.WindowState:=wsMaximized ;
  f_edit_eng.visible:=true;
  f_edit_eng.bringtofront;
end;

procedure Tff_engagement.mandat(Sender: TObject);
begin
   f_dm.ClientDataSet_mandat.FieldByName('dates').editmask:='##/##/####';
   f_dm.Sm.FieldByName('dates').editmask:='##/##/####';
   x:=1; // f_mandat est  ouvert

   if f_mandat.WindowState=wsMinimized then    f_mandat.WindowState:=wsMaximized ;
    f_mandat.visible:=true;f_mandat.bringtofront;
end;

procedure Tff_engagement.mandater(Sender: TObject);
begin
   f_dm.ClientDataSet_mandat.FieldByName('dates').editmask:='##/##/####';
   f_dm.Sm.FieldByName('dates').editmask:='##/##/####';
   x:=1; // f_mandat est  ouvert
   if (f_dm.SimpleDataSet_eng.FieldByName('objet').AsString<>'d') and  (f_dm.SimpleDataSet_eng.FieldByName('objet').AsString<>'D')
      then  showmessage('L"engagement n"est pas en dépense, donc ne peut être mandaté ...') else
      begin
            f_dm.Sm.append;
            f_dm.Sm.fieldbyname('gestion').AsString:=f_dm.SimpleDataSet_eng.FieldByName('gestion').AsString;
            f_dm.Sm.fieldbyname('chapitre').AsString:=f_dm.SimpleDataSet_eng.FieldByName('chapitre').AsString;
            f_dm.Sm.fieldbyname('article').AsString:=f_dm.SimpleDataSet_eng.FieldByName('article').AsString;
            f_dm.Sm.fieldbyname('structure').AsString:=f_dm.SimpleDataSet_eng.FieldByName('structure').AsString;
            f_dm.Sm.fieldbyname('num_engagement').AsInteger:=f_dm.SimpleDataSet_eng.FieldByName('fiche').AsInteger;

        {     //Prendre les lignes engagements
             eng_mandat.Close;
             eng_mandat.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
             eng_mandat.Params[1].asinteger:=f_dm.simpledataset_eng.fieldByName('fiche').asinteger;
             eng_mandat.Params[2].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
             eng_mandat.Params[3].AsString:=f_dm.simpledataset_eng.fieldByName('article').asstring;
             eng_mandat.ExecSQL; }


            if f_mandat.WindowState=wsMinimized then    f_mandat.WindowState:=wsMaximized ;
            f_mandat.visible:=true;f_mandat.bringtofront;
      end;
end;

procedure Tff_engagement.SpeedButton2Click(Sender: TObject);
begin
      ff_engagement.visible:=false;x:=0;
end;

procedure Tff_engagement.SpeedButton5Click(Sender: TObject);
begin
      if not (f_consul_eng.sqlt_mois.active) then f_consul_eng.sqlt_mois.Open;
     if not f_consul_eng.sqlt_article.active then f_consul_eng.sqlt_article.Open;

     if f_consul_eng.WindowState=wsMinimized then f_consul_eng.WindowState:=wsMaximized ;
     f_consul_eng.visible:=true;
end;

procedure Tff_engagement.SpeedButton6Click(Sender: TObject);
begin
       fac_eng:='liste_eng' ;
      if f_eng_four.WindowState=wsMinimized then    f_eng_four.WindowState:=wsMaximized ;
    f_eng_four.visible:=true;f_eng_four.bringtofront;
end;

procedure Tff_engagement.SQL(Sender: TObject);
begin
     if f_sql.WindowState=wsMinimized then f_sql.WindowState:=wsMaximized;
     f_sql.visible:=true;f_sql.bringtofront;
end;

procedure Tff_engagement.trouv(Sender: TObject);
begin
   if (num.text<>'') then  f_dm.simpleDataSet_bc.locate('bc1',trim(num.text),[]);
end;

procedure Tff_engagement.xprendre_code_structure(Sender: TObject);
begin
    f_dm.simpleDataSet_eng.Edit;
    f_dm.simpleDataSet_eng.FieldByName('structure').asstring:=f_dm.ClientDataSet_adm.fieldByName('code').asstring;
    f_dm.simpleDataSet_eng.FieldByName('structure_situation').asstring:=f_dm.ClientDataSet_adm.fieldByName('structure_situation').asstring;
    activecontrol:=dbgrid3;
end;

procedure Tff_engagement.xtr(Sender: TObject);
begin
  f_dm.ClientDataSet_fournisseur.Locate('NOM',trim(name.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tff_engagement.fermer(Sender: TObject; var Action: TCloseAction);
begin
   x:=0;
end;



procedure Tff_engagement.oncreate_f_engagement(Sender: TObject);
var
   M,D,n,e : Integer;
begin
   n := Screen.Width; // multiplicateur = définition actuelle de l'écran
   e := 1024; // diviseur = définition de l'écran à la conception
  // ScaleBy(n, e);
  // Realign;
   M := Screen.Height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
  // Realign;

end;


end.

