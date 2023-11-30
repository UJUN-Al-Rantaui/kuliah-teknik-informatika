object FormDosen: TFormDosen
  Left = 180
  Top = 218
  Width = 1354
  Height = 549
  Caption = 'Dosen'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 0
    Top = 0
    Width = 1338
    Height = 42
    Align = alTop
    Alignment = taCenter
    Caption = 'CRUD DATA DOSEN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 608
    Top = 104
    Width = 79
    Height = 21
    Caption = 'Cari Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object dbgDosen: TDBGrid
    Left = 600
    Top = 136
    Width = 721
    Height = 361
    DataSource = dSrcDosen
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgDosenCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 16
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nidn'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_dosen'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_masuk'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_wa'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agama'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 128
        Visible = True
      end>
  end
  object GbInput: TGroupBox
    Left = 24
    Top = 64
    Width = 561
    Height = 433
    Caption = 'Input Data Dosen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 45
      Height = 21
      Caption = 'NIDN'
    end
    object Label2: TLabel
      Left = 16
      Top = 80
      Width = 43
      Height = 21
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 16
      Top = 120
      Width = 113
      Height = 21
      Caption = 'Tanggal Masuk'
    end
    object Label4: TLabel
      Left = 16
      Top = 160
      Width = 52
      Height = 21
      Caption = 'Alamat'
    end
    object Label5: TLabel
      Left = 16
      Top = 200
      Width = 57
      Height = 21
      Caption = 'No WA'
    end
    object Label6: TLabel
      Left = 16
      Top = 248
      Width = 52
      Height = 21
      Caption = 'Agama'
    end
    object Label7: TLabel
      Left = 16
      Top = 328
      Width = 46
      Height = 21
      Caption = 'Status'
    end
    object Edit1: TEdit
      Left = 144
      Top = 32
      Width = 393
      Height = 29
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 144
      Top = 72
      Width = 393
      Height = 29
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 144
      Top = 152
      Width = 393
      Height = 29
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 144
      Top = 192
      Width = 393
      Height = 29
      TabOrder = 3
    end
    object dtp1: TDateTimePicker
      Left = 144
      Top = 112
      Width = 393
      Height = 29
      Date = 45087.000000000000000000
      Time = 45087.000000000000000000
      DateMode = dmUpDown
      TabOrder = 4
    end
    object rgAgama: TRadioGroup
      Left = 144
      Top = 224
      Width = 393
      Height = 73
      Columns = 2
      Items.Strings = (
        'Islam'
        'Kristen'
        'Budha'
        'Katolik')
      TabOrder = 5
    end
    object rgStatus: TRadioGroup
      Left = 144
      Top = 304
      Width = 393
      Height = 49
      Columns = 2
      Items.Strings = (
        'PNS'
        'DTY')
      TabOrder = 6
    end
    object Button1: TButton
      Left = 136
      Top = 376
      Width = 89
      Height = 33
      Caption = 'Tambah'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 376
      Width = 89
      Height = 33
      Caption = 'Rubah'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 344
      Top = 376
      Width = 89
      Height = 33
      Caption = 'Hapus'
      TabOrder = 9
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 448
      Top = 376
      Width = 89
      Height = 33
      Caption = 'Bersih'
      TabOrder = 10
      OnClick = Button4Click
    end
  end
  object Edit5: TEdit
    Left = 696
    Top = 104
    Width = 305
    Height = 21
    Color = clHighlightText
    TabOrder = 2
    OnChange = Edit5Change
  end
  object dsDosen: TADODataSet
    Active = True
    Connection = conDB
    CursorType = ctStatic
    CommandText = 'select * from dosen'
    Parameters = <>
    Left = 72
    Top = 8
  end
  object dSrcDosen: TDataSource
    DataSet = dsDosen
    Left = 120
    Top = 8
  end
  object conDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\UJUN\Kuliah\Seme' +
      'ster 2\Pemrograman Visual1\2210010097_Muhammad Junaidi_database ' +
      'msAccess\Kampus_unska_Proj\kampus_uniska.mdb;Persist Security In' +
      'fo=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 8
  end
end
