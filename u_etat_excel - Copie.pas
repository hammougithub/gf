unit u_etat_excel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask,activex,comobj,Excel2000, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, IBCustomDataSet,
  IBQuery;



type
  Tf_etat_excel = class(TForm)
    Button1: TButton;
    ZDATE: TMaskEdit;
    adoc1: TADOConnection;
    Edit1: TEdit;
    article: TSQLQuery;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    q_cre_affec: TSQLQuery;
    q_enplus: TSQLQuery;
    q_enmoins: TSQLQuery;
    q_mdm: TSQLQuery;
    q_reimp_ant: TSQLQuery;
    q_mda: TSQLQuery;
    q_mdms: TSQLQuery;
    q_reimp_du_mois: TSQLQuery;
    q_reimp: TSQLQuery;
    Button2: TButton;
    q_c_a: TSQLQuery;
    q_en_p: TSQLQuery;
    q_en_m: TSQLQuery;
    q_mde: TSQLQuery;
    q_mdm1: TSQLQuery;
    q_mde_eco: TSQLQuery;
    q_reimp1: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure credit(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_etat_excel: Tf_etat_excel;VersionExcel,s:string;
   Excel: TExcelApplication;
   xchapitre:string;
  Book: ExcelWorkbook;
  Sheet: ExcelWorksheet;
  UsedRange: ExcelRange;
  i, j: Integer;
  v: Variant;
  tca,tca1,tca2,tem,tem1,tep,tep1,mdrt,mdrt1,mdrt2,m47,m471,m472,REIMP,REIMP1,REIMP2,REIMP_ant:real;
   mto,mto1,mto2,m03,m031,m032,m30,m301,m302,m33,m331,m332,m11,m111,m112,tmde:real;
   tcax,taux:real;
   mda,mda1,mda2,mdm,mdm1,mdm2,cre_tot,taux1,taux2,x,tmdm:real;
implementation

{$R *.dfm}

uses u_dm, MAIN;





function GetExcelVersion: String;
var
  ClassID: tCLSID;
  strOLEObject: string;
  Excel: OleVariant;

begin
  result := '';
  strOLEObject := 'Excel.Application';

  if (CLSIDFromProgID(PWideChar(WideString(strOLEObject)), ClassID) = S_OK) then
  begin
    Excel := CreateOleObject(strOLEObject);
    result := Excel.Version;
  end;
end;


procedure Tf_etat_excel.Button1Click(Sender: TObject);
var my_ole_application: Variant; my_ole_workbook: Variant; my_worksheet: Variant ;
begin
       article.Open;
       VersionExcel := GetExcelVersion; // récupère la fersion d'excel sur le poste
       edit1.Text:=VersionExcel;

  try
    Excel.Visible[LOCALE_USER_DEFAULT] := True;
    Book := Excel.Workbooks.Add(EmptyParam, LOCALE_USER_DEFAULT) as ExcelWorkbook;
    Sheet := Book.Worksheets.Add(EmptyParam, EmptyParam, 1, EmptyParam, LOCALE_USER_DEFAULT) as ExcelWorksheet;
    sheet.Name:='tc_tw';

   tca:=0.0;tca1:=0.0;tca2:=0.0; reimp:=0.0;  reimp1:=0.0; reimp2:=0.0;
   mdrt:=0.0;mdrt1:=0.0;mdrt2:=0.0;
   m47:=0.0;m471:=0.0;m472:=0.0;
   m03:=0.0;m031:=0.0;m032:=0.0;
   m30:=0.0;m301:=0.0;m302:=0.0;
   m33:=0.0;m331:=0.0;m332:=0.0;
   m11:=0.0;m111:=0.0;m112:=0.0;
   mto:=0.0;mto1:=0.0;mto2:=0.0;
    tca:=0.0;tca1:=0.0;tca2:=0.0; reimp:=0.0;  reimp1:=0.0; reimp2:=0.0;
   mdrt:=0.0;mdrt1:=0.0;mdrt2:=0.0;
   m47:=0.0;m471:=0.0;m472:=0.0;
   m03:=0.0;m031:=0.0;m032:=0.0;
   m30:=0.0;m301:=0.0;m302:=0.0;
   m33:=0.0;m331:=0.0;m332:=0.0;
   m11:=0.0;m111:=0.0;m112:=0.0;
   mto:=0.0;mto1:=0.0;mto2:=0.0;

    sheet.Range['A5', 'S101'].Borders.LineStyle := 1;
    sheet.Range['A1', 'A200'].ColumnWidth := 7;
    sheet.Range['A5', 'S7'].HorizontalAlignment := -4108; //xlCenter
    sheet.Range['A8', 'B110'].HorizontalAlignment := -4108;
    sheet.Range['b1', 'b200'].ColumnWidth := 4;
    sheet.Range['c8', 's200'].NumberFormat:='# ##0' + DECIMALSEPARATOR + '00';

    sheet.Range['c8', 's200'].ColumnWidth :=15;
    sheet.Range['d8', 'e200'].ColumnWidth :=9;
    sheet.Range['i8', 'j200'].ColumnWidth :=9;
    sheet.Range['s8', 's200'].ColumnWidth :=8;

    sheet.Cells.Item[1,1].Value := 'MINISTERE DES FINANCES.';
    Sheet.Cells.Item[2,1].Value := 'DIRECTION GENERALE DE LA COMPTABILITE.';
    Sheet.Cells.Item[3,1].Value := 'DIRECTION REGIONALE DU TRESOR A GHARDAIA.';
    sheet.Cells.Item[2,8].Value :='SITUATION DES CREDITS  ARRETEE AU '+trim(zdate.text);
    article.First;i:=8;
    sheet.Cells.Item[6,1].Value :='CHAP';
    sheet.Cells.Item[6,2].Value :='ART';
    sheet.Cells.Item[5,3].Value :='CREDITS';
    sheet.Cells.Item[6,3].Value :='INITIAUX';
    sheet.Cells.Item[5,4].Value :='     MOUVEMENT';
    sheet.Cells.Item[6,4].Value :='     D"ORDRE';
    sheet.Cells.Item[7,4].Value :='EN PLUS';
    sheet.Cells.Item[7,5].Value :='EN MOINS';

    sheet.Cells.Item[5,6].Value :='DOTATION';
    sheet.Cells.Item[6,6].Value :='REVISEE';
    sheet.Cells.Item[7,6].Value :='  (A)';

    sheet.Cells.Item[5,7].Value :='DEPENSES';
    sheet.Cells.Item[6,7].Value :='ANTERIEURS';

    sheet.Cells.Item[5,8].Value :='DEPENSES';
    sheet.Cells.Item[6,8].Value :='DU MOIS';

    sheet.Cells.Item[5,9].Value :='DEPENSES';
    sheet.Cells.Item[6,9].Value :='ANNULEES';

    sheet.Cells.Item[5,10].Value :='MONTANTS';
    sheet.Cells.Item[6,10].Value :='REIMPUTES';

    sheet.Cells.Item[5,11].Value :='TOTAL DES';
    sheet.Cells.Item[6,11].Value :='DEPENSES';
    sheet.Cells.Item[7,11].Value :='   (B)';

    sheet.Cells.Item[5,14].Value :=' REPARTITION DES DEPENSES PAR STRUCTURE';
    sheet.Cells.Item[6,12].Value :=' DRT';
    sheet.Cells.Item[7,12].Value :='SIEGE';

     sheet.Cells.Item[6,13].Value :='TW-TC';
    sheet.Cells.Item[7,13].Value :='GHARDAIA';
     sheet.Cells.Item[6,14].Value :='TW-TC';
    sheet.Cells.Item[7,14].Value :='LAGHOUAT';
     sheet.Cells.Item[6,15].Value :='TW-TC';
    sheet.Cells.Item[7,15].Value :='OUARGLA';
     sheet.Cells.Item[6,16].Value :='TW-TC';
    sheet.Cells.Item[7,16].Value :='TAMANRASSET';
    sheet.Cells.Item[6,17].Value :='TW-TC';
    sheet.Cells.Item[7,17].Value :='ILLIZI';

    sheet.Cells.Item[5,18].Value :='SOLDE';
    sheet.Cells.Item[6,18].Value :='DISPONIBLE';
    sheet.Cells.Item[7,18].Value :='C=A-B';

    sheet.Cells.Item[5,19].Value :=' %';
    sheet.Cells.Item[6,19].Value :=' B/A';

   while not article.Eof do begin
              xchapitre:=trim(article.Fieldbyname('chapitre').asstring);
              while trim(article.Fieldbyname('chapitre').asstring)=xchapitre do begin
                 sheet.Cells.Item[i,1].Value := trim(article.Fieldbyname('chapitre').asstring);//article.FieldValues['chapitre'];
                 s:=article.Fieldbyname('article').asstring;
                 sheet.Cells.Item[i,2].Value := s;//article.Fieldbyname('article').asstring;

                 //Ligne

                  q_cre_affec.close;
                  q_cre_affec.Params[0].AsString:=article.fieldByName('chapitre').asstring;
                  q_cre_affec.Params[1].AsString:=article.fieldByName('article').asstring;
                  q_cre_affec.Params[2].Asstring:=f_principale.gestion.text;
                  q_cre_affec.Open;
                  if  q_cre_affec.Fields[0].asstring<>'' then
                     begin
                        tca:=q_cre_affec.Fields[0].value;
                        tca1:=tca1+q_cre_affec.Fields[0].value;
                        tca2:=tca2+q_cre_affec.Fields[0].value;
                       sheet.Cells.Item[i,3].Value :=tca;
                     end;

                  q_enplus.close;
                  q_enplus.Params[0].AsString:=article.fieldByName('chapitre').asstring;
                  q_enplus.Params[1].AsString:=article.fieldByName('article').asstring;
                  q_enplus.Params[2].Asstring:=f_principale.gestion.text;
                  q_enplus.open;
                  if  q_enplus.Fields[0].asstring<>'' then
                     begin
                       tca:=tca+q_enplus.Fields[0].value;
                       tep:=tep+q_enplus.Fields[0].value;
                       tep1:=tep+q_enplus.Fields[0].value;
                       cre_tot:=cre_tot+q_enplus.Fields[0].value;
                       x:=q_enplus.Fields[0].value;
                       sheet.Cells.Item[i,4].Value :=x;
                     end;



                 q_enmoins.close;
                 q_enmoins.Params[0].AsString:=article.fieldByName('chapitre').asstring;
                 q_enmoins.Params[1].AsString:=article.fieldByName('article').asstring;
                 q_enmoins.Params[2].Asstring:=f_principale.gestion.text;
                 q_enmoins.open;

                 if  q_enmoins.Fields[0].asstring<>'' then
                     begin
                        tca:=tca-q_enmoins.Fields[0].value;
                        tem:=tem+q_enmoins.Fields[0].value;
                        tem1:=tem+q_enmoins.Fields[0].value;
                        cre_tot:=cre_tot-q_enmoins.Fields[0].value;
                        x:=q_enmoins.Fields[0].value ;
                        sheet.Cells.Item[i,5].Value:=x ;
                     end;

                if tca<>0.0 then sheet.Cells.Item[i,6].Value :=tca;
               //heet.Cells.Item[i,6].Value :=sheet.Cells.Item[i,5].Value+ sheet.Cells.Item[i,4].Value+sheet.Cells.Item[i,3].Value;
                //sheet.Cells.Item[i,6].formula:=sheet.Cells.Item[i,5].Value+ sheet.Cells.Item[i,4].Value';
               // MANDATS ANTERIEURS

              // REIMPUTATIONS ANTERIEURES
                REIMP_ant:=0.0; q_reimp_ant.close;
                q_reimp_ant.Params[0].AsString:=f_principale.gestion.text;
                q_reimp_ant.Params[1].Asstring:=article.fieldByName('chapitre').asstring;
                q_reimp_ant.Params[2].AsString:=article.fieldByName('article').asstring;
                q_reimp_ant.Params[3].Asdatetime:=strtodate('01/'+copy(zdate.text,4,7));

                q_reimp_ant.open;
                if  q_reimp_ant.Fields[0].asstring<>'' then
                    REIMP_ant:=q_REIMP_ant.Fields[0].value;

                mda:=0; q_mda.close;
                q_mda.Params[0].AsString:=f_principale.gestion.text;
                q_mda.Params[1].Asstring:=article.fieldByName('chapitre').asstring;
                q_mda.Params[2].AsString:=article.fieldByName('article').asstring;;
                q_mda.Params[3].Asdatetime:=strtodate('01/'+copy(zdate.text,4,7));
                q_mda.open;
                if  q_mda.Fields[0].asstring<>'' then  mda:=q_mda.Fields[0].value;

                // mandats et reimputations antérieures
                // METTRE A JOUR la valeur des mandats antérieurs avec les reimputations antérieures
                  mda:=mda+REIMP_ant;
                  if mda<>0.0 then sheet.Cells.Item[i,7].Value:=mda;
                  mda1:=mda1+mda;mda2:=mda2+mda;


                  // MANDATS DU MOIS
                   mdm:=0.0; q_mdms.close;
                   q_mdms.Params[0].AsString:=f_principale.gestion.text;
                   q_mdms.Params[1].Asstring:=article.fieldByName('chapitre').asstring;
                   q_mdms.Params[2].AsString:=article.fieldByName('article').asstring;
                   q_mdms.Params[3].Asdatetime:=strtodate(zdate.text);
                   q_mdms.Params[4].Asdatetime:=strtodate('01/'+copy(zdate.text,4,7));
                   q_mdms.open;
                   if  q_mdms.Fields[0].asstring<>'' then  mdm:=q_mdms.Fields[0].value;
                   mdm1:=mdm1+mdm;
                   mdm2:=mdm2+mdm;
                   if mda<>0.0 then sheet.Cells.Item[i,8].Value:=mdm;


                  // REIMPUTATIONS DU MOIS
                     REIMP:=0.0; q_reimp_du_mois.close;
                     q_reimp_du_mois.Params[0].AsString:=f_principale.gestion.text;
                     q_reimp_du_mois.Params[1].Asstring:=article.fieldByName('chapitre').asstring;
                     q_reimp_du_mois.Params[2].AsString:=article.fieldByName('article').asstring;
                     q_reimp_du_mois.Params[3].Asdatetime:=strtodate(zdate.text);
                     q_reimp_du_mois.Params[4].Asdatetime:=strtodate('01/'+copy(zdate.text,4,7));
                     q_reimp_du_mois.open;
                    if  q_reimp_du_mois.Fields[0].asstring<>'' then
                       REIMP:=q_REIMP_du_mois.Fields[0].value;
                     REIMP1:=REIMP1+reimp;
                     REIMP2:=REIMP2+reimp;


                    if REIMP<>0.0 then   sheet.Cells.Item[i,10].Value:=REIMP;

                    if mdm+mda+reimp<>0.0 then  sheet.Cells.Item[i,11].Value:=mdm+mda+reimp;


                    // les mandats pAr structure ////////////
                 // MANDATS DRT (antérieures et du mois)
                 // REIMPUTATION DRT (antérieures et du mois)
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=article.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='1';
                    q_reimp.Params[3].AsString:='1';
                    q_reimp.Params[4].AsString:=f_principale.gestion.text;
                    q_reimp.Params[5].Asdatetime:=strtodate(zdate.text);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;

         //  tcax:=0.0;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=article.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='1';
           q_mdm.Params[3].AsString:='1';
           q_mdm.Params[4].AsString:=f_principale.gestion.text;
           q_mdm.Params[5].Asdatetime:=strtodate(zdate.text);
           q_mdm.open;
          if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           mdrt:=tcax;
           mdrt1:=mdrt1+tcax;
           mdrt2:=mdrt2+tcax;
           if mdrt<>0.0 then sheet.Cells.Item[i,12].Value:= mdrt;



           // MANDATS TW 47
              // REIMPUTATION TW 47
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=article.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='2';
                    q_reimp.Params[3].AsString:='7';
                    q_reimp.Params[4].AsString:=f_principale.gestion.text;
                    q_reimp.Params[5].Asdatetime:=strtodate(zdate.text);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;

           //tcax:=0.0;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=article.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='2';
           q_mdm.Params[3].AsString:='7';
           q_mdm.Params[4].AsString:=f_principale.gestion.text;
           q_mdm.Params[5].Asdatetime:=strtodate(zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m47:=tcax;
           m471:=m471+tcax;
           m472:=m472+tcax;
           s:='            ';

           if m47<>0.0 then sheet.Cells.Item[i,13].Value:=m47;


         // MANDATS TW 03
             // REIMPUTATION TW 03
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=article.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='3';
                    q_reimp.Params[3].AsString:='8';
                    q_reimp.Params[4].AsString:=f_principale.gestion.text;
                    q_reimp.Params[5].Asdatetime:=strtodate(zdate.text);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;
           //tcax:=0.0;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=article.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='3';
           q_mdm.Params[3].AsString:='8';
           q_mdm.Params[4].AsString:=f_principale.gestion.text;
           q_mdm.Params[5].Asdatetime:=strtodate(zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m03:=tcax;
           m031:=m031+tcax;
           m032:=m032+tcax;
           s:='            ';

           if m03<>0.0 then sheet.Cells.Item[i,14]:=m03;


           // MANDATS TW 30

           // REIMPUTATION TW 30
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=article.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='4';
                    q_reimp.Params[3].AsString:='9';
                    q_reimp.Params[4].AsString:=f_principale.gestion.text;
                    q_reimp.Params[5].Asdatetime:=strtodate(zdate.text);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;
           //tcax:=0.0;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=article.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='4';
           q_mdm.Params[3].AsString:='9';
           q_mdm.Params[4].AsString:=f_principale.gestion.text;
           q_mdm.Params[5].Asdatetime:=strtodate(zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m30:=tcax;
           m301:=m301+tcax;
           m302:=m302+tcax;
           s:='            ';

           if m30<>0.0 then  sheet.Cells.Item[i,15].Value:=m30;


            // MANDATS TW 11
            // REIMPUTATION TW 47
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=article.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='6';
                    q_reimp.Params[3].AsString:='b';
                    q_reimp.Params[4].AsString:=f_principale.gestion.text;
                    q_reimp.Params[5].Asdatetime:=strtodate(zdate.text);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;
          // tcax:=0.0;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=article.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='6';
           q_mdm.Params[3].AsString:='b';
           q_mdm.Params[4].AsString:=f_principale.gestion.text;
           q_mdm.Params[5].Asdatetime:=strtodate(zdate.text);

           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m11:=tcax;
           m111:=m111+tcax;
           m112:=m112+tcax;
           s:='            ';

           if m11<>0.0 then sheet.Cells.Item[i,16].Value:= m11;

        // MANDATS TW 33
        // REIMPUTATION TW 33
                    tcax:=0.0;
                    q_REIMP.close;
                    q_reimp.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
                    q_reimp.Params[1].Asstring:=article.fieldByName('article').asstring;
                    q_reimp.Params[2].AsString:='5';
                    q_reimp.Params[3].AsString:='a';
                    q_reimp.Params[4].AsString:=f_principale.gestion.text;
                    q_reimp.Params[5].Asdatetime:=strtodate(zdate.text);
                    q_reimp.open;
                    if  q_reimp.Fields[0].asstring<>'' then tcax:=q_reimp.Fields[0].value;
           //tcax:=0.0;
           q_mdm.close;
           q_mdm.Params[0].Asstring:=article.fieldByName('chapitre').asstring;
           q_mdm.Params[1].Asstring:=article.fieldByName('article').asstring;
           q_mdm.Params[2].AsString:='5';
           q_mdm.Params[3].AsString:='a';
           q_mdm.Params[4].AsString:=f_principale.gestion.text;
           q_mdm.Params[5].Asdatetime:=strtodate(zdate.text);
           q_mdm.open;
           if  q_mdm.Fields[0].asstring<>'' then
               tcax:=tcax+q_mdm.Fields[0].value;


           m33:=tcax;
           m331:=m331+tcax;
           m332:=m332+tcax;
           s:='            ';

           if m33<>0.0 then sheet.Cells.Item[i,17].Value:=m33;

        // SOLDE DISPONIBLE

         s:='            ';
         if tca-mda-mdm-reimp<>0.0 then sheet.Cells.Item[i,18].Value:=tca-mda-mdm-reimp;


         // LE TAUX


        s1:='     ';
        if (tca<>0) AND ((mda+mdm+reimp) <>0) then begin
            taux:=((mda+mdm+reimp)/tca*100);
            str(taux:5:2,s1);
         end;
         sheet.Cells.Item[i,19].Value:=s1+' ';

                    article.Next; i:=i+1;
                        end;
               //  i:=i+1;
                 sheet.Cells.Item[i,1].Value :='TOTAL';

                 //TOTAL
                   if tca1<>0.0 then  sheet.Cells.Item[i,3].Value :=tca1;
                   if tep<>0.0 then  sheet.Cells.Item[i,4].Value :=tep;
                   if tem<>0.0 then  sheet.Cells.Item[i,5].Value :=teM;
                   if tca1-tem+tep<>0.0 then  sheet.Cells.Item[i,6].Value :=tca1+tep-tem;
                   if mda1<>0.0 then  sheet.Cells.Item[i,7].Value :=mda1;
                   if mdm1<>0.0 then  sheet.Cells.Item[i,8].Value :=mdm1;
                   if REIMP1<>0.0 then sheet.Cells.Item[i,10].Value :=REIMP1;
                   if mdm1+mda1+REIMP1<>0.0 then sheet.Cells.Item[i,11].Value := mdm1+mda1+REIMP1;
                   if mdrt1<>0.0 then sheet.Cells.Item[i,12].Value :=mdrt1;
                   if m471<>0.0 then sheet.Cells.Item[i,13].Value := m471;
                   if m031<>0.0 then sheet.Cells.Item[i,14].Value := m031;
                   if m301<>0.0 then sheet.Cells.Item[i,15].Value :=m301;
                   if m111<>0.0 then sheet.Cells.Item[i,16].Value :=m111;
                   if m331<>0.0 then sheet.Cells.Item[i,17].Value := m331;
                   if (tca1-tem+tep)-(mdm1+mda1+reimp1)<>0.0 then
                        sheet.Cells.Item[i,18].Value :=(tca1-tem+tep)-(mdm1+mda1+reimp1);

                  if ((tca1-tem+tep) <>0) AND ((mda1+mdm1+reimp1) <>0) then begin
                     taux:=(mda1+mdm1+reimp1)/(tca1-tem+tep)*100;
                    str(taux:5:2,s1);
                  end;
                 sheet.Cells.Item[i,19].Value :=s1+' ';

                 mda1:=0.0;mdm1:=0.0;tca1:=0.0;tem:=0.0;tep:=0.0;reimp1:=0.0;
                 m471:=0.0;mdrt1:=0.0;m031:=0.0;m301:=0.0;m111:=0.0;
                 m331:=0.0;
                 i:=i+1;
                end;
               //  i:=i+1;
                sheet.Cells.Item[i,1].Value :=' T.GENERAL';

                //TOTAL GENERAL

                if mdm1+mda1+REIMP1<>0.0 then sheet.Cells.Item[i,11].Value := mdm1+mda1+REIMP1;



                  if tca2<>0.0 then sheet.Cells.Item[i,3].Value :=tca2;
                  if tep1<>0.0 then sheet.Cells.Item[i,4].Value :=tep1;
                  if tem1<>0.0 then sheet.Cells.Item[i,5].Value :=tem1;
                  if tca2-tem1+tep1<>0.0 then  sheet.Cells.Item[i,6].Value :=tca2+tep1-tem1;
                  if mda2<>0.0 then sheet.Cells.Item[i,7].Value:=mda2;
                  if mdm2<>0.0 then  sheet.Cells.Item[i,8].Value :=mdm2;
                  if REIMP2<>0.0 then sheet.Cells.Item[i,10].Value :=REIMP2;

                  if mdm2+mda2<>0.0 then sheet.Cells.Item[i,11].Value :=mdm2+mda2;

                   if mdrt2<>0.0 then sheet.Cells.Item[i,12].Value :=mdrt2;
                   if m472<>0.0 then sheet.Cells.Item[i,13].Value := m472;
                   if m032<>0.0 then sheet.Cells.Item[i,14].Value := m032;
                   if m302<>0.0 then sheet.Cells.Item[i,15].Value :=m302;
                   if m112<>0.0 then sheet.Cells.Item[i,16].Value :=m112;
                   if m332<>0.0 then sheet.Cells.Item[i,17].Value := m332;
                   if (tca2-tem1+tep1)-(mdm2+mda2+reimp2)<>0.0 then
                     sheet.Cells.Item[i,18].Value :=(tca2-tem1+tep1)-(mdm2+mda2+reimp2);

        if ((tca2-tem1+tep1)<>0) AND ((mda2+mdm2+reimp2) <>0) then begin
            taux:=(mda2+mdm2+reimp2)/(tca2-tem1+tep1)*100;
            str(taux:5:2,s1);
         end;
        sheet.Cells.Item[i,19].Value :=s1+' ';
         i:=i+2;
        sheet.Cells.Item[i,2].Value :='VISA DU TRESORIER ';
        sheet.Cells.Item[i,16].Value :='VISA DU DIRECTEUR REGIONAL DU TRESOR';
        mda2:=0.0;mdm2:=0.0;tca2:=0.0;tem1:=0.0;tep1:=0.0;reimp2:=0.0;
        m472:=0.0;mdrt2:=0.0;m032:=0.0;m302:=0.0;m112:=0.0;
        m332:=0.0;
   { UsedRange := Sheet.UsedRange[LOCALE_USER_DEFAULT] as ExcelRange;
    for Row := 1 to UsedRange.Rows.Count do begin
      for Col := 1 to UsedRange.Columns.Count do begin
        v := UsedRange.Item[Row, Col].Value;
      end;
    end;   }
  finally
    Excel.Free;
  end;

end;

procedure Tf_etat_excel.credit(Sender: TObject);
begin
       article.Open;
       VersionExcel := GetExcelVersion; // récupère la fersion d'excel sur le poste
       edit1.Text:=VersionExcel;
       Excel := TExcelApplication.Create(nil);
  try
    Excel.Visible[LOCALE_USER_DEFAULT] := True;
    Book := Excel.Workbooks.Add(EmptyParam, LOCALE_USER_DEFAULT) as ExcelWorkbook;
    Sheet := Book.Worksheets.Add(EmptyParam, EmptyParam, 1, EmptyParam, LOCALE_USER_DEFAULT) as ExcelWorksheet;
    sheet.Name:='Etat_credit';

   tca:=0.0;tca1:=0.0;tca2:=0.0; reimp:=0.0;  reimp1:=0.0; reimp2:=0.0;

   mto:=0.0;mto1:=0.0;mto2:=0.0;
    tca:=0.0;tca1:=0.0;tca2:=0.0; reimp:=0.0;  reimp1:=0.0; reimp2:=0.0;
   mdrt:=0.0;mdrt1:=0.0;mdrt2:=0.0;

   mto:=0.0;mto1:=0.0;mto2:=0.0;  tmde:=0; tmdm:=0;

    sheet.Range['A6', 'k26'].Borders.LineStyle := 1;
    sheet.Range['h7', 'h7'].Borders.LineStyle :=0;
    sheet.Range['A1', 'A20'].ColumnWidth := 9;
    sheet.Range['b1', 'j20'].ColumnWidth :=14;
    sheet.Range['A6', 'k8'].HorizontalAlignment := -4108; //xlCenter
    //sheet.Range['A8', 'B110'].HorizontalAlignment := -4108;

    sheet.Range['b9', 'k30'].NumberFormat:='# ##0' + DECIMALSEPARATOR + '00';

    sheet.Range['k1', 'k20'].ColumnWidth :=8;
    sheet.Range['g1', 'g20'].ColumnWidth :=8;


    sheet.Cells.Item[1,1].Value := 'MINISTERE DES FINANCES.';
    Sheet.Cells.Item[2,1].Value := 'DIRECTION GENERALE DE LA COMPTABILITE.';
    Sheet.Cells.Item[3,1].Value := 'DIRECTION REGIONALE DU TRESOR A GHARDAIA.';
    sheet.Cells.Item[4,5].Value :='SITUATION DES CREDITS  ARRETEE AU '+trim(zdate.text);
    article.First;i:=9;
    sheet.Cells.Item[7,1].Value :='CHAPITRE';

    sheet.Cells.Item[6,2].Value :='CREDITS';
    sheet.Cells.Item[7,2].Value :='AFFECTES';
    sheet.Cells.Item[6,3].Value :='MOUVEMENT D"ORDRE DE VIREMENT';

    sheet.Cells.Item[7,3].Value :='EN PLUS';
    sheet.Cells.Item[7,4].Value :='EN MOINS';
    sheet.Cells.Item[7,5].Value :='DOT. DIVERS';
    sheet.Cells.Item[6,6].Value :='MONTANT DES' ;
    sheet.Cells.Item[7,6].Value :='DEPENSES';
    sheet.Cells.Item[8,6].Value :='ENGAGEES';

    sheet.Cells.Item[7,7].Value :='TAUX';

    sheet.Cells.Item[6,8].Value :='SOLDE DISPO-';
    sheet.Cells.Item[7,8].Value :='NIBLE APRES';
    sheet.Cells.Item[8,8].Value :='ENGAGEMENT';


    sheet.Cells.Item[6,9].Value :='MONTANT DES';
    sheet.Cells.Item[7,9].Value :='DEPENSES';
    sheet.Cells.Item[8,9].Value :='MONDATEES';


    sheet.Cells.Item[6,10].Value :='SOLDE DISPO-';
    sheet.Cells.Item[7,10].Value :='NIBLE APRES';
    sheet.Cells.Item[8,10].Value :='MONDATEMENT';

    sheet.Cells.Item[7,11].Value :='TAUX';


   tca1:=0;tep1:=0;tem1:=0;cre_tot:=0;

   while not article.Eof do begin
     //  sheet.Range['A6', 'k30'].Borders.LineStyle := 1;
       sheet.Cells.Item[i,1].Value := trim(article.Fieldbyname('chapitre').asstring);
       xchapitre:=trim(article.Fieldbyname('chapitre').asstring);
       tca:=0;tep:=0;tem:=0;

       q_c_a.close;
       q_c_a.Params[0].AsString:=article.fieldByName('chapitre').asstring;
       q_c_a.Params[1].Asstring:=f_principale.gestion.text;
       q_c_a.Open;
       if  q_c_a.Fields[0].asstring<>'' then
                     begin
                        tca:=q_c_a.Fields[0].value;
                        sheet.Cells.Item[i,2].Value :=tca;
                        tca1:=tca1+q_c_a.Fields[0].value;
                     end;


       q_en_p.close;
       q_en_p.Params[0].AsString:=article.fieldByName('chapitre').asstring;
       q_en_p.Params[1].Asstring:=f_principale.gestion.text;
       q_en_p.Open;
       if  q_en_p.Fields[0].asstring<>'' then
                     begin
                        tep:=q_en_p.Fields[0].value;
                        sheet.Cells.Item[i,3].Value :=tep;
                        tep1:=tep1+q_en_p.Fields[0].value;
                     end;

       q_en_m.close;
       q_en_m.Params[0].AsString:=article.fieldByName('chapitre').asstring;
       q_en_m.Params[1].Asstring:=f_principale.gestion.text;
       q_en_m.Open;
       if  q_en_m.Fields[0].asstring<>'' then
                     begin
                        tem:=q_en_m.Fields[0].value;
                        sheet.Cells.Item[i,4].Value :=tem;
                        tem1:=tem1+q_en_m.Fields[0].value;
                     end;
       if tca+tep-tem<>0 then sheet.Cells.Item[i,5].Value :=tca+tep-tem;

     //Engagement
       x:=0;
        q_mde_eco.close;
        q_mde_eco.Params[0].AsString:=article.fieldByName('chapitre').asstring;
        q_mde_eco.Params[1].Asstring:=f_principale.gestion.text;
        q_mde_eco.Params[2].Asdatetime:=strtodate(zdate.text);

        q_mde_eco.open;

        if  q_mde_eco.Fields[0].asstring<>'' then x:=x-(q_mde_eco.Fields[0].value);

        q_mde.close;
        q_mde.Params[0].AsString:=article.fieldByName('chapitre').asstring;
        q_mde.Params[1].Asstring:=f_principale.gestion.text;
        q_mde.Params[2].Asdatetime:=strtodate(zdate.text);

        q_mde.open;

        if  q_mde.Fields[0].asstring<>'' then x:=x+q_mde.Fields[0].value;

        if  x<>0 then
          begin
            tmde:=tmde+x;
            sheet.Cells.Item[i,6].Value :=x;
            if tca+tep-tem<>0.0 then
                  sheet.Cells.Item[i,7].Value :=x/(tca+tep-tem)*100;
          end;
        //Solde après engagement
        if  (tca+tep-tem-x)<>0 then sheet.Cells.Item[i,8].Value:=tca+tep-tem-x;

         // Reimputations
        q_reimp1.close;
        q_reimp1.Params[0].AsString:=article.fieldByName('chapitre').asstring;
        q_reimp1.Params[1].Asstring:=f_principale.gestion.text;
        q_reimp1.Params[2].Asdatetime:=strtodate(zdate.text);
        q_reimp1.open;
        x:=0;
        if  q_reimp1.Fields[0].asstring<>'' then begin
            x:=q_reimp1.Fields[0].value;tmdm:=tmdm+q_reimp1.Fields[0].value;end;


        q_mdm1.close;
        q_mdm1.Params[0].AsString:=article.fieldByName('chapitre').asstring;
        q_mdm1.Params[1].Asstring:=f_principale.gestion.text;
        q_mdm1.Params[2].Asdatetime:= strtodate(zdate.text);
        q_mdm1.open;
        if  q_mdm1.Fields[0].asstring<>'' then
          begin
            x:=x+q_mdm1.Fields[0].value;
            tmdm:=tmdm+q_mdm1.Fields[0].value;
            str(x:12:2,s);
            if cre_tot<>0.0 then begin
               taux2:=(x/cre_tot*100);
               str(taux2:5:2,s1);
                                 end
          end;

          if x<>0  then sheet.Cells.Item[i,9].Value:=x;
          if  ((tca+tep-tem)<>0) or (x<>0) then sheet.Cells.Item[i,10].Value:=tca+tep-tem-x;

          if  ((tca+tep-tem)<>0)then begin taux2:=x/(tca+tep-tem)*100;
                            sheet.Cells.Item[i,11].Value:= taux2
          end;
          i:=i+1;
          while trim(article.Fieldbyname('chapitre').asstring)=xchapitre do article.next;
         end;

         // totaux
         sheet.Cells.Item[i,1].Value :='TOTAL';
        if tca1<>0 then sheet.Cells.Item[i,2].Value :=tca1;
        if tep1<>0 then sheet.Cells.Item[i,3].Value :=tep1;
        if tem1<>0 then sheet.Cells.Item[i,4].Value :=tem1;
        if (tca1+tep1-tem1)<>0 then sheet.Cells.Item[i,5].Value :=(tca1+tep1-tem1);
        if tmde<>0 then sheet.Cells.Item[i,6].Value :=tmde;
        if ((tmde<>0) and  (tca1+tep1-tem1<>0.0)) then
         sheet.Cells.Item[i,7].Value :=tmde/(tca1+tep1-tem1)*100;
         if ((tca1+tep1-tem1)-tmde)<>0  then  sheet.Cells.Item[i,8].Value := (tca1+tep1-tem1)-tmde;
         if tmdm<>0  then   sheet.Cells.Item[i,9].Value := tmdm;
         if ((tca1+tep1-tem1)-tmdm)<>0  then  sheet.Cells.Item[i,10].Value := (tca1+tep1-tem1)-tmdm;
         if ((tmdm<>0) and  (tca1+tep1-tem1<>0.0)) then
         sheet.Cells.Item[i,11].Value :=(tmdm/(tca1+tep1-tem1))*100;

   { UsedRange := Sheet.UsedRange[LOCALE_USER_DEFAULT] as ExcelRange;
    for Row := 1 to UsedRange.Rows.Count do begin
      for Col := 1 to UsedRange.Columns.Count do begin
        v := UsedRange.Item[Row, Col].Value;
      end;
    end;   }
  finally
    Excel.Free;
  end;

end;

end.
