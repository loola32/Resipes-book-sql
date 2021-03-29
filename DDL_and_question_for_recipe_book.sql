--create a table that has two columns: left_page and right_page
--that shows all recipes in the book.
--for example for the book page numbers given, the esult would be:
'''
--original table
--+---+------------+-------------
--|page_no    |title            |
-------------------------------
--|1          |Scramblled eggs  |
--|2          |Fonsu            |
--|3          |Sandwich         |
--|4          |Tomato Soup      |
--|6          |Liver            |

'''
----------------------------
---left_page|||right_page
---------------------------
--  NULL  	    ||	Scrambledd eggs
--  Fondu	      ||  Sandwich
--  Tomato soup || 	NULL
--  Liver		    ||  NULL  


create table recipes 
(page_no integer(2),
title varchar(15)
);


insert into recipes (page_no, title) values (1,'Scramblled Eggs');
insert into recipes (page_no, title) values (2,'Fondu');
insert into recipes (page_no, title) values (3,'Sandwich');
insert into recipes (page_no, title) values (4,'Tomato Soup');
insert into recipes (page_no, title) values (6,'Liver');
