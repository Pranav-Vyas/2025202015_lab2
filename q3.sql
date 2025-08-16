DROP PROCEDURE IF EXISTS AddSubscriberIfNotExists;

DELIMITER //
CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Subscribers WHERE SubscriberName = subName) THEN
        INSERT INTO Subscribers(SubscriberName, SubscriptionDate)
        VALUES (subName, CURDATE());
    END IF;
END //
DELIMITER ;

CALL AddSubscriberIfNotExists('Sachin Tendulkar');
