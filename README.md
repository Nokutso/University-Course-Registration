# 🎓 University Course Registration Database

## 📋 Project Description

This project is a **University Course Registration Database** designed using **MySQL** and modeled through an **Entity-Relationship Diagram (ERD)**. It simulates the process of students registering for courses, managed under various departments and taught by lecturers.

The system includes the following features:

* Manage students, lecturers, courses, and departments
* Handle course registrations per semester and academic year
* Enforce data integrity through primary keys, foreign keys, and unique constraints

---

## ⚙️ How to Set Up and Run

1. **Clone this repository**:

   ```bash
   git clone https://github.com/Nokutso/University-Course-Registration
   ```

2. **Open MySQL Workbench or your preferred SQL tool**

3. **Import the SQL file**:

   * Locate the `university_registration.sql` file in the repo
   * Run the script to create the full database with all tables and relationships

---

## 🧠 Entity-Relationship Diagram (ERD)

Below is the visual ERD used to design this database:

![ERD Picture](./University%20Course%20Registation.png)

> You can also view the ERD in full via [Lucidchart Link](https://lucid.app/lucidchart/4ef3ea16-32fe-482a-b256-36f3790411b8/edit?viewport_loc=-489%2C53%2C1888%2C1076%2C0_0&invitationId=inv_485fe9f3-569e-4651-97bd-7d821c74bb58)

---

## 📂 Repository Contents

* `student_course_db.sql` – Contains all `CREATE TABLE` statements with constraints
* `README.md` – Project overview and setup instructions
* `University Course Registration.png` – ERD visual


---

## 🧱 Tables Included

* `Student`
* `Lecturer`
* `Course`
* `Department`
* `CourseRegistration` (bridge/junction table for many-to-many relationship between students and courses)

---

## 🛠️ Technologies Used

* **MySQL**
* **Visual Studio Code** (to push the file and type a README)
* **Lucidchart** (for ERD design)

---

## 🧑🏾‍💻 Author

* Name: Sharon Nanayaa Nokutso Jack 
* Email: sharonanatso@gmail.com
* Github: [@Nokutso](https://github.com/Nokutso)

