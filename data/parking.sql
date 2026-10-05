-- Smart Parking Auto-meta Tabular Relational Database Dump
-- Generated at: 2026-10-05T09:07:03.119Z

CREATE TABLE IF NOT EXISTS users (
  id VARCHAR(64) PRIMARY KEY,
  rfid_id VARCHAR(64) UNIQUE NOT NULL,
  name VARCHAR(128) NOT NULL,
  email VARCHAR(128),
  vehicle_no VARCHAR(64) NOT NULL,
  contact VARCHAR(64),
  created_at TIMESTAMP
);

INSERT INTO users (id, rfid_id, name, email, vehicle_no, contact, created_at) VALUES ('USR-001', '83A14F9B', 'Vaibhav', 'vaibhav@sbjain.edu.in', 'MH-31-EQ-4092', '+91 98230 11223', '2026-10-01T10:00:00.000Z');
INSERT INTO users (id, rfid_id, name, email, vehicle_no, contact, created_at) VALUES ('USR-002', '44C27D1A', 'Ankita', 'ankita@sbjain.edu.in', 'MH-40-AZ-1845', '+91 97654 33211', '2026-10-02T11:30:00.000Z');
INSERT INTO users (id, rfid_id, name, email, vehicle_no, contact, created_at) VALUES ('USR-003', '62F91B8C', 'Om', 'om@sbjain.edu.in', 'MH-31-BY-9012', '+91 94221 88765', '2026-10-03T09:15:00.000Z');
INSERT INTO users (id, rfid_id, name, email, vehicle_no, contact, created_at) VALUES ('USR-004', '99E45A22', 'Pratik', 'pratik@sbjain.edu.in', 'MH-31-CX-5567', '+91 98812 44332', '2026-10-04T14:45:00.000Z');
INSERT INTO users (id, rfid_id, name, email, vehicle_no, contact, created_at) VALUES ('USR-4290', '83AFIA38', 'Tushar Thakare', 'tushar@gmail.com', 'MH-31-EQ-4936', '7788995544', '2026-10-05T08:12:54.290Z');

CREATE TABLE IF NOT EXISTS parking_stations (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  address TEXT,
  latitude DECIMAL(10, 6) NOT NULL,
  longitude DECIMAL(10, 6) NOT NULL,
  total_slots INT NOT NULL
);

INSERT INTO parking_stations (id, name, address, latitude, longitude, total_slots) VALUES ('STN-SBJAIN', 'S.B. Jain Institute Parking Terminal', 'Near Katol Road, Fetri, Nagpur, Maharashtra 441501', 21.2335, 78.9667, 6);
INSERT INTO parking_stations (id, name, address, latitude, longitude, total_slots) VALUES ('STN-KATOLRD', 'Katol Road Smart Parking Hub', 'Katol Road, Gittikhadan Square, Nagpur, Maharashtra 440013', 21.182, 79.035, 6);
INSERT INTO parking_stations (id, name, address, latitude, longitude, total_slots) VALUES ('STN-SITABULDI', 'Sitabuldi Metro Multi-Level Parking', 'Sitabuldi Interchange, Nagpur, Maharashtra 440012', 21.1458, 79.0882, 6);

CREATE TABLE IF NOT EXISTS slots (
  slot_id VARCHAR(64) PRIMARY KEY,
  station_id VARCHAR(64) NOT NULL,
  slot_number VARCHAR(32) NOT NULL,
  block_number INT,
  is_occupied SMALLINT DEFAULT 0,
  is_reserved SMALLINT DEFAULT 0,
  occupied_by_user_id VARCHAR(64),
  current_rfid VARCHAR(64),
  last_updated TIMESTAMP
);

INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SBJ-01', 'STN-SBJAIN', 'A-01', 1, 0, 0, NULL, NULL, '2026-10-05T08:21:26.089Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SBJ-02', 'STN-SBJAIN', 'A-02', 2, 0, 0, NULL, NULL, '2026-10-05T08:19:52.330Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SBJ-03', 'STN-SBJAIN', 'A-03', 3, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SBJ-04', 'STN-SBJAIN', 'B-01', 4, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SBJ-05', 'STN-SBJAIN', 'B-02', 5, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SBJ-06', 'STN-SBJAIN', 'B-03', 6, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-KTL-01', 'STN-KATOLRD', 'C-01', 1, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-KTL-02', 'STN-KATOLRD', 'C-02', 2, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-KTL-03', 'STN-KATOLRD', 'C-03', 3, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-KTL-04', 'STN-KATOLRD', 'D-01', 4, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-KTL-05', 'STN-KATOLRD', 'D-02', 5, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-KTL-06', 'STN-KATOLRD', 'D-03', 6, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SIT-01', 'STN-SITABULDI', 'E-01', 1, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SIT-02', 'STN-SITABULDI', 'E-02', 2, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SIT-03', 'STN-SITABULDI', 'E-03', 3, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SIT-04', 'STN-SITABULDI', 'F-01', 4, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SIT-05', 'STN-SITABULDI', 'F-02', 5, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');
INSERT INTO slots (slot_id, station_id, slot_number, block_number, is_occupied, is_reserved, occupied_by_user_id, current_rfid, last_updated) VALUES ('SLOT-SIT-06', 'STN-SITABULDI', 'F-03', 6, 0, 0, NULL, NULL, '2026-10-05T08:00:00.000Z');

CREATE TABLE IF NOT EXISTS bookings (
  booking_id VARCHAR(64) PRIMARY KEY,
  user_id VARCHAR(64) NOT NULL,
  rfid_id VARCHAR(64) NOT NULL,
  station_id VARCHAR(64) NOT NULL,
  slot_id VARCHAR(64) NOT NULL,
  slot_number VARCHAR(32) NOT NULL,
  block_number INT,
  status VARCHAR(32) NOT NULL,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  check_in_time TIMESTAMP,
  check_out_time TIMESTAMP,
  created_at TIMESTAMP,
  cancelled_at TIMESTAMP
);

INSERT INTO bookings (booking_id, user_id, rfid_id, station_id, slot_id, slot_number, block_number, status, start_time, end_time, check_in_time, check_out_time, created_at, cancelled_at) VALUES ('BKG-PRE-75319', 'USR-4290', '83AFIA38', 'STN-SBJAIN', 'SLOT-SBJ-01', 'A-01', 1, 'cancelled', '2026-10-05T10:00:00.000Z', '2026-10-05T12:00:00.000Z', NULL, NULL, '2026-10-05T08:21:15.319Z', '2026-10-05T08:21:26.089Z');
INSERT INTO bookings (booking_id, user_id, rfid_id, station_id, slot_id, slot_number, block_number, status, start_time, end_time, check_in_time, check_out_time, created_at, cancelled_at) VALUES ('BKG-ACT-98032', 'USR-001', '83A14F9B', 'STN-SBJAIN', 'SLOT-SBJ-01', 'A-01', 1, 'completed', '2026-10-05T08:01:38.032Z', NULL, '2026-10-05T08:01:38.032Z', '2026-10-05T08:01:38.048Z', '2026-10-05T08:01:38.032Z', NULL);
INSERT INTO bookings (booking_id, user_id, rfid_id, station_id, slot_id, slot_number, block_number, status, start_time, end_time, check_in_time, check_out_time, created_at, cancelled_at) VALUES ('BKG-DEMO-01', 'USR-002', '44C27D1A', 'STN-SBJAIN', 'SLOT-SBJ-04', 'B-01', 1, 'completed', '2026-10-04T10:00:00.000Z', '2026-10-04T12:00:00.000Z', '2026-10-04T10:05:12.000Z', '2026-10-04T11:58:30.000Z', '2026-10-05T09:07:03.113Z', NULL);
