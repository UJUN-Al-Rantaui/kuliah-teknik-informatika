unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMenu = class(TForm)
    kelulusan: TButton;
    kategoriUsia: TButton;
    konversiJarak: TButton;
    title: TLabel;
    procedure kelulusanClick(Sender: TObject);
    procedure kategoriUsiaClick(Sender: TObject);
    procedure konversiJarakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menu: TMenu;

implementation

uses unitKelulusan, UnitKategoriUsia, UnitSatuanMeter;

{$R *.dfm}

procedure TMenu.kategoriUsiaClick(Sender: TObject);
begin
  formKategoriUsia.show();
end;

procedure TMenu.kelulusanClick(Sender: TObject);
begin
  FormKelulusan.show();
end;

procedure TMenu.konversiJarakClick(Sender: TObject);
begin
  formSatuanMeter.Show();
end;

end.
