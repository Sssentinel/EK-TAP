CREATE TABLE YorumLog (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    YorumID INT,
    KullaniciID INT,
    KitapID INT,
    LogTarihi DATETIME
);

DELIMITER 

CREATE TRIGGER YorumEkleTrigger
AFTER INSERT ON Yorumlar
FOR EACH ROW
BEGIN
    -- Yorum eklenince log tablosuna kayýt ekle
    INSERT INTO YorumLog (YorumID, KullaniciID, KitapID, LogTarihi)
    VALUES (NEW.YorumID, NEW.KullaniciID, NEW.KitapID, NOW());
END

DELIMITER ;
