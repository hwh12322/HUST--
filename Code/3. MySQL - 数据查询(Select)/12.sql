 -- 12) �ۺϿͻ���(client)���ʲ���(property)����Ʋ�Ʒ��(finances_product)�����ձ�(insurance)��
 --     �����(fund)���г��ͻ������ơ����֤���Լ�Ͷ���ܽ���Ͷ�ʱ���
 --     ÿ��Ͷ�ʽ��=��Ʒ����*�ò�Ʒÿ�ݽ��)��ע��Ͷ�ʽ�������Ҫ��ѯ��ͬ�ı�
 --     Ͷ���ܽ���ǿͻ�����ĸ����ʲ�(���,����,����)Ͷ�ʽ����ܺͣ��ܽ������Ϊtotal_amount��
 --     ��ѯ������ܽ�������
 -- ����һ��SQL���ʵ�ָò�ѯ��
SELECT 
  client.c_name, 
  client.c_id_card, COALESCE(SUM(case
  when pro_type='1'then COALESCE(pro_quantity*p_amount,0)
  when pro_type='2'then COALESCE(pro_quantity*i_amount,0)
  when pro_type='3'then COALESCE(pro_quantity*f_amount,0)
END),0)   AS total_amount 
FROM 
  client 
  LEFT JOIN property ON client.c_id = property.pro_c_id 
  LEFT JOIN finances_product ON property.pro_pif_id = finances_product.p_id and pro_type='1'
  LEFT JOIN insurance ON property.pro_pif_id = insurance.i_id and pro_type='2'
  LEFT JOIN fund ON property.pro_pif_id = fund.f_id and pro_type='3'
GROUP BY
  client.c_id 
ORDER BY 
  total_amount DESC ;




/*  end  of  your code  */ 