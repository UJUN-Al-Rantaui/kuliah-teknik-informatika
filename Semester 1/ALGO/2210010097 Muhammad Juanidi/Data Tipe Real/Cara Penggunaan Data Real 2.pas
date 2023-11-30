program tipe_real_2;
uses crt;
var
  a:real;

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
  a:=3.14;
  writeln('a : ',a:4:2);

  a:=999.99;
  writeln('a : ',a:4:2);

  a:=0.1 ;
  writeln('a : ',a:4:2);
  readln;
end.
