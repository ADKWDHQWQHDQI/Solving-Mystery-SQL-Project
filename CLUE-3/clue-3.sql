
/*
DARN! All the work and the interrogation of the drivers has come up flat! Interestingly enough, we should have been looking at the riders all along. It was staring us right in the face.

So with our current setup, we go ahead and filter out all of the unique riders that were on those suspected rides on that horrible day of the theft.

Make sure to rename the column to "rider name"

*/
SELECT DISTINCT vehicle_id,(d.name)AS "rider name",address
FROM suspected_rides AS a
JOIN rides AS b ON a.ride_id = b.id
JOIN users AS d ON d.id = b.rider_id