DELIMITER 

CREATE PROCEDURE KitapSatinAl(
    IN p_KullaniciID INT,
    IN p_KitapID INT
)
BEGIN
    -- Transaction ba�lat
    START TRANSACTION;

    BEGIN
        -- �ndirmeler tablosuna kay�t ekle
        INSERT INTO Indirmeler (IndirmeTarihi, IndirmeSayisi, KullaniciID, KitapID)
        VALUES (CURRENT_DATE, 1, p_KullaniciID, p_KitapID);

        -- Kullan�c� Kitap tablosuna kay�t ekle
        INSERT INTO kullan�c�lar (Kullan�c�ID, KitapID)
        VALUES (26, 96);

        -- E�er her �ey yolunda gittiyse commit
        COMMIT;
    EXCEPTION
        -- Bir hata olu�ursa rollback yap
        ROLLBACK;
    END;
END

DELIMITER ;
