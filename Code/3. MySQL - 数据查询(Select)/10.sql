-- 10) ��ѯ��ǰ�ܵĿ����ʲ�����(��������ʲ�����)ǰ�����Ŀͻ������ơ����֤�ż��������棬�����潵�����������������Ϊtotal_income�������ǲ����������Ρ�
--    ����һ��SQL���ʵ�ָò�ѯ��
select  c_name,c_id_card,sum(pro_income) as total_income
    from client inner join property
    on pro_status='����' and c_id=pro_c_id  group by c_id
    order by total_income desc 
    limit 3;







/*  end  of  your code  */ 