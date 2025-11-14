uses crt, math;

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean; {Isprime adalah nama functionnya, n itu angka yang mau dicek bertipe integer
dan nanti true/ false.}
var
  i, batas: integer; //variabel untuk operasi perhitungan di dalam function.
begin
  // TODO 1: Handle bilangan kurang dari 2
  if n < 2 then // kalo yang di input user itu angka dibawah angka 2 atau <2 maka isprime salah dan angka bukan bukan angka prima.
    begin
    IsPrime := false;
    exit; //exit biar fungtion ga lanjut kebawah.
  end;

  // TODO 2: Handle bilangan 2
  if n = 2 then // kalo angka yang diinput user =2 maka isprime true dan angka itu adalah angka prima.
  begin
    IsPrime := true; {dan karna 2 itu adalah bilangan prima(habis dibagi satu dan habis dibagi dengan dirinya sendiri).}
    exit; //exit agar ga lanjut kebawah.
  end;

  // TODO 3: Handle bilangan genap
  if n mod 2 = 0 then {blok if ini untuk mengek kalo angka yang yang diinput user itu habis dibagi 2 maka isprime batal
  karna tidak sesuai dengan aturan angka prima}
  begin
    IsPrime := false;
    exit; //exit agar ga lanjut kebawah.
  end;

  // TODO 4: Cek faktor ganjil sampai akar kuadrat n
  batas := trunc(sqrt(n)); 
  for i := 3 to batas do {ini untuk ngecek yg angka2 ganjil. dimulai dari 3 karna angka setelah 2 yg ganjil adalah 3 sampe batas}
    if n mod i = 0 then {dilakukan pengecekan kalo dia n-nya habis dibagi i maka isprime batal.}
    begin
      IsPrime := false;
      exit;
    end;

  // TODO 5: Return true jika lolos semua pengecekan 
  IsPrime := true; {maka selain dari pengecekan di atas yang FALSE selain dari yg FALSE maka n adalah prima (TRUE)}
end;

{ Program Utama }
var
  bil: integer; //variabel untuk menampung inputan user untuk dicek.
begin
  clrscr;
  write('Masukkan angka untuk dicek: '); //alurnya yang pertama dijalankan adalah menyuruh user menginput.
  //ini adalah tugan blok ini sebagai main program yang nanti pengecekannya adalah tugas anaknya atau subprogramnya diatas.
  readln(bil); // yang dapat dibaca . 

//habis dari menerima inputan user berupa angka yang mau dicek. program jalan ke atas untuk ngecek.

  if IsPrime(bil) then
    writeln(bil, ' adalah bilangan prima.') {MAKA DISINI KITA PANGGIL LAGI NFUNCTIONNYA dengan parameter BIL UNTUK MENGELUARKAN NILAI 
    sesuai seleksi diatas. yang ini true maka output 'bil, adalah bilangan prima.'}
  else
    writeln(bil, ' bukan bilangan prima.'); { sedangkan yang ini untuk yang bukan prima.}

  readln;
end. {selesai }

{CONTOH OUTPUT YG BIL PRIMA
Masukkan angka untuk dicek: 3
3 adalah bilangan prima.

CONTOH YG TIDAK PRIMA
Masukkan angka untuk dicek: 1
1 bukan bilangan prima.}

