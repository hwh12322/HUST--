-- 5) ��ѯ��Ʋ�Ʒ��ÿ�ݽ����30000��50000֮�����Ʋ�Ʒ�ı��,ÿ�ݽ�������ޣ������ս���������򣬽����ͬ�İ���������޽�������
--    ����һ��SQL���ʵ�ָò�ѯ��
select p_id,p_amount,p_year
    from finances_product
    where p_amount >=30000 and p_amount <=50000
    order by p_amount,p_year desc;



/*  end  of  your code  */