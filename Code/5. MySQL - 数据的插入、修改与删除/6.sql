use finance1;
-- �ڽ���Ӧ�ó������ݿ��У����ڱ�property(�ʲ���)������˿ͻ����֤�У�����Ϊpro_id_card������Ϊchar(18)������Ŀǰȫ������(null)��

-- ����һ��update��䣬����client�����ṩ�����֤��(c_id_card)����дproperty���ж�Ӧ�����֤����Ϣ(pro_id_card)��
update property,client
    set pro_id_card=c_id_card
    where  c_id=pro_c_id;




/* the end of your code */