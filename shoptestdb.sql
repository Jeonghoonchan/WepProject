CREATE TABLE ShopTestDB (
ownnum NUMBER PRIMARY KEY,
shopname VARCHAR2(200) NOT NULL,
address VARCHAR2(200) NOT NULL,
category VARCHAR2(100) NOT NULL,
image VARCHAR2(50) NOT NULL,
regidate DATE  default sysdate,
phone VARCHAR2(50) NOT NULL,
manu1 VARCHAR2(80),
menuimage1 VARCHAR2(50),
manu2 VARCHAR2(80),
menuimage2 VARCHAR2(50),
manu3 VARCHAR2(80),
menuimage3 VARCHAR2(50),
manu4 VARCHAR2(80),
menuimage4 VARCHAR2(50),
manu5 VARCHAR2(80),
menuimage5 VARCHAR2(50)
);

INSERT INTO ShopTestDB VALUES (3, '�Ե�����', '��� ������ ���뱸 ������� 1499', '�н�ƮǪ��', 'macdonald.png', 
TO_DATE('2022-07-20 09:51:27', 'YYYY-MM-DD HH24:MI:SS'), '070-7209-0589', '������ �����̽� ġŲ����', 'mac1.png', '��� ����', 'mac2.png', '������ �丶�� �𷰽� ����', 'mac3.png', '�Ұ�� ����', 'mac4.png', 
'���� �����Ŀ�� ġ�����', 'mac5.png');


