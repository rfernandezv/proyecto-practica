CREATE TABLE project (
  project_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  code VARCHAR(50) NOT NULL,
  name VARCHAR(200) NOT NULL,
  balance DECIMAL(10,2) NOT NULL,
  currency VARCHAR(3) NOT NULL,
  locked BIT NOT NULL,
  customer_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY(project_id),
  INDEX IX_project_customer_id(customer_id),
  UNIQUE INDEX UQ_project_code(code),
  CONSTRAINT FK_project_customer_id FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO project(code, name, balance, currency, locked, customer_id) VALUES('00001', 'PROJECT ABC', 30000.00, 'USD', 0, 1);
INSERT INTO project(code, name, balance, currency, locked, customer_id) VALUES('00002', 'PROJECT DEF', 20800.00, 'PEN', 0, 2);
