-- Question 1
select * from `Client`;

select * from `Agent`;

select * from `Policy`;


-- Question 2
select a.SS_NUM,c.Client,c.Age,a.PolicyNumber,a.Premium,a.Face,a.Agent,b.Location from policy a inner join agent b on a.Agent = b.Agent inner join client c on a.SS_NUM = c.SS_NUM;


-- Question 3
select a.SS_NUM,c.Client,c.Age,a.PolicyNumber,a.Premium,a.Face,a.Agent,b.Location from policy a inner join agent b on a.Agent = b.Agent inner join client c on a.SS_NUM = c.SS_NUM order by a.Premium;


-- Question 4
select * from (select a.SS_NUM,c.Client,c.Age,a.PolicyNumber,a.Premium,a.Face,a.Agent,b.Location from policy a inner join agent b on a.Agent = b.Agent inner join client c on a.SS_NUM = c.SS_NUM order by a.Premium ) d where d.Client="CAMPBELL,CHARLIE";