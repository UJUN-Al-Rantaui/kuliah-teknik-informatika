unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    masukanCelcius: TLabel;
    inputSuhuCelcius: TEdit;
    ulangiulang: TButton;
    kolomHasilKonversi: TEdit;
    konversi: TButton;
    Label1: TLabel;
    procedure ulangiulangClick(Sender: TObject);
    procedure konversiClick(Sender: TObject);
    procedure inputSuhuCelciusEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ulangiulangClick(Sender: TObject);
begin
  inputSuhuCelcius.Text := '';
  kolomHasilKonversi.Text := '';
end;

procedure TForm2.konversiClick(Sender: TObject);
var
  celcius, hasil : double;
begin
  try
  if inputSuhuCelcius.Text <> '' then begin
  celcius := StrToFloat(inputSuhuCelcius.Text);
  hasil := (1.8 * celcius) + 32;
  kolomHasilKonversi.Text := FloatToStr(hasil);
  end;
  except
    MessageDlg('Masukin angkanya yang bener dong, aku pusying!!', mtError, [mbOk], 0);
  end;
end;

procedure TForm2.inputSuhuCelciusEnter(Sender: TObject);
var
  celcius, hasil : Double;
begin
  try
  if inputSuhuCelcius.Text <> '' then begin
  celcius := StrToFloat(inputSuhuCelcius.Text);
  hasil := (1.8 * celcius) + 32;
  kolomHasilKonversi.Text := FloatToStr(hasil);
  end;
  except
    MessageDlg('Masukin angkanya yang bener dong, aku pusying!!', mtError, [mbOk], 0);
  end;
end;

end.
