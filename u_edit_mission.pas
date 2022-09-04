unit u_edit_mission;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,printers,
  strutils,Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons, Grids, DBGrids,Unit_function_and_procedure,
  Data.DB, frxClass, frxDesgn, frxDBSet, Data.DBXFirebird, Datasnap.DBClient,
  SimpleDS;

type
  TF_edit_mission = class(TForm)
    Label21: TLabel;
    PrintDialog1: TPrintDialog;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    simpledataset_parameters: TSimpleDataSet;
    DataSource1: TDataSource;
    Panel11: TPanel;
    Panel9: TPanel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    Label28: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label23: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    pec: TLabel;
    DBGrid5: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    b1: TBitBtn;
    nb: TEdit;
    edit_repas: TEdit;
    edit_dec: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    edit_repas2: TEdit;
    edit_repas1: TEdit;
    es1: TEdit;
    es2: TEdit;
    Edit8: TEdit;
    depense: TEdit;
    total: TEdit;
    xklm: TEdit;
    t_indice: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    xdejeuner_d: TEdit;
    xdiner_d: TEdit;
    xdejeuner_r: TEdit;
    xdiner_r: TEdit;
    xdecoucher_d: TEdit;
    xdecoucher_r: TEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    DBNavigator1: TDBNavigator;
    Panel15: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    mat: TEdit;
    DBGrid4: TDBGrid;
    Panel16: TPanel;
    Panel17: TPanel;
    DBNavigator2: TDBNavigator;
    Panel18: TPanel;
    Label33: TLabel;
    Panel19: TPanel;
    DBGrid6: TDBGrid;
    Panel10: TPanel;
    imp: TSpeedButton;
    BitBtn2: TBitBtn;
    fs: TButton;
    fs_ds: TButton;
    ecran: TButton;
    BitBtn3: TBitBtn;
    r1: TRadioGroup;
    Label7: TLabel;
    Label29: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    fin: TBitBtn;
    procedure but1(Sender: TObject);
    procedure imprimer(Sender: TObject);
    procedure ecranClick(Sender: TObject);

    procedure oncreate(Sender: TObject);
    procedure but2(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure fs_dsClick(Sender: TObject);
    procedure fsClick(Sender: TObject);
    procedure find_mission(Sender: TObject);
    procedure finClick(Sender: TObject);

  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  F_edit_mission: TF_edit_mission;
  nbrepas,nbrepas_pec,nbdec,nbdec_pec,x,i:integer;xdec,xrepas,w,total_mission,d,e:real;
  xgrade_actuel,xfonction_actuelle:string[3];
  xcateg_g,xcateg_f:string[2];
  Da1,mo1,da2,mo2,Ye1,ye2,erreur,cas:WORD; s,s1,s2,s4,s5,s3:ansistring;
  a,b,c,f,g:integer; s11,xcateg:string; Memo: TfrxMemoView;Memoxx:TFrxMemoview;


implementation

uses u_dm, u_etat_k, u_bareme, U_parametres, u_parameters, u_parameters_etat_x;

{$R *.dfm}

function zero(x:string):string;
var s:string[2];
begin
    s:=x;
   if length(x)=1 then  s:='0'+x ; // in ['1','2','3','4','5','6','7','8','9'] then  s:='0'+x ;
   zero:=s;
end;

function copier(x:string):string;
begin
   copier:=copy(x,0,2)
end;

function inttostr1(x:word):string;
var s:string[2];
begin
   if x>9 then  s:=inttostr(x)
     else begin s:='0'+inttostr(x) end;
inttostr1:=s;
end;

procedure TF_edit_mission.BitBtn2Click(Sender: TObject);
begin

         if f_parametres.WindowState=wsMinimized then f_parametres.WindowState:=wsMaximized ;
         f_parametres.visible:=true;f_parametres.bringtofront;
end;

procedure TF_edit_mission.BitBtn3Click(Sender: TObject);
begin
if f_BAREME.WindowState=wsMinimized then f_BAREME.WindowState:=wsMaximized ;
  f_BAREME.visible:=true;f_BAREME.bringtofront;
end;

procedure TF_edit_mission.but1(Sender: TObject);
begin
    b1.enabled:=true;
    xklm.text:= f_dm.simpledataset_parametres_mission.fieldByName('klm').asstring;
    xdejeuner_d.text:= f_dm.simpledataset_parametres_mission.fieldByName('hdejd').asstring;
    xdejeuner_r.text:= f_dm.simpledataset_parametres_mission.fieldByName('hdejr').asstring;
    xdiner_d.text:= f_dm.simpledataset_parametres_mission.fieldByName('hdind').asstring;
    xdiner_r.text:= f_dm.simpledataset_parametres_mission.fieldByName('hdinr').asstring;
    xdecoucher_d.text:= f_dm.simpledataset_parametres_mission.fieldByName('hdecd').asstring;
    xdecoucher_r.text:= f_dm.simpledataset_parametres_mission.fieldByName('hdecr').asstring;
    t_indice.text:= f_dm.simpledataset_parametres_mission.fieldByName('indice_fs').asstring;

    DecodeDate(f_dm.simpledataset_mission.fieldByName('date_d').asdatetime, Ye1, Mo1, Da1);
    DecodeDate(f_dm.simpledataset_mission.fieldByName('date_r').asdatetime, Ye2, Mo2, Da2);
    nb.Text:=formater_float(u_ndays(da1,mo1,da2,mo2,ye1,ye2));
    x:=trunc(u_ndays(da1,mo1,da2,mo2,ye1,ye2));

    xrepas:=0;xdec:=0; erreur:=0;nbrepas:=0; nbdec:=0; nbrepas_pec:=0;nbdec_pec:=0;

    xgrade_actuel:=f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.fieldByName('code_grade').asstring ;
    xfonction_actuelle:=f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.fieldByName('code_fonction').asstring ;
    xcateg_g:=trim(f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.fieldByName('categ_grade').asstring) ;
    xcateg_f:=trim(f_dm.SimpleDataSet_adm_apc_grade_fonction_mission.fieldByName('categ_fonction').asstring) ;

   cas:=0;

   if not f_dm.simpledataset_bareme.Locate('cat;region',vararrayof([xcateg_g,f_dm.simpledataset_mission.fieldByName('region').asstring]),[])
    then begin
          showmessage('categ du  grade est introuvable dans la table Bareme (erreur 22) ...');erreur:=22;cas:=88
         end;



    if  f_dm.SimpleDataSet_fonction.Locate('code',vararrayof([xfonction_actuelle]),[]) then begin

        if  (f_dm.SimpleDataSet_fonction.FieldByName('indice').AsInteger)>=(f_dm.SimpleDataSet_PARAMETRES_MISSION.FieldByName('indice_fs').AsInteger)
        then begin

             if not f_dm.simpledataset_bareme.Locate('cat;region',vararrayof(['fs',f_dm.simpledataset_mission.fieldByName('region').asstring]),[])
                  then  begin showmessage('categ "fs" est introuvable dans la table Bareme (erreur 24) ...');erreur:=24;cas:=90;end;
              // sinon on est alosr positionnÈ su "fs" .....
        end;
    end;

   // si  xcateg_g='10' grade Inspecture et a un fonction<>'1' alors

//  if  (trim(xcateg_g)='10') and ((trim(xfonction_actuelle))<>'1')  then begin
             //       xcateg_g:='11' ;
    //       if (strtoint(xcateg_f))>(strtoint(xcateg_g)) then begin
                  if not f_dm.simpledataset_bareme.Locate('cat;region',vararrayof([xcateg_g,f_dm.simpledataset_mission.fieldByName('region').asstring]),[])
                  then begin
                 // showmessage('categ de la fonction est introuvable dans la table Bareme (erreur 22) ...');erreur:=22;cas:=88
                 showmessage('categ 11 est introuvable dans la table Bareme (erreur 22) ...');erreur:=22;cas:=88;
                  end;
             //     end;




    if (f_dm.simpledataset_mission.fieldByName('p_e_c').asstring='o')  and
       ((f_dm.SimpleDataSet_mission.FieldByName('date_d_pe').AsString='') or
        (f_dm.SimpleDataSet_mission.FieldByName('date_f_pe').AsString='') or
        (f_dm.SimpleDataSet_mission.FieldByName('heure_d_pe').AsString='') or
        (f_dm.SimpleDataSet_mission.FieldByName('heure_f_pe').AsString=''))
        then begin
              showmessage('Il y a 1 pec, vÈrifier les dates et heures de dÈbut et fin de la prise en charge ...');erreur:=6;
                                          end;


    if erreur=0    then      // pas d'erreur
        begin
              ecran.Enabled:=true;imp.Enabled:=true;fs.Enabled:=true;fs_ds.Enabled:=true;
              {if cas=1 then label21.caption:=trim(f_dm.simpledataset_fonction.fieldbyname('fonctiona').asstring)+ ' „ƒ‘— ' +
                     f_dm.simpledataset_fonction.FieldByName('indice').Asstring;
              if cas=2 then label21.caption:=trim(f_dm.simpledataset_grade.fieldbyname('gradea').asstring);}



               if f_dm.simpledataset_grade.Locate('code',f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_grade').AsString,[])
                              then  label21.caption:=trim(f_dm.simpledataset_grade.FieldByName('gradea').AsString)
                              else  label21.caption:='                                        ';
                if (f_dm.simpledataset_fonction.Locate('code',f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_fonction').AsString,[]))
                                then
                                  if (Length(trim(f_dm.simpledataset_fonction.FieldByName('fonctiona').AsString))>4) then
                                   label21.caption:=label21.caption+'  '+trim(f_dm.simpledataset_fonction.FieldByName('fonctiona').AsString);



              xrepas:=f_dm.simpledataset_bareme.FieldByName('repas').AsFloat;
              xdec:=f_dm.simpledataset_bareme.FieldByName('heber').AsFloat;



              edit3.text:=floattostr(xrepas); edit4.text:=floattostr(xdec);

              nbdec:=x;nbrepas:=0;
              nb.text:=inttostr(x);
              edit_repas1.Text:='';edit_repas2.Text:='';


              if x=0 then begin  //date de depart Ègale date de retour
                     if  strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_d').asstring))<=strtoint(xdejeuner_d.Text) then nbrepas:=nbrepas+1; // droit ‡ 1 dÈjeuner
                     if  strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_r').asstring))>=strtoint(xdiner_r.Text) then nbrepas:=nbrepas+1;    // droit ‡ 1 diner
                         end;

              if x>0 then begin
                             nbrepas:=nbrepas+((x-1)*2);
                            // edit_repas.Text:=inttostr((x-1)*2);  //Nombre de repas des jours complet sans le 1∞ et le dernier jour
                             // 1∞  jour
                             if  strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_d').asstring))<=strtoint(xdejeuner_d.Text) then begin
                                  edit_repas1.Text:=('2');nbrepas:=nbrepas+2; end;// droit ‡ 1 dÈjeuner  1 diner
                             if  (strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_d').asstring))>strtoint(xdejeuner_d.Text))
                                 and (strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_d').asstring))<=(strtoint(xdiner_d.Text)))
                                 then begin  edit_repas1.Text:=('1');nbrepas:=nbrepas+1;end; // droit ‡ 1 diner
                             // dernier jour
                             if strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_r').asstring))>=strtoint(xdiner_r.Text) // a droit 1 dej 1 diner
                              then begin  nbrepas:=nbrepas+2;edit_repas2.Text:=('2'); end;
                             if  (strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_r').asstring))<strtoint(xdiner_r.Text)) and
                                  (strtoint(copier(f_dm.simpledataset_mission.fieldByName('heure_r').asstring))>=strtoint(xdejeuner_r.Text))
                                 then begin  edit_repas2.Text:=('1');nbrepas:=nbrepas+1;end; // droit ‡ 1 dej

                          end;

              edit1.text:=inttostr(nbrepas);  edit2.text:=inttostr(nbdec);

            DecodeDate(f_dm.simpledataset_mission.fieldByName('date_d_pe').asdatetime, Ye1, Mo1, Da1);
            DecodeDate(f_dm.simpledataset_mission.fieldByName('date_f_pe').asdatetime, Ye2, Mo2, Da2);
            edit7.Text:=inttostr(trunc(u_ndays(da1,mo1,da2,mo2,ye1,ye2)));
            // DÈcoucher pris en charge
            nbdec_pec:=trunc(u_ndays(da1,mo1,da2,mo2,ye1,ye2));
            edit7.text:=inttostr(trunc(u_ndays(da1,mo1,da2,mo2,ye1,ye2)));
            nbrepas_pec:=2*nbdec_pec;edit5.text:=inttostr(nbrepas_pec);
            edit6.text:=inttostr(trunc(u_ndays(da1,mo1,da2,mo2,ye1,ye2)));

          //  s1:='  ‹ '; s2:='  ‹ ';

            s1:=' '; s2:=' ';

             s1:=' ⁄‹œœ «·‹ÊÃ‹‹»‹‹«  ›Ì ';
             if f_dm.simpledataset_mission.FieldByName('region').AsString='s' then  s1:= s1+' «·‹Ã‹‰‹Ê» : ';
             if f_dm.simpledataset_mission.FieldByName('region').AsString='n' then  s1:= s1+' «·‹‘‹„‹‹«· : ';
             if x>0 then begin
                     s2:=' ⁄‹‹‹‹œœ «·‹„»Ì‹‹‹  ›Ì';
                     if f_dm.simpledataset_mission.FieldByName('region').AsString='s' then  s2:= s2+' «·‹Ã‹‰‹Ê» : ';
                     if f_dm.simpledataset_mission.FieldByName('region').AsString='n' then  s2:= s2+' «·‹‘‹„‹‹«· : ';
                         end;

            if nbrepas-nbrepas_pec<>0 then
                s1:=s1+inttostr(nbrepas-nbrepas_pec)+' * '+formater_float(xrepas)+' œÃ ';

             if nbrepas_pec<>0 then
                s1:=s1+'+('+inttostr(nbrepas_pec)+' * 25% '+formater_float(xrepas)+')'+' œÃ ';//' œÃ ';
             // s11:=formater_float(((nbrepas-nbrepas_pec)*xrepas)+(nbrepas_pec*xrepas*0.25))+'='+s1;
             s1:=s1+' = '+formater_float(((nbrepas-nbrepas_pec)*xrepas)+(nbrepas_pec*xrepas*0.25))+' œÃ ';


            if nbdec-nbdec_pec<>0 then
                s2:=s2+inttostr(nbdec-nbdec_pec)+' * '+formater_float(xdec)+' œÃ ';
             if nbdec_pec<>0 then
                s2:=s2+'+('+inttostr(nbdec_pec)+' * 25% '+formater_float(xdec)+')'+' œÃ ';
            s2:=s2+' = '+formater_float(((nbdec-nbdec_pec)*xdec)+(nbdec_pec*xdec*0.25))+' œÃ ';


            es1.text:=s1; es2.text:=s2;
            //es1.text:=formater_float(((nbdec-nbdec_pec)*xdec)+(nbdec_pec*xdec*0.25))+' = '+inttostr(nbrepas-nbrepas_pec)+' X '+formater_float(xrepas);
            //es11.text:=formater_float(xrepas)+' X '+inttostr(nbrepas-nbrepas_pec)+'='+formater_float(((nbdec-nbdec_pec)*xdec)+(nbdec_pec*xdec*0.25))+' œÃ';
            total_mission:=((nbrepas-nbrepas_pec)*xrepas)+(nbrepas_pec*xrepas*0.25)+((nbdec-nbdec_pec)*xdec)+(nbdec_pec*xdec*0.25);
            edit8.text:=formater_float(total_mission);

           depense.Text:=''; w:=0;
           i:=0;
           if f_dm.simpledataset_depenses_mission.FieldByName('autocar').AsFloat>0  then  begin i:=i+1;depense.Text:=' Õ‹«›·… : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('autocar').AsFloat)+' œÃ ';
                                                                                    w:=w+f_dm.simpledataset_depenses_mission.FieldByName('autocar').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('vf').AsFloat>0  then begin  i:=i+1;depense.Text:=depense.Text+' ﬁ‹ÿ‹‹«— : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('vf').AsFloat)+' œÃ ';
                                                                                    w:=w+f_dm.simpledataset_depenses_mission.FieldByName('vf').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('avion_bateau').AsFloat>0  then  begin i:=i+1;depense.Text:=depense.Text+' ÿ‹‹«∆—… : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('avion_bateau').AsFloat)+' œÃ ';
                                                                                    w:=w+f_dm.simpledataset_depenses_mission.FieldByName('avion_bateau').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('taxi_service').AsFloat>0  then  begin i:=i+1;depense.Text:=depense.Text+' ”Ì‹‹‹«—… √Ã‹—… : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('taxi_service').AsFloat)+' œÃ ';
                                                                                     w:=w+f_dm.simpledataset_depenses_mission.FieldByName('taxi_service').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat>0  then  begin i:=i+1;depense.Text:=depense.Text+' ”Ì‹‹«—… Œ‹‹«’… : '+
                                                                                            formater_float(f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat)+
                                                                                            ' * '+formater_float(f_dm.simpledataset_parametres_mission.fieldByName('klm').asfloat)+' œÃ '+' = '+
                                                                                           formater_float(f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat*f_dm.simpledataset_parametres_mission.fieldByName('klm').asfloat)+' œÃ ';
                                                                                           w:=w+f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat*f_dm.simpledataset_parametres_mission.fieldByName('klm').asfloat end;
           if (w>0) and (i>1) then depense.Text:=depense.Text+' «·‹„‹Ã‹„‹Ê⁄  : '+formater_float(w);
           total_mission:=total_mission+w;
           total.Text:=trim(formater_float(total_mission));
         end;

end;



procedure TF_edit_mission.but2(Sender: TObject);
begin
    //
    a:=strtoint(trim(edit1.Text)); //total repas
    b:=strtoint(trim(edit2.Text)); //total dec
  //  c:=strtoint(trim(edit_repas2.Text)); //dernier jour repas
    d:=strtofloat(trim(edit3.Text)); //montant repas
    e:=strtofloat(trim(edit4.text)); //montant decoucher

    f:=trunc(strtofloat(trim(edit5.Text))); //repas pris en charge
    g:=strtoint(trim(edit6.text)); //dec pris en charge
    total_mission:=((a-f)*d)+(f*d*0.25)+((b-g)*e)+(g*e*0.25);

    s:=' '; s1:=' ';
      if a-f<>0 then
                s:=s+inttostr(a-f)+'x'+formater_float(d);
      if f<>0 then
                s:=s+'+'+inttostr(f)+'x'+formater_float(d)+'x 25%';
      s:=s+'='+formater_float(((a-f)*xrepas)+(f*xrepas*0.25));

      if b-g<>0 then
                s1:=s1+'+'+inttostr(b-g)+'x'+formater_float(e);
             if g<>0 then
                s1:=s1+'+'+inttostr(g)+'x'+formater_float(e)+'x 25%';
      s1:=s1+'='+formater_float(((b-g)*xdec)+(g*e*0.25));

      es1.text:=trim(s1); es2.text:=trim(s2);

     edit8.text:=formater_float(total_mission);
     depense.Text:=''; w:=0;
           i:=0;
           if f_dm.simpledataset_depenses_mission.FieldByName('autocar').AsFloat>0  then  begin i:=i+1;depense.Text:=' Õ‹«›·… : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('autocar').AsFloat)+' œÃ  ';
                                                                                    w:=w+f_dm.simpledataset_depenses_mission.FieldByName('autocar').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('vf').AsFloat>0  then begin  i:=i+1;depense.Text:=depense.Text+' ﬁ‹ÿ‹‹«— : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('vf').AsFloat)+' œÃ  ';
                                                                                    w:=w+f_dm.simpledataset_depenses_mission.FieldByName('vf').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('avion_bateau').AsFloat>0  then  begin i:=i+1;depense.Text:=depense.Text+' ÿ‹‹«∆—… : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('avion_bateau').AsFloat)+' œÃ  ';
                                                                                    w:=w+f_dm.simpledataset_depenses_mission.FieldByName('avion_bateau').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('taxi_service').AsFloat>0  then  begin i:=i+1;depense.Text:=depense.Text+' ”Ì‹‹‹«—… √Ã‹—… : '+formater_float(f_dm.simpledataset_depenses_mission.FieldByName('taxi_service').AsFloat)+' œÃ  ';
                                                                                     w:=w+f_dm.simpledataset_depenses_mission.FieldByName('taxi_service').AsFloat end;
           if f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat>0  then  begin i:=i+1;depense.Text:=depense.Text+' ”Ì‹‹«—… Œ‹‹«’… : '+
                                                                                            formater_float(f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat)+
                                                                                            ' * '+formater_float(f_dm.simpledataset_parametres_mission.fieldByName('klm').asfloat)+' œÃ '+' = '+
                                                                                           formater_float(f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat*f_dm.simpledataset_parametres_mission.fieldByName('klm').asfloat)+' œÃ  ';
                                                                                           w:=w+f_dm.simpledataset_depenses_mission.FieldByName('vehicule_pers').AsFloat*f_dm.simpledataset_parametres_mission.fieldByName('klm').asfloat end;
           if (w>0) and (i>1) then depense.Text:=depense.Text+' «·‹„‹Ã‹„‹Ê⁄  : '+formater_float(w);
           total_mission:=total_mission+w;
           total.Text:=trim(formater_float(total_mission));

end;





procedure TF_edit_mission.ecranClick(Sender: TObject);
begin

 ecran.Enabled:=false;imp.Enabled:=false;fs.Enabled:=false;fs_ds.Enabled:=false;
 s4:=f_dm.simpledataset_mission.fieldByName('numero_mission').asstring;
 s5:=f_dm.simpledataset_mission.fieldByName('gestion').asstring;

 if r1.ItemIndex=1 then begin
          with  f_etat_k do begin
                           if f_dm.simpledataset_mission.fieldByName('p_e_c').asstring='o'  then //pris en charge
                               lab1.enabled:=true;
                           qnom.Caption:=trim(f_dm.simpledataset_mission.FieldByName('noma').AsString)+' '+
                                         trim(f_dm.simpledataset_mission.FieldByName('prenoma').AsString);

                           if f_dm.simpledataset_grade.Locate('code',f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_grade').AsString,[])
                              then  qgrade.Caption:=trim(f_dm.simpledataset_grade.FieldByName('gradea').AsString)
                              else  qgrade.Caption:='                                        ';

                           qfonction.Caption:='                                        ';
                           if (f_dm.simpledataset_fonction.Locate('code',f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_fonction').AsString,[]))
                                then
                                  if (Length(trim(f_dm.simpledataset_fonction.FieldByName('fonctiona').AsString))>4) then qfonction.Caption:='   «·ÊŸ‹Ì›… '+'   '+trim(f_dm.simpledataset_fonction.FieldByName('fonctiona').AsString);

                          l11.caption:=s1;
                          l22.caption:=s2;


                           DecodeDate(f_dm.simpledataset_mission.FieldByName('date_etat').Asdatetime, Ye1, Mo1, da1);
                           qrlabel5.Caption:=' €‹—œ«Ì‹‹… ›‹Ì ' + inttostr1(da1)+'/'+inttostr1(mo1)+'/'+inttostr(ye1)+' ';

                           qdepart.Caption:=' '+ trim(f_dm.simpledataset_mission.FieldByName('lieu_depart').AsString)+' ';
                           DecodeDate(f_dm.simpledataset_mission.FieldByName('date_d').Asdatetime, Ye1, Mo1, da1);
                           qdd.Caption:=' '+inttostr1(da1)+'/'+inttostr1(mo1)+'/'+inttostr(ye1)+' ';

                           qdestination.Caption:=' '+trim(f_dm.simpledataset_mission.FieldByName('lieu_mission').AsString)+' ';
                           qheuredepart.Caption:=' '+ copy(f_dm.simpledataset_mission.FieldByName('heure_d').Asstring,0,5)+' ';
                           DecodeDate(f_dm.simpledataset_mission.FieldByName('date_r').Asdatetime, Ye1, Mo1, da1);
                           qdr.Caption:=' '+inttostr1(da1)+'/'+inttostr1(mo1)+'/'+inttostr(ye1)+' ';
                           qheureretour.Caption:=' '+ copy(f_dm.simpledataset_mission.FieldByName('heure_r').Asstring,0,5)+' ';
                           qvehicule.Caption:=' '+trim(f_dm.simpledataset_mission.FieldByName('moyen_t').AsString)+' ';
                           qobservation.Caption:=' '+trim(f_dm.simpledataset_mission.FieldByName('observation').AsString+' ');

                           l3.enabled:=false;
                           if w>0 then begin
                                       l3.enabled:=true;
                                       l3.caption:=' „‹‹’«—Ì‹‹› √Œ‹‹—Ï : '+depense.Text;
                                       end ;
                          // total.Text:=trim(formater_float(total_mission));
                           l4.Caption:=' «·‹„‹Ã‹‹„‹‹Ê⁄ «·ﬂ·Ì : '+total.Text+' œÃ ';
                           str(frac(total_mission)*100:2:0,s1);
                           str(trunc(total_mission),s);
                         {  if  frac(total_mission)>0 then
                                 s_en_l.caption:=somme_en_lettre(s)+' '+s1+' ”‰ Ì„'
                            else
                                 s_en_l.caption:=somme_en_lettre(s)+' '   }
                            if  frac(total_mission)>0 then
                                 s_en_l.caption:=convert(trunc(total_mission))+' '+s1+' ”‰ Ì„'
                            else
                                 s_en_l.caption:=convert(trunc(total_mission))+' œÃ ';

          end;
          PrintDialog1.Execute;
          f_etat_k.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
          f_etat_k.quickrep1.PrinterSettings.Copies:=Printer.Copies;
          f_etat_k.quickrep1.PreviewModal;
          //f_etat_k.QuickRep1.Preview;
          f_dm.simpledataset_mission.Locate('gestion;numero_mission',vararrayof([s5,s4]),[])
  end;
end;


procedure  avant_imp_fastreport;
begin
    f_edit_mission.frxReport1.LoadFromFile('mission.fr3');

    s3:='';
   // INFORMATIONS PROPRES A UNE INSTALLATION ....

    memoxx:=f_edit_mission.frxReport1.FindObject('Memo6') as TfrxMemoView;
    memoxx.Text:=' ? ? ? ? ?  ? ';
    if f_edit_mission.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mission','memo6']),[]) then
                    memoxx.Text:=trim(f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mission.SimpleDataSet_parameters.Append;
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mission';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo6';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·Ã„‹‹Â‹‹Ê—Ì‹‹… «·‹Ã‹“«∆‹‹—Ì‹‹… «·‹œÌ‹‹„‹ﬁ‹—«ÿ‹Ì‹‹… «·‹‘‹⁄‹»‹Ì‹…';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·Ã„‹‹Â‹‹Ê—Ì‹‹… «·‹Ã‹“«∆‹‹—Ì‹‹… «·‹œÌ‹‹„‹ﬁ‹—«ÿ‹Ì‹‹… «·‹‘‹⁄‹»‹Ì‹…';
                        f_edit_mission.SimpleDataSet_parameters.Post;s3:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_mission;champ=memo6;designation=«·Ã„‹‹Â‹‹Ê—Ì‹‹… «·‹Ã‹“«∆‹‹—Ì‹‹… «·‹œÌ‹‹„‹ﬁ‹—«ÿ‹Ì‹‹… «·‹‘‹⁄‹»‹Ì‹…'
                    end;

 memoxx:=f_edit_mission.frxReport1.FindObject('Memo5') as TfrxMemoView;
  memoxx.Text:=' ? ? ? ? ?  ? ';
    if f_edit_mission.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mission','memo5']),[]) then
                    memoxx.Text:=trim(f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mission.SimpleDataSet_parameters.Append;
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mission';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo5';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('designation').AsString:='€‹‹‹—œ«Ì‹‹‹‹‹… ÌÊ„';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString:='€‹‹‹—œ«Ì‹‹‹‹‹… ÌÊ„';
                        f_edit_mission.SimpleDataSet_parameters.Post;s3:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_mission;champ=memo5;designation=€‹‹‹—œ«Ì‹‹‹‹‹… ÌÊ„';
                    end;



memoxx:=f_edit_mission.frxReport1.FindObject('Memo37') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ? ? ?  ? ? ? ';
if f_edit_mission.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mission','memo37']),[]) then
                    memoxx.Text:=trim(f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mission.SimpleDataSet_parameters.Append;
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mission';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo37';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('designation').AsString:='«· ”„Ì…';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹Ã‹‹Â‹‹ÊÌ‹‹‹… ··‹Œ“Ì‹‹‰‹‹… »‹‹€‹‹—œ«Ì‹‹…';
                        f_edit_mission.SimpleDataSet_parameters.Post; s3:='x' ;

                        f_parameters.edit1.Text:='forme=f_etat_mission;champ=memo37;designation=«· ”„Ì…'
                    end;

memoxx:=f_edit_mission.frxReport1.FindObject('Memo8') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ? ? ?  ? ? ? ';
if f_edit_mission.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mission','memo8']),[]) then
                    memoxx.Text:=trim(f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mission.SimpleDataSet_parameters.Append;
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mission';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo8';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('designation').AsString:='«· ”„Ì…';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·‹‹„‹œÌ‹‹—«·‹Ã‹‹Â‹‹ÊÌ ··‹Œ“Ì‹‹‰‹‹… »‹€‹—œ«Ì‹‹…';
                        f_edit_mission.SimpleDataSet_parameters.Post; s3:='x' ;

                        f_parameters.edit1.Text:='forme=f_etat_mission;champ=memo8;designation=«· ”„Ì…'
                    end;

memoxx:=f_edit_mission.frxReport1.FindObject('Memo7') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mission.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mission','Memo7']),[]) then
                    memoxx.Text:=trim(f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mission.SimpleDataSet_parameters.Append;
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mission';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo7';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('designation').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹›—⁄Ì… ··„Ì“«‰Ì… Ê «·Ê”«∆·';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹›—⁄Ì… ··„Ì“«‰Ì… Ê «·Ê”«∆·';
                        f_edit_mission.SimpleDataSet_parameters.Post;s3:='x';
                      //  f_edit_mission.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mission;champ=Memo7;designation=«·‹‹„‹œÌ‹‹—Ì‹‹… «·‹›—⁄Ì… ··„Ì“«‰Ì… Ê «·Ê”«∆·'
                    end;

memoxx:=f_edit_mission.frxReport1.FindObject('Memo18') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mission.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mission','Memo18']),[]) then
                    memoxx.Text:=trim(f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mission.SimpleDataSet_parameters.Append;
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mission';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo18';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('designation').AsString:='Ê“«—… «·‹‹‹„‹‹«·‹‹Ì‹‹‹‹…';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString:='Ê“«—… «·‹‹‹„‹‹«·‹‹Ì‹‹‹‹…';
                        f_edit_mission.SimpleDataSet_parameters.Post;s3:='x';
                      //  f_edit_mission.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mission;champ=Memo18;designation=Ê“«—… «·‹‹‹„‹‹«·‹‹Ì‹‹‹‹…'
                    end;

memoxx:=f_edit_mission.frxReport1.FindObject('Memo1') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mission.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mission','Memo1']),[]) then
                    memoxx.Text:=trim(f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mission.SimpleDataSet_parameters.Append;
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mission';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo1';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('designation').AsString:='dgtgcpfe';
                        f_edit_mission.SimpleDataSet_parameters.FieldByName('libellear').AsString:='«·„œÌ—Ì… «·⁄«„… ··Œ“Ì‰… Ê «· ”ÌÌ— «·„Õ«”»Ì ··⁄„·Ì«  «·„«·Ì… ··œÊ·…';
                        f_edit_mission.SimpleDataSet_parameters.Post;s3:='x';
                      //  f_edit_mission.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mission;champ=Memo1;designation=«·„œÌ—Ì… «·⁄«„… ··Œ“Ì‰… Ê «· ”ÌÌ— «·„Õ«”»Ì ··⁄„·Ì«  «·„«·Ì… ··œÊ·…'
                    end;


   if s3='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_mission.SimpleDataSet_parameters;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"Ètat mission, validez ou resaisissez les nouvelles donnÈes ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                   end;

memoxx:=f_edit_mission.frxReport1.FindObject('g') as TfrxMemoView;
if f_dm.simpledataset_grade.Locate('code',f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_grade').AsString,[])
                              then
                                  memoxx.Text:=trim(f_dm.simpledataset_grade.FieldByName('gradea').AsString)
                              else  memoxx.Text:='                                                         ';
memoxx:=f_edit_mission.frxReport1.FindObject('f') as TfrxMemoView;
                           memoxx.Text:='                                                         ';
                           if (f_dm.simpledataset_fonction.Locate('code',f_dm.simpledataset_adm_apc_grade_fonction_mission.FieldByName('code_fonction').AsString,[]))
                                then
                                  if (Length(trim(f_dm.simpledataset_fonction.FieldByName('fonctiona').AsString))>4) then
                                  memoxx.Text:='   «·ÊŸ‹Ì›… '+'   '+trim(f_dm.simpledataset_fonction.FieldByName('fonctiona').AsString);


if F_edit_mission.r1.ItemIndex=1 then begin
         // with  f_etat_k do begin
             memoxx:=f_edit_mission.frxReport1.FindObject('l11') as TfrxMemoView;
             memoxx.Text:=s1;
             memoxx:=f_edit_mission.frxReport1.FindObject('l22') as TfrxMemoView;
             memoxx.Text:=s2;
             DecodeDate(f_dm.simpledataset_mission.FieldByName('date_etat').Asdatetime, Ye1, Mo1, da1);

             memoxx:=f_edit_mission.frxReport1.FindObject('l3') as TfrxMemoView;
             memoxx.Visible:=false;
             if w>0 then begin
                          memoxx.Visible:=true;
                          memoxx.Text:=' „‹‹’«—Ì‹‹› √Œ‹‹—Ï : '+F_edit_mission.depense.Text;
                         end ;
             memoxx:=f_edit_mission.frxReport1.FindObject('l4') as TfrxMemoView;
             memoxx.Text:=' «·‹„‹Ã‹‹„‹‹Ê⁄ «·ﬂ·Ì : '+F_edit_mission.total.Text+' œÃ ';
             str(frac(total_mission)*100:2:0,s1);
             str(trunc(total_mission),s);
             memoxx:=f_edit_mission.frxReport1.FindObject('memo11') as TfrxMemoView;
             if  frac(total_mission)>0 then
                                // memoxx.Text:=somme_en_lettre(s)+' '+s1+' ”‰ Ì„'
                                 memoxx.Text:=convert(trunc(total_mission))+' œÃ '+s1+' ”‰ Ì„'
                            else
                                // memoxx.Text:=somme_en_lettre(s)+' '
                                memoxx.Text:=convert(trunc(total_mission))+' '+' œÃ '

          end;

end;

procedure TF_edit_mission.finClick(Sender: TObject);
begin
       f_edit_mission.visible:=false;
end;

procedure TF_edit_mission.find_mission(Sender: TObject);
begin
      if mat.text<>'' then
    if (f_dm.SimpleDataSet_mission.locate('numero_mission',trim(mat.text),[loPartialKey])) then dbgrid4.REFRESH;
end;

procedure TF_edit_mission.fsClick(Sender: TObject);
begin
      ecran.Enabled:=false;imp.Enabled:=false;fs.Enabled:=false;fs_ds.Enabled:=false;
  avant_imp_fastreport;
      frxReport1.ShowReport;
end;

procedure TF_edit_mission.fs_dsClick(Sender: TObject);
begin
  ecran.Enabled:=false;imp.Enabled:=false;fs.Enabled:=false;fs_ds.Enabled:=false;
  avant_imp_fastreport;
 frxReport1.DesignReport();
end;

procedure TF_edit_mission.imprimer(Sender: TObject);
begin
      imp.Enabled:=false;ecran.Enabled:=false;fs.Enabled:=false;fs_ds.Enabled:=false;
      if r1.ItemIndex=1 then begin

      end;

end;

procedure TF_edit_mission.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = dÈfinition actuelle de l'Ècran
   D := 768; // diviseur = dÈfinition de l'Ècran ‡ la conception
 //  ScaleBy(M, D);
 //  Realign;
end;

end.
