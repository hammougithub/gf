

{*******************************************
        * Compute number of days between two dates *
        * ---------------------------------------- *
        * Ref.: "MathÈmatiques par l'informatique  *
        *        individuelle (1) par H. Lehning   *
        *        et D. Jakubowicz, Masson, Paris,  *
        *        1982" [BIBLI 06].                 *
        *                                          *
        *     Pascal version By J-P Moreau, Paris. *
        *******************************************}

        { *****************************************************************************
       Note: The two dates must be between 01/01/1901
       and 12/31/2099 to avoid treatment of special
       "secular" years, such as 1800, 1900, 2100...
       (2000, a multiple of 400, is a normal year!)

       The first date is M, D, Y
       N, number of days between first date and fictitious
       starting date 01/00/1901, is given by formula:

       N = INT(365,25*(Y-1901)+A(M)+D)

        where A(M) is given by table below:

        M    1  2  3     4      5      6      7      8      9     10     11     12
        A(M) 0 31 59,25 90,25 120,25 151,25 181,25 212,25 243,25 273,25 304,25 334,25

       First N is saved in R.

       The second date is again M, D, Y
       N is again computed with same formula.

       Final result is N - R.
     ******************************************************************************}
unit Unit_function_and_procedure;

interface
    uses sysutils,forms, IdTCPConnection, IdTCPClient,
    //sockets,
    WinSock,
    IdRawBase, IdRawClient, IdIcmpClient;
    function somme_en_lettre(sw:ansistring):string;
    function u_ndays(d1,m1,d2,m2:word;y1,y2:integer):real;
    function file_exist(sw:string):boolean;
    function formater_float(f:real):string;
    function inttostr_avec_zero(x:word):string;
    procedure RescaleForm(F:tScrollingWinControl);
    function GetIP( HostName: string): string;
    function getIPlocal:string;
    function GetIPFromHost( HostName: string): string;
    function Droite(s: string): string;
    function Reverse(const s: string): string;
    function convert(N:Integer):string;
    Function NombreEnLettres(Valeur : Real; SM : String = '' ; France : Boolean = True ) : string;
implementation


function Reverse(const s: string): string;
var
  i, len: Integer;
begin
  len := Length(s);
  SetLength(Result, len);
  for i := len downto 1 do
  begin
    Result[len - i + 1] := s[i];
  end;
end;
procedure RescaleForm(F: TScrollingWinControl) ;
var
  M, D : Integer;
begin
   M := Screen.Width; // multiplicateur = dÈfinition actuelle de l'Ècran
   D := 1024;   // diviseur       = dÈfinition de l'Ècran ‡ la conception
   F.ScaleBy(M, D);
   F.Realign;
end;

 function getIPlocal:string;
Begin
 { With TCustomIpClient.Create(Nil) do
  Begin
    Result:=LocalHostAddr;
    Free;
  End;}
End;
function GetIP( HostName: string): string;
var
  WSAData: TWSAData;
  R: PHostEnt;
  A: TInAddr;
begin
  Result :='';// IPNULL; // '0.0.0.0'
  WSAStartup($101, WSAData);
  R := Winsock.GetHostByName(PAnsiChar(AnsiString(HostName))) ;
  if Assigned(R) then
  begin
    A := PInAddr(r^.h_Addr_List^)^;
    Result := string(WinSock.inet_ntoa(A));
  end;
end;

function GetIPFromHost( HostName: string): string;
type
  TaPInAddr = array[0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  i: Integer;
  GInitData: TWSAData;
begin

  WSAStartup($101, GInitData);
  Result := '';
  //HostByName(const AHostName: string; const AIPVersion: TIdIPVersion = ID_DEFAULT_IP_VERSION): string; override;
  phe := GetHostByName(PAnsiChar(AnsiString(HostName)));
  if phe = nil then begin Result:='Nil'; Exit; end;
  pPtr := PaPInAddr(phe^.h_addr_list);
  i := 0;
  while pPtr^[i] <> nil do
  begin
    Result := inet_ntoa(pptr^[i]^);//+inttostr(i);
    Inc(i);
  end;
  WSACleanup;
end ;

 function inttostr_avec_zero(x:word):string;
      begin
           inttostr_avec_zero:=trim(inttostr(x));
           if length(trim(inttostr(x)))=1 then  inttostr_avec_zero:='0'+trim(inttostr(x));

      end;

function Droite(s: string): string;
var i:integer;ss,sss:string;
begin
   ss:=trim(s);
   for I:=1 to (length(s)-length(ss)) do sss:=' ';
   droite:=sss+ss;
end;

 function formater_float(f:real):string;
//   var s,s1,s2,s3:string;i,j,x:word;
  begin
      {str(f:15:2,s);s:=trim(s);

      j:=length(s);s1:=''; s3:='';
      if j<7 then  formater_float:=s;
      if j>6 then begin
             s1:=Copy(S,0,j-3);
             s3:=Copy(S,j-2,3);
             j:=length(s1);x:=0;s:='';
              while j<>0 do begin
                  s:=s+s1[j];x:=x+1;
                  if (x=3)  then begin s:=s+' ';x:=0 end;  //AND (j<i))
                  j:=j-1;
                    end;
                 S2:='';j:=length(trim(s));
                 while j<>0 do begin s2:=s2+s[j];j:=j-1 end;
                 formater_float:=s2+s3;
                 end; }
   formater_float:=floattostrf(f,ffNumber,12,2);
end;


    function file_exist(sw:string):boolean;
     var
       FileToFind: string;bool:boolean;
    begin
        FileToFind :=sysutils.FileSearch(FileToFind, GetCurrentDir);
        if FileToFind = '' then bool:=false
            //  ShowMessage('Couldn''t find ' + FileToFind + '.')
        else   bool:=true;
             // ShowMessage('Found ' + FileToFind + '.');
        file_exist:=bool;
    end;




    function u_ndays(d1,m1,d2,m2:word;y1,y2:integer):real;
        VAR    A : Array[1..12] of REAL;
           M : WORD;                     {month number}
           D : WORD;                       {day number}
           Y : INTEGER;                   {year number}
           N,R : REAL;                 {number of days}

     Procedure Calcul;
        Begin
         //  Readln(M, D, Y);

           N := 365.25 * (Y - 1901) + A[M] + D;
           N := Int(N)
        End;


     begin
          A[1] := 0; A[2] := 31; A[3] := 59.25; A[4] := 90.25; A[5] := 120.25; A[6] := 151.25;
          A[7] := 181.25; A[8] := 212.25; A[9] := 243.25; A[10] := 273.25; A[11] := 304.25;
          A[12] := 334.25;
         // first date
         m:=m1;   d:=d1;    y:=y1;
         Calcul;
         R := N;
        // second date (M D Y)
         m:=m2;   d:=d2;    y:=y2;
         Calcul;
         R := N - R;
      u_ndays:=R;
     end;

function somme_en_lettre(sw:ansistring):string;
  var x,x1:string;
      s:string[8];
      i:byte;
      chiff,chiffres:set of ansichar;
begin
    chiff:=['1','2','3','4','5','6','7','8','9'];
    chiffres:=['2','3','4','5','6','7','8','9'];
    x:='';x1:='';
    for i:=1 to 8-length(sw) do  s[i]:=' ';
    for i:=9-length(sw) to 8 do  s[i]:=sw[i-8+length(sw)];

    if s[1]='9' then x:=x+' ”⁄Ê‰';
    if s[1]='8' then x:=x+'À„«‰Ê‰';
    if s[1]='7' then x:=x+'”»⁄Ê‰';
    if s[1]='6' then x:=x+'” Ê‰';
    if s[1]='5' then x:=x+'Œ„”Ê‰';
    if s[1]='4' then x:=x+'«—»⁄Ê‰';
    if s[1]='3' then x:=x+'À·«ÀÊ‰';
    if s[1]='2' then x:=x+'⁄‘—Ê‰';

    if (s[1] in chiffres) and (s[2]<>'0') then x:=' Ê '+x;

    if s[1]<>'1' then begin
                 if s[2]='9' then x:=' ”⁄…'+X;
                 if s[2]='8' then x:='À„«‰Ì…'+x;
                 if s[2]='7' then x:='”»⁄…'+x;
                 if s[2]='6' then x:='” …'+X;
                 if s[2]='5' then x:='Œ„”…' +X;
                 if s[2]='4' then x:='«—»⁄…' +X;
                 if s[2]='3' then x:='À·«À…'+X;
                 if s[2]='2' then x:='«À‰«‰' +X;
                 if s[2]='1' then x:='Ê«Õœ' +X;
                 end;
    if s[1]='1' then begin
                 if s[2]='0' then x:=X+'⁄‘—…';
                 if s[2]='1' then x:=x+'«Õœ ⁄‘—';
                 if s[2]='2' then x:=x+'« ‰« ⁄‘—';
                 if s[2]='3' then x:=X+'À·«À… ⁄‘—';
                 if s[2]='4' then x:=X+'«—»⁄… ⁄‘—';
                 if s[2]='5' then x:=X+'Œ„”… ⁄‘—';
                 if s[2]='6' then x:=X+'” … ⁄‘—';
                 if s[2]='7' then x:=x+'”»⁄… ⁄‘—';
                 if s[2]='8' then x:=X+'À„«‰Ì… ⁄‘—';
                 if s[2]='9' then x:=X+' ”⁄… ⁄‘—'
                 end;
     if (s[1] in chiff) or (s[2] in chiff) then x:=x+' „·ÌÊ‰ ';


     if x='⁄‘—…'+' „·ÌÊ‰ ' then x:=' ⁄‘—… „·«ÌÌ‰ ';
     if x=' ”⁄…'+' „·ÌÊ‰ ' then x:=' ”⁄… „·«ÌÌ‰ ';
     if x='À„«‰Ì…'+' „·ÌÊ‰ ' then x:='À„«‰Ì… „·«ÌÌ‰ ';
     if x='”»⁄…'+' „·ÌÊ‰ ' then x:='”»⁄… „·«ÌÌ‰ ';
     if x='” …'+' „·ÌÊ‰ ' then x:='” … „·«ÌÌ‰ ';
     if x='Œ„”…'+' „·ÌÊ‰ ' then x:='Œ„”… „·«ÌÌ‰ ';
     if x='«—»⁄…'+' „·ÌÊ‰ ' then x:='√—»⁄… „·«ÌÌ‰ ';
     if x='À·«À…'+' „·ÌÊ‰ ' then x:='À·«À… „·«ÌÌ‰ ';
     if x='«À‰«‰'+' „·ÌÊ‰ ' then x:='„·ÌÊ‰«‰ ';
     if x='Ê«Õœ' +' „·ÌÊ‰ ' then x:='„·ÌÊ‰ ';
     if (length(x)>2) and ((s[3]<>'0') or (s[4]<>'0') or (s[5]<>'0')) then x:=x+' Ê ';

     if s[3]='9' then x:=x+' ”⁄„«∆…';
     if s[3]='8' then x:=x+'À„«‰„«∆…';
     if s[3]='7' then x:=x+'”»⁄„«∆…';
     if s[3]='6' then x:=x+'” „«∆…';
     if s[3]='5' then x:=x+'Œ„”„«∆…';
     if s[3]='4' then x:=x+'«—»⁄„«∆…';
     if s[3]='3' then x:=x+'À·«À„«∆…';

     if s[3]='2' then x:=x+'„«∆ «‰';
     if s[3]='1' then x:=x+'„«∆…';

     if ((s[4] in chiff) or (s[5] in chiff)) and (s[3] in chiff) then x:=x+' Ê ';

     if s[4]='9' then x1:=' ”⁄Ê‰';
     if s[4]='8' then x1:='À„«‰Ê‰';
     if s[4]='7' then x1:='”»⁄Ê‰';
     if s[4]='6' then x1:='” Ê‰';
     if s[4]='5' then x1:='Œ„”Ê‰';
     if s[4]='4' then x1:='«—»⁄Ê‰';
     if s[4]='3' then x1:='À·«ÀÊ‰';
     if s[4]='2' then x1:='⁄‘—Ê‰';

     if (s[5] in chiff) and (length(x1)>0) then x1:=' Ê '+x1;

     if s[4]<>'1' then begin
                 if s[5]='9' then x:=x+' ”⁄…'+X1;
                 if s[5]='8' then x:=x+'À„«‰Ì…'+x1;
                 if s[5]='7' then x:=x+'”»⁄…'+x1;
                 if s[5]='6' then x:=x+'” …'+X1;
                 if s[5]='5' then x:=x+'Œ„”…' +x1;
                 if s[5]='4' then x:=x+'«—»⁄…' +X1;
                 if s[5]='3' then x:=x+'À·«À…'+x1;
                 if s[5]='2' then x:=x+'«À‰«‰' +X1;
                 if s[5]='0' then x:=x+X1;
                 if (s[5]='1') and (s[4] in chiffres) then x:=x+'Ê«Õœ' +X1;
                 end;

      if s[4]='1' then begin
                  if s[5]='0' then x:=X+'⁄‘—…';
                  if s[5]='1' then x:=x+'«Õœ ⁄‘—';
                  if s[5]='2' then x:=x+'« ‰« ⁄‘—';
                  if s[5]='3' then x:=X+'À·«À… ⁄‘—';
                  if s[5]='4' then x:=X+'«—»⁄… ⁄‘—';
                  if s[5]='5' then x:=X+'Œ„”… ⁄‘—';
                  if s[5]='6' then x:=X+'” … ⁄‘—';
                  if s[5]='7' then x:=x+'”»⁄… ⁄‘—';
                  if s[5]='8' then x:=X+'À„«‰Ì… ⁄‘—';
                  if s[5]='9' then x:=X+' ”⁄… ⁄‘—'
                  end;
     if (s[3] in chiff) or (s[4] in chiff)  or (s[5] in chiff) then x:=x+' «·› ';

     if x='⁄‘—…'+' «·› ' then x:=' ⁄‘—… ¬·«›';
     if x=' ”⁄…'+' «·› ' then x:='  ”⁄… ¬·«›';
     if x='À„«‰Ì…'+' «·› ' then x:=' À„«‰Ì… ¬·«›';
     if x='”»⁄…'+' «·› ' then x:=' ”»⁄… ¬·«›';
     if x='” …'+' «·› ' then x:=' ” … ¬·«›';
     if x='Œ„”…'+' «·› ' then x:=' Œ„”… ¬·«›';
     if x='À·«À…'+' «·› ' then x:=' À·«À… ¬·«›';
     if x='«—»⁄…'+' «·› ' then x:=' «—»⁄… ¬·«› ';
     if x='«À‰«‰'+' «·› ' then x:='«·›«‰ ';
     if x='Ê«Õœ' +' «·› ' then x:='«·› ';

     x1:='';
     if (length(x)>0) and ((s[8] in  chiff) or (s[7] in  chiff) or (s[6] in  chiff)) then x:=x+' Ê '  ;

     if s[6]='9' then x:=x+' ”⁄„«∆…';
     if s[6]='8' then x:=x+'À„«‰„«∆…';
     if s[6]='7' then x:=x+'”»⁄„«∆…';
     if s[6]='6' then x:=x+'” „«∆…';
     if s[6]='5' then x:=x+'Œ„”„«∆…';
     if s[6]='4' then x:=x+'«—»⁄„«∆…';
     if s[6]='3' then x:=x+'À·«À„«∆…';
     if s[6]='2' then x:=x+'„«∆ «‰';
     if s[6]='1' then x:=x+'„«∆…';

     if ((s[8] in chiff) or (s[7] in chiff)) and (s[6] in chiff) then x:=x+' Ê ';

     if s[7]='9' then x1:=' ”⁄Ê‰';
     if s[7]='8' then x1:='À„«‰Ê‰';
     if s[7]='7' then x1:='”»⁄Ê‰';
     if s[7]='6' then x1:='” Ê‰';
     if s[7]='5' then x1:='Œ„”Ê‰';
     if s[7]='4' then x1:='«—»⁄Ê‰';
     if s[7]='3' then x1:='À·«ÀÊ‰';
     if s[7]='2' then x1:='⁄‘—Ê‰';

     if (s[8] in chiff) and (length(x1)>0) then x1:=' Ê '+x1;

     if s[7]<>'1' then begin
                 if s[8]='9' then x:=x+' ”⁄…'+X1;
                 if s[8]='8' then x:=x+'À„«‰Ì…'+x1;
                 if s[8]='7' then x:=x+'”»⁄…'+x1;
                 if s[8]='6' then x:=x+'” …'+X1;
                 if s[8]='5' then x:=x+'Œ„”…' +x1;
                 if s[8]='4' then x:=x+'«—»⁄…' +X1;
                 if s[8]='3' then x:=x+'À·«À…'+x1;
                 if s[8]='2' then x:=x+'«À‰«‰' +X1;
                 if s[8]='1' then x:=x+'Ê«Õœ' +X1;
                 if s[8]='0' then x:=x+X1;
                 end;

     if s[7]='1' then begin
                  if s[8]='0' then x:=x+'⁄‘—…';
                  if s[8]='1' then x:=x+'«Õœ ⁄‘—';
                  if s[8]='2' then x:=x+'« ‰« ⁄‘—';
                  if s[8]='3' then x:=X+'À·«À… ⁄‘—';
                  if s[8]='4' then x:=X+'«—»⁄… ⁄‘—';
                  if s[8]='5' then x:=X+'Œ„”… ⁄‘—';
                  if s[8]='6' then x:=X+'” … ⁄‘—';
                  if s[8]='7' then x:=x+'”»⁄… ⁄‘—';
                  if s[8]='8' then x:=X+'À„«‰Ì… ⁄‘—';
                  if s[8]='9' then x:=X+' ”⁄… ⁄‘—'
                  end;
      x:=x+' œÌ‰«— Ã“«∆—Ì ';
     somme_en_lettre:=x
end;



function convert(N:Integer):string;
Const
Unite:Array[1..12] of String=('Ê«Õœ','≈À‰«‰','À·«À…','√—»⁄…','Œ„”…','” …',
'”»⁄…','À„«‰Ì…',' ”⁄…','⁄‘—…','«ÕœÏ ⁄‘—','«À‰ « ⁄‘—');
Dizaine:Array[1..9]of String=('⁄‘—','⁄‘—Ê‰','À·«ÀÊ‰','√—»⁄Ê‰',
'Œ„”Ê‰','” Ê‰','”»⁄Ê‰','À„«‰Ê‰',' ”⁄Ê‰');
Ordre1:Array[0..3]of String=('„∆…','√·›','„·ÌÊ‰','„·Ì«—');
Ordre2:Array[0..3]of String=('„∆ «‰','√·›«‰','„·ÌÊ‰«‰','„·Ì«—«‰');
Ordre3:Array[1..3]of String=('¬·«›','„·«ÌÌ‰','„·«ÌÌ—');
Var
T:Array[1..4] of Integer;
Temp : String;
C,D,U : Byte;
I : Word;fait:boolean;

Begin
If N=0 then
Begin
Result:=' ’›—';
Exit;
End;
Result:='';
For i:=4 downto 1 do
Begin
T[i]:=N mod 1000;
N:=N div 1000;
End;

for i:=4 downto 2 do
begin
        if i <> 4 then
        begin
                if T[i]=1 then Result:=Ordre1[4-i]+' '+Result
                Else If T[i]=2 then Result:=Ordre2[4-i]+' '+Result
                     Else
                Begin
If (T[i] mod 100 <11)and (T[i] mod 100 >2) then Result:=Ordre3[4-i]+' '+Result
Else If T[i] mod 100 =2 then Result:=Ordre2[4-i]+' '+Result
Else If (T[i] mod 100 <>0) then Result:=Ordre1[4-i]+' '+Result
        else if (T[i] mod 100 =0) and(T[i]<>0) then Result:=Ordre1[4-i]+' '+Result;
                end;
        end;
        If T[i]>0 then
        Begin
        fait:=false; Temp:='';
        U:=T[i] mod 10; //T[4]:=T[4] div 10;
        D:=(T[i]div 10) mod 10; //T[4]:=T[4] div 10;
If i=4 then If (D=0)and (U>1)then  Temp:=' '+Unite[U]
else  If (D=0)and (U>2)then  Temp:=' '+Unite[U];
        If (D=1) and (U<3) then
                Begin
                Dec(D);
                Inc(U,10);
                Temp:=' '+Unite[U];
                End
        Else
        If (D=1) and (U>2)then
                Begin
                Temp:=' '+Unite[U]+' '+Dizaine[D];
                fait:=true;
                End;
        If not fait then
                begin
                If i<>4 then
                begin
                If (U>0)and(T[i]mod 100>2) then Temp:=' '+Unite[U];
                end
                else If (U>0) then Temp:=' '+Unite[U];
                If (D>1) and (U>0) then Temp:=Temp+' Ê';
                If (D>=1) then Temp:=Temp+' '+Dizaine[D];
                end;
        If Temp <>'' then Result:=' '+Temp+' '+Result;
        C:=(T[i] div 100) mod 10; //T[4]:=T[4] div 10;
        If C>0 then
                Begin
                        Temp:='';
                        If C=2 then Temp:=Temp+' '+Ordre2[0]
                        Else
                        Begin
                        If C>2 then Temp:=' '+Unite[C]+Temp;
                        Temp:=Temp+' '+Ordre1[0];
                        End;
                        If (Result<>'') and (T[i] mod 100 <> 0) then Result:=' Ê'+Result;
                        Result:=Temp+' '+Result;
                End;
                Case i of
                4:If (T[3]>0)or(T[2]>0)or(T[1]>0) then Result:=' Ê'+Result;
                3:If (T[2]>0)or(T[1]>0) then Result:=' Ê'+Result;
                2:If (T[1]>0) then Result:=' Ê'+Result;
                End;
        End;
        End;
If T[1]>0 then
Begin
Result:=Ordre1[3]+' '+Result;
End;
End;



Function NombreEnLettres(Valeur : Real; SM : String = '' ; France : Boolean = True ) : string;
// Conversion d'un rÈel ‡ 2 dÈcimales en lettre avec symbole monÈtaire en option
//  Valeur : nombre ‡ convertir
//  SM     : symbole monÈtaire
//  France : langue franÁaise, sinon belge
Var
  unite      : array[1..19] of string;
  dizaineF   : array[2.. 9] of string;
  dizaineB   : array[2.. 9] of string;
  coefs      : array[0.. 3] of string;

  temp      : String;
  c, d, u   : Integer;
  coef      : Integer;
  i         : Integer;
  neg       : boolean;
  n         : Integer ;
  Decimales : Real ;
  Centimes  : String ;
Begin
  result := '';
  unite[1]:='un';
  unite[2]:='deux';
  unite[3]:='trois';
  unite[4]:='quatre';
  unite[5]:='cinq';
  unite[6]:='six';
  unite[7]:='sept';
  unite[8]:='huit';
  unite[9]:='neuf';
  unite[10]:='dix';
  unite[11]:='onze';
  unite[12]:='douze';
  unite[13]:='treize';
  unite[14]:='quatorze';
  unite[15]:='quinze';
  unite[16]:='seize';
  unite[17]:='dix sept';
  unite[18]:='dix huit';
  unite[19]:='dix neuf';

  dizaineF[2]:='vingt';
  dizaineF[3]:='trente';
  dizaineF[4]:='quarante';
  dizaineF[5]:='cinquante';
  dizaineF[6]:='soixante';
  dizaineF[7]:='';
  dizaineF[8]:='quatre-vingt';
  dizaineF[9]:='';

  dizaineB[2]:='vingt';
  dizaineB[3]:='trente';
  dizaineB[4]:='quarante';
  dizaineB[5]:='cinquante';
  dizaineB[6]:='soixante';
  dizaineB[7]:='septante';
  dizaineB[8]:='octante';
  dizaineB[9]:='nonante';

  coefs[0]:='cent';
  coefs[1]:='mille';
  coefs[2]:='million';
  coefs[3]:='milliard';

   // Cas particulier de zÈro
  If Valeur = 0 then
  begin
    result := ' zero';
    exit;
  end;

  // MÈmorisation du signe
  neg := Valeur < 0;
  If neg then Valeur := -Valeur;

  n         := Trunc(Valeur) ;
  decimales := Round(Frac(Valeur) * 100) ;   // 2 premiËres dÈcimales
  coef      := 0 ;
  Repeat
    // RÈcupÈration de l'unitÈ du bloc de trois chiffres en cours
    u:=n mod 10; n:=n div 10;
    // RÈcupÈration de la dizaine du bloc de trois chiffres en cours
    d:=n mod 10; n:=n div 10;

    // Traitement des dizaines
    temp := '';
    // Passage sur la dizaine infÈrieure pour 10 ‡ 19
    // et pour 70-79 90-99 dans le cas de la France
    If (d=1) Or ((d in [7,9])And France) then
    begin
      Dec(d);
      Inc(u,10);
    end;
    if d > 1 then
    begin
      If France Then
      Begin
        temp := ' ' + DizaineF[d];
        // Ajout du cas particulier de 'et' entre la dizaine et 1
        if (d < 8) and ((u = 1) or (u = 11)) then
          temp := temp + ' et';
      End Else
      Begin
        temp := ' ' + DizaineB[d];
        // Ajout du cas particulier de 'et' entre la dizaine et 1
        if (u = 1) then
          temp := temp + ' et';
      End;
    end;
    // ajout du texte de l'unitÈ
    if u > 0 then temp := temp + ' ' + unite[u];
    // ajout du 's' ‡ Quatre-vingt si rien ne suit
    If (result = '') and (d = 8) and (u = 0) and France then result := 's';
    result := temp + result;

    // RÈcupÈration de la centaine du bloc de trois chiffres en cours
    c := n mod 10; n := n div 10; {RÈcupËre centaine}
    If c > 0 then
    begin
      temp := '';
      if c > 1 then temp := ' ' + unite[c] + temp;
      temp := temp + ' ' + coefs[0];
      // Traitement du cas particulier du 's' ‡ cent si rien ne suit
      If (result = '') and (c > 1) then result := 's';
      result := temp + result;
    end;

    // Traitement du prochain groupe de 3 chiffres
    if n > 0 then
    begin
      Inc(coef);
      I := n mod 1000;
      If (i > 1) and (coef > 1) then result := 's' + result;
      If i > 0 then result := ' ' + coefs[coef] + result;
      // Traitement du cas particulier 'mille' ( non pas 'un mille' )
      If (i = 1) and (coef = 1) then Dec(n);
    end;
  until n = 0;

  SM := Trim(SM) ;
  If (SM <> '') Then
    Begin
      result := Trim(result)+ ' '+ SM;
      If (Decimales > 0 ) Then
         Begin
           Centimes := ' centimes' ;
           If (Trunc(Decimales) = 1) Then  Centimes := ' centime' ;
            Result := Result + ' et '+NombreEnLettres(Decimales) + Centimes ;
         End ;
    End
  Else
    Begin
      result := Trim(result);
      If (Decimales > 0 ) Then
         Begin
            Result := Result + ' virgule '+NombreEnLettres(Decimales) ;
         End ;
    End ;

  // Ajout du signe en cas de besoin
  if neg then result := 'moins ' + result;
End;


end.
