SELECT
c.apoe_result,
CONCAT(AVG(a.rbans_total_scale)::decimal(10,2), '(',
stddev(a.rbans_total_scale)::decimal(10,2),')') as total_scale,
CONCAT(AVG(a.rbans_attention_index)::decimal(10,2), '(',
stddev(a.rbans_attention_index)::decimal(10,2),')')as attention_index,
CONCAT(AVG(a.rbans_delayed_memory_index)::decimal(10,2), '(',
stddev(a.rbans_delayed_memory_index)::decimal(10,2),')')as delayed_memory,
CONCAT(AVG(a.rbans_immediate_memory_index)::decimal(10,2), '(',
stddev(a.rbans_immediate_memory_index)::decimal(10,2),')')as imm_memory,
CONCAT(AVG(a.rbans_language_index)::decimal(10,2), '(',
stddev(a.rbans_language_index)::decimal(10,2),')')as language_index,
CONCAT(AVG(a.rbans_visuo_constructional_index)::decimal(10,2), '(',
stddev(a.rbans_visuo_constructional_index)::decimal(10,2),')')as v_index,
CONCAT(AVG(a.rbans_coding)::decimal(10,2), '(',
stddev(a.rbans_coding)::decimal(10,2),')') as coding,
CONCAT(AVG(a.rbans_digit_span)::decimal(10,2), '(',
stddev(a.rbans_digit_span)::decimal(10,2),')') as digit_span,
CONCAT(AVG(a.rbans_figure_copy)::decimal(10,2), '(',
stddev(a.rbans_figure_copy)::decimal(10,2),')') as figure_copy,
CONCAT(AVG(a.rbans_figure_recall)::decimal(10,2), '(',
stddev(a.rbans_figure_recall)::decimal(10,2),')') as figure_recall,
CONCAT(AVG(a.rbans_list_learning)::decimal(10,2), '(',
stddev(a.rbans_list_learning)::decimal(10,2),')') as list_learning,
CONCAT(AVG(a.rbans_line_orientation)::decimal(10,2),'(',
stddev(a.rbans_line_orientation)::decimal(10,2),')') as line_orientation,
CONCAT(AVG(a.rbans_list_recall)::decimal(10,2), '(',
stddev(a.rbans_list_recall)::decimal(10,2),')') as list_recall,
CONCAT(AVG(a.rbans_list_recognition)::decimal(10,2), '(',
stddev(a.rbans_list_recognition)::decimal(10,2),')') as list_recognition,
CONCAT(AVG(a.rbans_picture_naming)::decimal(10,2), '(',
stddev(a.rbans_picture_naming)::decimal(10,2),')') as picture_naming,
CONCAT(AVG(a.rbans_semantic_fluency)::decimal(10,2), '(',
stddev(a.rbans_semantic_fluency)::decimal(10,2),')') as semantic_fluency,
CONCAT(AVG(a.rbans_story_memory)::decimal(10,2), '(',
stddev(a.rbans_story_memory)::decimal(10,2),')') as story_memory,
CONCAT(AVG(a.rbans_story_recall)::decimal(10,2), '(',
stddev(a.rbans_story_recall)::decimal(10,2),')') as story_recall
FROM public.v_imi_epadlcs_rbans AS a
LEFT JOIN public.v_imi_epadlcs_apoe AS c ON a.patient_id = c.patient_id
60
AND a.visit = c.visit
WHERE c.apoe_result is not null and a.rbans_total_scale is not null
GROUP BY c.apoe_result