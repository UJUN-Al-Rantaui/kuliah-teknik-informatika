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

procedure TFormKategoriUsia.ButtonBersihkanClick(Sender: TObject);
begin
  inputUsia.text := '';
  outputKategori.text := '';
end;

procedure TFormKategoriUsia.ButtonProsesClick(Sender: TObject);
var
  usia : integer;
  kategori : string;
begin
  if inputUsia.text = '' then
    messageDlg('Usia tidak boleh kosong!', mtwarning, [MbOk], 0)
  else
    try
      usia := strToInt(inputUsia.text);
      case usia of
        0..5 : kategori := 'Balita';
        6..11 : kategori := 'Anak-anak';
        12..16 : kategori := 'Remaja';
        17..35 : kategori := 'Dewasa';
        36..60 : kategori := 'Orang Tua';
        61..90 : kategori := 'lansia';
        91..200: kategori := 'sepu';
        else
          kategori := 'Penghuni pohon';
      end;
      outputKategori.text := kategori;

    except
      messageDlg('Usia harus angka', mtWarning, [mbOk], 0);
    end;

end;

procedure TFormKategoriUsia.kembaliClick(Sender: TObject);
begin
  formKategoriUsia.close();
end;

end.
