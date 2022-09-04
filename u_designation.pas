unit u_designation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons;


type

  Tf_des = class(TForm)
    del_qt_desig: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    SQLQuery2: TSQLQuery;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Label3: TLabel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Panel4: TPanel;
    RadioGroup1: TRadioGroup;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    Button2: TButton;
    Button3: TButton;
    Panel8: TPanel;
    DBNavigator1: TDBNavigator;
    Panel13: TPanel;
    DBNavigator2: TDBNavigator;
    Panel14: TPanel;
    Panel10: TPanel;
    DBGrid5: TDBGrid;
    DBNavigator5: TDBNavigator;
    Panel9: TPanel;
    DBGrid4: TDBGrid;
    Panel12: TPanel;
    DBNavigator4: TDBNavigator;
    procedure quiter(Sender: TObject);
    procedure fd(Sender: TObject);
    procedure unite_prendre(Sender: TObject);
    procedure trier(Sender: TObject);
    procedure prendre_desig(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_des: Tf_des;

implementation

{$R *.dfm}

uses u_dm;





procedure Tf_des.prendre_desig(Sender: TObject);
begin
   f_dm.ClientDataSet_desig_qt.fieldByName('ref').asstring:=f_dm.ClientDataSet_desig.fieldByName('ref').asstring;
   activecontrol:=dbgrid1;
end;







procedure Tf_des.Button2Click(Sender: TObject);
begin
        if not dbgrid4.Visible then  begin
                     clientdataset1.close;sqlquery1.close;
                     sqlquery1.Params[0].AsString:=f_dm.ClientDataSet_desig.FieldByName('ref').asstring;

                     try
                        sqlquery1.Active:=true ; clientdataset1.Open;
                        dbgrid4.Visible:=true;dbnavigator4.Visible:=true; panel9.Visible:=true;
                     except
                         showmessage('Erreur commande SQl1 ...');//t1.Clear;
                     end;
        end else begin dbgrid4.Visible:=false;dbnavigator4.Visible:=false;;panel9.Visible:=false ; end;  // panel9.Align:= alBottom


end;

procedure Tf_des.Button3Click(Sender: TObject);
begin
          if not dbgrid5.Visible then  begin
                     clientdataset2.close;sqlquery2.close;
                     sqlquery1.Params[0].AsString:=f_dm.ClientDataSet_desig.FieldByName('ref').asstring;

                     try
                        sqlquery2.Active:=true ; clientdataset2.Open;
                        dbgrid5.Visible:=true;dbnavigator5.Visible:=true; panel10.Visible:=true;
                     except
                         showmessage('Erreur commande SQl1 ...');//t1.Clear;
                     end;
        end else begin dbgrid5.Visible:=false;dbnavigator5.Visible:=false;panel10.Visible:=false ; end;
end;

procedure Tf_des.fd(Sender: TObject);
begin
       if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;



procedure Tf_des.quiter(Sender: TObject);
begin
     f_des.Close
end;

procedure Tf_des.trier(Sender: TObject);
begin
   case RadioGroup1.ItemIndex of
                     0:begin
                          f_dm.SQLDataSet_desig.Close;f_dm.clientdataset_desig.close;
                          f_dm.SQLDataSet_desig.CommandText:='select * from designation order by designation';
                          f_dm.SQLDataSet_desig.open;f_dm.clientdataset_desig.open
                     end;
                     1:begin
                          f_dm.SQLDataSet_desig.Close;f_dm.clientdataset_desig.close;
                          f_dm.SQLDataSet_desig.CommandText:='select * from designation order by ref';
                          f_dm.SQLDataSet_desig.open;f_dm.clientdataset_desig.open
                     end;

end;
end;

procedure Tf_des.unite_prendre(Sender: TObject);
begin
   f_dm.ClientDataSet_desig.edit;
   f_dm.ClientDataSet_desig.fieldByName('unite').asstring:=f_dm.simpledataset_unites.fieldByName('unite').asstring;
   activecontrol:=dbgrid1;
end;

end.
