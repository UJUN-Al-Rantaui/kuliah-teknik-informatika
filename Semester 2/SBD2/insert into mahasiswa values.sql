insert into mahasiswa values 
('100101001', 'Wahyudi', 'Surakarta', '01'), 
('100101002', 'Spriyono', 'klaten', '01'), 
('100202001', 'Rustanto', 'Sukoharjo', '02'),
('100103001', 'Mariyatun', 'Wunogiri', '03'),
('100202002', 'Sri Handayani', 'Sragen', '02'),
('100204001', 'Handayani', 'Klaten', '04'),
('100204002', 'Stri Mariatun', 'Surakarta', '04'),
('100203002', 'Eko Wahyudi', 'Surakarta', '03');

insert into prodi values 
('01', 'Sistem Informasi', '000001'), 
('02', 'Managemen Informatika', '000002'), 
('03', 'Teknik Informatika', '000003'), 
('04', 'Teknik Komputer', '000004');

create table dosen (
kd_dosen varchar(6) primary key,
nama_dosen varchar(40),
alamat varchar(40)
);

insert into dosen values 
('000001', 'Eko Purwanto, M.Kom', 'Sukoharjo'),
('000002', 'Faulinda Ely Nastiti, M.Eng', 'Sukoharjo'),
('000003', 'Joni Maulindar, M.Eng', 'Surakarta'),
('000004', 'Sri Sumarlinda, M.Eng', 'Yogyakarta');