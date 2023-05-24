CREATE DATABASE bookingDB;

use bookingDB;

CREATE TABLE booking(
    booking_number int,
    booking_date DATE,
    bus_number int,
	travel_date DATE,
    source varchar(100),
    destination varchar(100),
    seats int,
    status varchar(100),
	PRIMARY KEY (booking_number)
);

CREATE TABLE passenger(
	passenger_id int,
	passenger_name  varchar(100),
    booking_number int,
	FOREIGN KEY (booking_number) REFERENCES bookingDB.booking(booking_number)
);

------------------------------

CREATE DATABASE adminDB;

use adminDB;

CREATE TABLE busroute(
    bus_number int,
    source varchar(100),
    destination varchar(100),
    seats int,
    price int,
	PRIMARY KEY (bus_number)
);
------------------------------

CREATE DATABASE inventorydb;

use inventorydb;

CREATE TABLE businventory(
    bus_number int, 
    available_seats int,
    updated_date DATE,
	PRIMARY KEY (bus_number),
    FOREIGN KEY (bus_number) REFERENCES adminDB.busroute(bus_number)

);
------------------------------

CREATE DATABASE paymentDB;

use paymentdb;

CREATE TABLE payment(
    payment_number int, 
	booking_number int,
    payment_date DATE,
	PRIMARY KEY (payment_number),
    FOREIGN KEY (booking_number) REFERENCES bookingDB.booking(booking_number)
);
------------------------------

commit;

