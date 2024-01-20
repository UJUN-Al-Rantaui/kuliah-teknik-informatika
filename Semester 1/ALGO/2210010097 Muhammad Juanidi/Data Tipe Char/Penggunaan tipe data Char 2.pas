program tipe_char_2;
uses crt;
var
  a:char;

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
  a:=#65;
  writeln('a : ',a);

  a:=#57;
  writeln('a : ',a);

  a:=#137;
  writeln('a : ',a);
  readln;
end.
