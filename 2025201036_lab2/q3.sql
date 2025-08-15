DELIMITER $$

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE existing_count INT;
    
    SELECT COUNT(*) INTO existing_count
    FROM Subscribers
    WHERE SubscriberName = subName;
    
    IF existing_count = 0 THEN
        INSERT INTO Subscribers (SubscriberName, SubscriptionDate)
        VALUES (subName, CURDATE());
        SELECT CONCAT('Subscriber "', subName, '" added successfully.') AS Message;
    ELSE
        SELECT CONCAT('Subscriber "', subName, '" already exists.') AS Message;
    END IF;
END$$

DELIMITER ;
