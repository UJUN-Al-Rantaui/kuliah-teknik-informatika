program tipe_subrange;
uses crt;
type
  huruf='A'..'F';
var
   a,b:huruf;

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

  a:='A';
  writeln('a : ',a);

  b:='C';
  writeln('b : ',b);

  readln;
end.
