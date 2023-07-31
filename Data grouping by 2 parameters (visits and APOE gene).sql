SELECT a.visit,
(SELECT CONCAT (AVG(c.rbans_total_scale)::decimal(10,2), 0.00), ' (',
stddev(c.rbans_total_scale)::decimal(10,2),')')
FROM public.mgr_db_for_alzheimer_5_visit c
WHERE c.visit = a.visit and c.rbans_total_scale is not null and
c.patient_id in (SELECT b.patient_id
FROM public.mgr_db_for_alzheimer_5_visit b
WHERE b.apoe_result = 'e2/e2')) as e2_e2,
(SELECT CONCAT (AVG(c.rbans_total_scale)::decimal(10,2), 0.00), ' (',
stddev(c.rbans_total_scale)::decimal(10,2),')')
FROM public.mgr_db_for_alzheimer_5_visit c
WHERE c.visit = a.visit and c.rbans_total_scale is not null and
c.patient_id in (SELECT b.patient_id
FROM public.mgr_db_for_alzheimer_5_visit b
WHERE b.apoe_result = 'e2/e3')) as e2_e3,
(SELECT CONCAT (AVG(c.rbans_total_scale)::decimal(10,2), 0.00), ' (',
stddev(c.rbans_total_scale)::decimal(10,2),')')
FROM public.mgr_db_for_alzheimer_5_visit c
WHERE c.visit = a.visit and c.rbans_total_scale is not null and
c.patient_id in (SELECT b.patient_id
FROM public.mgr_db_for_alzheimer_5_visit b
WHERE b.apoe_result = 'e3/e3')) as e3_e3,
(SELECT CONCAT (AVG(c.rbans_total_scale)::decimal(10,2), 0.00), ' (',
stddev(c.rbans_total_scale)::decimal(10,2),')')
FROM public.mgr_db_for_alzheimer_5_visit c
WHERE c.visit = a.visit and c.rbans_total_scale is not null and
c.patient_id in (SELECT b.patient_id
FROM public.mgr_db_for_alzheimer_5_visit b
WHERE b.apoe_result = 'e2/e4')) as e2_e4,
(SELECT CONCAT (AVG(c.rbans_total_scale)::decimal(10,2), 0.00), ' (',
stddev(c.rbans_total_scale)::decimal(10,2),')')
FROM public.mgr_db_for_alzheimer_5_visit c
WHERE c.visit = a.visit and c.rbans_total_scale is not null and
c.patient_id in (SELECT b.patient_id
FROM public.mgr_db_for_alzheimer_5_visit b
(SELECT CONCAT (AVG(c.rbans_total_scale)::decimal(10,2), 0.00), ' (',
stddev(c.rbans_total_scale)::decimal(10,2),')')
FROM public.mgr_db_for_alzheimer_5_visit c
WHERE c.visit = a.visit and c.rbans_total_scale is not null and
c.patient_id in (SELECT b.patient_id
FROM public.mgr_db_for_alzheimer_5_visit b
WHERE b.apoe_result = 'e4/e4')) as e4_e4
FROM public.mgr_db_for_alzheimer_5_visit a GROUP BY a.visit ORDER BY
a.visit