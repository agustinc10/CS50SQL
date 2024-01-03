CREATE TABLE "users" (
    "first_name" VARCHAR(32) NOT NULL,
    "last_name" VARCHAR(32) NOT NULL,
    "username" VARCHAR(32),
    "password" VARCHAR(128),
    PRIMARY KEY ("username")
);

CREATE TABLE schools (
    "name" VARCHAR(32) NOT NULL,
    "type" ENUM ('Primary', 'Secondary', 'Higher Education') NOT NULL,
    "location" VARCHAR(32) NOT NULL,
    "year" SMALLINT UNSIGNED,
    PRIMARY KEY ("name")
);

CREATE TABLE companies (
    "name" VARCHAR(32) NOT NULL,
    "industry" ENUM ('Technology', 'Education', 'Business') NOT NULL,
    "location" VARCHAR(32) NOT NULL,
    PRIMARY KEY ("name")
);

CREATE TABLE user_user (
    "user A" VARCHAR(32) NOT NULL,
    "user B" VARCHAR(32) NOT NULL,
    FOREIGN KEY ("user A") REFERENCES "users"("username"),
    FOREIGN KEY ("user B") REFERENCES "users"("username")
);

CREATE TABLE user_school (
    "username" VARCHAR(32) NOT NULL,
    "school" VARCHAR(32) NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE,
    "degree" VARCHAR(32) NOT NULL,
    FOREIGN KEY ("username") REFERENCES "users"("username"),
    FOREIGN KEY ("school") REFERENCES "schools"("name")
);

CREATE TABLE user_company (
    "username" VARCHAR(32) NOT NULL,
    "company" VARCHAR(32) NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE,
    "title" VARCHAR(32) NOT NULL,
    FOREIGN KEY ("username") REFERENCES "users"("username"),
    FOREIGN KEY ("company") REFERENCES "companies"("name")
);
