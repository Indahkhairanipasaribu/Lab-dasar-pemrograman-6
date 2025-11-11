uses crt;
var 
    x : integer;
begin
clrscr;
x := 0;
repeat
x := x + 1;
if x = 3 then continue;
writeln('NIlai x: ',x);
until x = 5;
end.

