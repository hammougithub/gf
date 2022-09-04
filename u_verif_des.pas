unit u_verif_des;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Vcl.StdCtrls,
  Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tf_verif_des = class(TForm)
    q_qt_consommee: TSQLQuery;
    q_qt_desig: TSQLQuery;
    cl2: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_verif_des: Tf_verif_des;

implementation

{$R *.dfm}

uses u_dm;



procedure Tf_verif_des.Button1Click(Sender: TObject);
var q:real;
begin
     f_dm.ClientDataSet_desig.first;
     while not f_dm.ClientDataSet_desig.Eof do begin

         f_verif_des.q_qt_consommee.close;
         f_verif_des.q_qt_consommee.Params[0].AsString:=f_dm.ClientDataSet_desig.fieldbyname('ref').asstring;
         f_verif_des.q_qt_consommee.open;
         f_verif_des.q_qt_desig.close;
         f_verif_des.q_qt_desig.Params[0].AsString:=f_dm.ClientDataSet_desig.fieldbyname('ref').asstring;
         f_verif_des.q_qt_desig.open;
         qt_d:=0;qt_desig:=0;
         if  f_verif_des.q_qt_consommee.Fields[0].asstring<>'' then qt_d:=f_verif_des.q_qt_consommee.Fields[0].value;
         if  f_verif_des.q_qt_desig.Fields[0].asstring<>'' then qt_desig:=f_verif_des.q_qt_desig.Fields[0].value;

         f_dm.clientDataSet_desig.edit;
         f_dm.clientDataSet_desig.fieldbyname('qt_consommee').AsFloat:=qt_d ;

         f_dm.clientDataSet_desig.fieldbyname('qt_total').AsFloat:=qt_desig ;
    
         f_dm.clientDataSet_desig.fieldbyname('qt_actuel').AsFloat:=qt_desig-qt_d ;
         f_dm.clientDataSet_desig.post;
        // Apres le post on fait applyupdate automatioque ...
        // L'utilisateur n'aura pas à faire applyupdate, c'est pour éviter les erreurs ...
        // Si no laisse le applyupdate à l'utilisateur, il faudra faire plus de control ...
        // clientDataSet_desig.ApplyUpdates(-1);
        // clientDataSet_desig_qt.ApplyUpdates(-1);

      f_dm.ClientDataSet_desig.next
     end;
end;


end.
