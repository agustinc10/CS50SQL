CREATE TABLE users (
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT,
    "password" TEXT,
    PRIMARY KEY ("username")
);

CREATE TABLE schools (
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year" INT,
    PRIMARY KEY ("name")
);

CREATE TABLE companies (
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY ("name")
);

CREATE TABLE user_user (
    "user A" TEXT NOT NULL,
    "user B" TEXT NOT NULL,
    FOREIGN KEY ("user A") REFERENCES "users"("username"),
    FOREIGN KEY ("user B") REFERENCES "users"("username")
);

CREATE TABLE user_school (
    "username" TEXT NOT NULL,
    "school" TEXT NOT NULL,
    "start_date" NUMERIC NOT NULL,
    "end_date" NUMERIC,
    "degree" TEXT,
    FOREIGN KEY ("username") REFERENCES "users"("username"),
    FOREIGN KEY ("school") REFERENCES "schools"("name")
);

CREATE TABLE user_company (
    "username" TEXT NOT NULL,
    "company" TEXT NOT NULL,
    "start_date" NUMERIC NOT NULL,
    "end_date" NUMERIC,
    "title" TEXT,
    FOREIGN KEY ("username") REFERENCES "users"("username"),
    FOREIGN KEY ("company") REFERENCES "companies"("name")
);
