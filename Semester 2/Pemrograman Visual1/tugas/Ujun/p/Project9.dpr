program Project9;

uses
  Vcl.Forms,
  UnitMenu in 'UnitMenu.pas' {Menu},
  UnitKelulusan in 'UnitKelulusan.pas' {FormKelulusan},
  UnitKategoriUsia in 'UnitKategoriUsia.pas' {FormKategoriUsia},
  UnitSatuanMeter in 'UnitSatuanMeter.pas' {FormSatuanMeter};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenu, Menu);
  Application.CreateForm(TFormKelulusan, FormKelulusan);
  Application.CreateForm(TFormKategoriUsia, FormKategoriUsia);
  Application.CreateForm(TFormSatuanMeter, FormSatuanMeter);
  Application.Run;
end.
