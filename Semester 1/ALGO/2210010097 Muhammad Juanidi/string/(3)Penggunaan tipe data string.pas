program tipe_string;
uses crt;
var
  a:ansistring;

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
  a:='Pascal diambil dari nama matematika perancis abad pertengahan,'+
     'Blaise Pascal. Bahasa Pascal dikembangkan oleh Niklaus Wirth pada '+
     'tahun 1970, dan populer digunakan pada era 1970 hingga awal 1990an.'+
     'Dari awal dikembangkan, Pascal dikembankan untuk keperluan akademik.'+
     'Atas alasann itu pula Pascal masih di gunakan di berbagai sekolah dan' +
     'universiatas di seuluruh dunia(termasuk Indonesia)';
  writeln(a);
  readln;
end.
