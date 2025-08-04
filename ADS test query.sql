create table Course(
    CourseID varchar(100) not null,
    CourseName varchar(1000),
    Price real,
    PRIMARY Key (CourseID)
);

create table Orders (
    OrderID varchar(100) not null,
    CourseID varchar(100),
    CustomerID int,
    DiscountPercent int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);


SELECT * FROM Student;
select * from course;
select * from orders;


INSERT INTO Course(CourseID,CourseName,Price) VALUES ('C1','AZ-900',99.01);
INSERT INTO Course(CourseID,CourseName,Price) VALUES ('C2','DP-900', 100.99);
INSERT INTO Orders VALUES ('SO1','C1',101,20);
INSERT INTO Orders VALUES ('SO2', 'C2',102, 50);
