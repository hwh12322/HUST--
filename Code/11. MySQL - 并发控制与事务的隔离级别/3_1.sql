-- ����1:
## �������ʵ���������뼶��
set session transaction isolation level read uncommitted;

-- ��������
start transaction;
-- ʱ��1 - ����1��������Ʊ:
insert into result 
select now(),1 t, tickets from ticket where flight_no = 'CZ5525';

## ��ӵȴ����룬ȷ������2�ĵ�һ�ζ�ȡ������1�޸�ǰ����
set @n = sleep(2);

-- ʱ��3 - ����1�޸���Ʊ����������ȡ:
update ticket set tickets = tickets - 1 where flight_no = 'CZ5525';
insert into result
select now(),1 t, tickets from ticket where flight_no = 'CZ5525';

## ��Ӵ��룬ʹ����2 �ĵ�2�ζ�ȡ������1�޸�֮���ύ֮ǰ����
set @n = sleep(4);

commit;

-- ʱ��6 - ����1��t2Ҳ�ύ���ȡ��Ʊ
## ��Ӵ��룬ȷ������1������2�ύ���ȡ
set @n = sleep(6);

insert into result
select now(), 1 t, tickets from ticket where flight_no = 'CZ5525';

