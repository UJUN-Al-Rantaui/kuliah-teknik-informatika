Program tampil;
Uses crt;
Var
  Bilangan_int:integer=12345;
  Bilangan_real:real=123456.123456;
 
Begin
  Clrscr;
 
  Writeln(bilangan_int);
  Writeln(bilangan_int:4);
  Writeln(bilangan_int:8);
 
  Writeln(bilangan_real);
  Writeln(bilangan_real:2:4);
  Writeln(bilangan_real:4:2);
 
  Readln;
End. 