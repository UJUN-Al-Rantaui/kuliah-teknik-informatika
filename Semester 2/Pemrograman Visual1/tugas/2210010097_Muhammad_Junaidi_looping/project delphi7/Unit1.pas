unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMuhammad_Junaidi = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    Button1: TButton;
    btn2: TButton;
    cbb1: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Muhammad_Junaidi: TMuhammad_Junaidi;

implementation

{$R *.dfm}

procedure TMuhammad_Junaidi.btn1Click(Sender: TObject); // event tombol for to do
var    // sintak untuk pendeklarasian variable
  awal, akhir, i : Integer;  // deklarasi variable awal dan akhir dan i dengan tipe data bilangan bulat 2 byte (integer)
  isiText : string;          // deklarasi variable isiText dengan tipe data string
begin
  if (edt1.text = '')then                                       // jika edt1.text dimana kita akan menginputkan nilai awal =  kosong
    MessageDlg('Awal tidak boleh kosong', mtWarning, [mbOK], 0) // maka tampilakan messageDlg Warning dengan pesan 'Awal tidak boleh kosong'
  else if edt2.Text = '' then                                    // jika edt2.text dimana kita akan menginputkan nilai akhir =  kosong
    MessageDlg('Akhir tidak boleh kosong', mtWarning, [mbOk], 0) // maka tampilakan messageDlg Warning dengan pesan 'Akhir tidak boleh kosong'
  else if strToInt(edt1.text) > strToInt(edt2.text) then                        // memeriksa apakah awal lebih besar dari akhir atau awal lebih kecil dari akhir
    MessageDlg('Awal tidak boleh lebih besar dari akhir', mtWarning, [mbOk], 0) // jika awal lebih besar dari akhir maka tampilakan messageDlg Warning dengan pesan 'Awal tidak boleh lebih besar dari akhir'
  else begin  // jika semua kondisi if diatas salah maka jalankan semua kode di bawah ini
    try       // coba jalankan kumpulan statement di bawah jika terjadi error jalankan excception block statement yang memberi message 'Nilai Awal harus Angka'
    awal := strToInt(edt1.text);  // mengambil nilai string dari edt1.text kemudian di konversi menjadi integer denagn function StrToInt kemudian di assignment kan kedalam variable awal
    try       // coba jalankan kumpulan statement di bawah jika terjadi error jalankan excception block statement yang memberi message 'Nilai akhir harus angka'
    akhir := strToInt(edt2.text); // mengambil nilai string dari edt2.text kemudian di konversi menjadi integer denagn function StrToInt kemudian di assignment kan kedalam variable akhir
    cbb1.Items.Clear; // mereset semua items cbb1
    isiText := edt3.text; // mengisi variable isiText yang diambil dari edt3.text
    for i := awal to akhir do // melakukan perulangan berdasarkan nilai awal dan akhir yang di inputkan
      cbb1.Items.Add(isiText + ' ' + IntToStr(i)); // mengisi cbb1 dengan isitext + spasi + i
    except  // jika try kedua terjadi error jalankann ini
      MessageDlg('Nilai Akhir harus angka', mtWarning, [mbOk], 0); // maka tampilakan messageDlg Warning dengan pesan 'Nilai Akhir harus angka'
    end;  // end dari try kedua
    except  // jika try kedua terjadi error jalankann ini
      MessageDlg('Nilai Awal harus angka', mtWarning, [mbOk], 0);  // maka tampilakan messageDlg Warning dengan pesan 'Nilai Awal harus angka'
    end;  // end dari try pertama
  end; // end dari else begin
end; // end procedure

procedure TMuhammad_Junaidi.Button1Click(Sender: TObject); // event tombol while do
var   // sintak untuk pendeklarasian variable
  awal, akhir, i: Integer;   // deklarasi variable awal dan akhir dan i dengan tipe data bilangan bulat 2 byte (integer)
  isiText : string;          // deklarasi variable isiText dengan tipe data string
begin
  if (edt1.text = '')then                                          // jika edt1.text dimana kita akan menginputkan nilai awal =  kosong
    MessageDlg('Awal tidak boleh kosong', mtWarning, [mbOK], 0)    // maka tampilakan messageDlg Warning dengan pesan 'Awal tidak boleh kosong'
  else if edt2.Text = '' then                                      // jika edt2.text dimana kita akan menginputkan nilai akhir =  kosong
    MessageDlg('Akhir tidak boleh kosong', mtWarning, [mbOk], 0)   // maka tampilakan messageDlg Warning dengan pesan 'Akhir tidak boleh kosong'
  else begin   // jika semua kondisi if diatas salah maka jalankan semua kode di bawah ini
    try        // coba jalankan kumpulan statement di bawah jika terjadi error jalankan excception block statement yang memberi message 'Nilai Awal harus Angka'
    awal := strToInt(edt1.text); // mengambil nilai string dari edt1.text kemudian di konversi menjadi integer denagn function StrToInt kemudian di assignment kan kedalam variable awal
    try        // coba jalankan kumpulan statement di bawah jika terjadi error jalankan excception block statement yang memberi message 'Nilai akhir harus angka'
    akhir := strToInt(edt2.text);  // mengambil nilai string dari edt2.text kemudian di konversi menjadi integer denagn function StrToInt kemudian di assignment kan kedalam variable akhir
    cbb1.items.Clear;     // mereset semua items cbb1
    i := awal;            // mengsignment nilai awal ke vaiable i yang akan menjadi penghitung perulangan
    isiText := edt3.text;    // mengisi variable isiText yang diambil dari edt3.text
    if awal <= akhir then    // jika awal lebih kecil dari akhir maka perhitungan akan di mulai dari bawah keatas
      while i <= akhir do begin  // ulangi jika i <=  akhir
        cbb1.Items.Add(isiText + ' ' + IntToStr(i)); // menambah kan value kedalam cbb1.items
        i := i + 1;    // menghitung perulangan ke atas
      end  // i <= akhir
    else if awal > akhir then // jika kondisi di atas salah dan awal lebih besar dari akhir maka lakukan perhitungan ke bawah
      while i >= akhir do begin   // ulangi jika i >= akhir
        cbb1.Items.Add(isiText + ' ' + IntToStr(i));  // menambah kan value kedalam cbb1.items
        i := i - 1;     // menghitung perulangan ke bawaj
      end; // i >= akhir
    except   // jika try kedua terjadi error jalankann ini
      MessageDlg('Nilai Akhir harus angka', mtWarning, [mbOk], 0); // maka tampilakan messageDlg Warning dengan pesan 'Nilai Akhir harus angka'
    end;     // end dari try kedua
    except   // jika try pertama terjadi error jalankann ini
      MessageDlg('Nilai Awal harus angka', mtWarning, [mbOk], 0);  // maka tampilakan messageDlg Warning dengan pesan 'Nilai Awal harus angka'
    end;  // end dari try pertama
  end;   // end dari else begin
end;    // end procedure

procedure TMuhammad_Junaidi.btn2Click(Sender: TObject); // event tombol repeat until
var  // sintak untuk pendeklarasian variable
  awal, akhir, i: Integer;  // deklarasi variable awal dan akhir dan i dengan tipe data bilangan bulat 2 byte (integer)
  isiText : string;         // deklarasi variable isiText dengan tipe data string
begin
  if (edt1.text = '')then                                       // jika edt1.text dimana kita akan menginputkan nilai awal =  kosong
    MessageDlg('Awal tidak boleh kosong', mtWarning, [mbOK], 0) // maka tampilakan messageDlg Warning dengan pesan 'Awal tidak boleh kosong'
  else if edt2.Text = '' then                                    // jika edt2.text dimana kita akan menginputkan nilai akhir =  kosong
    MessageDlg('Akhir tidak boleh kosong', mtWarning, [mbOk], 0) // maka tampilakan messageDlg Warning dengan pesan 'Akhir tidak boleh kosong'
  else begin  // jika semua kondisi if diatas salah maka jalankan semua kode di bawah ini
    try       // coba jalankan kumpulan statement di bawah jika terjadi error jalankan excception block statement yang memberi message 'Nilai Awal harus Angka'
    awal := strToInt(edt1.text);  // mengambil nilai string dari edt1.text kemudian di konversi menjadi integer denagn function StrToInt kemudian di assignment kan kedalam variable awal
    try       // coba jalankan kumpulan statement di bawah jika terjadi error jalankan excception block statement yang memberi message 'Nilai akhir harus angka'
    akhir := strToInt(edt2.text); // mengambil nilai string dari edt2.text kemudian di konversi menjadi integer denagn function StrToInt kemudian di assignment kan kedalam variable akhir
    cbb1.items.Clear; // mereset semua items cbb1
    i := awal;  // mengsignment nilai awal ke vaiable i yang akan menjadi penghitung perulangan
    isiText := edt3.text;  // mengisi variable isiText yang diambil dari edt3.text
    if awal <= akhir then  // jika awal lebih kecil dari akhir maka perhitungan akan di mulai dari bawah keatas
      repeat  // ulangi statement di bawah minimal satu kali di jalankan meskipun until [kondisi = salah]
        cbb1.Items.Add(isiText + ' ' + IntToStr(i)); // mengisi cbb1 dengan isitext + spasi + i
        i := i + 1;          // mengitung dari bawah ke atas
      until i > akhir        // jika i > akhir = false maka ulangi
    else if awal > akhir then   // jika awal lebih besar dari akhir maka perhitungan akan di mulai dari bawah kebawah
      repeat   // ulangi statement di bawah minimal satu kali di jalankan meskipun until [kondisi = salah]
        cbb1.Items.Add(isiText + ' ' + IntToStr(i));  // mengisi cbb1 dengan isitext + spasi + i
        i := i - 1;       // mengitung dari atas ke kebawah
      until i < akhir;     // jika i > akhir = false maka ulangi
    except      // jika try kedua terjadi error jalankann ini
      MessageDlg('Nilai Akhir harus angka', mtWarning, [mbOk], 0); // maka tampilakan messageDlg Warning dengan pesan 'Nilai Akhir harus angka'
    end;  // end dari try kedua
    except    // jika try pertama terjadi error jalankann ini
      MessageDlg('Nilai Awal harus angka', mtWarning, [mbOk], 0);
    end;   // end dari try pertama
  end;    // end dari else begin
end;     // end procedure

end.
