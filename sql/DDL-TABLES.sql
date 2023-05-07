CREATE TABLE tripscsanchezp(
    TripID INT,
    Duraion INT, 
    StartDate STRING,
    StartStation STRING, 
    StartTerminal INT, 
    EndDate STRING, 
    EndStation STRING, 
    EndTerminal INT, 
    Bike INT, 
    SubscriberType STRING, 
    ZipCode STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/csanchezp/tripscsanchezp/'
TBLPROPERTIES ("skip.header.line.count"="1");

CREATE TABLE stationscsanchezp(
    station_id INT, 
    name STRING, 
    lat FLOAT,
    long FLOAT, 
    dockcount INT, 
    landmark STRING, 
    installation STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/csanchezp/stationscsanchezp/'
TBLPROPERTIES ("skip.header.line.count"="1");

