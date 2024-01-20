program tipe_real_4;
uses crt ;
var
  a:real;
  b:single;
  c:double;
  d:extended;
  e:comp;

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

begin;
  clrscr;
  biodata;

  a:=12345.6789;
  b:=12345.6789;
  c:=12345.6789;
  d:=12345.6789;
  e:=12345.6789;

  writeln('a : ',a:6:4);
  writeln('b : ',b:6:4);
  writeln('c : ',c:6:4);
  writeln('d : ',d:6:4);
  writeln('e : ',e:6:4);
  readln;end.
