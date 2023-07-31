UPDATE public.mgr_db_for_alzheimer SET visit_2=1 WHERE visit='V1';
UPDATE public.mgr_db_for_alzheimer SET visit_2=2 WHERE visit='V2';
UPDATE public.mgr_db_for_alzheimer SET visit_2=3 WHERE visit='V3';
UPDATE public.mgr_db_for_alzheimer SET visit_2=4 WHERE visit='V4';
UPDATE public.mgr_db_for_alzheimer SET visit_2=5 WHERE visit='V5';
Fragment kodu 3: Przygotowane zapytanie do aktualizacji danych w mgr_db_for_alzheimer
W ostatnim kroku usunięto kolumnę visit, potem zmieniono nazwę kolumny visit_2 na visit,
w celu uniknięcia błędów przy analizie. Zapytanie SQL przedstawia Fragment kodu 4.
44
ALTER TABLE mgr_db_for_alzheimer DROP COLUMN visit;
ALTER TABLE mgr_db_for_alzheimer RENAME COLUMN visit_2 to visit;