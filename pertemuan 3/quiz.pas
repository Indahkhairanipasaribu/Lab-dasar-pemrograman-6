uses crt;

var
    nilai : integer;

begin
    clrscr;

    writeln('masukkkan nilai :'); readln(nilai);

    //statement case of
    case nilai of
        85..100 : writeln('A');
        70..84  : writeln('B');
        60..69  : writeln('C');
        50..59  : writeln('D');
        1..49   : writeln('E');
    else
        writeln('nilai tidak valid')
    end;
end.