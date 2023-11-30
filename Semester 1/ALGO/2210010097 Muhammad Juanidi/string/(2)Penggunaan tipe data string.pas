program tipe_string;
uses crt;
var
 a:string[10];

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
  a:='SekaOKTV - Learn Programing';
  writeln('a : ',a);

  a:='Sedang belajar PAscal';
  writeln('a : ',a);

  a:='1234567890123456789';
  writeln('a :',a);

  readln;
end.
