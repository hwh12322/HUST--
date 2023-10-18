-- 5) ��ѯ���������ͻ�����ͬ��Ʋ�Ʒ��
--   ����һ��SQL���ʵ�ָò�ѯ��

select p1.pro_c_id, p2.pro_c_id, count(*) as total_count
from property as p1 inner join property as p2
on p1.pro_pif_id = p2.pro_pif_id
where p1.pro_type = 1 and p2.pro_type = 1
    and p1.pro_c_id <> p2.pro_c_id
group by p1.pro_c_id, p2.pro_c_id
having count(*) >= 2
order by p1.pro_c_id;






/*  end  of  your code  */