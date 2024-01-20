program ProjectPepustakaan;

uses
  Forms,
  Unit1 in '..\..\..\..\..\Folder Baru\perustkaan_app\Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
