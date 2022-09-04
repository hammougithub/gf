unit u_Nombre_mandat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db,  Data.FMTBcd, Data.SqlExpr, IBX.IBSQL;

type
  Tf_Nombre_mandat = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    DRT: TQRLabel;
    T47: TQRLabel;
    T03: TQRLabel;
    T30: TQRLabel;
    T33: TQRLabel;
    T11: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand4: TQRBand;
    tg: TQRLabel;
    tdrt: TQRLabel;
    tt47: TQRLabel;
    tt03: TQRLabel;
    tt30: TQRLabel;
    tt33: TQRLabel;
    tt11: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    CT47: TQRLabel;
    CT03: TQRLabel;
    CT30: TQRLabel;
    CT33: TQRLabel;
    CT11: TQRLabel;
    T1: TQRLabel;
    CTT47: TQRLabel;
    CTT03: TQRLabel;
    CTT30: TQRLabel;
    CTT33: TQRLabel;
    CTT11: TQRLabel;
    T2: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel20: TQRLabel;
    qux: TIBSQL;
    qu1x: TIBSQL;
    qu2x: TIBSQL;
    qu3x: TIBSQL;
    qu: TSQLQuery;
    qu1: TSQLQuery;
    qu2: TSQLQuery;
    qu3: TSQLQuery;
    procedure LIGNE(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure total(Sender: TQRCustomBand; var PrintBand: Boolean);
  
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_Nombre_mandat: Tf_Nombre_mandat;
  s:string;


implementation

uses MAIN, u_dm;

{$R *.DFM}


procedure p1(x:char);
begin
    with f_Nombre_mandat do begin
     Qu.Close;
    qu.Params[0].Asstring:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;
    qu.Params[1].AsString:=x;
    qu.Params[2].AsString:=f_principale.gestion.text;
    Qu.open;
    end
end;

procedure p2(x:char);
begin
    with f_Nombre_mandat do begin
    Qu1.Close;
    qu1.Params[0].AsString:=x;
    qu1.Params[1].AsString:=f_principale.gestion.text;
    Qu1.open;
    end
end;

procedure Tf_Nombre_mandat.LIGNE(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin
           Qu.Close;
           p1('1');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);drt.Caption:=s+' ' end;
           Qu.Close;
           p1('2');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);t47.Caption:=s+' ' end;
           Qu.Close;
           p1('3');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);t03.Caption:=s+' ' end;
           Qu.Close;
           p1('4');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);t30.caption:=s+' ' end;
           Qu.Close;
           p1('5');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);t33.Caption:=s+' ' end;
           Qu.Close;
           p1('6');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);t11.Caption:=s+' ' end;

           Qu.Close;
           p1('7');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);Ct47.Caption:=s+' ' end;
           Qu.Close;
           p1('8');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);Ct03.Caption:=s+' ' end;
           Qu.Close;
           p1('9');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);ct30.caption:=s+' ' end;
           Qu.Close;
           p1('a');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);ct33.Caption:=s+' ' end;
           Qu.Close;
           p1('b');s:='              ';
           if  qu.Fields[0].asstring<>'' then begin str(qu.Fields[0].value:5:0,s);ct11.Caption:=s+' ' end;
    Qu2.Close;
    qu2.Params[0].AsString:=f_dm.clientdataset_chapitre.fieldByName('chapitre').asstring;;
    qu2.Params[1].AsString:=f_principale.gestion.text;
    Qu2.open;
    s:='              ';
    if  qu2.Fields[0].asstring<>'' then begin str(qu2.Fields[0].value:6:0,s);t1.Caption:=s+' ' end;
    Qu2.Close;

end;



procedure Tf_Nombre_mandat.total(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin
          qu1.Close;
           p2('1');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);tdrt.Caption:=s+' ' end;
           qu1.Close;
           p2('2');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);tt47.Caption:=s+' ' end;
           qu1.Close;
           p2('3');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);tt03.Caption:=s+' ' end;
           qu1.Close;
           p2('4');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);tt30.caption:=s+' ' end;
           qu1.Close;
           p2('5');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);tt33.Caption:=s+' ' end;
           qu1.Close;
           p2('6');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);tt11.Caption:=s+' ' end;

           qu1.Close;
           p2('7');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);ctt47.Caption:=s+' ' end;
           qu1.Close;
           p2('8');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);ctt03.Caption:=s+' ' end;
           qu1.Close;
           p2('9');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);ctt30.caption:=s+' ' end;
           qu1.Close;
           p2('a');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);ctt33.Caption:=s+' ' end;
           qu1.Close;
           p2('b');s:='              ';
           if  qu1.Fields[0].asstring<>'' then begin str(qu1.Fields[0].value:5:0,s);ctt11.Caption:=s+' ' end;

            Qu3.Close;
            qu3.Params[0].AsString:=f_principale.gestion.text;
            qu3.open;
            s:='              ';
            if  qu3.Fields[0].asstring<>'' then begin str(qu3.Fields[0].value:6:0,s);t2.Caption:=s+' ' end;
            Qu3.Close;
end;



end.
