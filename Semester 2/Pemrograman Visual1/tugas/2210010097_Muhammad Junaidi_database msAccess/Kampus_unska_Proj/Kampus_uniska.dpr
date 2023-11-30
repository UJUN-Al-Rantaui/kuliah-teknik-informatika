program Kampus_uniska;

uses
  Forms,
  unitMahasiswa in 'unitMahasiswa.pas' {FormMahasiswa},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitMenu in 'UnitMenu.pas' {FormMenu},
  UnitDosen in 'UnitDosen.pas' {FormDosen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormDosen, FormDosen);
  Application.CreateForm(TFormMahasiswa, FormMahasiswa);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.
