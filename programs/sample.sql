CREATE TABLE Boats(
                    boatid VARCHAR2(5) CONSTRAINT validboatid CHECK (boatid LIKE 'B%') PRIMARY KEY,
                    boatname VARCHAR2(16) NOT NULL,
                    boattype VARCHAR2(3) CONSTRAINT validboattype CHECK (boattype='LUX' OR boattype='CAR' or boattype='CRU'),
                    maxcapacity int NOT NULL,
                    priceperseat int NOT NULL,
                    colour VARCHAR(10)
);