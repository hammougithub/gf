unit u_fb_to_sqlite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, SimpleDS,
  Data.SqlExpr, Vcl.StdCtrls, Datasnap.Provider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Controls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Vcl.Buttons, Vcl.Bind.Navigator, Data.Bind.Grid, Data.Bind.DBScope,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Phys.SQLiteVDataSet,System.IOUtils;

type
  Tf_fb_to_sqlite = class(TForm)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    BindingsList1: TBindingsList;
    Button2: TButton;
    Button3: TButton;
    BindingsList2: TBindingsList;
    DBNavigator4: TDBNavigator;
    Button8: TButton;
    Button9: TButton;
    Button12: TButton;
    Edit1: TEdit;
    FDQuery_del_agent: TFDQuery;
    FDQuery_agent: TFDQuery;
    NavigatorBindSourceDB4: TBindNavigator;
    Button13: TButton;
    Button14: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;











    procedure Button12Click(Sender: TObject);

    procedure Button14Click(Sender: TObject);

  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_fb_to_sqlite: Tf_fb_to_sqlite;

implementation

{$R *.dfm}

uses u_dm;





procedure Tf_fb_to_sqlite.Button12Click(Sender: TObject);
begin
     System.IOUtils.TPath.Combine(TPath.GetDocumentsPath, 'gf.db'); //  (internal)
     edit1.text:=System.IOUtils.TPath.Combine(TPath.GetDocumentsPath, 'gf.db');
end;



procedure Tf_fb_to_sqlite.Button14Click(Sender: TObject);
begin
       try TFile.Copy((trim(edit2.text)),(trim(edit3.text)));
       ShowMessage('file  copied ')
       except
       ShowMessage('file not copied ')
                     end;
end;






end.
