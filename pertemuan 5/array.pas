uses crt;
var
//     // nama : array[1..5] of string;
  //i, j : integer;
//     matrix : array[1..2,1..3] of integer;
i : integer;
kata, kata1, kata2 : string;
begin
clrscr;
// // array satu dimensi
// // nama[1] := 'Edrick';
// // nama[2] := 'Anggun';
// // nama[3] := 'Indah';
// // nama[4] := 'Ika';
// // nama[5] := 'Putri';

// // //pakai perulaangan untuk output semua array
// // Writeln('Nama Mahasiswa :');
// // for i := 1 to 5 do
// //     writeln('Nama ke-',i, ':', nama[i]);

// //dua dimensi
// // Matrix[1,1]:= 2;
// // Matrix[1,2]:= 6;
// // Matrix[1,3]:= 8;
// // Matrix[2,1]:= 9;
// // Matrix[2,2]:= 0;
// // Matrix[1,1]:= 1;

// // for i := 1 to 2 do  
// // begin
// //     for j := 1 to 3 do  
// //         begin
// //             write(Matrix [i , j]);
// //         end;
// // end;
// end.

//string sebagai array

// kata1 := 'Hello ';
// kata2 := 'World';
// kata := kata1 + kata2;

// writeln('Gabungan string menjadi : ', kata);
// end.

//acsess strinhg by array

kata := 'Laptop';
writeln(kata);

writeln('Karakter pertama : ', kata[1]);
writeln('Karakter kelima : ', kata[5]);
writeln('Semua karakter di output kan : ');

for i := 1 to length(kata) do 
    writeln('Huruf ke-', i, ' :', kata[i]);

end.