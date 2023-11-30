program tipe_array;
uses crt;
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

var
  nilai : array of integer;
begin
  clrscr;

  biodata;

  setlength(nilai,10);

  nilai[0]:=1;
  nilai[6]:=2;
  nilai[9]:=4;

  writeln('nilai 0 : ',nilai[0]);
  writeln('nilai 6 : ',nilai[6]);
  writeln('nilai 9 : ',nilai[9]);
  readln
end.





