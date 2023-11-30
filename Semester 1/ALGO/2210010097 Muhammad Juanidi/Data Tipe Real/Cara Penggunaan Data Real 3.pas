Program tipe_real_3;
uses crt;
var
  a,b,c:real;

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
  a:=123.456;
  writeln('a : ',a:4:2);

  b:=999.999;
  writeln('b : ',b:4:2);

  c:=6782.555555555;
  writeln('c : ',c:6:4);
  readln;
end.
