# Online Movie Ticket Booking System

## 📌 Project Overview
This project is a database-driven application that simulates the core functionalities of an online movie ticket booking platform. It demonstrates the use of stored procedures in MySQL—both with parameters and without parameters—to handle various operations such as booking tickets, viewing show schedules, managing user feedback, and more.

## The system allows users to:
1. View movie listings and showtimes
2. Book movie tickets
3. Manage user information
4. Submit and view reviews/feedback

## 💻 Tech Stack
* Database: MySQL
* Procedures: Stored Procedures (with & without parameters)
* Tools: MySQL Workbench

## 📂 Database Schema

The following tables are used:
* Web_user: Stores user details.
* Theatre: Stores information about theatres.
* Screen: Each theatre can have multiple screens.
* Movie: Stores movie details.
* Shows: Contains show timings for movies on screens.
* Booking: Stores booking information.
* Ticket: Stores ticket details linked to bookings.


## ⚙️ Stored Procedures

## ✅ With Parameters
These stored procedures accept input values to perform specific actions dynamically.

## Examples:
get_movie_by_id(001); CREATE A STORED PROCEDURE TO GET DETAILS OF A MOVIE BY MOVIE ID.

get_screen_by_theatre('T01'); CREATE A STORED PROCEDURE TO FETCH ALL SCREEN IN A SPECIFIC THEATRE

get_bookings_by_user(120); CREATE A STORED PROCEDURE TO FETCH BOOKING DETAILS FOR A PARTICULAR USER

delete_user('100'); CREATE A STORED PROCEDURE TO DELETE A USER BY ID

## 🔁 Without Parameters
These procedures do not require input parameters and usually retrieve or process general data.

## Examples:
get_all_movies(); CREATE A STORED PROCEDURE TO DISPLAY ALL MOVIES AVAILABLE IN THE SYSTEM

get_all_theatres(); CREATE A STORED PROCEDURE TO LIST ALL THEATRES AND THEIR LOCATIONS

get_all_upcoming_shows(); CREATE A STORED PROCEDURE TO DISPLAY ALL UPCOMING SHOWS WITH DATE AND TIME

get_all_bookings(); CREATE A STORED PROCEDURE TO SHOW ALL BOOKED TICKETS

## 📊 Key Features

1. Modular stored procedures for efficient database operations.
2. Dynamic ticket booking using procedure with parameters.
3. Movie listing and feedback viewing using procedures without parameters.
4. Clean, normalized relational schema for scalability.

## 🚀 How to Run

1. Import the database schema and tables into your MySQL instance.
2. Create the stored procedures (use the provided .sql files or manual scripts).
3. Use MySQL Workbench or another GUI to call procedures for demo/testing.
4. Optionally, connect it to a web or desktop frontend.

## 📎 Use Case Scenarios

1. Book a ticket for a specific show by calling a procedure with show ID and user ID.
2. List all available movies using a no-parameter procedure.
3. Search for a movie using a parameter-based procedure for dynamic lookup.
4. Display today’s shows using a simple no-parameter procedure.

## 📈 Learning Outcomes

1. Gain practical experience with stored procedures in MySQL.
2. Understand the difference between parameterized and non-parameterized procedures.
3. Apply database normalization and relational integrity in a real-world project.
4. Improve SQL query writing and backend database management skills.
