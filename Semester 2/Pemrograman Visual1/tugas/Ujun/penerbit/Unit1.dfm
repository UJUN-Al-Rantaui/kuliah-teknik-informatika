object ByMuhammadJunaidi: TByMuhammadJunaidi
  Left = 293
  Top = 85
  Width = 1123
  Height = 540
  Caption = 'ByMuhammadJunaidi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = btnBatalClick
  PixelsPerInch = 96
  TextHeight = 13
  object label4: TLabel
    Left = 544
    Top = 160
    Width = 36
    Height = 23
    Caption = 'Cari'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 544
    Top = 192
    Width = 473
    Height = 257
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 128
    Width = 481
    Height = 321
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 95
      Height = 23
      Caption = 'ID Penerbit'
    end
    object label2: TLabel
      Left = 24
      Top = 104
      Width = 128
      Height = 23
      Caption = 'Nama  Penerbit'
    end
    object edtId: TEdit
      Left = 168
      Top = 32
      Width = 289
      Height = 31
      TabOrder = 0
    end
    object editNama: TEdit
      Left = 168
      Top = 96
      Width = 289
      Height = 31
      TabOrder = 1
    end
    object btnTambah: TButton
      Left = 16
      Top = 216
      Width = 105
      Height = 33
      Caption = 'Tambah'
      TabOrder = 2
      OnClick = btnTambahClick
    end
    object btnHapus: TButton
      Left = 360
      Top = 216
      Width = 105
      Height = 33
      Caption = 'Hapus'
      TabOrder = 3
      OnClick = btnHapusClick
    end
    object btnRubah: TButton
      Left = 136
      Top = 216
      Width = 105
      Height = 33
      Caption = 'Rubah'
      TabOrder = 4
      OnClick = btnRubahClick
    end
    object btnBatal: TButton
      Left = 16
      Top = 256
      Width = 105
      Height = 33
      Caption = 'Batal'
      TabOrder = 5
      OnClick = btnBatalClick
    end
    object btnSimpan: TButton
      Left = 248
      Top = 216
      Width = 105
      Height = 33
      Caption = 'Simpan'
      TabOrder = 6
      OnClick = btnSimpanClick
    end
  end
  object editPencarian: TEdit
    Left = 592
    Top = 152
    Width = 345
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnCari: TButton
    Left = 944
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cari'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnCariClick
  end
  object btnKembali: TButton
    Left = 0
    Top = 0
    Width = 97
    Height = 33
    Caption = 'Kembali'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnKembaliClick
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'perpustakaan'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 'C:\Users\abdwa\Dokumen\Ujun\zeos\libmysql.dll'
    Left = 64
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tb_penerbit;')
    Params = <>
    Left = 112
    Top = 40
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 152
    Top = 40
  end
end
