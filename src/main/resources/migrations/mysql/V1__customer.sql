CREATE TABLE customer (
  customer_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  identity_document VARCHAR(20) NOT NULL,
  active BIT NOT NULL,
  PRIMARY KEY(customer_id),
  INDEX IX_customer_last_first_name(last_name, first_name),
  UNIQUE INDEX UQ_customer_identity_document(identity_document)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customer(first_name, last_name, identity_document, active) VALUES('Richar', 'Fenandez', '11111111', 1);
INSERT INTO customer(first_name, last_name, identity_document, active) VALUES('Adaia', 'Silvera', '22222222', 1);
