 -- ������һ�ش�������ͼv_insurance_detail���з���ͳ�Ʋ�ѯ���г�ÿλ�ͻ������������֤�ţ�����Ͷ���ܶ�(insurance_total_amount)�ͱ���Ͷ��������(insurance_total_revenue),���������Ͷ���ܶ�����С�
--  ����һ��SQL���ʵ�ָò�ѯ��pro_income,pro_quantity
select c_name,c_id_card,sum(i_amount*pro_quantity) as insurance_total_amount,sum(pro_income) as insurance_total_revenue
    from v_insurance_detail
    group by c_id_card
    order by insurance_total_amount desc;




/*  end  of  your code  */