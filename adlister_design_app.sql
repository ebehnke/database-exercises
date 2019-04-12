create database if not exists adlister_db;

show tables;


use adlister_db;

select email from user_table
where user_id in (
  select user_id from ad_table
  );

select categories from ad_table
where category_id in (
  select category_id from categories_table
  );

select ad_titles from categories_table
where ad_id in (
  select ad_id from
  )


select ad
select category from categories_table
where ad_id in (
  select ad_id from ad_table
  )