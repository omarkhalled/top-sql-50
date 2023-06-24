/* Write your T-SQL query statement below */
-- Write an SQL query to find the average time each machine takes to complete a process.



select  s.machine_id,round(avg(e.timestamp - s.timestamp), 3) as processing_time
FROm
    Activity s
        JOIN Activity e
        ON s.machine_id = e.machine_id
            AND s.process_id = e.process_id
            AND s.timestamp < e.timestamp 

group by 
    s.machine_id





