unit u_etats_consommation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons;

type
  Tf_etats_consommation = class(TForm)
    SpeedButton2: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure Parbureau1Click(Sender: TObject);
    procedure Etat_par_bureau(Sender: TObject);
    procedure etat_par_agent(Sender: TObject);
    procedure pp(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_etats_consommation: Tf_etats_consommation;

implementation

{$R *.dfm}

uses u_forme1,U_f_article_etat_par_agent, u_article_etat_par_bureau,
  U_article_etat_tout_agent, u_article_etat_par_un_agent;



procedure Tf_etats_consommation.etat_par_agent(Sender: TObject);
begin
      if f_article_etat_par_agent.visible=true then
      f_article_etat_par_agent.BringToFront
    else
    f_article_etat_par_agent.visible:=true;
end;

procedure Tf_etats_consommation.Etat_par_bureau(Sender: TObject);
begin
{      if ar_fr='a' then begin
  f_article_etat_tout_agent.Close;
  f_article_etat_tout_agent.Caption:='����� ������� ��� �������';

  with f_article_etat_tout_agent do begin
      radiogroup1.Caption:='��������' ; radiogroup1.Items[0]:=' ��� ������� '; radiogroup1.Items[1]:=' ��� �������� ';
      label1.Caption:='����� ���������' ;
      //label3.Caption:='�������������' ;
      speedbutton1.Caption:='����������';
      button2.caption:='�����������������';
      label9.Caption:='���������'; label10.Caption:='��� �������';

      DBGRiD1.Columns[0].Title.caption:='��������' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='�������' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='�. �������' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='�. �������' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;

      DBGRiD3.Columns[0].Title.caption:='��������' ;
      DBGRiD3.Columns[1].Title.caption:='���������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[2].Title.caption:='���������' ;
      DBGRiD3.Columns[3].Title.caption:='���������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[4].Title.caption:='������������' ;
      DBGRiD3.Columns[5].Title.caption:='��������������' ;
     end;
end;

 if ar_fr='f' then begin
  f_article_etat_tout_agent.Close;
  f_article_etat_tout_agent.Caption:='f_article_etat_tout_agent';

  with f_article_etat_tout_agent do begin
      radiogroup1.Caption:='T R I (Clic pour trier)' ; radiogroup1.Items[0]:='Tri / d�signation'; radiogroup1.Items[1]:='Tri / r�f�rence';
      label1.Caption:='Table des D�signation' ;
      //label3.Caption:='LES AGENTS' ;
      speedbutton1.Caption:='IMPRESSION';
      button2.caption:='CONSOMMATION';
      label9.Caption:='D�signation'; label10.Caption:='R�f�rence';

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='D�signation' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Unit�' ;DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='Qt� ini.' ;DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Qt� act.' ; DBGRiD1.Columns[4].alignment:=taleftjustify;


      DBGRiD3.Columns[0].Title.caption:='Nom agent' ;
      DBGRiD3.Columns[1].Title.caption:='Pr�nom agent' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[2].Title.caption:='Bureau' ;
      DBGRiD3.Columns[3].Title.caption:='Qtt�' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[4].Title.caption:='Date' ;
      DBGRiD3.Columns[5].Title.caption:='Observation' ;
     end;
end;  }


      if f_article_etat_tout_agent.visible=true then
      f_article_etat_tout_agent.BringToFront
        else
      f_article_etat_tout_agent.visible:=true;
end;


procedure Tf_etats_consommation.Parbureau1Click(Sender: TObject);
begin
{if ar_fr='a' then begin
  if f_article_etat_par_bureau.visible=true then f_article_etat_par_bureau.Close;
  f_article_etat_par_bureau.Caption:='����� ������� ��� �������';

  with f_article_etat_par_bureau do begin
      radiogroup1.Caption:='��������' ; radiogroup1.Items[0]:=' ��� ������� '; radiogroup1.Items[1]:=' ��� �������� ';
      label1.Caption:='����� ���������' ;
      label3.Caption:='�������������' ;
      speedbutton1.Caption:='����������';
      button2.caption:='�����������������';
      label9.Caption:='���������'; label10.Caption:='��� �������';

      DBGRiD1.Columns[0].Title.caption:='��������' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='�������' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='�. �������' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='�. �������' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;

      DBGRiD3.Columns[0].Title.caption:='����������' ;
      DBGRiD3.Columns[1].Title.caption:='���������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[2].Title.caption:='��������' ;
      DBGRiD3.Columns[3].Title.caption:='��������������' ;
     end;
end;

 if ar_fr='f' then begin
  if f_article_etat_par_bureau.visible=true then f_article_etat_par_bureau.Close;
  f_article_etat_par_bureau.Caption:='f_article_etat_par_bureau';

  with f_article_etat_par_bureau do begin
      radiogroup1.Caption:='T R I (Clic pour trier)' ; radiogroup1.Items[0]:='Tri / d�signation'; radiogroup1.Items[1]:='Tri / r�f�rence';
      label1.Caption:='Table des D�signation' ;
      label3.Caption:='LES BUREAUX' ;
      speedbutton1.Caption:='IMPRESSION';
      button2.caption:='CONSOMMATION';
      label9.Caption:='D�signation'; label10.Caption:='R�f�rence';

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='D�signation' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Unit�' ;DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='Qt� ini.' ;DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Qt� act.' ; DBGRiD1.Columns[4].alignment:=taleftjustify;


      DBGRiD3.Columns[0].Title.caption:='Bureau' ;
      DBGRiD3.Columns[1].Title.caption:='Date' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[2].Title.caption:='Qtt�' ;
      DBGRiD3.Columns[3].Title.caption:='Observation' ;
     end;
end;    }
   if f_article_etat_par_bureau.visible=true then
      f_article_etat_par_bureau.BringToFront
    else
    f_article_etat_par_bureau.visible:=true;

end;

procedure Tf_etats_consommation.pp(Sender: TObject);
begin
{if ar_fr='a' then begin
  f_article_etat_par_un_agent.Close;
  f_article_etat_par_un_agent.Caption:='����� ������� ���� ����';

  with f_article_etat_par_un_agent do begin
      radiogroup1.Caption:='��������' ; radiogroup1.Items[0]:=' ��� ������� '; radiogroup1.Items[1]:=' ��� �������� ';
      label1.Caption:='����� ���������' ;
      label8.Caption:='�������������' ; label3.caption:='�����������������';
      speedbutton1.Caption:='����������';
      button2.caption:='�����������������';
      label9.Caption:='���������'; label10.Caption:='��� �������';
      label5.Caption:='.������� �    ';label4.Caption:='����������   '; label6.Caption:='�������������   '  ;

      DBGRiD1.Columns[0].Title.caption:='��������' ;//DBGRiD1.Columns[0].alignment:=tarightjustify;
      DBGRiD1.Columns[1].Title.caption:='�������' ;// DBGRiD1.Columns[1].alignment:=tarightjustify;
      DBGRiD1.Columns[2].Title.caption:='������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD1.Columns[3].Title.caption:='�. �������' ;//DBGRiD1.Columns[3].alignment:=tarightjustify;
      DBGRiD1.Columns[4].Title.caption:='�. �������' ;// DBGRiD1.Columns[4].alignment:=tarightjustify;

      DBGRiD4.Columns[0].Title.caption:='�������' ;//DBGRiD4.Columns[0].alignment:=tarightjustify;
      DBGRiD4.Columns[1].Title.caption:='.��� �' ; //DBGRiD4.Columns[1].alignment:=tarightjustify;
      DBGRiD4.Columns[2].Title.caption:='��� ����' ;//DBGRiD4.Columns[2].alignment:=tarightjustify;
      DBGRiD4.Columns[3].Title.caption:='��� ����'  ;//DBGRiD4.Columns[3].alignment:=tarightjustify;
      DBGRiD4.Columns[4].Title.caption:='��� �����' ; //DBGRiD4.Columns[4].alignment:=tarightjustify;
      DBGRiD4.Columns[5].Title.caption:='���  �����' ; //DBGRiD4.Columns[5].alignment:=tarightjustify;

      DBGRiD3.Columns[1].Title.caption:='���������' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[0].Title.caption:='������������' ;
      DBGRiD3.Columns[2].Title.caption:='��������������' ;
     end;
end;

 if ar_fr='f' then begin
  f_article_etat_par_un_agent.Close;
  f_article_etat_par_un_agent.Caption:='f_article_etat_par_un_agent';

  with f_article_etat_par_un_agent do begin
      radiogroup1.Caption:='T R I (Clic pour trier)' ; radiogroup1.Items[0]:='Tri / d�signation'; radiogroup1.Items[1]:='Tri / r�f�rence';
      label1.Caption:='Table des D�signation' ;
      label8.Caption:='LES AGENTS' ;   label3.caption:='CONSOMMATIONS';
      speedbutton1.Caption:='IMPRESSION';
      button2.caption:='CONSOMMATION';
      label9.Caption:='D�signation'; label10.Caption:='R�f�rence';
      label5.Caption:='Matricule';label4.Caption:='Nom agent'; label6.Caption:='Pr�nom agent'  ;

      DBGRiD1.Columns[0].Title.caption:='Code' ;DBGRiD1.Columns[0].alignment:=taleftjustify;
      DBGRiD1.Columns[1].Title.caption:='D�signation' ; DBGRiD1.Columns[1].alignment:=taleftjustify;
      DBGRiD1.Columns[2].Title.caption:='Unit�' ;DBGRiD1.Columns[2].alignment:=taleftjustify;
      DBGRiD1.Columns[3].Title.caption:='Qt� ini.' ;DBGRiD1.Columns[3].alignment:=taleftjustify;
      DBGRiD1.Columns[4].Title.caption:='Qt� act.' ; DBGRiD1.Columns[4].alignment:=taleftjustify;

      DBGRiD4.Columns[0].Title.caption:='Admini' ;DBGRiD4.Columns[0].alignment:=taleftjustify;
      DBGRiD4.Columns[1].Title.caption:='Matricule' ; DBGRiD4.Columns[1].alignment:=taleftjustify;
      DBGRiD4.Columns[2].Title.caption:='Nom Ar' ;DBGRiD4.Columns[2].alignment:=taleftjustify;
      DBGRiD4.Columns[3].Title.caption:='Pr�nom Ar'  ;DBGRiD4.Columns[3].alignment:=taleftjustify;
      DBGRiD4.Columns[4].Title.caption:='Nom Fr' ; DBGRiD4.Columns[4].alignment:=taleftjustify;
      DBGRiD4.Columns[5].Title.caption:='Pr�nom Fr' ; DBGRiD4.Columns[5].alignment:=taleftjustify;


      DBGRiD3.Columns[0].Title.caption:='Date' ;
      DBGRiD3.Columns[1].Title.caption:='Qtt�' ;//DBGRiD1.Columns[2].alignment:=tarightjustify;
      DBGRiD3.Columns[2].Title.caption:='Observation' ;
     end;
end;      }


     if f_article_etat_par_un_agent.visible=true then
      f_article_etat_par_un_agent.BringToFront
    else
      f_article_etat_par_un_agent.visible:=true;
end;


procedure Tf_etats_consommation.SpeedButton7Click(Sender: TObject);
begin
    f_etats_consommation.visible:=false;
end;

end.
