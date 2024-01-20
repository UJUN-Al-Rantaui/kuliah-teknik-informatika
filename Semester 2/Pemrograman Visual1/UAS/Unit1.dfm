object Form1: TForm1
  Left = 130
  Top = 93
  Width = 1325
  Height = 728
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = btn1Click
  PixelsPerInch = 96
  TextHeight = 13
  object label2: TLabel
    Left = 0
    Top = 0
    Width = 1309
    Height = 84
    Align = alTop
    Alignment = taCenter
    Caption = 'FORM PEMBAYARAN LAYANAN LAUNDRY'#13#10'FTI LAUNDRY'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object label13: TLabel
    Left = 408
    Top = 80
    Width = 505
    Height = 19
    Caption = 
      'Jl. Salak No. 3 Kel. Sungai Ulin KecBanjarbarumUtara No. Telp : ' +
      '0511 - 0909090'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 7
    Top = 112
    Width = 617
    Height = 361
    Caption = 'Data Layanan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object label3: TLabel
      Left = 16
      Top = 48
      Width = 139
      Height = 23
      Caption = 'Nama Pelanggan'
    end
    object label4: TLabel
      Left = 16
      Top = 96
      Width = 118
      Height = 23
      Caption = 'Kode Layanan'
    end
    object label5: TLabel
      Left = 16
      Top = 240
      Width = 110
      Height = 23
      Caption = 'Tanggal Cuci'
    end
    object label6: TLabel
      Left = 16
      Top = 192
      Width = 115
      Height = 23
      Caption = 'Biaya Per KG'
    end
    object label7: TLabel
      Left = 16
      Top = 144
      Width = 122
      Height = 23
      Caption = 'Nama Layanan'
    end
    object label8: TLabel
      Left = 16
      Top = 288
      Width = 162
      Height = 23
      Caption = 'Beran Cucian (KG)'
    end
    object edit2: TEdit
      Left = 216
      Top = 40
      Width = 385
      Height = 31
      TabOrder = 0
    end
    object cbb1: TComboBox
      Left = 216
      Top = 88
      Width = 385
      Height = 31
      ItemHeight = 23
      TabOrder = 1
      OnChange = cbb1Change
      Items.Strings = (
        'CK-1'
        'CK-2'
        'CS-1'
        'CS-2'
        'KR-1'
        'KR-2')
    end
    object edit3: TEdit
      Left = 216
      Top = 136
      Width = 385
      Height = 31
      Enabled = False
      TabOrder = 2
    end
    object edit4: TEdit
      Left = 216
      Top = 184
      Width = 385
      Height = 31
      Enabled = False
      TabOrder = 3
    end
    object dtp1: TDateTimePicker
      Left = 216
      Top = 232
      Width = 385
      Height = 31
      Date = 45120.407946342600000000
      Time = 45120.407946342600000000
      TabOrder = 4
    end
    object edit5: TEdit
      Left = 216
      Top = 280
      Width = 385
      Height = 31
      TabOrder = 5
    end
    object btn1: TButton
      Left = 384
      Top = 320
      Width = 97
      Height = 33
      Caption = 'ULANG'
      TabOrder = 6
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 504
      Top = 320
      Width = 97
      Height = 33
      Caption = 'HITUNG'
      TabOrder = 7
      OnClick = btn2Click
    end
  end
  object grp2: TGroupBox
    Left = 640
    Top = 112
    Width = 633
    Height = 361
    Caption = 'Data Pembayaran'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object label9: TLabel
      Left = 16
      Top = 40
      Width = 75
      Height = 23
      Caption = 'SubTotal'
    end
    object label10: TLabel
      Left = 16
      Top = 88
      Width = 60
      Height = 23
      Caption = 'Diskon'
    end
    object label11: TLabel
      Left = 16
      Top = 136
      Width = 153
      Height = 23
      Caption = 'Total Keseluruhan'
    end
    object label12: TLabel
      Left = 16
      Top = 184
      Width = 168
      Height = 23
      Caption = 'Metode Pembayaran'
    end
    object edit6: TEdit
      Left = 232
      Top = 32
      Width = 385
      Height = 31
      Enabled = False
      TabOrder = 0
    end
    object edit7: TEdit
      Left = 232
      Top = 80
      Width = 385
      Height = 31
      Enabled = False
      TabOrder = 1
    end
    object edit8: TEdit
      Left = 232
      Top = 128
      Width = 385
      Height = 31
      Enabled = False
      TabOrder = 2
    end
    object rg1: TRadioGroup
      Left = 232
      Top = 160
      Width = 385
      Height = 57
      Columns = 3
      Items.Strings = (
        ' Cash'
        ' Debit Card'
        ' Qris')
      TabOrder = 3
    end
    object btn3: TButton
      Left = 176
      Top = 312
      Width = 97
      Height = 33
      Caption = 'SIMPAN'
      TabOrder = 4
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 288
      Top = 312
      Width = 97
      Height = 33
      Caption = 'UBAH'
      TabOrder = 5
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 400
      Top = 312
      Width = 97
      Height = 33
      Caption = 'HAPUS'
      TabOrder = 6
      OnClick = btn5Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 480
    Width = 1281
    Height = 201
    DataSource = dsrc1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_cuci'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_layanan'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_layanan'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_pelanggan'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'berat_cucian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_per_kg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subtotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diskon'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_keseluruhan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'metode_pembayaran'
        Width = 128
        Visible = True
      end>
  end
  object chk1: TCheckBox
    Left = 304
    Top = 16
    Width = 97
    Height = 17
    Caption = 'chk1'
    TabOrder = 3
  end
  object conDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\UJUN\Kuliah\Seme' +
      'ster 2\Pemrograman Visual1\UAS\UAS_2210010097.mdb;Persist Securi' +
      'ty Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 48
  end
  object ds1: TADODataSet
    Active = True
    Connection = conDB
    CursorType = ctStatic
    CommandText = 'select * from pembayaran'
    Parameters = <>
    Left = 80
    Top = 56
  end
  object dsrc1: TDataSource
    DataSet = ds1
    Left = 136
    Top = 56
  end
end
