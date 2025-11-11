uses crt;

var 
i : integer;

begin 
clrscr;

for i := 1 to 10 do 
begin 
    if i = 4 then break;
    writeln('Nilai i = ', i);
end;
end.