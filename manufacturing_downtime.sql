USE manufacturing_analysis
SELECT COUNT(*)FROM manufacturing_downtime_dataset;
SELECT
    machine_id,
    SUM(downtime_minutes) AS total_downtime
FROM manufacturing_downtime_dataset
GROUP BY machine_id
ORDER BY total_downtime DESC;
SELECT
    failure_type,
    COUNT(*) AS total_failures
FROM manufacturing_downtime_dataset
GROUP BY failure_type
ORDER BY total_failures DESC;
SELECT
    machine_id,
    SUM(production_output) AS total_output
FROM manufacturing_downtime_dataset
GROUP BY machine_id
ORDER BY total_output DESC;
SELECT
    shift,
    AVG(production_output) AS avg_output
FROM manufacturing_downtime_dataset
GROUP BY shift;
SELECT
    machine_id,
    AVG(production_output) AS avg_output
FROM manufacturing_downtime_dataset
GROUP BY machine_id;