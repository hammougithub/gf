unit u_fb_sqlite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.Bind.Controls,
  Data.DB, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Vcl.StdCtrls, Vcl.DBGrids, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, Vcl.DBCtrls, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,System.IOUtils,
  Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider;

type
  Tf_fb_sqlite = class(TForm)
    Label2: TLabel;
    FDQuery_des: TFDQuery;
    NavigatorBindSourceDB1: TBindNavigator;
    StringGridBindSourceDB1: TStringGrid;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    BindNavigator1: TBindNavigator;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    FDQuery_del_des: TFDQuery;
    FDConnect_gf_sqlite: TFDConnection;
    DBGrid5: TDBGrid;
    DBNavigator1: TDBNavigator;
    FDQuery_del_four: TFDQuery;
    FDQuery_four: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    StringGridBindSourceDB2: TStringGrid;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    NavigatorBindSourceDB2: TBindNavigator;
    Button2: TButton;
    DBGrid4: TDBGrid;
    FDQuery_del_qt: TFDQuery;
    FDQuery_qt: TFDQuery;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    DBNavigator2: TDBNavigator;
    Label3: TLabel;
    BindSourceDB3: TBindSourceDB;
    StringGridBindSourceDB3: TStringGrid;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    BindNavigator2: TBindNavigator;
    Button3: TButton;
    DBNavigator3: TDBNavigator;
    Button4: TButton;
    FDQuery_cons: TFDQuery;
    FDQuery_del_cons: TFDQuery;
    BindSourceDB4: TBindSourceDB;
    StringGridBindSourceDB4: TStringGrid;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    NavigatorBindSourceDB4: TBindNavigator;
    Label5: TLabel;
    Label7: TLabel;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    DBNavigator4: TDBNavigator;
    Button5: TButton;
    FDQuery_agent: TFDQuery;
    FDQuery_del_agent: TFDQuery;
    BindSourceDB5: TBindSourceDB;
    StringGridBindSourceDB5: TStringGrid;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    NavigatorBindSourceDB5: TBindNavigator;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button14: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    Edit4: TEdit;
    SQLQuery1: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure des(Sender: TObject);
    procedure four(Sender: TObject);
    procedure qt(Sender: TObject);
    procedure cons(Sender: TObject);
    procedure agent(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure four1(Sender: TObject);
    procedure close1(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_fb_sqlite: Tf_fb_sqlite;i:integer;

implementation

{$R *.dfm}

uses u_dm;

procedure Tf_fb_sqlite.four(Sender: TObject);
begin
      //FOURNISSEUR

        if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;

      clientdataset1.close;sqlquery1.close;sqlquery1.SQL.clear;
     sqlquery1.SQL.Add('select count (benificiaire) from fournisseur');
        try
         sqlquery1.Active:=true ; clientdataset1.Open
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
        try
         fdquery_FOUR.Active:=true ;
        except
         showmessage('Erreur fdquery_four opening ...');//t1.Clear;
        end;
    edit5.Text:= clientdataset1.FieldByName('count').AsString;edit5.Refresh;

    i:=0;
   FDQuery_del_FOUR.ExecSQL;

     f_dm.ClientDataSet_fournisseur1.first;
     while not f_dm.ClientDataSet_fournisseur1.eof do begin
             FDQuery_FOUR.append;
             fdquery_FOUR.FieldByName('benificiaire').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('benificiaire').AsString;
             fdquery_FOUR.FieldByName('nom').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('nom').AsString;
             fdquery_FOUR.FieldByName('banque').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('banque').AsString;
             fdquery_FOUR.FieldByName('compte').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('compte').AsString;
              fdquery_FOUR.FieldByName('adresse').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('adresse').AsString;
             fdquery_FOUR.FieldByName('telephone').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('telephone').AsString;

             fdquery_FOUR.FieldByName('lib').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('lib').AsString;
             fdquery_FOUR.FieldByName('rc').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('rc').AsString;
              fdquery_FOUR.FieldByName('nf').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('nf').AsString;
             fdquery_FOUR.FieldByName('artisant').AsString:=f_dm.ClientDataSet_fournisseur1.FieldByName('artisant').AsString;
             f_dm.ClientDataSet_fournisseur1.Next;
             i:=i+1;edit6.text:=inttostr(i);
             edit6.Refresh
     end;

      fdquery_four.ApplyUpdates(-1);
end;

procedure Tf_fb_sqlite.four1(Sender: TObject);
begin
      if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;


        try
         fdquery_four.Active:=true ;
        except
         showmessage('Erreur fdquery_four opening ...');//t1.Clear;
        end;
end;

procedure Tf_fb_sqlite.qt(Sender: TObject);
begin
     if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;

      clientdataset1.close;sqlquery1.close;sqlquery1.SQL.clear;
     sqlquery1.SQL.Add('select count (ref) from designation_qt');
        try
         sqlquery1.Active:=true ; clientdataset1.Open
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
        try
         fdquery_qt.Active:=true ;
        except
         showmessage('Erreur fdquery_des_qt   opening ...');//t1.Clear;
        end;
  edit7.Text:= clientdataset1.FieldByName('count').AsString;

    i:=0;
      FDQuery_del_qt.ExecSQL;

     f_dm.ClientDataSet_desig_qt.first;
     while not f_dm.ClientDataSet_desig_qt.eof do begin
             FDQuery_qt.append;
             fdquery_qt.FieldByName('ref').AsString:=f_dm.ClientDataSet_desig_qt.FieldByName('ref').AsString;
             fdquery_qt.FieldByName('DATEs').AsString:=f_dm.ClientDataSet_desig_qt.FieldByName('DATEs').AsString;
             fdquery_qt.FieldByName('qt').Asfloat:=f_dm.ClientDataSet_desig_qt.FieldByName('qt').Asfloat;
             fdquery_qt.FieldByName('UTILISATEUR').AsString:=f_dm.ClientDataSet_desig_qt.FieldByName('UTILISATEUR').AsString;
             fdquery_qt.FieldByName('DATE_maJ').AsString:=f_dm.ClientDataSet_desig_qt.FieldByName('DATE_MAJ').AsString;
           //  fdquery_qt.Post;
             f_dm.ClientDataSet_desig_qt.Next;
             i:=i+1;edit8.text:=inttostr(i);
             edit8.Refresh
     end;

       fdquery_qt.ApplyUpdates(-1); fdquery_qt.Refresh;fdquery_qt.First;
end;

procedure Tf_fb_sqlite.agent(Sender: TObject);
begin
 if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;

      clientdataset1.close;sqlquery1.close;sqlquery1.SQL.clear;
     sqlquery1.SQL.Add('select count (mat) from employes');
        try
         sqlquery1.Active:=true ; clientdataset1.Open
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
        try
         fdquery_agent.Active:=true ;
        except
         showmessage('Erreur fdquery_agent   opening ...');//t1.Clear;
        end;
  edit9.Text:= clientdataset1.FieldByName('count').AsString;

    i:=0;
       FDQuery_del_agent.ExecSQL;
        try
             fdquery_agent.ApplyUpdates(-1);
            except showmessage('Erreur ApplyUpdates(delete all) agent ...'); end;
            showmessage('Agent SQLITE vidée ... ');

     f_dm.SimpleDataSet_agent.first;
     while not f_dm.SimpleDataSet_agent.eof  do begin
        try
         FDQuery_agent.append; fdquery_agent.FieldByName('region').AsString:=f_dm.SimpleDataSet_agent.FieldByName('region').AsString;
             fdquery_agent.FieldByName('adm').AsString:=f_dm.SimpleDataSet_agent.FieldByName('adm').AsString;
             fdquery_agent.FieldByName('mat').AsString:=f_dm.SimpleDataSet_agent.FieldByName('mat').AsString;
             fdquery_agent.FieldByName('apc').AsString:=f_dm.SimpleDataSet_agent.FieldByName('apc').AsString;
             fdquery_agent.FieldByName('noma').AsString:=f_dm.SimpleDataSet_agent.FieldByName('noma').AsString;
             fdquery_agent.FieldByName('prenoma').AsString:=f_dm.SimpleDataSet_agent.FieldByName('prenoma').AsString;
              fdquery_agent.FieldByName('sf').AsString:=f_dm.SimpleDataSet_agent.FieldByName('sf').AsString;
             fdquery_agent.FieldByName('stagiaire').AsString:=f_dm.SimpleDataSet_agent.FieldByName('stagiaire').AsString;
             fdquery_agent.FieldByName('situation').AsString:=f_dm.SimpleDataSet_agent.FieldByName('situation').AsString;

            fdquery_agent.FieldByName('nom').AsString:=f_dm.SimpleDataSet_agent.FieldByName('nom').AsString;
             fdquery_agent.FieldByName('prenom').AsString:=f_dm.SimpleDataSet_agent.FieldByName('prenom').AsString;
              fdquery_agent.FieldByName('sf').AsString:=f_dm.SimpleDataSet_agent.FieldByName('sf').AsString;
             fdquery_agent.FieldByName('stagiaire').AsString:=f_dm.SimpleDataSet_agent.FieldByName('stagiaire').AsString;
             fdquery_agent.FieldByName('situation').AsString:=f_dm.SimpleDataSet_agent.FieldByName('situation').AsString;

              fdquery_agent.FieldByName('grade_actuel').AsString:=f_dm.SimpleDataSet_agent.FieldByName('grade_actuel').AsString;
             fdquery_agent.FieldByName('echelon_actuel').Asinteger:=f_dm.SimpleDataSet_agent.FieldByName('echelon_actuel').Asinteger;
             fdquery_agent.FieldByName('datenaiss').AsString:=f_dm.SimpleDataSet_agent.FieldByName('datenaiss').AsString;
              fdquery_agent.FieldByName('dateembauche').AsString:=f_dm.SimpleDataSet_agent.FieldByName('dateembauche').AsString;
              fdquery_agent.FieldByName('datesortie').AsString:=f_dm.SimpleDataSet_agent.FieldByName('datesortie').AsString;


             fdquery_agent.FieldByName('numeross').AsString:=f_dm.SimpleDataSet_agent.FieldByName('numeross').AsString;
             fdquery_agent.FieldByName('codebanque').AsString:=f_dm.SimpleDataSet_agent.FieldByName('codebanque').AsString;

             fdquery_agent.FieldByName('numcompte').AsString:=f_dm.SimpleDataSet_agent.FieldByName('numcompte').AsString;
             fdquery_agent.FieldByName('fonction_actuelle').AsString:=f_dm.SimpleDataSet_agent.FieldByName('fonction_actuelle').AsString;

             fdquery_agent.FieldByName('SERVICE_MILIT').AsString:=f_dm.SimpleDataSet_agent.FieldByName('SERVICE_MILIT').AsString;
             fdquery_agent.FieldByName('NUM_TEL_FIXE').AsString:=f_dm.SimpleDataSet_agent.FieldByName('NUM_TEL_FIXE').AsString;

             fdquery_agent.FieldByName('NUM_TEL_MOBILE').AsString:=f_dm.SimpleDataSet_agent.FieldByName('NUM_TEL_MOBILE').AsString;
             fdquery_agent.FieldByName('utiliSATEUR').AsString:=f_dm.SimpleDataSet_agent.FieldByName('utiliSATEUR').AsString;
             fdquery_agent.FieldByName('DATE_MAJ').AsString:=f_dm.SimpleDataSet_agent.FieldByName('DATE_MAJ').AsString;
     //  showmessage('append agent ...');
       except
         showmessage('Erreur append agent ...');//t1.Clear;
        end;
             //fdquery_agent.post; fdquery_agent.ApplyUpdates(-1);
             f_dm.SimpleDataSet_agent.Next;
              i:=i+1;edit10.text:=inttostr(i);
             edit10.Refresh
            end;

            try
             fdquery_agent.ApplyUpdates(-1);
            except
               showmessage('Erreur ApplyUpdates agent ...');
            end;
end;

procedure Tf_fb_sqlite.Button10Click(Sender: TObject);
begin
       try
         fdquery_agent.Active:=false ;
        except
         showmessage('Erreur fdquery_agent closing ...');//t1.Clear;
        end;
end;

procedure Tf_fb_sqlite.Button11Click(Sender: TObject);
begin
          if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;


        try
         fdquery_agent.Active:=true ;
        except
         showmessage('Erreur fdquery_agent opening ...');//t1.Clear;
        end;
end;

procedure Tf_fb_sqlite.Button14Click(Sender: TObject);
begin
        try TFile.Copy((trim(edit2.text)),(trim(edit3.text)));
       ShowMessage('file  copied ')
       except
       ShowMessage('file not copied ')
                     end;
end;

procedure Tf_fb_sqlite.Button6Click(Sender: TObject);
begin
        if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;


        try
         fdquery_des.Active:=true ;
        except
         showmessage('Erreur fdquery_des opening ...');//t1.Clear;
        end;
end;

procedure Tf_fb_sqlite.Button7Click(Sender: TObject);
begin
       try
         fdquery_des.Active:=false ;
        except
         showmessage('Erreur fdquery_des closing ...');//t1.Clear;
        end;
end;

procedure Tf_fb_sqlite.close1(Sender: TObject);
begin
       try
         fdquery_four.Active:=false ;
        except
         showmessage('Erreur fdquery_four closing ...');//t1.Clear;
        end;
end;

procedure Tf_fb_sqlite.cons(Sender: TObject);
begin
  if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;

      clientdataset1.close;sqlquery1.close;sqlquery1.SQL.clear;
     sqlquery1.SQL.Add('select count (ref) from consommation');
        try
         sqlquery1.Active:=true ; clientdataset1.Open
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
        try
         fdquery_cons.Active:=true ;
        except
         showmessage('Erreur fdquery_cons opening ...');//t1.Clear;
        end;
    edit11.Text:= clientdataset1.FieldByName('count').AsString;edit11.refresh;
     FDQuery_del_des.ExecSQL; showmessage('Désignation SQLITE vidée ... ');
    i:=0;
       FDQuery_del_cons.ExecSQL;

     f_dm.SimpleDataSet_consommation.first;
     while not f_dm.SimpleDataSet_consommation.eof do begin
             FDQuery_cons.append;
             fdquery_cons.FieldByName('region').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('region').AsString;
             fdquery_cons.FieldByName('adm').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('adm').AsString;
             fdquery_cons.FieldByName('mat').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('mat').AsString;
             fdquery_cons.FieldByName('ref').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('ref').AsString;
             fdquery_cons.FieldByName('designation').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('designation').AsString;
             fdquery_cons.FieldByName('service').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('service').AsString;
             fdquery_cons.FieldByName('observation').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('observation').AsString;
             fdquery_cons.FieldByName('DATEs').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('DATEs').AsString;
             fdquery_cons.FieldByName('qt').Asfloat:=f_dm.SimpleDataSet_consommation.FieldByName('qt').Asfloat;
             fdquery_cons.FieldByName('UTILISATEUR').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('UTILISATEUR').AsString;
             fdquery_cons.FieldByName('DATE_maJ').AsString:=f_dm.SimpleDataSet_consommation.FieldByName('DATE_MAJ').AsString;
            // fdquery_cons.Post;
             f_dm.SimpleDataSet_consommation.Next;
             i:=i+1;edit12.text:=inttostr(i);
             edit12.Refresh
     end;
     fdquery_cons.ApplyUpdates(-1); //fdquery_cons.Refresh;fdquery_cons.First;
end;

procedure Tf_fb_sqlite.des(Sender: TObject);
begin
      if not FDConnect_gf_sqlite.Connected then
       try
        FDConnect_gf_sqlite.Connected:=true ;
        except
         showmessage('Erreur FDConnect_gf_sqlite ...');//t1.Clear;
        end;

      clientdataset1.close;sqlquery1.close;sqlquery1.SQL.clear;
     sqlquery1.SQL.Add('select count (ref) from designation');
        try
         sqlquery1.Active:=true ; clientdataset1.Open
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
        try
         fdquery_des.Active:=true ; clientdataset1.Open
        except
         showmessage('Erreur fdquery_des opening ...');//t1.Clear;
        end;
    edit1.Text:= clientdataset1.FieldByName('count').AsString;

    i:=0;
     FDQuery_del_des.ExecSQL; showmessage('Désignation SQLITE vidée ... ');
    f_dm.ClientDataSet_desig.first;
     while not f_dm.ClientDataSet_desig.eof do begin
             FDQuery_des.append;fdquery_des.FieldByName('ref').AsString:=f_dm.ClientDataSet_desig.FieldByName('ref').AsString;
             fdquery_des.FieldByName('designation').AsString:=f_dm.ClientDataSet_desig.FieldByName('designation').AsString;
             fdquery_des.FieldByName('unite').AsString:=f_dm.ClientDataSet_desig.FieldByName('unite').AsString;
             fdquery_des.FieldByName('prix').AsString:=f_dm.ClientDataSet_desig.FieldByName('prix').AsString;
             fdquery_des.FieldByName('qt_actuel').Asfloat:=f_dm.ClientDataSet_desig.FieldByName('qt_actuel').Asfloat;
             fdquery_des.FieldByName('UTILISATEUR').AsString:=f_dm.ClientDataSet_desig.FieldByName('UTILISATEUR').AsString;
             fdquery_des.FieldByName('qt_initiale').Asfloat:=f_dm.ClientDataSet_desig.FieldByName('qt_initial').Asfloat;
             fdquery_des.FieldByName('DATE_MAJ').AsString:=f_dm.ClientDataSet_desig.FieldByName('DATE_MAJ').AsString;

             f_dm.ClientDataSet_desig.Next; i:=i+1;edit4.text:=inttostr(i);
             edit4.Refresh

     end;
       edit4.text:=inttostr(i);
     fdquery_des.ApplyUpdates(-1);

end;

end.
