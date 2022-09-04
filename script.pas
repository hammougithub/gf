var vlinecount:integer;

procedure MasterData1OnBeforePrint(Sender: TfrxComponent);
begin
memo85.text:=inttostr(vlinecount)+' '+inttostr((MasterData1.DataSet.RecordCount))+'li:'+inttostr(<Line>)+  
' page: '+inttostr(<page>)+' reste'+inttostr(MasterData1.DataSet.RecordCount-<Line>);

if (((MasterData1.DataSet.RecordCount)-(<Line>))=0) and (vlinecount>(strtoint(n2.text)-1))
       then begin  vlinecount:=0;ENGINE.NewPage    end;
end;

procedure SysMemo3OnBeforePrint(Sender: TfrxComponent);
begin

end;

procedure MasterData1OnAfterPrint(Sender: TfrxComponent);
begin
 vlinecount:=vlinecount+1;
 if vlinecount=strtoint(n1.text) then begin  vlinecount:=1;ENGINE.NewPage    end;
end;




procedure n1OnClick(Sender: TfrxComponent);
begin

end;

begin
   vlinecount:=0
end.
