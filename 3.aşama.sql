--İstenilen tüm sorguları burada gerçekleştiriyorum

SELECT Lig.adi
FROM Lig
JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye';

--İsmi "Türkiye" olan ülkenin takımların listesi :

SELECT Takim.adi
FROM Takim
JOIN Lig ON Takim.id_leauge = Lig.id
JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye';

-- İsmi "Türkiye" olan en üst seviyeli ligdeki puan tablosu:

SELECT Takim.adi, Takim.puan
FROM Takim
JOIN Lig ON Takim.id_leauge = Lig.id
JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye' AND Lig.seviye = 1
ORDER BY Takim.puan DESC;

--Türkiye liglerindeki puan ortalamaları

SELECT Lig.adi, AVG(Takim.puan) AS puan_ortalama
FROM Takim
JOIN Lig ON Takim.id_leauge = Lig.id
JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye'
GROUP BY Lig.adi;

--Bir ligin Gol kralı

SELECT Oyuncu.adi, Oyuncu.soyadi, Takim.adi AS takim_adi, Country.name AS nereli_oldugu
FROM Oyuncu
JOIN Takim ON Oyuncu.id_team = Takim.id
JOIN Country ON Oyuncu.id_country = Country.id
WHERE Takim.id_leauge = 1
ORDER BY Oyuncu.attigi_gol DESC
LIMIT 1;

-- Tüm liglerde attığı gol yediği golden daha küçük olan takımlar

SELECT Takim.adi, Takim.attigi_gol, Takim.yedigi_gol
FROM Takim
JOIN Lig ON Takim.id_leauge = Lig.id
WHERE Takim.attigi_gol < Takim.yedigi_gol;

--Bir takımın oyuncularının toplam gol sayısını ve takımın gol sayısının birlikte gösterimi

SELECT Takim.adi, SUM(Oyuncu.attigi_gol) AS oyuncu_gol, Takim.attigi_gol AS takim_gol
FROM Takim
JOIN Oyuncu ON Takim.id = Oyuncu.id_team
GROUP BY Takim.id;