unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, StrUtils;

type
  TByMuhammadJunaidi = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    GroupBox1: TGroupBox;
    edtId: TEdit;
    Label1: TLabel;
    label2: TLabel;
    editNama: TEdit;
    btnTambah: TButton;
    btnHapus: TButton;
    btnRubah: TButton;
    btnBatal: TButton;
    editPencarian: TEdit;
    label4: TLabel;
    btnCari: TButton;
    btnKembali: TButton;
    btnSimpan: TButton;
    procedure btnKembaliClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnRubahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ByMuhammadJunaidi: TByMuhammadJunaidi;
  status : string;

implementation

{$R *.dfm}

procedure TByMuhammadJunaidi.btnKembaliClick(Sender: TObject);
begin
  ByMuhammadJunaidi.Close();
end;

procedure TByMuhammadJunaidi.btnTambahClick(Sender: TObject);
var
  noUrut : Integer;
begin
  status := 'tambah';
  zqry1.Last;

  if zqry1.IsEmpty then
    edtId.Text := 'P01'
  else
  begin
    noUrut := strToInt(RightStr(zqry1.FieldValues['id_penerbit'], 2)) + 1;
    if noUrut < 10 then
      edtId.Text := 'P0' + IntToStr(noUrut)
    else
      edtId.Text := 'P' + IntToStr(noUrut);
  end;

  editNama.Enabled := True;
  editNama.Clear;
  btnSimpan.Enabled := True;
  btnTambah.Enabled := False;
end;

procedure TByMuhammadJunaidi.btnBatalClick(Sender: TObject);
begin
  btnSimpan.Enabled := False;
  btnRubah.Enabled := False;
  btnHapus.Enabled := False;
  btnTambah.Enabled := True;

  edtID.Enabled := False;
  editNama.Enabled := False;
  edtId.Clear;
  editNama.Clear;

  zqry1.Active:= False;
  zqry1.SQL.Text := 'SELECT * FROM tb_penerbit ORDER BY id_penerbit';
  zqry1.Active := True;
end;

procedure TByMuhammadJunaidi.btnSimpanClick(Sender: TObject);
begin
  if status = 'tambah' then
    zqry1.Append
  else
    zqry1.edit;

  zqry1.Fields[0].AsString := edtId.Text;
  zqry1.Fields[1].AsString := editNama.Text;
  zqry1.Post;

  MessageDlg('Data di' + status, mtInformation, [mbOK], 0);
  btnBatalClick(Sender);
end;

procedure TByMuhammadJunaidi.btnRubahClick(Sender: TObject);
begin
  btnTambah.Enabled := False;
  btnRubah.Enabled := False;
  btnSimpan.Enabled := True;
  status := 'rubah';
  edtId.Enabled := False;
  editNama.Enabled := True;
end;

procedure TByMuhammadJunaidi.btnHapusClick(Sender: TObject);
begin
  if (messageDlg('Hapus Data Permanent, Yakin?', mtConfirmation, [mbNo, mbYes], 0) = mrYes) then
  begin
    zqry1.Delete;
    ShowMessage('Data Sukses Dihapus');;
    btnBatalClick(Sender);
  end;
end;

procedure TByMuhammadJunaidi.btnCariClick(Sender: TObject);
begin
  zqry1.Active := False;
  zqry1.SQL.text := 'SELECT * FROM tb_penerbit WHERE nama_penerbit LIKE "%' + editPencarian.Text + '%"';
  zqry1.Active := True;
end;

procedure TByMuhammadJunaidi.dbgrd1CellClick(Column: TColumn);
begin
  edtId.Text := zqry1.FieldValues['id_penerbit'];
  editNama.Text := zqry1.FieldValues['nama_penerbit'];

  btnTambah.Enabled := True;
  btnRubah.Enabled := True;
  btnHapus.Enabled := True;
  btnSimpan.Enabled := False;
end;

end.
