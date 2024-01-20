unit UnitDosen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,  Forms,
  Dialogs, Controls, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls,
  ComCtrls;

type
  TFormDosen = class(TForm)
    dsDosen: TADODataSet;
    dSrcDosen: TDataSource;
    dbgDosen: TDBGrid;
    GbInput: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    dtp1: TDateTimePicker;
    rgAgama: TRadioGroup;
    rgStatus: TRadioGroup;
    Button1: TButton;
    conDB: TADOConnection;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbgDosenCellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  TDosen = record      // membuat record representasi dari data dosen 
    nidn : string;
    nama : string;
    tanggal_masuk : TDate;
    alamat : string;
    no_wa : string;
    agama : string;
    status : string;
  end;
var
  FormDosen: TFormDosen;

implementation

{$R *.dfm}

procedure bersih();       // procedure untuk membersihkan inputan
begin
  FormDosen.Edit1.Clear;               // bersihkan tempat memasukan NIDN  
  FormDosen.Edit2.Clear;               // bersihkan tempat memasukan Nama Dosen
  FormDosen.Edit3.Clear;               // bersihkan tempat memasukan alamat        
  FormDosen.Edit4.Clear;                // bersihkan tempat memasukan No_WA  
  FormDosen.rgAgama.ItemIndex := -1;    // unselect semua item Radio goup agama  
  FormDosen.rgStatus.ItemIndex := -1;   // unselect semua item Radio Group Status   
  FormDosen.Button1.Enabled := True;    // mengatur tombol Tambah agar bisa di click
  FormDosen.Button2.Enabled := false;   // mengatur tombol rubah agar tidak bisa di click
  FormDosen.Button3.Enabled := false;   // mengatur tombol hapus agar tidak bisa di click
end;

procedure manipulasi();     // procedure akses semua buffer dsDosen untuk menambah dan merubah data
begin
  FormDosen.dsDosen.FieldValues['nidn'] := FormDosen.Edit1.Text;                // mengisi buffer column NIDN yang datanya diambil dari FormDosen.Edit1.Text  
  FormDosen.dsDosen.FieldValues['nama_dosen'] := FormDosen.Edit2.Text;          // mengisi buffer column NIDN yang datanya diambil dari FormDosen.Edit2.Text
  FormDosen.dsDosen.FieldValues['tanggal_masuk'] := FormDosen.dtp1.Date;        // mengisi buffer column NIDN yang datanya diambil dari FormDosen.dtp1.Date
  FormDosen.dsDosen.FieldValues['alamat'] := FormDosen.Edit3.Text;              // mengisi buffer column NIDN yang datanya diambil dari FormDosen.Edit3.Text
  FormDosen.dsDosen.FieldValues['no_wa'] := FormDosen.Edit4.Text;               // mengisi buffer column NIDN yang datanya diambil dari FormDosen.Edit4.Text
  FormDosen.dsDosen.FieldValues['agama'] := FormDosen.rgAgama.Items[FormDosen.rgAgama.ItemIndex];   // mengisi buffer column NIDN yang datanya diambil dari FormDosen.rgAgama.Items[FormDosen.rgAgama.ItemIndex]
  FormDosen.dsDosen.FieldValues['status'] := FormDosen.rgStatus.Items[FormDosen.rgStatus.ItemIndex];// mengisi buffer column NIDN yang datanya diambil dari FormDosen.rgStatus.Items[FormDosen.rgStatus.ItemIndex]
end;

procedure tambahDatDos();  // procedure menambah data dosen
begin 
  FormDosen.dsDosen.Append; // memanggil procedure untuk menambah data pada posisi paling akhir di dalam table dosen
  manipulasi();             // memanggil procedure manipulasi
  FormDosen.dsDosen.Post;   // memanggil procedure untuk mengirim data dalam bffer ke table dosen 
end;

procedure rubahDatDos();  // procedure rubah data dosen
begin
  FormDosen.dsDosen.Edit; // merubah data pada curosr saat ini
  manipulasi();           // memanggil procedure manipulasi
  FormDosen.dsDosen.Post; // memanggil procedure untuk mengirim data dalam bffer ke table dosen 
end;

function validasi(): Boolean; // function validasi
// validasi inputan data
// function ini digunakan pada event tombol Tambah dan Rubah
// Jika data inputan VALID return True
// tetapi jika datanya INVALID return/kirim nilai False
var
  valid : Boolean;     // deklarasi variable yang akan digunakan mejadi nilai return
begin
  valid := False;      // nilai awal valid adalah false
  if trim(FormDosen.Edit1.Text) = '' then                          // jika NIDN kosong/blank
  {function trim berfungsi untuk menghapus karakter whiteSpace seperti spasi, enter DLL}                     
    MessageDlg('NIDN Tidak Boleh Kosong', mtWarning, [mbOk], 0)    // beri pesan peringatan 'NIDN tidak boleh Kosong!'
  else if trim(FormDosen.Edit2.Text) = '' then                      // jika nama kosong/blank
    MessageDlg('Nama Tidak Boleh Kosong', mtWarning, [mbOk], 0)     // beri pesan peringatan 'Nama Kosong!'
  else if trim(FormDosen.Edit3.Text) = '' then
    MessageDlg('Alamat Tidak Boleh Kosong', mtWarning, [mbOk], 0)   // beri pesan peringatan 'Alamat tidak boleh Kosong!'
  else if trim(FormDosen.Edit4.Text) = '' then
    MessageDlg('No WA Tidak Boleh Kosong', mtWarning, [mbOk], 0)    // beri pesan peringatan 'No WA tidak boleh Kosong!'
  else if FormDosen.rgAgama.itemIndex = -1 then
    MessageDlg('Agama Harus Di Pilih', mtWarning, [mbOk], 0)        // beri pesan peringatan 'Agama Harus dipilih!'
  else if FormDosen.rgStatus.ItemIndex = -1 then
    MessageDlg('Status Harus Di pilih', mtWarning, [mbOk], 0)       // beri pesan peringatan 'Status Harus dipilih!'
  else
    valid := True;       // jika semua kondisi diatas salah maka rubah nilai valid menjadi true
  validasi := valid;  // mereturn nilai variable valid
end;

function ambilDatDos(): TDosen;
 {TDosen adalah tipe data record yang saya buat untuk merpresentasi kan data dosen
 deklarasi nya ada di atas
 ini adah fuction untuk mengambil data dosen}
var
  dosen : TDosen;  // dekalarasi variable untuk rpresentasi dosen
begin
  // menambil smua data dosen dan memasukkan nya kedalam record dosen
  dosen.nidn          := FormDosen.dsDosen.FieldValues['nidn'];
  dosen.nama          := FormDosen.dsDosen.FieldValues['nama_dosen'];
  dosen.tanggal_masuk := FormDosen.dsDosen.FieldValues['tanggal_masuk'];
  dosen.alamat        := FormDosen.dsDosen.FieldValues['alamat'];
  dosen.no_wa         := FormDosen.dsDosen.FieldValues['no_wa'];
  dosen.agama         := FormDosen.dsDosen.FieldValues['agama'];
  dosen.status        := FormDosen.dsDosen.FieldValues['status'];

  ambilDatDos := dosen;  // return variable dosen
end;

procedure TFormDosen.Button1Click(Sender: TObject);
begin
  if validasi() then // memanggil Function validasi jika nilai returnnya true maka jala kan statement-statement di bawah 
  begin
    tambahDatDos;                     // procedure tambahdata dosen
    ShowMessage('Data ditambahkan');  // beri pesan 'data ditambahkan'
    bersih();    // memaggil procedure bersih
  end;

end;

procedure TFormDosen.Button4Click(Sender: TObject);
begin
  bersih();  // memaggil procedure bersih
end;

procedure TFormDosen.Button2Click(Sender: TObject);
begin
  if validasi then   // memanggil Function validasi jika true maka jalankan kumpulan statement dibawah
  begin
    rubahDatDos();               // memanggil function rubah data dosen
    ShowMessage('Data dirubah'); // tampilkan pesan 'data dirubah'
    bersih();                   // memaggil procedure bersih
  end;
end;

procedure TFormDosen.dbgDosenCellClick(Column: TColumn); // event dbgrid onclick cell
var
  dosen : TDosen;                        // deklarasi variable yang digunakan untuk representasi data dosen
  indexRgAgama, indexRgStatus : Integer; // index untuk radio box
begin
  dosen := ambilDatDos();       // memanggil function ambilDatDos yang telah dibuat di atas dan di assignment kan kedalam variable dosen

  if SameText(dosen.agama, rgAgama.Items[0]) then      // memerika jika dosen.agama Islam
  // sameText adalah sebuah function yang digunakan untuk membandingkan dua string dengan return tipe nilai boolean
  // jika kedua string identik maka akan mereturn nilai true 
    indexRgAgama := 0                                  // Maka indexRgAgama 0
  else if SameText(dosen.agama, rgAgama.Items[1]) then // jika kristen
    indexRgAgama := 1                                  // Maka indexRgAgama 1
  else if SameText(dosen.agama, rgAgama.Items[2]) then // jika budha
    indexRgAgama := 2                                  // Maka indexRgAgama 2
  else if SameText(dosen.agama, rgAgama.Items[3]) then // jika konghucu
    indexRgAgama := 3                                  // Maka indexRgAgama 3
  else                                                 // jika tidak ada satupun yang sesuai 
    indexRgAgama := -1;                                // maka indexRg agama -1

  if SameText(dosen.status, RgStatus.Items[0]) then    // memeriksa kalau dosen.status adalah PNS
    indexRgStatus := 0                                 // maka IndexRgStatus 0
  else if SameText(dosen.status, RgStatus.Items[1]) then  // memeriksa kalau dosen.status adalah DTY
    indexRgStatus := 1                                    // maka IndexRgStatus 1
  else                   // kalau bukan PNS dan DTY
    indexRgStatus := -1; // maka indexRgStatus -1

  Edit1.Text := dosen.nidn;          // mengisi tempat input NIDN
  Edit2.Text := dosen.nama;          // mengisi tempat input nama  
  dtp1.Date  := dosen.tanggal_masuk; // mengisi tempat input tanggal masuk 
  Edit3.Text := dosen.alamat;        // mengisi tempat input alamat 
  Edit4.Text := dosen.no_wa;         // mengisi tempat input nomer wa 
  rgAgama.ItemIndex  := indexRgAgama; // memilih radioBox agama
  rgStatus.ItemIndex := indexRgStatus; // // memilih radio Group Status

  Button1.Enabled := False;
  Button2.Enabled := True;
  Button3.Enabled := True;
end;

procedure TFormDosen.Button3Click(Sender: TObject);
begin
  // sebelum data di hapus tanyakan dulu 'Yakin untuk menghapus data secara permanen?'
  if MessageDlg('Yakin untuk menghapus data secara permanen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  // jika tombol yang di click yes maka Jalan kan kumpulan statement di bawah
  begin
    dsDosen.Delete;                  // hapus data dosen table dosen di posisi curor saat ini
    ShowMessage('Data telah dhapus'); // pesan data elah terhapus
    bersih();                           // memaggil procedure bersih
  end
  else  // jika tombol yang diclick pada pesan bukan yes
    ShowMessage('Data tidak terhapus'); // maka tampilkan data tidak terhapus
end;

procedure TFormDosen.Edit5Change(Sender: TObject);
begin
  dsDosen.Active := False; // menonaktifkan data set Dosen agar tidak terjadi error ketika melakukan perubahan pada Command Text
  dsDosen.CommandText := 'SELECT * FROM dosen where nama_dosen LIKE "%' + Edit5.Text + '%"'; // mengubah CommandText Dosen berdasarkan text pada edit1.text
  dsDosen.Active := True; // mengaktifkan kembali Dosen
end;

procedure TFormDosen.FormCreate(Sender: TObject);
begin
  bersih();
end;

end.
