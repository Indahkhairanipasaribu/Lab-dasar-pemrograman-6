uses crt;

function HitungLuaspersegipanjang(panjang, lebar: integer): integer;
begin
  HitungLuaspersegipanjang := panjang * lebar; {disinilah perhitungan luasnya di kerjakan oleh sub program (anaknya) dan dikirim pada mamaknya alias main program 
  saat menampilkan output}
end;

{program mulai dari sini karna inin adalah bagian main program}
var 
panjang , lebar , Hasil : integer; //variabel yang dibutuhkan untuk input dan untuk operasi pemanggilan function karna operasi hitungnya da di function di atas.
begin 
clrscr;
  write('Masukkan panjang persegi panjang  : '); //tempat user menginput panjang 
  readln(panjang);
  write('Masukkan lebar persegi panjang : '); //input lebar 
  readln(lebar);
  writeln;

  Hasil := HitungLuaspersegipanjang(panjang, lebar); {deklarasi hasil fungtion di panggil}
  writeln('Hasil (Function) Luas persegi panjang  = ', hasil ); {disin output hasil luas function sendiri yang memberri nilai dengfan namanya sendiri.}

readln;
end. {seleai}


