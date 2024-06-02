-- created a view from table vehicle_location_histories according to date of the incident
 SELECT city,
    ride_id,
    "timestamp",
    lat,
    long
   FROM vehicle_location_histories
  WHERE (((city)::TEXT = 'new york'::TEXT) AND (("timestamp")::date = '2020-06-23'::date) AND ((lat >= ('-74.997'::NUMERIC)::DOUBLE PRECISION) AND (lat <= ('-74.9968'::NUMERIC)::DOUBLE PRECISION)) AND ((long >= (40.5)::DOUBLE PRECISION) AND (long <= (40.6)::DOUBLE PRECISION)));
  