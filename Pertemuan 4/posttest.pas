program KasirRestoran;
uses crt;

var
  pilihan, jumlah, total, harga, subtotal : longint;
  ulang : char;
  namaMenu : string;

begin
  clrscr;
  total := 0;

  writeln('=== KASIR RESTORAN IKLC ===');
  writeln;

  repeat
    writeln('Daftar Menu:');
    writeln('1. Nasi Goreng - Rp15000');
    writeln('2. Mie Goreng  - Rp12000');
    writeln('3. Es Teh      - Rp5000');
    writeln('4. Selesai');
    writeln;

    write('Pilih menu (1-4): ');
    readln(pilihan);

    case pilihan of
      1: begin
           namaMenu := 'Nasi Goreng'; 
           harga := 15000;
         end;
      2: begin
           namaMenu := 'Mie Goreng';
           harga := 12000;
         end;
      3: begin
           namaMenu := 'Es Teh';
           harga := 5000;
         end;
      4: begin
           writeln('Selesai memilih menu.');
           break;
         end;
    else
      writeln('Pilihan tidak valid!');
      continue;
    end;

    (* TODO 1: Input jumlah pesanan dan hitung subtotal *)
    write('Masukkan jumlah pesanan ', namaMenu, ': ');
    readln(jumlah);
    subtotal := harga * jumlah;

    (* TODO 2: Tambahkan subtotal ke total keseluruhan *)
    total := total + subtotal;
    writeln('Pesanan berhasil ditambahkan. Subtotal: Rp', subtotal);
    writeln;

    (* TODO 3: Tanya apakah ingin memesan lagi *)
    write('Tambah pesanan lagi? (Y/N): ');
    readln(ulang);

    if (ulang = 'N') or (ulang = 'n') then
      break;

  until (pilihan = 4);

  writeln;
  writeln('===========================');
  writeln('Total Keseluruhan: Rp', total);
  writeln('Terima kasih telah berbelanja!');
  writeln('===========================');

  (* TODO 4: Gunakan exit untuk menutup program *)
  exit;
end.