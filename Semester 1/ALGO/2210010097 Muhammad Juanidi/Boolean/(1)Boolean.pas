program tipe_Boolean  ;
uses crt;
var
  a:boolean ;

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

  a:=true;
  writeln ('a : ',a);

  a:=false ;
  writeln ('a : ',a);

  a:=not true;
  writeln('a : ',a);

  a:=not false ;
  writeln('a : ',a);

  readln;
end.
