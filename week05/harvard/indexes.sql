CREATE INDEX "enrollment_index" ON "enrollments" ("student_id", "course_id");
CREATE INDEX "enrollment2_index" ON "enrollments" ("course_id","student_id");
CREATE INDEX "courses_department_index" ON "courses" ("department");
CREATE INDEX "courses_semester_index" ON "courses" ("semester");
CREATE INDEX "satisfies_index" ON "satisfies" ("requirement_id", "course_id");
CREATE INDEX "satisfies2_index" ON "satisfies" ("course_id","requirement_id");

