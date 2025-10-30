uses crt;

var
  pilihan, batas, angkarahasia, tebakan, kesempatan, sisa, skor: integer;

begin
  clrscr;

  writeln('=== GAME TEBAK ANGKA ===');
  writeln;
  writeln('Pilih tingkat kesulitan: ');
  writeln('1. Mudah (1-10)');
  writeln('2. Sedang (1-50)');
  writeln('3. Sulit (1-100)');
  write('Masukkan pilihan (1-3): ');
  readln(pilihan);

  case pilihan of
    1: batas := 10;
    2: batas := 50;
    3: batas := 100;
  else
    begin
      writeln('Pilihan tidak valid! Masukkan angka 1-3.');
      halt; 
    end;
  end;

  writeln;
  write('Pemain 1, masukkan angka rahasia (1-', batas, '): ');
  readln(angkarahasia);

  while (angkarahasia < 1) or (angkarahasia > batas) do
  begin
    writeln('Input tidak valid! Masukkan angka antara 1 - ', batas);
    write('Masukkan ulang angka rahasia: ');
    readln(angkarahasia);
  end;

  clrscr;
  writeln('Sekarang giliran Pemain 2 menebak!');
  kesempatan := 5;
  sisa := kesempatan;
  skor := 0;

  repeat
    writeln;
    writeln('Kesempatan tersisa: ', sisa);
    write('Masukkan tebakan: ');
    readln(tebakan);

    if (tebakan < 1) or (tebakan > batas) then
    begin
      writeln('Input tidak valid! Masukkan angka antara 1 dan ', batas);
      continue;
    end;

    if tebakan = angkarahasia then
    begin
      writeln('Benar! Angkanya adalah ', angkarahasia);
      skor := sisa * 20;
      writeln('Skor kamu: ', skor);
      break; 
    end
    else if tebakan < angkarahasia then
      writeln('Terlalu kecil!')
    else
      writeln('Terlalu besar!');

    sisa := sisa - 1;
  until sisa = 0;

  if tebakan <> angkarahasia then
    writeln('Kesempatan habis! Jawabannya adalah ', angkarahasia);

  writeln;
  writeln('Terima kasih sudah bermain!');
  readln;
end.
