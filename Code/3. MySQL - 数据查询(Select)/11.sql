-- 11) ���������û��ı�š����ơ���������п�������(û�а쿨�Ŀ�������Ϊ0),�ֿ���������Ϊnumber_of_cards,
--     ���������п������������,�ֿ�������ͬ��,���ͻ��������
-- ����һ��SQL���ʵ�ָò�ѯ��
select c_id,c_name,count(b_c_id) as number_of_cards
    from client left join bank_card
    on c_id=b_c_id  
    where c_name like '��%' group by c_id
    order by count(b_c_id) desc,c_id;











/*  end  of  your code  */ 