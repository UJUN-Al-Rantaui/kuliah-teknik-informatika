unit unitMahasiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ComCtrls, ExtCtrls;

type
  TFormMahasiswa = class(TForm)
    conDB: TADOConnection;
    dsMahasiswa: TADODataSet;
    dSrcMhahsiswa: TDataSource;
    dbgrd1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditNPM: TEdit;
    Label2: TLabel;
    EditNama: TEdit;
    Label3: TLabel;
    rgProdi: TRadioGroup;
    Label4: TLabel;
    dtp1: TDateTimePicker;
    EditTempatLahir: TEdit;
    Label5: TLabel;
    rgJenKel: TRadioGroup;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    txt1: TStaticText;
    Edit1: TEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMahasiswa: TFormMahasiswa;

implementation

{$R *.dfm}

procedure bersih(); // procedure untuk membersihkan inputan
begin 
  FormMahasiswa.EditNpm.Clear;              // bersihkan tempat memasukan NPM                       
  FormMahasiswa.EditNama.Clear;             // bersihkan tempat memasukan Nama                      
  FormMahasiswa.EditTempatLahir.Clear;      // bersihkan tempat memasukan Tempat Lahir                   
  FormMahasiswa.rgProdi.ItemIndex := -1;    // unselect semua pilihan radioGroup prodi        
  FormMahasiswa.rgJenkel.ItemIndex := -1;   // unselect semua pilihan radioGroup Jenis kelamin
  FormMahasiswa.Button1.Enabled := True;    // mengatur tombol Tambah agar bisa di click      
  FormMahasiswa.Button2.Enabled := false;   // mengatur tombol rubah agar tidak bisa di click
  FormMahasiswa.Button3.Enabled := false;   // mengatur tombol hapus agar tidak bisa di click
end;

function validasi():Boolean;
// validasi inputan data
// function ini digunakan pada event tombol Tambah dan Rubah
// Jika data inputan VALID return True
// tetapi jika datanya INVALID return/kirim nilai False
var
  valid : Boolean;                                                     // variable valid yang akan dijadikan return benar/salah
begin
  valid := False;                                                      // nilai awal/default dari valid False
  if Trim(FormMahasiswa.EditNpm.Text) = '' then                                // jika npm kosong/blank
  {function trim berfungsi untuk menghapus karakter whiteSpace seperti spasi, enter DLL}
    MessageDlg('NPM Kosong!', mtWarning, [MbOk], 0)                    // beri pesan peringatan 'NPM Kosong!'
  else if Trim(FormMahasiswa.EditNama.Text) = '' then                          // jika nama kosong/blank
    MessageDlg('Nama Lengkap Kosong', mtWarning, [mbOk], 0)            // beri pesan peringatan 'Nama Lengkap Kosong!'
  else if FormMahasiswa.rgProdi.ItemIndex = -1 then                            // Jika radioBox Prodi belum ada yang dipilih
    MessageDlg('Prodi Belum Dipilih', mtWarning, [mbOk], 0)            // beri pesan peringatan 'Prodi Belum Dipilih'
  else if Trim(FormMahasiswa.EditTempatLahir.Text) = '' then                   // jika Tempat Lahir kosong/blank
    MessageDlg('Tempat Lahir Kosong', mtWarning, [mbOk], 0)            // beri pesan peringatan 'Tempat Lahir Kosong!'
  else if FormMahasiswa.rgJenKel.ItemIndex = -1 then                           // Jika radioBox jenkel belum ada yang dipilih
    MessageDlg('Jenis Kelamin Belum Dipilih', mtWarning, [mbOk], 0)    // beri pesan peringatan 'Jenis Kelamin Belum Dipilih'
  else
    valid := True;                                                     // jika nilai semua kondisi di atas salah valid bernilai true

  validasi := valid;                                                   // return variable valid
end;

procedure manipulasi(npm, nama, prodi :string; tgl_lhr : TDateTime;tmpt_lhr, jenkel :String);   // procedure yang digunakan untuk mngakses column-column dari table Mahasiswa
begin
  FormMahasiswa.dsMahasiswa.FieldValues['npm'] := npm;              // mengaksees buffer Field npm dan mengisinya dengan parameter npm
  FormMahasiswa.dsMahasiswa.FieldValues['nama_lengkap'] := nama;    // mengaksees buffer Field nama_lengkap dan mengisinya dengan parameter nama
  FormMahasiswa.dsMahasiswa.FieldValues['prodi'] := prodi;          // mengaksees buffer Field prodi dan mengisinya dengan parameter prodi
  FormMahasiswa.dsMahasiswa.FieldValues['tanggal_lahir'] := tgl_lhr;  // mengaksees buffer Field tanggal_lahir dan mengisinya dengan parameter tgl_lhr
  FormMahasiswa.dsMahasiswa.FieldValues['Tempat_lahir'] := tmpt_lhr;  // mengaksees buffer Field Tempat_lahir dan mengisinya dengan parameter Tmpt_lahir
  FormMahasiswa.dsMahasiswa.FieldValues['jenis_kelamin'] := jenkel;   // mengaksees buffer Field jenis_kelamin dan mengisinya dengan parameter jenkel
end;

procedure tambahDatMah(npm, nama, prodi :string; tgl_lhr : TDateTime;tmpt_lhr, jenkel :String); // procedure untuk menambahkan data mahasiswa kedalam database
begin
  FormMahasiswa.dsMahasiswa.Append;                         // memanggil procedure unutk menambahkan data di posisi paling akhir
  manipulasi(npm, nama, prodi, tgl_lhr, tmpt_lhr, jenkel);  // memanggil procedure manipulasi untuk menagakses dan mengisi buffer table mahahsiswa
  FormMahasiswa.dsMahasiswa.Post;                           // memasukan semua data dari buffer kedalam database
end;

procedure rubahDatMah(npm, nama, prodi :string; tgl_lhr : TDateTime;tmpt_lhr, jenkel :String); // procedure untuk mengedit data didalam table mahasiswa
begin
  FormMahasiswa.dsMahasiswa.edit;                                        // memanggil procedure untuk mengedit data table mahasiswa
  manipulasi(npm, nama, prodi, tgl_lhr, tmpt_lhr, jenkel);               // memanggil procedure manipulasi untuk menagakses dan mengisi buffer table mahahsiswa
  FormMahasiswa.dsMahasiswa.Post;                                        // memasukan semua data dari buffer kedalam database
end;

procedure TFormMahasiswa.FormCreate(Sender: TObject);     // event On Create Form Mahasiswa
begin
  bersih(); // memanggil procedure bersih diatas
end;

procedure TFormMahasiswa.Button4Click(Sender: TObject); // Butto bersihkan
begin
  bersih(); // memanggil procedure bersih diatas
end;

procedure TFormMahasiswa.Button1Click(Sender: TObject);
begin
  if validasi() then          // memanggil procedure validasi yang mengembalikan nilai boolean TRUE jika VALID atau FALSE jika INVALID
  begin                       // jika penginputan semua data valid maka jalankan  semua kode di bawah
    tambahDatMah(EditNpm.text , EditNama.text, rgProdi.Items[rgProdi.itemindex], dtp1.Date, EditTempatLahir.Text, rgJenKel.Items[rgJenKel.itemIndex]); // pemanggilan procedure tambah data mahasiswa
    ShowMessage('Data Berhasil diisi');               // kemudian tampilan pesan 'Data Berhasil diisi'
    bersih();                                         // memanggil procedure bersih diatas
  end;
end;

procedure TFormMahasiswa.dbgrd1CellClick(Column: TColumn);  // event onclick cell
begin
  EditNpm.Text:= dsMahasiswa.FieldValues['npm'];           // mengisi editNPM dengan data yang diambil dari database
  EditNama.Text:= dsMahasiswa.FieldValues['nama_lengkap']; // mengisi editNama dengan data yang diambil dari database
  if dsMahasiswa.FieldValues['prodi'] = 'TI' then          // jika Prodi TI
    rgProdi.ItemIndex := 0                                 // maka item yang terpilih pda radioBox adalah TI
  else                                                     // jika prodi bukan TI
    rgProdi.ItemIndex := 1;                                // maka item yang tepilih pada Combbo Box adalah SI
  dtp1.date := dsMahasiswa.FieldValues['tanggal_lahir'];   // mengisi tanggal lahir yang diambil dari table mahahsiswa database kampus_uniska.mdb
  EditTempatLahir.Text:= dsMahasiswa. FieldValues['tempat_lahir']; // mengisi EditTempatLahir yang diambil dari table mahahsiswa database kampus_uniska.mdb
  if dsMahasiswa.FieldValues['jenis_kelamin'] = 'Laki-laki' then   // jika jenkel pada table mahahsiswa adalah laki-laki
    rgJenKel.ItemIndex := 0                                        // maka item yang terpilih pada comboBox adalah laki-laki
  else                                                             // jika jenkel pada table mahahsiswa bukan laki-laki
    rgJenKel.ItemIndex := 1;                                       // maka ietm yang tepilih pada Combobox adalah perempuan
  Button1.Enabled := false;        // tombol tambah tidak bisa di tekan
  button2.Enabled := True;         // tombol rubah bisa di tekan
  button3.Enabled := True;         // tombol hapus bisa di tekan
end;

procedure TFormMahasiswa.Button3Click(Sender: TObject);
begin
  {ketika tombol hapus ditekan menanyakan terlebih dahulu agar tidak terjadi pengahapusan data secara tidak sengaja}
  if (MessageDlg('Data akan di hapus permanen, ingin melanjutkan?', mtConfirmation, [mbNo, mbYes], 0) = mrYes )then
  {jika tombol yang ditekan pada pesan dialog adalah YES makan hapus data jika NO jangan hapus data}
  begin
    dsMahasiswa.Delete;                       // mengahapus data pada cursor saat ini
    ShowMessage('Data Berhsail Dihapus');     // tampilkan pesan data berhasil di hapus
    bersih();                                 // memanggil procedure bersih diatas
  end;
end;

procedure TFormMahasiswa.Button2Click(Sender: TObject); // event onclick tombol mahasiswa
begin
  if validasi() then  // memanggil procedure validasi di atas yang memerikasa apakah data yang diinputkan sudah VALID atau INVALID
  begin
    rubahDatMah(EditNpm.text , EditNama.text, rgProdi.Items[rgProdi.itemindex], dtp1.Date, EditTempatLahir.Text, rgJenKel.Items[rgJenKel.itemIndex]);
    {memanggil procedure rubah data mahasiswa dengan 6 argument}
    ShowMessage('Data Berhasil dirubah');      // tampilkan pesan data pada table mahasiswa berhasil dirubah
    bersih();                                  // memanggil procedure bersih diatas
  end;
end;

procedure TFormMahasiswa.Edit1Change(Sender: TObject); // event untuk melakukan pencarian
begin
  dsMahasiswa.Active := False; // menonaktifkan data set nahasiswa agar tidak terjadi error ketikamelakukan perubahan pada Command Text
  dsMahasiswa.CommandText := 'SELECT * FROM mahasiswa WHERE nama_lengkap LIKE "%' + Edit1.Text + '%"';
  // mengubah CommandText dsMahasiswa berdasarkan text pada edit1.text
  dsMahasiswa.Active := True;  // mengaktifkan kembali daMahasiswa
end;

end.
