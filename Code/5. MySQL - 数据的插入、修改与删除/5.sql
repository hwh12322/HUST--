use finance1;
-- ����һ��update��佫�ֻ�����Ϊ��13686431238������λ�ͻ���Ͷ���ʲ�(��ơ����������)��״̬��Ϊ�����ᡱ����
update property
    set pro_status='����'
    where exists(
    select *from client
    where pro_c_id=c_id and c_phone="13686431238"
    );



/* the end of your code */