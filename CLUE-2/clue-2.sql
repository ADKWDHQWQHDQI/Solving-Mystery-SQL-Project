--         CLUE - 2
/*
1. With this information we should be able to figure out which Movr rides happened that day around the office!
Try t"public"."suspected_rides"o sift through the database and figure out what table we need to query and what our query would be!

2. Once you figure out what rides occurred around the office that day, Bruno asks you to find the vehicle and owner info linked to those rides. Make sure you don't have duplicates! (see image below for expected columns)

Now that we know which vehicles were linked to those rides we use their current location to go and interrogate them for more information!
*/

SELECT DISTINCT(vehicle_id),d.name AS owner_name, address, status, current_location
FROM suspected_rides AS a
JOIN rides AS b ON a.ride_id = b.id
JOIN vehicles AS c ON b.vehicle_id = c.id
JOIN users AS d ON d.id = c.owner_id