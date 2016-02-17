/*
This script creates the holdings table that is provided by the administrator

*/


IF OBJECT_ID('t_pos_admin', 'U') IS NOT NULL
DROP TABLE t_pos_admin;


CREATE TABLE t_pos_admin(
asof_dt				date,
Currency			varchar(255),
PrintGroup			varchar(255),
EndingQuantity		decimal(38,12),
Invest				varchar(255),
BeginningLocalPrice	decimal(38,12),
Cost				decimal(38,12),
UnrealizedPrice		decimal(38,12),
UnrealizedFX		decimal(38,12),
UnrealizedCross		decimal(38,12),
Interest			decimal(38,12),
Dividend			decimal(38,12),
OtherIncome			decimal(38,12),
TotalPAndL			decimal(38,12),
Description			varchar(255),
EndingLocalPrice	decimal(38,12),
EndingMarketValue	decimal(38,12),
RealizedPrice		decimal(38,12),
RealizedFX			decimal(38,12),	
RealizedCross		decimal(38,12),
);