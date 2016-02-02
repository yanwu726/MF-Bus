/*testing*/


IF OBJECT_ID('t_values_returns', 'U') IS NOT NULL
DROP TABLE TableName;


CREATE TABLE t_values_returns(
asof_dt				date,
field				varchar(255),
value				decimal (38,12)
);

