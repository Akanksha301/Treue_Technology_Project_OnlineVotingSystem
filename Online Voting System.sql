use Onlinevotingsystem;

Create table register(
name varchar(30) not null,
fname varchar(30) not null,
sname varchar(30) not null,
email varchar(30) not null,
contact varchar(30) not null,
gender varchar(30) not null,
dob varchar(30) not null,
vno varchar(30) not null,
password varchar(30) not null,
constraint pk primary key(email),
constraint u1 unique(contact),
constraint ck2 check (length(contact)=10)
);
 
 select * from register ;
 
 
 create table electiona(
 name varchar(20) not null ,
 fname varchar(20) not null,
 sname varchar(20) not null,
 vno varchar(20) not null,
 elected char(3) not null,
 constraint pk primary key(vno)
 );
 

 
select * from electiona ;

 create table electiona(
email varchar(50) not null,
 vno varchar(20) not null,
 elected char(3) not null,
 constraint pk primary key(vno),
 constraint u1 unique(email)
 );
 
 create table electionb(
email varchar(50) not null,
 vno varchar(20) not null,
 elected char(3) not null,
 constraint pk primary key(vno),
 constraint u1 unique(email)
 );
 
 