# MySQL Student File Sharing App Setup Guide

## Prerequisites
- MySQL Server 8.0+
- Python 3.8+
- pip

## 1. Install MySQL
Download and install MySQL from [https://dev.mysql.com/downloads/mysql/](https://dev.mysql.com/downloads/mysql/).

## 2. Create Database and Tables
Run the provided `mysql_setup.sql` script in your MySQL client:

```
mysql -u root -p < mysql_setup.sql
```

## 3. Install Python Dependencies
Navigate to your project folder and run:

```
pip install -r requirements_mysql.txt
```

## 4. Configure Flask App
Edit `flask_mysql_app.py` and update the `SQLALCHEMY_DATABASE_URI` with your MySQL username and password.

## 5. Initialize Database
Run the Flask app once to create tables:

```
python flask_mysql_app.py
```

## 6. Run the Application
Start the Flask development server:

```
python flask_mysql_app.py
```

For production, use Gunicorn or similar WSGI server.

## 7. Access the App
Open [http://localhost:5000](http://localhost:5000) in your browser.

## Troubleshooting
- Ensure MySQL server is running
- Check database credentials
- Review error messages in the Flask console

---
This guide covers installation, configuration, and deployment for the Student File Sharing App with MySQL and ZIP compression.
