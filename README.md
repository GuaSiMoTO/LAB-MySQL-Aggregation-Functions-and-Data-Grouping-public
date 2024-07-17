![](https://user-images.githubusercontent.com/970858/63474771-d6734700-c469-11e9-83bb-9429da563909.png)

# LAB-SQL-Aggregation-Functions-and-Data-Grouping

## Introduction

In today's lessons we learned in depth about SQL aggregate queries, and we are going to practice all of them in Sakila, one of MySQL example databases.

## Requirements

- [Learn how to fork this repo](https://guides.github.com/activities/forking/)
- Clone this repo into your `code/labs` folder
- Have MySQL installed
- Have TablePlus installed
- Having Sakila already imported in your database

## Sakila

The goal of this lab is for you to practice querying a real database, and getting used to more complex queries than what we have used until now. To do that, we are going to use a shorter version of **Sakila**, an example database provided by MySQL that stores all information related to managing a small Movie Rental shop.

The **Sakila** sample database was initially developed to provide a standard schema that can be used for examples in books, tutorials, articles, samples, and so forth. [More information here](https://dev.mysql.com/doc/sakila/en/sakila-introduction.html)

## Before you start

Before querying any database it is first important to understand how it has been designed. MySQL provides the Diagram with the design and information on each table. You can read them here:

- [Database Schema](https://dev.mysql.com/doc/sakila/en/sakila-structure.html)
- [Tables](https://dev.mysql.com/doc/sakila/en/sakila-structure-tables.html)

Read them and familiarize yourself with the database.

## Importing the Database

Instructions to import the database were detailed [in previous labs](https://github.com/rebootacademy-labs/LAB-SQL-Queries).

## Intructions

Write and test the queries needed to solve each of the following questions. All of them can be resolved in a single query by using join queries.

1. Use the "COUNT()" function to find the total number of events in the database.

2. Use the "AVG()" function to display the average cost per unit of resources in the economy.

3. Use the "SUM()" function to calculate the total amount of resources in the economy.

4. Use the "MAX()" function to find the maximum power level for all weaponry.

5. Use the "MIN()" function to display the minimum quantity of items in storage.

6. Calculate the average quantity of items in storage.

7. Find the number of missions led by each leader using "COUNT()" and "GROUP BY".

8. Display the total amount of each resource type in the economy.

9. Calculate the average power level of weaponry for each type.

10. Find the total amount of resources stored in each location.

11. Display the number of events that occurred at each location.

12. Calculate the average cost per unit for each resource type in the economy.

13. Find the total amount of resources managed by each storage location.

14. Display the number of events that involved each character.

15. Calculate the average power level of weaponry for each location.

16. Display the number of missions that started in each month.

17. Calculate the average quantity of items in storage for each item type.

18. Display the number of events that occurred in each sector.

19. Calculate the average rental rate for each species.

20. Display the number of events that involved each character in each sector.

21. Calculate the average event duration for each type of mission.

## Deliverables

This README.md file edited to include the query or queries needed to solve each question.

## Submission

Upon completion, run the following commands:

```
$ git add .
$ git commit -m "done"
$ git push origin master
```

Then create a Pull Request!!


![happy_coding](https://user-images.githubusercontent.com/970858/63899010-c23fc480-c9ea-11e9-84a2-542907e42362.png)
