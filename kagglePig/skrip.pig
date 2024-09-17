data = LOAD 'C:/Users/Raymond/Desktop/kagglePig/Salary.csv' USING PigStorage(',') AS (department:chararray, employee:chararray, salary:int);

filtered_data = FILTER data BY salary > 70000;

grouped_data = GROUP filtered_data BY department;

department_count = FOREACH grouped_data GENERATE 
                   group AS department, 
                   COUNT(filtered_data) AS employee_count;

STORE department_count INTO 'C:/Users/Raymond/Desktop/kagglePig/output' USING PigStorage(',');