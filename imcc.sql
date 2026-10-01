
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

 
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  hire_date DATE NOT NULL,
  department_id INT,
  CONSTRAINT fk_department 
        FOREIGN KEY (department_id) 
        REFERENCES departments(department_id)
        ON DELETE SET NULL
        );
INSERT INTO departments (department_id, department_name, location) VALUES
(1, 'Human Rights', 'kolkata'),
(2, 'cyber anylist', 'mumbai'),
(3, 'Marketing', 'dilhi'),
(4, 'Sales', 'Dubai'),
(5, 'HR management', 'pune');

INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, department_id) VALUES
(101, 'krishna', 'imfosys', 'krishnagarudkar1212@gmail.com', '2026-01-15', 2),
(102, 'vikas', 'kirlosker', 'vikas@gmail.com', '2026-02-20', 2),
(103, 'om', 'labhshetwar', 'omlabhshetwar@gmail.com', '2024-11-05', 1),
(104, 'yash', 'khurdamoje', '.com', '2021-08-12', 3),
(105, 'rutuja', 'Davis', 'evan.davis@example.com', '2023-05-10', 4),
(106, 'krishna', 'Garcia', 'fiona.garcia@example.com', '2020-03-22', 2),
(107, 'Gauri', 'Miller', 'george.miller@example.com', '2023-07-01', 4),
(108, 'Anushka', 'Martinez', 'hannah.martinez@example.com', '2019-12-01', 1),
(109, 'umaish', 'Rodriguez', 'ian.rodriguez@example.com', '2022-09-18', 2),
(110, 'rooturaj', 'Ghorpade', 'julia.lee@example.com', '2021-04-30', 3);