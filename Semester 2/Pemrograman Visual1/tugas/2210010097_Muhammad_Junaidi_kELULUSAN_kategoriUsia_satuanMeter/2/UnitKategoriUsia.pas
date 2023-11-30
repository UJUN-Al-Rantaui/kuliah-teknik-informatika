unit UnitKategoriUsia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormKategoriUsia = class(TForm)
    title: TLabel;
    inputUsia: TEdit;
    LabelUsia: TLabel;
    ButtonProses: TButton;
    ButtonBersihkan: TButton;
    LabelKategori: TLabel;
    outputKategori: TEdit;
    kembali: TButton;
    procedure ButtonProsesClick(Sender: TObject);
    procedure ButtonBersihkanClick(Sender: TObject);
    procedure kembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKategoriUsia: TFormKategoriUsia;

implementation

{$R *.dfm}

procedure TFormKategoriUsia.ButtonBersihkanClick(Sender: TObject); // event tombol bersihkan
begin
  inputUsia.text := '';  {membersihkan semua edit}
  outputKategori.text := '';
end;

procedure TFormKategoriUsia.ButtonProsesClick(Sender: TObject); // event tombol proses
var
  usia : integer;
  kategori : string;
begin
  if inputUsia.text = '' then   // jika inputUsia kosong kirim pesan usia tidak boleh kosong
    messageDlg('Usia tidak boleh kosong!', mtwarning, [MbOk], 0)
  else // jika input usia tidak kosong jalan kan try exception state ment dibawah
    try // mencoba menjalankan kumpulan statement dibawah jika terjadi error exception akan dijalan kan
      usia := strToInt(inputUsia.text); // meberi nilai variable usia yang diambil dar input usia yang sebelumnya dilakukan konverisi data ke float terlebih dahulu
      case usia of // memriksa nilai usia
        0..5 : kategori := 'Balita'; // jika usia 0-5 kategori=Balita
        6..11 : kategori := 'Anak-anak'; // jika usia 6-11 kategori=Anak-anak
        12..16 : kategori := 'Remaja';  // jika usia 12-16 kategori=Remaja
        17..35 : kategori := 'Dewasa';  // jika usia 17-35 kategori=Dewasa
        36..60 : kategori := 'Orang Tua'; // jika usia 36-60 kategori=Orang Tua
        61..90 : kategori := 'lansia';  // jika usia 61-90 kategori=lansia
        91..200: kategori := 'sepu'; // jika usia 91-200 kategori=sepu
        else
          kategori := 'Makhluk penghuni pohon'; // jika semua nilai tidak sesuai maka kategori=Makhluk penghuni pohon
      end;
      outputKategori.text := kategori; // mengisi teks output kategori dengan nilai yang dimiliki variable kategori

    except // exception akan dijalankan hanya jika didalam block try terjadi error
      messageDlg('Usia harus angka', mtWarning, [mbOk], 0); // jika inputUsia bukan angka tampilkan message dialog warning dengan pesan Usia harus angka
    end;

end;

procedure TFormKategoriUsia.kembaliClick(Sender: TObject); // event button kembali
begin
  formKategoriUsia.close(); // tutup formKategoriUsia
end;

end.
