program Project2210010097_MuhammadJunaidi;

uses
  Forms,
  UnitPenerbit in 'UnitPenerbit.pas' {Form1},
  UnitBuku in 'UnitBuku.pas' {Form2},
  UnitAnggota in 'UnitAnggota.pas' {Form3},
  UnitMenu in 'UnitMenu.pas' {Form4},
  ByMuhammadJunaidi in 'ByMuhammadJunaidi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
