create user dev2@localhost identified by	'ax';
grant all on regionkommune . * to dev2@localhost;
show grants for dev2@localhost;
!-- execute createtables.sql