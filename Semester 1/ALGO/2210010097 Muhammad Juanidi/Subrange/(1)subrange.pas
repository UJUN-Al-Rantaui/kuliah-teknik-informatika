program tipe_subrange;
uses crt;
type
  satuan= 1..9;

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
var
  a,b: satuan;

  begin
  clrscr;
  biodata;

  a:=2;
  writeln('a : ',a);

  b:=7 ;
  writeln('b : ',b);

  readln;
end.
