/*
CREATE VIEW "1" AS
SELECT substr("sentence", 98, 4)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 14);

CREATE VIEW "2" AS
SELECT substr("sentence", 3, 5)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 114);

CREATE VIEW "3" AS
SELECT substr("sentence", 72, 9)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 618);

CREATE VIEW "4" AS
SELECT substr("sentence", 7, 3)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 630);

CREATE VIEW "5" AS
SELECT substr("sentence", 12, 5)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 932);

CREATE VIEW "6" AS
SELECT substr("sentence", 50, 7)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 2230);

CREATE VIEW "7" AS
SELECT substr("sentence", 44, 10)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 2346);

CREATE VIEW "8" AS
SELECT substr("sentence", 14, 5)
  FROM (SELECT "sentence" FROM "sentences" WHERE id = 3041);
*/

CREATE VIEW "message" AS
SELECT
       (SELECT substr("sentence", 98, 4)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 14))|| ' ' ||
       (SELECT substr("sentence", 3, 5)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 114))|| ' ' ||
       (SELECT substr("sentence", 72, 9)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 618))|| ' ' ||
       (SELECT substr("sentence", 7, 3)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 630))|| ' ' ||
       (SELECT substr("sentence", 12, 5)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 932))|| ' ' ||
       (SELECT substr("sentence", 50, 7)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 2230))|| ' ' ||
       (SELECT substr("sentence", 44, 10)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 2346))|| ' ' ||
       (SELECT substr("sentence", 14, 5)
          FROM (SELECT "sentence" FROM "sentences" WHERE id = 3041))
       AS "phrase";
