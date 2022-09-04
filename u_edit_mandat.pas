unit u_edit_mandat;

interface

uses
  recerror,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,printers,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, Db,  Buttons,shellapi,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,QRPrev,qrprntr,QRwebFilt,QRPDFFilt,
  Data.DBXFirebird, SimpleDS, frxClass, frxDBSet,frxVariables,Unit_function_and_procedure,
  frxDesgn,FS_iInterpreter, fs_ipascal,variants; // ConverterQR2FR,

type
  Tf_edit_mandat = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    simpledataset_parameters: TSimpleDataSet;
    DataSource1: TDataSource;
    DataSetProvider_lignes: TDataSetProvider;
    ClientDataSet_lignes: TClientDataSet;
    lignes: TSQLQuery;
    Button3: TButton;
    DataSource2: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    frxDesigner1: TfrxDesigner;
    fsPascal1: TfsPascal;
    Button6: TButton;
    fsScript1: TfsScript;
    total: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    Panel9: TPanel;
    DBGrid4: TDBGrid;
    Panel10: TPanel;
    Button2: TButton;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    bpdf: TButton;
    Print: TButton;
    Preview: TButton;
    fs: TButton;
    fs_ds: TButton;
    fin: TButton;
    esc: TButton;
    Panel11: TPanel;
    DBNavigator2: TDBNavigator;
    procedure finClick(Sender: TObject);
    procedure etat(Sender: TObject);
    procedure cancel(Sender: TObject);
    procedure PreviewClick(Sender: TObject);
    procedure TOPrINT(Sender: TObject);
    procedure non_lecture_seul(Sender: TObject; var Action: TCloseAction);
    procedure seek_mandat(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure clic(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure pop(Sender: TObject);
    procedure onerror(DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure refresh(Sender: TObject);
    procedure TOPDF(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure fastr(Sender: TObject);
    procedure ppp(Sender: TfrxReportComponent);
    procedure ongetvalue(const VarName: string; var Value: Variant);
    procedure Button5Click(Sender: TObject);
    function Reverse(const s: string): string;
    procedure Button6Click(Sender: TObject);
    procedure fs_dsClick(Sender: TObject);

  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_edit_mandat: Tf_edit_mandat; Memoxx:TFrxMemoview; s2:string;ent:integer;
   aPDF : TQRPDFDocumentFilter;
implementation

uses u_etat_mandat, MAIN, u_dm, u_etat, u_edit_avis, u_edit_etat_virement,
  U_Parameters_etat_xxx, u_parameters_etat_x, u_parameters;

{$R *.DFM}

 function Tf_edit_mandat.Reverse(const s: string): string;
var
  i, len: Integer;
begin
  len := Length(s);
  SetLength(Result, len);
  for i := len downto 1 do
  begin
    Result[len - i + 1] := s[i];
  end;
end;
procedure Tf_edit_mandat.finClick(Sender: TObject);
begin
        f_edit_mandat.visible:=false;
        f_dm.ClientDataSet_fournisseur.Close;
        f_dm.ClientDataSet_fournisseur.masterfields:='';
        f_dm.ClientDataSet_fournisseur.mastersource:=nil;
        f_dm.ClientDataSet_fournisseur.Open;
end;





procedure Tf_edit_mandat.etat(Sender: TObject);
begin
    clientdataset_lignes.close;
    lignes.Close;
    lignes.Params[0].asstring:=f_dm.sm.fieldByName('gestion').asstring;
    lignes.Params[1].asinteger:=f_dm.sm.fieldByName('mandat').asinteger;
    lignes.Params[2].asstring:=f_dm.sm.fieldByName('chapitre').asstring;
    lignes.Params[3].asstring:=f_dm.sm.fieldByName('article').asstring;
    lignes.open;lignes.First;
    clientdataset_lignes.Open;
    total.Close;
    total.Params[0].asstring:=f_dm.sm.fieldByName('gestion').asstring;
    total.Params[1].asinteger:=f_dm.sm.fieldByName('mandat').asinteger;
    total.Params[2].asstring:=f_dm.sm.fieldByName('chapitre').asstring;
    total.Params[3].asstring:=f_dm.sm.fieldByName('article').asstring;
    total.Open;

    bpdf.enabled:=true; fs.enabled:=true; fs_ds.enabled:=true;
   print.enabled:=true;
   preview.enabled:=true;
   esc.enabled:=true;
   dbgrid1.enabled:=false;
   dbnavigator1.enabled:=false;
  // fin.enabled:=false
end;




procedure Tf_edit_mandat.BitBtn2Click(Sender: TObject);
begin
    if PrintDialog1.Execute then begin end;
  //  Imprimante.Caption:=Printer.Printers[Printer.PrinterIndex];
  // QuickRep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
  // QuickRep1.PrinterSettings.Copies:=Printer.Copies;

end;

procedure Tf_edit_mandat.Button1Click(Sender: TObject);
begin
     ShellExecute(Handle,'Open','C:\Windows\system32\control.exe ' ,'printers',Nil,SW_SHOWNORMAL);
end;

procedure Tf_edit_mandat.Button3Click(Sender: TObject);
//var conv:ConverterQr2FrNew;
begin
      //frxFR2EventsNew := TConverterQr2FrNew.Create;
     // conv. := f_Etat_mandat.QuickRep1;
    //  conv.Target := frxReport1;//FReport;
     // conv.Convert;

      frxReport1.SaveToFile('converted_fromQR.fr3');
end;

procedure Tf_edit_mandat.Button5Click(Sender: TObject);
begin

//�� ����� ���� ���� ���� ����� � ����*.dfm����� ���� ������� ������ � ����� ����� ��� ���� TQuickRep � ��*.qr2����� �����QuickReport 6���� ����� ������.
// le ficher *.dfm contenant le quickre
        if OpenDialog1.Execute then
  begin
    if frxReport1.LoadFromFile(OpenDialog1.FileName) then
    begin
      if SaveDialog1.Execute then
      begin
        frxReport1.SaveToFile(SaveDialog1.FileName);frxReport1.LoadFromFile(SaveDialog1.FileName);
 frxReport1.DesignReport();
      end;
    end;
  end;
end;

procedure Tf_edit_mandat.Button6Click(Sender: TObject);
begin
 fsScript1.Clear; // do this if you running many scripts from one
 //fsScript1.Lines.Text := 'begin ShowMessage(''Hello!'') end.';
 fsScript1.Parent := fsGlobalUnit; // use standard classes and methods
 fsScript1.SyntaxType := 'PascalScript';
 if fsScript1.Compile then
 fsScript1.Execute else
 ShowMessage(fsScript1.ErrorMsg);
end;
procedure  avant_imp_fastreport
;
begin
    f_edit_mandat.frxReport1.LoadFromFile('etat_mandat.fr3');

     if  f_edit_mandat.total.Fields[0].asstring<>'' then

     memoxx:=f_edit_mandat.frxReport1.FindObject('Memo47') as TfrxMemoView;
     str(f_edit_mandat.total.Fields[0].value:15:2,s1);

    s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
    if s2<>'00' then s2:=' '+s2+' سنتيم ' else s2:='.';
    if (f_edit_mandat.total.Fields[0].value)<100000000 then  memoxx.Text:=somme_en_lettre(s)+s2 else  memoxx.Text:=Convert(strtoint(s))+' دج '+s2+' سنتيم ';
 //   if s2<>'00' then memoxx.Text:=memoxx.Text+' '+s2+' �����' else memoxx.Text:=memoxx.Text+'.' ;

   decodedate(f_dm.sm.Fieldbyname('dates').asdatetime,annee,mois,jour);
   memoxx:=f_edit_mandat.frxReport1.FindObject('Memo46') as TfrxMemoView;
   memoxx.Text:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);

   memoxx:=f_edit_mandat.frxReport1.FindObject('Memo55') as TfrxMemoView;
   memoxx.Text:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);


 s1:='';
   // INFORMATIONS PROPRES A UNE INSTALLATION ....

    memoxx:=f_edit_mandat.frxReport1.FindObject('Memo58') as TfrxMemoView;
    memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','memo58']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo58';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الجــمــهـوريـة الـجـزائــريــة الـديـمــوقـراطـيــة الــشـعــبــيــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الجــمــهـوريـة الـجـزائــريــة الـديـمــوقـراطـيــة الــشـعــبــيــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=memo58;designation=الجــمــهـوريـة الـجـزائــريــة الـديـمــوقـراطـيــة الــشـعــبــيــة'
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo59') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo59']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo59';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo59;designation=وزارة الـــمــالــيــــة'
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo77') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo77']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo77';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='المديرية العامة للخزينة و التسيير المحاسبتي للعمليات المالية للدولة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='المديرية العامة للخزينة و التسيير المحاسبتي للعمليات المالية للدولة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);

                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo77;designation=المديرية العامة للخزينة و التسيير المحاسبتي للعمليات المالية للدولة'
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo60') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo60']),[]) then
                    Memoxx.text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').asstring:='Memo60';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo60;designation=الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة'
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo79') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo79']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo79';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الــمـديــريــة الـفرعية للميزانية و الوسائل';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـفرعية للميزانية و الوسائل';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo79;designation=الــمـديــريــة الـفرعية للميزانية و الوسائل'
                    end;


memoxx:=f_edit_mandat.frxReport1.FindObject('Memo62') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo62']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo62';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='أميـــــن خــزيـــنـة ولايـــة غـردايــة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='أميـــــن خــزيـــنـة ولايـــة غـردايــة';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo62;designation=أميـــــن خــزيـــنـة ولايـــة غـردايــة'
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo63') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo63']),[]) then
                   memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo63';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='  حـســاب للــصـرف ح.ج.ب  رقــم 713000 الـجـزائــر';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='  حـســاب للــصـرف ح.ج.ب  رقــم 713000 الـجـزائــر';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo63;designation=  حـســاب للــصـرف ح.ج.ب  رقــم 713000 الـجـزائــر'
                    end;
memoxx:=f_edit_mandat.frxReport1.FindObject('Memo68') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo68']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo68';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='347';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='347';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo68;designation= 347'
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo6') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo6']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo6';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='347';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='347';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo6;designation= 347'
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo54') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo54']),[]) then
                   memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo54';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='غـــردايـــة يوم ';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='غـــردايـــة يوم ';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo54;designation=غـــردايـــة يوم '
                    end;

memoxx:=f_edit_mandat.frxReport1.FindObject('Memo31') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ?  ? ';
if f_edit_mandat.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_mandat','Memo31']),[]) then
                    memoxx.Text:=trim(f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_mandat.SimpleDataSet_parameters.Append;
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_mandat';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo31';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('designation').AsString:='الفصيلة';
                        f_edit_mandat.SimpleDataSet_parameters.FieldByName('libellear').AsString:='110';
                        f_edit_mandat.SimpleDataSet_parameters.Post;s1:='x';
                      //  f_edit_mandat.SimpleDataSet_parameters.ApplyUpdates(-1);
                        f_parameters.edit1.Text:='forme=f_etat_mandat;champ=Memo31;designation=الفصيلة'
                    end;
   if s1='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_mandat.SimpleDataSet_parameters;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"�tat mandat, validez ou resaisissez les nouvelles donn�es ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                   end;

end;

procedure Tf_edit_mandat.fs_dsClick(Sender: TObject);
begin
  avant_imp_fastreport;
    frxReport1.DesignReport();
    frxReport1.ShowReport;
    print.enabled:=false;bpdf.enabled:=false;fs.enabled:=false; fs_ds.enabled:=false;
     preview.enabled:=false;
     esc.enabled:=false;
     // fin.enabled:=true;
     dbgrid1.enabled:=true;
     dbnavigator1.enabled:=true;
end;

procedure Tf_edit_mandat.fastr(Sender: TObject);
begin
    avant_imp_fastreport;
    frxReport1.ShowReport;
    print.enabled:=false;bpdf.enabled:=false;fs.enabled:=false;
     preview.enabled:=false;
     esc.enabled:=false;
     // fin.enabled:=true;
     dbgrid1.enabled:=true;
     dbnavigator1.enabled:=true;fs_ds.enabled:=false;
end;

procedure Tf_edit_mandat.TOPDF(Sender: TObject);
begin
     aPDF := TQRPDFDocumentFilter.Create('report.pdf');
     aPDF.TextEncoding:=ASCIIEncoding;// := Utf8Encoding;
     f_etat_mandat.quickrep1.ExportToFilter( aPDF);
     aPDF.Free;
     print.enabled:=false;bpdf.enabled:=false; fs.enabled:=false;
     preview.enabled:=false;
     esc.enabled:=false;
     // fin.enabled:=true;
     dbgrid1.enabled:=true;
     dbnavigator1.enabled:=true;  fs_ds.enabled:=false;
end;

procedure Tf_edit_mandat.cancel(Sender: TObject);
begin
   bpdf.enabled:=false; fs.enabled:=false;fs_ds.enabled:=false;
   print.enabled:=false;
   preview.enabled:=false;
   esc.enabled:=false;
 //  fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;

procedure Tf_edit_mandat.clic(Sender: TObject);
begin
     with f_edit_etat_virement do begin
    imp.enabled:=false;
    ecran.enabled:=false;
     end;

  if f_edit_etat_virement.WindowState=wsMinimized then f_edit_etat_virement.WindowState:=wsMaximized ;
  f_edit_etat_virement.visible:=true;
end;

procedure Tf_edit_mandat.PreviewClick(Sender: TObject);
begin
   PrintDialog1.Execute;
   f_etat_mandat.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_mandat.quickrep1.PrevShowThumbs:=false;
   f_etat_mandat.quickrep1.PrevShowSearch:=false;
   f_etat_mandat.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_mandat.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_mandat.quickrep1.ShowProgress:=true;
  // f_etat_mandat.quickrep1.BringToFront;
  // f_etat_mandat.quickrep1.PreviewModeless;
  // f_etat_mandat.quickrep1.ShowProgress:=true;
   f_etat_mandat.quickrep1.PreviewModal;
   bpdf.enabled:=false;    fs_ds.enabled:=false;
   print.enabled:=false;
   preview.enabled:=false;
   esc.enabled:=false;
  // fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;

procedure Tf_edit_mandat.TOPrINT(Sender: TObject);
begin
   PrintDialog1.Execute;
   f_etat_mandat.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_mandat.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_mandat.quickrep1.print;
   print.enabled:=false;bpdf.enabled:=false;fs.enabled:=false;fs_ds.enabled:=false;
   preview.enabled:=false;
   esc.enabled:=false;
  // fin.enabled:=true;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;



procedure Tf_edit_mandat.refresh(Sender: TObject);
begin
    simpledataset_parameters.Refresh
end;

procedure Tf_edit_mandat.non_lecture_seul(Sender: TObject;
  var Action: TCloseAction);
begin
  f_dm.clientdataset_fournisseur.Close;
  f_dm.clientdataset_fournisseur.masterfields:='';
  f_dm.clientdataset_fournisseur.mastersource:=nil;
  f_dm.clientdataset_fournisseur.Open;
end;

procedure Tf_edit_mandat.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = d�finition actuelle de l'�cran
   D := 768; // diviseur = d�finition de l'�cran � la conception
 //  ScaleBy(M, D);
 //  Realign;
end;

procedure Tf_edit_mandat.onerror(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
       Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure Tf_edit_mandat.ongetvalue(const VarName: string; var Value: Variant);
begin
      If VarName='lettre' then  Value:='edit1.text';
end;

procedure Tf_edit_mandat.pop(Sender: TObject);
begin
   if dbgrid3.Visible then dbgrid3.Visible:=false else dbgrid3.Visible:=true;
   if dbnavigator2.Visible then dbnavigator2.Visible:=false else dbnavigator2.Visible:=true;
   if label3.Visible then label3.Visible:=false else label3.Visible:=true;
end;

procedure Tf_edit_mandat.ppp(Sender: TfrxReportComponent);
var
   Memo1: TfrxMemoView;
begin
     Memo1 := frxReport1.FindObject('Memo1') as TfrxMemoView;




end;

procedure Tf_edit_mandat.seek_mandat(Sender: TObject);
begin
   if edit1.text<>'' then
     f_dm.sm.locate('mandat',strtoint(trim(edit1.text)),[loPartialKey]);
end;

procedure Tf_edit_mandat.SpeedButton1Click(Sender: TObject);
begin
   with f_edit_avis do begin
       lignes.Close;clientdataset_lignes.Close;
       papier.visible:=false ;
       un_avis.visible:=false;
       tous_les_avis.visible:=false;
       dbgrid5.visible:=false;
       DBNavigator3.visible:=false;
       Label2.visible:=false;  end;

      if f_edit_avis.WindowState=wsMinimized then  f_edit_avis.WindowState:=wsMaximized ;
      f_edit_avis.visible:=true;
end;

procedure Tf_edit_mandat.SpeedButton2Click(Sender: TObject);
begin
    with f_edit_etat_virement do begin
        imp.enabled:=false;
        ecran.enabled:=false;
     end;

  if f_edit_etat_virement.WindowState=wsMinimized then f_edit_etat_virement.WindowState:=wsMaximized ;
  f_edit_etat_virement.visible:=true;
end;

procedure Tf_edit_mandat.BitBtn1Click(Sender: TObject);
begin
    f_etat.quickrep1.preview
end;

end.
