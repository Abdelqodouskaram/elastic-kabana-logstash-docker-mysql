SELECT *, update_time AS ts FROM temp_db.delayed_flights
WHERE update_time > :sql_last_value AND update_time < NOW()
ORDER BY id