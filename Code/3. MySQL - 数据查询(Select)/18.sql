-- 19) ���������ʽ�г�2022��2��ÿ��ÿ�ջ������ܽ������ʽ���£�
-- week_of_trading Monday Tuesday Wednesday Thursday Friday
--               1
--               2    
--               3
--               4
--   ����һ��SQL���ʵ�ָò�ѯ��
select
    wk week_of_trading,
    sum(if(dayId = 0, amount, null)) Monday,
    sum(if(dayId = 1, amount, null)) Tuesday,
    sum(if(dayId = 2, amount, null)) Wednesday,
    sum(if(dayId = 3, amount, null)) Thursday,
    sum(if(dayId = 4, amount, null)) Friday
from (
    select
        week(pro_purchase_time) - 5 wk,
        weekday(pro_purchase_time) dayId,
        sum(pro_quantity * f_amount) amount
    from
        property
        join fund
        on pro_pif_id = f_id
    where
        pro_purchase_time like "2022-02-%"
        and pro_type = 3
    group by pro_purchase_time
) t
group by wk;






/*  end  of  your code  */