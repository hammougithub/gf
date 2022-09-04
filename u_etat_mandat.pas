unit u_etat_mandat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db,  StdCtrls,variants,
  Unit_function_and_procedure,ConverterQR2FR,frxClass;

type
  Tf_Etat_mandat = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    somme: TQRExpr;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape7: TQRShape;
    s_en_l: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape1: TQRShape;
    PrinterSetupDialog1: TPrinterSetupDialog;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    l_a: TQRLabel;
    QRShape8: TQRShape;
    obs: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape6: TQRShape;
    qrdate2: TQRLabel;
    qrdate1: TQRLabel;
    QRLabel24: TQRLabel;
    nom: TQRLabel;
    q1: TQRLabel;
    QRLabel39: TQRLabel;
    qr40: TQRLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure avant_imp(Sender: TQRCustomBand; var PrintBand: Boolean);
  //  procedure printer_setup(Sender: TCustomQuickRep;
    //  var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure avant_imp2(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure donnee(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_Etat_mandat: Tf_Etat_mandat;

implementation

uses MAIN, u_dm, u_edit_mandat, u_parameters, U_Parameters_etat_mandat, Unit8,
  u_parameters_etat_x;

{$R *.DFM}

procedure Tf_Etat_mandat.avant_imp(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var s,s1,s2:string;
begin
     if (f_dm.SimpleDataSet_users.Locate('id',trim(f_dm.sm.FieldByName('utilisateur').AsString),[])) then
    qr40.Caption:=' حرر من طرف '+trim(f_dm.SimpleDataSet_users.FieldByName('utilisateur').AsString)
    else  qr40.Caption:=' حرر من طرف ';

    str(somme.Value.dblresult:15:2,s1);s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
    if somme.Value.dblresult<100000000 then
           s_en_l.caption:=somme_en_lettre(s)
           else
           s_en_l.caption:=Convert(strtoint(s));

    if s2<>'00' then s_en_l.caption:=s_en_l.caption+' '+s2+' سنتيم'
                else s_en_l.caption:=s_en_l.caption+'.';


   decodedate(f_dm.sm.Fieldbyname('dates').asdatetime,annee,mois,jour);
   qrdate2.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);

end;

procedure Tf_Etat_mandat.avant_imp2(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   l_a.caption:=trim(f_edit_mandat.clientdataset_lignes.fieldByName('libelle_arabe').asstring);
   decodedate(f_dm.sm.Fieldbyname('dates').asdatetime,annee,mois,jour);
   qrdate1.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);
end;







procedure Tf_Etat_mandat.donnee(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      s1:='';
// INFORMATIONS PROPRES A UNE INSTALLATION ....
qrlabel1.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel1']),[]) then
                    qrlabel1.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel1';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel1;designation=الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة'
                    end;

qrlabel2.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel2']),[]) then
                    qrlabel2.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel2';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel2;designation=وزارة الـــمــالــيــــة'
                    end;

qrlabel38.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel38']),[]) then
                    qrlabel38.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel38';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);

                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel38;designation=الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة'
                    end;

qrlabel3.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel3']),[]) then
                    qrlabel3.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel3';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel3;designation=الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة'
                    end;

qrlabel39.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel39']),[]) then
                    qrlabel39.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel39';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الــمـديــريــة الـفرعية للميزانية و الوسائل';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـفرعية للميزانية و الوسائل';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel39;designation=الــمـديــريــة الـفرعية للميزانية و الوسائل'
                    end;


qrlabel8.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel8']),[]) then
                    qrlabel8.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel8';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='أميـــــن خــزيـــنـة ولايـــة غـردايــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='أميـــــن خــزيـــنـة ولايـــة غـردايــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel8;designation=أميـــــن خــزيـــنـة ولايـــة غـردايــة'
                    end;

qrlabel9.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel9']),[]) then
                    qrlabel9.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel9';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='  حـســاب للــصـرف ح.ج.ب  رقــم 713000 الـجـزائــر';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='  حـســاب للــصـرف ح.ج.ب  رقــم 713000 الـجـزائــر';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel9;designation=  حـســاب للــصـرف ح.ج.ب  رقــم 713000 الـجـزائــر'
                    end;

qrlabel32.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel32']),[]) then
                    qrlabel32.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel32';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الآمــر بالصرف';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='347';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel32;designation= الآمــر بالصرف'
                    end;

qrlabel20.Caption:=' ? ? ? ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel20']),[]) then
                    qrlabel20.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel20';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الآمــر بالصرف';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='347';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel20;designation= الآمــر بالصرف'
                    end;

qrlabel37.Caption:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel37']),[]) then
                    qrlabel37.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel37';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='غـــردايـــــة يوم';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='غـــردايـــــة يوم';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel37;designation=غـــردايـــــة يوم'
                    end;

qrlabel21.Caption:=' ? ? ? ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','qrlabel21']),[]) then
                    qrlabel21.Caption:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel21';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الفصيلة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='110';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=qrlabel21;designation=الفصيلة'
                    end;
   if s1='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_mandat.SimpleDataSet_parameters;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"état mandat, validez ou resaisissez les nouvelles données ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                   end;
end;

procedure Tf_Etat_mandat.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    nom.Caption:=trim(f_edit_mandat.clientdataset_lignes.FieldByName('nom').asstring);
    q1.Caption:=' '+trim(f_edit_mandat.ClientDataSet_lignes.FieldByName('compte').asstring)+'   '+
                trim(f_edit_mandat.ClientDataSet_lignes.FieldByName('banque').asstring)+' ';
    obs.caption:=trim(f_edit_mandat.clientdataset_lignes.FieldByName('observation').asstring);
end;



end.

