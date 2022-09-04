unit u_eng_previw;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, QuickRpt, Qrctrls, ExtCtrls, Db,
  Unit_function_and_procedure,  variants,
  Data.FMTBcd, Data.SqlExpr;

type
  Tf_eng_preview = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    d1: TQRLabel;
    m1: TQRLabel;
    mm3: TQRLabel;
    m4: TQRLabel;
    m5: TQRLabel;
    mm2: TQRLabel;
    mm5: TQRLabel;
    mm6: TQRLabel;
    l1: TQRLabel;
    d2: TQRLabel;
    dd2: TQRLabel;
    l8: TQRLabel;
    m7: TQRLabel;
    dd1: TQRLabel;
    mm4: TQRLabel;
    m6: TQRLabel;
    m3: TQRLabel;
    mm7: TQRLabel;
    l7: TQRLabel;
    l2: TQRLabel;
    ll2: TQRLabel;
    l3: TQRLabel;
    ll3: TQRLabel;
    l4: TQRLabel;
    ll4: TQRLabel;
    l5: TQRLabel;
    ll5: TQRLabel;
    l6: TQRLabel;
    ll6: TQRLabel;
    ll1: TQRLabel;
    ll7: TQRLabel;
    d3: TQRLabel;
    dd3: TQRLabel;
    d4: TQRLabel;
    dd4: TQRLabel;
    d6: TQRLabel;
    dd6: TQRLabel;
    d7: TQRLabel;
    dd7: TQRLabel;
    d8: TQRLabel;
    d5: TQRLabel;
    dd5: TQRLabel;
    m8: TQRLabel;
    ll8: TQRLabel;
    d9: TQRLabel;
    d10: TQRLabel;
    dd8: TQRLabel;
    dd10: TQRLabel;
    dd9: TQRLabel;
    dd12: TQRLabel;
    d13: TQRLabel;
    dd11: TQRLabel;
    d11: TQRLabel;
    d12: TQRLabel;
    l9: TQRLabel;
    ll9: TQRLabel;
    l10: TQRLabel;
    ll10: TQRLabel;
    l11: TQRLabel;
    ll11: TQRLabel;
    l12: TQRLabel;
    ll13: TQRLabel;
    ll12: TQRLabel;
    mm8: TQRLabel;
    m9: TQRLabel;
    m10j: TQRLabel;
    m10: TQRLabel;
    m20b: TQRLabel;
    m11: TQRLabel;
    m22v: TQRLabel;
    m12: TQRLabel;
    m13: TQRLabel;
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
    SQLQuery_as: TSQLQuery;
    SQLQuery2: TSQLQuery;
    sqlQuery_somme_eng_economie: TSQLQuery;
    SQLQuery1: TSQLQuery;
    l13: TQRLabel;
    d15: TQRLabel;
    m15: TQRLabel;
    QRLabel26: TQRLabel;
    m14: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    dd13: TQRLabel;
    dd14: TQRLabel;
    dd15: TQRLabel;
    l14: TQRLabel;
    QRLabel36: TQRLabel;
    l15: TQRLabel;
    QRLabel35: TQRLabel;
    d14: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape4: TQRShape;
    mm1: TQRLabel;
    m2: TQRLabel;
    QRShape8: TQRShape;
    q11: TQRLabel;
    procedure donnees(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_eng_preview: Tf_eng_preview;

implementation

uses MAIN, u_dm, u_parameters, u_parameters_etat_x, u_edit_eng;

{$R *.DFM}

procedure Tf_eng_preview.donnees(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var s1,s,s2:string;
      xas,xns,x:real;

begin
s1:='';
// INFORMATIONS PROPRES A UNE INSTALLATION ....
qrlabel1.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters1.locate('forme;champ',
                   vararrayof(['f_eng_preview','qrlabel1']),[]) then
                    qrlabel1.Caption:=trim(f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters1.Append;
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('forme').AsString:='f_eng_preview';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('champ').AsString:='qrlabel1';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('designation').AsString:='الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString:='الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة';
                        f_edit_eng.SimpleDataSet_parameters1.Post;s1:='x' ;
                        f_parameters.edit1.Text:='forme=f_eng_preview;champ=qrlabel1;designation=الجمــهــوريــة الـجـزائــريــة الـديــمـوقـراطـيــة الـشـعـبـيـة'
                    end;

qrlabel2.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters1.locate('forme;champ',
                   vararrayof(['f_eng_preview','qrlabel2']),[]) then
                    qrlabel2.Caption:=trim(f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters1.Append;
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('forme').AsString:='f_eng_preview';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('champ').AsString:='qrlabel2';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('designation').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString:='وزارة الـــمــالــيــــة';
                        f_edit_eng.SimpleDataSet_parameters1.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_preview;champ=qrlabel2;designation=وزارة الـــمــالــيــــة'
                    end;

qrlabel38.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters1.locate('forme;champ',
                   vararrayof(['f_eng_preview','qrlabel38']),[]) then
                    qrlabel38.Caption:=trim(f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters1.Append;
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('forme').AsString:='f_eng_preview';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('champ').AsString:='qrlabel38';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('designation').AsString:='الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString:='الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة';
                        f_edit_eng.SimpleDataSet_parameters1.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_preview;champ=qrlabel38;designation=الــمـديــريــة الـــعــامــــة للمــحــاســــبـــة'
                    end;

qrlabel3.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters1.locate('forme;champ',
                   vararrayof(['f_eng_preview','qrlabel3']),[]) then
                    qrlabel3.Caption:=trim(f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters1.Append;
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('forme').AsString:='f_eng_preview';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('champ').AsString:='qrlabel3';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('designation').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString:='الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة';
                        f_edit_eng.SimpleDataSet_parameters1.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_preview;champ=qrlabel3;designation=الــمـديــريــة الـجــهــويـــة للـخزيــنــة بــغــردايــــة'
                    end;

qrlabel16.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters1.locate('forme;champ',
                   vararrayof(['f_eng_preview','qrlabel16']),[]) then
                    qrlabel16.Caption:=trim(f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters1.Append;
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('forme').AsString:='f_eng_preview';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('champ').AsString:='qrlabel16';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('designation').AsString:='وزارة   :  110 347';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString:='وزارة   :  110 347';
                        f_edit_eng.SimpleDataSet_parameters1.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_preview;champ=qrlabel16;designation=وزارة   :  110 347'
                    end;


qrlabel17.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters1.locate('forme;champ',
                   vararrayof(['f_eng_preview','qrlabel17']),[]) then
                    qrlabel17.Caption:=trim(f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters1.Append;
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('forme').AsString:='f_eng_preview';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('champ').AsString:='qrlabel17';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('designation').AsString:='مـصـلـحـة : م.ج.خ';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString:='مـصـلـحـة : م.ج.خ';
                        f_edit_eng.SimpleDataSet_parameters1.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_preview;champ=qrlabel17;designation=مـصـلـحـة : م.ج.خ'
                    end;


qrlabel25.Caption:=' ? ? ? ? ?  ? ';
if f_edit_eng.SimpleDataSet_parameters1.locate('forme;champ',
                   vararrayof(['f_eng_preview','qrlabel25']),[]) then
                    qrlabel25.Caption:=trim(f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString)
                    else begin
                        f_edit_eng.SimpleDataSet_parameters1.Append;
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('forme').AsString:='f_eng_preview';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('champ').AsString:='qrlabel25';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('designation').AsString:='غـــردايـــــة يوم';
                        f_edit_eng.SimpleDataSet_parameters1.FieldByName('libellear').AsString:='غـــردايـــــة يوم';
                        f_edit_eng.SimpleDataSet_parameters1.Post;s1:='x';
                        f_parameters.edit1.Text:='forme=f_eng_preview;champ=qrlabel25;designation=غـــردايـــــة يوم'
                    end;

   if s1='x' then  begin
                       f_Parameters_etat_x.DataSource1.DataSet:=f_edit_eng.SimpleDataSet_parameters1;
                       f_Parameters_etat_x.label1.caption:= 'Parametres de l"état engagement, validez ou resaisissez les nouvelles données ... ' ;
                       if f_Parameters_etat_x.WindowState=wsMinimized  then f_Parameters_etat_x.WindowState:=wsMaximized ;
                       f_Parameters_etat_x.visible:=true; end;

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
            dd1.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m1.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);

            f_dm.simpledataset_det_eng.next;
       end
       else
       begin
          l1.caption:='               ';
          d1.caption:='                                                                                                       ';
          dd1.caption:='                                                                                                       ';
          m1.caption:='                ';
       end;

    if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l2.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d2.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd2.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m2.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l2.caption:='               ';
          d2.caption:='                                                                                                       ';
          dd2.caption:='                                                                                                       ';
          m2.caption:='                ';
       end;

    if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l3.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d3.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd3.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m3.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l3.caption:='               ';
          d3.caption:='                                                                                                       ';
          m3.caption:='                ';
          dd3.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l4.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d4.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd4.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
             m4.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l4.caption:='               ';
          d4.caption:='                                                                                                       ';
          m4.caption:='                ';
          dd4.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l5.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d5.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd5.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m5.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l5.caption:='               ';
          d5.caption:='                                                                                                       ';
          m5.caption:='                ';
          dd5.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l6.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d6.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd6.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
             m6.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l6.caption:='               ';
          d6.caption:='                                                                                                       ';
          m6.caption:='                ';
          dd6.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l7.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d7.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd7.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
             m7.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l7.caption:='               ';
          d7.caption:='                                                                                                       ';
          m7.caption:='                ';
          dd7.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l8.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d8.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd8.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
             m8.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l8.caption:='               ';
          d8.caption:='                                                                                                       ';
          m8.caption:='                ';
          dd8.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l9.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d9.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd9.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
             m9.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l9.caption:='               ';
          d9.caption:='                                                                                                       ';
          m9.caption:='                ';
          dd9.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
             x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l10.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d10.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd10.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m10.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l10.caption:='               ';
          d10.caption:='                                                                                                       ';
          m10.caption:='                ';
          dd10.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l11.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d11.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd11.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m11.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l11.caption:='               ';
          d11.caption:='                                                                                                       ';
          m11.caption:='                ';
          dd11.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l12.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d12.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd12.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
             m12.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l12.caption:='               ';
          d12.caption:='                                                                                                       ';
          m12.caption:='                ';
          dd12.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l13.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d13.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd13.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m13.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l13.caption:='               ';
          d13.caption:='                                                                                                       ';
          m13.caption:='                ';
          dd13.caption:='                                                                                                       ';
       end;

        if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l14.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d14.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd14.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
             m14.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l14.caption:='               ';
          d14.caption:='                                                                                                       ';
          m14.caption:='                ';
          dd14.caption:='                                                                                                       ';
       end;

       if not f_dm.simpledataset_det_eng.eof then
       begin
            x:=x+f_dm.simpledataset_det_eng.fieldByName('montant').asfloat;
            l15.Caption:=f_dm.simpledataset_det_eng.fieldByName('ligne').asstring;
            d15.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation').asstring);
            dd15.Caption:=trim(f_dm.simpledataset_det_eng.fieldByName('designation1').asstring);
            m15.Caption:=formater_float(f_dm.simpledataset_det_eng.fieldByName('montant').asfloat);
            f_dm.simpledataset_det_eng.next;
       end
        else
       begin
          l15.caption:='               ';
          d15.caption:='                                                                                                       ';
          m15.caption:='                ';
          dd15.caption:='                                                                                                       ';
       end;

       {if not f_dm.simpledataset_det_eng.eof then
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
       end; }

   qrlm.Caption:=formater_float(x);
   qrls.caption:=formater_float(x);

   SQLQuery_as.Close;
   SQLQuery_as.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   SQLQuery_as.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   SQLQuery_as.Params[2].AsString:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   SQLQuery_as.Params[3].Asinteger:=f_dm.simpledataset_eng.fieldByName('fiche').asinteger;
   SQLQuery_as.open;

   sqlquery1.Close;
   sqlquery1.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery1.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery1.Params[2].asstring:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery1.open;

   sqlquery2.Close;
   sqlquery2.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery2.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery2.Params[2].asstring:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery2.open;

   sqlquery_somme_eng_economie.close;
   sqlquery_somme_eng_economie.Params[0].AsString:=f_dm.simpledataset_eng.fieldByName('gestion').asstring;
   sqlquery_somme_eng_economie.Params[1].AsString:=f_dm.simpledataset_eng.fieldByName('chapitre').asstring;
   sqlquery_somme_eng_economie.Params[2].AsString:=f_dm.simpledataset_eng.fieldByName('article').asstring;
   sqlquery_somme_eng_economie.Params[3].AsSmallint:=f_dm.simpledataset_eng.fieldByName('fiche').asinteger;
   sqlquery_somme_eng_economie.open;

   xas:=0.0;


   // a faire
      // enlever les lignes de xas   sqlquery1.Fields[0].value  et
      // sqlquery2.Fields[0].value
      // et engager ceuci ...
      // pour que les etats soient corrects ...

    // Somme des crédits délégués et en plus
  if  sqlquery1.Fields[0].asstring<>'' then
       xas:=sqlquery1.Fields[0].value;

    // Somme des crédits en moins
   if  sqlquery2.Fields[0].asstring<>'' then
       begin
        xas:=xas-sqlquery2.Fields[0].value;
       end;
    // Somme des engagements anterieurs en économie///
   if sqlquery_somme_eng_economie.Fields[0].asstring<>'' then
      xas:=xas+sqlquery_somme_eng_economie.Fields[0].value;

  // Somme des engagements anterieurs en dépense////
  if   sqlquery_as.Fields[0].asstring<>'' then
         xas:=xas-sqlquery_as.Fields[0].value;


      if xas<>0 then qrlas.caption:=formater_float(xas) else qrlas.caption:='     0.0   ';
   /////////xxxxxxxxxxxx




  if f_dm.simpledataset_eng.fieldByName('objet').asstring='e'
  then x:=-x;

  if xas-x<>0 then  qrlns.caption:=formater_float(xas-x) else qrlns.caption:='   0.0    ';

if f_dm.simpledataset_eng.fieldByName('objet').asstring='d' then  qrl28.caption:='نـفـقـة'   ;
if f_dm.simpledataset_eng.fieldByName('objet').asstring='e' then  qrl28.caption:='اقـتـصــاد';
if f_dm.simpledataset_eng.fieldByName('objet').asstring='r' then  qrl28.caption:='ســحـب';


 if f_dm.simpledataset_eng.fieldByName('objet').asstring='e'    // on le remet positif
  then x:=-x;



decodedate(f_dm.simpledataset_eng.Fieldbyname('dates').asdatetime,annee,mois,jour);
   qrdate1.caption:=Unit_function_and_procedure.inttostr_avec_zero(annee)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(mois)+'/'+
                    Unit_function_and_procedure.inttostr_avec_zero(jour);



{if x<100000000 then begin
    str(x:15:2,s1);s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
    s_en_l.caption:=somme_en_lettre(s);
    if s2<>'00' then s_en_l.caption:=s_en_l.caption+' '+s2+' سنتيم' ; end;  }


str(x:15:2,s1);s1:=trim(s1);s:=Copy(S1,0,length(s1)-3);s2:=Copy(S1,length(s1)-1,2);
if x<100000000 then  s_en_l.caption:=somme_en_lettre(s) else s_en_l.caption:=Convert(strtoint(s));
if s2<>'00' then s_en_l.caption:=s_en_l.caption+' '+s2+' سنتيم' else s_en_l.caption:=s_en_l.caption+'.';


if f_dm.clientdataset_chapitre.locate('chapitre;article',vararrayof([f_dm.simpledataset_eng.fieldByName('chapitre').asstring,f_dm.simpledataset_eng.fieldByName('article').asstring]),[])
then qrld.caption:=f_dm.clientdataset_chapitre.fieldByName('libelle_arabe').asstring ;


o1.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne1').asstring);
o2.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne2').asstring);
o3.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne3').asstring);
o4.Caption:=trim(f_dm.simpleDataSet_obs_eng.fieldByName('ligne4').asstring);


end;


end.
