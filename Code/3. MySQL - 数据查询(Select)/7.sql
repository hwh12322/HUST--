-- 7) ��ѯ���֤�����人��û������κ���Ʋ�Ʒ�Ŀͻ������ơ��绰�š����䡣
--    ����һ��SQL���ʵ�ָò�ѯ��
select c_name,c_phone,c_mail
    from client
    where c_id_card like '4201%'
    and
    not exists(select * from property where pro_c_id=client.c_id and pro_type ='1')
    order by c_id;




/*  end  of  your code  */