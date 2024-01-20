program tipe_array;
uses crt;
var
  nilai : array[0..1,0..2,0..3 ] of integer;

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

   nilai[0,0,2]:=2;
   writeln(nilai[1,2,3]);

   nilai[1,2,3]:=999 ;
   writeln(nilai[1,2,3]) ;
   readln;
   end.
