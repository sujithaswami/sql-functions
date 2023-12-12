use practice;
create table practice.employe(
id int primary key auto_increment,
name varchar(30) not null,
salary bigint not null,
state varchar(20) not null,
country varchar(20)  not null default ('india'),
inactive bit default(1)
);

insert into employe(name, salary, state, country, inactive) values(' sujitha', 50000, 'Ap', 'india', 1),(' anusha ', 40000, 'texas', 'usa', 1),('madhu', 60000, 'ts', 'india', 1),
('amar ', 55000, 'ts', 'india',1),('mani', 100000, 'dallas', 'usa', 1);
insert into employe(name, salary, state, country, inactive) values('   sri', 30000, 'ts', 'india', 1),('    manju   ', 35000, 'ap', 'india', 1),('durga     ', 450000, 'ap', 'india', 1);

select count(id) from employe;
select count(*) from employe; select * from employe;
drop table employe;
select max(salary) from employe; 
select min(salary) from employe;
select avg(salary) from employe;

select count(id)  from employe where state='ts'; 
select count(id) from employe where state='ap';

select state, count(id)  as noofemploye from employe group by state;
select country, state, count(id) as noofemploye from employe where salary>=50000 group by state, country;

select country, state, count(id) as noofemploye from employe where salary>=50000 group by state, country having count(id)>=1;
select trim(name )as trimemploye from employe ;
select ltrim(name)as trimemploye from employe ;
select rtrim(name )as trimemploye from employe ;
select length(name) as len from employe;


select right(name, 3) from employe;
select left(name, 3) from employe;
select lower(name) from employe;
select upper(name) from employe;

select now();
select current_date();
select month();
select current_time();

select if(salary>=50000, 'yes', 'no') as salary from employe;

