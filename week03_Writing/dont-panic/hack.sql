INSERT INTO "user_logs" ("type", "old_username", "old_password", "new_password")
SELECT 'update', "admin", (
       SELECT "password"
         FROM "users"
        WHERE "username" = 'admin'
       ), (
       SELECT "password"
         FROM "users"
        WHERE "username" = 'emily33'
);

UPDATE "users"
   SET "password" = '982c0381c279d139fd221fce974916e7'
 WHERE "username" = 'admin';

DELETE FROM "user_logs"
 WHERE "new_password" = '982c0381c279d139fd221fce974916e7';


