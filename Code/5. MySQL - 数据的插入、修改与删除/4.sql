use finance1;
-- ����һ��SQL���ɾ��client����û�����п��Ŀͻ���Ϣ��
delete from client
    where not exists(select *
    from bank_card
    where b_c_id=client.c_id);



/* the end of your code */ 