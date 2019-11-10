SELECT * FROM dbo.newtable;
SELECT SUM(dbo.newtable.discount) as 'paid',dbo.newtable.by_recomended,dbo.newtable.to_docktor,dbo.newtable.patient,dbo.newtable.date,dbo.newtable.hour,dbo.newtable.minuts FROM  dbo.newtable 
WHERE dbo.newtable.by_recomended IN (select newtable.by_recomended from dbo.newtable group by by_recomended having count(*)>1)
GROUP BY dbo.newtable.by_recomended,dbo.newtable.to_docktor,dbo.newtable.patient,dbo.newtable.date,dbo.newtable.hour,dbo.newtable.minuts


