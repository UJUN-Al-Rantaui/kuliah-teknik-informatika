object Form3: TForm3
  Left = 250
  Top = 267
  Width = 1304
  Height = 540
  Caption = 'Form3'
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
    Width = 1288
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'FORM ANGGOTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 16
    Top = 64
    Width = 521
    Height = 401
    Caption = 'Input Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object label3: TLabel
      Left = 16
      Top = 40
      Width = 124
      Height = 25
      Caption = 'ID ANGGOTA'
    end
    object label4: TLabel
      Left = 16
      Top = 88
      Width = 158
      Height = 25
      Caption = 'NAMA ANGGOTA'
    end
    object label5: TLabel
      Left = 16
      Top = 136
      Width = 147
      Height = 25
      Caption = 'JENIS KELAMIN'
    end
    object label6: TLabel
      Left = 16
      Top = 192
      Width = 155
      Height = 25
      Caption = 'TANGGAL LAHIR'
    end
    object label7: TLabel
      Left = 16
      Top = 248
      Width = 123
      Height = 25
      Caption = 'NO TELEPON'
    end
    object editID: TEdit
      Left = 200
      Top = 32
      Width = 305
      Height = 33
      TabOrder = 0
    end
    object editNama: TEdit
      Left = 200
      Top = 80
      Width = 305
      Height = 33
      TabOrder = 1
    end
    object editTelepon: TEdit
      Left = 200
      Top = 232
      Width = 305
      Height = 33
      TabOrder = 2
    end
    object rg1: TRadioGroup
      Left = 200
      Top = 112
      Width = 305
      Height = 57
      Columns = 2
      Items.Strings = (
        'Laki-laki'
        'Perempuan')
      TabOrder = 3
    end
    object dtp1: TDateTimePicker
      Left = 200
      Top = 184
      Width = 305
      Height = 33
      Date = 45107.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 45107.000000000000000000
      TabOrder = 4
    end
    object btnBatal: TButton
      Left = 16
      Top = 320
      Width = 89
      Height = 41
      Caption = 'BATAL'
      TabOrder = 5
      OnClick = btnBatalClick
    end
    object btnHapus: TButton
      Left = 112
      Top = 320
      Width = 89
      Height = 41
      Caption = 'HAPUS'
      TabOrder = 6
      OnClick = btnHapusClick
    end
    object btnUbah: TButton
      Left = 208
      Top = 320
      Width = 89
      Height = 41
      Caption = 'UBAH'
      TabOrder = 7
      OnClick = btnUbahClick
    end
    object btnSimpan: TButton
      Left = 304
      Top = 320
      Width = 89
      Height = 41
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = btnSimpanClick
    end
    object btnTambah: TButton
      Left = 400
      Top = 320
      Width = 89
      Height = 41
      Caption = 'TAMBAH'
      TabOrder = 9
      OnClick = btnTambahClick
    end
  end
  object grp2: TGroupBox
    Left = 544
    Top = 64
    Width = 729
    Height = 401
    Caption = 'DATA ANGGOTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object label8: TLabel
      Left = 16
      Top = 40
      Width = 259
      Height = 25
      Caption = 'CARI BERDASARKAN NAMA'
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 88
      Width = 713
      Height = 297
      DataSource = ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -21
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id_anggota'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama_anggota'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jenis_kelamin'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal_lahir'
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'no_telepon'
          Width = 128
          Visible = True
        end>
    end
    object edit2: TEdit
      Left = 288
      Top = 32
      Width = 417
      Height = 33
      TabOrder = 1
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
  object zqry1: TZQuery
    Connection = Form1.con1
    Params = <>
    Left = 32
    Top = 16
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 80
    Top = 16
  end
  object q1: TZQuery
    Connection = Form1.con1
    Params = <>
    Left = 120
    Top = 16
  end
end
