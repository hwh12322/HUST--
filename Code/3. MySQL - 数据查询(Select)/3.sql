-- 3) ��ѯ�����˱��������˻���Ŀͻ������ơ�����͵绰�������c_id����
-- ����һ��SQL���ʵ�ָò�ѯ��
select  c_name,c_mail,c_phone
    from client
    where c_id in
    (select s1.pro_c_id
    from property s1,property s2
    where  s1.pro_c_id=s2.pro_c_id and s1.pro_type='2'and s2.pro_type='3')
    order by c_id;



/*  end  of  your code  */