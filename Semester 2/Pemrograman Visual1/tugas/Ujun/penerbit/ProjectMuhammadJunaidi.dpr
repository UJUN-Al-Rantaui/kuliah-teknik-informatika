program ProjectMuhammadJunaidi;

uses
  Forms,
  Unit1 in 'Unit1.pas' {ByMuhammadJunaidi},
  UnitMuhammadJunaiid in 'UnitMuhammadJunaiid.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TByMuhammadJunaidi, ByMuhammadJunaidi);
  Application.Run;
end.
