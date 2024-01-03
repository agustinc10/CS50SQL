CREATE TABLE IF NOT EXISTS "students" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "enrollments" (
    "id" INTEGER,
    "student_id" INTEGER,
    "course_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("student_id") REFERENCES "students"("id"),
    FOREIGN KEY("course_id") REFERENCES "courses"("id")
);
CREATE TABLE IF NOT EXISTS "courses" (
    "id" INTEGER,
    "department" TEXT NOT NULL,
    "number" INTEGER NOT NULL,
    "semester" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "satisfies" (
    "id" INTEGER,
    "course_id" INTEGER,
    "requirement_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("course_id") REFERENCES "courses"("id"),
    FOREIGN KEY("requirement_id") REFERENCES "requirements"("id")
);
CREATE TABLE IF NOT EXISTS "requirements" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    PRIMARY KEY("id")
