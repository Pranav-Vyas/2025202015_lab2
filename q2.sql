DROP PROCEDURE IF EXISTS GetWatchHistoryBySubscriber;
DELIMITER //
CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
    SELECT w.SubscriberID, s.Title, w.WatchTime
    FROM WatchHistory w
    JOIN Shows s ON w.ShowID = s.ShowID
    WHERE w.SubscriberID = sub_id;
END //
DELIMITER ;

CALL GetWatchHistoryBySubscriber(1);
