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
    Label7: TLabel;
    Kembali: TButton;
    procedure convertionBClick(Sender: TObject);
    procedure clearBClick(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
    procedure inputReamurChange(Sender: TObject);
    procedure inputReamurKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function reamurKeCelcius(reamur : Double): Double;
{membuat function untk menkonversi Reamur Ke Celcius dengan 1 parameter
bertipe data double dan return nilai double}
begin
  reamurKeCelcius :=  (4/5) * reamur; // menkonversi nilai remur kemudian di return
end;

function reamurKeFahrenheit(reamur : double): Double;
{membuat function untk menkonversi Reamur Ke Fahreheit dengan 1 parameter
bertipe data double dan return nilai double}
begin
  reamurKeFahrenheit := (9/4 * reamur) + 32; // menkonversi nilai remur kemudian di return
end;

function reamurKekelvin(reamur : double): Double;
{membuat function untk menkonversi Reamur Ke Kelvin dengan 1 parameter
bertipe data double dan return nilai double}
begin
  reamurKekelvin :=  (4/5) * reamur + 273.15 ; // menkonversi nilai remur kemudian di return
end;

function reamurkeRankine(reamur : double): Double;
{membuat function untk menkonversi Reamur Ke Rankine dengan 1 parameter
bertipe data double dan return nilai double}
begin
  reamurKeRankine := reamur * 2.25; // menkonversi nilai remur kemudian di return
end;

procedure operasiReamur();
var
  reamur, celcius, fahrenheit, kelvin, rankine:  double; // deklarasi semua variable yang dibutuhkan dengan tipedata double
begin
  if Form2.inputReamur.text = '' then                                   // jika Reamur kosong
    messagedlg('Input Reamur Tidak Boleh Kosong', mtWarning, [mbOK], 0) // kirim pesan 'Input Reamur Tidak Boleh Kosong'
  else
    try    // terjadi error program didalam try akan berhenti dan except akan diajalakan
      reamur     := StrToFloat(Form2.inputReamur.Text);
      { mendapatkan nilai reamur dari Form2.inpuReamur
       karna Form2.inpuReamur.text itu nilainya string maka dkonversi dulu ke tipe data double
       dengan function StrToFloat()  }
      celcius    := reamurKeCelcius(reamur); // mengkonversi nilai reamur ke Celcius menggunakan fanction yang diatas
      fahrenheit := reamurKeFahrenheit(reamur); // mengkonversi nilai reamur ke Fahrenheit menggunakan fanction yang diatas
      kelvin     := reamurKekelvin(reamur);  // // mengkonversi nilai reamur ke Kelvin menggunakan fanction yang diatas
      rankine    := reamurKeRankine(reamur);  // mengkonversi nilai reamur ke Rankine menggunakan fanction yang diatas
      Form2.outputCelcius.text := floatToStr(celcius);       // mengoutputkan celcius ke Form2.outputCelcius
      Form2.outputFahrenheit.text := floatToStr(fahrenheit); // mengoutputkan fahrenheit ke Form2.outputFahrenheit
      Form2.outputKelvin.text := floatToStr(kelvin);         // mengoutputkan kelvin ke Form2.outputKelvin
      Form2.outputRankine.text := floatToStr(Rankine);       // mengoutputkan rankine ke Form2.outputRankine
    except                                               // jika block try terjadi kesalahan/error
      messagedlg('Inputan Harus Nomor', mtWarning, [mbOK], 0);  // tampilkan message dlg warning 'Inputan Harus Nomor'
    end;
end;

procedure TForm2.KembaliClick(Sender: TObject); // tombol kembali
begin
  form2.Close(); // menutup forrm konversi reamur
end;

procedure TForm2.clearBClick(Sender: TObject); // event tombol bersihkan
begin
  { mengosngkan semua edit }
  inputReamur.text := '';
  outputCelcius.text := '';
  outputFahrenheit.text := '';
  outputKelvin.text := '';
  outputRankine.text := '';
end;

procedure TForm2.convertionBClick(Sender: TObject);
begin
  operasiReamur(); // memanggil function operasi Reamur
end;

procedure TForm2.inputReamurChange(Sender: TObject); // event onchage edit yang di rename inputReamur
begin
{ Script disini funsinya untuk menampilkan tulisan merah 'Input Reamur Harus angka' jika inputan bukan angka}
  try
    if inputReamur.Text <> '' then
      strToFloat(inputReamur.Text);
      Label7.Visible := False; // menyembunyikan tulisan merah 'Input Reamur Harus angka'
  except
    Label7.Visible := true;  // menampilkan tulisan merah 'Input Reamur Harus angka'
  end;
end;

procedure TForm2.inputReamurKeyPress(Sender: TObject; var Key: Char); // event onKeyPress enter
begin
  if Key = #13 then  // input reamur jika tombol enter yang di tekan
    operasiReamur(); // pagil procedure operasiReamur()
end;

end.
