DELIMITER

CREATE PROCEDURE KitapIndir(
    IN p_KullaniciID INT,
    IN p_KitapID INT
)
BEGIN
    -- Ýndirmeler tablosuna kayýt ekle
    INSERT INTO Indirmeler (IndirmeTarihi, IndirmeSayisi, KullaniciID, KitapID)
    VALUES (CURRENT_DATE, 1, p_KullaniciID, p_KitapID);

    -- Kiþisel Kütüphane tablosunu güncelle
    INSERT INTO KisiselKutuphane (IndirmeID, KullaniciID, KitapID)
    VALUES (LAST_INSERT_ID(), p_KullaniciID, p_KitapID);
END

DELIMITER ;
