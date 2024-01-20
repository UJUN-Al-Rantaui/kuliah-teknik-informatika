program tipe_pointer;
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
var  nama : string[20];
     pointer : ^string  ;
begin
  clrscr;  biodata ;
  nama := 'Steve';
  writeln('Variable nama berisi : ',nama);
  pointer:= @nama ;
  writeln('Variable pointer merujuk ke nilai : ',pointer^);
  nama:='Alex';
  writeln('Variable pointer merujuk ke nilai : ',pointer^);
  pointer^ := 'joni' ;
  writeln('Variable nama berisi : ',nama);
  readln;
end.