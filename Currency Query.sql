select	t1.asof_dt,
		t1.Invest,
		cast(round(t1.EndingMarketValue,0) as int) as MV_USD,
		cast(round(t2.mv_tot,0) as int) as tot_USD,
		Convert(varchar(10),t1.EndingMarketValue*100/t2.mv_tot)+ '%' as pct
from t_pos_admin t1 
join (	
		select asof_dt, 
		sum(EndingMarketValue) as mv_tot 
		from t_pos_admin group by asof_dt
		) as t2
on t1.asof_dt = t2.asof_dt
where 1=1
and t1.asof_dt = '20160215'
and t1.printgroup= 'CASH AND EQUIVALENTS' 
order by t1.Currency

