unit u_c;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,Data.DB, Data.Win.ADODB,activex,comobj,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,Excel2000, Vcl.Mask;

type
  Tf_c = class(TForm)
    adoc1: TADOConnection;
    ADOQ1: TADOQuery;
    DataSource1: TDataSource;
    o1: TOpenDialog;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Edit1: TEdit;
    ADOTable1: TADOTable;
    DBGrid2: TDBGrid;
    ComboBox1: TComboBox;
    DBNavigator1: TDBNavigator;
    fin: TBitBtn;
    b1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    Edit3: TEdit;
    date2: TMaskEdit;
    date1: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    verif: TADOQuery;
    Label6: TLabel;
    b2: TButton;
    edit2: TMaskEdit;
    edit7: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure formcreate(Sender: TObject);
    procedure choix(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure initier(Sender: TObject);
    procedure confirme(Sender: TObject);

 //   procedure DisplayException(Sender: TObject; E: Exception);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_c: Tf_c;s,VersionExcel,s2,ss2:string;
  b:boolean; d1:string;  y:real; Excel: TExcelApplication;book:variant;
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

procedure DisplayException(Sender: TObject; E: Exception);
begin
       f_c.StatusBar1.SimpleText := E.Message;
end;

function nontrouve(x,y,z,w:string):boolean;
var b:boolean;
begin
     b:=true;
     if (f_dm.sm.locate('gestion;mandat;chapitre;article',vararrayof([x,y,z,w]),[])) then b:=false;
     nontrouve:=b;
end;

function non_chap_art(x,y:string):boolean;
var b:boolean;
begin
     b:=false;
     if not(f_dm.clientdataset_chapitre.locate('chapitre;article',vararrayof([x,y]),[])) then b:=true;
     non_chap_art:=b;
end;
function non_art(x:string):boolean;
var b:boolean;
begin
     b:=false;
     if not(f_dm.clientdataset_chapitre.locate('article',vararrayof([x]),[loCaseInsensitive])) then b:=true;
     non_art:=b;
end  ;

function non_adm(x:string):boolean;
var b:boolean;
begin
     b:=false;
     if not(f_dm.clientdataset_adm.locate('code',vararrayof([x]),[loCaseInsensitive])) then b:=true;
     non_adm:=b;
end;

procedure Tf_c.b1Click(Sender: TObject);
begin
         if MessageDlgPos('Pas d"erreur, Validez la maj ...',mtCustom, [mbYes,mbno], 0, 550, 600)=mryes
            then begin
             ProgressBar1.max:=adoq1.RecordCount;
             ProgressBar1.Step:=1;
              j:=0;
           //prendre de adoq1
           adoq1.First;  x:=0;
            while trim(adoq1.FieldByName('chapitre').AsString)=''  do adoq1.Next;
            while  not adoq1.eof do  begin
                   if ((adoq1.FieldByName('datepayement').asdatetime)>=(strtodate(trim(date1.Text))))
                         and  ((adoq1.FieldByName('datepayement').asdatetime)<=(strtodate(trim(date2.Text))))
                          then begin
                                s1:=trim(adoq1.FieldByName('codart').asstring);
                                if s1='U' then s1:='U ';
                                if s1='1' then s1:='01';
                                if s1='2' then s1:='02';
                                if s1='3' then s1:='03';
                                if s1='4' then s1:='04';
                                if s1='5' then s1:='05';
                                if s1='6' then s1:='06';
                                if s1='7' then s1:='07';
                                if s1='8' then s1:='08';
                                if s1='9' then s1:='09';

                                s2:=trim(adoq1.FieldByName('administration').asstring);
                                if s2='01' then s2:='1';
                                if s2='02' then s2:='2';
                                if s2='03' then s2:='3';
                                if s2='04' then s2:='4';
                                if s2='05' then s2:='5';
                                if s2='06' then s2:='6';
                                if s2='07' then s2:='7';
                                if s2='08' then s2:='8';
                                if s2='09' then s2:='9';
                                ss2:=s2;
                                if ss2='7' then ss2:='2';
                                if ss2='8' then ss2:='3';
                                if ss2='9' then ss2:='4';
                                if ss2='a' then ss2:='5';
                                if ss2='b' then ss2:='6';
                               // s:= copy((trim(adoq1.FieldByName('datemandat').asstring)),7,4);
                                s:= copy((trim(adoq1.FieldByName('datepayement').asstring)),7,4);
                                if nontrouve(s,(trim(adoq1.FieldByName('nummandat').asstring)),
                                  (trim(adoq1.FieldByName('chapitre').asstring)),s1)
                                  and  (adoq1.FieldByName('montant').Asfloat>0)
                                then begin
                                        j:=j+1;edit3.text:=inttostr(j)+' mandats';
                                        f_dm.simpledataset_mandat_c.Append;
                                        f_dm.simpledataset_mandat_c.FieldByName('gestion').AsString:=s;
                                        f_dm.simpledataset_mandat_c.FieldByName('mandat').Asinteger:=adoq1.FieldByName('nummandat').AsInteger;
                                        f_dm.simpledataset_mandat_c.FieldByName('chapitre').Asstring:=trim(adoq1.FieldByName('chapitre').Asstring);
                                        f_dm.simpledataset_mandat_c.FieldByName('article').Asstring:=s1;
                                        f_dm.simpledataset_mandat_c.FieldByName('structure').Asstring:=s2;          //trim(adoq1.FieldByName('administration').Asstring);
                                        f_dm.simpledataset_mandat_c.FieldByName('structure_situation').Asstring:=ss2;//trim(adoq1.FieldByName('administration').Asstring);
                                        f_dm.simpledataset_mandat_c.FieldByName('dates').Asdatetime:=adoq1.FieldByName('datepayement').Asdatetime;
                                        f_dm.simpledataset_mandat_c.FieldByName('observation').Asstring:='Comptabilité';
                                        f_dm.simpledataset_mandat_c.FieldByName('date_maj').Asstring:=F_principale.dat.caption;
                                        f_dm.simpledataset_mandat_c.FieldByName('utilisateur').Asstring:='Compta';
                                        f_dm.simpledataset_mandat_c.Post;
                                        f_dm.simpledataset_mandat_c.ApplyUpdates(-1);

                                        f_dm.simpledataset_lignes_c.Append;
                                        f_dm.simpledataset_lignes_c.FieldByName('gestion').AsString:=s;
                                        f_dm.simpledataset_lignes_c.FieldByName('mandat').Asinteger:=adoq1.FieldByName('nummandat').AsInteger;
                                        f_dm.simpledataset_lignes_c.FieldByName('chapitre').Asstring:=trim(adoq1.FieldByName('chapitre').Asstring);
                                        f_dm.simpledataset_lignes_c.FieldByName('article').Asstring:=s1;
                                        f_dm.simpledataset_lignes_c.FieldByName('structure').Asstring:=s2;//trim(adoq1.FieldByName('administration').Asstring);
                                        f_dm.simpledataset_lignes_c.FieldByName('structure_situation').Asstring:=ss2;//trim(adoq1.FieldByName('administration').Asstring);
                                        f_dm.simpledataset_lignes_c.FieldByName('benificiaire').Asstring:=trim(adoq1.FieldByName('administration').Asstring);
                                        f_dm.simpledataset_lignes_c.FieldByName('dates').Asdatetime:=adoq1.FieldByName('datepayement').Asdatetime;
                                        f_dm.simpledataset_lignes_c.FieldByName('observation').Asstring:='Comptabilité';
                                        f_dm.simpledataset_lignes_c.FieldByName('ligne').Asinteger:=1;
                                        f_dm.simpledataset_lignes_c.FieldByName('montant').Asfloat:=adoq1.FieldByName('montant').Asfloat;
                                        f_dm.simpledataset_lignes_c.FieldByName('date_maj').Asstring:=F_principale.dat.caption;
                                        f_dm.simpledataset_lignes_c.FieldByName('utilisateur').Asstring:='Compta';
                                        f_dm.simpledataset_lignes_c.Post;
                                        f_dm.simpledataset_lignes_c.ApplyUpdates(-1);
                                        x:=x+adoq1.FieldByName('montant').Asfloat;

                                     end
                                     else //begin
                                     if MessageDlgPos('Mandat déjâ existe, ou montant non positif, Continuer ? ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo then
                                         begin progressbar1.Position:=0;exit end;
                                          
                                     end;
                              adoq1.Next;ProgressBar1.StepIt  end;
                              edit3.text:=inttostr(j)+'   '+floattostr(x);

       end;
end;

procedure Tf_c.BitBtn1Click(Sender: TObject);
begin
      adoq1.first; i:=0; b1.Enabled:=true;//b2.Enabled:=true;
      memo1.clear; y:=0.0;
      while trim(adoq1.FieldByName('chapitre').AsString)=''  do adoq1.Next;
      i:=0;
      if strtodate(trim(date1.Text))>strtodate(trim(date2.Text)) then  showmessage('Dates érronées ...')
      else  begin
           while  not adoq1.eof do  begin
               s:=trim(adoq1.FieldByName('chapitre').AsString);x:=0;
               while (not adoq1.eof)  and  (trim(adoq1.FieldByName('chapitre').AsString)=s)
                     do begin
                        if ((adoq1.FieldByName('datepayement').asdatetime)>=(strtodate(trim(date1.Text))))
                         and  ((adoq1.FieldByName('datepayement').asdatetime)<=(strtodate(trim(date2.Text))))
                          then begin y:=y+adoq1.FieldByName('montant').Asfloat;x:=x+adoq1.FieldByName('montant').Asfloat;i:=i+1; end;
                          adoq1.Next;
                        end;
               memo1.lines.Add(s+'  '+floattostr(x));
                           end;memo1.lines.Add('             '+floattostr(y));
                end;  edit6.text:=inttostr(i);
end;

procedure Tf_c.BitBtn2Click(Sender: TObject);
begin
    adoc1.close; edit2.Text:=f_principale.GESTION.Text
end;

procedure Tf_c.Button1Click(Sender: TObject);
begin
    if  not((strtoint(trim(edit7.text))>0) and  (strtoint(trim(edit7.text))<13)) then
         showmessage('Vérifier le mois de Traitement ...');


    if  (strtoint(trim(edit7.text))>0) and  (strtoint(trim(edit7.text))<13)
     then begin
          VersionExcel := GetExcelVersion; // récupère la fersion d'excel sur le poste
          edit1.Text:=VersionExcel;
          o1.Execute(); adoc1.close;
          if VersionExcel = '12.0' // Excel 2007
                        then  begin
                          adoc1.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;'+
                          'Data Source=' +o1.filename+
                          ';Extended Properties="Excel 12.0;HDR=yes;IMEX=1"'
                        end;
          if VersionExcel = '14.0' // Excel 2010
                          then  begin
                           adoc1.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;'+
                            'Data Source=' + o1.filename+
                            ';Extended Properties="Excel 12.0;HDR=yes;IMEX=1"';
                          end;


           try
             AdoC1.Open;
             AdoC1.GetTableNames(ComboBox1.Items,True);
             adoq1.Active:=true;verif.Active:=true;
          except
               ShowMessage('Unable to connect to Excel');
           end;

          if adoq1.Active then begin
             // vérifier les doublons ...
              verif.first;
              s:=trim(verif.FieldByName('nummandat').asstring);
              s1:=trim(verif.FieldByName('chapitre').asstring);
              s2:=trim(verif.FieldByName('codart').asstring);

          while not verif.eof do begin
               verif.Next;
            if not verif.eof then  begin
                   if (trim(verif.FieldByName('nummandat').asstring)=s) and
                      (trim(verif.FieldByName('chapitre').asstring)=s1) and
                      (trim(verif.FieldByName('codart').asstring)=s2) then
                    if MessageDlgPos('Doublon , Continuer la vérification ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo then
                       exit;
                      //showmessage('Doublon ...');
                   s:=trim(verif.FieldByName('nummandat').asstring);
                   s1:=trim(verif.FieldByName('chapitre').asstring);
                   s2:=trim(verif.FieldByName('codart').asstring);
                                  end;
                                end;

       edit2.text:=copy((trim(adoq1.fieldbyName('datemandat').asstring)),7,4);
       adoq1.first;i:=0; edit5.text:=inttostr(i) ;
       while not(adoq1.Eof) do begin
           if (adoq1.FieldByName('datepayement').asstring='') and (trim(adoq1.FieldByName('chapitre').AsString)<>'')
             then
               if   MessageDlgPos('Date de paiement vide, Continuer la vérification ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo then
                       exit;

            if adoq1.FieldByName('montant').asfloat<=0  // ShowMessage('Montant négatif ...');
            then
               if   MessageDlgPos('Montant négatif ou nul , Continuer la vérification ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo then
                       exit;

            s1:=trim(adoq1.FieldByName('codart').asstring);
            if s1='U' then s1:='U ';
            if s1='1' then s1:='01';
            if s1='2' then s1:='02';
            if s1='3' then s1:='03';
            if s1='4' then s1:='04';
            if s1='5' then s1:='05';
            if s1='6' then s1:='06';
            if s1='7' then s1:='07';
            if s1='8' then s1:='08';
            if s1='9' then s1:='09';

            if non_chap_art((trim(adoq1.FieldByName('chapitre').asstring)),s1) then
                 if MessageDlgPos('code chapitre ou code article erroné , Continuer la vérification ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo
                 then exit;


            s2:=trim(adoq1.FieldByName('administration').asstring);
            if s2='01' then s2:='1';
            if s2='02' then s2:='2';
            if s2='03' then s2:='3';
            if s2='04' then s2:='4';
            if s2='05' then s2:='5';
            if s2='06' then s2:='6';
            if s2='07' then s2:='7';
            if s2='08' then s2:='8';
            if s2='09' then s2:='9';

             if non_adm(s2) then
                if MessageDlgPos('code administration erroné , Continuer la vérification ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo
                then  exit;


              decodedate(((adoq1.FieldByName('datepayement').asdatetime)),annee,mois,jour);
             // s:= copy((trim(adoq1.FieldByName('datemandat').asstring)),7,4);
              if inttostr(annee)<>trim(f_principale.gestion.Text) then
                      if MessageDlgPos('Vérifier Année Date mandat , Continuer la vérification ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo
                      then  exit;
             if mois<>strtoint(trim(edit7.Text))then
                       if MessageDlgPos('Vérifier Mois Date mandat , Continuer la vérification ',mtConfirmation, [mbYes, mbNo], 0, 500, 500)= IDNo then
                       exit;


             adoq1.Next ;  i:=i+1; edit5.text:=inttostr(i)
                            end;  // de  while not(adoq1.Eof) do begin
                            end; //  de if adoq1.Active then begin
                            edit5.text:=inttostr(i) ;
                            end ; //if  (strtoint(trim(edit7.text))>0) and  (strtoint(trim(edit7.text))<13)
end;



procedure Tf_c.choix(Sender: TObject);
begin
     if ComboBox1.ItemIndex<>-1 then begin
       adotable1.close;
       adotable1.TableName:='['+ComboBox1.Items[ComboBox1.ItemIndex]+']';
       adotable1.Open;
       adotable1.first;
       while not(adotable1.Eof) do begin
           if adotable1.FieldByName('datepayement').asstring='' then begin
                  ShowMessage('Date de paiment vide ...'); end;
           adotable1.Next           end;

         end;
end;


procedure Tf_c.confirme(Sender: TObject);
begin
      if MessageDlgPos('Est ce que la situation est correct ? ',mtCustom, [mbYes,mbno], 0, 550, 600)=mryes
            then begin

               f_dm.simpledataset_mandat_c.ApplyUpdates(0);
               f_dm.simpledataset_lignes_c.ApplyUpdates(0);
               showmessage('Applay Updates effectué ...');
            end;
end;

procedure Tf_c.formcreate(Sender: TObject);
var
   M, D : Integer;
begin
   M := Screen.height; // multiplicateur = définition actuelle de l'écran
   D := 768; // diviseur = définition de l'écran à la conception
   ScaleBy(M, D);
   Realign;
end;



procedure Tf_c.initier(Sender: TObject);
begin
      edit2.Text:=f_principale.GESTION.Text
end;

end.

