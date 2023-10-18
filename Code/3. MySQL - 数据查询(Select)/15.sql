-- 15) ��ѯ�ʲ����пͻ���ţ��ͻ�����Ͷ��������,����Ͷ�������������(�Ӹߵ�������)��
--     ��������ͬʱ��������ͬ(����������)������������Ϊtotal_revenue, ��������Ϊrank��
--     ��һ��SQL���ʵ��ȫ�����β�������������
--     �ڶ���SQL���ʵ��ȫ������������������

-- (1) ��������������(���β�����)
select pro_c_id,sum(pro_income) as total_revenue,rank() over(order by sum(pro_income) desc) as "rank"
    from property
    where pro_type=3
    group by pro_c_id
    order by total_revenue desc, pro_c_id;

-- (2) ��������������(��������)
select pro_c_id,
       sum(pro_income) as total_revenue,
       dense_rank() over(order by sum(pro_income) desc) as "rank"
    from property
    where pro_type = 3
    group by pro_c_id
    order by total_revenue desc, pro_c_id;



/*  end  of  your code  */