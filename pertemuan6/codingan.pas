uses crt;

{--------------------------------------------}
{ 1️⃣ Procedure Sederhana: Menampilkan Pesan  }
{--------------------------------------------}
procedure sapa_user;
begin 
    writeln('Selamat datang din Live coding pertemuan 6');
end;

{----------------------------------------------------}
{ 2️⃣ Function dengan Parameter Array: Hitung Rata-rata }
{----------------------------------------------------}

//fungtion biasanya outputnya manggil nama fungtionnnya lagi.
function rata_rata(n:integer; data : Array of integer): real;

var 
i, total : integer;
begin
    total := 0;
    for i := 0 to n-1 do
        total := total + data[i];
        //total+= data[i];
    rata_rata := total / n; //manggil nama fungtionnya lagi.
end;

{---------------------------------------------}
{ 3️⃣ Function Rekursif: faktorial dari n!     }
{---------------------------------------------}
function faktorial (n : integer) : longint;
begin 
    if n = 1 then
        faktorial := n * faktorial (n-1);
        {faktorial(5) = 5 * faktorial (4); n= 4}
        {faktorial (4)= 4 * faktorial (3); n= 3}
        {faktorial (3)= 3 * faktorial (2); n= 2}
        {faktorial (2)= 2 * faktorial (1); n= 1
        }

{---------------------------------------------}
{               PROGRAM UTAMA                 }
{---------------------------------------------}
// var
       bil : Array[1..5]of integer;
       i, n, nilai : integer;
//MAIN PROGRAM.
begin
    clrscr;
    // sapa_user;
    // sapa_user;
    // sapa_user; //3 ini punya procedure.
    // write ('Masukkan jumlah angka : '); readln (n);

    // for i := 1 to n do 
    //     begin 
    //         write('Data ke ',i, ': '); readln(bil[i]);
    //     end;

    // writeln('Rata_rata (pakai fungtion) : ', rata_rata(n,bil:0:2));

    write ('MAsukkan angka faktorial : ');
    readln(nilai);
    writeln(faktorial(nilai));
  
end.