USE hotdawg;

##Set up ingredients groundwork
##Bun
DROP TABLE IF EXISTS buns;
CREATE TABLE buns (
	`ID` int AUTO_INCREMENT,
    `desc` varchar(20) NOT NULL,
    CONSTRAINT bunsPK PRIMARY KEY(`ID`)
);
INSERT INTO buns(`desc`)
VALUES
	('White'),
    ('Whole Wheat');

##Sausages
DROP TABLE IF EXISTS sausages;
CREATE TABLE sausages (
	ID int auto_increment,
    `desc` varchar(20) NOT NULL,
    CONSTRAINT sausagesPK PRIMARY KEY(ID)
);
INSERT INTO sausages(`desc`)
VALUES
	('Pork Classic'),
    ('Turkey'),
    ('Tofu VEGAN');
    
##Toppings
DROP TABLE IF EXISTS toppings;
CREATE TABLE toppings (
	ID int auto_increment,
    `desc` varchar(20) NOT NULL,
    CONSTRAINT topPK PRIMARY KEY(ID)
);
INSERT INTO toppings(`desc`)
VALUES
	('Ketchup'),
    ('Mustard, yellow'),
    ('Mustard, honey'),
    ('Mustard, spicy'),
    ('Relish'),
    ('Onions');