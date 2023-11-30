unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    title1: TLabel;
    inputPanjang: TEdit;
    inputLebar: TEdit;
    inputTinggi: TEdit;
    LabelPanjang: TLabel;
    LabelLebar: TLabel;
    LabelTinggi: TLabel;
    outputVolume: TEdit;
    outputLuasPermukaan: TEdit;
    LabelVolume: TLabel;
    LabelLuasPermukaan: TLabel;
    btnHitung: TButton;
    btnBersihkan: TButton;
    title2: TLabel;
    LabelJari_jari: TLabel;
    LabelTinggiTabung: TLabel;
    inputJari_jari: TEdit;
    inputTinggiTabung: TEdit;
    LabelVolumeTabung: TLabel;
    lableLuasPermukaanTabung: TLabel;
    outputVolumeTabung: TEdit;
    outputLuasPermukaanTabung: TEdit;
    btnHitungTabung: TButton;
    btnBersihkanTabung: TButton;
    Kembali: TButton;
    procedure btnHitungClick(Sender: TObject);
    procedure btnBersihkanClick(Sender: TObject);
    procedure btnHitungTabungClick(Sender: TObject);
    procedure btnBersihkanTabungClick(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnBersihkanClick(Sender: TObject);
begin
  inputPanjang.text := '';
  inputlebar.text := '';
  inputTinggi.text := '';
  outputVolume.text := '';
  outputLuasPermukaan.text := '';
end;

procedure TForm3.btnBersihkanTabungClick(Sender: TObject);
begin
  inputJari_jari.text := '';
  inputTinggiTabung.text := '';
  outputVolumeTabung.text := '';
  outputLuasPermukaanTAbung.text := '';
end;

procedure TForm3.btnHitungClick(Sender: TObject);
  var
      panjang, lebar, tinggi, volume, luasPermukaan : integer;
begin
  if (inputPanjang.text = '') then
    messagedlg('Panjang tidak boleh kosong', mtwarning, [mbOk], 0)
  else if inputLebar.text = '' then
    messagedlg('Lebar tidak boleh kosong', mtwarning, [mbOk], 0)
  else if inputTinggi.text = '' then
    messagedlg('Tinggi Persegi Panjang tidak boleh kosong', mtwarning, [mbOk], 0)
  else
    try
      panjang := strToInt(inputPanjang.text);
      lebar := strToInt(inputlebar.text);
      tinggi := strToInt(inputTinggi.text);
      volume := panjang * lebar * tinggi;
      luasPermukaan := 2 * ((panjang * lebar) + (lebar * tinggi) + (panjang * tinggi));
      outputVolume.text := intToStr(volume);
      outputLuasPermukaan.text := intToStr(luasPermukaan);
    except
      messagedlg('Panjang, Lebar dan Tinggi harus angka', mtwarning, [mbOk], 0)
    end;
end;

procedure TForm3.btnHitungTabungClick(Sender: TObject);
var
  r, t, v, l : double;
begin
  if (inputJari_jari.text = '') or (inputTinggiTabung.text = '') then
    messageDlg('Jari-jari dan Tinggi tabung tidak boleh kosong', mtWarning, [mbOk], 0)
  else
    try
      r := strToFloat(inputJari_jari.text);
      t := strToFloat(inputTinggiTabung.text);
      v := (r * r * 22 / 7) * t;
      l := 2 * 22/7 * r * (r + t);
      outputVolumeTabung.text := floatToStr(v);
      outputLuasPermukaanTabung.text := floatToStr(l);
    except
      messageDlg('Jari-jari dan Tinggi lingkaran harus angka', mtWarning, [mbOk], 0);
    end;
end;

procedure TForm3.KembaliClick(Sender: TObject);
begin
  form3.close();
end;

end.
