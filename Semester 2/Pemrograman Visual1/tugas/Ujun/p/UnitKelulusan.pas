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

{$R *.dfm}

procedure TFormKelulusan.ButtonBersihkanClick(Sender: TObject);
begin
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

procedure TFormKelulusan.ButtonProsesClick(Sender: TObject);
var
  nama, npm, kesimpulan, huruf: string;
  kehadiran, tugas, uts, uas, nilaiAkhir: double;
begin
  nama := inputNama.text;
  npm  := inputNPM.text;
  kehadiran :=  strToFloat(inputKehadiran.text);
  tugas :=  strToFloat(inputTugas.text);
  uts :=  strToFloat(inputUts.text);
  UAS :=  strToFloat(inputUAS.text);
  nilaiAkhir := (kehadiran * 0.1) + (tugas * 0.3) + (uts * 0.25) + (uas * 0.35);

  if (nilaiAkhir >= 80) and (nilaiAkhir <= 100) then
    huruf := 'A'
  else if (nilaiAkhir >= 75) and (nilaiAkhir < 80 ) then
    huruf := 'B+'
  else if (nilaiAkhir >= 70) and (nilaiAkhir < 75) then
    huruf := 'B'
  else if (nilaiAkhir >= 65) and (nilaiAkhir < 70) then
    huruf := 'C+'
  else if (nilaiAkhir >= 60) and (nilaiAkhir < 65) then
    huruf := 'C'
  else if (nilaiAkhir >= 50) and (nilaiAkhir < 60) then
    huruf := 'D'
  else if (nilaiAkhir >= 0) and (nilaiAkhir < 50) then
    huruf := 'E'
  else if nilaiAkhir > 100 then
    huruf := 'nilai akhir lebih dari 100'
  else
    huruf := 'Nilai Kurang dari nol';

  if nilaiAkhir >= 60 then
    Kesimpulan := 'Lulus'
  else
    Kesimpulan := 'Ulang';

  outputNama.text := nama;
  outputNPM.text  := npm;
  outputNilaiAkhir.text := floatToStr(nilaiAkhir);
  outputHuruf.text := huruf;
  outputKesimpulan.text := kesimpulan;
end;

procedure TFormKelulusan.KembaliClick(Sender: TObject);
begin
  formKelulusan.Close();
end;

end.
