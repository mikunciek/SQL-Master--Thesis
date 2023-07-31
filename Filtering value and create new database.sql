SELECT *
FROM public.mgr_db_for_alzheimer db
WHERE
db.patient_id IN (
SELECT db.patient_id
FROM public.mgr_db_for_alzheimer db
GROUP BY (db.patient_id)
HAVING COUNT(db.patient_id) = 5
)