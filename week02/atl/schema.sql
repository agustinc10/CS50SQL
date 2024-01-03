CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "check-ins" (
    "id" INTEGER,
    "passenger_id" INTEGER NOT NULL,
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "flight" INT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY ("flight") REFERENCES "flights"("flight")
);

CREATE TABLE "airlines" (
    "name" TEXT NOT NULL,
    "concourse" TEXT,
    PRIMARY KEY ("name")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight" INT NOT NULL,
    "airline_name" TEXT NOT NULL,
    "code_dep" TEXT NOT NULL,
    "code_dest" TEXT NOT NULL,
    "dep_datetime" NUMERIC NOT NULL,
    "arr_datetime" NUMERIC NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("airline_name") REFERENCES "airlines"("name")
);
