SELECT
socio_demographics_synthetic.id,
cdr_synthetic.visit,
socio_demographics_synthetic.patient_id,
socio_demographics_synthetic.sex,
socio_demographics_synthetic.age,
socio_demographics_synthetic.age_band,
socio_demographics_synthetic.handedness,
socio_demographics_synthetic.years_education,
socio_demographics_synthetic.marital_status,
socio_demographics_synthetic.race,
socio_demographics_synthetic.racen,
apoe_synthetic.apoe_result,
cdr_synthetic.cdr_global_score,
csf_synthetic.ptau_result,
csf_synthetic.ttau_result,
csf_synthetic.abeta_1_42_result,
csf_synthetic.abeta_1_42_comments,
rbans_synthetic.rbans_total_scale
FROM
cdr_synthetic
LEFT JOIN socio_demographics_synthetic ON
cdr_synthetic.patient_id =
socio_demographics_synthetic.patient_id
LEFT JOIN apoe_synthetic ON apoe_synthetic.patient_id =
cdr_synthetic.patient_id AND apoe_synthetic.visit =
cdr_synthetic.visit
LEFT JOIN csf_synthetic ON csf_synthetic.patient_id =
cdr_synthetic.patient_id AND csf_synthetic.visit_id =
cdr_synthetic.patient_id
LEFT JOIN rbans_synthetic ON rbans_synthetic.patient_id =
cdr_synthetic.patient_id AND rbans_synthetic.visit_id =
cdr_synthetic.visit_id