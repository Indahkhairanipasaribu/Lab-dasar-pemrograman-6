program StokWarung;
uses crt; 

type //record untuk menyimpan data barang jualan
    Bjualan = record  // Mulai definisi record bernama Bjualan
        namaBarang  : string;     //field 1 nama barang dengan tipe data string
        modalBarang : integer;    //field 2 modal barang dengan tipe data integer
        stokBarang  : integer;    //field 3 stok barang dengan tipe data integer
    end;

{disini kami membuat function hitungNilaiTotalStok ,Function menghitung nilai stok 1 barang
 Parameter: stok (integer), modal (integer)
 Return: longint (hasil perkalian stok x modal)}
function hitungNilaiTotalStok(stok, modal : integer) : longint; 
begin 
    hitungNilaiTotalStok := stok * modal;  //nilai dikembalikan : hasil perkalian stok x modal
end; 

{deklarasi variabel global
 variabel yang bisa digunakan di seluruh program}
var 
    data       : array [1..100] of Bjualan;  //array data berisi maksimal 100 barang bertipe Bjualan
    n, i       : integer;                    //n untuk menyimpan jumlah barang, i untuk looping
    totalNilai : longint;                    //variabel untuk menyimpan total nilai seluruh stok

begin
    clrscr;  //membersihkan layar
    
    write('Masukkan jumlah barang : '); //meminta user memasukkan jumlah barang
    readln(n); //membaca input jumlah barang

    //loop for pertama digunakan untuk input data barang sesuai dengan inputan user (n)
    for i := 1 to n do 
    begin         
        writeln('Data barang ke-', i); //menampilkan nomor data barang
        
        write('Nama: ');           //input nama barang
        readln(data[i].namaBarang);
        
        write('Stok: ');     //input jumlah stok
        readln(data[i].stokBarang); 
        
        write('Harga modal: ');    //input harga modal per item   
        readln(data[i].modalBarang);
        
        writeln;  //baris kosong sebagai pemisah input
    end;  

    write ('STATUS BARANG'); //menampilkan judul status barang
     writeln;
    writeln('Barang hampir habis'); //menampilkan kategori barang dengan stok sedikit

    for i := 1 to n do
        if data[i].stokBarang <= 10 then     //jika stok kurang atau sama dengan 10
            writeln(data[i].namaBarang, ' ', data[i].stokBarang);   //menampilkan nama dan stok barangnya 

    writeln;   //baris kosong sebagai pemisah output

    writeln('Barang aman');  //menampilkan kategori barang dengan stok aman

    for i := 1 to n do
        if (data[i].stokBarang > 10) and (data[i].stokBarang < 60) then  //jika stok antara 11 sampai 59
            writeln(data[i].namaBarang, ' ', data[i].stokBarang); //menampilkan nama dan stok barang

    writeln;  //baris kosong sebagai pemisah output agar lebih enak dibaca ajaa

    writeln('Barang terlalu banyak');  //menampilkan kategori barang dengan stok berlebih

    for i := 1 to n do
        if data[i].stokBarang >= 60 then  //jika stok lebih dari atau sama dengan 60
            writeln(data[i].namaBarang, ' ', data[i].stokBarang); //menampilkan nama dan stok barang

    totalNilai := 0;  //inisialisasi total nilai stok

    for i := 1 to n do
        totalNilai := totalNilai + hitungNilaiTotalStok(data[i].stokBarang, data[i].modalBarang);  //menjumlahkan nilai stok setiap barang

    writeln; //baris kosong sebelum output akhir biar lebih rapi ajaa hehe

    writeln('Nilai total stok warung : ', totalNilai);  //menampilkan total nilai stok warung

    readln;  //menahan program agar tidak langsung tertutup

end. // daann selesaiii
