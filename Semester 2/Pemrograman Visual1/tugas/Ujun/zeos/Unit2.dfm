object Form2: TForm2
  Left = 146
  Top = 216
  Width = 1331
  Height = 490
  Caption = 'Form2'
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
  object label2: TLabel
    Left = 0
    Top = 0
    Width = 1315
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'FORM BUKU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 56
    Width = 569
    Height = 385
    Caption = 'Input Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object label3: TLabel
      Left = 24
      Top = 48
      Width = 100
      Height = 25
      Caption = 'Kode Buku'
    end
    object label4: TLabel
      Left = 24
      Top = 104
      Width = 50
      Height = 25
      Caption = 'Judul'
    end
    object label5: TLabel
      Left = 24
      Top = 160
      Width = 66
      Height = 25
      Caption = 'Penulis'
    end
    object label6: TLabel
      Left = 24
      Top = 216
      Width = 78
      Height = 25
      Caption = 'Penerbit'
    end
    object editKd: TEdit
      Left = 184
      Top = 40
      Width = 361
      Height = 33
      TabOrder = 0
    end
    object editJudul: TEdit
      Left = 184
      Top = 96
      Width = 361
      Height = 33
      TabOrder = 1
    end
    object editPenuis: TEdit
      Left = 184
      Top = 152
      Width = 361
      Height = 33
      TabOrder = 2
    end
    object dblkcbbnama_penerbit: TDBLookupComboBox
      Left = 184
      Top = 208
      Width = 361
      Height = 33
      KeyField = 'id_penerbit'
      ListField = 'nama_penerbit'
      ListSource = Form1.ds1
      TabOrder = 3
    end
    object btnBatal: TButton
      Left = 32
      Top = 304
      Width = 97
      Height = 33
      Caption = 'Batal'
      TabOrder = 4
      OnClick = btnBatalClick
    end
    object btnHapus: TButton
      Left = 136
      Top = 304
      Width = 97
      Height = 33
      Caption = 'Hapus'
      TabOrder = 5
      OnClick = btnHapusClick
    end
    object btnUbah: TButton
      Left = 240
      Top = 304
      Width = 97
      Height = 33
      Caption = 'Ubah'
      TabOrder = 6
      OnClick = btnUbahClick
    end
    object btnSimpan: TButton
      Left = 344
      Top = 304
      Width = 97
      Height = 33
      Caption = 'Simpan'
      TabOrder = 7
      OnClick = btnSimpanClick
    end
    object btnTambah: TButton
      Left = 448
      Top = 304
      Width = 97
      Height = 33
      Caption = 'Tambah'
      TabOrder = 8
      OnClick = btnTambahClick
    end
  end
  object grpDataBuku: TGroupBox
    Left = 600
    Top = 56
    Width = 697
    Height = 385
    Caption = 'Data Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object label7: TLabel
      Left = 16
      Top = 40
      Width = 271
      Height = 25
      Caption = 'Cari Berdasarkan Judul Buku'
    end
    object editCari: TEdit
      Left = 296
      Top = 32
      Width = 385
      Height = 33
      TabOrder = 0
      OnChange = editCariChange
    end
    object dbgrd1: TDBGrid
      Left = 16
      Top = 72
      Width = 673
      Height = 297
      DataSource = ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -21
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'kode_buku'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Judul'
          Width = 256
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Penulis'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_penerbit'
          Width = 128
          Visible = True
        end>
    end
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
    TabOrder = 2
    OnClick = btnKembaliClick
  end
  object q1: TZQuery
    Connection = Form1.con1
    Params = <>
    Left = 88
    Top = 8
  end
  object zqry1: TZQuery
    Connection = Form1.con1
    Params = <>
    Left = 128
    Top = 8
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 168
    Top = 8
  end
end
