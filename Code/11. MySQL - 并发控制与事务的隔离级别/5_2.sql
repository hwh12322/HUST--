-- ����2:
use testdb1;
set session transaction isolation level read uncommitted;
start transaction;
set @n = sleep(1);
# ������1�ĵ�1��2�β�ѯ֮�䣬��ͼ��Ʊ1��(����MU2455)��
update ticket set tickets = tickets - 1 where flight_no = 'MU2455';

commit;
