uses crt, sysutils;

var 
    angka : integer; {alamat biasa}
    alamat_angka : ^integer;

begin 
    clrscr;

    angka := 10;
    alamat_angka := @angka; {pointer yang menunjuk ke alamat VARIABEL}

    // writeln ('isi dari variabel "angka" = ', angka);
    // writeln ('alamat variabel "angka" = ', ptrUInt (angka));
    // writeln ('isi pointer = ', ptrUInt (alamat_angka));
    // writeln ('isi nilai yang diambil pointer = ', alamat_angka^);

    alamat_angka^ := 20;
    writeln('isi angka setelah diubah (ini dari variabelangka) = ', angka);
    writeln('isi angka setelah diubah (ini dari variabel pointer) = ', alamat_angka^);
end.