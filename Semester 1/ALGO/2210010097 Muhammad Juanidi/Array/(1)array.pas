program tipe_array;
uses crt;
var
  nilai1,nilai2,nilai3,nilai4:integer;

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


  nilai1:=23;
  nilai2:=13;
  nilai3:=98;
  nilai4:=106;

  writeln('nilai1 : ', nilai1);
  writeln('nilai2 : ',nilai2);
  writeln('nilai3 : ',nilai3);
  writeln('nilai4 : ',nilai4);

  readln;
end.
