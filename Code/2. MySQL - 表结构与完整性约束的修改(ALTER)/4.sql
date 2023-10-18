use MyDb;
#�������¿հ״���д�ʵ���ڵ�䣬ʵ�ֱ��Ҫ��
#(1) Ϊ��Staff�������
alter table Staff add primary key(staffNo) ;
#(2) Dept.mgrStaffNo�����룬��Ӧ��������Staff.staffNo,�����������룬����ΪFK_Dept_mgrStaffNo:
alter table Dept add constraint FK_Dept_mgrStaffNo foreign key(mgrStaffNo) references  Staff(staffNo);
#(3) Staff.dept�����룬��Ӧ��������Dept.deptNo. �����������룬����ΪFK_Staff_dept:
alter table Staff add constraint FK_Staff_dept foreign key(dept) references Dept(deptNo);
#(4) Ϊ��Staff���checkԼ��������Ϊ��gender��ֵֻ��ΪF��M��Լ����ΪCK_Staff_gender:
alter table Staff add constraint CK_Staff_gender check(gender in ('F','M'));
#(5) Ϊ��Dept���uniqueԼ����deptName�������ظ���Լ����ΪUN_Dept_deptName��
alter table Dept add constraint UN_Dept_deptName UNIQUE(deptName);