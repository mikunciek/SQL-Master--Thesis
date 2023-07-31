SELECT
visit.id as visit_id,
a.*,
visit.visit,
b.total_score,
c.apoe_result,
d.cdr_global_score,
e.ptau_result,
e.ttau_result,
e.abeta_1_42_result,
e.abeta_1_42_comments,
f.dementia_diagnosed,
f.type_of_dementia,
g.gds_total,
h.mmse_total,
i.psqi_total,
j.rbans_total_scale
FROM
public.v_imi_epadlcs_visits AS visit
LEFT JOIN public.v_imi_epadlcs_socio_demographics AS a
ON visit.patient_id = a.patient_id
LEFT JOIN public.v_imi_epadlcs_aiadl AS b ON
visit.patient_id = b.patient_id AND visit.visit = b.visit
LEFT JOIN public.v_imi_epadlcs_apoe AS c ON
visit.patient_id = c.patient_id AND visit.visit = c.visit
LEFT JOIN public.v_imi_epadlcs_cdr AS d ON visit.patient_id
= d.patient_id AND visit.visit = d.visit
LEFT JOIN public.v_imi_epadlcs_csf AS e ON visit.patient_id
= e.patient_id AND visit.visit = e.visit
LEFT JOIN public.v_imi_epadlcs_dementia_diag AS f ON
visit.patient_id = f.patient_id AND visit.visit = f.visit
LEFT JOIN public.v_imi_epadlcs_gds AS g ON visit.patient_id
= g.patient_id AND visit.visit = g.visit
LEFT JOIN public.v_imi_epadlcs_mmse AS h ON
visit.patient_id = h.patient_id AND visit.visit = h.visit
LEFT JOIN public.v_imi_epadlcs_psqi AS i ON
visit.patient_id = i.patient_id AND visit.visit = i.visit
LEFT JOIN public.v_imi_epadlcs_rbans AS j ON
visit.patient_id = j.patient_id AND visit.visit = j.visit