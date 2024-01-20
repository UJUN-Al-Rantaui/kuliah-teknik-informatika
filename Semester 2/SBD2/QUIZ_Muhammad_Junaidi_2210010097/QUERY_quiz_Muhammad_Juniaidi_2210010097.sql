create database quiz_Muhammad_Junaidi_2210010097;

create table tb_spesialis (
    kd_spesialis    char(3) primary key,
    spesialis       varchar(35) 
);

create table tb_dokter (
    kd_dokter   char(3)     primary key,
    nama_dokter varchar(35),
    kd_spesialis char(3),
    telepon     varchar(15),
    sex         char(1),
    foreign key (kd_spesialis) references tb_spesialis(kd_spesialis)
);

create table tb_jaga (
    kd_dokter   char(3),
    hari        varchar(15),
    jam_mulai   time,
    jam_selesai time,
    foreign key (kd_dokter) references tb_dokter(kd_dokter)
);

INSERT INTO tb_spesialis VALUES
("UMM", "Dokter Umum"),
("DLM", "Penyakit Dalam"),
("ANK", "Anak"),
("KDG", "Kandungan"),
("BDH", "Bedah"),
("JTG", "Jantung"),
("THT", "Telinga Hidung dan Tenggorokan"),
("GIG", "Gigi"),
("SRF", "Saraf"),
("KLT", "Kulit"),
("Mat", "Mata");

INSERT INTO tb_dokter VALUES
("D01", "Dr. Boi Trimoyo",      "UMM", "08111111111", "P"),
("D02", "Dr. Irfan Nurhuddin",  "DLM", "08222222222", "P"),
("D03", "Dr. Muswanto",         "BDH", "08333333333", "P"),
("D04", "Dr. Umar",             "JTG", "08444444444", "P"),
("D05", "Dr. Ibrahim",          "KDG", "08555555555", "P"),
("D06", "Dr. Aji",              "SRF", "08666666666", "P"),
("D07", "Dr. Ridwan",           "MAT", "08777777777", "P"),
("D08", "Dr. Fajar",            "ANK", "08888888888", "P"),
("D09", "Dr. Mory",             "UMM", "08999999999", "P"),
("D10", "Dr. Serly",            "BDH", "08000000000", "W"),
("D11", "Dr. Chandra",          "UMM", "08101010101", "P");

INSERT INTO tb_jaga VALUES 
("D01", "senin", "08:15:00", "12:15:00");

INSERT INTO tb_jaga VALUES 
("D09", "senin", "12:15:00", "16:30:00"),
("D11", "senin", "17:30:00", "20:00:00"),
("D03", "selasa","18:15:00", "16:00:00"),
("D08", "selasa","16:00:00", "21:00:00"),
("D04", "selasa","18:15:00", "20:00:00"),
("D05", "selasa","18:15:00", "14:00:00"),
("D15", "selasa","14:00:00", "20:00:00"),
("D13", "rabu",  "08:15:00", "12:00:00"),
("D12", "rabu",  "08:15:00", "14:00:00"),
("D16", "rabu",  "14:00:00", "21:00:00"),
("D14", "rabu",  "08:15:00", "14:00:00"),
("D06", "kamis", "08:15:00", "14:30:00"),
("D07", "jum'at","08:15:00", "11:30:00"),
("D10", "sabtu", "08:15:00", "14:30:00"),
("D02", "minggu","09:00:00", "14:00:00");

INSERT INTO tb_jaga VALUES 
("D09", "senin", "12:15:00", "16:30:00"),
("D11", "senin", "17:30:00", "20:00:00"),
("D03", "selasa","18:15:00", "16:00:00"),
("D08", "selasa","16:00:00", "21:00:00"),
("D04", "selasa","18:15:00", "20:00:00"),
("D05", "selasa","18:15:00", "14:00:00"),
("D05", "selasa","14:00:00", "20:00:00"),
("D03", "rabu",  "08:15:00", "12:00:00"),
("D02", "rabu",  "08:15:00", "14:00:00"),
("D06", "rabu",  "14:00:00", "21:00:00"),
("D04", "rabu",  "08:15:00", "14:00:00"),
("D06", "kamis", "08:15:00", "14:30:00"),
("D07", "jum'at","08:15:00", "11:30:00"),
("D10", "sabtu", "08:15:00", "14:30:00"),
("D02", "minggu","09:00:00", "14:00:00");

SELECT count(kd_dokter) as 'Jumlah Dokter' from tb_dokter;

SELECT d.nama_dokter as nama, s.spesialis from tb_dokter AS d JOIN tb_spesialis AS s ON (d.kd_spesialis = s.kd_spesialis) HAVING nama = "GIG";

SELECT nama_dokter, kd_spesialis from tb_dokter WHERE kd_spesialis = "GIG";

SELECT nama_dokter, kd_spesialis, telepon FROM tb_dokter ORDER BY nama_dokter DESC;

SELECT nama_dokter FROM tb_dokter WHERE kd_spesialis = "UMM" and nama_dokter LIKE "%a%";

SELECT d.nama_dokter, s.spesialis FROM tb_dokter as d join tb_spesialis as s ON (d.kd_spesialis = s.kd_spesialis) WHERE d.sex = "W";

SELECT 
    d.nama_dokter,
    s.spesialis,
    j.hari,
    j.jam_mulai,
    j.jam_selesai 
FROM tb_dokter as d 
    JOIN tb_spesialis as s  ON (d.kd_spesialis = s.kd_spesialis) 
        JOIN tb_jaga AS j ON (d.kd_dokter = j.kd_dokter) WHERE j.hari = "selasa"; 

-- ini NO 5 --

SELECT d.nama_dokter, s.spesialis FROM tb_dokter AS d JOIN tb_spesialis AS s ON (d.kd_spesialis = s.kd_spesialis) WHERE kd_spesialis = "GIG"; 



