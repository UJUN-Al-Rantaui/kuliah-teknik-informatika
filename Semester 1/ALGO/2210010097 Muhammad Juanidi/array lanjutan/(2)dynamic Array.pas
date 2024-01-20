program tipe_array ;
uses crt;
var
  nilai : array of array of integer;
  procedure biodata;
  const
    nama ='Muhammad Junaidi';
  var
    npm   : string ='2210010097';
    Kelas : string ='1B TI Reg BJB Pagi';
    i,index     : integer;
  begin
    textcolor(14);
    for i:=1 to 45 do
      write('=');
      writeln;
    for i:=1 to 5 do
      begin
        write('*');
        for index:=1 to 43 do
          write(' ');
        writeln('*');
      end;
    for i:=1 to 45 do
      write('=');
      writeln;
    textcolor(9);
    gotoxy(10,3);writeln('Nama  : ',nama);
    gotoxy(10,4);writeln('NPM   : ',npm);
    gotoxy(10,5);writeln('Kelas : ',kelas);
    gotoxy(1,10);
    textcolor(15);
  end;
begin
  clrscr;
  biodata;
  setlength(nilai,4,4);

  nilai[0,0]:=34 ;
  nilai[2,3]:=99 ;
  nilai[3,0]:=15 ;

  writeln('nilai [0,0] : ',nilai[0,0]);
  writeln('nilai [2,3] : ',nilai[2,3]);
  writeln('nilai [3,0] : ',nilai[3,0]);

  readln;
end.