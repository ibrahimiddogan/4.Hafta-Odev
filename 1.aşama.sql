--İstenilen tüm tabloların oluşumu burada

-- Country tablosu
CREATE TABLE Country (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Lig tablosu
CREATE TABLE Lig (
    id INT PRIMARY KEY,
    adi VARCHAR(100),
    id_country INT,
    FOREIGN KEY (id_country) REFERENCES Country(id)
);

-- Takim tablosu
CREATE TABLE Takim (
    id INT PRIMARY KEY,
    adi VARCHAR(100),
    id_leauge INT,
    kurulus_yili INT,
    attigi_gol INT,
    yedigi_gol INT,
    puan INT,
    seviye INT,
    FOREIGN KEY (id_leauge) REFERENCES Lig(id)
);

-- Oyuncu tablosu
CREATE TABLE Oyuncu (
    id INT PRIMARY KEY,
    adi VARCHAR(50),
    soyadi VARCHAR(50),
    id_team INT,
    id_country INT,
    attigi_gol INT,
    FOREIGN KEY (id_team) REFERENCES Takim(id),
    FOREIGN KEY (id_country) REFERENCES Country(id)
);