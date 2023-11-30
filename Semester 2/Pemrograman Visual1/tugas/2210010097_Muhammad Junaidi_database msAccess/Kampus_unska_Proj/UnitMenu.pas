unit UnitMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormMenu = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

uses unitMahasiswa, unitDosen;

procedure TFormMenu.Button1Click(Sender: TObject);
begin
  FormMahasiswa.Show;
end;

procedure TFormMenu.Button2Click(Sender: TObject);
begin
  FormDosen.show;
end;

end.
