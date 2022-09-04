unit u_users;

interface

uses
  Winapi.Windows, Winapi.Messages,  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  //IBServices,
   Vcl.StdCtrls, Vcl.Buttons,
  //IBDatabase,
   Data.DB,  Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids,  Data.DBXFirebird, Data.SqlExpr, Data.FMTBcd,ShellAPI,SysUtils,
  Datasnap.Provider, Datasnap.DBClient, IBX.IBServices, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBTable, IBX.IBSQL;

type
  Tf_users = class(TForm)
    ibs1: TIBSecurityService;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ds_users: TDataSource;
    t_users: TIBTable;
    BitBtn3: TBitBtn;
    qry: TIBSQL;
    BitBtn1: TBitBtn;
    sec: TSQLConnection;
    create_user: TSQLQuery;
    SQLQuery2: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    drop_user: TSQLQuery;
    BitBtn4: TBitBtn;
    Edit5: TEdit;
    SQLQuery_table: TSQLQuery;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ClientDataSet_table: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    DBNavigator2: TDBNavigator;
    Label7: TLabel;
    SQl_grant: TSQLQuery;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    DataSource4: TDataSource;
    DataSetProvider3: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    SQLQuery1: TSQLQuery;
    Label10: TLabel;
    DBNavigator3: TDBNavigator;
    SQL_revoke: TSQLQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure vv(Sender: TObject);
    procedure on_show(Sender: TObject);
    procedure on_close(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);

    procedure delete_u(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_users: Tf_users;
  list:tstrings; g:word; Command: String;c:char;
implementation

{$R *.dfm}

uses main,u_dm, u_forme1;

procedure enable();
begin
  f_users.edit1.enabled:=true;
  f_users.edit2.enabled:=true;
  f_users.edit3.enabled:=true;
  f_users.edit4.enabled:=true;
end;

procedure disable;
begin
  f_users.edit1.enabled:=false;
  f_users.edit2.enabled:=false;
  f_users.edit3.enabled:=false;
  f_users.edit4.enabled:=false;
end;



procedure Tf_users.BitBtn1Click(Sender: TObject);
begin
   // enable
   create_user.SQL.clear;
     create_user.SQL.Add('create user '+trim(edit1.text)+' password '+chr(39)+edit2.Text+chr(39)+
                         'firstname '+chr(39)+edit3.Text+chr(39)+
                         'lastname '+chr(39)+edit4.Text+chr(39));
     //create_user.SQL.Add(creatt1.Text);
    try
         create_user.ExecSQL ;
         showmessage('Create user Done ...')
        except
         showmessage('Erreur commande create_user ...');
        end;
      ClientDataSet1.Refresh;dbgrid1.Refresh;
      ClientDataSet_table.First;
      // grant role to th e new user ...

      create_user.SQL.clear;
      create_user.SQL.Add('grant use_all_table_gf to '+trim(edit1.text));
     //create_user.SQL.Add(creatt1.Text);
    try
         create_user.ExecSQL ;
         showmessage('Grant role done ...')
        except
         showmessage('Erreur commande grant ROLE ...');
        end;

     { while not ClientDataSet_table.eof do  begin
                sql_grant.SQL.clear;
                sql_grant.SQL.Add('grant all on '+trim(ClientDataSet_table.FieldByName('rdb$relation_name').AsString)+' to '+trim(edit1.text));
                edit5.text:=sql_grant.SQL.Text;

                 try
                    sql_grant.ExecSQL ;
                 except
                    showmessage('Erreur commande sql_grant ...');
                        end;
            ClientDataSet_table.Next;
        end;}

   s:=trim(GetCurrentDir);s:=s+'\granttouser.txt';
  { if SysUtils.FileExists(s)then begin
                      AssignFile(T, s);reset(t);
       while not eof(t) do begin
             readln(t,command);command:=trim(command)+' to '+trim(edit1.text);
             sqlquery1.close;sqlquery1.SQL.clear;
             sqlquery1.SQL.Add(command);

           try
             sqlquery1.ExecSQL;
             except
             showmessage('Erreur commande SQl1 ...');
           end;
         end;
       end; }





        try
         sqlquery2.Active:=true ; clientdataset1.Open ; dbgrid1.Refresh
        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
end;

procedure Tf_users.BitBtn2Click(Sender: TObject);
begin
  ibs1.SecurityAction:=actionadduser;
  ibs1.UserName:=edit1.text; ibs1.password:=edit2.text; ibs1.firstName:=edit3.text;
  ibs1.lastName:=edit4.text;
  //ibs1.UserID:=0; ibs1.groupID:=0;
 // List := TStringList.Create; f_dm.gf_ib.GetTableNames(list,false);
  try
       ibs1.AddUser; t_users.Refresh; dbgrid1.Refresh
     except
         showmessage('Impossible de cr�er cet user ... ');
     end;
   try
       // f_dm.gf_ib.GetTableNames(list,false);
        for g:=0 to list.count-1 do
         begin
          qry.sql.Clear;
          qry.sql.add('grant all on table '+list[g]+' to '+trim(edit1.text));
          edit5.text:=qry.sql.Text;
         // qry.ExecQuery;f_dm.gf_ibt1.commitretaining;
          end;
     except
         showmessage('Grant non effectu� pour cet user ... ');
     end;
  disable;
end;

procedure Tf_users.BitBtn4Click(Sender: TObject);
begin
     // Travailler evec les role
     //

     // avant de supprimer one use we revoke privileges's I think that it is not necessary
     ClientDataSet_table.First;
      while not ClientDataSet_table.eof do  begin
                sql_revoke.SQL.clear;
                sql_revoke.SQL.Add('revoke all on '+trim(ClientDataSet_table.FieldByName('rdb$relation_name').AsString)+' from '+trim(edit1.text));
                edit5.text:=sql_grant.SQL.Text;

                 try
                    sql_revoke.ExecSQL ;
                 except
                    showmessage('Erreur commande sql_revoke ...');
                        end;
            ClientDataSet_table.Next;
        end;

      drop_user.SQL.clear;
     drop_user.SQL.Add('revoke USE_ALL_TABLE_GF from '+trim(edit1.text));
     edit5.Text:= drop_user.SQL.Text;
      try
         drop_user.ExecSQL ;
         showmessage('Revoke use_all_table_gf effectu� ...')
        except
         showmessage('Erreur commande revoke USE_ALL_TABLE_GF ...');
        end;

     drop_user.SQL.clear;
     drop_user.SQL.Add('drop user '+trim(edit1.text));
     edit5.Text:= drop_user.SQL.Text;
      try
         drop_user.ExecSQL ;
         showmessage('Drop user effectu� effectu� ...')
        except
         showmessage('Erreur commande drop_user ...');
        end;


        try
          sqlquery2.close ;ClientDataSet1.close;
        sqlquery2.Active:=true ;ClientDataSet1.Open;
       //  sqlquery2.Active:=true ; clientdataset1.Open ; dbgrid1.Refresh
        except
         showmessage('Erreur commande refresh ...');//t1.Clear;
        end;
        sqlquery1.Close;clientdataset2.Close;
        sqlquery1.open;clientdataset2.open;
end;

procedure Tf_users.delete_u(Sender: TObject);
begin
 edit1.text:=ClientDataSet1.FieldByName('rdb$user').AsString;
  {    drop_user.SQL.clear;
     drop_user.SQL.Add('drop user '+trim(edit1.text));
     edit5.Text:= drop_user.SQL.Text;
      try
         drop_user.ExecSQL ;
        except
         showmessage('Erreur commande drop_user ...');
        end;

        sqlquery2.close ;ClientDataSet1.close;
        sqlquery2.Active:=true ;ClientDataSet1.Open;

      // ClientDataSet1.Post;ClientDataSet1.ApplyUpdates(-1)  ;
      // ClientDataSet1.Refresh;dbgrid1.Refresh
       { try
         sqlquery2.Active:=true ; clientdataset1.Open ; dbgrid1.Refresh
        except
         showmessage('Erreur commande refresh ...');//t1.Clear;
        end;  }
end;



procedure Tf_users.on_close(Sender: TObject; var Action: TCloseAction);
begin
      etat:=0
end;

procedure Tf_users.on_show(Sender: TObject);
begin
      try
         sqlquery2.Active:=true ; clientdataset1.Open ;
         sqlquery_table.Active:=true ; clientdataset_table.Open ;
         sqlquery1.Active:=true ; clientdataset2.Open ;

        except
         showmessage('Erreur commande SQl1 ...');//t1.Clear;
        end;
end;

procedure Tf_users.vv(Sender: TObject);
begin
      //admin_ib.close;
   //   if f_dm.gf_IBT1.Active then f_dm.gf_ibt1.Commit;
     // f_dm.gf_ib.Close; f_dm.pers_ib.close;
      if Form1.visible=true then
          form1.BringToFront
      else form1.visible:=true;
end;

end.
