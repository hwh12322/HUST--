-- ����2
## �������ʵ���������뼶���Թ��첻���ظ���
set session transaction isolation level read uncommitted;
start transaction;
-- ʱ��2 - ����2������1��ȡ��Ʊ֮��Ҳ��ȡ��Ʊ
## ��Ӵ��룬ȷ������2�ĵ�1�ζ�����������1��֮���޸�֮ǰ
set @n = sleep(1);

insert into result 
select now(),2 t, tickets from ticket where flight_no = 'CZ5525';

-- ʱ��4 - ����2������1�޸���Ʊ��δ�ύǰ�ٴζ�ȡ��Ʊ������2�����ζ�ȡ���Ӧ�ò�ͬ
## ��Ӵ��룬ȷ������2�Ķ�ȡʱ��
set @n = sleep(3);
insert into result 
select now(), 2 t, tickets from ticket where flight_no = 'CZ5525';

-- ����2�����޸���Ʊ
update ticket set tickets = tickets - 1 where flight_no = 'CZ5525';

-- ʱ��5 - ����2 ��ȡ��Ʊ���Լ��޸ĵ�δ���Ľ����:
-- set @n = sleep(1);
insert into result 
select now(), 2 t, tickets from ticket where flight_no = 'CZ5525';

commit;
