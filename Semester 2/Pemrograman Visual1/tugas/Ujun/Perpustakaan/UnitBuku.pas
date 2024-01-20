unit UnitBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, DB, StrUtils,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm2 = class(TForm)
    label2: TLabel;
    GroupBox1: TGroupBox;
    label3: TLabel;
    label4: TLabel;
    label5: TLabel;
    label6: TLabel;
    editKd: TEdit;
    editJudul: TEdit;
    editPenuis: TEdit;
    dblkcbbnama_penerbit: TDBLookupComboBox;
    btnBatal: TButton;
    btnHapus: TButton;
    btnUbah: TButton;
    btnSimpan: TButton;
    btnTambah: TButton;
    grpDataBuku: TGroupBox;
    editCari: TEdit;
    label7: TLabel;
    dbgrd1: TDBGrid;
    q1: TZQuery;
    zqry1: TZQuery;
    ds1: TDataSource;
    btnKembali: TButton;
    procedure btnBatalClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure editCariChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnKembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  status : string;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm2.btnBatalClick(Sender: TObject);
begin
  btnSimpan.Enabled := False;
  btnUbah.Enabled := False;
  btnHapus.Enabled := False;
  btnTambah.Enabled := True;
  editKd.Enabled := False;
  editJudul.Enabled := False;
  editPenuis.Enabled := False;
  dblkcbbnama_penerbit.Enabled := False;
  zqry1.Active := False;
  zqry1.SQL.Text := 'SELECT a.kode_buku, a.judul, a.penulis, b.id_penerbit, b.nama_penerbit' +
  ' From tb_buku as a, tb_penerbit as b WHERE a.id_penerbit = b.id_penerbit';
  zqry1.Active := True;
  editKd.Clear;
  editJudul.Clear;
  editPenuis.Clear;
  dblkcbbnama_penerbit.KeyValue := Null;
end;

procedure TForm2.btnTambahClick(Sender: TObject);
var
  kode : Integer;
begin
  status := 'tambah';
  zqry1.Last;
  if zqry1.IsEmpty then
    editKd.Text := 'B-0001'
  else
  begin
    kode := StrToInt(RightStr( zqry1.Fields[0].AsString, 4)) + 1;
    if kode < 10 then
      editKd.Text := 'B-000' + IntToStr(kode)
    else if kode < 100 then
      editKd.Text := 'B-00' + IntToStr(kode)
    else if kode < 1000 then
      editKd.Text := 'B-0' + IntToStr(kode)
    else
      editKd.Text := 'B-' + IntToStr(kode);
  end;
  editJudul.Enabled := True;
  editPenuis.Enabled := True;
  dblkcbbnama_penerbit.Enabled := True;
  btnSimpan.Enabled := True;
  btnTambah.Enabled := False;
end;

procedure TForm2.btnSimpanClick(Sender: TObject);
var
  sql : string;
begin
  q1.Active := False;
  if status = 'tambah' then
    sql := 'insert into tb_buku values ("'+editKd.Text+'","'+editJudul.Text+'","'+editPenuis.Text+'","'+dblkcbbnama_penerbit.KeyValue+'")'
  else
    sql := 'update tb_buku set judul="'+editJudul.Text+'", penulis="'+editPenuis.Text+'", id_penerbit="'+dblkcbbnama_penerbit.KeyValue+'" WHERE kode_buku = "'+ editKd.Text + '"';
  q1.SQL.Text := sql;
  q1.ExecSQL;
  MessageDlg('Data Berhasil disimpan!', mtInformation, [mbOK], 0);
  btnBatalClick(sender);
end;

procedure TForm2.btnHapusClick(Sender: TObject);
begin
  if (MessageDlg('Lanjunkan menghapus buku?', mtConfirmation, [mbNo,mbYes], 0) = mrYes) then
  begin
    q1.Active := False;
    q1.SQL.text := 'Delete from tb_buku WHERE kode_buku="'+ editKd.Text + '"';
    q1.ExecSQL;
    ShowMessage('Data berhasil di hapus');
    btnBatalClick(Sender);
  end;
end;

procedure TForm2.btnUbahClick(Sender: TObject);
begin
  btnTambah.Enabled := False;
  btnUbah.Enabled := False;
  btnSimpan.Enabled := True;
  status := 'rubah';
  editKd.Enabled := False;
  editJudul.Enabled := True;
  editPenuis.Enabled := True;
  dblkcbbnama_penerbit.Enabled := True;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  editKd.Text := zqry1.Fields[0].AsString;
  editJudul.Text := zqry1.Fields[1].AsString;
  editPenuis.Text := zqry1.Fields[2].AsString;
  dblkcbbnama_penerbit.KeyValue := zqry1.Fields[3].AsVariant;

  btnTambah.Enabled := True;
  btnSimpan.Enabled := False;
  btnUbah.Enabled:= True;
  btnHapus.Enabled := True;
end;

procedure TForm2.editCariChange(Sender: TObject);
begin
  zqry1.Active := False;
  zqry1.SQL.Text := 'SELECT * from tb_buku WHERE judul LIKE "%'+ editCari.Text +'%"';
  zqry1.Active := True;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  ShowMessage(MidStr('Muhammad Junaidi', 4, 8));
end;

procedure TForm2.btnKembaliClick(Sender: TObject);
begin
  Form2.Close;
end;

end.
