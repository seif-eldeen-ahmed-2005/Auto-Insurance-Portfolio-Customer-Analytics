create database Insurance_Task;
use Insurance_Task;
create schema Insurance_Task;
create table Dim_Offers(
Channel_Offer_ID varchar(30) Primary key,
Renew_Offer_Type varchar(6),
Sales_Channel varchar(12));
create table Dim_Policies(
Policy varchar(15) primary key,
Policy_Type varchar(15));
create table Dim_Dates(
Effective_To_Date date primary key);
create table Dim_Vehicles(
Vehicle_ID varchar(20) primary key,
Vehicle_Size varchar(10),
Vehicle_Class varchar(15));
create table Dim_Customers(
Customer varchar(15) primary key,
Response varchar(3),
Coverage varchar(8),
Education varchar(25),
Employment_Status varchar(20),
Gender varchar(1),
Income int,
Marital_Status varchar(15));
create table Fact_Insurance(
Customer varchar(15),
Vehicle_ID varchar(20),
Channel_Offer_ID varchar(30),
Policy varchar(15),
Customer_Lifetime_Value decimal(10, 2),
Effective_To_Date date,
Monthly_Premium_Auto int,
Months_Since_Last_Claim int,
Months_Since_Policy_Inception int,
Number_of_Open_Complaints int,
Number_of_Policies int,
Total_Claim_Amount decimal(10, 2));
select * from Dim_Customers;
SELECT * from Dim_Dates;
select * from Fact_Insurance;





