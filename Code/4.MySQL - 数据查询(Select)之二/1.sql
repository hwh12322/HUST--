 -- 1) ��ѯ�����ܶ�ǰ������Ʋ�Ʒ
--   ����һ��SQL���ʵ�ָò�ѯ��
select * from
(
    select pyear, 
            rank() over(partition by pyear order by sumamount desc) as rk,
            p_id,
            sumamount
    from 
    (
        select 
            year(pro_purchase_time) as pyear, 
            p_id, 
            sum(p_amount * pro_quantity) as sumamount
        from property, finances_product
        where pro_pif_id = p_id and pro_type = 1 and year(pro_purchase_time) in (2010,2011)
        group by p_id, pyear
    ) as temp1
) as temp2
where rk <= 3






/*  end  of  your code  */