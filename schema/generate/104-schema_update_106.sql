BEGIN; 
CREATE MATERIALIZED VIEW "augur_data"."explorer_libyear_all"
AS
SELECT
  a.repo_id,
  a.repo_name, 
  AVG ( libyear ) AS avg_libyear,
  date_part( 'month' :: TEXT, ( A.data_collection_date ) :: DATE ) AS MONTH,
  date_part( 'year' :: TEXT, ( A.data_collection_date ) :: DATE ) AS YEAR 
FROM
  repo a, 
  repo_deps_libyear b
GROUP BY
  a.repo_id, 
  a.repo_name, 
  month, 
  year 
ORDER BY
  year desc, 
  month desc, 
  avg_libyear desc;


grant all privileges on table "augur_data"."explorer_libyear_all" to cali; 
grant all privileges on table "augur_data"."explorer_libyear_all" to cali;
 

CREATE MATERIALIZED VIEW "augur_data"."explorer_libyear_detail"
AS
SELECT
  a.repo_id,
  a.repo_name, 
  b.name, 
  b.requirement, 
  b.current_verion, 
  b.latest_version, 
  b.current_release_date, 
  b.current_release_date, 
  libyear,
  max(b.data_collection_date)
FROM
  repo a, 
  repo_deps_libyear b
GROUP BY
  a.repo_id,
  a.repo_name, 
  b.name, 
  b.requirement, 
  b.current_verion, 
  b.latest_version, 
  b.current_release_date, 
  b.current_release_date, 
  libyear 
ORDER BY
  a.repo_id, 
  b.requirement;

grant all privileges on table "augur_data"."explorer_libyear_detail" to cali; 
grant all privileges on table "augur_data"."explorer_libyear_detail" to cali;


update "augur_operations"."augur_settings" set value = 106
  where setting = 'augur_data_version'; 

COMMIT; 