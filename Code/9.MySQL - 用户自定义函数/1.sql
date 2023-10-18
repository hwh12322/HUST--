use finance1;

set global log_bin_trust_function_creators=1;

drop function IF EXISTS get_deposit;

/*
 ��create function��䴴����������Ҫ��ĺ�����
 ���ݿͻ���ż���ÿͻ����д���Ĵ���ܶ
 ������Ϊ��get_Records�������Ĳ����������Լ�����:*/

delimiter $$

CREATE FUNCTION GET_DEPOSIT(CLIENT_ID INT) RETURNS 
NUMERIC(10, 2) BEGIN 
	return (
	        select sum(b_balance)
	        from bank_card
	        where b_type = "���"
	        group by b_c_id
	        having b_c_id = client_id
	    );
END$ 

$ 

delimiter ;

select
    c_id_card,
    c_name,
    get_deposit(c_id) as total_deposit
from client
where
    get_deposit(c_id) >= 1000000
order by total_deposit desc;

/*  �����ļ�����     */