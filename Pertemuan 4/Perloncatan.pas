uses crt;
label a,b,c,d,e;
begin
clrscr;
    goto a; // ga mesti ada goto a-nya buat awal.
    a:writeln('Hello world');
    goto b;
    d:writeln('Fasilkon-TI');
    goto e;
    c:writeln('Ilmu komputer');
    goto d;
    b:writeln('IKLC');
    goto c;
    e:
end.