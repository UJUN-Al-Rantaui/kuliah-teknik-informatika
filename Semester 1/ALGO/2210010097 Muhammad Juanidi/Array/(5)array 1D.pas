program tipe_array;
uses crt;
var
  nilai: array[0..2]  of integer;

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

  nilai[0]:= 10;
  nilai[1]:= 20;
  nilai[2]:= 30;

  writeln('nilai0 : ',nilai[0]);
  writeln('nilai1 : ',nilai[1]);
  writeln('nilai2 : ',nilai[2]) ;

  readln;
end.

