use finance1;
-- �����������б����ʲ���¼����ϸ��Ϣ����ͼv_insurance_detail����������ͻ������ơ��ͻ������֤�š��������ơ�������Ŀ����Ʒ״̬����Ʒ���������ս��������ޡ���Ʒ����͹���ʱ�䡣
-- ����1��SQL��������������
create view v_insurance_detail
    as 
    select c_id_card,c_name,i_amount,i_name,i_project,i_year,pro_income,pro_purchase_time,pro_quantity,pro_status
    from property,client,insurance
    where i_id=pro_pif_id and
    c_id = pro_c_id and pro_type='2';




/*   end  of your code  */