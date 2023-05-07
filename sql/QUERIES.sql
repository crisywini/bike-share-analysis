SELECT startterminal, startstation, count(*) AS cnt
FROM tripscsanchezp
GROUP BY startterminal, startstation
ORDER BY cnt
DESC limit 10;


SELECT s.station_id, s.name, s.lat, s.long, count(1) as count
FROM tripscsanchezp t
JOIN stationscsanchezp s 
ON s.station_id= t.endterminal
WHERE t.startterminal= 70
GROUP BY s.station_id, s.name, s.lat, s.long
ORDER BY count 
DESC limit 10;