DROP PROCEDURE IF EXISTS PrintAllSubscribersWatchHistory;

DELIMITER //
CREATE PROCEDURE PrintAllSubscribersWatchHistory()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sid INT;
    DECLARE cur CURSOR FOR SELECT SubscriberID FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO sid;
        IF done THEN
            LEAVE read_loop;
        END IF;
        CALL GetWatchHistoryBySubscriber(sid);
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL PrintAllSubscribersWatchHistory();
