uses crt;

{--------------------------------------------}
{ 1️⃣ TYPE DEFINITION                          }
{--------------------------------------------}
type
    TAlamat = record 
        jalan : string[50];
        kota : string[50];
        kode_pos : integer;
    end;

    TMAhasiswa = record   {nasted record}
        nama : string[50];
        umur : integer;
        ipk : real;
        alamat : TAlamat;
    end;


{--------------------------------------------}
{ 2️⃣ VARIABLE DECLARATION                     }
{--------------------------------------------}

var
    mhs : TMAhasiswa;
    dataMhs : ARRAY[1..100] of TMAhasiswa; //array record.
    n , i : integer;
    {============================================================}
{                    SECTION 1                               }
{      IMPLEMENTASI SIMPLE RECORD + NESTED RECORD            }
{============================================================}

begin
  clrscr;

  { INPUT DATA }
    write('nama : '); readln(mhs.nama);
    write('umur : '); readln(mhs.umur);
    write('ipk : '); readln(mhs.ipk);

    writeln('--SPACE UNTUK ALAMAT--');
    write('jalan : '); readln (mhs.alamat.jalan);
    write('kota : '); readln (mhs.alamat.kota);
    write('kode_pos : '); readln (mhs.alamat.kode_pos);

  { OUTPUT 
    writeln('hasil output');
    writeln('Nama : ',mhs.nama);
    writeln('umur : ',mhs.umur);
    writeln('IPK : ',mhs.ipk:0:2);
    writeln('Alamat : ',mhs.alamat.jalan, ', ',mhs.alamat.kota, ' ,' ,mhs.alamat.kode_pos);}
{============================================================}
{                    SECTION 2                               }
{       IMPLEMENTASI RECORD + WITH ... DO                    }
{============================================================}

  { WITH DO untuk nested record }
    // with mhs do 
    //     begin
    //         writeln('nama : ',nama);
    //         writeln('umur : ',umur);
    //         writeln('IPK : ',ipk:0:2);
    //     end;

    //     with mhs.alamat do 
    //     begin 
    //         writeln('Alamat : ',jalan, ' ,' ,kota,' ,' ,kode_pos);
    //     end;
  { OUTPUT }

{============================================================}
{                    SECTION 3                               }
{                ARRAY OF RECORD                             }
{============================================================}

  { INPUT ARRAY }
  write('Masukkan jumlah mahasiswa : '); readln(n);

  for i := 1 to n do 
  begin
        writeln('Mahasiswa ke-', i);
        write('Nama : '); readln(dataMhs[i].nama);
        write('umur : '); readln(dataMhs[i].umur);
        write('ipk : '); readln(dataMhs[i].ipk);

        writeln('ALAMAT');
        write('jalan : '); readln(dataMhs[i].alamat.jalan);
        write('kota : '); readln(dataMhs[i].alamat.kota);
        write('kode_pos : '); readln(dataMhs[i].alamat.kode_pos);

        writeln;
        writeln('DAFTAR MAHASISWA');
    end;
  { OUTPUT ARRAY }

  for I := 1 to n do
    begin 
        writeln('Mahasiswa ke-', i);

        with dataMhs[i].alamat do 
            begin
                write('Jalan : ',jalan);
                write('kota  : ',kota);
                write('kode_pos : ',kode_pos);

            end;
    end;
end.