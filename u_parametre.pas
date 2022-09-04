unit u_parametre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,registry,
  StdCtrls ,  Dialogs, Buttons, ComCtrls;

type
  Tf_parametre = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    xiCountry: TEdit;
    xsdate: TEdit;
    xsdecimal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    xsCountry1: TEdit;
    Label5: TLabel;
    xsCountry: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    xiDate: TEdit;
    xsCurrency: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    xsThousand: TEdit;
    xsShortDate: TEdit;
    xsLanguage: TEdit;
    Label11: TLabel;
    xiCountry1: TEdit;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    xsdecimal1: TEdit;
    xsdate1: TEdit;
    xiDate1: TEdit;
    xsCurrency1: TEdit;
    xsThousand1: TEdit;
    xsShortDate1: TEdit;
    xsLanguage1: TEdit;
    b1: TBitBtn;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox1: TListBox;
    RichEdit1: TRichEdit;
     procedure registry(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure dif(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_parametre: Tf_parametre;Reg: TRegistry;
  Str: String;
  vtCount,i:Integer;
  Destino:tStrings;
  //ani:TStringList;
  ani:TStrings;
  procedure Liste_Imprimante(Destino : TStrings);
  procedure Selectionne_Imprimante(Imprimante : String);
implementation


{$R *.dfm}



procedure Liste_Imprimante(Destino : TStrings);
var
    RegCode             : TRegistry;
    Str                 : String;
    vtCount, i          : Integer;
begin
Destino.Clear;
RegCode := TRegistry.Create;
try
RegCode.RootKey := HKEY_CURRENT_USER;
if RegCode.OpenKey('Software\Microsoft\Windows NT\CurrentVersion\Devices',False)
then RegCode.GetValueNames(Destino);
finally
RegCode.CloseKey;
RegCode.Free;
end;
end;

procedure Selectionne_Imprimante(Imprimante : String);
var
    RegCode             : TRegistry;
    Str, Str1           : String;
    Arr_Tmp             : Array[0..64] of Char;
    vtCount, i          : Integer;
begin
RegCode := TRegistry.Create;
try
RegCode.RootKey := HKEY_CURRENT_USER;
if RegCode.OpenKey('Software\Microsoft\Windows NT\CurrentVersion\Devices',False)
then begin
     if RegCode.ValueExists(Imprimante)
     then begin
          Str1 := RegCode.ReadString(Imprimante);
          Str := Imprimante + ',' + Str1;
          RegCode.CloseKey;
          RegCode.RootKey := HKEY_CURRENT_USER;
          if RegCode.OpenKey('Software\Microsoft\Windows NT\CurrentVersion\Windows',False)
          then begin
               if RegCode.ValueExists('Device')
               then RegCode.WriteString('Device',Str);
               //Windows Refresh changes :
               StrCopy(Arr_Tmp, 'windows');
               SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, LongInt(@Arr_Tmp));
               end;
          end;
     end;
finally
RegCode.CloseKey;
RegCode.Free;
end;

end;


function GetRegistryValue(KeyName: string): string;
var
  Registry: TRegistry;
begin
  Registry := TRegistry.Create(KEY_READ);
  try
    Registry.RootKey:= HKEY_LOCAL_MACHINE;
    // False car nous ne voulons pas la créer si elle n'existe pas
    Registry.OpenKey(KeyName, False);
    Result := Registry.ReadString('VALUE1');
  finally
    Registry.Free;
  end;
end;

procedure Tf_parametre.registry(Sender: TObject);
begin
     Reg:=tRegistry.Create;
    
     ani:=tStringlist.Create;
     TRY
       Reg.RootKey:=HKEY_CURRENT_USER;
       if Reg.OpenKey('Software\Microsoft\Windows NT\CurrentVersion\Devices',False) then Reg.GetValueNames(ani);
       Reg.CloseKey;

       for i:=0 to ani.count-1 do  richedit1.lines[i]:=ani[i];


       Reg.OpenKey('Control Panel\International',false);
       xiCountry.Text:=Reg.ReadStrinG('iCountry');
       xsCountry.Text:=Reg.ReadStrinG('sCountry');
       xsdecimal.Text:=Reg.ReadStrinG('sdecimal');
       xsdate.Text:=Reg.ReadStrinG('sdate');
       xsCurrency.Text:=Reg.ReadStrinG('sCurrency');
       xiDate.Text:=Reg.ReadStrinG('iDate');
       xsThousand.Text:=Reg.ReadStrinG('sThousand');
       xsShortDate.Text:=Reg.ReadStrinG('sShortDate');
       xsLanguage.Text:=Reg.ReadStrinG('sLanguage');
       xiCountry1.Text:=Reg.ReadStrinG('iCountry');
       xsCountry1.Text:=Reg.ReadStrinG('sCountry');
       xsdecimal1.Text:=Reg.ReadStrinG('sdecimal');
       xsdate1.Text:=Reg.ReadStrinG('sdate');
       xsCurrency1.Text:=Reg.ReadStrinG('sCurrency');
       xiDate1.Text:=Reg.ReadStrinG('iDate');
       xsThousand1.Text:=Reg.ReadStrinG('sThousand');
       xsShortDate1.Text:=Reg.ReadStrinG('sShortDate');
       xsLanguage1.Text:=Reg.ReadStrinG('sLanguage');
  //  WriteString('sDate','/');

     finally
         Reg.Free;
     end;




end;

procedure Tf_parametre.b1Click(Sender: TObject);
begin
     if (trim(xiCountry.Text)<> trim(xiCountry1.Text)) or
        (trim(xsCountry.Text)<> trim(xsCountry1.Text)) or
        (trim(xsdecimal.Text)<> trim(xsdecimal1.Text)) or
        (trim(xsdate.Text)<> trim(xsdate1.Text)) or
        (trim(xsCurrency.Text)<> trim(xsCurrency1.Text)) or
        (trim(xiDate.Text)<> trim(xiDate1.Text)) or
        (trim(xsThousand.Text)<> trim(xsThousand1.Text)) or
        (trim(xsShortDate.Text)<> trim(xsShortDate1.Text)) or
        (trim(xsLanguage.Text)<> trim(xsLanguage1.Text))
          then begin
                b1.enabled:=true;
                Reg:=tRegistry.Create;
                TRY
                   Reg.RootKey:=HKEY_CURRENT_USER;
                   Reg.OpenKey('Control Panel\International',false);
                   if (trim(xiCountry.Text)<> trim(xiCountry1.Text)) then  reg.WriteString('iCountry',trim(xiCountry1.Text));
                   if (trim(xsCountry.Text)<> trim(xsCountry1.Text)) then reg.WriteString('sCountry',trim(xsCountry1.Text));
                   if (trim(xsdecimal.Text)<> trim(xsdecimal1.Text)) then  reg.WriteString('sdecimal',trim(xsdecimal1.Text));
                   if (trim(xsdate.Text)<> trim(xsdate1.Text)) then reg.WriteString('sdate',trim(xsdate1.Text));
                   if (trim(xidate.Text)<> trim(xidate1.Text)) then reg.WriteString('idate',trim(xidate1.Text));
                   if (trim(xsThousand.Text)<> trim(xsThousand1.Text)) then  reg.WriteString('sThousand',trim(xsThousand1.Text));
                   if (trim(xsShortDate.Text)<> trim(xsShortDate1.Text)) then reg.WriteString('sShortDate',trim(xsShortDate1.Text));
                   if (trim(xsLanguage.Text)<> trim(xsLanguage1.Text)) then  reg.WriteString('sLanguage',trim(xsLanguage1.Text));
                   reg.CloseKey;

                finally
                    Reg.Free;
                    b1.enabled:=false;
                end;
          end;

end;

procedure Tf_parametre.dif(Sender: TObject);
begin
     if (trim(xiCountry.Text)<> trim(xiCountry1.Text)) or
        (trim(xsCountry.Text)<> trim(xsCountry1.Text)) or
        (trim(xsdecimal.Text)<> trim(xsdecimal1.Text)) or
        (trim(xsdate.Text)<> trim(xsdate1.Text)) or
        (trim(xsCurrency.Text)<> trim(xsCurrency1.Text)) or
        (trim(xiDate.Text)<> trim(xiDate1.Text)) or
        (trim(xsThousand.Text)<> trim(xsThousand1.Text)) or
        (trim(xsShortDate.Text)<> trim(xsShortDate1.Text)) or
        (trim(xsLanguage.Text)<> trim(xsLanguage1.Text))     then  b1.enabled:=true;
end;

procedure Tf_parametre.BitBtn1Click(Sender: TObject);
begin
     Liste_Imprimante(ListBox1.Items);
end;

procedure Tf_parametre.BitBtn2Click(Sender: TObject);
begin
     if (ListBox1.ItemIndex <> -1)
        then Selectionne_Imprimante(ListBox1.Items[ListBox1.ItemIndex]);
end;

end.
