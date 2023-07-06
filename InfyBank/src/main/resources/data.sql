INSERT INTO BankAccount (account_number, bank_name, balance, account_type, ifsc_code, opening_date, mobile_number)
VALUES
  ('55810643789', 'ICICI', 5000.00, 'Savings', 'ICIC0001234', '2022-01-01', 9876987431),
  ('55810643710', 'ICICI', 2500.00, 'Savings', 'ICIC0001234', '2022-02-15', 9876987431),
  ('91510123876', 'AXIS', 10000.00, 'Current', 'AXIS0005678', '2022-03-10', 9876987431),
  ('11213409673', 'SBI', 7500.00, 'Savings', 'SBI0009876', '2022-04-20', 9876987431),
  ('55810643722', 'ICICI', 3000.00, 'Savings', 'ICIC0001234', '2022-05-05', 9876987431),
  ('66810643799', 'ICICI', 8000.00, 'Savings', 'ICIC0001234', '2022-06-30', 9876987431);
  INSERT INTO DigitalBankAccount (digital_banking_id, mobile_number, account_number, account_type)
VALUES
  ('9876987431', 9876987431, 'w1001', 'Savings'),
  ('9876987431', 9876987431, 'w1002', 'Savings'),
  ('7022713755', 7022713755, 'w1003', 'Savings');
  INSERT INTO Transaction (transaction_id, mode_of_transaction, paid_to, receiver_account_number, amount, transaction_date_time, remarks, paid_from, sender_account_number)
VALUES
  (123456789, 'Fund Transfer', 7022713755, 95810643722, 1290.00, '2022-07-30 06:35:11', 'Payment for Groceries', 9876987431, 55810643710),
  (123456730, 'Fund Transfer', 95810643722, 95820MA3T22, 2000.00, '2022-07-30 06:44:52', 'Payment for Maintenance', 9876987431, 66810643799),
  (123456777, 'Fund Transfer', 915101230, NULL, 1000.00, '2022-07-30 17:15:23', 'Payment for Restaurant Bill', 987497431, NULL);
  INSERT INTO User (mobile_number, user_id, account_holder_name, gender, date_of_birth, password, email, communication_address, pan)
VALUES
(9876987431, 'U1834', 'Sherlock Holmes', 'Male', '1999-07-03', 'Sherlock@1234', 'sherlockholmes007@infosys.com', '2218 Baker Street', 'BBUPC0954N');
  