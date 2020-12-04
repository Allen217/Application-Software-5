use studentinfo;
create table class(id int,name char(10));
insert into class (id,name)values(1,"AKSHAY"),(2,"aby"),(3,"anand"),(4,"herman");
select * from class;

insert into class values (5,"mateus");
commit;

update class set name="poornima" where id="5";
savepoint A;
insert into class values(6,"mandy");
savepoint B;
insert into class values(7,"michael");
savepoint C;

select * from class;

rollback to B;
select * from class;

rollback to A;
select * from class;