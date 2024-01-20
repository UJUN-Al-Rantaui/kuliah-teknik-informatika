Program tipe_record;
uses crt;
procedure biodata;
  const
    nama ='Muhammad Junaidi';
  var
    npm   : string ='2210010097';
    Kelas : string ='1B TI Reg BJB Pagi';
    i,index     : integer;
  begin
    textcolor(14);
    for i:=1 to 45 do
      write('=');
      writeln;
    for i:=1 to 5 do
      begin
        write('*');
        for index:=1 to 43 do
          write(' ');
        writeln('*');
      end;
    for i:=1 to 45 do
      write('=');
      writeln;
    textcolor(9);
    gotoxy(10,3);writeln('Nama  : ',nama);
    gotoxy(10,4);writeln('NPM   : ',npm);
    gotoxy(10,5);writeln('Kelas : ',kelas);
    gotoxy(1,10);
    textcolor(15);
  end;
var
  siswa : record nama: string[20];
                 umur: integer  ;
                 sekolah : string [30];
                 kota : string[20];
          end;
begin
  clrscr;
  biodata;
  with siswa do
    begin
      nama :='Muhammad Junaidi';
      umur :=18;
      sekolah := 'Muraatul Lughah';
      kota :='Martapura';
      writeln('Nama    : ',siswa.nama);
      writeln('Umur    : ',siswa.umur);
      writeln('Sekolah : ',siswa.sekolah);
      writeln('Kota    : ',siswa.kota);
    end;
  readln;
end.