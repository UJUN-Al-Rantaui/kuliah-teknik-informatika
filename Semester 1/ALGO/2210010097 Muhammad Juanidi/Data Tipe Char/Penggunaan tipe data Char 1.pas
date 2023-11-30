program tipe_char;
uses crt;
var
  a:Char;

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
  writeln;
end;

begin
  clrscr;
  biodata;
  textcolor(15);
  a:='A';
  writeln('a : ',a);

  a:='9';
  writeln('a : ',a);

  a:='x';
  writeln('a : ',a);
  readln
end.
