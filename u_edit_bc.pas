unit u_edit_bc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,printers,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Vcl.Buttons,QRPrev,qrprntr,QRPDFFilt,QRwebFilt,QRexport,QRXMLSFilt,
  Data.DB, Data.DBXFirebird, Datasnap.DBClient, SimpleDS, frxClass, frxDesgn,Unit_function_and_procedure,
  frxDBSet, frxDCtrl,variants, frxTableObject;

type
  Tf_edit_bc = class(TForm)
    PrintDialog1: TPrintDialog;
    QRPDFFilter1: TQRPDFFilter;
    simpledataset_parameters: TSimpleDataSet;
    DataSource1: TDataSource;
    QRHTMLFilter1: TQRHTMLFilter;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Panel5: TPanel;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBNavigator1: TDBNavigator;
    ww: TEdit;
    DBGrid1: TDBGrid;
    cb: TCheckBox;
    num: TEdit;
    Label1: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Fin: TButton;
    bxls: TButton;
    Button1: TButton;
    fs: TButton;
    fs_ds: TButton;
    ECRAN: TButton;
    EDITER: TSpeedButton;
    Panel13: TPanel;
    procedure EditerClick(Sender: TObject);
    procedure EcranClick(Sender: TObject);
    procedure FinClick(Sender: TObject);
    procedure Etat(Sender: TObject);
    procedure on_create(Sender: TObject);
    procedure seek(Sender: TObject);
    procedure pdf(Sender: TObject);
    procedure aficher(Sender: TObject);
    procedure TOPDF(Sender: TObject);
    procedure TOxls(Sender: TObject);
    procedure fsClick(Sender: TObject);
    procedure fs_dsClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_edit_bc: Tf_edit_bc;v:word;Memoxx:TFrxMemoview;
  aPDF : TQRPDFDocumentFilter;
  rtf: TQRrtfFilter;
  x:real;s,s2:string;
  DataPage: TfrxDataPage;Page,Page2: TfrxReportPage;Band: TfrxBand;pageheader,pageheader1: Tfrxpageheader;
  DataBand: TfrxMasterData;
  Memo: TfrxMemoView;base,chield:TfrxReport;

implementation

uses main,u_etat_bc, u_etat_bc_1,u_dm,u_etat_bc_sans_avoir_10,u_etat_bc_sans_avoir_23,
  u_parameters, u_parameters_etat_x;

{$R *.DFM}



procedure initialiser_etat_bc_sans_avoir_10;
begin
 montant:=0.0;  tva:=0.0;   xx:=0.0; av:=0.0;//report:=0.0;
  if  not f_edit_bc.cb.Checked then tot:=0.0; //  f_dm.SIMPLEdataset_bc_lignes.first;
 with f_etat_bc_sans_avoir_10 do begin
     n1.caption:='     '; n2.caption:='     ';n3.caption:='     '; n4.caption:='     ';
     n5.caption:='     '; n6.caption:='     ';n7.caption:='     '; n8.caption:='     ';
     n9.caption:='     '; n10.caption:='     ';
     l1.caption:='                                             ';
     u1.caption:='                 ';
     p1.caption:='                 ';
     q1.caption:='                 ';
     m1.caption:='                   ';
     l2.caption:='                                             ';
     u2.caption:='                 ';
     p2.caption:='                 ';
     q2.caption:='                 ';
     m2.caption:='                   ';
     l3.caption:='                                             ';
     u3.caption:='                 ';
     p3.caption:='                 ';
     q3.caption:='                 ';
     m3.caption:='                   ';
     l4.caption:='                                             ';
     u4.caption:='                 ';
     p4.caption:='                 ';
     q4.caption:='                 ';
     m4.caption:='                   ';
     l5.caption:='                                             ';
     u5.caption:='                 ';
     p5.caption:='                 ';
     q5.caption:='                 ';
     m5.caption:='                   ';
     l6.caption:='                                             ';
     u6.caption:='                 ';
     p6.caption:='                 ';
     q6.caption:='                 ';
     m6.caption:='                   ';
     l7.caption:='                                             ';
     u7.caption:='                 ';
     p7.caption:='                 ';
     q7.caption:='                 ';
     m7.caption:='                   ';
     l8.caption:='                                             ';
     u8.caption:='                 ';
     p8.caption:='                 ';
     q8.caption:='                 ';
     m8.caption:='                   ';
     l9.caption:='                                             ';
     u9.caption:='                 ';
     p9.caption:='                 ';
     q9.caption:='                 ';
     m9.caption:='                   ';
     l10.caption:='                                             ';
     u10.caption:='                 ';
     p10.caption:='                 ';
     q10.caption:='                 ';
     m10.caption:='                   ';
     qtva.Caption:='      ';qtv.caption:='                                    ';
     g1.caption:='                 ';
     g2.caption:='            ';
     g3.caption:='                   ';

     s_en_l.Caption:='                                                                     ';
     c1.caption:='     ';  c2.Caption:='     ';c3.Caption:='     ';//c4.Caption:='     ';
     c5.Caption:='     ';c6.Caption:='     ';
   end;
end;

procedure initialiser_etat_bc_sans_avoir_23;
begin
 montant:=0.0;   tva:=0.0;   xx:=0.0; av:=0.0; // report:=0.0;
  if  not f_edit_bc.cb.Checked then tot:=0.0; //  f_dm.SIMPLEdataset_bc_lignes.first;
 with f_etat_bc_sans_avoir_23 do begin
      n1.caption:='     '; n2.caption:='     ';n3.caption:='     '; n4.caption:='     ';
      n5.caption:='     '; n6.caption:='     ';n7.caption:='     '; n8.caption:='     ';
      n9.caption:='     '; n10.caption:='     ';n11.caption:='     ';n12.caption:='     ';
      n13.caption:='     '; n14.caption:='     ';n15.caption:='     ';n16.caption:='     ';
      n17.caption:='     '; n18.caption:='     ';n19.caption:='     ';n20.caption:='     ';
      n21.caption:='     '; n22.caption:='     ';
      l1.caption:='                                             ';
      u1.caption:='                 ';
      p1.caption:='                 ';
      q1.caption:='                 ';
      m1.caption:='                   ';
      l2.caption:='                                             ';
      u2.caption:='                 ';
      p2.caption:='                 ';
      q2.caption:='                 ';
      m2.caption:='                   ';
      l3.caption:='                                             ';
      u3.caption:='                 ';
      p3.caption:='                 ';
      q3.caption:='                 ';
      m3.caption:='                   ';
      l4.caption:='                                             ';
      u4.caption:='                 ';
      p4.caption:='                 ';
      q4.caption:='                 ';
      m4.caption:='                   ';
      l5.caption:='                                             ';
      u5.caption:='                 ';
      p5.caption:='                 ';
      q5.caption:='                 ';
      m5.caption:='                   ';
      l6.caption:='                                             ';
      u6.caption:='                 ';
      p6.caption:='                 ';
      q6.caption:='                 ';
      m6.caption:='                   ';
      l7.caption:='                                             ';
      u7.caption:='                 ';
      p7.caption:='                 ';
      q7.caption:='                 ';
      m7.caption:='                   ';
      l8.caption:='                                             ';
      u8.caption:='                 ';
      p8.caption:='                 ';
      q8.caption:='                 ';
      m8.caption:='                   ';
      l9.caption:='                                             ';
      u9.caption:='                 ';
      p9.caption:='                 ';
      q9.caption:='                 ';
      m9.caption:='                   ';
      l10.caption:='                                             ';
      u10.caption:='                 ';
      p10.caption:='                 ';
      q10.caption:='                 ';
      m10.caption:='                   ';
      l11.caption:='                                             ';
      u11.caption:='                 ';
      p11.caption:='                 ';
      q11.caption:='                 ';
      m11.caption:='                   ';
      l12.caption:='                                             ';
      u12.caption:='                 ';
      p12.caption:='                 ';
      q12.caption:='                 ';
      m12.caption:='                   ';
      l13.caption:='                                             ';
      u13.caption:='                 ';
      p13.caption:='                 ';
      q13.caption:='                 ';
      m13.caption:='                   ';
      l14.caption:='                                             ';
      u14.caption:='                 ';
      p14.caption:='                 ';
      q14.caption:='                 ';
      m14.caption:='                   ';
      l15.caption:='                                             ';
      u15.caption:='                 ';
      p15.caption:='                 ';
      q15.caption:='                 ';
      m15.caption:='                   ';
      l16.caption:='                                             ';
      u16.caption:='                 ';
      p16.caption:='                 ';
      q16.caption:='                 ';
      m16.caption:='                   ';
      l17.caption:='                                             ';
      u17.caption:='                 ';
      p17.caption:='                 ';
      q17.caption:='                 ';
      m17.caption:='                   ';
      l18.caption:='                                             ';
      u18.caption:='                 ';
      p18.caption:='                 ';
      q18.caption:='                 ';
      m18.caption:='                   ';
      l19.caption:='                                             ';
      u19.caption:='                 ';
      p19.caption:='                 ';
      q19.caption:='                 ';
      m19.caption:='                   ';
      l20.caption:='                                             ';
      u20.caption:='                 ';
      p20.caption:='                 ';
      q20.caption:='                 ';
      m20.caption:='                   ';
      l21.caption:='                                             ';
      u21.caption:='                 ';
      p21.caption:='                 ';
      q21.caption:='                 ';
      m21.caption:='                   ';
      l22.caption:='                                             ';
      u22.caption:='                 ';
      p22.caption:='                 ';
      q22.caption:='                 ';
      m22.caption:='                   ';

      c1.caption:='     ';  c2.Caption:='     ';c3.Caption:='     ';//c4.Caption:='     ';
      c5.Caption:='     ';c6.Caption:='     ';
   end;
end;



procedure initialiser;
begin
 montant:=0.0;   tva:=0.0;   xx:=0.0; av:=0.0;
  if  not f_edit_bc.cb.Checked then tot:=0.0; //  f_dm.SIMPLEdataset_bc_lignes.first;
 with f_etat_bc do begin
   n1.caption:='     '; n2.caption:='     ';n3.caption:='     '; n4.caption:='     ';
  n5.caption:='     '; n6.caption:='     ';n7.caption:='     '; n8.caption:='     ';
  n9.caption:='     '; n10.caption:='     ';
  l1.caption:='                                             ';
  u1.caption:='                 ';
  p1.caption:='                 ';
  q1.caption:='                 ';
  m1.caption:='                   ';
   l2.caption:='                                             ';
  u2.caption:='                 ';
  p2.caption:='                 ';
  q2.caption:='                 ';
  m2.caption:='                   ';
   l3.caption:='                                             ';
  u3.caption:='                 ';
  p3.caption:='                 ';
  q3.caption:='                 ';
  m3.caption:='                   ';
   l4.caption:='                                             ';
  u4.caption:='                 ';
  p4.caption:='                 ';
  q4.caption:='                 ';
  m4.caption:='                   ';
   l5.caption:='                                             ';
  u5.caption:='                 ';
  p5.caption:='                 ';
  q5.caption:='                 ';
  m5.caption:='                   ';
   l6.caption:='                                             ';
  u6.caption:='                 ';
  p6.caption:='                 ';
  q6.caption:='                 ';
  m6.caption:='                   ';
   l7.caption:='                                             ';
  u7.caption:='                 ';
  p7.caption:='                 ';
  q7.caption:='                 ';
  m7.caption:='                   ';
  l8.caption:='                                             ';
  u8.caption:='                 ';
  p8.caption:='                 ';
  q8.caption:='                 ';
  m8.caption:='                   ';
   l9.caption:='                                             ';
  u9.caption:='                 ';
  p9.caption:='                 ';
  q9.caption:='                 ';
  m9.caption:='                   ';
   l10.caption:='                                             ';
  u10.caption:='                 ';
  p10.caption:='                 ';
  q10.caption:='                 ';
  m10.caption:='                   ';
   qtva.Caption:='      ';qtv.caption:='                                    ';
    g1.caption:='                 ';
  g2.caption:='            ';
 g3.caption:='                   ';
 g5.caption:='                   ';
  g4.caption:='                   ';
  pp.caption:='                   ';
   s_en_l.Caption:='                                                                     ';
 c1.caption:='     ';  c2.Caption:='     ';c3.Caption:='     ';//c4.Caption:='     ';
 c5.Caption:='     ';c6.Caption:='     ';
   end;
end;
procedure Tf_edit_bc.EditerClick(Sender: TObject);
begin
   PrintDialog1.Execute;
   f_etat_bc.quickrep1.Zoom:=100;
   f_etat_bc.quickrep1.PrevShowThumbs:=false;
   f_etat_bc.quickrep1.PrevShowSearch:=false;
   f_etat_bc.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_bc.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_bc.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_bc.quickrep1.ShowProgress:=true;

   f_etat_bc_sans_avoir_10.quickrep1.Zoom:=100;
   f_etat_bc_sans_avoir_10.quickrep1.PrevShowThumbs:=false;
   f_etat_bc_sans_avoir_10.quickrep1.PrevShowSearch:=false;
   f_etat_bc_sans_avoir_10.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_bc_sans_avoir_10.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_bc_sans_avoir_10.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_bc_sans_avoir_10.quickrep1.ShowProgress:=true;

   f_etat_bc_sans_avoir_23.quickrep1.Zoom:=100;
   f_etat_bc_sans_avoir_23.quickrep1.PrevShowThumbs:=false;
   f_etat_bc_sans_avoir_23.quickrep1.PrevShowSearch:=false;
   f_etat_bc_sans_avoir_23.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_bc_sans_avoir_23.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_bc_sans_avoir_23.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_bc_sans_avoir_23.quickrep1.ShowProgress:=true;

   total:=0.0;totaltva:=0.0; tot:=0.0;j:=1;report:=0.0;
   n:=0;m:=0;
   while not f_dm.simpledataset_bc_lignes.eof do  begin
         if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then n:=n+1;
          f_dm.simpledataset_bc_lignes.next
        end;
   m:=n;
   bool:=true;


   f_dm.simpledataset_bc_lignes.First;

   if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat>0  then begin
     while not f_dm.simpledataset_bc_lignes.eof do  begin
           initialiser; bool:=true;
           f_etat_bc.quickrep1.Print;
          end;
                               end;

  if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat=0  then begin
   while not f_dm.simpledataset_bc_lignes.eof do  begin
           bool:=true;v:=n;

              if ((n<=10) and (n>0)) then begin initialiser_etat_bc_sans_avoir_10;f_etat_bc_sans_avoir_10.quickrep1.Print;end;
              if (n>22) or ((n>10) and (n<=23)) then  begin initialiser_etat_bc_sans_avoir_23;f_etat_bc_sans_avoir_23.quickrep1.Print;end;

             // if ((n>10) and (n<=23)) then
             //   begin initialiser_etat_bc_sans_avoir_23;f_etat_bc_sans_avoir_23.quickrep1.PreviewModal;end;
        end;
   end;

   editer.enabled:=false;
   ecran.enabled:=false;  button1.enabled:=false; bxls.enabled:=false;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;



procedure Tf_edit_bc.aficher(Sender: TObject);
begin
   if dbgrid3.Visible then dbgrid3.Visible:=false else dbgrid3.Visible:=true;
   if dbnavigator3.Visible then dbnavigator3.Visible:=false else dbnavigator3.Visible:=true;
   if label3.Visible then label3.Visible:=false else label3.Visible:=true;
end;



procedure Tf_edit_bc.EcranClick(Sender: TObject);

begin

   PrintDialog1.Execute;
   f_etat_bc.quickrep1.Zoom:=100;
   f_etat_bc.quickrep1.PrevShowThumbs:=false;
   f_etat_bc.quickrep1.PrevShowSearch:=false;
   f_etat_bc.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_bc.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_bc.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_bc.quickrep1.ShowProgress:=true;

   f_etat_bc_sans_avoir_10.quickrep1.Zoom:=100;
   f_etat_bc_sans_avoir_10.quickrep1.PrevShowThumbs:=false;
   f_etat_bc_sans_avoir_10.quickrep1.PrevShowSearch:=false;
   f_etat_bc_sans_avoir_10.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_bc_sans_avoir_10.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_bc_sans_avoir_10.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_bc_sans_avoir_10.quickrep1.ShowProgress:=true;

   f_etat_bc_sans_avoir_23.quickrep1.Zoom:=100;
   f_etat_bc_sans_avoir_23.quickrep1.PrevShowThumbs:=false;
   f_etat_bc_sans_avoir_23.quickrep1.PrevShowSearch:=false;
   f_etat_bc_sans_avoir_23.quickrep1.PrevInitialZoom:=qrZoom100;
   f_etat_bc_sans_avoir_23.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
   f_etat_bc_sans_avoir_23.quickrep1.PrinterSettings.Copies:=Printer.Copies;
   f_etat_bc_sans_avoir_23.quickrep1.ShowProgress:=true;

   total:=0.0;totaltva:=0.0; tot:=0.0;j:=1;report:=0.0;
   n:=0;m:=0;
   while not f_dm.simpledataset_bc_lignes.eof do  begin
         //  if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then n:=n+1;
         n:=n+1;
           f_dm.simpledataset_bc_lignes.next
        end;
   m:=n;
   bool:=true;


   f_dm.simpledataset_bc_lignes.First;

   if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat>0  then begin
     while not f_dm.simpledataset_bc_lignes.eof do  begin
           initialiser; bool:=true;
           f_etat_bc.quickrep1.PreviewModal;
          end;
                               end;

  if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat=0  then begin
   while not f_dm.simpledataset_bc_lignes.eof do  begin
           bool:=true;v:=n;

              if ((n<=10) and (n>0)) then begin
                  initialiser_etat_bc_sans_avoir_10;f_etat_bc_sans_avoir_10.quickrep1.PreviewModal;
                  f_etat_bc_sans_avoir_10.quickrep1.prepare;
                aPDF := TQRPDFDocumentFilter.Create('report.pdf');
                aPDF.FontHandling := fhAutoEmbed;
                apdf.TextEncoding:=utf8encoding;
                f_etat_bc_sans_avoir_10.quickrep1.ExportToFilter(TQRpdfDocumentFilter.Create('REPORT.pdf'));
              //    f_etat_bc_sans_avoir_10.quickrep1.ExportToFilter(apdf);
               //   aPDF.Free;

              end;
              if (n>22) or ((n>10) and (n<=23)) then  begin initialiser_etat_bc_sans_avoir_23;f_etat_bc_sans_avoir_23.quickrep1.PreviewModal;end;

             // if ((n>10) and (n<=23)) then
             //   begin initialiser_etat_bc_sans_avoir_23;f_etat_bc_sans_avoir_23.quickrep1.PreviewModal;end;
        end;
   end;

   editer.enabled:=false;
   ecran.enabled:=false; button1.enabled:=false; bxls.enabled:=false;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;

end;


procedure  avant_imp_fastreport;
begin
    f_edit_bc.frxReport1.LoadFromFile('bc1.fr3');

    if f_dm.clientdataset_fournisseur.locate('benificiaire',
         vararrayof([f_dm.simpledataset_bc.fieldbyname('fournisseur').asstring]),[]) then begin
                 memoxx:=f_edit_bc.frxReport1.FindObject('f1') as TfrxMemoView;
                 memoxx.text:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('nom').asstring);
                 memoxx:=f_edit_bc.frxReport1.FindObject('f2') as TfrxMemoView;
                 memoxx.text:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('entreprise').asstring);
                 memoxx:=f_edit_bc.frxReport1.FindObject('f4') as TfrxMemoView;
                 memoxx.text:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('adresse').asstring);
                 memoxx:=f_edit_bc.frxReport1.FindObject('f5') as TfrxMemoView;
                 memoxx.text:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('telephone').asstring);
                 memoxx:=f_edit_bc.frxReport1.FindObject('f6') as TfrxMemoView;
                 memoxx.text:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('rc').asstring);
                 memoxx:=f_edit_bc.frxReport1.FindObject('f7') as TfrxMemoView;
                 memoxx.text:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('nf').asstring);
                 memoxx:=f_edit_bc.frxReport1.FindObject('f9') as TfrxMemoView;
                 memoxx.text:=TRIM(f_dm.clientdataset_fournisseur.fieldbyname('ai').asstring);
                 memoxx:=f_edit_bc.frxReport1.FindObject('f10') as TfrxMemoView;
                 memoxx.text:=trim(f_dm.clientdataset_fournisseur.fieldbyname('BANQUE').asstring)
                      +' C. N� '+trim(f_dm.clientdataset_fournisseur.fieldbyname('COMPTE').asstring);
         end;
      
     // calcule
     f_dm.SimpleDataSet_bc_lignes.First;
     x:=0;
     while not f_dm.SimpleDataSet_bc_lignes.Eof do begin
         x:=x+ f_dm.SimpleDataSet_bc_lignes.FieldByName('pu').AsFloat*f_dm.SimpleDataSet_bc_lignes.FieldByName('qt').AsFloat;
         f_dm.SimpleDataSet_bc_lignes.next
     end;
     if (f_dm.SimpleDataSet_bc.Fieldbyname('TVA').asfloat)>0 then
          x:=x+x*(f_dm.SimpleDataSet_bc.Fieldbyname('TVA').asfloat)/100;
     if (f_dm.SimpleDataSet_bc.Fieldbyname('avoir').asfloat)>0 then
          x:=x-f_dm.SimpleDataSet_bc.Fieldbyname('avoir').asfloat;

     f_dm.SimpleDataSet_bc_lignes.First;

     //if  f_edit_bc.total.Fields[0].asstring<>'' then

   
     str(x:15:2,s1);
      memoxx:=f_edit_bc.frxReport1.FindObject('tenl') as TfrxMemoView;
    s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
    if s2<>'00' then s2:=' '+s2+' رقــم' else s2:='';                   //  رقــم 97 تــاريخ 2018/09/23
    if (x<100000000) then  memoxx.Text:=somme_en_lettre(s)+s2 else  memoxx.Text:=Convert(strtoint(s))+s2;

   decodedate(f_dm.SimpleDataSet_bc.Fieldbyname('dates').asdatetime,annee,mois,jour);
   memoxx:=f_edit_bc.frxReport1.FindObject('Memo9') as TfrxMemoView;
   memoxx.Text:=' رقــم ' +trim(f_dm.SimpleDataSet_bc.Fieldbyname('bc1').asstring)+' تــاريخ '+
   Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);



 s1:='';
   // INFORMATIONS PROPRES A UNE INSTALLATION ....

    memoxx:=f_edit_bc.frxReport1.FindObject('Memo7') as TfrxMemoView;
    memoxx.Text:=' ? ? ? ? ?  ? ';
    if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','memo7']),[]) then
                    memoxx.Text:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo7';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='Republique Algérienne démocratique et populaire';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة';
                        f_edit_bc.SimpleDataSet_parameters.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=memo7;designation=Republique Algérienne démocratique et populaire'
                    end;

  memoxx:=f_edit_bc.frxReport1.FindObject('Memo79') as TfrxMemoView;
  memoxx.Text:=' ? ? ? ? ?  ? ';
    if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','memo79']),[]) then
                    memoxx.Text:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo79';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='Ghardaia Le';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='غـــردايـــــة يوم';
                        f_edit_bc.SimpleDataSet_parameters.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=memo79;designation=Ghardaia Le';
                    end;



memoxx:=f_edit_bc.frxReport1.FindObject('Memo24') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ? ? ?  ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','memo24']),[]) then
                    memoxx.Text:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='memo24';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='drt';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــة';
                        f_edit_bc.SimpleDataSet_parameters.Post; s1:='x' ;

                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=memo24;designation=drt'
                    end;

memoxx:=f_edit_bc.frxReport1.FindObject('Memo23') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ? ? ?  ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','Memo23']),[]) then
                   memoxx.Text:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo23';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='110 347)';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='110 347';
                        f_edit_bc.SimpleDataSet_parameters.Post;
                        s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=Memo23;designation=110 347) '
                    end;

memoxx:=f_edit_bc.frxReport1.FindObject('Memo27') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ? ? ?  ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','Memo27']),[]) then
                  memoxx.Text:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo27';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='adresse drt';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='ســاحة خـمــيســتي غــردايـــــــة';
                        f_edit_bc.SimpleDataSet_parameters.Post;
                        s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=Memo27;designation=adresse drt  '
                    end;
memoxx:=f_edit_bc.frxReport1.FindObject('Memo67') as TfrxMemoView;
memoxx.Text:=' ? ? ? ? ? ? ?  ? ? ? ';
if f_edit_bc.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_etat_bc','Memo67']),[]) then
                  memoxx.Text:=trim(f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_bc.SimpleDataSet_parameters.Append;
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_etat_bc';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('champ').AsString:='Memo67';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('designation').AsString:='tel';
                        f_edit_bc.SimpleDataSet_parameters.FieldByName('libellear').AsString:='029 28 53 70';
                        f_edit_bc.SimpleDataSet_parameters.Post;
                        s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_etat_bc;champ=Memo67;designation=029 28 53 70  '
                    end;




   if s1='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_bc.SimpleDataSet_parameters;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"état BC, validez ou resaisissez les nouvelles donn�es ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                   end;

end;

procedure Tf_edit_bc.FinClick(Sender: TObject);
begin
    f_edit_bc.visible:=false
end;

procedure Tf_edit_bc.fsClick(Sender: TObject);
begin
 avant_imp_fastreport;
  frxReport1.ShowReport;
 editer.enabled:=false;
 ecran.enabled:=false; button1.enabled:=false; bxls.enabled:=false;
 dbgrid1.enabled:=true;
 dbnavigator1.enabled:=true;
 fs.enabled:=false;fs_ds.enabled:=false;


   // f_edit_bc.frxReport1.LoadFromFile('bc1.fr3');
    // f_edit_bc.frxReport2.DesignReport();
   // Page2 :=f_edit_bc.frxReport2.FindObject('Page1') as TfrxReportPage;

 {   //Page2 := frxReport2.Pages[1] as TfrxReportPage;
//    clear report
   frxReport1.Clear;
   //{ add dataset to list of datasets accessible in report
   frxReport1.DataSets.Add(frxDBDataSet1);
   frxReport1.DataSets.Add(frxDBDataSet2);


// add "Data" page

DataPage := TfrxDataPage.Create(frxReport1);
//{ add page
 Page := TfrxReportPage.Create(frxReport1);
 Page :=Page2;
 //{ create a unique name
 Page.CreateUniqueName;
// memoxx:=f_edit_eng.frxReport1.FindObject('qrdate') as TfrxMemoView;
 pageheader1:= f_edit_bc.frxReport2.FindObject('pageheader1') as Tfrxpageheader;
 pageheader := Tfrxpageheader.Create(Page);
 pageheader1.CreateUniqueName;
 pageheader := pageheader1;
 //{ set sizes of fields, paper and orientation to defaults }
 // Page:=Page2;
 {
//  Page.SetDefaults;
//   change paper orientation
  Page.Orientation := poLandscape;
//  add report title band

Band := TfrxReportTitle.Create(Page);

Band.CreateUniqueName;

// only �Top� coordinate and height of band need setting    both in pixels

Band.Top := 0;

Band.Height := 20;



// add object to report title band

Memo := TfrxMemoView.Create(Band);

Memo.CreateUniqueName;

Memo.Text := 'Hello FastReport!';

Memo.Height := 20;

// this object will be stretched to band�s width

Memo.Align := baWidth;



//{ add masterdata band

DataBand := TfrxMasterData.Create(Page);

DataBand.CreateUniqueName;

DataBand.DataSet := frxDBDataSet2;

//{ �Top� should be greater than previously added band�s top + height

DataBand.Top := 100;

DataBand.Height := 20;



//{ add object on masterdata
Memo := TfrxMemoView.Create(DataBand);
Memo.CreateUniqueName;
//{ connect to data
Memo.DataSet := frxDBDataSet2;
Memo.DataField := 'ligne';
Memo.SetBounds(0, 0, 100, 20);
//  align text to object�s right margin
Memo.HAlign := haRight;

 Memo := TfrxMemoView.Create(DataBand);
Memo.CreateUniqueName;
{ connect to data
Memo.DataSet := frxDBDataSet2;
Memo.DataField := 'lib';
Memo.SetBounds(101, 0, 100, 20);
 { align text to object�s right margin
Memo.HAlign := haRight;       }

// show report  }


end;

procedure Tf_edit_bc.fs_dsClick(Sender: TObject);
begin
 avant_imp_fastreport;
 frxReport1.DesignReport();
editer.enabled:=false;
 ecran.enabled:=false; button1.enabled:=false; bxls.enabled:=false;
 dbgrid1.enabled:=true;
 dbnavigator1.enabled:=true;
 fs.enabled:=false;fs_ds.enabled:=false;
end;

procedure Tf_edit_bc.on_create(Sender: TObject);
var
   M, D : Integer;
begin
    M := Screen.height; // multiplicateur = d�finition actuelle de l'�cran
   D := 768; // diviseur = d�finition de l'�cran � la conception
 //  ScaleBy(M, D);
 //  Realign;
end;

procedure Tf_edit_bc.pdf(Sender: TObject);
  var
aPDF : TQRPDFDocumentFilter;
begin
aPDF := TQRPDFDocumentFilter.Create('report.pdf');
aPDF.FontHandling := fhAutoEmbed;
//repform.
f_etat_bc_sans_avoir_10.QuickRep1.ExportToFilter(aPDF);
aPDF.Free;
end;


procedure Tf_edit_bc.seek(Sender: TObject);
begin
    if (num.text<>'') then  f_dm.simpleDataSet_bc.locate('bc1',trim(num.text),[loPartialKey]);
end;

procedure Tf_edit_bc.TOxls(Sender: TObject);
var
   AExportFilter : TQRHTMLFilter;
begin
f_etat_bc_sans_avoir_10.quickrep1.ExportToFilter(TQRXLSFilter.Create('report.xls'));
//  f_etat_bc_sans_avoir_10.quickrep1.ExportToFilter(AExportFilter)
end;
  { total:=0.0;totaltva:=0.0; tot:=0.0;j:=1;report:=0.0;
   n:=0;m:=0;
   while not f_dm.simpledataset_bc_lignes.eof do  begin
         if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then n:=n+1;
          f_dm.simpledataset_bc_lignes.next
        end;
   m:=n;
   bool:=true;


   f_dm.simpledataset_bc_lignes.First;

   if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat>0  then begin
     while not f_dm.simpledataset_bc_lignes.eof do  begin
           initialiser; bool:=true;
           f_etat_bc.quickrep1.Print;
          end;
                               end;


  //aPDF.FontHandling := fhAutoEmbed;
 // aPDF.TextEncoding :='UTF-8';
  if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat=0  then begin
   while not f_dm.simpledataset_bc_lignes.eof do  begin
           bool:=true;v:=n;

              if ((n<=10) and (n>0)) then begin initialiser_etat_bc_sans_avoir_10;
                                               try
                                                 f_etat_bc_sans_avoir_10.quickrep1.ExportToFilter(QRHTMLFilter1)
                                               finally
                                                  AExportFilter.Free;
                                               end;

              if (n>22) or ((n>10) and (n<=23)) then  begin
                                                initialiser_etat_bc_sans_avoir_23;
                                               // aPDF.NewPage;
                                                f_etat_bc_sans_avoir_23.quickrep1.ExportToFilter( aPDF);
                                                end;

             // if ((n>10) and (n<=23)) then
             //   begin initialiser_etat_bc_sans_avoir_23;f_etat_bc_sans_avoir_23.quickrep1.PreviewModal;end;

   end;

   editer.enabled:=false;
   ecran.enabled:=false; button1.enabled:=false;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;
end;   }

procedure Tf_edit_bc.TOPDF(Sender: TObject);
begin
   total:=0.0;totaltva:=0.0; tot:=0.0;j:=1;report:=0.0;
   n:=0;m:=0;
   while not f_dm.simpledataset_bc_lignes.eof do  begin
         if (f_dm.simpledataset_bc_lignes.fieldbyname('pu').asfloat)>0 then n:=n+1;
          f_dm.simpledataset_bc_lignes.next
        end;
   m:=n;
   bool:=true;


   f_dm.simpledataset_bc_lignes.First;

   if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat>0  then begin
     while not f_dm.simpledataset_bc_lignes.eof do  begin
           initialiser; bool:=true;
           f_etat_bc.quickrep1.Print;
          end;
                               end;

  aPDF := TQRPDFDocumentFilter.Create('report.pdf');
  aPDF.TextEncoding := Utf8Encoding;
  //aPDF.FontHandling := fhAutoEmbed;
 // aPDF.TextEncoding :='UTF-8';
  if  f_dm.simpledataset_bc.FieldByName('avoir').AsFloat=0  then begin
   while not f_dm.simpledataset_bc_lignes.eof do  begin
           bool:=true;v:=n;

              if ((n<=10) and (n>0)) then begin initialiser_etat_bc_sans_avoir_10;
                                               // aPDF.NewPage;

                                                f_etat_bc_sans_avoir_10.quickrep1.ExportToFilter( aPDF) ;end;
              if (n>22) or ((n>10) and (n<=23)) then  begin
                                                initialiser_etat_bc_sans_avoir_23;
                                               // aPDF.NewPage;
                                                f_etat_bc_sans_avoir_23.quickrep1.ExportToFilter( aPDF);
                                                end;

             // if ((n>10) and (n<=23)) then
             //   begin initialiser_etat_bc_sans_avoir_23;f_etat_bc_sans_avoir_23.quickrep1.PreviewModal;end;
        end;
   end;
   aPDF.Free;
   editer.enabled:=false;
   ecran.enabled:=false; bxls.enabled:=false; button1.enabled:=false;
   dbgrid1.enabled:=true;
   dbnavigator1.enabled:=true;


end;



procedure Tf_edit_bc.Etat(Sender: TObject);
begin
   initialiser;initialiser_etat_bc_sans_avoir_23; initialiser_etat_bc_sans_avoir_10;
   f_dm.SIMPLEdataset_bc_lignes.first;
   editer.Enabled:=true;
   ecran.enabled:=true;  button1.enabled:=true; bxls.enabled:=true; fs.enabled:=true;fs_ds.enabled:=true;
   dbgrid1.enabled:=false;
   dbnavigator1.enabled:=false;
  // fin.enabled:=false
end;

end.
