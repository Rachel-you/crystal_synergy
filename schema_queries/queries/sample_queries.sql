-- 1. Filter by year and territory
SELECT * 
FROM region_data 
WHERE year = :selected_year AND territory = :selected_territory;

-- 2. Data Range filter
SELECT * 
FROM region_data 
WHERE year BETWEEN :start_year AND :end_year;

-- 3. Account finder
SELECT * 
FROM region_data 
WHERE account_no = :account_no;

-- 4. Sales Range filter
SELECT * 
FROM region_data 
WHERE sales BETWEEN :min_sales AND :max_sales;

-- 5. Territory filter
SELECT * 
FROM region_data 
WHERE territory_group = :selected_group;

-- 6. Quarterly Sales filter
SELECT account_no, territory, q1, q2, q3, q4
FROM region_data 
WHERE (:include_q1 IS NULL OR q1 > 0) 
  AND (:include_q2 IS NULL OR q2 > 0) 
  AND (:include_q3 IS NULL OR q3 > 0) 
  AND (:include_q4 IS NULL OR q4 > 0);

-- 7. Sort by option
SELECT * 
FROM region_data 
ORDER BY :column_name :sort_direction;

