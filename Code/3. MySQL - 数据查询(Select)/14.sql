-- 14) ��ѯÿ�ݱ��ս���4�߱��ղ�Ʒ�ı�źͱ��ս�
--     ����������8000,8000,7000,7000,6000�У�
--     ����8000��Ϊ��1�ߣ�����7000��Ϊ��2��,6000Ϊ��3�ߡ�
-- ����һ��SQL���ʵ�ָò�ѯ��
SELECT i_id, i_amount
FROM insurance
WHERE i_amount = (
    SELECT DISTINCT i_amount #ȥ��
    FROM insurance
    ORDER BY i_amount DESC
    LIMIT 3, 1
);









/*  end  of  your code  */ 