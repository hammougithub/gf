unit u_mandat2;

interface

uses
  Unit_function_and_procedure,db,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, Mask, DBCtrls, DBGrids, ExtCtrls, Buttons, DBTables,variants,
  IBCustomDataSet, IBQuery, IBEvents;

type
  Tf_mandat1 = class(TForm)
    panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Date: TLabel;
    Chapitre: TLabel;
    Article: TLabel;
    Structure: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    vgestion: TMaskEdit;
    vdate: TMaskEdit;
    vchapitre: TEdit;
    varticle: TEdit;
    vstructure: TEdit;
    vengagement: TEdit;
    vobservation: TEdit;
    Panel3: TPanel;
    StringGrid1: TStringGrid;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Label6: TLabel;
    Label7: TLabel;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    Label10: TLabel;
    bt1: TBitBtn;
    bt4: TBitBtn;
    bt2: TBitBtn;
    Label1: TLabel;
    bt5: TBitBtn;
    bt6: TBitBtn;
    del_mandat: TQuery;
    bt3: TBitBtn;
    Label4: TLabel;
    StringGrid2: TStringGrid;
    vmandat: TEdit;
    Edit1: TEdit;
    somme1: TBitBtn;
    SOMMe: TBitBtn;
    som1: TMaskEdit;
    DBGrid5: TDBGrid;
    som: TEdit;
    ib_select_lignes: TIBQuery;
    IB_del_lignes_mandat: TIBQuery;
    ib_del_mandat: TIBQuery;
    procedure ACTIVER(Sender: TObject);
    procedure prendre_chap(Sender: TObject);
    procedure prendre_four(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure vdateChange(Sender: TObject);
    procedure prendre_str(Sender: TObject);
    procedure bt6Click(Sender: TObject);
    procedure bt5Click(Sender: TObject);
    procedure effacer_champ_saisie;
    procedure bt3Click(Sender: TObject);
    procedure CHERCHER_mandat(Sender: TObject);
    procedure somme1Click(Sender: TObject);
    procedure SOMMeClick(Sender: TObject);
    procedure renseigner(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_mandat1: Tf_mandat1;
  i,j:integer;
  c:char;
  s:string;
implementation

uses MAIN,u_dm;

{$R *.DFM}


procedure  activer_composant(Source:array of TWINCONTROL);
var
  l: Integer;
  begin

   l:=0;
   for  l := 0  to  length(source)-1  do
     begin
      source[l].ENABLED:=true;
     end ;
  end ;

procedure desactiver_composant(Source:array of TWINCONTROL);
var
  I: Integer;
  begin

   i:=0;
   for  I := 0  to  length(source)-1  do
     begin
      source[I].ENABLED:=false;
     end ;
  end ;



procedure Tf_mandat1.effacer_champ_saisie;
var i:integer;
 begin
    f_mandat1.vgestion.text:=f_principale.gestion.text;
 with f_mandat1 do begin
    for i:=1 to StringGrid1.RowCount-1
      do  begin StringGrid1.Cells[0,i]:=inttostr(i);
                StringGrid1.Cells[1,i]:='       ';
                StringGrid1.Cells[2,i]:='           ';
                StringGrid1.Cells[3,i]:='                                                 ';
           end;

       for i:=1 to StringGrid2.RowCount-1
      do  begin StringGrid1.Cells[0,i]:=inttostr(i);
                StringGrid1.Cells[1,i]:='       ';
                StringGrid1.Cells[2,i]:='           ';
                StringGrid1.Cells[3,i]:='                                                 ';
           end;

      vmandat.text:='                ';
      vchapitre.text:='             ';
      varticle.text:='                ';
      vdate.text:='             ';
      vstructure.text:='                ';
      vengagement.text:='             ';
      vobservation.text:='                                         ';
  end;
 end;
procedure Tf_mandat1.ACTIVER(Sender: TObject);
var i:integer;
begin
 
  f_dm.ibt_mandat.BeforePost:=nil;
  c:=' ';
  desactiver_composant([vgestion]);
  activecontrol:=f_mandat1.vmandat ;
  vgestion.text:=f_principale.gestion.text;
  effacer_champ_saisie;
  activer_composant([vmandat,bt1,bt2,bt3,bt4,bt5,bt6]);

  with StringGrid1 do
    begin
      ColWidths[0]:=20; ColWidths[1]:=40;ColWidths[2]:=70; ColWidths[3]:=245;
      Cells[0,0] := 'N°L.';
      Cells[1,0] := 'Bénificiaire';
      Cells[2,0] := 'Montant  ';
      Cells[3,0] := 'Observation';
    END;
  with StringGrid2 do
    begin
      ColWidths[0]:=20; ColWidths[1]:=40;ColWidths[2]:=70; ColWidths[3]:=245;
      Cells[0,0] := 'N°L...';
      Cells[1,0] := 'Bénificiaire';
      Cells[2,0] := 'Montant  ';
      Cells[3,0] := 'Observation';
    END;

  for i:=1 to StringGrid1.RowCount-1
      do  begin StringGrid1.Cells[0,i]:=inttostr(i);
                StringGrid1.Cells[1,i]:='       ';
                StringGrid1.Cells[2,i]:='           ';
                StringGrid1.Cells[3,i]:='                                                 ';
           end;

  for i:=1 to StringGrid2.RowCount-1
      do  begin StringGrid2.Cells[0,i]:=inttostr(i);
                StringGrid2.Cells[1,i]:='       ';
                StringGrid2.Cells[2,i]:='           ';
                StringGrid2.Cells[3,i]:='                                                 ';
           end;

  
  vmandat.text:='';
  vchapitre.text:='';
  varticle.text:='';
  vdate.text:='  /  /    ';
  vstructure.text:='';
  vengagement.text:='';
  vobservation.text:='';

end;

procedure Tf_mandat1.prendre_chap(Sender: TObject);
begin
    vchapitre.text:=f_dm.ibt_chapitre.fieldByName('chapitre').asstring;
    varticle.text:=f_dm.ibt_chapitre.fieldByName('article').asstring;
    activecontrol:=vstructure;
end;

procedure Tf_mandat1.prendre_four(Sender: TObject);
begin
     StringGrid1.Cells[1,StringGrid1.Row]:=f_dm.ibt_fournisseur.fieldByName('code').asstring;
     activecontrol:=StringGrid1;
end;



procedure enregistrer_modification();
var x,y:char;
    s:string;
    i:integer;
begin
      x:=' ';
      if ((f_mandat1.vchapitre.text)<>(f_dm.ibt_mandat.FieldByName('chapitre').asstring)) or
        ((f_mandat1.varticle.text)<>(f_dm.ibt_mandat.FieldByName('article').asstring)) or
        ((f_mandat1.vdate.Text<>datetostr(f_dm.ibt_mandat.FieldByName('dates').asdatetime))or
        ((f_mandat1.vstructure.text<>f_dm.ibt_mandat.FieldByName('structure').asstring)) or
        ((f_mandat1.vengagement.text<>f_dm.ibt_mandat.FieldByName('engagement').asstring)) or
        ((f_mandat1.vobservation.text<>f_dm.ibt_mandat.FieldByName('observation').asstring)))
      then begin
      // fair les controles ...
             // Controler les modifications ...
                if (f_mandat1.vdate.text<>('  /  /    ')) and ( not ((strtodate(f_mandat1.vdate.text)>=strtodate('01/'+'01/'+f_mandat1.vgestion.text))
                and (strtodate(f_mandat1.vdate.text)<=strtodate('31/'+'12/'+f_mandat1.vgestion.text))))
                then  begin showmessage('La date est erronée ... ');
                      f_mandat1.ActiveControl:=f_mandat1.vdate;
                      x:='n' end;

                if x<>'n' then begin
                  if not f_dm.ibt_chapitre.locate('chapitre;article',vararrayof([f_mandat1.vchapitre.text,f_mandat1.varticle.text]),[])
                    then begin
                        showmessage('Nom article érroné, Ecrivez-le correctement ou double clic pour le prendre de la table ...');
                        f_mandat1.ActiveControl:=f_mandat1.vchapitre;
                        x:='n' end;

             // Existe-t-il un mandat de même clé ..
                if x<>'n' then begin
                    s:=f_mandat1.vmandat.text;
                    if ((f_dm.ibt_mandat.FieldByName('chapitre').asstring<>f_mandat1.vchapitre.text) or
                        (f_dm.ibt_mandat.FieldByName('article').asstring<>f_mandat1.varticle.text))
                        and
                       (f_dm.ibt_mandat.locate('gestion;mandat;chapitre;article',vararrayof([f_mandat1.vgestion.text,strtoint(enlever_blanc(s)),f_mandat1.vchapitre.text,f_mandat1.varticle.text]),[]))
                       then begin
                      showmessage('Un mandat de même clé existe déjâ ... ');
                      f_mandat1.ActiveControl:=f_mandat1.vchapitre;
                      end
                      else
                      x:='o';
                    end;
            // x='o' ----> il y a modification dans date ou chapitre ou article ou structure
            // ou N° engagement ou observation  et pas d'errrur ...
        end;
        end;
        y:=' ';
        // Comparer les lignes ... en utilisant stringrid1 et stringrid2

        for i:=1 to f_mandat1.StringGrid1.RowCount-1
         do  begin
              if  (f_mandat1.StringGrid1.Cells[1,i]<>f_mandat1.StringGrid2.Cells[1,i])
                  or (f_mandat1.StringGrid1.Cells[2,i]<>f_mandat1.StringGrid2.Cells[2,i])
                  or(f_mandat1.StringGrid1.Cells[3,i]<>f_mandat1.StringGrid2.Cells[3,i])
               then begin y:='o' end
             end;
       // si y='o' alors il y a modification de ligne ...

    if (x='o') or (y='o')   then begin  // il ya modification
       if MessageDlgPos('Confirmer les modifications du mandat ?',mtConfirmation,  mbokCancel, 0, 200, 200)=mrok
        then begin
             if not f_dm.gf_ibt1.InTransaction then f_dm.gf_ibt1.StartTransaction;
         if true
               then begin
                 if y='o' then begin  // modification de ligne
                     f_mandat1.ib_del_lignes_mandat.Close;
                     f_mandat1.ib_del_lignes_mandat.Params[0].asstring:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
                     f_mandat1.ib_del_lignes_mandat.Params[1].asinteger:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
                     f_mandat1.ib_del_lignes_mandat.Params[2].asstring:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;
                     f_mandat1.ib_del_lignes_mandat.Params[3].asstring:=f_dm.ibt_mandat.fieldByName('article').asstring;
                     f_mandat1.ib_del_lignes_mandat.Params[4].asdate:=f_dm.ibt_mandat.fieldByName('dates').asdatetime;
                     f_mandat1.ib_del_lignes_mandat.Params[5].asstring:=f_dm.ibt_mandat.fieldByName('structure').asstring;
                     if not(f_mandat1.ib_del_lignes_mandat.prepared) then f_mandat1.ib_del_lignes_mandat.prepare;
                        f_mandat1.ib_del_lignes_mandat.execsql;
                        f_mandat1.ib_del_lignes_mandat.close;

                      j:=1;
                      for i:=1 to f_mandat1.StringGrid1.RowCount-1
                         do  begin
                             if  ((f_mandat1.StringGrid1.Cells[1,i]<>'       ') and  (f_mandat1.StringGrid1.Cells[2,i]<>
                                             '           ')) then begin
                              f_dm.ibt_lignes.insert;
                              f_dm.ibt_lignes.FieldByName('gestion').asstring:=f_mandat1.vgestion.text;
                              f_dm.ibt_lignes.FieldByName('mandat').asinteger:=strtoint(f_mandat1.vmandat.text);
                              f_dm.ibt_lignes.FieldByName('chapitre').asstring:=f_mandat1.vchapitre.text;
                              f_dm.ibt_lignes.FieldByName('article').asstring:=f_mandat1.varticle.text;
                              f_dm.ibt_lignes.FieldByName('dates').asdatetime:=strtodate(f_mandat1.vdate.Text);
                              f_dm.ibt_lignes.FieldByName('structure').asstring:=f_mandat1.vstructure.text;
                              f_dm.ibt_lignes.FieldByName('ligne').asinteger:=j;
                              f_dm.ibt_lignes.FieldByName('benificiaire').asstring:=f_mandat1.StringGrid1.Cells[1,i];
                              f_dm.ibt_lignes.FieldByName('montant').asfloat:=strtofloat(f_mandat1.StringGrid1.Cells[2,i]);
                              f_dm.ibt_lignes.FieldByName('observation').asstring:=f_mandat1.StringGrid1.Cells[3,i];
                              f_dm.ibt_lignes.post;
                               j:=j+1
                                                               end;
                             end;
                             f_dm.gf_IBT1.CommitRetaining ;
                             f_mandat1.effacer_champ_saisie;
                             activer_composant([f_mandat1.vmandat,f_mandat1.bt1,
                             f_mandat1.bt2,f_mandat1.bt3,f_mandat1.bt4,f_mandat1.bt5,f_mandat1.bt6]);
                             f_mandat1.ActiveControl:=f_mandat1.vmandat
                            end;
                      end;
                if x='o'  then begin //  modification dans mandat
                  f_dm.ibt_mandat.edit;
                  f_dm.ibt_mandat.FieldByName('chapitre').asstring:=f_mandat1.vchapitre.text;
                  f_dm.ibt_mandat.FieldByName('article').asstring:=f_mandat1.varticle.text;
                  f_dm.ibt_mandat.FieldByName('dates').asdatetime:=strtodate(f_mandat1.vdate.Text);
                  f_dm.ibt_mandat.FieldByName('structure').asstring:=f_mandat1.vstructure.text;
                  f_dm.ibt_mandat.FieldByName('engagement').asstring:=f_mandat1.vengagement.text;
                  f_dm.ibt_mandat.FieldByName('observation').asstring:=f_mandat1.vobservation.text;
                  f_dm.ibt_mandat.post;
                  f_dm.gf_IBT1.CommitRetaining;
                //  dbgrid3.refresh;dbgrid5.refresh;
                  f_mandat1.effacer_champ_saisie;
                  activer_composant([f_mandat1.vmandat,f_mandat1.bt1,
                  f_mandat1.bt2,f_mandat1.bt3,f_mandat1.bt4,f_mandat1.bt5,f_mandat1.bt6]);
                  f_mandat1.ActiveControl:=f_mandat1.vmandat
                                 end;
     end;
     end;
     if (x=' ') and (y=' ') then begin
             f_mandat1.effacer_champ_saisie;
             activer_composant([f_mandat1.vmandat,f_mandat1.bt1,
             f_mandat1.bt2,f_mandat1.bt3,f_mandat1.bt4,f_mandat1.bt5,f_mandat1.bt6]);
             f_mandat1.ActiveControl:=f_mandat1.vmandat
             end;

     end;



procedure Tf_mandat1.bt1Click(Sender: TObject);
var
  i:integer;ecrir:char;s:string;
begin
// Il s'agit d'un ajout ...
 if c<>'m' then begin
    ecrir:='o';
   // controle des variables mandat ...
   if (vgestion.text='') or (vmandat.text='') or (vdate.text='  /  /    ')
      or (vchapitre.text='') or (varticle.Text='') or (vstructure.text='')
      //or (vengagement.text='')
      then  begin
            showmessage('Vérifer que tout les champs sont saisis ...');
            activecontrol:= vmandat;
            ecrir:='n' end;

    if (vgestion.text<>'') and (vgestion.text<> f_principale.gestion.text)
     then  begin
            showmessage('Gestion doit être identique à L"année de gestion ...');
            activecontrol:=vgestion;
            ecrir:='n' end;


    if (vdate.text<>'  /  /    ') and ( not ((strtodate(vdate.text)>=strtodate('01/'+'01/'+vgestion.text))
         and (strtodate(vdate.text)<=strtodate('31/'+'12/'+vgestion.text))))
     then  begin showmessage('La date est erronée ... ');
           activecontrol:=vdate;
           ecrir:='n' end;
      s:=vstructure.text;
     if not f_dm.ibt_administration.locate('code',vararrayof([enlever_blanc1(s)]),[])
     then begin
          showmessage('Code structure erroné, Ecrivez-le correctement ou double clic pour le prendre de la table ...');
          activecontrol:= vstructure;
          ecrir:='n' end;


  if not f_dm.ibt_chapitre.locate('chapitre;article',vararrayof([vchapitre.text,varticle.text]),[])
     then begin
          showmessage('Nom article érroné, Ecrivez-le correctement ou double clic pour le prendre de la table ...');
          activecontrol:=vchapitre;
          ecrir:='n' end;

     // controle les lignes stringgrid1 ... si ecrir='o'

  if ecrir='o' then begin
     i:=1;
     while  (i<= StringGrid1.RowCount-1) and
           ((StringGrid1.Cells[1,i]='       ') or (StringGrid1.Cells[2,i]
                                   ='           '))
            do  i:=i+1;
     if i> StringGrid1.RowCount-1 then begin
                  showmessage('Saisir les lignes avant de valider ... ');
                   activecontrol:=StringGrid1 ;
                  ecrir:='n' end;



     i:=0;
     repeat
          i:=i+1
     until
      (i=StringGrid1.RowCount) or
          ((StringGrid1.Cells[1,i]      <>'       ') and  (StringGrid1.Cells[2,i]='           '))
             or ((StringGrid1.Cells[2,i]<>'           ') and  (StringGrid1.Cells[1,i]='       '));

     if i<StringGrid1.RowCount then begin
        showmessage('Vérifier les bénificiaires et les montants de la ligne '+inttostr(i)+'... Double clic pour prendre le code Bénificiaire ...');
     //   stringgrid1.col:=1;StringGrid1.row:=i;
        activecontrol:=StringGrid1 ;
        ecrir:='n' end;

 end;


     // Ecrir dans les tables mandat et ligne ...
     if ecrir='o' then begin
       if MessageDlgPos('Confirmer la saisie du mandat ..?',mtConfirmation,  mbokCancel, 0, 200, 200)=mrok
         then begin
       // Existe-t-il un mandat de même clé ..
          s:=f_mandat1.vmandat.text;
          if (f_dm.ibt_mandat.locate('gestion;mandat;chapitre;article',vararrayof([f_mandat1.vgestion.text,strtoint(enlever_blanc(s)),f_mandat1.vchapitre.text,f_mandat1.varticle.text]),[]))
               then begin
                    showmessage('Un mandat de même clé existe déjâ ... ');
                    f_mandat1.ActiveControl:=f_mandat1.vmandat;
                    end
                    else
       // if ((ouvrir_mandat_exclusive()) and (ouvrir_mandat_lignes_exclusive()))
        if true
        //((verrou(f_dm.ibt_mandat,'Mandat'))  and   (verrou(f_principale.t_ligne,'Ligne_mandat')))
           then begin
           j:=1;
           s:=vmandat.text;
           if not f_dm.gf_ibt1.InTransaction then  f_dm.gf_ibt1.StartTransaction;
           for i:=1 to StringGrid1.RowCount-1
               do  begin
               if  ((StringGrid1.Cells[1,i]<>'       ') and  (StringGrid1.Cells[2,i]<>
                    '           ')) then begin
                  f_dm.ibt_lignes.append;
                  f_dm.ibt_lignes.FieldByName('gestion').asstring:=vgestion.text;
                  f_dm.ibt_lignes.FieldByName('mandat').asinteger:=strtoint(enlever_blanc(s));
                  f_dm.ibt_lignes.FieldByName('chapitre').asstring:=vchapitre.text;
                  f_dm.ibt_lignes.FieldByName('article').asstring:=varticle.text;
                  f_dm.ibt_lignes.FieldByName('dates').asdatetime:=strtodate(vdate.Text);
                  f_dm.ibt_lignes.FieldByName('structure').asstring:=vstructure.text;
                  f_dm.ibt_lignes.FieldByName('ligne').asinteger:=j;
                  f_dm.ibt_lignes.FieldByName('benificiaire').asstring:=StringGrid1.Cells[1,i];
                  f_dm.ibt_lignes.FieldByName('montant').asfloat:=strtofloat(StringGrid1.Cells[2,i]);
                  f_dm.ibt_lignes.FieldByName('observation').asstring:=StringGrid1.Cells[3,i];
                  f_dm.ibt_lignes.post;
                  j:=j+1
               end;
               end;
            f_dm.ibt_mandat.append;
            f_dm.ibt_mandat.FieldByName('gestion').asstring:=vgestion.text;
            f_dm.ibt_mandat.FieldByName('mandat').asinteger:=strtoint(enlever_blanc(s));
            f_dm.ibt_mandat.FieldByName('chapitre').asstring:=vchapitre.text;
            f_dm.ibt_mandat.FieldByName('article').asstring:=varticle.text;
            f_dm.ibt_mandat.FieldByName('dates').asdatetime:=strtodate(vdate.Text);
            f_dm.ibt_mandat.FieldByName('structure').asstring:=vstructure.text;
            f_dm.ibt_mandat.FieldByName('engagement').asstring:=vengagement.text;
            f_dm.ibt_mandat.FieldByName('observation').asstring:=vobservation.text;
            f_dm.ibt_mandat.post;
            f_dm.gf_ibt1.CommitRetaining;
            effacer_champ_saisie;
            activer_composant([vmandat,bt1,bt2,bt3,bt4,bt5,bt6]);
            f_mandat1.ActiveControl:=vmandat ;
            dbgrid3.Refresh;
// Commentaire
// COMMIT enregistre de façon permanante les maj et met fin à la transaction
// COMMITRETAINING enregistre de façon permanante les maj et  ne met pas fin à la transaction
               end

              end;
          end;
    end;
// Il s'agit d'une modification ...
 // Vérifier les modification ...

 if  c='m' then begin  enregistrer_modification();c:=' ' end;
 //activer_composant([vmandat,bt1,bt2,bt3,bt4,bt5,bt6]);

end;



procedure Tf_mandat1.bt4Click(Sender: TObject);
begin
     f_mandat1.visible:=false;
end;

procedure Tf_mandat1.bt2Click(Sender: TObject);
begin
  activecontrol:=StringGrid1 ;
  stringgrid1.row:=1;
end;

procedure Tf_mandat1.vdateChange(Sender: TObject);
begin
    vdate.text:=F_principale.dat.caption
end;

procedure Tf_mandat1.prendre_str(Sender: TObject);
begin
    vstructure.text:=f_dm.ibt_administration.fieldByName('code').asstring;
    activecontrol:=vengagement;
end;

procedure Tf_mandat1.bt6Click(Sender: TObject);
var i:integer;
begin
       if not f_dm.gf_ibt1.InTransaction then  f_dm.gf_ibt1.StartTransaction;
  //prendre les données dans les variables données ...
        vgestion.text:=f_dm.ibt_mandat.FieldByName('gestion').asstring;
        vmandat.text:=inttostr(f_dm.ibt_mandat.FieldByName('mandat').asinteger);
        vchapitre.text:=f_dm.ibt_mandat.FieldByName('chapitre').asstring;
        varticle.text:=f_dm.ibt_mandat.FieldByName('article').asstring;
        vdate.Text:=datetostr(f_dm.ibt_mandat.FieldByName('dates').asdatetime);
        vstructure.text:=f_dm.ibt_mandat.FieldByName('structure').asstring;
        vengagement.text:=f_dm.ibt_mandat.FieldByName('engagement').asstring;
        vobservation.text:=f_dm.ibt_mandat.FieldByName('observation').asstring;
  ib_select_lignes.Close;
  ib_select_lignes.Params[0].asstring:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
  ib_select_lignes.Params[1].asinteger:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
  ib_select_lignes.Params[2].asstring:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;
  ib_select_lignes.Params[3].asstring:=f_dm.ibt_mandat.fieldByName('article').asstring;
  ib_select_lignes.Params[4].asdate:=f_dm.ibt_mandat.fieldByName('dates').asdatetime;
  ib_select_lignes.Params[5].asstring:=f_dm.ibt_mandat.fieldByName('structure').asstring;
  if not(ib_select_lignes.prepared) then ib_select_lignes.prepare;
        ib_select_lignes.open;
        ib_select_lignes.first;

  for i:=1 to StringGrid1.RowCount-1
      do  begin StringGrid1.Cells[0,i]:=inttostr(i);
                StringGrid1.Cells[1,i]:='       ';
                StringGrid1.Cells[2,i]:='           ';
                StringGrid1.Cells[3,i]:='                                                 ';
           end;
  i:=1;
  while not  ib_select_lignes.Eof do begin
      with StringGrid1 do  begin
                   Cells[0,i] :=inttostr(i);
                   Cells[1,i]:=ib_select_lignes.FieldByName('benificiaire').asstring ;
                   Cells[2,i]:=ib_select_lignes.Fieldbyname('montant').asstring;
                   cells[3,i]:=ib_select_lignes.Fieldbyname('observation').asstring;
      END;
      i:=i+1;
      ib_select_lignes.Next;
   end;

   if MessageDlgPos('Confirmer la suppression du mandat?',
   mtConfirmation,  mbokCancel, 0, 400, 200)=mrok
   then
      begin
        if true
        //(ouvrir_mandat_exclusive())  and (ouvrir_mandat_lignes_exclusive())
           then begin
              if not f_dm.gf_ibt1.InTransaction then  f_dm.gf_ibt1.StartTransaction;
              ib_del_lignes_mandat.Close;
              ib_del_lignes_mandat.Params[0].asstring:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
              ib_del_lignes_mandat.Params[1].asinteger:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
              ib_del_lignes_mandat.Params[2].asstring:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;
              ib_del_lignes_mandat.Params[3].asstring:=f_dm.ibt_mandat.fieldByName('article').asstring;
              ib_del_lignes_mandat.Params[4].asdate:=f_dm.ibt_mandat.fieldByName('dates').asdatetime;
              ib_del_lignes_mandat.Params[5].asstring:=f_dm.ibt_mandat.fieldByName('structure').asstring;
              if not(ib_del_lignes_mandat.prepared) then ib_del_lignes_mandat.prepare;
              ib_del_lignes_mandat.prepare;
              ib_del_lignes_mandat.execsql;
              ib_del_lignes_mandat.close;

              f_dm.gf_IBT1.CommitRetaining;

              xgestion1:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
              num_enre:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
              xchapitre:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;
              xarticle:=f_dm.ibt_mandat.fieldByName('article').asstring;
              xdates:=f_dm.ibt_mandat.fieldByName('dates').asstring;
              xstructure:=f_dm.ibt_mandat.fieldByName('structure').asstring;

              ib_del_mandat.Close;
              ib_del_mandat.Params[0].asstring:=xgestion1;
              ib_del_mandat.Params[1].asinteger:=num_enre;
              ib_del_mandat.Params[2].asstring:=xchapitre;
              ib_del_mandat.Params[3].asstring:=xarticle;
              ib_del_mandat.Params[4].asdate:=strtodate(xdates);
              ib_del_mandat.Params[5].asstring:=xstructure  ;
              if not(ib_del_mandat.prepared) then ib_del_mandat.prepare;
              ib_del_mandat.execsql;
              ib_del_mandat.close;
              f_dm.gf_IBT1.CommitRetaining;
              end;
   end;
   effacer_champ_saisie;

end;

procedure Tf_mandat1.bt5Click(Sender: TObject);
var i:integer;
begin
       desactiver_composant([vgestion,vmandat,bt5,bt6]);
       // Il s'agit d'une modification
        c:='m';
      //prendre les données dans les variables données ...

        if not f_dm.gf_IBT1.InTransaction then f_dm.gf_IBT1.startTransaction;
        if not f_dm.gf_ib.Connected then f_dm.gf_ib.Connected:=true;
        if not f_dm.ibt_mandat.active then f_dm.ibt_mandat.open;
        if not f_dm.ibt_lignes.active then f_dm.ibt_lignes.Open;

        vgestion.text:=f_dm.ibt_mandat.FieldByName('gestion').asstring;
        vmandat.text:=inttostr(f_dm.ibt_mandat.FieldByName('mandat').asinteger);
        vchapitre.text:=f_dm.ibt_mandat.FieldByName('chapitre').asstring;
        varticle.text:=f_dm.ibt_mandat.FieldByName('article').asstring;
        vdate.Text:=datetostr(f_dm.ibt_mandat.FieldByName('dates').asdatetime);
        vstructure.text:=f_dm.ibt_mandat.FieldByName('structure').asstring;
        vengagement.text:=f_dm.ibt_mandat.FieldByName('engagement').asstring;
        vobservation.text:=f_dm.ibt_mandat.FieldByName('observation').asstring;

       xgestion1:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
       num_enre:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
       xchapitre:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;
       xarticle:=f_dm.ibt_mandat.fieldByName('article').asstring;
       xdates:=datetostr(f_dm.ibt_mandat.fieldByName('dates').asdatetime);
       xstructure:=f_dm.ibt_mandat.fieldByName('structure').asstring;
       xobs1:=f_dm.ibt_mandat.fieldByName('observation').asstring;
       xengagement:=f_dm.ibt_mandat.fieldByName('engagement').asstring;

      //prendre les données lignes ...

      ib_select_lignes.Close;
      ib_select_lignes.Params[0].asstring:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
      ib_select_lignes.Params[1].asinteger:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
      ib_select_lignes.Params[2].asstring:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;
      ib_select_lignes.Params[3].asstring:=f_dm.ibt_mandat.fieldByName('article').asstring;
      ib_select_lignes.Params[4].asdate:=f_dm.ibt_mandat.fieldByName('dates').asdatetime;
      ib_select_lignes.Params[5].asstring:=f_dm.ibt_mandat.fieldByName('structure').asstring;
      if not(ib_select_lignes.prepared) then ib_select_lignes.prepare;
        ib_select_lignes.execsql;
        ib_select_lignes.Open;
        ib_select_lignes.First;

      // Utiliser StringGrid2 et le comparer avec StringGrid1 ...

      // prendre les lignes dans   StringGrid1 et stringgrid2...
      for i:=1 to StringGrid1.RowCount-1
         do  begin
                StringGrid1.Cells[0,i]:=inttostr(i);
                StringGrid1.Cells[1,i]:='       ';
                StringGrid1.Cells[2,i]:='           ';
                StringGrid1.Cells[3,i]:='                                    ';
                StringGrid2.Cells[0,i]:=inttostr(i);
                StringGrid2.Cells[1,i]:='       ';
                StringGrid2.Cells[2,i]:='           ';
                StringGrid2.Cells[3,i]:='                                    ';
             end;
     i:=1;
     while not  ib_select_lignes.Eof do begin
          with StringGrid1 do  begin
                     Cells[0,i]:=inttostr(i);
                     Cells[1,i]:=ib_select_lignes.FieldByName('benificiaire').asstring ;
                     Cells[2,i]:=ib_select_lignes.Fieldbyname('montant').asstring;
                     cells[3,i]:=ib_select_lignes.Fieldbyname('observation').asstring;
                         END;
          with StringGrid2 do  begin
                     Cells[0,i]:=inttostr(i);
                     Cells[1,i]:=ib_select_lignes.FieldByName('benificiaire').asstring ;
                     Cells[2,i]:=ib_select_lignes.Fieldbyname('montant').asstring;
                     cells[3,i]:=ib_select_lignes.Fieldbyname('observation').asstring;
                         END;
          i:=i+1;
         ib_select_lignes.Next;
                     end;
  activecontrol:=vchapitre;
end;

procedure Tf_mandat1.bt3Click(Sender: TObject);
begin
    effacer_champ_saisie; c:=' ';
    activer_composant([vmandat,bt1,bt2,bt3,bt4,bt5,bt6]);
    activecontrol:=vmandat ;
end;

procedure Tf_mandat1.CHERCHER_mandat(Sender: TObject);
begin
    s:=edit1.text;
    if enlever_blanc(s)<>'' then
    if not(f_dm.ibt_mandat.locate('mandat',strtoint(enlever_blanc(s)),[])) then
    f_dm.ibt_mandat.first;
   // activecontrol:=dbgrid3
end;

procedure Tf_mandat1.somme1Click(Sender: TObject);
begin
     f_principale.somme.sql.clear;
     f_principale.somme.sql.Add('select sum (montant) from lignes where mandat=:a and gestion=:g and chapitre=:c');
     f_principale.somme.Params[0].Asinteger:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
     f_principale.somme.Params[1].AsString:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
     f_principale.somme.Params[2].Asstring:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;

     f_principale.somme.close;
     f_principale.somme.prepare;
     f_principale.somme.open;
     s:='            ';
     if  f_principale.somme.Fields[0].asstring<>'' then str(f_principale.somme.Fields[0].value:12:2,s)
     else s:='          ';

     som1.text:=s;
     f_principale.somme.close;
end;

procedure Tf_mandat1.SOMMeClick(Sender: TObject);
begin
     f_principale.somme.sql.clear;
     f_principale.somme.sql.Add('select sum (montant) from lignes where mandat=:a and gestion=:g and chapitre=:c and article=:d');
     f_principale.somme.Params[0].Asinteger:=f_dm.ibt_mandat.fieldByName('mandat').asinteger;
     f_principale.somme.Params[1].AsString:=f_dm.ibt_mandat.fieldByName('gestion').asstring;
     f_principale.somme.Params[2].Asstring:=f_dm.ibt_mandat.fieldByName('chapitre').asstring;
     f_principale.somme.Params[3].Asstring:=f_dm.ibt_mandat.fieldByName('article').asstring;
     f_principale.somme.close;
     f_principale.somme.prepare;
     f_principale.somme.open;
     s:='            ';
     if  f_principale.somme.Fields[0].asstring<>'' then str(f_principale.somme.Fields[0].value:12:2,s)
     else s:='          ';

     som.text:=s;
     f_principale.somme.close;
end;




procedure Tf_mandat1.renseigner(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
    varticle.Text:='rrr';
   f_dm.gf_IBT1.Commit;
      f_dm.gf_IBT1.StartTransaction;
      f_dm.ibt_mandat.Open;
      f_dm.ibt_lignes.Open;
end;

end.
