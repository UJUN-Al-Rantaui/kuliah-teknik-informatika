object FormMahasiswa: TFormMahasiswa
  Left = 161
  Top = 217
  Width = 1265
  Height = 518
  Caption = 'Muhammad Junaidi'
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
  object Label7: TLabel
    Left = 528
    Top = 88
    Width = 61
    Height = 17
    Caption = 'Cari nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 520
    Top = 112
    Width = 713
    Height = 337
    Color = clInactiveCaption
    DataSource = dSrcMhahsiswa
    FixedColor = clMedGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'npm'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_lengkap'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prodi'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_lahir'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 72
    Width = 497
    Height = 385
    Caption = 'Input Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 33
      Height = 17
      Caption = 'NPM'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 91
      Height = 17
      Caption = 'Nama Lengkap'
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 31
      Height = 17
      Caption = 'Prodi'
    end
    object Label4: TLabel
      Left = 16
      Top = 128
      Width = 81
      Height = 17
      Caption = 'Tanggal Lahir'
    end
    object Label5: TLabel
      Left = 16
      Top = 160
      Width = 79
      Height = 17
      Caption = 'Tempat Lahir'
    end
    object Label6: TLabel
      Left = 16
      Top = 192
      Width = 82
      Height = 17
      Caption = 'Jenis Kelamin'
    end
    object EditNPM: TEdit
      Left = 120
      Top = 24
      Width = 321
      Height = 25
      TabOrder = 0
    end
    object EditNama: TEdit
      Left = 120
      Top = 56
      Width = 321
      Height = 25
      TabOrder = 1
    end
    object rgProdi: TRadioGroup
      Left = 120
      Top = 80
      Width = 321
      Height = 33
      Columns = 2
      Items.Strings = (
        'TI'
        'SI')
      TabOrder = 2
    end
    object dtp1: TDateTimePicker
      Left = 120
      Top = 120
      Width = 321
      Height = 25
      Date = 45083.996604201390000000
      Time = 45083.996604201390000000
      DateMode = dmUpDown
      TabOrder = 3
    end
    object EditTempatLahir: TEdit
      Left = 120
      Top = 152
      Width = 321
      Height = 25
      TabOrder = 4
    end
    object rgJenKel: TRadioGroup
      Left = 120
      Top = 176
      Width = 321
      Height = 41
      Columns = 2
      Items.Strings = (
        'Laki-laki'
        'Perempuan')
      TabOrder = 5
    end
    object Button1: TButton
      Left = 104
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 192
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 280
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 368
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 9
      OnClick = Button4Click
    end
  end
  object txt1: TStaticText
    Left = 0
    Top = 0
    Width = 1249
    Height = 46
    Align = alTop
    Alignment = taCenter
    Caption = 'Form Data Mahasiswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 600
    Top = 80
    Width = 257
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = Edit1Change
  end
  object conDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\UJ' +
      'UN\Kuliah\Semester 2\Pemrograman Visual1\2210010097_Muhammad Jun' +
      'aidi_database msAccess\Kampus_unska_Proj\kampus_uniska.mdb;Mode=' +
      'Share Deny None;Persist Security Info=False;Jet OLEDB:System dat' +
      'abase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=' +
      '"";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet' +
      ' OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transacti' +
      'ons=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System' +
      ' Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't' +
      ' Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica ' +
      'Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 8
  end
  object dsMahasiswa: TADODataSet
    Active = True
    Connection = conDB
    CursorType = ctStatic
    CommandText = 'select *  from mahasiswa'
    Parameters = <>
    Left = 80
    Top = 8
  end
  object dSrcMhahsiswa: TDataSource
    DataSet = dsMahasiswa
    Left = 152
    Top = 8
  end
end
