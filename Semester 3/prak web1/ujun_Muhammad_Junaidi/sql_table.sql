CREATE TABLE santri (
    id INT NOT NULL AUTO_INCREMENT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_ad TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    nik VARCHAR(20) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    nama_ayah VARCHAR(100),
    nama_ibu VARCHAR(100),
    tempat_lahir VARCHAR(100),
    tanggal_lahir DATE NOT NULL,
    no_telepon CHAR(12),
    tingkat ENUM('Ibtidaiyah', 'Awwaliyah', 'Wustho', 'Ulya') NOT NULL,
    lokal CHAR(1) NOT NULL, 
    tahun_masuk DATE NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY nik_unique(nik)
);