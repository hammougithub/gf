unit u_edit_eng;

interface

uses
  printers, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, Mask,QRPrev,qrprntr,shellapi,
  Data.DB, Data.DBXFirebird, Datasnap.DBClient, SimpleDS, frxClass, frxDBSet,
  frxTableObject, Data.FMTBcd, Data.SqlExpr,Unit_function_and_procedure,variants,
  frxDesgn;

type
  Tf_edit_eng = class(TForm)
    FontDialog1: TFontDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SaveDialog1: TSaveDialog;
    simpledataset_parameters: TSimpleDataSet;
    simpledataset_parameters1: TSimpleDataSet;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxReportTableObject1: TfrxReportTableObject;
    frxDBDataset3: TfrxDBDataset;
    total: TSQLQuery;
    frxDesigner1: TfrxDesigner;
    sqlQuery_somme_eng_economie: TSQLQuery;
    SQLQuery_as: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery1: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Label2: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel8: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Panel12: TPanel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Panel13: TPanel;
    Button1: TButton;
    Button2: TButton;
    fs_ds: TButton;
    fs: TButton;
    print: TButton;
    preview: TButton;
    esc: TButton;
    fin: TButton;
    Panel14: TPanel;
    Label4: TLabel;
    Panel15: TPanel;
    DBNavigator3: TDBNavigator;
    Panel16: TPanel;
    DBNavigator2: TDBNavigator;
    cb1: TCheckBox;
    cb: TCheckBox;
    procedure etat(Sender: TObject);
    procedure finClick(Sender: TObject);
    procedure escClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure previewClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure seek_eng(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure config(Sender: TObject);
    procedure param(Sender: TObject);
    procedure refresh(Sender: TObject);
    procedure fsClick(Sender: TObject);
    procedure dsfs(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_edit_eng: Tf_edit_eng;
  p:textfile; l1,l2,l3,l4:string;Memoxx:TFrxMemoview;TableCell:TfrxTableCell ;

implementation

uses u_eng_prev1, u_eng_previw, u_obs, MAIN, u_dm, u_etat_engagement,
  u_edit_mandat, u_parameters, u_parameters_etat_x;

//uses Unit2;

{$R *.DFM}

procedure Tf_edit_eng.etat(Sender: TObject);
begin
    total.Close;
    total.Params[0].asstring:=f_dm.SimpleDataSet_eng.fieldByName('gestion').asstring;
    total.Params[1].asinteger:=f_dm.SimpleDataSet_eng.fieldByName('fiche').asinteger;
    total.Params[2].asstring:=f_dm.SimpleDataSet_eng.fieldByName('chapitre').asstring;
    total.Params[3].asstring:=f_dm.SimpleDataSet_eng.fieldByName('article').asstring;
    total.Open;
 //  f_dm.simpleDataSet_obs_eng.Edit;

  { l1:=trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne1').asstring) ;
   l2:=trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne2').asstring) ;
   l3:=trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne3').asstring) ;
   l4:=trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne4').asstring) ;
   dbedit1.ReadOnly:=false;dbedit2.ReadOnly:=false;dbedit3.ReadOnly:=false;dbedit4.ReadOnly:=false;  }

   print.enabled:=true;  fs.enabled:=true;fs_ds.enabled:=true;
   preview.enabled:=true;
   esc.enabled:=true;
   dbgrid1.enabled:=false;
   dbnavigator1.enabled:=false;
   fin.enabled:=false
end;

procedure Tf_edit_eng.finClick(Sender: TObject);
begin
    f_edit_eng.visible:=false;
end;

procedure  avant_imp_fastreport;
var s1,s,s2:string;
      xas,xns,x:real;
begin
 s1:='';
    f_edit_eng.frxReport1.LoadFromFile('etat_engagement.fr3');

    if  f_edit_eng.total.Fields[0].asstring<>'' then   begin
                 TableCell:=f_edit_eng.frxReport1.FindObject('tot') as TfrxTableCell ;
                 str(f_edit_eng.total.Fields[0].value:15:2,s1);
                 TableCell.Text:=s1;
                 TableCell:=f_edit_eng.frxReport1.FindObject('montant_operation') as TfrxTableCell;
                 TableCell.Text:=s1;
                      end;


     memoxx:=f_edit_eng.frxReport1.FindObject('memo47') as TfrxMemoView;
    s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
    if s2<>'00' then s2:=' '+s2+' ÓäÊíã ' else s2:=' ';
    if (f_edit_eng.total.Fields[0].value)<100000000 then
    memoxx.Text:='.'+somme_en_lettre(s)+s2 else  memoxx.Text:='.'+Convert(strtoint(s))+s2;



  if f_dm.clientdataset_chapitre.locate('chapitre;article',vararrayof([f_dm.simpledataset_eng.fieldByName('chapitre').asstring,f_dm.simpledataset_eng.fieldByName('article').asstring]),[])
     then begin
          memoxx:=f_edit_eng.frxReport1.FindObject('chapitre') as TfrxMemoView;
          memoxx.Text:=trim(f_dm.clientdataset_chapitre.fieldByName('libelle_arabe').asstring) ;
     end;

  memoxx:=f_edit_eng.frxReport1.FindObject('sujet') as TfrxMemoView;
  if f_dm.simpledataset_eng.fieldByName('objet').asstring='d' then  memoxx.Text:='äÜÝÜÞÜÉ'   ;
  if f_dm.simpledataset_eng.fieldByName('objet').asstring='e' then  memoxx.Text:='ÇÞÜÊÜÕÜÜÇÏ';
  if f_dm.simpledataset_eng.fieldByName('objet').asstring='r' then  memoxx.Text:='ÓÜÜÍÜÈ';

 s1:='';
   // INFORMATIONS PROPRES A UNE INSTALLATION ....
    memoxx:=f_edit_eng.frxReport1.FindObject('memo58') as TfrxMemoView;
    memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',vararrayof(['f_etat_engagement','memo58']),[]) then
                    memoxx.Text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo58';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='ÇáÌãÜÜåÜÜæÑíÜÜÉ ÇáÜÌÜÒÇÆÜÜÑíÜÜÉ ÇáÜÏíÜÜãÜæÞÜÑÇØÜíÜÜÉ ÇáÜÔÜÚÜÈÜíÜÉ';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ÇáÌãÜÜåÜÜæÑíÜÜÉ ÇáÜÌÜÒÇÆÜÜÑíÜÜÉ ÇáÜÏíÜÜãÜæÞÜÑÇØÜíÜÜÉ ÇáÜÔÜÚÜÈÜíÜÉ';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=memo58;designation=ÇáÌãÜÜåÜÜæÑíÜÜÉ ÇáÜÌÜÒÇÆÜÜÑíÜÜÉ ÇáÜÏíÜÜãÜæÞÜÑÇØÜíÜÜÉ ÇáÜÔÜÚÜÈÜíÜÉ'
                    end;

memoxx:=f_edit_eng.frxReport1.FindObject('Memo59') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo59']),[]) then
                    memoxx.Text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo59';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='æÒÇÑÉ ÇáÜÜÜãÜÜÇáÜÜíÜÜÜÜÉ';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='æÒÇÑÉ ÇáÜÜÜãÜÜÇáÜÜíÜÜÜÜÉ';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo59;designation=æÒÇÑÉ ÇáÜÜÜãÜÜÇáÜÜíÜÜÜÜÉ'
                    end;

memoxx:=f_edit_eng.frxReport1.FindObject('Memo77') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo77']),[]) then
                    memoxx.Text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo77';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='ÇáãÏíÑíÉ ÇáÚÇãÉ ááÎÒíäÉ æ ÇáÊÓííÑ ÇáãÍÇÓÈÊí ááÚãáíÇÊ ÇáãÇáíÉ ááÏæáÉ';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ÇáãÏíÑíÉ ÇáÚÇãÉ ááÎÒíäÉ æ ÇáÊÓííÑ ÇáãÍÇÓÈÊí ááÚãáíÇÊ ÇáãÇáíÉ ááÏæáÉ';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);

                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo77;designation=ÇáãÏíÑíÉ ÇáÚÇãÉ ááÎÒíäÉ æ ÇáÊÓííÑ ÇáãÍÇÓÈÊí ááÚãáíÇÊ ÇáãÇáíÉ ááÏæáÉ'
                    end;


memoxx:=f_edit_eng.frxReport1.FindObject('Memo4') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo4']),[]) then
                    memoxx.Text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo4';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='ÇáÜÜãÜÏíÜÜÑíÉ ÇáÜÌÜÜåÜÜæíÉ ááÜÎÒíÜÜäÜÜÉ ';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ÇáÜÜãÜÏíÜÜÑíÉ ÇáÜÌÜÜåÜÜæíÉ ááÜÎÒíÜÜäÜÜÉ ';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);

                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo4;designation=ÇáÜÜãÜÏíÜÜÑíÉ ÇáÜÌÜÜåÜÜæíÉ ááÜÎÒíÜÜäÜÜÉ ';
                    end;

memoxx:=f_edit_eng.frxReport1.FindObject('Memo2') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo2']),[]) then
                    memoxx.Text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo2';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='ÇáÜÜãÜÏíÜÜÑ ÇáÜÌÜÜåÜÜæí ááÜÎÒíÜÜäÜÜÉ ';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ÇáÜÜãÜÏíÜÜÑ ÇáÜÌÜÜåÜÜæí ááÜÎÒíÜÜäÜÜÉ ';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);

                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo2;designation=ÇáÜÜãÜÏíÜÜÑ ÇáÜÌÜÜåÜÜæí ááÜÎÒíÜÜäÜÜÉ '
                    end;

memoxx:=f_edit_eng.frxReport1.FindObject('Memo60') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo60']),[]) then
                    Memoxx.text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo60';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='æÒÇÑÉ   :  110 347';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='æÒÇÑÉ   :  110 347';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo60;designation=æÒÇÑÉ   :  110 347'
                    end;

memoxx:=f_edit_eng.frxReport1.FindObject('Memo66') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo66']),[]) then
                    Memoxx.text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo66';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='ãÜÕÜáÜÍÜÉ : ã.Ì.Î';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ãÜÕÜáÜÍÜÉ : ã.Ì.Î';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo66;designation=ãÜÕÜáÜÍÜÉ : ã.Ì.Î'
                    end;

memoxx:=f_edit_eng.frxReport1.FindObject('Memo79') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo79']),[]) then
                    memoxx.Text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo79';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='ÇáÜÜãÜÏíÜÜÑíÜÜÉ ÇáÜÝÑÚíÉ ááãíÒÇäíÉ æ ÇáæÓÇÆá';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ÇáÜÜãÜÏíÜÜÑíÜÜÉ ÇáÜÝÑÚíÉ ááãíÒÇäíÉ æ ÇáæÓÇÆá';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo79;designation=ÇáÜÜãÜÏíÜÜÑíÜÜÉ ÇáÜÝÑÚíÉ ááãíÒÇäíÉ æ ÇáæÓÇÆá'
                    end;








memoxx:=f_edit_eng.frxReport1.FindObject('Memo3') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_engagement','Memo3']),[]) then
                   memoxx.Text:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_engagement';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo3';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='ÛÜÜÜÑÏÇíÜÜÜÜÜÉ íæã';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ÛÜÜÜÑÏÇíÜÜÜÜÜÉ íæã';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_eng.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_engagement;champ=Memo3;designation=ÛÜÜÜÑÏÇíÜÜÜÜÜÉ íæã'
                    end;

  memoxx:=f_edit_eng.frxReport1.FindObject('Memo5') as TfrxMemoView;
  if (f_dm.SimpleDataSet_users.Locate('id',trim(f_dm.SimpleDataSet_eng.FieldByName('utilisateur').AsString),[])) then
    memoxx.Text:=' ÍÑÑ ãä ØÑÝ '+trim(f_dm.SimpleDataSet_users.FieldByName('utilisateur').AsString)
    else  memoxx.Text:=' ÍÑÑ ãä ØÑÝ ';

 // les lignes de l'engagement ....
  x:=0;
   f_dm.ClientDataSet_credit.first;
   f_dm.simpledataset_det_eng.first;

   if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l1') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d1') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m1') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l1') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d1') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m1') as TfrxTableCell;TableCell.Text:='                       ';
       end;

     if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l2') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d2') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m2') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l2') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d2') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m2') as TfrxTableCell;TableCell.Text:='                       ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l3') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d3') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m3') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l3') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d3') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m3') as TfrxTableCell;TableCell.Text:='                       ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l4') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d4') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m4') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l4') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d4') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m4') as TfrxTableCell;TableCell.Text:='                       ';
       end;
      if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l5') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d5') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m5') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l5') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d5') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m5') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l6') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d6') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m6') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l6') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d6') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m6') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l7') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d7') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m7') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l7') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d7') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m7') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l8') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d8') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m8') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l8') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d8') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m8') as TfrxTableCell;TableCell.Text:='                       ';
       end;
         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l9') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d9') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m9') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l9') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d9') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m9') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l10') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d10') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m10') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l10') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d10') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m10') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l11') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d11') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m11') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l11') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d11') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m11') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l12') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d12') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m12') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l12') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d12') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m12') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l13') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d13') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m13') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l13') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d13') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m13') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l14') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d14') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m14') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l14') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d14') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m14') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l15') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d15') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m15') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l15') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d15') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m15') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l16') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d16') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m16') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l16') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d16') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m16') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l17') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d17') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m17') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l17') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d17') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m17') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l18') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d18') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m18') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l18') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d18') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m18') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l19') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d19') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m19') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l19') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d19') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m19') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l20') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d20') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m20') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l20') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d20') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m20') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l21') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d21') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m21') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l21') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d21') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m21') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l22') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d22') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m22') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l22') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d22') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m22') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l23') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d23') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m23') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l23') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d23') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m23') as TfrxTableCell;TableCell.Text:='                       ';
       end;

         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l24') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d24') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m24') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l24') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d24') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m24') as TfrxTableCell;TableCell.Text:='                       ';
       end;
         if not f_dm.simpledataset_det_eng.eof then
       begin
             TableCell:=f_edit_eng.frxReport1.FindObject('l25') as TfrxTableCell;TableCell.Text:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
             TableCell:=f_edit_eng.frxReport1.FindObject('d25') as TfrxTableCell;TableCell.Text:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             TableCell:=f_edit_eng.frxReport1.FindObject('m25') as TfrxTableCell;TableCell.Text:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
             f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          TableCell:=f_edit_eng.frxReport1.FindObject('l25') as TfrxTableCell;TableCell.Text:='          ';
          TableCell:=f_edit_eng.frxReport1.FindObject('d25') as TfrxTableCell;TableCell.Text:='                                                      ';
          TableCell:=f_edit_eng.frxReport1.FindObject('m25') as TfrxTableCell;TableCell.Text:='                       ';
       end;
   with f_edit_eng do begin
   SQLQuery_as.Close;
   SQLQuery_as.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   SQLQuery_as.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   SQLQuery_as.Params[2].AsString:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   SQLQuery_as.Params[3].Asinteger:=f_dm.simpledataset_eng.fieldByName('fiche').asinteger;
   SQLQuery_as.open;

   sqlquery1.Close;
   sqlquery1.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery1.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery1.Params[2].asstring:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery1.open;

   sqlquery2.Close;
   sqlquery2.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery2.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery2.Params[2].asstring:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery2.open;

   sqlquery_somme_eng_economie.close;
   sqlquery_somme_eng_economie.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery_somme_eng_economie.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery_somme_eng_economie.Params[2].AsString:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery_somme_eng_economie.Params[3].AsSmallint:=f_dm.simpledataset_eng.fieldByName('fiche').asinteger;
   sqlquery_somme_eng_economie.open;
                           end;
   xas:=0;


   // a faire
      // enlever les lignes de xas   sqlquery1.Fields[0].value  et
      // sqlquery2.Fields[0].value
      // et engager ceuci ...
      // pour que les etats soient corrects ...

    // Somme des crédits délégués et en plus
  if  f_edit_eng.sqlquery1.Fields[0].asstring<>'' then
       xas:=f_edit_eng.sqlquery1.Fields[0].value;

    // Somme des crédits en moins
   if  f_edit_eng.sqlquery2.Fields[0].asstring<>'' then
       begin
        xas:=xas-f_edit_eng.sqlquery2.Fields[0].value;
       end;
    // Somme des engagements anterieurs en économie///
   if f_edit_eng.sqlquery_somme_eng_economie.Fields[0].asstring<>'' then
      xas:=xas+f_edit_eng.sqlquery_somme_eng_economie.Fields[0].value;

  // Somme des engagements anterieurs en dépense////
  if   f_edit_eng.sqlquery_as.Fields[0].asstring<>'' then
         xas:=xas-f_edit_eng.sqlquery_as.Fields[0].value;




     TableCell:=f_edit_eng.frxReport1.FindObject('qrlas') as TfrxTableCell;
      if xas<>0 then TableCell.Text:=formater_float(xas) else TableCell.Text:='   0.0      ';

  if f_dm.simpledataset_eng.fieldByName('objet').asstring='e'
  then x:=-x;

  TableCell:=f_edit_eng.frxReport1.FindObject('qrlns') as TfrxTableCell;
  if xas-x<>0 then // qrlns.caption:=formater_float(xas-x) else qrlns.caption:='    0.0    ';
                  TableCell.Text:=formater_float(xas-x) else TableCell.Text:='   0.0      ';


 if f_dm.simpledataset_eng.fieldByName('objet').asstring='e'    // on le remet positif
  then x:=-x;


  memoxx:=f_edit_eng.frxReport1.FindObject('qrdate') as TfrxMemoView;
decodedate(f_dm.simpledataset_eng.Fieldbyname('dates').asdatetime,annee,mois,jour);
   memoxx.Text:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);



   if s1='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_eng.SimpleDataSet_parameters;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"état mandat, validez ou resaisissez les nouvelles données ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                   end;

end;

procedure Tf_edit_eng.fsClick(Sender: TObject);
begin

    avant_imp_fastreport;
  //  frxReport1.DesignReport();
    frxReport1.ShowReport;
    print.enabled:=false; fs.enabled:=false;
   preview.enabled:=false;fs_ds.enabled:=false;
   esc.enabled:=false;
   fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;

procedure Tf_edit_eng.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
 //  Realign;
  // if f_dm.connect_db_gf.Connected then begin f_edit_eng.simpledataset_parameters.Open;simpledataset_parameters1.Open end
//    Self.scaleBy(75,100);
end;

procedure Tf_edit_eng.config(Sender: TObject);
begin
     ShellExecute(Handle,'Open','C:\Windows\system32\control.exe ' ,'printers',Nil,SW_SHOWNORMAL);
end;

procedure Tf_edit_eng.dsfs(Sender: TObject);
begin
    avant_imp_fastreport;
    frxReport1.DesignReport();
    frxReport1.ShowReport;
    print.enabled:=false; fs.enabled:=false; fs_ds.enabled:=false;
   preview.enabled:=false;
   esc.enabled:=false;
   fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;

procedure Tf_edit_eng.escClick(Sender: TObject);
begin
   print.enabled:=false;fs.enabled:=false;
   preview.enabled:=false;
   esc.enabled:=false;
   fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;

procedure Tf_edit_eng.printClick(Sender: TObject);
begin
    if  cb.Checked then  f_eng_preview.qrlas.Enabled:=true
         else f_eng_preview.qrlas.Enabled:=false;
    if  cb.Checked then  f_eng_preview.qrlns.Enabled:=true
         else f_eng_preview.qrlns.Enabled:=false;
   {  if (l1<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne1').asstring)) or
         (l2<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne2').asstring)) or
         (l3<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne3').asstring)) or
         (l4<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne4').asstring))
         then begin
                if   MessageDlgPos('Validez la maj des lignes Observation',mtConfirmation, [mbYes, mbNo], 0, 200, 400)= IDYes then
                     begin
                        f_dm.simpleDataSet_obs_eng.Post;
                        f_dm.simpleDataSet_obs_eng.ApplyUpdates(-1)
                     end;
              end;}

     

   PrintDialog1.Execute;
   if   cb1.Checked then begin
          f_eng_preview.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
          f_eng_preview.quickrep1.PrinterSettings.Copies:=Printer.Copies;
          f_eng_preview.quickrep1.print;
   end;

   print.enabled:=false; fs.enabled:=false;fs_ds.enabled:=false;
   preview.enabled:=false;
   esc.enabled:=false;
   fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
   end;

procedure Tf_edit_eng.refresh(Sender: TObject);
begin
     simpledataset_parameters.refresh;simpledataset_parameters1.refresh
end;

procedure Tf_edit_eng.param(Sender: TObject);
begin
   if   not cb1.Checked then
       datasource1.DataSet:=simpledataset_parameters
   else datasource1.DataSet:=simpledataset_parameters1;
   if label2.Visible then label2.Visible:=false else label2.Visible:=true;
   if dbgrid3.Visible then dbgrid3.Visible:=false else dbgrid3.Visible:=true;
   if dbnavigator3.Visible then dbnavigator3.Visible:=false else dbnavigator3.Visible:=true
end;

procedure Tf_edit_eng.previewClick(Sender: TObject);
var i:word;
begin

     if  cb.Checked then  f_eng_preview.qrlas.Enabled:=true
         else f_eng_preview.qrlas.Enabled:=false;
     if  cb.Checked then  f_eng_preview.qrlns.Enabled:=true
         else f_eng_preview.qrlns.Enabled:=false;

      {.if (trim(l1)<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne1').asstring)) or
         (trim(l2)<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne2').asstring)) or
         (trim(l3)<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne3').asstring)) or
         (trim(l4)<>trim(f_dm.simpleDataSet_obs_eng.FieldByName('ligne4').asstring))
         then begin

                 if   MessageDlgPos('Validez la maj des lignes Observation',mtConfirmation, [mbYes, mbNo], 0, 150,450)= IDNo then
                    begin f_dm.SimpleDataSet_obs_eng.CancelUpdates; end else
               // if   MessageDlgPos('Validez la maj des lignes Observation',mtConfirmation, [mbYes, mbNo], 0, 200, 400)= IDYes then
                     begin
                        f_dm.simpleDataSet_obs_eng.Post;
                        f_dm.simpleDataSet_obs_eng.ApplyUpdates(-1)
                     end;
             end;

     dbedit1.ReadOnly:=true;dbedit2.ReadOnly:=true;
     dbedit3.ReadOnly:=true;dbedit4.ReadOnly:=true; }


   PrintDialog1.Execute;
   if   not cb1.Checked then begin
       f_eng_prev.quickrep1.Zoom:=100;
       f_eng_prev.quickrep1.PrevShowThumbs:=false;
       f_eng_prev.quickrep1.PrevShowSearch:=false;
       f_eng_prev.quickrep1.PrevInitialZoom:=qrZoom100;
       f_eng_prev.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
       f_eng_prev.quickrep1.PrinterSettings.Copies:=Printer.Copies;
       f_eng_prev.quickrep1.Preview;
   end
   else begin
       f_eng_preview.quickrep1.Zoom:=100;
       f_eng_preview.quickrep1.PrevShowThumbs:=false;
       f_eng_preview.quickrep1.PrevShowSearch:=false;
       f_eng_preview.quickrep1.PrevInitialZoom:=qrZoom100;
       f_eng_preview.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
       f_eng_preview.quickrep1.PrinterSettings.Copies:=Printer.Copies;
       f_eng_preview.quickrep1.Preview;
   end;

   print.enabled:=false; fs.enabled:=false; fs_ds.enabled:=false;
   preview.enabled:=false;
   esc.enabled:=false;
   fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;
procedure Tf_edit_eng.Button1Click(Sender: TObject);
begin
 f_edit_eng.visible:=false
end;



procedure Tf_edit_eng.seek_eng(Sender: TObject);
begin
 if edit1.text<>'' then
      if not(f_dm.simpleDataSet_eng.locate('fiche',strtoint(edit1.text),[])) then
        f_dm.simpleDataSet_eng.first;
end;

end.

