program tipe_array;
uses crt;
var
  nilai: array[1..9] of integer;

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

  nilai[1]:=23;
  nilai[2]:=13;
  nilai[3]:=98;
  nilai[4]:=106;

  writeln('nilaiIndex : ',nilai[1]);
  writeln('nilai2 : ',nilai[2]);
  writeln('nilai3 : ',nilai[3]);
  writeln('nilai4 : ',nilai[4]);

  writeln('nilai5 : ',nilai[5]);
  writeln('nilai6 : ',nilai[6]);

  readln;
end.
