DELIMITER 

CREATE PROCEDURE KitapSatinAl(
    IN p_KullaniciID INT,
    IN p_KitapID INT
)
BEGIN
    -- Transaction baþlat
    START TRANSACTION;

    BEGIN
        -- Ýndirmeler tablosuna kayýt ekle
        INSERT INTO Indirmeler (IndirmeTarihi, IndirmeSayisi, KullaniciID, KitapID)
        VALUES (CURRENT_DATE, 1, p_KullaniciID, p_KitapID);

        -- Kullanýcý Kitap tablosuna kayýt ekle
        INSERT INTO kullanýcýlar (KullanýcýID, KitapID)
        VALUES (26, 96);

        -- Eðer her þey yolunda gittiyse commit
        COMMIT;
    EXCEPTION
        -- Bir hata oluþursa rollback yap
        ROLLBACK;
    END;
END

DELIMITER ;
