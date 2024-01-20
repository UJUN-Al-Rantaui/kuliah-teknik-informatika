unit UnitKelulusan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormKelulusan = class(TForm)
    LabelNama: TLabel;
    LabelNPM: TLabel;
    LabelTugas: TLabel;
    LabelKehadiran: TLabel;
    LabelUTS: TLabel;
    LabelUAS: TLabel;
    inputNama: TEdit;
    inputNpm: TEdit;
    inputKehadiran: TEdit;
    inputTugas: TEdit;
    inputUTS: TEdit;
    inputUAS: TEdit;
    LabelOutNama: TLabel;
    outputNama: TEdit;
    LabelOutNPM: TLabel;
    outputNPM: TEdit;
    LableOutNilaiAkhir: TLabel;
    outputNilaiAkhir: TEdit;
    LabelOutHuruf: TLabel;
    outputHuruf: TEdit;
    Label1: TLabel;
    outputKesimpulan: TEdit;
    ButtonProses: TButton;
    ButtonBersihkan: TButton;
    Kembali: TButton;
    procedure ButtonProsesClick(Sender: TObject);
    procedure ButtonBersihkanClick(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKelulusan: TFormKelulusan;


implementation

function hitungNilaiAkhir(kehadiran, tugas, uts, uas: double): double; // function penghitung nilai akhir dengan empat parameter bertipedata double dan mereturn nlai double
begin
  hitungNilaiAkhir := (kehadiran * 0.1) + (tugas * 0.3) + (uts * 0.25) + (uas * 0.35); // return nilai akhir dengan ketentuan (kehadiran=10%, tugas=30%, uts=25%, uas=30%)
end;

function getHuruf(nilai : double):string;  // function getHuruf dengan satu parameter bertipe data double dengan return bertipe string
begin
  if (nilai >= 80) and (nilai <= 100) then // nilai = 80 sampai 100 return A
    getHuruf := 'A'
  else if (nilai >= 75) and (nilai < 80) then  // nilai = 75 sampai 79 return B+
    getHuruf := 'B+'
  else if (nilai >= 70) and (nilai < 75) then   // nilai = 70 sampai 74 return B
    getHuruf := 'B'
  else if (nilai >= 65) and (nilai < 70) then  // nilai = 65 sampai 69 return C+
    getHuruf := 'C+'
  else if (nilai >= 60) and (nilai < 65) then // nilai = 60 sampai 64 return C
    getHuruf := 'C'
  else if (nilai >= 50) and (nilai < 60) then // nilai = 50 sampai 59 return D
    getHuruf := 'D'
  else if (nilai >= 0) and (nilai < 50) then  // nilai = 0 sampai 49 return E
    getHuruf := 'E'
  else if nilai > 100 then // nilai melebihi 100 return teks return nilai akhir lebih dari 100
    getHuruf := 'nilai akhir lebih dari 100'
  else          // jika semua kondisi salah return Nilai Kurang dari nol
    getHuruf := 'Nilai Kurang dari nol';
end;

function getKesimpulan(nilai : double):string; // function get kesimpulan
begin
  if nilai >= 60 then // jika nilai yang dikirim kedalam function lebih 60 return LULUS jika tidak return ULANG
    getKesimpulan := 'Lulus'
  else
    getKesimpulan := 'Ulang'
end;

{$R *.dfm}

procedure TFormKelulusan.ButtonBersihkanClick(Sender: TObject); // event tombol bersihkan
begin  {mengosongkon semua edit}
  inputNama.text := '';
  inputNPM.text := '';
  inputKehadiran.text := '';
  inputTugas.text := '';
  inputUts.text := '';
  inputUAS.text := '';
  outputNama.text := '';
  outputNPM.text  := '';
  outputNilaiAkhir.text := '';
  outputHuruf.text := '';
  outputKesimpulan.text := '';
end;

procedure TFormKelulusan.ButtonProsesClick(Sender: TObject); // event tombol prosees
var
  nama, npm, kesimpulan, huruf: string;
  kehadiran, tugas, uts, uas, nilaiAkhir: double;
begin
  nama := inputNama.text; // mengambil value nama dari TEdit yang diberi nama input nama
  npm  := inputNPM.text;  // mengambil value NPM dari TEdit yang diberi nama inputNPM
  kehadiran :=  strToFloat(inputKehadiran.text); // mengambil value kehadiran dari TEdit yang diberi nama inputKehadiran
  tugas :=  strToFloat(inputTugas.text); // mengambil value tugas dari TEdit yang diberi nama inputTugas
  uts :=  strToFloat(inputUts.text); // mengambil value uts dari TEdit yang diberi nama inputUTS
  UAS :=  strToFloat(inputUAS.text); // mengambil value UAS dari TEdit yang diberi nama inputUAS
  nilaiAkhir := hitungNilaiAkhir(kehadiran, tugas, uts, uas); // memanggil function hitungNilaiAkhir dengan empat argument yang ada di atas yang mereturn nilaiAkhir
  outputNama.text := nama; // mengisi teks nama pada edit yang diberi nama output nama
  outputNPM.text  := npm;   // mengisi teks NPM pada edit yang diberi nama outputNPM
  outputNilaiAkhir.text := floatToStr(nilaiAkhir);   // mengisi teks nama pada edit yang diberi nama outputNilaiAkhir
  outputHuruf.text := getHuruf(nilaiAkhir); // memanggil function getHuruf dengan satu argument yang ada di atas yang mereturn nilaiAbjad
  outputKesimpulan.text := getKesimpulan(nilaiAkhir); // memanggil function getKesimpulan dengan argument nilaiAkhir yang ada di atas yang mereturn teks lulus atau tidak lulus kemudian mengisi teks kesimpulan pada edit yang diberi nama outputKesimpulan
end;

procedure TFormKelulusan.KembaliClick(Sender: TObject); // event tombol Kembali
begin
  formKelulusan.Close(); // menutub form kelulusan
end;

end.
