# Greenspot-Grocer-store-MYSQL-database
Greenspot Grocer is a (fictional) small, family-owned online grocery store that is growing rapidly and planning a major expansion,this database is an optional method to recording everyday transactions of the store as it expands.


_______________________________
Database Testing:
_______________________________
Proof that data can be retrieved from all of the tables in one query

   ///        select* from
              ( select items.item_num,`description`,item_type,Location,quantity,quantity_on_hand ,purchase_date,cost,vendor
              from  items inner join purchases 
              on items.item_num=purchases.item_num  ) AS b 

              union
              (select 
              items.item_num,`description`,item_type,Location,quantity,quantity_on_hand ,date_sold,price,customers 
              from items
              left join sales
             on items.item_num=sales.item_num);



One or more queries that demonstrate the joining of tables with SQL code
///   select*from items inner join purchases
      on items.item_num=purchases.item_num order by trans_date asc;
	
///   select*from items inner join sales
       on items.item_num=sales.item_num;



Query to display all the purchsed items/inventory.
// select
   items.item_num,`description`,item_type,Location,quantity,quantity_on_hand ,purchase_date,cost,vendor
   from items inner join purchases
   on items.item_num=purchases.item_num;
   

Query to display all the sold items so far by the store
//   select 
     items.item_num,`description`,item_type,Location,quantity,quantity_on_hand ,date_sold,price,customers 
     from items
     left join sales
     on items.item_num=sales.item_num;






__________________________
Insights and Conclusions:
____________________________
1.	A description of the anomalies and potential problems in the original sample dataset.
>>Purchases and sales were recorded in the same spreadsheet which made it difficult to easily count the number of either they have made so far.

>>It is difficult to keep track of the number of quantity of an item at hand on the original sampledataset.

>>It was difficult just extract a record of a specific item only on the original sample data set

>>Dates of transactions are all mixed up and it would take deleting and re-entering data afresh to arrange them in order by date which is much easier to do using the database.

>>If the store was to introduce a new item, they would need to see if the item number they are assigning the item is not already in use which involves rigorous analysis over time.
2.	An explanation of how the database design addresses those anomalies and potential problems, how and why the database design will support the growth of the business as the product lines are expanded.
>>The database makes easer to keep track of purchases and sales, you can update an item’s item number or description and it would be update in all the other fields in just one query.

>>You can retrieve transactions of a single item only from the first transaction to the recent one in just a single query.

>>You can count the number of transactions either sales or purchases the store has made in seconds with just a single query.

>>You can insert a new transaction either sale or purchase by just entering an item’s item number, quantity, transaction date, price and the number of customers who bought the item with including information such as location of the item on the shelf or it unit of measurement etc.


3.	Suggestions for possible database additions or changes in the future that might make the database design even more valuable to the business.
>>Future changes may include assigning a fixed price to each item.

>>Designing a table of suppliers and their address including their email address and telephone numbers.

>>Abbreviation of column names would prove to make user access data quickly, by using common or obvious abbreviations.






