-- 9) ��ѯ�����˻�����(f_type='������')������û������ơ��绰�š����䡣
--   ����һ��SQL���ʵ�ָò�ѯ��
select c_name,c_phone,c_mail
    from client
    where c_id in (select pro_c_id from property where pro_type ='3' and pro_pif_id in (select f_id from fund where f_type ='������'))
    order by c_id;






/*  end  of  your code  */