use MyDb;

#�������¿հ״�����ʵ���SQL���룬ʵ�ֱ��Ҫ��
#���1��ɾ����orderDetail�е���orderDate
alter table orderDetail drop orderDate;
#���2�������unitPrice
alter table orderDetail add unitPrice numeric(10,2);