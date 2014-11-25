# Create a new database called classmates_db inside of that database create a table called classmates.
# You can choose what columns and types you use in this table but you must at least have columns for a
# students first name, last name, and twitter handle(1).

  //Create Database
    createdb classmates_db

  //Create Table in Database

    CREATE TABLE classmates(
    first_name VARCHAR,
    last_name VARCHAR,
    twitter_handle VARCHAR
    );

____________________________________________________________________________________________________________

# Write a method that establishes a connection to your database and returns that connection object.
# Remember: this is the object on which you will call the method exec in order to send your queries to the database.

  require 'pg'

  db = PG.connect(host: 'localhost', dbname: 'classmates_db')
____________________________________________________________________________________________________________

# Once you have all the necessary information from the user insert a new record into the classmates table.

  result = db.exec("insert into classmates values('tricia', 'mctigrit', '@tmctigrit')")

____________________________________________________________________________________________________________

# View all records

  all_records = db.exec("select * from classmates")

  all_records.entries

____________________________________________________________________________________________________________

# Delete a particular record

  db.exec("delete from classmates where last_name = 'pappan'")

____________________________________________________________________________________________________________

# Update a particular record

  db.exec("update classmates set twitter_handle = '@triciamct' where last_name = 'mctigrit'")


# Figure out a way to insert multiple records at once so that you do not have to send 10 queries to insert 10 records.

  db.exec("insert into classmates values('john', 'doe', '@johnnydoe'),('rosanna', 'rangel', '@rosier'),('deena', 'davis', '@ddavis')")








