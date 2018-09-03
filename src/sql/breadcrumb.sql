CREATE TABLE breadcrumb(
  name   VARCHAR(80) PRIMARY KEY,
  href   VARCHAR(2083) UNIQUE NOT NULL,
  parent VARCHAR(80),
  level  INT NOT NULL
);

SELECT * FROM breadcrumb;

INSERT INTO breadcrumb
VALUES('Home', '/', NULL, -1);

INSERT INTO breadcrumb
VALUES('Writeup', '/writeup/', 'Home', 0);

INSERT INTO breadcrumb
VALUES('OverTheWire', '/writeup/overthewire/', 'Writeup', 1);

INSERT INTO breadcrumb
VALUES('Bandit', '/writeup/overthewire/bandit/', 'OverTheWire', 2);

INSERT INTO breadcrumb
VALUES('Natas', '/writeup/overthewire/natas/', 'OverTheWire', 2);

INSERT INTO breadcrumb
VALUES('Leviathan', '/writeup/overthewire/leviathan/', 'OverTheWire', 2);

INSERT INTO breadcrumb
VALUES('Vulnhub', '/writeup/vulnhub/', 'Writeup', 1);