unit U_index;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,  ExtCtrls, DBCtrls, Grids, DBGrids, Db, Buttons,
  ComCtrls;

type
  Tf_index = class(TForm)
    DBGrid1: TDBGrid;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure REINDEX(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ouv(Sender: TObject);
    procedure fermer(Sender: TObject);
   
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_index: Tf_index;
  list:tstrings;
  i:integer;
implementation

uses MAIN, u_consul_eng, u_consul_mandat, u_journal;

{$R *.DFM}

// ouvrir une table exclusivement et supprime ces index ..............


procedure Tf_index.Button2Click(Sender: TObject);
begin
    f_index.visible:=false
end;




procedure Tf_index.REINDEX(Sender: TObject);
var
     s:string;
     j:integer;
     dts:array[0..40] of string;
begin

 {     label2.Caption:='I N D E X  E N   C O U R S ...';
    //   label3.Refresh;

     // LES INDEX DE LA TABLE INDEX .....

    //repeat  { jusqu'au succès ou l'appui sur le bouton Annuler
      try
         f_principale.t_index.close;
         f_principale.t_index.AddIndex('','table;nom index;champ',[ixprimary]);
         f_principale.t_index.open;
      Break; //{ Si aucune erreur, sort de la boucle
    except
       on  EDatabaseError  do   begin
    // Demande si c'est OK pour recommencer. Sinon, annule
         if  Application.MessageBox('Creation de la cle primaire de la table des index','Erreur d ouverture, table occupée',MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK  then
           raise ;
                             end;
  //{ Sinon arrête la boucle repeat
          end ;
  until  False;

       progressbar1.ScrollBy(20,0);

    // Pour supprimer un index, l'application doit avoir ouvert la table en accès exclusif.
    // FERMER TOUS LES OBJETS TTABLES OUVERTS





  f_principale.t_index.First;
   f_principale.t_index.Edit;


   j:=1;
   ProgressBar1.max:=f_principale.t_index.RecordCount;
   ProgressBar1.Step:=1;

   while  (j<=f_principale.t_index.RecordCount) do begin
          if f_principale.t_index.FieldByName('nom index').asstring<>'' then  begin
                 table1.close;
                 table1.TableName:= f_principale.t_index.FieldByName('table').asstring;
                 table1.active:=true;
                oe(table1);
                 table1.AddIndex(f_principale.t_index.FieldByName('nom index').asstring,f_principale.t_index.FieldByName('champ').asstring,[]);
                 f_principale.t_index.edit;f_principale.t_index.FieldByName('indexe').asstring:='OUI';
                                                                 end;

          if f_principale.t_index.FieldByName('nom index').asstring='' then  begin

                  table1.close;
                  table1.TableName:= f_principale.t_index.FieldByName('table').asstring;
                  table1.active:=true;
                  table1.close;
                  table1.AddIndex('',f_principale.t_index.FieldByName('champ').asstring,[ixprimary]);
                  f_principale.t_index.edit;
                  f_principale.t_index.FieldByName('indexe').asstring:='OUI';
                                             end;
           ProgressBar1.StepIt;
           f_principale.t_index.Next;
           j:=j+1;
           end;


  
    
    
     f_principale.t_index.Refresh;
    label2.Caption:='I N D E X     T E R M I N E ...';     }
end;





procedure Tf_index.BitBtn2Click(Sender: TObject);
begin
     edit1.visible:=true;
     f_index.ActiveControl:=edit1;
     

end;

procedure Tf_index.ouv(Sender: TObject);
begin
    if edit1.text='ok' then begin
                        edit1.text:='';
                        edit1.Visible:=false;
                        dbgrid1.ReadOnly:=false;f_index.ActiveControl:=dbgrid1
                       end;
end;

procedure Tf_index.fermer(Sender: TObject);
begin
    dbgrid1.ReadOnly:=true;
    edit1.text:='';
    edit1.Visible:=false;
end;

end.
