unit u_eng_prev1;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, QuickRpt, Qrctrls, ExtCtrls, Db,
  Unit_function_and_procedure,
  //IBCustomDataSet,
   //IBQuery,IBSQL,
   variants,
  Data.FMTBcd, Data.SqlExpr;

type
  Tf_eng_prev = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    d1: TQRLabel;
    m1: TQRLabel;
    M6: TQRLabel;
    M3: TQRLabel;
    M7: TQRLabel;
    M2: TQRLabel;
    M9: TQRLabel;
    M4: TQRLabel;
    M10: TQRLabel;
    M12: TQRLabel;
    l1: TQRLabel;
    D3: TQRLabel;
    D4: TQRLabel;
    l15: TQRLabel;
    M13: TQRLabel;
    D2: TQRLabel;
    M8: TQRLabel;
    M11: TQRLabel;
    M5: TQRLabel;
    M14: TQRLabel;
    l13: TQRLabel;
    l3: TQRLabel;
    l4: TQRLabel;
    l5: TQRLabel;
    l6: TQRLabel;
    l7: TQRLabel;
    l8: TQRLabel;
    l9: TQRLabel;
    l10: TQRLabel;
    l11: TQRLabel;
    l12: TQRLabel;
    l2: TQRLabel;
    l14: TQRLabel;
    D5: TQRLabel;
    D6: TQRLabel;
    D7: TQRLabel;
    D8: TQRLabel;
    D11: TQRLabel;
    D12: TQRLabel;
    d13: TQRLabel;
    d14: TQRLabel;
    d15: TQRLabel;
    D9: TQRLabel;
    D10: TQRLabel;
    M15: TQRLabel;
    l16: TQRLabel;
    d17: TQRLabel;
    d19: TQRLabel;
    d16: TQRLabel;
    d20: TQRLabel;
    d18: TQRLabel;
    d24: TQRLabel;
    d25: TQRLabel;
    d22: TQRLabel;
    d21: TQRLabel;
    d23: TQRLabel;
    l17: TQRLabel;
    l18: TQRLabel;
    l19: TQRLabel;
    l20: TQRLabel;
    l21: TQRLabel;
    l22: TQRLabel;
    l23: TQRLabel;
    l25: TQRLabel;
    l24: TQRLabel;
    m16: TQRLabel;
    m17: TQRLabel;
    m18: TQRLabel;
    m19: TQRLabel;
    m20: TQRLabel;
    m21: TQRLabel;
    m22: TQRLabel;
    m23: TQRLabel;
    m24: TQRLabel;
    m25: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qrlas: TQRLabel;
    qrlns: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLs: TQRLabel;
    s_en_l: TQRLabel;
    QRLabel27: TQRLabel;
    QRL28: TQRLabel;
    QRLabel28: TQRLabel;
    qrld: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    o1: TQRLabel;
    o2: TQRLabel;
    o3: TQRLabel;
    o4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel3: TQRLabel;
    qrdate1: TQRLabel;
    qrlm: TQRLabel;
    Q1: TQRLabel;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery_as: TSQLQuery;
    sqlQuery_somme_eng_economie: TSQLQuery;
    QRShape4: TQRShape;
    q11: TQRLabel;
    procedure donnees(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_eng_prev: Tf_eng_prev;

implementation

uses MAIN, u_dm, u_parameters, u_parameters_etat_x, u_edit_eng;

{$R *.DFM}

procedure Tf_eng_prev.donnees(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var s1,s,s2:string;
      xas,xns,x:real;
begin
 s1:='';
// INFORMATIONS PROPRES A UNE INSTALLATION ....
qrlabel1.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_eng_prev','qrlabel1']),[]) then
                    qrlabel1.Caption:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_eng_prev';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel1';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_eng_prev;champ=qrlabel1;designation=الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة'
                    end;

qrlabel2.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_eng_prev','qrlabel2']),[]) then
                    qrlabel2.Caption:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_eng_prev';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel2';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_prev;champ=qrlabel2;designation=وزارة الـــمــالــيــــة'
                    end;

qrlabel38.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_eng_prev','qrlabel38']),[]) then
                    qrlabel38.Caption:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_eng_prev';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel38';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';

                        f_parameters.edit1.Text:='forme=f_eng_prev;champ=qrlabel38;designation=الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة'
                    end;

qrlabel3.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_eng_prev','qrlabel3']),[]) then
                    qrlabel3.Caption:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_eng_prev';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel3';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_prev;champ=qrlabel3;designation=الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة'
                    end;

qrlabel16.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_eng_prev','qrlabel16']),[]) then
                    qrlabel16.Caption:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_eng_prev';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel16';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='وزارة   :  110 347';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='وزارة   :  110 347';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_prev;champ=qrlabel16;designation=وزارة   :  110 347'
                    end;


qrlabel17.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_eng_prev','qrlabel17']),[]) then
                    qrlabel17.Caption:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_eng_prev';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel17';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='مـصـلـحـة : م.ج.خ';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='مـصـلـحـة : م.ج.خ';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_prev;champ=qrlabel17;designation=مـصـلـحـة : م.ج.خ'
                    end;


qrlabel25.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters.locate('forme;champ',
                   vararrayof(['f_eng_prev','qrlabel25']),[]) then
                    qrlabel25.Caption:=trim(f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters.Append;
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('forme').AsString:='f_eng_prev';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('champ').AsString:='qrlabel25';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('designation').AsString:='غـــردايـــــة يوم';
                        f_edit_eng.SimpleDataSet_parameters.FieldByName('libellear').AsString:='غـــردايـــــة يوم';
                        f_edit_eng.SimpleDataSet_parameters.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_prev;champ=qrlabel25;designation=غـــردايـــــة يوم'
                    end;

   if s1='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_eng.simpledataset_parameters;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"état engagement, validez ou resaisissez les nouvelles données ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true;
                   end;

  if (f_dm.SimpleDataSet_users.Locate('id',trim(f_dm.SimpleDataSet_eng.FieldByName('utilisateur').AsString),[])) then
    q11.Caption:=' حرر من طرف '+trim(f_dm.SimpleDataSet_users.FieldByName('utilisateur').AsString)
    else  q11.Caption:=' حرر من طرف ';

 x:=0;
   f_dm.ClientDataSet_credit.first;
   f_dm.simpledataset_det_eng.first;

   if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l1.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d1.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m1.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);

            f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          l1.caption:='               ';
          d1.caption:='                                                                                                       ';
          m1.caption:='                ';
       end;

    if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l2.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d2.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m2.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l2.caption:='               ';
          d2.caption:='                                                                                                       ';
          m2.caption:='                ';
       end;

    if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l3.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d3.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m3.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l3.caption:='               ';
          d3.caption:='                                                                                                       ';
          m3.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l4.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d4.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m4.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l4.caption:='               ';
          d4.caption:='                                                                                                       ';
          m4.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l5.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d5.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m5.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l5.caption:='               ';
          d5.caption:='                                                                                                       ';
          m5.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l6.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d6.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m6.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l6.caption:='               ';
          d6.caption:='                                                                                                       ';
          m6.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l7.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d7.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m7.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l7.caption:='               ';
          d7.caption:='                                                                                                       ';
          m7.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l8.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d8.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m8.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l8.caption:='               ';
          d8.caption:='                                                                                                       ';
          m8.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l9.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d9.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m9.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l9.caption:='               ';
          d9.caption:='                                                                                                       ';
          m9.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l10.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d10.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m10.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l10.caption:='               ';
          d10.caption:='                                                                                                       ';
          m10.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l11.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d11.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m11.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l11.caption:='               ';
          d11.caption:='                                                                                                       ';
          m11.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l12.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d12.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m12.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l12.caption:='               ';
          d12.caption:='                                                                                                       ';
          m12.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l13.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d13.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m13.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l13.caption:='               ';
          d13.caption:='                                                                                                       ';
          m13.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l14.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d14.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m14.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l14.caption:='               ';
          d14.caption:='                                                                                                       ';
          m14.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l15.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d15.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m15.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l15.caption:='               ';
          d15.caption:='                                                                                                       ';
          m15.caption:='                ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l16.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d16.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m16.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l16.caption:='               ';
          d16.caption:='                                                                                                       ';
          m16.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l17.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d17.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m17.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l17.caption:='               ';
          d17.caption:='                                                                                                       ';
          m17.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l18.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d18.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m18.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l18.caption:='               ';
          d18.caption:='                                                                                                       ';
          m18.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l19.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d19.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m19.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l19.caption:='               ';
          d19.caption:='                                                                                                       ';
          m19.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l20.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d20.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m20.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l20.caption:='               ';
          d20.caption:='                                                                                                       ';
          m20.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l21.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d21.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m21.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l21.caption:='               ';
          d21.caption:='                                                                                                       ';
          m21.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l22.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d22.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
             m22.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l22.caption:='               ';
          d22.caption:='                                                                                                       ';
          m22.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l23.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d23.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m23.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l23.caption:='               ';
          d23.caption:='                                                                                                       ';
          m23.caption:='                ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l24.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d24.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            m24.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;

       end
        else
       begin
          l24.caption:='               ';
          d24.caption:='                                                                                                       ';
          m24.caption:='                ';
       end;

       Q1.Enabled:=false;
       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l25.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d25.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
              m25.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
           if not f_dm.simpledataset_det_eng.eof then Q1.Enabled:=true;
       end
       else
       begin
          l25.caption:='               ';
          d25.caption:='                                                                                                       ';
          m25.caption:='                ';
       end;

   qrlm.Caption:=formater_float(x);
   qrls.caption:=formater_float(x);

   
end;




end.
