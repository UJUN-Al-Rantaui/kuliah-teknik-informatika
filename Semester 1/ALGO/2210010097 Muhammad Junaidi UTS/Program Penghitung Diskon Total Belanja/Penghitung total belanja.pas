program Penghitung_diskon_total_belanja;
uses crt;
const
  nama='Muhammad Junaidi';
  NPM='2210010097';
  Kelas='TI 1B Reg';
var
  total_belanja,penawaran:extended;

begin
  clrscr;
  //identitas
  writeln('Nama : ',nama);
  writeln('NPM : ',NPM);
  writeln('Kelas : ',Kelas);
  writeln('{========================================================}');
  (*Penghitung_diskon_total_belanja*)
  write('Total Belanja : RP.');
  readln(total_belanja);
  writeln('{========================================================}');
  penawaran:=150000-total_belanja;
  if total_belanja<150000 then
    begin
      writeln('Maaf, Kamu Belum Dapat Diskon') ;
      writeln('Tambah Belanjaan ',penawaran:0:0,' Lagi Untuk dapat Diskon 10%') ;
    end
  else if (total_belanja>=150000) and (total_belanja <=550000) then
    begin
      writeln('Kamu Mendapatkan Diskon 10%');
      writeln('Tambah Belanjaan ',penawaran+400000:0:0,' Lagi Untuk dapat Diskon 15%') ;
      total_belanja:=total_belanja-(total_belanja*10/100);
    end
  else if (total_belanja>=550000) and (total_belanja <=1000000) then
    begin
      writeln('Kamu Mendapatkan Diskon 15%');
      writeln('Tambah Belanjaan ',penawaran+850000:0:0,' Lagi Untuk dapat Diskon 20%');
      total_belanja:=total_belanja-(total_belanja*15/100);
    end
  else if total_belanja>1000000 then
    begin
      writeln('Kamu Mendapatkan Diskon 20%');
      total_belanja:=total_belanja-(total_belanja*20/100);
    end;
  writeln('Tagihan : RP.',total_belanja:0:0);
  readln;
end.
