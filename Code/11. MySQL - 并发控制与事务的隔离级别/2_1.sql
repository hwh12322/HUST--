-- ����1:
use testdb1;
## �������ʵ���������뼶��
set session transaction isolation level read uncommitted;

start transaction;

-- ʱ��2 - ����1��������Ʊ,����������2�޸�֮��
## ��ӵȴ����룬ȷ������
set @n = sleep(1);
select tickets from ticket where flight_no = 'CA8213';
commit;
