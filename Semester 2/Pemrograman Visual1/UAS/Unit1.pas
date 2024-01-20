unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    label2: TLabel;
    grp1: TGroupBox;
    grp2: TGroupBox;
    label3: TLabel;
    label4: TLabel;
    label5: TLabel;
    label6: TLabel;
    label7: TLabel;
    label8: TLabel;
    edit2: TEdit;
    cbb1: TComboBox;
    edit3: TEdit;
    edit4: TEdit;
    dtp1: TDateTimePicker;
    edit5: TEdit;
    edit6: TEdit;
    edit7: TEdit;
    edit8: TEdit;
    label9: TLabel;
    label10: TLabel;
    label11: TLabel;
    label12: TLabel;
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    label13: TLabel;
    dbgrd1: TDBGrid;
    conDB: TADOConnection;
    ds1: TADODataSet;
    dsrc1: TDataSource;
    chk1: TCheckBox;
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function validasi(): boolean; // melakukan validasi untuk tombol simpan dan ubah
var
 valid :Boolean;
begin
  valid := False;
  if trim(Form1.edit2.text) = '' then
    MessageDlg('Nama Tidak Boleh Kosong', mtWarning, [mbOK], 0)
  else if Form1.cbb1.itemIndex = -1 then
    MessageDlg('Pilih kd Layanan Dengan Benar', mtWarning, [mbOK], 0)
  else if trim(Form1.edit5.text) = '' then
    MessageDlg('berat Cucian Tidak Boleh Kosong', mtWarning, [mbOK], 0)
  else if Form1.rg1.ItemIndex = -1 then
    MessageDlg('metode Pembayaran belum dipilih', mtWarning, [mbOK], 0)
  else if (trim(Form1.edit6.Text) = '') or (trim(Form1.edit7.Text) = '') or (trim(Form1.edit8.Text) = '') then
    MessageDlg('Tombol Hitung Belum Di Klik', mtWarning, [mbOK], 0)
  else
    valid := True;
  validasi := valid
end;

procedure isiBuffer(); // isi buffer ds1
begin
  form1.ds1.FieldValues['tanggal_cuci'] := Form1.dtp1.Date;
  form1.ds1.FieldValues['kode_layanan'] := Form1.cbb1.Items.Strings[Form1.cbb1.itemIndex];
  form1.ds1.FieldValues['nama_layanan'] := Form1.edit3.text;
  form1.ds1.FieldValues['nama_pelanggan'] := Form1.edit2.text;
  form1.ds1.FieldValues['berat_cucian'] := StrToInt(Form1.edit5.text);
  form1.ds1.FieldValues['harga_per_kg'] := StrToInt(Form1.edit4.text);
  form1.ds1.FieldValues['subtotal'] := StrToInt(Form1.edit6.text);
  form1.ds1.FieldValues['diskon'] := StrToInt(Form1.edit7.text);
  form1.ds1.FieldValues['total_keseluruhan'] := StrToInt(Form1.edit8.text);
  form1.ds1.FieldValues['metode_pembayaran'] := Form1.rg1.Items.Strings[Form1.rg1.ItemIndex];
end;

procedure simpan();  // function untuk ubah data
begin
  Form1.ds1.Append;  // menambah datadi akhir
  isiBuffer();      // memanggil procedyre diatas
  Form1.ds1.Post;
end;

procedure ubah();  // function untuk ubahdata
begin
  Form1.ds1.edit;    // ubah data
  isiBuffer();      // memanggil procedyre diatas
  Form1.ds1.Post;
end;

procedure TForm1.btn1Click(Sender: TObject); // bersihkan semuanya kecuali date time picker
begin
  edit2.Clear;   // nama pewlanggan
  edit3.Clear;   // nama laytanan
  edit4.Clear;   // harga per kg
  edit5.Clear;   // jml kg
  edit6.Clear;   // sub total
  edit7.Clear;   // diskon
  edit8.Clear;    // total keseluruhan
  cbb1.ItemIndex := -1;   // unselect
  rg1.ItemIndex := -1;    // unselect semua pilihan metode pembayaran
  btn4.Enabled := False;  // tombol ubah tidak bisa di tekan
  btn5.Enabled := False;  // tombol hapus tidak bisa di tekan
end;

procedure TForm1.cbb1Change(Sender: TObject);  // event cbb1 untuk memilih kd layanan
begin
  case cbb1.ItemIndex of
  0 : begin
    edit3.Text := 'Cuci Kering 1 hari';
    edit4.Text :=  '5500';
    end;
  1 : begin
    edit3.Text := 'Cuci Kering Standart';
    edit4.Text :=  '4000';
    end;
  2 : begin
    edit3.Text := 'Cuci Setrika 1 hari';
    edit4.Text :=  '7500';
    end;
  3 : begin
    edit3.Text := 'Cuci Setrika Standart';
    edit4.Text :=  '6000';
    end;
  4 : begin
    edit3.Text := 'Cuci Karpet 1 Hari';
    edit4.Text :=  '35000';
    end;
  5 : begin
    edit3.Text := 'Cuci Karpet Standart';
    edit4.Text :=  '25000';
    end;
  else
   ShowMessage('Error');
   cbb1.ItemIndex := -1;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject); // tombolo hitung
var
  harga_per_kg, subtotal, berat_cucian : Integer;
  diskon, potongan_harga, total: double;
begin
  if trim(edit2.Text) = '' then
    MessageDlg('Nama Belum Di isi', mtWarning, [mbOk], 0)
  else if cbb1.ItemIndex = -1  then
    MessageDlg('KD Layanan Pilihlah dengan benar', mtWarning, [mbOk], 0)
  else if trim(edit5.Text) = ''  then
    MessageDlg('Berat Cucian Belum Di isi', mtWarning, [mbOk], 0)
  else begin
    harga_per_kg := StrToInt(edit4.text);
    berat_cucian := StrToInt(edit5.Text);
    subtotal :=  harga_per_kg * berat_cucian;

    if subtotal >= 37000 then  // jika subtotal lebih 37000 dapat diskon
      case cbb1.ItemIndex of
        0 : begin
          diskon := 0.03;
        end;
        1 : begin
          diskon := 0.03;
        end;
        2 : begin
          diskon := 0.05;
        end;
        3 : begin
          diskon := 0.04;
        end;
        4 : begin
         diskon := 0.07;
        end;
        5 : begin
          diskon := 0.05;
        end;
      end
      else
        diskon := 0;

    potongan_harga := diskon * subtotal;
    total := subtotal - potongan_harga;

    edit6.Text := IntToStr(subtotal);
    edit7.Text := FloatToStr(potongan_harga);
    edit8.Text := FloatToStr(total)
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if validasi() then begin  // memanggili validasik di atas
    simpan();
    btn1Click(Sender);
    ShowMessage('Data Berhasil Disimpan');
  end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn); // on cell klik
begin
    edit2.Text := ds1.FieldValues['nama_pelanggan'];
    cbb1.ItemIndex  := cbb1.Items.IndexOf(ds1.FieldValues['kode_layanan']);
    edit3.Text := ds1.FieldValues['nama_layanan'];
    edit4.Text := ds1.FieldValues['harga_per_kg'];
    dtp1.Date := ds1.FieldValues['tanggal_cuci'];
    edit5.Text := ds1.FieldValues['berat_cucian'];
    edit6.Text := ds1.FieldValues['subtotal'];
    edit7.Text := ds1.FieldValues['diskon'];
    edit8.Text := ds1.FieldValues['total_keseluruhan'];
    try
      rg1.ItemIndex := rg1.Items.IndexOf(ds1.FieldValues['metode_pembayaran']);
    except
      rg1.itemIndex := -1;
    end;

    btn4.Enabled := True;
    btn5.Enabled := True;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if validasi() then begin  // melakukan validasi menggunakan function diatas
    ubah();
    btn1Click(sender);
    ShowMessage('Data Berhasil Di rubah');
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);  // tombol hapus klik
begin
  if MessageDlg('Yakin Hapus?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  // akan muncul pertanyaan yakin hapus? jika yes di klik terhapus tapi No di klik Maka tidak terhapus
  begin
    ds1.Delete;
    ShowMessage('Data telah di hapus');
    btn1Click(sender);
  end;
end;

end.
