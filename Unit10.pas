unit Unit10;
// implementation
{interface
function somme_en_lettre(sw:ansistring):string;
implementation
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

    if s[1]='9' then x:=x+'�����';
    if s[1]='8' then x:=x+'������';
    if s[1]='7' then x:=x+'�����';
    if s[1]='6' then x:=x+'����';
    if s[1]='5' then x:=x+'�����';
    if s[1]='4' then x:=x+'������';
    if s[1]='3' then x:=x+'������';
    if s[1]='2' then x:=x+'�����';

    if (s[1] in chiffres) and (s[2]<>'0') then x:=' � '+x;

    if s[1]<>'1' then begin
                 if s[2]='9' then x:='����'+X;
                 if s[2]='8' then x:='������'+x;
                 if s[2]='7' then x:='����'+x;
                 if s[2]='6' then x:='���'+X;
                 if s[2]='5' then x:='����' +X;
                 if s[2]='4' then x:='�����' +X;
                 if s[2]='3' then x:='�����'+X;
                 if s[2]='2' then x:='�����' +X;
                 if s[2]='1' then x:='����' +X;
                 end;
    if s[1]='1' then begin
                 if s[2]='0' then x:=X+'����';
                 if s[2]='1' then x:=x+'��� ���';
                 if s[2]='2' then x:=x+'���� ���';
                 if s[2]='3' then x:=X+'����� ���';
                 if s[2]='4' then x:=X+'����� ���';
                 if s[2]='5' then x:=X+'���� ���';
                 if s[2]='6' then x:=X+'��� ���';
                 if s[2]='7' then x:=x+'���� ���';
                 if s[2]='8' then x:=X+'������ ���';
                 if s[2]='9' then x:=X+'���� ���'
                 end;
     if (s[1] in chiff) or (s[2] in chiff) then x:=x+' ����� ';


     if x='����'+' ����� ' then x:=' ���� ������ ';
     if x='����'+' ����� ' then x:='���� ������ ';
     if x='������'+' ����� ' then x:='������ ������ ';
     if x='����'+' ����� ' then x:='���� ������ ';
     if x='���'+' ����� ' then x:='��� ������ ';
     if x='����'+' ����� ' then x:='���� ������ ';
     if x='�����'+' ����� ' then x:='����� ������ ';
     if x='�����'+' ����� ' then x:='����� ������ ';
     if x='�����'+' ����� ' then x:='������� ';
     if x='����' +' ����� ' then x:='����� ';
     if (length(x)>2) and ((s[3]<>'0') or (s[4]<>'0') or (s[5]<>'0')) then x:=x+' � ';

     if s[3]='9' then x:=x+'�������';
     if s[3]='8' then x:=x+'��������';
     if s[3]='7' then x:=x+'�������';
     if s[3]='6' then x:=x+'������';
     if s[3]='5' then x:=x+'�������';
     if s[3]='4' then x:=x+'��������';
     if s[3]='3' then x:=x+'��������';

     if s[3]='2' then x:=x+'������';
     if s[3]='1' then x:=x+'����';

     if ((s[4] in chiff) or (s[5] in chiff)) and (s[3] in chiff) then x:=x+' � ';

     if s[4]='9' then x1:='�����';
     if s[4]='8' then x1:='������';
     if s[4]='7' then x1:='�����';
     if s[4]='6' then x1:='����';
     if s[4]='5' then x1:='�����';
     if s[4]='4' then x1:='������';
     if s[4]='3' then x1:='������';
     if s[4]='2' then x1:='�����';

     if (s[5] in chiff) and (length(x1)>0) then x1:=' � '+x1;

     if s[4]<>'1' then begin
                 if s[5]='9' then x:=x+'����'+X1;
                 if s[5]='8' then x:=x+'������'+x1;
                 if s[5]='7' then x:=x+'����'+x1;
                 if s[5]='6' then x:=x+'���'+X1;
                 if s[5]='5' then x:=x+'����' +x1;
                 if s[5]='4' then x:=x+'�����' +X1;
                 if s[5]='3' then x:=x+'�����'+x1;
                 if s[5]='2' then x:=x+'�����' +X1;
                 if s[5]='0' then x:=x+X1;
                 if (s[5]='1') and (s[4] in chiffres) then x:=x+'����' +X1;
                 end;

      if s[4]='1' then begin
                  if s[5]='0' then x:=X+'����';
                  if s[5]='1' then x:=x+'��� ���';
                  if s[5]='2' then x:=x+'���� ���';
                  if s[5]='3' then x:=X+'����� ���';
                  if s[5]='4' then x:=X+'����� ���';
                  if s[5]='5' then x:=X+'���� ���';
                  if s[5]='6' then x:=X+'��� ���';
                  if s[5]='7' then x:=x+'���� ���';
                  if s[5]='8' then x:=X+'������ ���';
                  if s[5]='9' then x:=X+'���� ���'
                  end;
     if (s[3] in chiff) or (s[4] in chiff)  or (s[5] in chiff) then x:=x+' ��� ';

     if x='����'+' ��� ' then x:=' ���� ����';
     if x='����'+' ��� ' then x:=' ���� ����';
     if x='������'+' ��� ' then x:=' ������ ����';
     if x='����'+' ��� ' then x:=' ���� ����';
     if x='���'+' ��� ' then x:=' ��� ����';
     if x='����'+' ��� ' then x:=' ���� ����';
     if x='�����'+' ��� ' then x:=' ����� ����';
     if x='�����'+' ��� ' then x:=' ����� ���� ';
     if x='�����'+' ��� ' then x:='����� ';
     if x='����' +' ��� ' then x:='��� ';

     x1:='';
     if (length(x)>0) and ((s[8] in  chiff) or (s[7] in  chiff) or (s[6] in  chiff)) then x:=x+' � '  ;

     if s[6]='9' then x:=x+'�������';
     if s[6]='8' then x:=x+'��������';
     if s[6]='7' then x:=x+'�������';
     if s[6]='6' then x:=x+'������';
     if s[6]='5' then x:=x+'�������';
     if s[6]='4' then x:=x+'��������';
     if s[6]='3' then x:=x+'��������';
     if s[6]='2' then x:=x+'������';
     if s[6]='1' then x:=x+'����';

     if ((s[8] in chiff) or (s[7] in chiff)) and (s[6] in chiff) then x:=x+' � ';

     if s[7]='9' then x1:='�����';
     if s[7]='8' then x1:='������';
     if s[7]='7' then x1:='�����';
     if s[7]='6' then x1:='����';
     if s[7]='5' then x1:='�����';
     if s[7]='4' then x1:='������';
     if s[7]='3' then x1:='������';
     if s[7]='2' then x1:='�����';

     if (s[8] in chiff) and (length(x1)>0) then x1:=' � '+x1;

     if s[7]<>'1' then begin
                 if s[8]='9' then x:=x+'����'+X1;
                 if s[8]='8' then x:=x+'������'+x1;
                 if s[8]='7' then x:=x+'����'+x1;
                 if s[8]='6' then x:=x+'���'+X1;
                 if s[8]='5' then x:=x+'����' +x1;
                 if s[8]='4' then x:=x+'�����' +X1;
                 if s[8]='3' then x:=x+'�����'+x1;
                 if s[8]='2' then x:=x+'�����' +X1;
                 if s[8]='1' then x:=x+'����' +X1;
                 if s[8]='0' then x:=x+X1;
                 end;

     if s[7]='1' then begin
                  if s[8]='0' then x:=x+'����';
                  if s[8]='1' then x:=x+'��� ���';
                  if s[8]='2' then x:=x+'���� ���';
                  if s[8]='3' then x:=X+'����� ���';
                  if s[8]='4' then x:=X+'����� ���';
                  if s[8]='5' then x:=X+'���� ���';
                  if s[8]='6' then x:=X+'��� ���';
                  if s[8]='7' then x:=x+'���� ���';
                  if s[8]='8' then x:=X+'������ ���';
                  if s[8]='9' then x:=X+'���� ���'
                  end;
      x:=x+' ����� ������ ';
     somme_en_lettre:=x
end; }
//begin

end.
