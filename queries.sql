select "Total Rows";
select count(1) from calls;

.timer on

select "Call counts by priority";

select Priority, count(1) 
  from calls
 group by Priority;

select "Call counts by sector (location)";

select Sector, count(1) as count 
  from calls 
 group by Sector 
 order by count desc;

select "Description counts";
select `Event Clearance Description`, count(1) as count 
  from calls 
 group by `Event Clearance Description` 
 order by count desc;

select "Physical arrests made by sector";

select Sector, count(1) as count 
  from calls 
 where `Event Clearance Description` = "PHYSICAL ARREST MADE" 
 group by Sector 
 order by count desc;
