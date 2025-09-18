// program pengenalan;
// unit li9brary untuk menjalankan fungsi clear screen
uses crt;

var 
    //string
    //variabel : tipe variabel 
    nama : string;

    //integer
    umur : integer;

    //char = huruf
    jenis_kelamin: char;

    //real = desimal
    ip : real;

//konstanta itu nilainya udah ttp gabisa diubah kaya variabel.
const 
    pi = 3.14;
    gravitasi = 9.8;


{* cara menambahkan komentar*}

begin
    clrscr;
    // writeln('Hello World');

    writeln('Nama MAhasiswa : '); readln(nama);
    writeln('Umur Mahasiswa : '); readln(umur);
    writeln('Jenis Kelamin MAhasiswa : '); readln(jenis_kelamin);
    writeln('IP Mahasiswa : '); readln(IP);

    clrscr;
    writeln('Ini data yang anda masukkan');
    writeln('Nama mahasiswa yang anda input : ', nama);
    writeln('Umur mahasiswa yang anda input : ', umur);
    writeln('Jenis kelamin yang anda input : ', jenis_kelamin);
    writeln('IP mahasiswa yang anda input : ', ip:0:2);
end.





    
