DELIMITER

CREATE PROCEDURE KitapIndir(
    IN p_KullaniciID INT,
    IN p_KitapID INT
)
BEGIN
    -- �ndirmeler tablosuna kay�t ekle
    INSERT INTO Indirmeler (IndirmeTarihi, IndirmeSayisi, KullaniciID, KitapID)
    VALUES (CURRENT_DATE, 1, p_KullaniciID, p_KitapID);

    -- Ki�isel K�t�phane tablosunu g�ncelle
    INSERT INTO KisiselKutuphane (IndirmeID, KullaniciID, KitapID)
    VALUES (LAST_INSERT_ID(), p_KullaniciID, p_KitapID);
END

DELIMITER ;
