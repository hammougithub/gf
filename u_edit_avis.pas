unit u_edit_avis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,frxclass,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons,
  //RpBase,    RpSystem,  RpDefine, RpRave, RpCon, RpConDS,  RpConBDE,
   DB, variants,
  //IBCustomDataSet, IBQuery,   rvldcompiler,
   Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider, SimpleDS,ShellAPI,StrUtils, frxDBSet,
  frxExportPDF, frxExportRTF, frxExportHTML, frxExportBaseDialog;
  //, Data.DB ;


type
  TF_edit_avis = class(TForm)
    ds_lignes: TDataSource;
    lignes: TSQLQuery;
    DataSetProvider_lignes: TDataSetProvider;
    ClientDataSet_lignes: TClientDataSet;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    SimpleDataSet_f: TSimpleDataSet;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid7: TDBGrid;
    Panel7: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Panel8: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel9: TPanel;
    DBNavigator3: TDBNavigator;
    Label2: TLabel;
    DBGrid5: TDBGrid;
    un_avis: TBitBtn;
    tous_les_avis: TBitBtn;
    SpeedButton1: TSpeedButton;
    fs: TBitBtn;
    bmail: TSpeedButton;
    topdf: TSpeedButton;
    b1: TBitBtn;
    papier: TRadioGroup;
    procedure fsClick(Sender: TObject);
    procedure etat(Sender: TObject);
    procedure prevClick(Sender: TObject);
    procedure tous_les_avisClick(Sender: TObject);
    procedure un_avisClick(Sender: TObject);

  //  procedure non_lecture_seul(Sender: TObject; var Action: TCloseAction);

    procedure trouv(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure RvSystem1Print(Sender: TObject);

  //  procedure ppp(Sender: TObject);
    procedure fr1(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure topdfClick(Sender: TObject);
    procedure mail(Sender: TObject);


  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_edit_avis: TF_edit_avis;pop:char;

implementation

uses MAIN, u_etat_avis, u_etat_avis1, U_etat_avis_pl, u_etat_pl_avis_pl,
  u_dm, u_mail;

{$R *.DFM}

procedure TF_edit_avis.fsClick(Sender: TObject);
begin
  frxReport1.LoadFromFile('avis.fr3');
 frxReport1.DesignReport();
  dbgrid5.visible:=false;
    DBNavigator3.visible:=false;
    b1.visible:=false;  ;  topdf.visible:=false;  bmail.visible:=false; fs.visible:=false;
    label2.Visible:=false;panel4.Visible:=false;
end;


procedure TF_edit_avis.fr1(Sender: TObject);
begin
    frxReport1.LoadFromFile('avis.fr3');
    frxReport1.ShowReport;
    dbgrid5.visible:=false;
    DBNavigator3.visible:=false;
    b1.visible:=false;  ;  topdf.visible:=false;  bmail.visible:=false;fs.visible:=false;
    label2.Visible:=false; panel4.Visible:=false;
end;

procedure TF_edit_avis.mail(Sender: TObject);
begin
    frxReport1.LoadFromFile('avis.fr3');
    frxPDFExport1.FileName := 'avis.PDF';
    frxReport1.PrepareReport();
    frxReport1.Export(frxPDFExport1);
    f_mail.edit2.text:='avis.PDF' ;
    if f_mail.WindowState=wsMinimized then f_mail.WindowState:=wsMaximized ;
    f_mail.visible:=true;f_mail.bringtofront;
    dbgrid5.visible:=false;
    DBNavigator3.visible:=false;
    b1.visible:=false;  topdf.visible:=false;  bmail.visible:=false;  fs.visible:=false;
    label2.Visible:=false;panel4.Visible:=false;
end;

FUNCTION inverse(s:shortstring):shortstring;
var
    i,l:byte;
    j:shortstring;
    K:array [1..80] of shortstring;
begin
     FOR I := 1 TO 80 do
       K[i]:='';
         J:='';l:=1;
      FOR I :=1 TO length(s)  do
      begin
              IF s[i]=' ' then
              begin
                      k[l]:=j;
                      j:='';
                     l:=l+1;
              end
              else
              begin
                    j:=j+s[i];

              end;
      end;
      j:='';
      FOR I := 80 downto 1 do
             IF K[i]<>'' then
              j:=j+' '+k[i];

     inverse:=trim(j);
end;

procedure TF_edit_avis.Button1Click(Sender: TObject);
begin


    frxReport1.LoadFromFile('avis.fr3');
    frxPDFExport1.FileName := 'avis.PDF';
    frxReport1.PrepareReport();
    frxReport1.Export(frxPDFExport1);

    dbgrid5.visible:=false;
    DBNavigator3.visible:=false;
    b1.visible:=false;
    label2.Visible:=false;;  topdf.visible:=false;  bmail.visible:=false;
end;

procedure TF_edit_avis.etat(Sender: TObject);
begin
  // papier.visible:=true;
  // un_avis.visible:=true;
 //  tous_les_avis.visible:=true;
 //  papier.enabled:=true;
 //  un_avis.enabled:=true;
 //  tous_les_avis.enabled:=true;
 b1.visible:=true; panel4.Visible:=true;b1.Visible:=true;topdf.visible:=TRUE;  bmail.visible:=true;  fs.visible:=true;
   dbgrid5.visible:=true;
   DBNavigator3.visible:=true;
   Label2.visible:=true;
 //  SimpleDataSet_f.close;SimpleDataSet_f.Open;
    lignes.Close;clientdataset_lignes.close;
    lignes.Params[0].asstring:=f_dm.sm.fieldByName('gestion').asstring;
    lignes.Params[1].asinteger:=f_dm.sm.fieldByName('mandat').asinteger;
    lignes.Params[2].asstring:=f_dm.sm.fieldByName('chapitre').asstring;
    lignes.Params[3].asstring:=f_dm.sm.fieldByName('article').asstring;

    lignes.open;
    clientdataset_lignes.Open;
    clientdataset_lignes.first;
    clientdataset_lignes.edit;
    while not clientdataset_lignes.eof do   begin
     clientdataset_lignes.edit;
      clientdataset_lignes.FieldByName('nom').asstring:=trim(clientdataset_lignes.FieldByName('nom').asstring);
      clientdataset_lignes.FieldByName('banque').asstring:=trim(clientdataset_lignes.FieldByName('banque').asstring);
      clientdataset_lignes.FieldByName('COMPTE').asstring:=trim(clientdataset_lignes.FieldByName('compte').asstring);
      //trim(clientdataset_lignes.FieldByName('banque').asstring)+' '+trim(clientdataset_lignes.FieldByName('compte').asstring);
      clientdataset_lignes.FieldByName('libelle_arabe').asstring:=trim(clientdataset_lignes.FieldByName('libelle_arabe').asstring);
      clientdataset_lignes.next
    end;
    clientdataset_lignes.first;

end;





procedure TF_edit_avis.prevClick(Sender: TObject);
begin
   if pop='0' then
               if papier.itemindex=0 then f_etat_avis.quickrep1.preview
               else f_un_etat_avis_pl.quickrep1.preview;

    if pop='1' then
               if papier.itemindex=0 then f_etat_avis1.quickrep1.preview
               else f_etat_pl_avis_pl.quickrep1.preview;
 //  print.enabled:=false;
//   prev.enabled:=false;
   un_avis.enabled:=false;
   tous_les_avis.enabled:=false;
end;

procedure TF_edit_avis.RvSystem1Print(Sender: TObject);
var s:string;
begin
{     with Sender as TBaseReport do
    begin
      SetFont('Arial', 18);
      GotoXY(1,1);
      print(inverse(trim(ClientDataSet_lignes.FieldByName('nom_avis_de_virement').AsString)));

      GotoXY(1,3);
      Print(trim(ClientDataSet_lignes.FieldByName('nom_avis_de_virement').AsString));
    end; // with Sender as TBaseReport }
  end;



procedure TF_edit_avis.topdfClick(Sender: TObject);
begin
    frxReport1.LoadFromFile('avis.fr3');
    frxPDFExport1.FileName := 'avis.PDF';
    frxReport1.PrepareReport();
    frxReport1.Export(frxPDFExport1);
    dbgrid5.visible:=false;
    DBNavigator3.visible:=false;
    b1.visible:=false;  ;  topdf.visible:=false;  bmail.visible:=false;fs.visible:=false;
    label2.Visible:=false; panel4.Visible:=false;
end;

// RvSystem1Print


procedure TF_edit_avis.tous_les_avisClick(Sender: TObject);
begin
 { avis.SelectReport('tous_les_avis',true); avis.Executereport('tous_les_avis');
//  ShellExecute(Handle,'Open','rave.exe',nil,Nil,SW_SHOWDEFAULT);
  lignes.Close;clientdataset_lignes.Close;
   papier.visible:=false ;
   un_avis.visible:=false;
   tous_les_avis.visible:=false;
   dbgrid5.visible:=false;
   DBNavigator3.visible:=false;
   Label2.visible:=false;  }
end;

procedure TF_edit_avis.trouv(Sender: TObject);
begin
       if edit1.text<>'' then
      f_dm.sm.locate('mandat',strtoint(edit1.text),[]);
end;

procedure TF_edit_avis.un_avisClick(Sender: TObject);
begin
//  avis.SelectReport('un_avis',true); avis.Executereport('un_avis');
  ShellExecute(Handle,'Open','rave.exe',nil,Nil,SW_SHOWDEFAULT);
  lignes.Close;;clientdataset_lignes.Close;
  papier.visible:=false;
   un_avis.visible:=false;
   tous_les_avis.visible:=false;
   dbgrid5.visible:=false;
   DBNavigator3.visible:=false;
   Label2.visible:=false;
end;



{procedure TF_edit_avis.non_lecture_seul(Sender: TObject;
  var Action: TCloseAction);
begin
  f_dm.clientdataset_fournisseur.close;f_dm.clientdataset_fournisseur.masterfields:='';
  f_dm.clientdataset_fournisseur.mastersource:=nil;f_dm.clientdataset_fournisseur.open;

  f_dm.clientdataset_adm.Close;f_dm.clientdataset_adm.masterfields:='';
  f_dm.clientdataset_adm.mastersource:=nil;f_dm.clientdataset_adm.open;

 // print.enabled:=false;
 // prev.enabled:=false;
  un_avis.enabled:=false;
  tous_les_avis.enabled:=false;
end;}

procedure TF_edit_avis.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
 //  ScaleBy(M, D);
 //  Realign;
end;




end.
