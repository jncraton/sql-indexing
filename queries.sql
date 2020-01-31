.timer on

-- Call counts by priority
select Priority, count(1) 
  from calls
 group by Priority;


-- Call counts by sector (location)
select Sector, count(1) as count 
  from calls 
 group by Sector 
 order by count desc;


-- Call counts by description
select `Event Clearance Description`, count(1) as count 
  from calls 
 group by `Event Clearance Description` 
 order by count desc;

-- Physical arrests made by sector
select Sector, count(1) as count 
  from calls 
 where `Event Clearance Description` = "PHYSICAL ARREST MADE" 
 group by Sector 
 order by count desc;
