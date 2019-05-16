drop table customers;
drop table logs;
drop table extensions;
drop table configuration;
CREATE TABLE customers (
	id int generated by default as identity primary key,
	group_id BLOB SUB_TYPE TEXT,
	group_psw BLOB SUB_TYPE TEXT,
	group_info BLOB SUB_TYPE TEXT
);

CREATE TABLE logs (
	id int generated by default as identity primary key,
	device_id int,
	timestamp_srv timestamp,
	timestamp_dev timestamp,
	event_id int,
	event BLOB SUB_TYPE TEXT
);

CREATE TABLE extensions (
	id int generated by default as identity primary key,
	device_id int,
	extension_id int,
	extension_description BLOB SUB_TYPE TEXT
);

CREATE TABLE configuration (
	id int generated by default as identity primary key,
	customer_id int,
	device_id int,
	device_mac BLOB SUB_TYPE TEXT,
	device_status int,
	nickname BLOB SUB_TYPE TEXT,
	configuration BLOB SUB_TYPE TEXT
);
