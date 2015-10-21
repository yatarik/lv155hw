mysql -u root -p'1234'

CREATE DATABASE eq;

USE eq;

CREATE TABLE IF NOT EXISTS eq (
    equip_id int(5) NOT NULL AUTO_INCREMENT,
    type varchar(50) DEFAULT NULL,
    install_date DATE DEFAULT NULL,
    color varchar(20) DEFAULT NULL,
    working bool DEFAULT NULL,
    location varchar(250) DEFAULT NULL,
    PRIMARY KEY(equip_id)
    );

show columns in eq;

INSERT INTO eq (type, install_date, color, working, location)
VALUES
("Slide", Now(), "blue", 1, "Southwest Corner");

INSERT INTO eq (type, install_date, color, working, location)
VALUES
("Swing", Now(), "green", 1, "Northwest Corner");

SELECT * FROM eq;
