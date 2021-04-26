--------------------------------------------------------
--  파일이 생성됨 - 목요일-2월-22-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BLOG
--------------------------------------------------------

  CREATE TABLE "JBLOG"."BLOG" 
   (  "USERNO" NUMBER, 
  "BLOGTITLE" VARCHAR2(200 BYTE), 
  "LOGOFILE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "JBLOG"."CATEGORY" 
   (  "CATENO" NUMBER, 
  "USERNO" NUMBER, 
  "CATENAME" VARCHAR2(200 BYTE), 
  "DESCRIPTION" VARCHAR2(500 BYTE), 
  "REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."COMMENTS" 
   (  "CMTNO" NUMBER, 
  "POSTNO" NUMBER, 
  "CMTCONTENT" VARCHAR2(300 BYTE), 
  "REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "JBLOG"."POST" 
   (  "POSTNO" NUMBER, 
  "CATENO" NUMBER, 
  "POSTTITLE" VARCHAR2(300 BYTE), 
  "POSTCONTENT" VARCHAR2(4000 BYTE), 
  "REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."USERS" 
   (  "USERNO" NUMBER, 
  "ID" VARCHAR2(50 BYTE), 
  "USERNAME" VARCHAR2(100 BYTE), 
  "PASSWORD" VARCHAR2(50 BYTE), 
  "JOINDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_CATEGORY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 19 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENTS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_COMMENTS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POST_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_POST_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_USERS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
REM INSERTING into JBLOG.BLOG
SET DEFINE OFF;
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (1,'afaf','15185205685000495d15c-6f80-4ecb-9d6f-b9ae5f87af72.png');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (2,'aaa 님의 블로그입니다.','1518863645409f3787f01-5f01-4920-bd5d-04f4c06b86a4.png');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (3,'노래가사 블로그 입니다.','15188661808567a9ab857-8331-4737-a792-f0088e98d49f.png');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (4,'아이래미 님의 블로그입니다.','default');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (5,'비트컴 님의 블로그입니다.','default');
Insert into JBLOG.BLOG (USERNO,BLOGTITLE,LOGOFILE) values (6,'비트컴 님의 블로그입니다.','default');
REM INSERTING into JBLOG.CATEGORY
SET DEFINE OFF;
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (18,6,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (9,2,'카테고리2','카테고리2',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (7,1,'새분류','새분류',to_date('18/02/15','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (4,1,'bbb','bbb',to_date('18/02/15','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (5,1,'ccc','ccc',to_date('18/02/15','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (8,3,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/16','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (16,4,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (11,3,'여자솔로','여자솔로 노래가사',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (12,3,'남자솔로','남자솔로 노래가사',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (13,3,'여자그룹','여자그룹 노래가사',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (14,3,'남자그룹','남자그룹 노래가사',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,USERNO,CATENAME,DESCRIPTION,REGDATE) values (17,5,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/19','RR/MM/DD'));
REM INSERTING into JBLOG.COMMENTS
SET DEFINE OFF;
REM INSERTING into JBLOG.POST
SET DEFINE OFF;
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (1,7,'abcdefg','abcdefg
abcdefg
abcdefgabcdefg',to_date('18/02/16','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (2,7,'fdsafdasf','afdafd',to_date('18/02/16','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (3,4,'fdsaf','dafdafd',to_date('18/02/16','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (4,7,'Spring Camp 2016 참여기','스프링 캠프에서는 JVM(Java Virtual Machine) 기반 시스템의 백엔드(Back-end) 또는 서버사이드(Server-side)라고 칭하는 영역을 개발하는 애플리케이션 서버 개발에 관한 기술과 정보, 경험을 공유하는 컨퍼런스입니다.
핵심주제로 Java와 Spring IO Platform을 다루고 있으며, 그외 Architecture나 JVM Language, Software Development Process 등 애플리케이션 서버 개발에 필요한 다양한 주제를 다루려고 노력하고 있습니다.
우리는 같은 일을 하고, 같은 관심사를 가진 개발자들이지만 서로를 모릅니다.
스프링 캠프라는 컨퍼런스에 찾아온 낯선 개발자들 사이에서 자신을 소개하고 이야기를 나누고 웃고 즐기며면서 어색함을 떨쳐내고 우리가 같은 분야에서 함께 일하고 있는 친구이자 동료라는 것을 인지하고 새로운 인연의 고리를 연결하고 이어갈 수 있는 순간으로 만들어가려 합니다.',to_date('18/02/16','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (5,7,'글작성테스트','글작성테스트',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (9,12,'그때 헤어지면 돼 - 로이킴','나를 사랑하는 법은 어렵지 않아요
지금 모습 그대로 나를 꼭 안아주세요
우리 나중에는 어떻게 될진 몰라도
정해지지 않아서 그게 나는 좋아요 
남들이 뭐라는 게 뭐가 중요해요
서로가 없음 죽겠는데 뭐를 고민해요
우리 함께 더 사랑해도 되잖아요
네가 다른 사람이 좋아지면 
내가 너 없는 게 익숙해지면 
그때가 오면 그때가 되면 
그때 헤어지면 돼
너를 사랑하는 법도 어렵지 않아요 
한 번 더 웃어주고 조금 더 아껴주면
우리 사랑하는 법도 어렵지 않아요
매일 처음 만난 눈빛으로 
서로를 바라봐 주면
남들이 뭐라는 게 뭐가 중요해요
서로가 없음 죽겠는데 뭐를 고민해요
우리 함께 더 사랑해도 되잖아요
네가 다른 사람이 좋아지면 
내가 너 없는 게 익숙해지면 
그때가 오면 그때가 되면 그때 
그때 그때 
네가 원하든 말든 널 잡을 거고 
내가 더 이상 지쳐 걷지 못할 때 
그때가 오면 그때가 되면
그때 헤어지면 돼 
그때 헤어지면 돼',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (7,13,'뿜뿜 - 모모랜드 (MOMOLAND)','설레어 너와 나의 랑데뷰 
랑데뷰
내 마음을 들었다 놨다 해 맘대루 
맘대루
지금 내 눈엔 눈엔 눈엔
네 어깨 무릎 발 Oh
숨이 탁 막힐 것 같아 난 너만 보면
wow wow 
정신을 또 놔 놔 네 매력에
난 난 놀라게 돼 또 
Hit it Hit it Hit it HO
우우우 무슨 말이 필요해 넌 
숨이 콱 막힐 것 같아 넌 
자꾸만 봐 자꾸 와 
이제 나만 보게 될 거야 
너를 들었다 놓을 거야
넌 점점 더 Fall in love
Give it to you My 눈눈눈눈눈눈 눈빛
쏟아지는 My 터터터터터터 터치
하나뿐인 My 럽럽럽럽럽 My Luver
내 머리부터 뿜뿜 
내 발끝까지 뿜뿜 뿜뿜 어
Just feel it 뿜뿜
네 앞에서 난 뿜뿜 
네게 줄게 뿜뿜 뿜뿜 어
지금 보고 있는 게 꿈은 아닐 걸 
Wake Up Wake Up 
땡땡이치고 날 만나게 될 걸 
Take off Take off
매력을 야 뿜어뿜어뿜어뿜어 
보여줄게 Pic up the phone
Now or Never Pick up Pick up
wow wow 
정신없이 쿵 쿵 
내 마음을 뿜 뿜 사정없이 또 
Hit it Hit it Hit it HO
우우우 여기서 뭘 어떻게 더
낮이나 밤이나 빛이나 미쳤나봐
떨리지 막 떨려와 
이제 나만 생각 날 거야 
밤에 잠도 잘 못 잘 거야 
점점 더 Fall in love
Give it to you My 눈눈눈눈눈눈 눈빛
쏟아지는 My 터터터터터터 터치
하나뿐인 My 럽럽럽럽럽 My Luver
내 머리부터 뿜뿜 
내 발끝까지 뿜뿜 뿜뿜 어
우 너만 보면 너만 보면 
내 가슴이 뿜뿜뿜뿜
뿜뿜뿜뿜 뿜
우 자꾸 봐도 자꾸 봐도 
내 가슴이 쿵쿵쿵쿵
뿜뿜뿜뿜
Give it to you My 눈눈눈눈눈눈 눈빛
쏟아지는 My 터터터터터터 터치
하나뿐인 My 럽럽럽럽럽 My Luver
내 머리부터 뿜뿜 
내 발끝까지 뿜뿜 뿜뿜 어
Just feel it 뿜뿜
네 앞에서 난 뿜뿜 
네게 줄게 뿜뿜 뿜뿜 어',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (8,14,'사랑을 했다 - iKON','사랑을 했다 우리가 만나 
지우지 못할 추억이 됐다 
볼만한 멜로드라마 
괜찮은 결말 
그거면 됐다 널 사랑했다 
우리가 만든 LOVE SCENARIO 
이젠 조명이 꺼지고 
마지막 페이지를 넘기면 
조용히 막을 내리죠 
에이 괜찮지만은 않아 
이별을 마주한다는 건 
오늘이었던 우리의 어제에 
더는 내일이 없다는 건 
아프긴 해도 더 끌었음 
상처가 덧나니까 Ye 
널 사랑했고 사랑 받았으니 
난 이걸로 됐어 
나 살아가면서 가끔씩 떠오를 기억 
그 안에 네가 있다면 그거면 충분해 
사랑을 했다 우리가 만나 
지우지 못할 추억이 됐다 
볼만한 멜로드라마 
괜찮은 결말 
그거면 됐다 널 사랑했다 
우리가 만든 LOVE SCENARIO 
이젠 조명이 꺼지고 
마지막 페이지를 넘기면 
조용히 막을 내리죠 
갈비뼈 사이사이가 찌릿찌릿한 느낌 
나 사랑받고 있음을 
알게 해주는 눈빛 
너에게 참 많이도 배웠다 
반쪽을 채웠다 
과거로 두기엔 
너무 소중한 사람이었다 
나 살아가면서 가끔씩 떠오를 기억 
그 안에 네가 있다면 그거면 충분해 
사랑을 했다 우리가 만나 
지우지 못할 추억이 됐다 
볼만한 멜로드라마 
괜찮은 결말 
그거면 됐다 널 사랑했다 
네가 벌써 그립지만 
그리워하지 않으려 해 
한 편의 영화 따스했던 봄으로 
너를 기억할게 
우리가 만든 LOVE SCENARIO 
이젠 조명이 꺼지고 
마지막 페이지를 넘기면 
조용히 막을 내리죠 
우린 아파도 해봤고 
우습게 질투도 했어 
미친 듯이 사랑했고
우리 이 정도면 됐어
사랑을 했다
우리가 만나
그거면 됐다
널 사랑했다',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (10,14,'그날처럼 - 장덕철','참 많은 시간이 흘러가고
넌 어떻게 사는지 참 궁금해
날 걱정하는 사람들에게
다 잊었단 거짓말하는 내가 참 미운 날
아름다운 이별은 세상에 없다지만
그때 내가 조금 더 너를 
편하게 보내줬다면
다른 사람 또 만나 행복할 니가 가끔은
내 생각할 때에 지을 표정이 참 궁금해
날 보는 네 눈이 좋아서 
얼굴 붉히며 딴청 피던 
아름답던 그날처럼 
좋은 사람 만나 사랑 받고 
너도 이젠 웃을 수 있길
찬란했던 우리 그날처럼
비어있는 지갑에 음식점을 서성이면
월급날이라며 손잡아 이끌어주던
만 원짜리 커플링 고맙다며 펑펑 울던
과분한 네 사랑 받을 사람 참 부러워
날 보는 네 눈이 좋아서 
얼굴 붉히며 딴청 피던 
아름답던 그날처럼 
좋은 사람 만나 사랑 받고 
너도 이젠 웃을 수 있길
찬란했던 우리 그날처럼
문득 들려오는 너의 소식에
가끔씩은 혼자 울 수 있길
끝까지 이기적인 내가
이젠 나 없이도 괜찮다 
너에게 듣고 싶던 말
좋은 사람 만나 미안해 
다시 돌아갈 순 없지만
아름답던 우리 그날',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (11,13,'Bad Boy - Red Velvet (레드벨벳)','Who dat who dat who dat boy
수많은 사람 속 눈에 띈
무심한 그 표정 I like that
내 호기심을 자극하지
Oh 시크한 스타일은 덤
입은 옷은 신경 쓴 듯 안 쓴 듯
관심 없는 말투 I like that
외면해 봐도 끌려
달라 도도한 날 웃게 하잖아
알잖아 요즘 내가 Hot ah ah
날 보는 시선 너도 느껴봐
홀린 듯 날 따라와
모두 환호해 너도 곧 Ooh ooh
Oh eh oh eh oh
아닌 척해도 넌 Ooh ooh
Oh eh oh eh oh
한 번 내기를 해볼까
너무 쉽겐 오지 마
재미없잖아 거기서 Ooh ooh
Oh eh oh eh oh
밀고 당겨볼까 Ooh ooh
Oh eh oh eh oh
시작할게 Bad boy down
Whoa whoa
지금부터 Bad boy down
Whoa whoa
잠깐 이리 와봐
너에게만 할 말이 있어
가까이 좀 와 고갤 숙여 키를 낮춰봐
다른 건 신경 쓰지 마
내 목소리에 집중해
상황은 좀 달라져
주위를 맴도는 내가 궁금해
너도 알게 될 거야 뭘까
알 거야 말해
이미 늦어버렸단 걸
맞아 사실 꽤나 자신 있어 난
지는 게임 하진 않아 Ha ah ah
벌써 반쯤은 넘어왔잖아
홀린 듯 날 따라와
모두 환호해 너도 곧 Ooh ooh
Oh eh oh eh oh
아닌 척해도 넌 Ooh ooh
Oh eh oh eh oh
한 번 내기를 해볼까
너무 쉽겐 오지 마
재미없잖아 거기서 Ooh ooh
Oh eh oh eh oh
밀고 당겨볼까 Ooh ooh
Oh eh oh eh oh
시작할게 Bad boy down
혼란스런 맘이겠지
상상조차 못할 거야
헤어나려 노력해도
어떤 작은 틈도 없어
정답은 정해져 있어
자연스럽게 넌 따라와
난 널 선택해 난 널 선택했어 이미
홀린 듯 날 따라와
모두 환호해 말했지 Ooh ooh
Oh eh oh eh oh
결관 항상 같아 Ooh ooh
Oh eh oh eh oh
거봐 내가 또 이겼어
너무 쉽겐 오지 마
재미없잖아 이제 넌 Ooh ooh
Oh eh oh eh oh
벗어날 수 없어 Ooh ooh
Oh eh oh eh oh
내겐 쉽지 Bad boy down',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (12,11,'주인공 - 선미','내 몸이 확
머리가 휙
돌아가 어때
지금 기분이
우리는 마치
자석 같아
서로를 안고
또 밀쳐내니까
너는 날 미치게 하고
정신 못 차리게 해
그래 알겠지 넌 참
날 기가 막히게 해
너는 날 춤추게 하고
술 없이 취하게 해
그래 알겠지 넌 참
착한 날 독하게 해
우리 둘만의
이 영화에
진짜 주인공은 너였어 baby
그래 넌 오늘도 너답게
화려한 주인공처럼
그저 하던 대로 해
그게 악역이라도
나를 슬프게 해도
넌 너여야만 해
내가 아플지라도
슬픈 엔딩이라도
the show must go on
the show must go on
너는 늘 끝장을 보고
모든 걸 덮으려 해
왜 날개를 달아주고
추락하자 해
너는 늘 착하지 라며
날 눈물 삼키게 하잖아
그래 알겠지 알겠지
넌 날 혹하게 해
우리 둘만의
이 드라마에
진짜 주인공은 너였어 baby
그래 넌 오늘도 너답게
화려한 주인공처럼
그저 하던 대로 해
그게 악역이라도
나를 슬프게 해도
넌 너여야만 해
내가 아플지라도
슬픈 엔딩이라도
the show must go on
the show must go on
그저 하던 대로 해
그게 악역이라도
나를 슬프게 해도
넌 너여야만 해
내가 아플지라도
슬픈 엔딩이라도
the show must go on
the show must go on
you must go on',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (13,11,'Roller Coaster - 청하','I remember very first time in love 
I remember oh oh 
I remember oh oh 
너도 같은 기분일까 so I''m in love 
I remember oh oh 
I remember oh 
어머 이래도 되는지 싶어 aha 
그래 너 때문에 매일 즐거워 
조금 서두르는 것 같아도 baby 
I need your love oh oh 
I need your love oh oh oh 
심장이 훅 내려앉게 달콤해 
가끔은 상처받을까 걱정돼 
처음부터 모든 걸 알 순 없겠지 
하지만 난 다 던져볼래 
자꾸 아찔한 이 느낌 
위험한 이 느낌 
내 손을 꼭 잡아줘 I want you 
흔들리지 않게 조금 더 뜨겁게 
나를 꼭 더 안아줘 
넌 롤러코스터 ooh ahh 
롤러코스터 uh woh ahh
I need your love ooh ahh
baby your love uh woh ahh
빤히 바라볼 때 가슴이 떨려
아닌 척 해봐도 뻔히 다 걸려
내가 먼저 말하지 않아도
이미 다 알아
넌 내 맘과 같아 aha
너무 빠른 건 아닐까 싶어 aha
근데 너 때문에 매일 새로워
조금 서툴러도 눈 감아줘 baby
I need your love oh oh
I need your love oh oh oh
시간이 멈춘 것처럼 달콤해
갑자기 날 떠날까 봐 걱정돼
처음부터 모든 걸 알 순 없겠지
하지만 난 다 던져볼래
자꾸 아찔한 이 느낌
위험한 이 느낌
내 손을 꼭 잡아줘 I want you
흔들리지 않게 조금 더 뜨겁게
나를 꼭 더 안아줘
넌 롤러코스터 ooh ahh
롤러코스터 uh woh ahh
I need your love ooh ahh
Baby your love uh woh ahh
어쩌다 찾아온 내 사랑
I love you I love you
모든 게 꿈이 아니기를
I love you I love you
Look
넌 롤러코스터 ooh ahh
넌 롤러코스터 baby
롤러코스터 uh woh ahh
롤러코스터 baby
I need your love ooh ahh
baby I need you love
baby your love uh woh ahh
롤러코스터
롤러코스터',to_date('18/02/17','RR/MM/DD'));
REM INSERTING into JBLOG.USERS
SET DEFINE OFF;
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (1,'hgd','홍길동','1111',to_date('18/02/13','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (2,'aaa','aaa','aaa',to_date('18/02/16','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (3,'melon','melon','1111',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (4,'iremys','아이래미','1111',to_date('18/02/17','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (5,'bit2018','비트컴','1111',to_date('18/02/19','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (6,'bitcom','비트컴','1111',to_date('18/02/19','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD PRIMARY KEY ("CATENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("CATENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD PRIMARY KEY ("CMTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("CMTCONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."USERS" ADD UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" MODIFY ("JOINDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."BLOG" MODIFY ("BLOGTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD PRIMARY KEY ("POSTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."POST" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."POST" MODIFY ("POSTTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD CONSTRAINT "C_BLOG_FK" FOREIGN KEY ("USERNO")
    REFERENCES "JBLOG"."USERS" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD CONSTRAINT "C_CATEGORY_FK" FOREIGN KEY ("USERNO")
    REFERENCES "JBLOG"."BLOG" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "C_COMMENT_FK" FOREIGN KEY ("POSTNO")
    REFERENCES "JBLOG"."POST" ("POSTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD CONSTRAINT "C_POST_FK" FOREIGN KEY ("CATENO")
    REFERENCES "JBLOG"."CATEGORY" ("CATENO") ENABLE;
