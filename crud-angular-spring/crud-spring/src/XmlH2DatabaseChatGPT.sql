CREATE TABLE courses (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         description VARCHAR(255) NOT NULL,
                         xml_data XML NOT NULL
);

INSERT INTO courses (name, description, xml_data)
VALUES ('Intro to XML', 'Learn the basics of XML', '<course><level>Beginner</level><duration>8 hours</duration></course>');

CREATE TABLE XMLCourses (
                            id INT AUTO_INCREMENT PRIMARY KEY,
                            name VARCHAR(100) NOT NULL,
                            category VARCHAR(10) NOT NULL,
                            status VARCHAR(10) NOT NULL DEFAULT 'Ativo'
);

INSERT INTO XMLCourses (name, category, status)
VALUES ('Java Fundamentals', 'Back-end', 'Ativo');
