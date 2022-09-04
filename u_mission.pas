unit u_mission;

interface

uses
 // Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 // Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids;
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, variants,
  StdCtrls, Db,  Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons;
  //IBCustomDataSet, IBTable;

type
  Tf_mission = class(TForm)
    Panel18: TPanel;
    panel_bas1: TPanel;
    BitBtn2: TBitBtn;
    fin: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel_bas2: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    mat: TEdit;
    name: TEdit;
    prename: TEdit;
    Panel14: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel15: TPanel;
    Label2: TLabel;
    Panel16: TPanel;
    DBNavigator7: TDBNavigator;
    DBGrid6: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Label8: TLabel;
    Label11: TLabel;
    DBNavigator6: TDBNavigator;
    DBNavigator5: TDBNavigator;
    DBGrid5: TDBGrid;
    DBGrid8: TDBGrid;
    Panel7: TPanel;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Panel8: TPanel;
    Label5: TLabel;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Panel9: TPanel;
    Label10: TLabel;
    DBGrid9: TDBGrid;
    DBNavigator9: TDBNavigator;
    Panel10: TPanel;
    Label14: TLabel;
    DBGrid7: TDBGrid;
    DBNavigator8: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    tapc: TEdit;
    tadm: TEdit;
    tgrade: TEdit;
    tfonc: TEdit;
    DBNavigator4: TDBNavigator;
    Panel3: TPanel;
    Label12: TLabel;
    Label7: TLabel;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    procedure mat_find(Sender: TObject);
    procedure arabe(Sender: TObject);
    procedure name_find(Sender: TObject);
    procedure gfd(Sender: TObject);
    procedure prendre(Sender: TObject);
    procedure fonction_prendre(Sender: TObject);
    procedure prendre_grade(Sender: TObject);
    procedure adm_prendre(Sender: TObject);
    procedure apc_prendre(Sender: TObject);
    procedure finClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure cc(Sender: TObject);
    procedure cp(Sender: TObject);
    procedure show(Sender: TObject);
    procedure enactivant(Sender: TObject);
    procedure prendre_lieu(Sender: TObject);
   

   
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_mission: Tf_mission;

implementation

uses u_dm, MAIN, u_edit_mission, U_parametres, u_bareme, U_parametres_mission;

{$R *.dfm}
var
SGC : TGridCoord;  error:boolean;

procedure Tf_mission.mat_find(Sender: TObject);
begin
    if mat.text<>'' then
    if (f_dm.simpledataset_agent.locate('mat',trim(mat.text),[loPartialKey])) then dbgrid1.REFRESH;
end;

procedure Tf_mission.adm_prendre(Sender: TObject);
begin
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Edit;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_adm').AsString:=f_dm.simpledataset_adm_pers.FieldByName('code_adm').AsString;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Post
end;

procedure Tf_mission.apc_prendre(Sender: TObject);
begin
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Edit;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_apc').AsString:=f_dm.simpledataset_apc.FieldByName('code_apc').AsString;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Post
end;

procedure Tf_mission.arabe(Sender: TObject);
begin
      LoadKeyboardLayout('00000401', KLF_ACTIVATE);
      Application.BiDiKeyboard := '00000401';
end;

procedure Tf_mission.BitBtn1Click(Sender: TObject);
begin
      if f_EDIT_mission.WindowState=wsMinimized  then f_EDIT_mission.WindowState:=wsMaximized ;
      f_EDIT_mission.visible:=true;f_EDIT_mission.bringtofront;
end;





procedure Tf_mission.enactivant(Sender: TObject);
begin
   dbgrid1.Columns[6].PickList.clear;  dbgrid1.Columns[7].PickList.clear;
   if f_dm.SimpleDataSet_lieu.active then  begin //edit1.text:='f';
         while not f_dm.SimpleDataSet_lieu.eof do begin
                   dbgrid4.Columns[6].PickList.add(trim(f_dm.SimpleDataSet_lieu.FieldByName('en_a').AsString)) ;
                   dbgrid4.Columns[7].PickList.add(trim(f_dm.SimpleDataSet_lieu.FieldByName('en_a').AsString)) ;
                   f_dm.SimpleDataSet_lieu.Next;
     end; end;
end;

// adm_apc_grade_fonction_mission
//(gestion char(4) not null,numero_mission char(10) not null,code_adm char(3),code_apc char(1),code_grade char         (3),code_fonction char(3),primary key(gestion,numero_mission));
procedure Tf_mission.finClick(Sender: TObject);
begin
     f_mission.Close
end;

procedure Tf_mission.fonction_prendre(Sender: TObject);
begin
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Edit;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_fonction').AsString:=f_dm.simpledataset_fonction.FieldByName('code').AsString;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('categ_fonction').AsString:=f_dm.simpledataset_fonction.FieldByName('categ').AsString;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Post;
    if (f_dm.simpledataset_fonction.FieldByName('code').AsString)<>
       f_dm.simpledataset_agent.fieldByName('fonction_actuelle').AsString then begin
         if   MessageDlgPos('Modifier la fonction actuelle dans la table Agent (O/N))',mtConfirmation, [mbYes, mbNo], 0, 10, 500)= idyes
              then begin
                     f_dm.simpledataset_agent.Edit;
                     f_dm.simpledataset_agent.fieldByName('fonction_actuelle').AsString:=f_dm.simpledataset_fonction.FieldByName('code').AsString;
                     f_dm.simpledataset_agent.Post
              end;
       end;
end;

procedure Tf_mission.name_find(Sender: TObject);
begin
   if (name.text<>'') AND (prename.text<>'') then
   f_dm.simpledataset_agent.Locate('noma;prenoma',VarArrayOf([trim(name.text),trim(prename.text)]), [loCaseInsensitive,loPartialKey]);

   if (name.text<>'') AND (prename.text='') then
   f_dm.simpledataset_agent.Locate('noma',trim(name.text), [loCaseInsensitive,loPartialKey]);

   if (name.text='') AND (prename.text<>'') then
   f_dm.simpledataset_agent.Locate('prenoma',trim(prename.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_mission.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
 //  Realign;
end;



procedure Tf_mission.gfd(Sender: TObject);
begin
  if (trim(name.text)<>'') AND (trim(prename.text)='') then    begin
   f_dm.simpledataset_agent.Locate('noma',trim(name.text), [loCaseInsensitive,loPartialKey]);
   //f_dm.simpledataset_agent.Locate('noma;adm',VarArrayOf([trim(name.text),trim(adm.text)]), [loCaseInsensitive,loPartialKey]);
     prename.text:='';
                                                        end;
   if (trim(name.text)='') AND (trim(prename.text)<>'') then begin
   f_dm.simpledataset_agent.Locate('prenoma',trim(prename.text), [loCaseInsensitive,loPartialKey]);
      END;
    if (trim(name.text)<>'') AND (trim(prename.text)<>'') then begin
   f_dm.simpledataset_agent.Locate('nomA;prenomA',VarArrayOf([trim(name.text),trim(prename.text)]), [loCaseInsensitive,loPartialKey]);
   //edit1.text:='3';
   end;
end;

procedure Tf_mission.cc(Sender: TObject);
begin
      if f_parametres_mission.WindowState=wsMinimized  then f_parametres_mission.WindowState:=wsMaximized ;
         f_parametres_mission.visible:=true;
end;

procedure Tf_mission.cp(Sender: TObject);
begin
   if f_BAREME.WindowState=wsMinimized then f_bareme.WindowState:=wsMaximized ;f_bareme.visible:=true;
end;



procedure Tf_mission.prendre(Sender: TObject);
begin
          error:=false; xcateg_grade:='  ';  xcateg_fonction:='  ';


      if f_dm.simpledataset_adm_pers.Locate('code_adm',f_dm.simpledataset_agent.fieldByName('adm').asstring,[]) then
          tadm.Text:=trim(f_dm.simpledataset_adm_pers.FieldByName('noma').AsString) else
          begin
          showmessage('code_adm n"existe pas dans la table adm CORRIGER ...');
          tadm.Text:=' ***                        ';error:=true end;

      if (trim(f_dm.simpledataset_agent.fieldByName('apc').asstring))<>'' then begin

      if f_dm.simpledataset_apc.Locate('code_adm;code_apc',vararrayof([f_dm.simpledataset_agent.fieldByName('adm').asstring,f_dm.simpledataset_agent.fieldByName('apc').asstring]),[])
      then
          tapc.Text:=trim(f_dm.simpledataset_apc.FieldByName('noma').AsString)
          else
          begin
          showmessage('code_adm+code_apc n"existe pas dans la table apc CORRIGER ...');
          tapc.Text:=' ***                        ';error:=true end;

              end;

       if f_dm.simpledataset_grade.Locate('code',f_dm.simpledataset_agent.fieldByName('grade_actuel').asstring,[])
       then  begin
               tgrade.Text:=trim(f_dm.simpledataset_grade.FieldByName('gradea').AsString);
               xcateg_grade:=f_dm.simpledataset_grade.FieldByName('categ').AsString;
             end
             else begin
             showmessage('grade_actuel n"existe pas dans la table grade CORRIGER) ...');
             tgrade.Text:=' ***                                     ';error:=true;end;

      if f_dm.simpledataset_fonction.Locate('code',f_dm.simpledataset_agent.fieldByName('fonction_actuelle').asstring,[])
       then  begin
               tfonc.Text:=trim(f_dm.simpledataset_fonction.FieldByName('fonctiona').AsString);
               xcateg_fonction:=f_dm.simpledataset_fonction.FieldByName('categ').AsString;
             end
             else begin
             showmessage('fonction_actuelle n"existe pas dans la table fonction CORRIGER ...');
             error:=true;tfonc.Text:=' ***                                     ';end;

      if not error then begin
               f_dm.simpledataset_mission.edit;
               f_dm.simpledataset_mission.fieldByName('gestion').asstring:=trim(f_principale.GESTION.Text);
               f_dm.simpledataset_mission.fieldByName('mat').asstring:=f_dm.simpledataset_agent.fieldByName('mat').asstring;
               f_dm.simpledataset_mission.fieldByName('nom').asstring:=f_dm.simpledataset_agent.fieldByName('nom').asstring;
               f_dm.simpledataset_mission.fieldByName('prenom').asstring:=f_dm.simpledataset_agent.fieldByName('prenom').asstring;
               f_dm.simpledataset_mission.fieldByName('noma').asstring:=f_dm.simpledataset_agent.fieldByName('noma').asstring;
               f_dm.simpledataset_mission.fieldByName('prenoma').asstring:=f_dm.simpledataset_agent.fieldByName('prenoma').asstring;
      end;
end;

procedure Tf_mission.prendre_grade(Sender: TObject);
begin
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Edit;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_grade').AsString:=f_dm.simpledataset_grade.FieldByName('code').AsString;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('categ_grade').AsString:=f_dm.simpledataset_grade.FieldByName('categ').AsString;
   f_dm.simpledataset_adm_apc_grade_fonction_mission.Post;
   if (f_dm.simpledataset_grade.FieldByName('code').AsString)<>
       f_dm.simpledataset_agent.fieldByName('grade_actuel').AsString then begin
         if   MessageDlgPos('Modifier le grade actuel dans la table Agent (O/N))',mtConfirmation, [mbYes, mbNo], 0, 10, 500)= idyes
              then begin
                     f_dm.simpledataset_agent.Edit;
                     f_dm.simpledataset_agent.fieldByName('grade_actuel').AsString:=f_dm.simpledataset_grade.FieldByName('code').AsString;
                     f_dm.simpledataset_agent.Post
              end;
       end;

end;



procedure Tf_mission.prendre_lieu(Sender: TObject);
begin
   f_dm.simpledataset_mission.edit;
   prename.text:= DBGrid4.SelectedField.FieldName;
  if DBGrid4.SelectedField.FieldName='LIEU_DEPART'
      then  f_dm.simpledataset_mission.FieldByName('lieu_depart').AsString:=f_dm.simpledataset_lieu.FieldByName('en_a').AsString;
  if DBGrid4.SelectedField.FieldName='LIEU_MISSION'
      then  f_dm.simpledataset_mission.FieldByName('lieu_mission').AsString:=f_dm.simpledataset_lieu.FieldByName('en_a').AsString;
      f_dm.simpledataset_mission.FieldByName('region').AsString:=f_dm.simpledataset_lieu.FieldByName('region').AsString;
end;

procedure Tf_mission.show(Sender: TObject);
begin
name.text:='';  prename.text:='';
end;

end.
