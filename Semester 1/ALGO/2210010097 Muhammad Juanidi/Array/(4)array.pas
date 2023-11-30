program tipe_array;
uses crt;
var
  kata: array[20..29] of string[20];

procedure biodata;
var
  nama:string='Muhammad Junaidi';
  npm:string='2210010097';
  kelas:string='1B TI Reg BJB';
begin
  textcolor(11);
  gotoxy(5,1); writeln('Nama  : ',nama);
  gotoxy(5,2); writeln('NPM   : ',npm);
  gotoxy(5,3); writeln('Kelas : ',kelas);
  gotoxy(3,4); writeln('<=========================>');
  textcolor(15);
  writeln;
end;
begin
  clrscr;
  biodata;

  kata[24]:='Sedang ';
  kata[25]:='belajar Pascal ';
  kata[26]:='di ' ;
  kata[27]:='Deka Ok TV';

  write(kata[24]);
  write(kata[25]);
  write(kata[26]);
  write(kata[27]);
  readln;
end.
