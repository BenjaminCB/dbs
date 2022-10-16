CREATE TABLE part (
  partID varchar(10) PRIMARY KEY,
  name varchar(30),
  cost integer
);

CREATE TABLE subpart (
  partID varchar(10) REFERENCES part(partID),
  subpartID varchar(10) REFERENCES part(partID),
  count integer,
  PRIMARY KEY(partID, subpartID)  
);

INSERT INTO part VALUES
  ('P-100', 'Part P-100', 100),
  ('P-200', 'Part P-200', 200),  
  ('P-300', 'Part P-300', 300),
  ('P-400', 'Part P-400', 400);
  
INSERT INTO part(partID, name) VALUES
  ('P-110', 'Part P-110'),
  ('P-120', 'Part P-120'),  
  ('P-130', 'Part P-130'),
  ('P-210', 'Part P-210'),
  ('P-220', 'Part P-220'),  
  ('P-310', 'Part P-310'),  
  ('P-111', 'Part P-111'),
  ('P-112', 'Part P-112'),  
  ('P-121', 'Part P-121'),
  ('P-122', 'Part P-122'),
  ('P-123', 'Part P-123'),  
  ('P-211', 'Part P-211'),
  ('P-311', 'Part P-311'),  
  ('P-312', 'Part P-312'),
  ('P-313', 'Part P-313'),
  ('P-314', 'Part P-314');

INSERT INTO subpart VALUES
  ('P-100', 'P-110', 2),
  ('P-100', 'P-120', 4),  
  ('P-100', 'P-130', 6),  
  ('P-200', 'P-210', 2),
  ('P-200', 'P-220', 4),  
  ('P-300', 'P-310', 2),  
  ('P-110', 'P-111', 1),
  ('P-110', 'P-112', 1),  
  ('P-120', 'P-121', 1),  
  ('P-120', 'P-122', 1),
  ('P-120', 'P-123', 1),  
  ('P-210', 'P-211', 2),  
  ('P-310', 'P-311', 1),  
  ('P-310', 'P-312', 1),
  ('P-310', 'P-313', 1),  
  ('P-310', 'P-314', 2);