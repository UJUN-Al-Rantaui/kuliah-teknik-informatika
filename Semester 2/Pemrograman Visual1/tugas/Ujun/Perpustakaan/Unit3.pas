unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls, ComCtrls, ExtCtrls, StrUtils;

type
  TForm3 = class(TForm)
    label2: TLabel;
    grp1: TGroupBox;
    label3: TLabel;
    label4: TLabel;
    label5: TLabel;
    label6: TLabel;
    label7: TLabel;
    editID: TEdit;
    editNama: TEdit;
    editTelepon: TEdit;
    rg1: TRadioGroup;
    dtp1: TDateTimePicker;
    btnBatal: TButton;
    btnHapus: TButton;
    btnUbah: TButton;
    btnSimpan: TButton;
    btnTambah: TButton;
    grp2: TGroupBox;
    dbgrd1: TDBGrid;
    edit2: TEdit;
    label8: TLabel;
    zqry1: TZQuery;
    ds1: TDataSource;
    q1: TZQuery;
    btnKembali: TButton;
    procedure btnBatalClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnHapusClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnKembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  status : string;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm3.btnBatalClick(Sender: TObject);
begin
  zqry1.Active := False;
  zqry1.SQL.Text := 'SELECT * FROM tb_anggota';
  zqry1.Active := True;
  btnHapus.Enabled := False;
  btnUbah.Enabled := False;
  btnSimpan.Enabled := False;
  btnTambah.Enabled := true;
  editID.Enabled := False;
  editNama.Enabled := False;
  editTelepon.Enabled := False;
  rg1.Enabled := False;
  dtp1.Enabled := False;
  editID.Clear;
  editNama.Clear;
  editTelepon.Clear;
  rg1.ItemIndex := -1;
end;

procedure TForm3.btnTambahClick(Sender: TObject);
var
  kode : Integer;
begin
  status  := 'tambah';
  zqry1.Last;
  if zqry1.IsEmpty then
    editID.Text := 'A-0001'
  else
  begin
    kode := StrToInt(RightStr( zqry1.Fields[0].AsString, 4)) + 1;
    if kode < 10 then
      editID.Text := 'A-000' + IntToStr(kode)
    else if kode < 100 then
      editID.Text := 'A-00' + IntToStr(kode)
    else if kode < 1000 then
      editID.Text := 'A-0' + IntToStr(kode)
    else
      editID.Text := 'A-' + IntToStr(kode);
  end;
  btnTambah.Enabled := False;
  btnSimpan.Enabled := True;
  editID.Enabled := False;
  editNama.Enabled := True;
  editTelepon.Enabled := True;
  rg1.Enabled := True;
  dtp1.Enabled := True;
end;

procedure TForm3.btnSimpanClick(Sender: TObject);
var
  sql : string;
begin
  q1.Active := False;
  if status = 'tambah' then
    sql := 'insert into tb_anggota values ("' +
      editID.Text + '","' +
      editNama.Text + '","' +
      rg1.Items[rg1.itemIndex] + '","' +
      AnsiReplaceStr(FormatDateTime('yyyy/MM/dd', dtp1.date), '/', '-' ) + '","' +
      editTelepon.Text + '")'
  else
    sql := 'update tb_anggota set ' +
      'id_anggota="' + editID.Text + '", ' +
      'nama_anggota="' + editNama.Text + '", ' +
      'jenis_kelamin="' + rg1.Items[rg1.itemIndex] + '", ' +
      'tanggal_lahir="' + AnsiReplaceStr(FormatDateTime('yyyy/MM/dd', dtp1.date), '/', '-' ) + '", ' +
      'no_telepon="' + editTelepon.Text + '" WHERE id_anggota = "'+ editID.text + '"';
  q1.SQL.Text := sql;
  q1.ExecSQL;
  MessageDlg('Data berhasil di'+ status, mtConfirmation, [mbOk], 0);
  btnBatalClick(sender);
end;

procedure TForm3.btnUbahClick(Sender: TObject);
begin
  status := 'ubah';
  btnTambah.Enabled := False;
  btnUbah.Enabled := False;
  btnHapus.Enabled := False;
  btnSimpan.Enabled := True;
  editID.Enabled := False;
  editNama.Enabled := True;
  rg1.Enabled := True;
  dtp1.Enabled := True;
  editTelepon.Enabled := True;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  editID.Text := zqry1.Fields[0].AsString;
  editNama.Text := zqry1.Fields[1].AsString;
  if zqry1.Fields[2].AsString = rg1.Items[0] then
    rg1.ItemIndex := 0
  else if zqry1.Fields[2].AsString = rg1.Items[1] then
    rg1.ItemIndex := 1
  else
    rg1.ItemIndex := -1;
  dtp1.DateTime :=  zqry1.Fields[3].AsDateTime;
  editTelepon.Text := zqry1.Fields[4].AsString;
  btnSimpan.Enabled := False;
  btnTambah.Enabled := True;
  btnUbah.Enabled := True;
  btnHapus.Enabled := True;
end;

procedure TForm3.btnHapusClick(Sender: TObject);
begin
  if MessageDlg('Lanjutkan Hapus Data?', mtConfirmation, [ mbOK ,mbYes], 0) = mrYes then
  begin
    q1.SQL.Text := 'delete from tb_anggota where id_anggota = "'+ editID.text + '"';
    q1.ExecSQL;
    ShowMessage('Data berhasil diHapus');
    btnBatalClick(sender);
  end;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  ShowMessage(DateToStr(dtp1.date));
end;

procedure TForm3.btnKembaliClick(Sender: TObject);
begin
  Form3.Close;
end;

end.
