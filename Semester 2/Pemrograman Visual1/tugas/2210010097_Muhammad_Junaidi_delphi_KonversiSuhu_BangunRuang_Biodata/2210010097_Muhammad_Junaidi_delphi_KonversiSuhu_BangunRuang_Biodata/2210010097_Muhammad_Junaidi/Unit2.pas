unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    convertionB: TButton;
    clearB: TButton;
    inputReamur: TEdit;
    outputCelcius: TEdit;
    outputFahrenheit: TEdit;
    outputKelvin: TEdit;
    outputRankine: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Kembali: TButton;
    Label7: TLabel;
    procedure convertionBClick(Sender: TObject);
    procedure clearBClick(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
    procedure inputReamurChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.KembaliClick(Sender: TObject);
begin
  form2.Close();
end;

procedure TForm2.clearBClick(Sender: TObject);
begin
  inputReamur.text := '';
  outputCelcius.text := '';
  outputFahrenheit.text := '';
  outputKelvin.text := '';
  outputRankine.text := '';
end;

procedure TForm2.convertionBClick(Sender: TObject);
var
  reamur, celcius, fahrenheit, kelvin, rankine:  double;
begin
  if inputReamur.text = '' then
    messagedlg('Kolom Input Tidak Boleh Kosong', mtWarning, [mbOK], 0)
  else
    try
      reamur := StrToFloat(inputReamur.Text);
      celcius := (4/5) * reamur;
      fahrenheit :=  (9/4 * reamur) + 32;
      kelvin := (4/5) * reamur + 273.15 ;
      rankine := reamur * 2.25;
      outputCelcius.text := floatToStr(celcius);
      outputFahrenheit.text := floatToStr(fahrenheit);
      outputKelvin.text := floatToStr(kelvin);
      outputRankine.text := floatToStr(Rankine);
    except
      messagedlg('Inputan Harus Nomor', mtWarning, [mbOK], 0);
    end;

end;

procedure TForm2.inputReamurChange(Sender: TObject);
begin
  try
    if inputReamur.Text <> '' then
    strToFloat(inputReamur.Text);
    Label7.Visible := False;
  except
    Label7.Visible := true;
  end;
end;

end.
