unit u_mandat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Db,  Mask, Buttons,variants,
   dbcgrids, ComCtrls, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient;

type
  Tf_mandat = class(TForm)
    Timer1: TTimer;
    somme: TSQLQuery;
    eng_mandat: TSQLQuery;
    p1: TDataSetProvider;
    c1: TClientDataSet;
    SQl1: TSQLQuery;
    del: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    c2: TClientDataSet;
    DataSource1: TDataSource;
    Panel11: TPanel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    fin: TBitBtn;
    Panel10: TPanel;
    Panel9: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid6: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid5: TDBGrid;
    Panel6: TPanel;
    DBGrid4: TDBGrid;
    Panel8: TPanel;
    DBGrid3: TDBGrid;
    Panel12: TPanel;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Edit6: TEdit;
    Label13: TLabel;
    Edit1: TEdit;
    Label11: TLabel;
    Panel13: TPanel;
    Label12: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Panel7: TPanel;
    DBGrid9: TDBGrid;
    DBNavigator7: TDBNavigator;
    Panel15: TPanel;
    DBGrid10: TDBGrid;
    DBNavigator8: TDBNavigator;
    Panel14: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Panel16: TPanel;
    DBNavigator4: TDBNavigator;
    Panel17: TPanel;
    DBNavigator5: TDBNavigator;
    Panel18: TPanel;
    Label9: TLabel;
    Label7: TLabel;
    Panel19: TPanel;
    Panel20: TPanel;
    DBNavigator3: TDBNavigator;
    name: TEdit;
    Label5: TLabel;
    Label3: TLabel;
    Panel21: TPanel;
    DBNavigator1: TDBNavigator;
    Panel22: TPanel;
    DBNavigator2: TDBNavigator;
    Panel23: TPanel;
    Label1: TLabel;
    tm: TEdit;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Label14: TLabel;
    DBGrid7: TDBGrid;
    DBNavigator6: TDBNavigator;
    Panel24: TPanel;
    s1: TBitBtn;
    som: TEdit;
    s2: TBitBtn;
    del_lignes: TBitBtn;
    som1: TEdit;
    procedure finClick(Sender: TObject);
    procedure prendre_code_fournisseur(Sender: TObject);
    procedure prendre_article(Sender: TObject);
    procedure seek_mandat(Sender: TObject);
    procedure raz(Sender: TObject);
    procedure fermer(Sender: TObject; var Action: TCloseAction);
    procedure refrechir(Sender: TObject);
    procedure s2Click(Sender: TObject);
    procedure yprendre_code_str(Sender: TObject);
    procedure s1Click(Sender: TObject);
    procedure alternate_color1(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure alternate_color2(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure alternate_color3(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure alternate_color5(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ordonner_mandat(Column: TColumn);

    procedure double_clic(Sender: TObject);

    procedure f_mandat_on_create(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure arabe(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  
    procedure xtrouver(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure eng(Sender: TObject);
    procedure mandat(Sender: TObject);
    procedure seek_eng(Sender: TObject);
    procedure del_lignesClick(Sender: TObject);
    procedure ligne_eng_take(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure LISTE1(Sender: TObject);
   

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_mandat: Tf_mandat;
  var s:string; i:smallint;x:real;touche:char;
      termine:boolean;
implementation

uses MAIN, u_dm, u_edit_mandat, u_consul_mandat, uu_engagement, U_sql,
  u_mandat_fournisseur;

{$R *.DFM}

procedure Tf_mandat.finClick(Sender: TObject);
begin
     f_mandat.visible:=false;
     xmandat:='';
     x:=0;   // f_mandat n'est pas ouvert
end;

procedure Tf_mandat.f_mandat_on_create(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
  // Realign;

end;




procedure Tf_mandat.ligne_eng_take(Sender: TObject);
begin
        dbgrid9.Canvas.Brush.Color:=clLime;
        f_dm.SimpleDataSet_lignes_mandat.Append;
              //  f_dm.SimpleDataSet_lignes_mandat.FieldByName('ligne').AsInteger:=f_dm.SimpleDataSet_det_eng.FieldByName('ligne').AsInteger;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('gestion').AsString:=f_dm.SimpleDataSet_det_eng.fieldByName('gestion').asstring;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('mandat').AsInteger:=f_dm.Sm.fieldByName('mandat').asinteger;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('chapitre').AsString:=f_dm.SimpleDataSet_det_eng.fieldByName('chapitre').asstring;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('article').AsString:=f_dm.SimpleDataSet_det_eng.fieldByName('article').asstring;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('benificiaire').AsString:=f_dm.SimpleDataSet_det_eng.fieldByName('benificiaire').asstring;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('structure').AsString:=f_dm.SimpleDataSet_det_eng.fieldByName('structure').asstring;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('structure_situation').AsString:=f_dm.SimpleDataSet_det_eng.fieldByName('structure_situation').asstring;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('dates').AsDateTime:=f_dm.Sm.fieldByName('dates').AsDateTime;
                f_dm.SimpleDataSet_lignes_mandat.FieldByName('montant').AsFloat:=f_dm.SimpleDataSet_det_eng.fieldByName('montant').asfloat;
end;

procedure Tf_mandat.LISTE1(Sender: TObject);
begin
   if f_mandat_fournisseur.WindowState=wsMinimized then    f_mandat_fournisseur.WindowState:=wsMaximized ;
    f_mandat_fournisseur.visible:=true;f_mandat_fournisseur.bringtofront;
end;

procedure Tf_mandat.mandat(Sender: TObject);
begin
       // on ne peut pas prendre les lignes engagements parcequ'il faut donner un N° mandat d'abord
       // Vérifier le mandatement de l'engagement avec locate ...


       n_mandat:=0;    // il s'agit d'une mandat nouveau   pris a partir des engagements

       if  f_dm.sm.locate('gestion;num_engagement;chapitre;article',vararrayof([f_dm.SimpleDataSet_eng.FieldByName('gestion').asstring,
                       f_dm.SimpleDataSet_eng.FieldByName('fiche').asinteger,
                       f_dm.SimpleDataSet_eng.FieldByName('chapitre').asstring,f_dm.SimpleDataSet_eng.FieldByName('article').asstring]),[])
               then showmessage('L"engagement est déjà mandaté ...') else
       begin
             if (f_dm.SimpleDataSet_eng.FieldByName('objet').AsString<>'d') and  (f_dm.SimpleDataSet_eng.FieldByName('objet').AsString<>'D')
      then  showmessage('L"engagement n"est pas en dépense, donc ne peut être mandaté ...') else
      begin
            f_dm.Sm.append;
            f_dm.Sm.fieldbyname('gestion').AsString:=f_dm.SimpleDataSet_eng.FieldByName('gestion').AsString;
            f_dm.Sm.fieldbyname('chapitre').AsString:=f_dm.SimpleDataSet_eng.FieldByName('chapitre').AsString;
            f_dm.Sm.fieldbyname('article').AsString:=f_dm.SimpleDataSet_eng.FieldByName('article').AsString;
            f_dm.Sm.fieldbyname('structure').AsString:=f_dm.SimpleDataSet_eng.FieldByName('structure').AsString;
            f_dm.Sm.fieldbyname('structure_situation').AsString:=f_dm.SimpleDataSet_eng.FieldByName('structure_situation').AsString;
            f_dm.Sm.fieldbyname('num_engagement').AsInteger:=f_dm.SimpleDataSet_eng.FieldByName('fiche').AsInteger;
      end;       end;

end;



procedure Tf_mandat.prendre_code_fournisseur(Sender: TObject);
begin
    f_dm.simpleDataSet_lignes_mandat.edit;
    f_dm.simpleDataSet_lignes_mandat.fieldByName('benificiaire').asstring:=f_dm.ClientDataSet_fournisseur.fieldByName('benificiaire').asstring;
    activecontrol:=dbgrid7;
end;



procedure Tf_mandat.prendre_article(Sender: TObject);
begin
    f_dm.sm.edit;
    f_dm.sm.fieldByName('chapitre').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('chapitre').asstring;
    f_dm.sm.fieldByName('article').asstring:=f_dm.ClientDataSet_chapitre.fieldByName('article').asstring;
    activecontrol:=dbgrid2;
end;












procedure Tf_mandat.seek_eng(Sender: TObject);
begin
      if edit4.text<>'' then
      if not(f_dm.simpleDataSet_eng.Locate('fiche',strtoint(edit4.text),[])) then
      f_dm.simpleDataSet_eng.last;
end;

procedure Tf_mandat.seek_mandat(Sender: TObject);
begin

 if (edit1.text<>'') and (edit6.Text='') then begin
      f_dm.ClientDataSet_mandat.locate('mandat',strtoint(trim(edit1.text)),[]);
      f_dm.Sm.locate('mandat',strtoint(trim(edit1.text)),[]) end;

 if (edit6.text<>'') and (edit1.Text='') then begin
      f_dm.ClientDataSet_mandat.locate('chapitre',trim(edit6.text),[]);
      f_dm.Sm.locate('chapitre',trim(edit6.text),[]) end;

 if (edit6.text<>'') and (edit1.Text<>'') then begin
      f_dm.ClientDataSet_mandat.locate('mandat;chapitre',vararrayof([strtoint(trim(edit1.text)),trim(edit6.text)]),[]);
      f_dm.Sm.locate('mandat;chapitre',vararrayof([strtoint(trim(edit1.text)),trim(edit6.text)]),[]); end;
end;

procedure Tf_mandat.SpeedButton1Click(Sender: TObject);
begin
    with f_edit_mandat do begin
    print.enabled:=false;
    preview.enabled:=false; fs.enabled:=false;
    esc.enabled:=false;
    fin.enabled:=true;
    dbgrid1.enabled:=true;
    dbnavigator1.enabled:=true;
   end;

  f_dm.ClientDataSet_fournisseur.Close;
  f_dm.ClientDataSet_fournisseur.masterfields:='Benificiaire';
  f_dm.ClientDataSet_fournisseur.mastersource:=f_dm.ds_lignes_ib_1;
  f_dm.ClientDataSet_fournisseur.Open;
  if f_edit_mandat.WindowState=wsMinimized then    f_edit_mandat.WindowState:=wsMaximized ;
    f_edit_mandat.visible:=true; f_edit_mandat.BringToFront
end;


procedure Tf_mandat.SpeedButton3Click(Sender: TObject);
begin
   if not f_consul_mandat.SimpleDataSet_mois.Active then   f_consul_mandat.SimpleDataSet_mois.Active:=true;
   if f_consul_mandat.WindowState=wsMinimized then f_consul_mandat.WindowState:=wsMaximized ;
   f_consul_mandat.visible:=true;
end;



procedure Tf_mandat.SpeedButton4Click(Sender: TObject);
begin
        if f_sql.WindowState=wsMinimized then f_sql.WindowState:=wsMaximized;
     f_sql.visible:=true;f_sql.bringtofront;
end;

procedure Tf_mandat.xtrouver(Sender: TObject);
begin
   f_dm.ClientDataSet_fournisseur.Locate('NOM',trim(name.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_mandat.raz(Sender: TObject);
begin
  edit1.text:=''
end;




procedure Tf_mandat.fermer(Sender: TObject; var Action: TCloseAction);
begin
     xmandat:='';x:=0;
end;

procedure Tf_mandat.refrechir(Sender: TObject);
begin
//  f_principale.t_mandat.refresh
end;




procedure Tf_mandat.s2Click(Sender: TObject);
begin
     somme.close;
     somme.SQL.Clear;
     somme.sql.Add('select sum (montant) from lignes where mandat=:a and gestion=:g and chapitre=:c and article=:d');
     somme.Params[0].Asinteger:=f_dm.sm.fieldByName('mandat').asinteger;
     somme.Params[1].AsString:=f_dm.sm.fieldByName('gestion').asstring;
     somme.Params[2].Asstring:=f_dm.sm.fieldByName('chapitre').asstring;
     somme.Params[3].Asstring:=f_dm.sm.fieldByName('article').asstring;


     somme.open;
     s:='            ';
     if  somme.Fields[0].asstring<>'' then str(somme.Fields[0].value:12:2,s)
     else s:='           ';
     som1.text:=s;
     somme.close;
end;

procedure Tf_mandat.yprendre_code_str(Sender: TObject);
begin
    f_dm.sm.Edit;
    f_dm.sm.FieldByName('structure').asstring:=f_dm.ClientDataSet_adm.fieldByName('code').asstring;
    f_dm.sm.FieldByName('structure_situation').asstring:=f_dm.ClientDataSet_adm.fieldByName('structure_situation').asstring;
    activecontrol:=dbgrid2;
end;


procedure Tf_mandat.s1Click(Sender: TObject);
begin
     somme.close;
     somme.SQL.Clear;
     somme.sql.Add('select sum (montant) from lignes where mandat=:a and gestion=:g and chapitre=:c');
     somme.Params[0].Asinteger:=f_dm.sm.fieldByName('mandat').asinteger;
     somme.Params[1].AsString:=f_dm.sm.fieldByName('gestion').asstring;
     somme.Params[2].Asstring:=f_dm.sm.fieldByName('chapitre').asstring;

     somme.open;
     s:='            ';
     if  somme.Fields[0].asstring<>'' then str(somme.Fields[0].value:12:2,s)
     else s:='           ';
     som.text:=s;
     somme.close;
end;



procedure Tf_mandat.alternate_color1(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   grid : TDBGrid;row : integer;
begin
   grid := sender as TDBGrid; row := f_dm.ClientDataSet_chapitre.RecNo;
   if Odd(row) then grid.Canvas.Brush.Color :=clSkyblue   else grid.Canvas.Brush.Color := clcream;
   if state=[gdselected,gdfocused] then grid.Canvas.Brush.Color := clnavy;
    grid.DefaultDrawColumnCell(Rect, DataCol, Column, State) ;
end;




procedure Tf_mandat.alternate_color2(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   grid : TDBGrid;row : integer;
begin
   grid := sender as TDBGrid; row := f_dm.ClientDataSet_adm.RecNo;
   if Odd(row) then grid.Canvas.Brush.Color := clSkyblue  else grid.Canvas.Brush.Color := clcream;
   if state=[gdselected,gdfocused] then grid.Canvas.Brush.Color := clnavy;
    grid.DefaultDrawColumnCell(Rect, DataCol, Column, State) ;
end;


procedure Tf_mandat.alternate_color3(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   grid : TDBGrid;row : integer;
begin
   grid := sender as TDBGrid; row := f_dm.ClientDataSet_fournisseur.RecNo;
   if Odd(row) then grid.Canvas.Brush.Color := clSkyblue  else grid.Canvas.Brush.Color := clcream;
   if state=[gdselected,gdfocused] then grid.Canvas.Brush.Color := clnavy;
    grid.DefaultDrawColumnCell(Rect, DataCol, Column, State) ;
end;


procedure Tf_mandat.alternate_color5(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   grid : TDBGrid;row : integer;
begin
   grid := sender as TDBGrid; row := f_dm.clientdataset_mandat.RecNo;
   if Odd(row) then grid.Canvas.Brush.Color := clSkyblue  else grid.Canvas.Brush.Color := clSkyblue;
   if state=[gdselected,gdfocused] then grid.Canvas.Brush.Color := clnavy;
    grid.DefaultDrawColumnCell(Rect, DataCol, Column, State) ;
end;


procedure Tf_mandat.arabe(Sender: TObject);
begin
    LoadKeyboardLayout('00000401', KLF_ACTIVATE);
      Application.BiDiKeyboard := '00000401';
end;

procedure Tf_mandat.del_lignesClick(Sender: TObject);
begin
        if   MessageDlgPos('Validez la suppression des lignes mandat',mtConfirmation, [mbYes, mbNo], 0, 1, 385)= idyes
             then  begin
                       del.Close;
                       del.Params[0].AsString:=f_dm.Sm.fieldByName('gestion').asstring;
                       del.Params[1].asinteger:=f_dm.sm.fieldByName('mandat').asinteger;
                       del.Params[2].AsString:=f_dm.sm.fieldByName('chapitre').asstring;
                       del.Params[3].AsString:=f_dm.sm.fieldByName('article').asstring;
                       del.ExecSQL;
                       F_DM.SimpleDataSet_lignes_mandat.ApplyUpdates(-1);

                        F_DM.SimpleDataSet_lignes_mandat.Refresh;dbgrid7.Refresh end;   // c2.ApplyUpdates(-1)
end;

procedure Tf_mandat.Button1Click(Sender: TObject);
begin
         f_dm.Sm.First;f_dm.Sm.edit;
      while not f_dm.sm.eof do begin
          f_dm.sm.edit;
          if (f_dm.Sm.FieldByName('engagement').AsString)<>'' then
                 f_dm.Sm.FieldByName('num_engagement').AsInteger:=strtoint(trim(f_dm.Sm.FieldByName('engagement').AsString));
          f_dm.Sm.next
      end;
      f_dm.Sm.Post;f_dm.Sm.ApplyUpdates(-1)
end;

procedure Tf_mandat.Button2Click(Sender: TObject);
begin
     termine:=true;
end;


procedure Tf_mandat.ordonner_mandat(Column: TColumn);
begin
     i:= f_dm.clientdataset_mandat.fieldByName('mandat').asinteger ;
     xgestion1:= f_dm.clientdataset_mandat.fieldByName('gestion').asstring ;
     xchapitre:= f_dm.clientdataset_mandat.fieldByName('chapitre').asstring ;
     xarticle:= f_dm.clientdataset_mandat.fieldByName('article').asstring ;
    // select * from  mandat where gestion=:x order by  gestion,mandat,chapitre,article
    // mandat+chapitre
    f_dm.SQLDataSet_mandat.close;
    f_dm.clientdataset_mandat.close;

   // f_dm.ibd_mandat.SelectSQL.clear;
    if column.FieldName='CHAPITRE' then f_dm.SQLDataSet_mandat.CommandText:=('select * from  mandat where gestion=:x order by '+column.FieldName+',mandat')
    else
    f_dm.SQLDataSet_mandat.CommandText:=('select * from  mandat where gestion=:x order by '+column.FieldName);
    f_dm.SQLDataSet_mandat.Params[0].asstring:=xgestion1;
    f_dm.SQLDataSet_mandat.open;
    f_dm.clientdataset_mandat.Open;

    f_dm.clientdataset_mandat.locate('gestion;mandat;chapitre;article',vararrayof([xgestion1,i,xchapitre,xarticle]),[]) ;
    f_dm.clientdataset_mandat.Refresh;
end;





procedure Tf_mandat.double_clic(Sender: TObject);
begin
      f_dm.clientdataset_mandat.locate('gestion;mandat;chapitre;article',vararrayof([f_dm.Sm.FieldByName('gestion').asstring,
                       f_dm.Sm.FieldByName('mandat').asinteger,
                       f_dm.Sm.FieldByName('chapitre').asstring,f_dm.Sm.FieldByName('article').asstring]),[]);
end;


procedure Tf_mandat.eng(Sender: TObject);
begin
   x:=1;f_dm.simpleDataSet_eng.FieldByName('dates').editmask:='##/##/####';
  if ff_engagement.WindowState=wsMinimized then ff_engagement.WindowState:=wsMaximized ;
  ff_engagement.visible:=true;ff_engagement.bringtofront;
end;


begin
    xmandat:='';
end.




