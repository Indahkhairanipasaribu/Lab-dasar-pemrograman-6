uses crt;
var 
    nim : array [1..10] of string;
    n, i : integer;

begin
clrscr;

write('Masukkan jumlah antrian mahasiswa (1-10) : ');
readln(n);


write('Masukkan nim mahasiswa dari depan ke belakang : ');
for i := 1 to n do 
readln(nim[i]);

writeln('nim mahasiswa dari belakang ke depan : ');
for i := n downto 1 do
    write(nim[i], ' ');

readln;
end.