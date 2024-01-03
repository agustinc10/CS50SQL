CREATE TABLE ingredients (
    "ingredient" TEXT,
    "price_per_unit" NUMERIC NOT NULL,
    PRIMARY KEY ("ingredient")
);

CREATE TABLE donuts (
    "name" TEXT,
    "gluten-free" TEXT NOT NULL,
    "price_per_donut" NUMERIC NOT NULL,
    "ingredient" TEXT NOT NULL,
    PRIMARY KEY ("name"),
    FOREIGN KEY ("ingredient") REFERENCES "ingredients"("ingredient")
);

CREATE TABLE orders (
    "id" INTEGER,
    "donut" TEXT NOT NULL,
    "customer_id" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut") REFERENCES "donuts"("name")
);

CREATE TABLE customers (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT,
    "order_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id")
);

