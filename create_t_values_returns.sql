/*Creating table for data*/


IF OBJECT_ID('t_values_returns', 'U') IS NOT NULL
DROP TABLE t_values_returns;


CREATE TABLE t_values_returns(
asof_dt				date,
field				varchar(255),
value				decimal (38,12)
);