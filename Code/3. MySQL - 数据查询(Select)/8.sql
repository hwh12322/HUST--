-- 8) ��ѯ��������(�����������ÿ����û������ơ����֤�š��ֻ��š�
--    ����һ��SQL���ʵ�ָò�ѯ��
select c_name,c_id_card,c_phone
    from client
    where c_id in(select b_c_id from bank_card where b_type='���ÿ�' group by b_c_id having count(*)>=2)
    order by c_id;





/*  end  of  your code  */