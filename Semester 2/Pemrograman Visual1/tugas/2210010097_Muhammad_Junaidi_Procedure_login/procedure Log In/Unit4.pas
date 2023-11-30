unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    ButtonKembali: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ButtonKembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

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

procedure operasiCelcius();
var
  reamur, celcius, fahrenheit, kelvin, rankine:  double; // deklarasi semua variable yang dibutuhkan dengan tipedata double
begin
  if form4.Edit1.text = '' then                                        // jika Celcius kosong
    messagedlg('Kolom Input Tidak Boleh Kosong', mtWarning, [mbOK], 0) // kirim pesan 'Input Reamur Tidak Boleh Kosong'
  else
    try    // terjadi error program didalam try akan berhenti dan except akan diajalakan
      celcius := StrToFloat(form4.edit1.Text);
      { mendapatkan nilai reamur dari form4.edit1
       karna form4.edit1.text itu nilainya string maka dkonversi dulu ke tipe data double
       dengan function StrToFloat()  }
      celcius    := reamurKeCelcius(reamur); // mengkonversi nilai reamur ke Celcius menggunakan fanction yang diatas
      fahrenheit := reamurKeFahrenheit(reamur); // mengkonversi nilai reamur ke Fahrenheit menggunakan fanction yang diatas
      kelvin     := reamurKekelvin(reamur);  // // mengkonversi nilai reamur ke Kelvin menggunakan fanction yang diatas
      rankine    := reamurKeRankine(reamur);  // mengkonversi nilai reamur ke Rankine menggunakan fanction yang diatas;
      Form4.edit2.text := floatToStr(celcius);       // mengoutputkan celcius ke Form4.edit2
      Form4.edit3.text := floatToStr(fahrenheit); // mengoutputkan fahrenheit ke Form4.edit3
      Form4.edit4.text := floatToStr(kelvin);         // mengoutputkan kelvin ke Form4.edit4
      Form4.edit5.text := floatToStr(Rankine);       // mengoutputkan rankine ke Form4.edit5
    except                                               // jika block try terjadi kesalahan/error
      messagedlg('Inputan Harus Nomor', mtWarning, [mbOK], 0);  // tampilkan message dlg warning 'Inputan Harus Nomor'
    end;
end;

procedure TForm4.Button1Click(Sender: TObject); // tombol konversi
begin
  operasiCelcius(); // memanggil procedure operasiCelcius() diatas
end;

procedure TForm4.Edit1Change(Sender: TObject); // event onchage edit1
{ Script disini funsinya untuk menampilkan tulisan merah 'Input Reamur Harus angka' jika inputan bukan angka}
begin
  try
    if edit1.Text <> '' then
      strToFloat(Edit1.Text);
    Label7.Visible := False; // menyembunyikan tulisan merah 'Input Reamur Harus angka'
  except
    Label7.Visible := true; // menampilkan tulisan merah 'Input Reamur Harus angka'
  end;
end;

procedure TForm4.Button2Click(Sender: TObject); // tombol Bersihkan
begin
  { mengosongkan semua edit dari edit1 sampai edit5}
  Edit1.text := '';
  Edit2.text := '';
  Edit3.text := '';
  Edit4.text := '';
  Edit5.text := '';
end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: Char); // event edit1 onpress
begin
  if Key = #13 then  // jika timbol enter yang di tekan
    operasiCelcius(); // maka memanggil procedure operasiCelcius() diatas
end;

procedure TForm4.ButtonKembaliClick(Sender: TObject); // event tombol kembali
begin
  Form4.Close(); // menutup forrm konversi Celcius
end;

end.
