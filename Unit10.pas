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

    if s[1]='9' then x:=x+'ÊÓÚæä';
    if s[1]='8' then x:=x+'ËãÇäæä';
    if s[1]='7' then x:=x+'ÓÈÚæä';
    if s[1]='6' then x:=x+'ÓÊæä';
    if s[1]='5' then x:=x+'ÎãÓæä';
    if s[1]='4' then x:=x+'ÇÑÈÚæä';
    if s[1]='3' then x:=x+'ËáÇËæä';
    if s[1]='2' then x:=x+'ÚÔÑæä';

    if (s[1] in chiffres) and (s[2]<>'0') then x:=' æ '+x;

    if s[1]<>'1' then begin
                 if s[2]='9' then x:='ÊÓÚÉ'+X;
                 if s[2]='8' then x:='ËãÇäíÉ'+x;
                 if s[2]='7' then x:='ÓÈÚÉ'+x;
                 if s[2]='6' then x:='ÓÊÉ'+X;
                 if s[2]='5' then x:='ÎãÓÉ' +X;
                 if s[2]='4' then x:='ÇÑÈÚÉ' +X;
                 if s[2]='3' then x:='ËáÇËÉ'+X;
                 if s[2]='2' then x:='ÇËäÇä' +X;
                 if s[2]='1' then x:='æÇÍÏ' +X;
                 end;
    if s[1]='1' then begin
                 if s[2]='0' then x:=X+'ÚÔÑÉ';
                 if s[2]='1' then x:=x+'ÇÍÏ ÚÔÑ';
                 if s[2]='2' then x:=x+'ÇÊäÇ ÚÔÑ';
                 if s[2]='3' then x:=X+'ËáÇËÉ ÚÔÑ';
                 if s[2]='4' then x:=X+'ÇÑÈÚÉ ÚÔÑ';
                 if s[2]='5' then x:=X+'ÎãÓÉ ÚÔÑ';
                 if s[2]='6' then x:=X+'ÓÊÉ ÚÔÑ';
                 if s[2]='7' then x:=x+'ÓÈÚÉ ÚÔÑ';
                 if s[2]='8' then x:=X+'ËãÇäíÉ ÚÔÑ';
                 if s[2]='9' then x:=X+'ÊÓÚÉ ÚÔÑ'
                 end;
     if (s[1] in chiff) or (s[2] in chiff) then x:=x+' ãáíæä ';


     if x='ÚÔÑÉ'+' ãáíæä ' then x:=' ÚÔÑÉ ãáÇííä ';
     if x='ÊÓÚÉ'+' ãáíæä ' then x:='ÊÓÚÉ ãáÇííä ';
     if x='ËãÇäíÉ'+' ãáíæä ' then x:='ËãÇäíÉ ãáÇííä ';
     if x='ÓÈÚÉ'+' ãáíæä ' then x:='ÓÈÚÉ ãáÇííä ';
     if x='ÓÊÉ'+' ãáíæä ' then x:='ÓÊÉ ãáÇííä ';
     if x='ÎãÓÉ'+' ãáíæä ' then x:='ÎãÓÉ ãáÇííä ';
     if x='ÇÑÈÚÉ'+' ãáíæä ' then x:='ÃÑÈÚÉ ãáÇííä ';
     if x='ËáÇËÉ'+' ãáíæä ' then x:='ËáÇËÉ ãáÇííä ';
     if x='ÇËäÇä'+' ãáíæä ' then x:='ãáíæäÇä ';
     if x='æÇÍÏ' +' ãáíæä ' then x:='ãáíæä ';
     if (length(x)>2) and ((s[3]<>'0') or (s[4]<>'0') or (s[5]<>'0')) then x:=x+' æ ';

     if s[3]='9' then x:=x+'ÊÓÚãÇÆÉ';
     if s[3]='8' then x:=x+'ËãÇäãÇÆÉ';
     if s[3]='7' then x:=x+'ÓÈÚãÇÆÉ';
     if s[3]='6' then x:=x+'ÓÊãÇÆÉ';
     if s[3]='5' then x:=x+'ÎãÓãÇÆÉ';
     if s[3]='4' then x:=x+'ÇÑÈÚãÇÆÉ';
     if s[3]='3' then x:=x+'ËáÇËãÇÆÉ';

     if s[3]='2' then x:=x+'ãÇÆÊÇä';
     if s[3]='1' then x:=x+'ãÇÆÉ';

     if ((s[4] in chiff) or (s[5] in chiff)) and (s[3] in chiff) then x:=x+' æ ';

     if s[4]='9' then x1:='ÊÓÚæä';
     if s[4]='8' then x1:='ËãÇäæä';
     if s[4]='7' then x1:='ÓÈÚæä';
     if s[4]='6' then x1:='ÓÊæä';
     if s[4]='5' then x1:='ÎãÓæä';
     if s[4]='4' then x1:='ÇÑÈÚæä';
     if s[4]='3' then x1:='ËáÇËæä';
     if s[4]='2' then x1:='ÚÔÑæä';

     if (s[5] in chiff) and (length(x1)>0) then x1:=' æ '+x1;

     if s[4]<>'1' then begin
                 if s[5]='9' then x:=x+'ÊÓÚÉ'+X1;
                 if s[5]='8' then x:=x+'ËãÇäíÉ'+x1;
                 if s[5]='7' then x:=x+'ÓÈÚÉ'+x1;
                 if s[5]='6' then x:=x+'ÓÊÉ'+X1;
                 if s[5]='5' then x:=x+'ÎãÓÉ' +x1;
                 if s[5]='4' then x:=x+'ÇÑÈÚÉ' +X1;
                 if s[5]='3' then x:=x+'ËáÇËÉ'+x1;
                 if s[5]='2' then x:=x+'ÇËäÇä' +X1;
                 if s[5]='0' then x:=x+X1;
                 if (s[5]='1') and (s[4] in chiffres) then x:=x+'æÇÍÏ' +X1;
                 end;

      if s[4]='1' then begin
                  if s[5]='0' then x:=X+'ÚÔÑÉ';
                  if s[5]='1' then x:=x+'ÇÍÏ ÚÔÑ';
                  if s[5]='2' then x:=x+'ÇÊäÇ ÚÔÑ';
                  if s[5]='3' then x:=X+'ËáÇËÉ ÚÔÑ';
                  if s[5]='4' then x:=X+'ÇÑÈÚÉ ÚÔÑ';
                  if s[5]='5' then x:=X+'ÎãÓÉ ÚÔÑ';
                  if s[5]='6' then x:=X+'ÓÊÉ ÚÔÑ';
                  if s[5]='7' then x:=x+'ÓÈÚÉ ÚÔÑ';
                  if s[5]='8' then x:=X+'ËãÇäíÉ ÚÔÑ';
                  if s[5]='9' then x:=X+'ÊÓÚÉ ÚÔÑ'
                  end;
     if (s[3] in chiff) or (s[4] in chiff)  or (s[5] in chiff) then x:=x+' Çáİ ';

     if x='ÚÔÑÉ'+' Çáİ ' then x:=' ÚÔÑÉ ÂáÇİ';
     if x='ÊÓÚÉ'+' Çáİ ' then x:=' ÊÓÚÉ ÂáÇİ';
     if x='ËãÇäíÉ'+' Çáİ ' then x:=' ËãÇäíÉ ÂáÇİ';
     if x='ÓÈÚÉ'+' Çáİ ' then x:=' ÓÈÚÉ ÂáÇİ';
     if x='ÓÊÉ'+' Çáİ ' then x:=' ÓÊÉ ÂáÇİ';
     if x='ÎãÓÉ'+' Çáİ ' then x:=' ÎãÓÉ ÂáÇİ';
     if x='ËáÇËÉ'+' Çáİ ' then x:=' ËáÇËÉ ÂáÇİ';
     if x='ÇÑÈÚÉ'+' Çáİ ' then x:=' ÇÑÈÚÉ ÂáÇİ ';
     if x='ÇËäÇä'+' Çáİ ' then x:='ÇáİÇä ';
     if x='æÇÍÏ' +' Çáİ ' then x:='Çáİ ';

     x1:='';
     if (length(x)>0) and ((s[8] in  chiff) or (s[7] in  chiff) or (s[6] in  chiff)) then x:=x+' æ '  ;

     if s[6]='9' then x:=x+'ÊÓÚãÇÆÉ';
     if s[6]='8' then x:=x+'ËãÇäãÇÆÉ';
     if s[6]='7' then x:=x+'ÓÈÚãÇÆÉ';
     if s[6]='6' then x:=x+'ÓÊãÇÆÉ';
     if s[6]='5' then x:=x+'ÎãÓãÇÆÉ';
     if s[6]='4' then x:=x+'ÇÑÈÚãÇÆÉ';
     if s[6]='3' then x:=x+'ËáÇËãÇÆÉ';
     if s[6]='2' then x:=x+'ãÇÆÊÇä';
     if s[6]='1' then x:=x+'ãÇÆÉ';

     if ((s[8] in chiff) or (s[7] in chiff)) and (s[6] in chiff) then x:=x+' æ ';

     if s[7]='9' then x1:='ÊÓÚæä';
     if s[7]='8' then x1:='ËãÇäæä';
     if s[7]='7' then x1:='ÓÈÚæä';
     if s[7]='6' then x1:='ÓÊæä';
     if s[7]='5' then x1:='ÎãÓæä';
     if s[7]='4' then x1:='ÇÑÈÚæä';
     if s[7]='3' then x1:='ËáÇËæä';
     if s[7]='2' then x1:='ÚÔÑæä';

     if (s[8] in chiff) and (length(x1)>0) then x1:=' æ '+x1;

     if s[7]<>'1' then begin
                 if s[8]='9' then x:=x+'ÊÓÚÉ'+X1;
                 if s[8]='8' then x:=x+'ËãÇäíÉ'+x1;
                 if s[8]='7' then x:=x+'ÓÈÚÉ'+x1;
                 if s[8]='6' then x:=x+'ÓÊÉ'+X1;
                 if s[8]='5' then x:=x+'ÎãÓÉ' +x1;
                 if s[8]='4' then x:=x+'ÇÑÈÚÉ' +X1;
                 if s[8]='3' then x:=x+'ËáÇËÉ'+x1;
                 if s[8]='2' then x:=x+'ÇËäÇä' +X1;
                 if s[8]='1' then x:=x+'æÇÍÏ' +X1;
                 if s[8]='0' then x:=x+X1;
                 end;

     if s[7]='1' then begin
                  if s[8]='0' then x:=x+'ÚÔÑÉ';
                  if s[8]='1' then x:=x+'ÇÍÏ ÚÔÑ';
                  if s[8]='2' then x:=x+'ÇÊäÇ ÚÔÑ';
                  if s[8]='3' then x:=X+'ËáÇËÉ ÚÔÑ';
                  if s[8]='4' then x:=X+'ÇÑÈÚÉ ÚÔÑ';
                  if s[8]='5' then x:=X+'ÎãÓÉ ÚÔÑ';
                  if s[8]='6' then x:=X+'ÓÊÉ ÚÔÑ';
                  if s[8]='7' then x:=x+'ÓÈÚÉ ÚÔÑ';
                  if s[8]='8' then x:=X+'ËãÇäíÉ ÚÔÑ';
                  if s[8]='9' then x:=X+'ÊÓÚÉ ÚÔÑ'
                  end;
      x:=x+' ÏíäÇÑ ÌÒÇÆÑí ';
     somme_en_lettre:=x
end; }
//begin

end.
