program tipe_enumarated;
uses crt;
type
  nama_hari=(senin,selasa,rabu,kamis,jumat,sabtu,minggu);
  hari_kerja=senin..jumat;
  weekend=senin..minggu;

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
  a:hari_kerja ;
  b:weekend;
begin
  clrscr;
  biodata;

  a:=kamis;
  writeln('a : ',a);

  b:=sabtu;
  writeln('b : ',b);

  readln;
end.
