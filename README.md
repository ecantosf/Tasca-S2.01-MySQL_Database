2.1-MySQL_Database
MySQL Java Version

This repository contains the relational database design exercises for Sprint 2. The project focuses on Entity-Relationship (ER) modeling and its implementation using MySQL.

📂 Project Structure
The repository is organized into two difficulty levels, each contained within its respective folder:

🚀 Level 1
Relational structure design and foreign key management.

Ex 1 - "Cul d'Ampolla" Optician's: A management system for suppliers, customers, eyewear, and sales. It includes logic for customer referrals and employee-to-sale assignment.

**Queries included:

List the total purchases of a specific customer.

List the different eyewear models sold by an employee during a year.

List the different suppliers that have sold eyewear successfully through the store.

Ex 2 - Pizzeria: A delivery order system. Features management of provinces/cities, product categories (pizzas, burgers, drinks), and logistics for stores and employees.

**Queries included:

List how many "Drinks" have been sold in a specific locality.

List how many orders a specific employee (repartidor/driver) has delivered.

🚀 Level 2
Complex system design with multiple cross-relationships.

Ex 1 - YouTube (Reduced Version): Modeling of a video platform. Includes user management, channels, subscriptions, playlists, comments, and a like/dislike system with time-stamped logs.
🛠️ Technologies & Tools
Language: Java JDK 21.0.6 (Used for business logic/connection scripts).
Database Management: MySQL Server
Design IDEs:
Dbeaver
MySQL Workbench
Version Control: Git.
📊 Entity-Relationship Diagrams (ERD)
Each exercise includes its SQL script and its corresponding diagram. The following logic was applied:

Normalization: Cities and provinces have been separated to avoid data redundancy.
N:M Relationships: Implemented for tag systems (YouTube) and order composition (Pizzeria).
Recursivity: Modeled in the Optician's customer table to handle the referral system.
📥 Installation
Clone the repository:

[git clone] (https://github.com/FedEx8525/2.1-MySQL_Database.git)

Import the database:

Open MySQL Workbench or DataGrip.
Execute the .sql file corresponding to each exercise located in the level1/ or level2/ folders.
🤝 Contributions
This is an educational project. Suggestions to optimize queries or improve the modeling of the diagrams are welcome.

Developed by [Eduard Cantos]