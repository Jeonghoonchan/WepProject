CREATE TABLE ShopImageDBTEST (
Shopname VARCHAR(200),
Image1 VARCHAR2(50),
ImageText1 VARCHAR2(80),
Image2 VARCHAR2(50),
ImageText2 VARCHAR2(80),
Image3 VARCHAR2(50),
ImageText3 VARCHAR2(80),
Image4 VARCHAR2(50),
ImageText4 VARCHAR2(80),
Image5 VARCHAR2(50),
ImageText5 VARCHAR2(80),
MenuBoard1 VARCHAR2(50),
MenuBoard2 VARCHAR2(50),
MenuBoard3 VARCHAR2(50));

INSERT INTO ShopImageDB VALUES('�Ƶ�����' ,'mac1.png', '������ �����̽� ġŲ ����', 'mac2.png' ,'��� ����' , 'mac3.png','������ �丶�� �𷰽� ����' ,'mac4.png' ,'�Ұ�� ����' ,'mac5.png', '���� �����Ŀ�� ġ�����', '', '', ''); 

COMMIT;

select * from shopimagedb;