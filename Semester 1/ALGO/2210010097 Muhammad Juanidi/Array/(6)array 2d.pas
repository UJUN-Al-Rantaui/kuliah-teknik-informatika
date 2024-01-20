program tipe_array;
  uses crt;
var
  nilai: array[0..1,0..2] of integer;

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
  nilai[0,0]:=1;
  nilai[0,1]:=2;
  nilai[0,2]:=3;
  nilai[1,0]:=4;
  nilai[1,1]:=5;
  nilai[1,2]:=6;

  writeln('nilai0,0 : ',nilai[0,0]);
  writeln('nilai0,1 : ',nilai[0,1]);
  writeln('nilai0,2 : ',nilai[0,2]);
  writeln('nilai1,0 : ',nilai[1,0]);
  writeln('nilai1,1 : ',nilai[1,1]);
  writeln('nilai1,2 : ',nilai[1,2]);
  readln;
end.
