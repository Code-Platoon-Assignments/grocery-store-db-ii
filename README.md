# Grocery Store Schema II

See [cars database](https://github.com/echoplatoonew/cars_database) & [grocery store database](https://github.com/echoplatoonew/grocery-store-db) for reference.  

Dummy data was generated from [https://www.mockaroo.com/](https://www.mockaroo.com/).

## Usage
Run 
```bash
./setup.sh
```
You should end up in the postgres repl of your container with data loaded and ready to query.

### Postgres User Mismatch

If you don't have postgres set up on your local machine to use a `postgres` username, you may run into an issue in Docker where the container exits out immediately after running due to a failure to run initdb.

If this is the case, you can try updating the `COPY` command in the dockerfile to explicitly grant ownership of the local init.sql to a `postgres` user within your dockerized container.
```
COPY --chown=postgres init.sql /docker-entrypoint-initdb.d/init.sql
```

## Query Exercises

Write SQL queries into the `solutions.sql` file that will return answers to the following questions:

1. How much has Bertine spent across all her orders?
2. What kind of cheese does Donni like?
3. How many emulsifiers have been ordered?
4. How many times has a muffin product been ordered?
5. What is the third most expensive item?
6. Who were the last five customers to place orders?
7. How many customers use Google email addresses?
8. What items cost more than $50 but less than $75?
9. What alcoholic beverages are available?
10. What items were in the 10th order ever placed?
11. How many orders has Marilee placed?

## Schema Exercises

You may have noticed by now that the current schema is a bit rudimentary.  For example, rather than having a quantity column for items within an order, these same items repeat as additional rows.

Using the Quick Database Diagram website, update your grocery schema to allow for the following changes.  How you implement this is up you.

1. Items should have an inventory count.
2. Customer orders should track the quantity of items within an order.
3. Customers should be able to collect reward points based off the number of orders they've placed.
4. Customers should be able to receive additional discounts based on the amount of reward points they wish to use for an order.

Stretch goal:
Use SQL commands to implement your adjustments to the grocery schema.  If you prefer, you can do this straight from the terminal, pasting your commands into the schema_update.sql file once you're happy with the results.