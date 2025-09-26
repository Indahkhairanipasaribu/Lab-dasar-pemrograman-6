uses crt;

var 
a, b, tambah, kurang, kali, modulo : integer;
    bagi : real;
    hasil : boolean;

begin
    clrscr;
    //writeln('Hello World');

    a := 10;
    b:= 3;

    // tambah := a + b;
    // kurang := a - b;
    // kali := a * b;
    // bagi := a / b;
    // modulo := a mod b;

    // textcolor(blue);
    // writeln('Hasil jumlah : ', tambah);
    // textcolor(red);
    // writeln('Hasil kurang : ', kurang);
    // textcolor(magenta);
    // writeln('Hasil kali : ', kali);
    // textcolor(brown);
    // writeln('Hasil bagi : ', bagi:0:2);
    // textcolor(green);
    // writeln('hasil mod : ', modulo);

    // writeln(a = b);
    // writeln(a <> b);
    // writeln(a > b);
    // writeln(a < b);
    // writeln(a <= b);
    // writeln(a >= b);

    textcolor(green);
    writeln(true and true);
    textcolor(red);
    writeln(true and false);
    textcolor(red);
    writeln(false and true);
    textcolor(red);
    writeln(false and false);

    textcolor(magenta);
    writeln(true or true);
    textcolor(magenta);
    writeln(true or false);
    textcolor(magenta);
    writeln(false or true);
    textcolor(green);
    writeln(false and false);

    writeln(not true);
    writeln(not false);

end.