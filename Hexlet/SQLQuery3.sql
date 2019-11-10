SELECT * FROM dbo.weathers;

Select w1.id From weathers w1 Inner Join weathers w2 On w1.id = w2.id+1 Where w1.temperature > w2.temperature;