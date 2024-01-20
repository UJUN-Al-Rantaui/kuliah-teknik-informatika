program tipe_array;
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
type
  nama_hari=(senin,selasa,rabu,kamis,jumat,sabtu,minggu);
  usia=0..99;
var
  hari: array[0..9] of nama_hari;
  umur: array[0..9] of usia;
begin
  clrscr;
  biodata;

  hari[1]:= senin;
  hari[9]:= sabtu;

  umur[3]:= 17;
  umur[8]:= 80;

  writeln('hari [1] : ',hari[1]);
  writeln('hari [9] : ',hari[9]);
  writeln('umur [3] : ',umur[3]);
  writeln('umur [8] : ',umur[8]);
  readln;
end.

