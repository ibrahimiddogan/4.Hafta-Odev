-- İstenilen herşeyi insert ediyorum burada

-- Country tablosu verileri
INSERT INTO Country (id, name)
VALUES (1, 'Türkiye');

-- Lig tablosu verileri
INSERT INTO Lig (id, adi, id_country)
VALUES (1, 'Süper Lig', 1),
       (2, '1. Lig', 1);

-- Takim tablosu verileri
INSERT INTO Takim (id, adi, id_leauge, kurulus_yili, attigi_gol, yedigi_gol, puan, seviye)
VALUES (1, 'Galatasaray', 1, 1905, 60, 30, 80, 1),
       (2, 'Fenerbahçe', 1, 1907, 55, 25, 75, 1),
       (3, 'Beşiktaş', 1, 1903, 58, 28, 76, 1),
       (4, 'Trabzonspor', 1, 1967, 50, 35, 70, 1),
       (5, 'Bursaspor', 2, 1963, 45, 40, 68, 2),
       (6, 'Ankaragücü', 2, 1911, 38, 45, 45, 2);

-- Oyuncu tablosu verileri
INSERT INTO Oyuncu (id, adi, soyadi, id_team, id_country, attigi_gol)
VALUES (1, 'Arda', 'Turan', 1, 1, 10),
       (2, 'Emre', 'Belözoğlu', 2, 1, 12),
       (3, 'Vedat', 'Muriqi', 1, 1, 15),
       (4, 'Jose', 'Sosa', 2, 1, 8),
       (5, 'Mustafa', 'Kemal', 3, 1, 7),
       (6, 'Ali', 'Veli', 5, 1, 9),
       (7, 'Ahmet', 'Mehmet', 6, 1, 6);