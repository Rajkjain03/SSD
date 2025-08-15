DELIMITER $$

CREATE PROCEDURE SubscriberWatchHistoryReport()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE subId INT;
    
    DECLARE cur CURSOR FOR
        SELECT SubscriberID
        FROM Subscribers;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO subId;
        IF done THEN
            LEAVE read_loop;
        END IF;
        CALL GetWatchHistoryBySubscriber(subId);
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;
