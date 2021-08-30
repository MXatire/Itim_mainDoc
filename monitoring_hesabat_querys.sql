--dovr selectleri IP ve HOSTa gore:cari gunde son 1 saat veya son 2 veya3 ve s saat slctusageRepDovr_cpu
SELECT * FROM [DgetInf].[dbo].[Usage_cpuRep] where tarix + ' ' +saat >= DATEADD(HOUR, -1, GETDATE()) and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_hddRep] where tarix + ' ' +saat >= DATEADD(HOUR, -1, GETDATE()) and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_ramRep] where tarix + ' ' +saat >= DATEADD(HOUR, -1, GETDATE()) and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_netRep] where tarix + ' ' +saat >= DATEADD(HOUR, -1, GETDATE()) and IP='' or Host='';
select distinct IP from [DgetInf].[dbo].[Usage_cpuRep] --ip siyahi slctUsageRepIP
select distinct Host from [DgetInf].[dbo].[Usage_cpuRep] -- host siyahi  slctUsageRepHost

--saat ferqi olmadan tarixler arasi select slctusageRepTarix_ram
SELECT * FROM [DgetInf].[dbo].[Usage_cpuRep] where tarix between '2021-01-01' and '2021-03-11' and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_hddRep] where tarix between '2021-01-01' and '2021-03-11' and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_ramRep] where tarix between '2021-01-01' and '2021-03-11' and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_netRep] where tarix between '2021-01-01' and '2021-03-11' and IP='' or Host='';

--hem saata hem de tarixe gore select  slctusageRepTarixSaat_net
SELECT * FROM [DgetInf].[dbo].[Usage_cpuRep] where tarix between '2021-01-01' and '2021-03-11' and saat between '20:44:00' and '22:44:43' and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_hddRep] where tarix between '2021-01-01' and '2021-03-11' and saat between '20:44:00' and '22:44:43' and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_ramRep] where tarix between '2021-01-01' and '2021-03-11' and saat between '20:44:00' and '22:44:43' and IP='' or Host='';
SELECT * FROM [DgetInf].[dbo].[Usage_netRep] where tarix between '2021-01-01' and '2021-03-11' and saat between '20:44:00' and '22:44:43' and IP='' or Host='';

--duzgun versiya
SELECT*  FROM [DgetInf].[dbo].[Usage_ramRep] 
where tarix between '2021-02-01' and '2021-03-18'
and  (IP='' or '' ='') and (Host='WIN-9DTRCRV01I7' or 'WIN-9DTRCRV01I7'='') 