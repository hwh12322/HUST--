-- 4) ��ѯ�����˴���Ŀͻ����ơ��ֻ��š����п��š� ��ѯ���������ͻ��������
--    ����һ��SQL���ʵ�ָò�ѯ��
select  client.c_name,client.c_phone,bank_card.b_number
    from client,bank_card
    where client.c_id = bank_card.b_c_id and bank_card.b_type like '���'
    order by client.c_id;



/*  end  of  your code  */