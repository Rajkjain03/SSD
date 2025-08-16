Name - Raj k jain
Roll - 2025201036
Github Repo - https://github.com/Rajkjain03/SSD

Q1 - Creating a stored procedure named ListAllSubscribers that uses a cursor to iterate through all Subscribers and prints their names.
DELIMITER - change standard delimeiter (;) to ($$) Changing the delimiter ensures that the database treats the entire CREATE PROCEDURE - END block as a single statement.
Declaring Cursor- cur is the cursor name that allows you to go through a result set one row at a time.
open cur - execute the select query associated with the cursor.
steps to execute - CALL ListAllSubscribers()


Q2 - Creating a stored procedure named GetWatchHistoryBySubscriber(IN sub_id INT) that returns all shows watched by the subscriber along with watch time.
Performing join operation two join two tables WatchHistory and Shows.
steps to execute - CALL GetWatchHistoryBySubscriber(IN sub_id INT)

Q3 - Creating a stored procedure named  AddSubscriberIfNotExists(IN subName VARCHAR(100)) – Adds a new subscriber into the Subscribers table, checking if the subscriber name already exists.declaring a local integer variable named existing_count to store the result of the check.
Querry to check if subname given in procedure is there or not. if there is no subscriber query stores 0 to existing_count. and then IF-ELSE block uses the value of existing_count to decide what to do next. 
steps to execute - CALL AddSubscriberIfNotExists(IN subName VARCHAR(100))

Q4 - creating a stored procedure named SendWatchTimeReport().Declaring a cursor 'cur' This cursor's result set is a unique list of all SubscriberIDs found in the WatchHistory table
the procedure calls the GetWatchHistoryBySubscriber
steps to execute - CALL SendWatchTimeReport();


Q5 - creating a stored procedure named SubsWatchHisReport().generate a watch history report for every single subscriber in the database, regardless of whether they have watched anything.it uses a cursor 'cur' to loop through a list of subscribers and calls the GetWatchHistoryBySubscriber procedure for each one.
steps to execute - CALL SubsWatchHisReport();


