-- ����1:
use testdb1;
set session transaction isolation level read uncommitted;
start transaction;
# ��1�β�ѯ����'MU2455'����Ʊ
select tickets from ticket where flight_no = 'MU2455' for update of ticket;
set @n = sleep(5);
# ��2�β�ѯ����'MU2455'����Ʊ
select tickets from ticket where flight_no = 'MU2455' ;
commit;
-- ��3�β�ѯ���к������Ʊ������������2�ύ��
set @n = sleep(1);
select * from ticket;
