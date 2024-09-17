students = LOAD 'C:/Users/Raymond/Desktop/students.txt' USING PigStorage(',') AS (name:chararray, age:int, gpa:float);
filtered_students = FILTER students BY gpa > 3.0;
grouped_by_age = GROUP filtered_students BY age;
-- DUMP grouped_by_age;
STORE grouped_by_age INTO 'C:/Users/Raymond/Desktop/output' USING PigStorage(',');