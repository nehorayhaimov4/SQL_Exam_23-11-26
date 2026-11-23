part B-
JOIN Queries:

1. SELECT t.first_name, t.last_name, t.passport_number, c.country_name
    FROM tourists t
    INNER JOIN countries c ON t.country_id = c.id;

2. SELECT t.first_name, t.last_name, tr.tour_name, tr.start_date, tr.end_date, tr.price, tr.guide_name
    FROM tourists t
    INNER JOIN tours tr ON t.tour_id = tr.id;

3. SELECT t.first_name, t.last_name, tr.tour_name, tr.start_date, tr.end_date, tr.price
    FROM tourists t
    LEFT JOIN tours tr ON t.tour_id = tr.id;

4. SELECT t.first_name, t.last_name, tr.tour_name, tr.start_date, tr.price
    FROM tourists t
    FULL OUTER JOIN tours tr ON t.tour_id = tr.id;

5. SELECT t.id, t.first_name, t.last_name, t.email
    FROM tourists t
    LEFT JOIN tours tr ON t.tour_id = tr.id
    WHERE tr.id IS NULL;

6. SELECT tr.id, tr.tour_name, tr.start_date, tr.end_date, tr.guide_name
    FROM tours tr
    LEFT JOIN tourists t ON tr.id = t.tour_id
    WHERE t.id IS NULL;

8. SELECT t.first_name, t.last_name, tr.tour_name
    FROM tourists t
    CROSS JOIN tours tr;


