CREATE fitness_center;

USE fitness_center;

CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NULL
);

CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    session_date DATE NOT NULL,
    session_time VARCHAR(50) NOT NULL,
    activity VARCHAR(255) NOT NULL,
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO members (name,age)
VALUES ('HN Gibson',35),('Maggie Gibson',31),('Jane Doe',28),('John Smith',25);

INSERT INTO workoutsessions (member_id, session_date, session_time, activity)
VALUES (1,'2024-10-1','afternoon','weights'),(2,'2024-10-1','morning','running'),(3,'2024-10-1','morning','swimming'),(4,'2024-10-1','evening','yoga')

UPDATE workoutsessions 
SET session_time = 'evening'
WHERE member_id = 3;

DELETE FROM workoutsessions
WHERE member_id = 4;

DELETE FROM members
WHERE id = 4;