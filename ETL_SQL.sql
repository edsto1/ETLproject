CREATE DATABASE ny_crime;

USE ny_crime;

CREATE TABLE neighborhoods (
	id INT AUTO_INCREMENT NOT NULL,
    BOROUGH TEXT,
    Total_Participants INT,
    Total_Public_Assist INT,
    Precent_Pub_Assist DECIMAL,
    PRIMARY KEY (id)
    );

CREATE TABLE crime_data (
	id INT AUTO_INCREMENT NOT NULL,
    BORO_NM TEXT,
    LAW_CAT_CD TEXT,
    OFNS_DESC TEXT,
    PRIMARY KEY (id)
    );
    
 
 
SELECT c.BORO_NM, c.LAW_CAT_CD, c.OFNS_DESC, n.Total_Participants, n.Total_Public_Assist, n.Precent_Pub_Assist
FROM crime_data AS c
INNER JOIN neighborhoods AS n
ON n.BOROUGH = c.BORO_NM;
    