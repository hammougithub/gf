unit u_etats;

interface

uses
  printers,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,shellapi, Vcl.Mask,QRPrev,qrprntr,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Data.FMTBcd, Data.SqlExpr, Data.DBXFirebird, QRwebFilt,QRexport,QRXMLSFilt,QRPDFFilt,
  Datasnap.DBClient, SimpleDS, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,  frxClass, frxDesgn,Unit_function_and_procedure,
  frxDBSet, frxDCtrl, frxTableObject;

type
  Tf_etats = class(TForm)
    PrintDialog1: TPrintDialog;
    q_mdm: TSQLQuery;
    simpledataset_parameters1: TSimpleDataSet;
    simpledataset_parameters3: TSimpleDataSet;
    simpledataset_parameters2: TSimpleDataSet;
    DataSource1: TDataSource;
    SimpleDataSet_parameters4: TSimpleDataSet;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button2: TButton;
    Button1: TButton;
    ecran_fr: TButton;
    screen: TSpeedButton;
    print: TSpeedButton;
    topdf: TButton;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Label1: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel6: TPanel;
    Edit1: TEdit;
    Button3: TButton;
    xdate: TMaskEdit;
    xdate1: TMaskEdit;
    Panel7: TPanel;
    cb1: TCheckBox;
    Label2: TLabel;
    Panel8: TPanel;
    DBNavigator2: TDBNavigator;
    procedure ecran(Sender: TObject);
    procedure screenClick(Sender: TObject);
    procedure e1(Sender: TObject);
    procedure e2(Sender: TObject);
    procedure e4(Sender: TObject);
    procedure e5(Sender: TObject);
    procedure pr(Sender: TObject);
    procedure eee5(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure e9(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure oncreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure refresh(Sender: TObject);
    procedure op(Sender: TObject);
    procedure topdfClick(Sender: TObject);
    procedure ecran_frClick(Sender: TObject);
    


  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etats: Tf_etats;c:word;
    aPDF : TQRPDFDocumentFilter;
    rtf: TQRrtfFilter;
implementation

{$R *.dfm}

uses u_etat_credits, u_tableau1, u_tableau3, MAIN, U_situation,u_situation_a3,
  u_etat_consommation, u_etat_excel, u_dm, u_situation_a3_6, u_administration,
  u_situation_a3_1, U_situation_a3_2, U_situation_a3_3, u_situation_a3_4,
  u_situation_a3_5;

procedure Tf_etats.Button1Click(Sender: TObject);
begin
        ShellExecute(Handle,'Open','C:\Windows\system32\control.exe ' ,'printers',Nil,SW_SHOWNORMAL);
end;

procedure Tf_etats.Button2Click(Sender: TObject);
begin
   if c=7 then datasource1.DataSet:=simpledataset_parameters1;
   if c=3 then datasource1.DataSet:=simpledataset_parameters2;
   if c=4 then datasource1.DataSet:=simpledataset_parameters3;
 //  if label3.Visible then label3.Visible:=false else label3.Visible:=true;
   if dbgrid3.Visible then dbgrid3.Visible:=false else dbgrid3.Visible:=true;
   if dbnavigator2.Visible then dbnavigator2.Visible:=false else dbnavigator2.Visible:=true
end;


procedure Tf_etats.op(Sender: TObject);
begin
      FormatSettings1:= TFormatSettings.Create('fr-FR');
      FormatSettings1.DateSeparator:='/';
      FormatSettings1.ShortDateFormat:='dd/MM/yyyy';
      xdate.Text:=datetostr(strtodate(copy(f_etats.xdate1.text,1,2)+'/'+copy(f_etats.xdate1.text,4,2)+'/'+copy(f_etats.xdate1.text,7,4),FormatSettings1),FormatSettings1);
   // edit2.Text:='01/'+copy(f_etats.xdate.text,4,2)+'/'+copy(f_etats.xdate.text,7,4);
  // edit1.Text:=datetostr(strtodate('01/'+copy(f_etats.xdate.text,4,2)+'/'+copy(f_etats.xdate.text,7,4),FormatSettings1),FormatSettings1);
  // xdate.text:=trim(jj.Text)+'/'+trim(mm.Text)+'/'+trim(yyyy.Text)

end;



procedure Tf_etats.e1(Sender: TObject);
begin
  // if xdate
    c:=1; screen.enabled:=true;print.enabled:=true; topdf.enabled:=true;
end;

procedure Tf_etats.e2(Sender: TObject);
begin
   c:=3; screen.enabled:=true;print.enabled:=true;topdf.enabled:=true;
end;

procedure Tf_etats.e4(Sender: TObject);
begin
   c:=4; screen.enabled:=true;print.enabled:=true;topdf.enabled:=true;
end;

procedure Tf_etats.e5(Sender: TObject);
begin
   // 06 colonnes maximum dans la situation ...
     // Vérifier dans  le fichier structure que structure_situation in ['1','2','3','4','5','6']
         f_dm.ClientDataSet_adm.first;
         i:=strtoint(trim(f_dm.ClientDataSet_adm.FieldByName('structure_situation').AsString));
         while not  f_dm.ClientDataSet_adm.Eof do begin
         if (strtoint(trim(f_dm.ClientDataSet_adm.FieldByName('structure_situation').AsString))>i) then
             i:=strtoint(trim(f_dm.ClientDataSet_adm.FieldByName('structure_situation').AsString));
             f_dm.ClientDataSet_adm.Next;
                                                  end;
         edit1.text:=inttostr(i);
         if i>6 then
                begin showmessage('Dans  le fichier structure il faut que structure_situation < 6');
                if f_administration.WindowState=wsMinimized then   f_administration.WindowState:=wsMaximized ;
                   f_administration.visible:=true;
                end
               else
                   begin c:=5; screen.enabled:=true;print.enabled:=true; topdf.enabled:=true; end
end;

procedure Tf_etats.e9(Sender: TObject);
begin
          f_etat_consommation.c1.CLOSE;
          f_etat_consommation.sql_chap.CLOSE;
          f_etat_consommation.c1.Open;
          f_etat_consommation.sql_chap.Open;
          c:=7; screen.enabled:=true;print.enabled:=true;topdf.enabled:=true;ecran_fr.enabled:=true;
          DBGRID1.visible:=true;
end;

procedure Tf_etats.ecran(Sender: TObject);
begin
      FormatSettings1:= TFormatSettings.Create('fr-FR');
      FormatSettings1.DateSeparator:='/';
      FormatSettings1.ShortDateFormat:='dd/MM/yyyy';
      xdate.Text:=trim(datetostr(strtodate(copy(f_etats.xdate1.text,1,2)+'/'+copy(f_etats.xdate1.text,4,2)+'/'+copy(f_etats.xdate1.text,7,4),FormatSettings1),FormatSettings1));
      //datetostr(strtodate('01/'+copy(f_etats.xdate1.text,4,2)+'/'+copy(f_etats.xdate1.text,7,4),FormatSettings1),FormatSettings1);
     screen.cursor := crHourGlass;

     case c of
          1:begin
              PrintDialog1.Execute;
              f_etat_credit.quickrep1.PrevShowThumbs:=false;
              f_etat_credit.quickrep1.PrevShowSearch:=false;
              f_etat_credit.quickrep1.PrevInitialZoom:=qrZoom100;
              f_etat_credit.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_etat_credit.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_etat_credit.quickrep1.ShowProgress:=true;
              screen.cursor := crHourGlass;
              f_etat_credit.quickrep1.preview;
           end;
           7:begin
              // METTRE LES CHAPITRES DANS TSTRING
              PrintDialog1.Execute;

              f_etat_consommation.quickrep1.PrevShowThumbs:=false;
              f_etat_consommation.quickrep1.PrevShowSearch:=false;
              f_etat_consommation.quickrep1.PrevInitialZoom:=qrZoom100;
              f_etat_consommation.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_etat_consommation.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_etat_consommation.quickrep1.ShowProgress:=true;
              screen.cursor := crHourGlass;
              DBGRID1.visible:=false;
              f_etat_consommation.quickrep1.preview;
           end;
          3:begin
              PrintDialog1.Execute;
              f_tableau1.quickrep1.PrevShowThumbs:=false;
              f_tableau1.quickrep1.PrevShowSearch:=false;
              f_tableau1.quickrep1.PrevInitialZoom:=qrZoom100;
              f_tableau1.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_tableau1.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_tableau1.quickrep1.ShowProgress:=true;
              screen.cursor := crHourGlass;
              f_tableau1.quickrep1.preview;
           end;
          4:begin
              PrintDialog1.Execute;
              f_tableau3.quickrep1.PrevShowThumbs:=false;
              f_tableau3.quickrep1.PrevShowSearch:=false;
              f_tableau3.quickrep1.PrevInitialZoom:=qrZoom100;
              f_tableau3.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_tableau3.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_tableau3.quickrep1.ShowProgress:=true;
              screen.cursor := crHourGlass;
              f_tableau3.quickrep1.preview;
           end;
          5:begin
              PrintDialog1.Execute;screen.cursor := crHourGlass;
               case i of
                 1:begin
                      f_situation_a3_1.QRBand4.Height:=22;
                      f_situation_a3_1.quickrep1.PrevShowThumbs:=false;edit1.Text:='5';
                      f_situation_a3_1.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_1.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_1.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_1.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_1.quickrep1.ShowProgress:=true;
                      f_situation_a3_1.quickrep1.PreviewModal;
                   end;
                   2:begin
                      f_situation_a3_2.QRBand4.Height:=22;
                      f_situation_a3_2.quickrep1.PrevShowThumbs:=false;edit1.Text:='5';
                      f_situation_a3_2.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_2.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_2.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_2.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_2.quickrep1.ShowProgress:=true;
                      f_situation_a3_2.quickrep1.PreviewModal;
                   end;
                 3:begin
                   f_situation_a3_3.QRBand4.Height:=22;
                      f_situation_a3_3.quickrep1.PrevShowThumbs:=false;edit1.Text:='5';
                      f_situation_a3_3.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_3.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_3.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_3.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_3.quickrep1.ShowProgress:=true;
                      f_situation_a3_3.quickrep1.PreviewModal;
                   end;

                   4:begin
                   f_situation_a3_4.QRBand4.Height:=22;
                      f_situation_a3_4.quickrep1.PrevShowThumbs:=false;edit1.Text:='5';
                      f_situation_a3_4.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_4.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_4.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_4.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_4.quickrep1.ShowProgress:=true;
                      f_situation_a3_4.quickrep1.PreviewModal;
                   end;
                 5:begin
                   f_situation_a3_5.QRBand4.Height:=22;
                      f_situation_a3_5.quickrep1.PrevShowThumbs:=false;edit1.Text:='5';
                      f_situation_a3_5.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_5.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_5.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_5.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_5.quickrep1.ShowProgress:=true;
                      f_situation_a3_5.quickrep1.PreviewModal;
                   end;
                 6:begin
                   f_situation_a3_6.QRBand4.Height:=22;
                      f_situation_a3_6.quickrep1.PrevShowThumbs:=false;edit1.Text:='5';
                      f_situation_a3_6.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_6.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_6.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_6.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_6.quickrep1.ShowProgress:=true;
                      f_situation_a3_6.quickrep1.PreviewModal;
                   end;
            end;   end;
          6:begin
               PrintDialog1.Execute;screen.cursor := crHourGlass;
               case i of
                 1:begin
                      f_situation_a3_1.QRBand4.Height:=0; edit1.Text:='6';
                      f_situation_a3_1.quickrep1.PrevShowThumbs:=false;
                      f_situation_a3_1.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_1.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_1.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_1.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_1.quickrep1.ShowProgress:=true;
                      f_situation_a3_1.quickrep1.PreviewModal;
                   end;
                   2:begin
                      f_situation_a3_2.QRBand4.Height:=0;
                      f_situation_a3_2.quickrep1.PrevShowThumbs:=false;
                      f_situation_a3_2.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_2.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_2.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_2.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_2.quickrep1.ShowProgress:=true;
                      f_situation_a3_2.quickrep1.PreviewModal;
                   end;
                 3:begin
                      f_situation_a3_3.QRBand4.Height:=0;
                      f_situation_a3_3.quickrep1.PrevShowThumbs:=false;
                      f_situation_a3_3.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_3.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_3.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_3.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_3.quickrep1.ShowProgress:=true;
                      f_situation_a3_3.quickrep1.PreviewModal;
                   end;
                 4:begin
                      f_situation_a3_4.QRBand4.Height:=0;
                      f_situation_a3_4.quickrep1.PrevShowThumbs:=false;
                      f_situation_a3_4.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_4.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_4.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_4.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_4.quickrep1.ShowProgress:=true;
                      f_situation_a3_4.quickrep1.PreviewModal;
                   end;
                 5:begin
                      f_situation_a3_5.QRBand4.Height:=0;
                      f_situation_a3_5.quickrep1.PrevShowThumbs:=false;
                      f_situation_a3_5.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_5.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_5.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_5.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_5.quickrep1.ShowProgress:=true;
                      f_situation_a3_5.quickrep1.PreviewModal;
                   end;
                 6:begin
                      f_situation_a3_6.QRBand4.Height:=0;
                      f_situation_a3_6.quickrep1.PrevShowThumbs:=false;
                      f_situation_a3_6.quickrep1.PrevShowSearch:=false;
                      f_situation_a3_6.quickrep1.PrevInitialZoom:=qrZoom100;
                      f_situation_a3_6.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
                      f_situation_a3_6.quickrep1.PrinterSettings.Copies:=Printer.Copies;
                      f_situation_a3_6.quickrep1.ShowProgress:=true;
                      f_situation_a3_6.quickrep1.PreviewModal;
                   end;
                end;end;
     end;
    screen.enabled:=false;print.enabled:=false;topdf.enabled:=false;
    Screen.Cursor:=crdefault;//le curseur redevient celui par défaut
end;

 procedure  avant_imp_fastreport;
begin
    f_etats.frxReport1.LoadFromFile('bc1.fr3');
end;

procedure Tf_etats.ecran_frClick(Sender: TObject);
begin
        FormatSettings1:= TFormatSettings.Create('fr-FR');
      FormatSettings1.DateSeparator:='/';
      FormatSettings1.ShortDateFormat:='dd/MM/yyyy';
      xdate.Text:=trim(datetostr(strtodate(copy(f_etats.xdate1.text,1,2)+'/'+copy(f_etats.xdate1.text,4,2)+'/'+copy(f_etats.xdate1.text,7,4),FormatSettings1),FormatSettings1));
      //datetostr(strtodate('01/'+copy(f_etats.xdate1.text,4,2)+'/'+copy(f_etats.xdate1.text,7,4),FormatSettings1),FormatSettings1);
     screen.cursor := crHourGlass;

     case c of
          7:begin
              // METTRE LES CHAPITRES DANS TSTRING
              PrintDialog1.Execute;
               f_etats.frxReport1.LoadFromFile('etat_consommation.fr3');
               f_etats.frxReport1.ShowReport;
              screen.cursor := crHourGlass;
              DBGRID1.visible:=false;

           end; END;
           screen.enabled:=false;print.enabled:=false;topdf.enabled:=false;  ecran_fr.enabled:=false;
    Screen.Cursor:=crdefault;//le curseur redevient celui par défaut
end;

procedure Tf_etats.pr(Sender: TObject);
begin
      screen.cursor := crHourGlass;
     case c of
          1:begin
              PrintDialog1.Execute;
              f_etat_credit.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_etat_credit.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_etat_credit.quickrep1.ShowProgress:=true;
              f_etat_credit.quickrep1.print;
           end;
          3:begin
              PrintDialog1.Execute;
              f_tableau1.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_tableau1.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_tableau1.quickrep1.ShowProgress:=true;
              f_tableau1.quickrep1.print;
           end;
          4:begin
              PrintDialog1.Execute;
              f_tableau3.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_tableau3.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_tableau3.quickrep1.ShowProgress:=true;
              f_tableau3.quickrep1.print;
           end;
          5:begin
              PrintDialog1.Execute;
              f_situation.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_situation.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_situation.quickrep1.ShowProgress:=true;
              f_situation.quickrep1.Print;
           end;
           6:begin
              PrintDialog1.Execute;
            ///  f_situation_a3.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
            //  f_situation_a3.quickrep1.PrinterSettings.Copies:=Printer.Copies;
             // f_situation_a3.quickrep1.ShowProgress:=true;
              //screen.cursor := crHourGlass;
            //  f_situation_a3.quickrep1.Print;
           end;
           7:begin
              // METTRE LES CHAPITRES DANS TSTRING
              PrintDialog1.Execute;
              f_etat_consommation.quickrep1.PrevShowThumbs:=false;
              f_etat_consommation.quickrep1.PrevShowSearch:=false;
              f_etat_consommation.quickrep1.PrevInitialZoom:=qrZoom100;
              f_etat_consommation.quickrep1.PrinterSettings.PrinterIndex:=Printer.PrinterIndex;
              f_etat_consommation.quickrep1.PrinterSettings.Copies:=Printer.Copies;
              f_etat_consommation.quickrep1.ShowProgress:=true;
              screen.cursor := crHourGlass;
              DBGRID1.visible:=false;
              f_etat_consommation.quickrep1.print;
           end;
     end;
    screen.enabled:=false;print.enabled:=false;topdf.enabled:=false;
    Screen.Cursor:=crdefault;//le curseur redevient celui par défaut
end;

procedure Tf_etats.refresh(Sender: TObject);
begin
//   showmessage('Aller à CREDITS AFFECTES et mettre le champ Plus_moins="P" (plus) en "N" des crédits de Date antérieur et soustraire les credits en Moins des crédits  ="N"...');
   xdate1.text:='31/12/'+trim(f_principale.gestion.text);
   simpledataset_parameters1.refresh;
   simpledataset_parameters2.refresh;
   simpledataset_parameters3.refresh;
end;

procedure Tf_etats.screenClick(Sender: TObject);
begin
        screen.cursor := crHourGlass;
        case c of
          1:f_etat_credit.quickrep1.preview;
          3:f_tableau1.quickrep1.preview;
          4:f_tableau3.quickrep1.preview;
        end;
      screen.enabled:=false;print.enabled:=false;topdf.enabled:=false;
      Screen.Cursor:=crdefault;//le curseur redevient celui par défaut
end;

procedure Tf_etats.SpeedButton7Click(Sender: TObject);
begin
        f_etat_excel.zdate.text:='31/12/'+trim(f_principale.gestion.text);
       if f_etat_excel.Visible=true then
           f_etat_excel.BringToFront
        else f_etat_excel.visible:=true
end;

procedure Tf_etats.topdfClick(Sender: TObject);
begin
     aPDF := TQRPDFDocumentFilter.Create('report.pdf');
     aPDF.TextEncoding := Utf8Encoding;
     case c of
          1:f_etat_credit.quickrep1.ExportToFilter( aPDF);
          3:f_tableau1.quickrep1.ExportToFilter( aPDF);

          4:f_tableau3.quickrep1.ExportToFilter( aPDF);
          5:f_situation.quickrep1.ExportToFilter( aPDF);
          6:;
          7:begin
              DBGRID1.visible:=false;
              f_etat_consommation.quickrep1.ExportToFilter( aPDF);
           end;
     end;
     aPDF.Free;
    screen.enabled:=false;print.enabled:=false; topdf.enabled:=false;
    Screen.Cursor:=crdefault;//le curseur redevient celui par défaut
end;


procedure Tf_etats.eee5(Sender: TObject);
begin
     // 06 colonnes maximum dans la situation ...
     // Vérifier dans  le fichier structure que structure_situation in ['1','2','3','4','5','6']
         f_dm.ClientDataSet_adm.first;
         i:=strtoint(trim(f_dm.ClientDataSet_adm.FieldByName('structure_situation').AsString));
         while not  f_dm.ClientDataSet_adm.Eof do begin
         if (strtoint(trim(f_dm.ClientDataSet_adm.FieldByName('structure_situation').AsString))>i) then
             i:=strtoint(trim(f_dm.ClientDataSet_adm.FieldByName('structure_situation').AsString));
             f_dm.ClientDataSet_adm.Next;
                                                  end;
         edit1.text:=inttostr(i);
         if i>6 then
                begin showmessage('Dans  le fichier structure il faut que structure_situation < 6');
                if f_administration.WindowState=wsMinimized then   f_administration.WindowState:=wsMaximized ;
                   f_administration.visible:=true;
                end
               else
                   begin c:=6; screen.enabled:=true;print.enabled:=true; topdf.enabled:=true; end
end;



procedure Tf_etats.oncreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
  // ScaleBy(M, D);
 //  Realign;
 //    Self.scaleBy(75,100);
end;


end.



