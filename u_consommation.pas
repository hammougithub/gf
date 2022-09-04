unit u_consommation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Data.FMTBcd, Data.SqlExpr;

type
  TDBGrid=Class(vcl.DBGrids.TDBGrid)
         procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  End;
  Tf_consommation = class(TForm)
    q_qt_consommee: TSQLQuery;
    Panel3: TPanel;
    Button2: TButton;
    fin: TBitBtn;
    SpeedButton2: TSpeedButton;
    Panel14: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit3: TEdit;
    Panel6: TPanel;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    DBGrid1: TDBGrid;
    Panel15: TPanel;
    panel99: TPanel;
    DBGrid3: TDBGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Label7: TLabel;
    Panel11: TPanel;
    DBNavigator4: TDBNavigator;
    Panel12: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    mat: TEdit;
    name: TEdit;
    prename: TEdit;
    DBGrid4: TDBGrid;
    Panel9: TPanel;
    Panel13: TPanel;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Label8: TLabel;
    DBNavigator3: TDBNavigator;
    Edit2: TEdit;
    Button1: TButton;
    Panel16: TPanel;
    Label3: TLabel;
    RadioGroup2: TRadioGroup;
    procedure prendre_des(Sender: TObject);
    procedure prendre_service(Sender: TObject);
    procedure prendre_mat(Sender: TObject);
    procedure mat_find(Sender: TObject);
    procedure enter(Sender: TObject);
    procedure gfd(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure des_find(Sender: TObject);
    procedure DES(Sender: TObject);
    procedure finClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ref_find(Sender: TObject);
    procedure tri(Sender: TObject);
    procedure trier(Sender: TObject);

  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_consommation: Tf_consommation;//xredgion:string[2];xadm:char;xmat:string[7];xdate:string[10];xservice:string[4];

implementation

{$R *.dfm}

 uses u_forme1,u_dm, u_designation,main, u_etats_consommation;

procedure TDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Begindrag(false);
  inherited;
end;





procedure Tf_consommation.Button1Click(Sender: TObject);
begin
  f_dm.SimpleDataSet_consommation.Insert;
  f_dm.SimpleDataSet_consommation.Edit;
  f_dm.simpledataset_consommation.fieldbyname('region').Asstring:=trim(xregion);
  f_dm.simpledataset_consommation.fieldbyname('adm').Asstring:=trim(xadm);
  f_dm.simpledataset_consommation.fieldbyname('mat').Asstring:=trim(xmat);
  f_dm.simpledataset_consommation.fieldbyname('service').Asstring:=trim(xservice);
  f_dm.simpledataset_consommation.fieldbyname('dates').Asdatetime:=strtodate(trim(xdate));
end;



procedure Tf_consommation.DES(Sender: TObject);
begin
  {   if ar_fr='a' then begin
          if f_des.visible=true then f_des.Close;
  f_des.Caption:='����� ���������';

  with f_des do begin
      label1.Caption:='����� ���������' ;
      label2.Caption:='��� �������' ;
      button1.Caption:='���������';


      DBGRiD1.Columns[0].Title.caption:='��������' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='�������' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='�. �������' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='�. �������' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;

      DBGRiD2.Columns[0].Title.caption:='������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
     end;
      if f_des.WindowState=wsMinimized then f_des.WindowState:=wsMaximized ;
     f_des.visible:=true;f_des.bringtofront;
     end;

  if ar_fr='f' then begin
       if f_des.visible=true then f_des.Close;
  f_des.Caption:='D E S I G N A T I O N';

  with f_des do begin
      label1.Caption:='Table des d�signation' ;
      label2.Caption:='Table des unit�s' ;
      button1.Caption:='F I N';


      DBGRiD1.Columns[0].Title.caption:='R�f�rence' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='D�signation' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='Unit�' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='Qt� init.' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='Qt� act.' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;

      DBGRiD2.Columns[0].Title.caption:='Unit�' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
     end;  }
    if f_des.WindowState=wsMinimized then f_des.WindowState:=wsMaximized ;
     f_des.visible:=true;f_des.bringtofront;

end;

procedure Tf_consommation.des_find(Sender: TObject);
begin
   if edit1.text<>'' then
     f_dm.clientdataset_desig.locate('designation',trim(edit1.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_consommation.enter(Sender: TObject);
begin

      LoadKeyboardLayout('00000401', KLF_ACTIVATE);
      Application.BiDiKeyboard := '00000401';
end;

procedure Tf_consommation.finClick(Sender: TObject);
begin
    f_consommation.Close;
end;

procedure Tf_consommation.gfd(Sender: TObject);
begin

  if (trim(name.text)<>'') AND (trim(prename.text)='') then    begin
   f_dm.simpledataset_agent.Locate('noma',trim(name.text), [loCaseInsensitive,loPartialKey]);
  // f_dm.simpledataset_agent.Locate('noma;adm',VarArrayOf([trim(name.text)]), [loCaseInsensitive,loPartialKey]);
    prename.text:='';
                                                        end;
   if (trim(name.text)='') AND (trim(prename.text)<>'') then begin
   f_dm.simpledataset_agent.Locate('prenoma',trim(prename.text), [loCaseInsensitive,loPartialKey]);

   END;
    if (trim(name.text)<>'') AND (trim(prename.text)<>'') then begin
   f_dm.simpledataset_agent.Locate('nomA;prenomA',VarArrayOf([trim(name.text),trim(prename.text)]), [loCaseInsensitive,loPartialKey]);

   end;
end;

procedure Tf_consommation.mat_find(Sender: TObject);
begin
    if mat.text<>'' then
    if (f_dm.simpledataset_agent.locate('mat',trim(mat.text),[])) then dbgrid4.REFRESH;

end;

procedure Tf_consommation.prendre_des(Sender: TObject);
begin
    ref_des:=f_dm.ClientDataSet_desig.fieldByName('ref').asstring;
    f_dm.simpledataset_consommation.edit;
    f_dm.simpledataset_consommation.fieldByName('designation').asstring:=f_dm.ClientDataSet_desig.fieldByName('designation').asstring;
    f_dm.simpledataset_consommation.fieldByName('ref').asstring:=f_dm.ClientDataSet_desig.fieldByName('ref').asstring;
    activecontrol:=dbgrid3;
end;

procedure Tf_consommation.prendre_mat(Sender: TObject);
begin
     f_dm.simpledataset_consommation.edit;
     f_dm.simpledataset_consommation.fieldByName('region').asstring:=f_dm.simpledataset_agent.fieldByName('region').asstring;
     f_dm.simpledataset_consommation.fieldByName('mat').asstring:=f_dm.simpledataset_agent.fieldByName('mat').asstring;
     f_dm.simpledataset_consommation.fieldByName('adm').asstring:=f_dm.simpledataset_agent.fieldByName('adm').asstring;
end;

procedure Tf_consommation.prendre_service(Sender: TObject);
begin
    f_dm.simpledataset_consommation.edit;
    f_dm.simpledataset_consommation.fieldByName('service').asstring:=f_dm.simpledataset_service.fieldByName('code').asstring;
    activecontrol:=dbgrid3;
end;

procedure Tf_consommation.ref_find(Sender: TObject);
begin
      if edit3.text<>'' then
     f_dm.clientdataset_desig.locate('ref',trim(edit3.text), [loCaseInsensitive,loPartialKey]);
end;

procedure Tf_consommation.SpeedButton2Click(Sender: TObject);
begin
    f_etats_consommation.visible:=false;
   if ar_fr='a' then begin
                        with f_etats_consommation do begin
                        Caption:='������������� �����������';
                        speedButton6.Caption:='����� ������� ��� �������';
                        speedButton1.Caption:='����� ������� ��� �������';
                        speedButton2.Caption:='����� ������� ���� ����';
                        speedButton7.Caption:='���������'
                end; end;

    if   ar_fr='f' then begin
    with f_etats_consommation do begin
           Caption:='EDITION ETATS CONSOMMATION';
           speedButton1.Caption:='E T A T   A R T I C L E   T O U T    A G E N T';
           speedButton6.Caption:='E T A T  A R T I C L E   P A R  B U R E A U';
           speedButton2.Caption:='E T A T   A R T I C L E   P O U R   U N    A G E N T';
           speedButton7.Caption:='F I N'
            end; end;

   if f_etats_consommation.visible=true then
      f_etats_consommation.BringToFront
    else
    f_etats_consommation.visible:=true;

end;

procedure Tf_consommation.tri(Sender: TObject);
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

procedure Tf_consommation.trier(Sender: TObject);
begin
     case RadioGroup2.ItemIndex of
                     0:begin
                          f_dm.SimpleDataSet_consommation.Close;
                          f_dm.SimpleDataSet_consommation.dataset.Close;
                          f_dm.SimpleDataSet_consommation.DataSet.CommandText:='select *  from consommation order by ref,dates';
                          f_dm.SimpleDataSet_consommation.dataset.open;
                          f_dm.SimpleDataSet_consommation.open;
                                               end;
                     1:begin
                          f_dm.SimpleDataSet_consommation.Close;
                          f_dm.SimpleDataSet_consommation.dataset.Close;
                          f_dm.SimpleDataSet_consommation.DataSet.CommandText:='select *  from consommation order by dates desc,ref';
                          f_dm.SimpleDataSet_consommation.dataset.open;
                          f_dm.SimpleDataSet_consommation.open;
                     end;
     end;

end;

end.
