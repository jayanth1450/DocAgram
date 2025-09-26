-- Create database
CREATE DATABASE IF NOT EXISTS docagram;

-- Use the database
USE docagram;

-- Create User table
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(80) UNIQUE NOT NULL,
    password_hash VARCHAR(128) NOT NULL
);

-- Create File table
CREATE TABLE IF NOT EXISTS file (
    id INT AUTO_INCREMENT PRIMARY KEY,
    original_filename VARCHAR(255) NOT NULL,
    file_size INT NOT NULL,
    compressed_size INT NOT NULL,
    compressed_data LONGBLOB NOT NULL,
    file_hash VARCHAR(64),
    download_count INT DEFAULT 0,
    upload_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    uploaded_by INT NOT NULL,
    is_public BOOLEAN DEFAULT TRUE,
    description VARCHAR(255),
    FOREIGN KEY (uploaded_by) REFERENCES user(id)
);

-- Optional: Create a user with privileges (adjust password as needed)
-- GRANT ALL PRIVILEGES ON docagram.* TO 'root'@'localhost' IDENTIFIED BY 'root';
-- FLUSH PRIVILEGES;
