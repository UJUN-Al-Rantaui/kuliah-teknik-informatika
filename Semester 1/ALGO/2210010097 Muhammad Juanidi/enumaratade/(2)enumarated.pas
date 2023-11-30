program tipe_enumarated;
uses crt;
type
  warna=(merah,kuning,biru,ungu,jingga);
  angka=(satu,dua,tiga,empat,lima);

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
  a: warna ;
  b: angka ;
begin
  clrscr;
  biodata;

  a := kuning;
  textcolor (14); writeln('a : ',a);

  b := tiga ;
  textcolor (15); writeln('b : ',b) ;
  readln;
end.
