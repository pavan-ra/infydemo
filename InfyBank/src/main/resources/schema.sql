CREATE SCHEMA infy_bank;

CREATE TABLE Users (
  mobile_number BIGINT PRIMARY KEY,
  user_id VARCHAR(255) UNIQUE NOT NULL,
  account_holder_name VARCHAR(255) NOT NULL,
  gender VARCHAR(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  communication_address VARCHAR(255) NOT NULL,
  PAN VARCHAR(255) NOT NULL
);
CREATE TABLE BankAccount (
  account_number VARCHAR(20) PRIMARY KEY,
  bank_name VARCHAR(50),
  balance DOUBLE,
  account_type VARCHAR(20),
  ifsc_code VARCHAR(20),
  opening_date DATE,
  mobile_number BIGINT,
  digital_banking_id VARCHAR(20),
  FOREIGN KEY (mobile_number) REFERENCES User(mobile_number)
);

CREATE TABLE DigitalBankAccount (
  digital_banking_id VARCHAR(255) PRIMARY KEY,
  mobile_number BIGINT,
  account_number VARCHAR(255),
  account_type VARCHAR(255),
  opening_date DATE,
  FOREIGN KEY (mobile_number) REFERENCES User(mobile_number)
);
CREATE TABLE Transaction (
  transaction_id INTEGER PRIMARY KEY,
  mode_of_transaction VARCHAR(255),
  paid_to LONG,
  receiver_account_number LONG,
  amount DOUBLE,
  transaction_date_time TIMESTAMP,
  remarks VARCHAR(255),
  paid_from LONG,
  sender_account_number LONG
);
