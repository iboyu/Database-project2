# Database-project2

Description：  
After the long discussions with the LoyaltyFirst Inc. representatives, the group decided to use the following ER diagram for 
representing the Loyalty program database. Your task in this project component is to translate the ER diagram into a relational 
schema on the Oracle database. In other words you need to convert the ER entities and relationships into relational database 
tables satisfying the business rules and constraints. Apply the procedures we discussed in class to map the entities, attributes, 
and the Many-to-Many, 1-to-Many, and 1-to-1 relationships in the ER diagram to relational database tables. The following is the set 
of steps you need to apply in this project component:  

1.	Study and understand the structure of the ER diagram. Stand on the significance of each entity, its attributes, and relationship(s) 
with other entities in the database. You should end up with 17 relational tables if you did the mapping correctly. If you find anything 
ambiguous in the diagram including the entities, attributes, and relationships, refer back to the LoyaltyFirst Inc. representatives 
2.	Translate the entities, attributes, and relationships in the ER diagram into their respective relational tables using the 
CREATE TABLE SQL statement. Make sure that your tables represent a valid mapping of the Many-to-Many, 1-to-Many, and 1-to-1 relationships 
in the ER diagram and, accordingly, they contain the correct attributes, primary key, and foreign key constraints.  
3.	Store your CREATE TABLE SQL statements in a single .sql script using Oracle SQL Developer. Your .sql file should be named as 
follows: P2_[Your Last Name]_[Your GMUID].sql. For instance, if John Smith with GMUID: G12345678 were to submit this file, John would 
name it: P2_Smith_G12345678.sql  
4.	Execute your .sql file on the GMU Oracle server and make sure that all the tables are created successfully.  
5.	The rubric for grading this component is very simple. For each correct CREATE TABLE SQL statement you will receive 5 pts 
(totalling to 17x5 = 85 pts). 15 point will be awarded for the successful execution of the .sql database creation script on the 
Oracle server. A bonus of 5 pts will be given for the correct realization of the aggregation structure containing the Customers and Prizes 
entities and the corresponding relationships with ExchgCenters and PointAccounts.  


**Hint and Naming Convention: **  

1.	Use the same entity and attribute names as specified in the ER diagram in your relational table specifications.  
2.	As you already know, Many-to-Many relationships between two entities in the ER diagram result in creating a third 
table to represent this relationship. To make it clearer with an example, the Many-to-Many relationship between the Offers 
and Transactions entities in the ER diagram is realized using 3 relational tables: Offers, Transactions, and a third table 
linking the Offers to Transactions. Name this third table after the two entities participating in the Many-to-Many relationship. 
In our example, let it be named Offers_Transactions.  Apply this naming convention when mapping the Many-to-Many relationships 
in the ER diagram to the relational tables on Oracle.   

![image](https://user-images.githubusercontent.com/71203848/207954617-93502ff0-d418-45e0-91ce-f4bfc391b674.png)
