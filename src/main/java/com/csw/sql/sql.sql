drop table dd_user cascade constraints;
create table dd_user  (
   id                   varchar2(36)   primary key      not null,
   email                varchar2(60),
   nickname             varchar2(100),
   password             varchar2(50),
   status               varchar2(10),
   code                 varchar2(10),
   salt                 varchar2(20),
   create_date          date
);
commit;
select * from dd_user;



drop table dd_admin cascade constraints;
create table dd_admin  (
   id                   varchar2(36)       primary key              not null,
   username             varchar2(100),
   password             varchar2(100)
);
commit;
insert into dd_admin values('10001','admin','admin');
commit;
select * from dd_admin;



drop table dd_category cascade constraints;
create table dd_category  (
   id                   varchar2(36)       primary key              not null,
   name                 varchar2(100),
   parent_id            varchar2(36),
   levels               varchar2(10)
);
commit;
insert into dd_category values ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '小说', null, '1');
insert into dd_category values ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '文艺', null, '1');
insert into dd_category values ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '科技', null, '1');
insert into dd_category values ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '人文社科', null, '1');
insert into dd_category values ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '生活', null, '1');
insert into dd_category values ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '童书', null, '1');
insert into dd_category values ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '教育', null, '1');
insert into dd_category values ('f0dbdcb6-1857-4063-8759-090265c217c1', '官场', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
insert into dd_category values ('f0dbdcb6-1857-4063-8759-090265c217c2', '情感', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
insert into dd_category values ('f0dbdcb6-1857-4063-8759-090265c217c3', '四大名著', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
insert into dd_category values ('f0dbdcb6-1857-4063-8759-090265c217c4', '科幻小说', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
insert into dd_category values ('f0dbdcb6-1857-4063-8759-090265c217c5', '近现代小说', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
insert into dd_category values ('f0dbdcb6-1857-4063-8759-090265c217c6', '古典小说', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
insert into dd_category values ('8204dcff-1425-47f6-b1a9-a1f4440527f1', '历史', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
insert into dd_category values ('8204dcff-1425-47f6-b1a9-a1f4440527f2', '古籍', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
insert into dd_category values ('8204dcff-1425-47f6-b1a9-a1f4440527f3', '哲学/宗教', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
insert into dd_category values ('8204dcff-1425-47f6-b1a9-a1f4440527f4', '文化', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
insert into dd_category values ('8204dcff-1425-47f6-b1a9-a1f4440527f5', '政治/军事', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
insert into dd_category values ('8204dcff-1425-47f6-b1a9-a1f4440527f6', '法律', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
insert into dd_category values ('90a11717-49c7-4b10-a95f-1d0e8926b761', '文学', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
insert into dd_category values ('90a11717-49c7-4b10-a95f-1d0e8926b762', '传记', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
insert into dd_category values ('90a11717-49c7-4b10-a95f-1d0e8926b763', '艺术', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
insert into dd_category values ('90a11717-49c7-4b10-a95f-1d0e8926b764', '摄影', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
insert into dd_category values ('c4b646de-8dd0-4f3a-a06f-73cb97ab8571', '科普', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
insert into dd_category values ('c4b646de-8dd0-4f3a-a06f-73cb97ab8572', '建筑', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
insert into dd_category values ('c4b646de-8dd0-4f3a-a06f-73cb97ab8573', '医学', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
insert into dd_category values ('c4b646de-8dd0-4f3a-a06f-73cb97ab8574', '计算机', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
insert into dd_category values ('c4b646de-8dd0-4f3a-a06f-73cb97ab8575', '农林', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
insert into dd_category values ('c4b646de-8dd0-4f3a-a06f-73cb97ab8576', '自然科学', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
insert into dd_category values ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a461', '两性', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
insert into dd_category values ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a462', '孕期', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
insert into dd_category values ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a463', '育儿', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
insert into dd_category values ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a464', '亲自/家教', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
insert into dd_category values ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a465', '保健', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
insert into dd_category values ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a466', '运动', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
insert into dd_category values ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a467', '家居', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
insert into dd_category values ('79a263c5-b609-473e-85c8-aa351c56cc51', '0-2', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
insert into dd_category values ('79a263c5-b609-473e-85c8-aa351c56cc52', '3-6', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
insert into dd_category values ('79a263c5-b609-473e-85c8-aa351c56cc53', '7-10', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
insert into dd_category values ('79a263c5-b609-473e-85c8-aa351c56cc54', '11-14', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
insert into dd_category values ('79a263c5-b609-473e-85c8-aa351c56cc55', '绘本', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
insert into dd_category values ('79a263c5-b609-473e-85c8-aa351c56cc56', '英语', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
insert into dd_category values ('4fe9388b-b672-4640-8078-d36d40772ad1', '教材', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
insert into dd_category values ('4fe9388b-b672-4640-8078-d36d40772ad2', '外语', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
insert into dd_category values ('4fe9388b-b672-4640-8078-d36d40772ad3', '考试', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
insert into dd_category values ('4fe9388b-b672-4640-8078-d36d40772ad4', '中小学教辅', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
insert into dd_category values ('4fe9388b-b672-4640-8078-d36d40772ad5', '工具书', 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
commit;
select * from dd_category;



drop table dd_book cascade constraints;
create table dd_book  (
   id                   varchar2(36)         primary key            not null,
   name                 varchar2(100),
    author               varchar2(100),
     cover                varchar2(100),
   press                varchar2(100),
   press_date           DATE,
   edition              varchar2(100),
   print_date           DATE,
   impression           varchar2(100),
   isbn                 varchar2(110),
   word_num             number(10),
   page_num             varchar2(100),
   sizes               varchar2(100),
   paper                varchar2(100),
   pack   varchar2(100),
   price                number(10,2),
   dprice               number(10,2),
   create_date          DATE,
   editor_recommend     varchar2(4000),
   content_abstract     varchar2(4000),
   author_abstract      varchar2(4000),
    director             varchar2(4000),
   media_commentary     varchar2(1000),
    category_id varchar2(36)  references dd_category (id),
     sale                 varchar2(100),
   stock                number(10)
);
commit;
INSERT INTO dd_book VALUES ('1', '儒林外史', '吴敬梓', 'rlws.jpg', '花山文艺出版社', TO_DATE('2015-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '12', '10', TO_DATE('2019-01-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '《儒林外史》，是一部描绘知识分子群像的长篇讽刺小说。作品描写了深受八股毒害的儒生的种种荒诞与虚伪行为。', '《儒林外史》，是一部描绘知识分子群像的长篇讽刺小说。作品描写了深受八股毒害的儒生的种种荒诞与虚伪行为。', '吴敬梓（1701-1754），汉族，安徽全椒人，清代最伟大的小说家之一。生活于“康乾盛世”时期，自幼聪慧好学。23岁时，考取秀才，当年其父吴霖起失官、病故。此后，他科场不顺，并经历了近亲掠夺祖产的事情，目睹了官场斗争的残酷。他开始挥金如土、纵情享乐，终致家财散尽。33岁时移居南京，生活清贫，喜交高雅之士，对热衷功名者嗤之以鼻。35岁时，决定放弃科考，并开始创作《儒林外史》。历13年书成，后坚持修改，直至54岁病逝。', '第　一　回 说楔子敷陈大义 借名流隐括全文 001
第　二　回 王孝廉村学识同科 周蒙师暮年登上第 007
第　三　回 周学道校士拔真才 胡屠户行凶闹捷报 012
第　四　回 荐亡斋和尚吃官司 打秋风乡绅遭横事 019
第　五　回 秀才议立偏房 严监生疾终正寝 024
第　六　回 乡绅发病闹船家 寡妇含冤控大伯 030
第　七　回 范学道视学报师恩 王员外立朝敦友谊 036
第　八　回 王观察穷途逢世好 娄公子故里遇贫交 041
第　九　回 娄公子捐金赎朋友 刘守备冒姓打船家 046
第　十　回 鲁翰林怜才择婿 蘧公孙富室招亲 052
第 十 一 回 鲁小姐制义难新郎 杨司训相府荐贤士 057
第 十 二 回 名士大宴莺脰湖 侠客虚设人头会 062
第 十 三 回 蘧夫求贤问业 马纯上仗义疏财 067
第 十 四 回 蘧公孙书坊送良友 马秀才山洞遇神仙 073
第 十 五 回 葬神仙马秀才送丧 思父母匡童生尽孝 078
第 十 六 回 大柳庄孝子事亲 乐清县贤宰爱士 083
第 十 七 回 匡秀才重游旧地 赵医生高踞诗坛 088
第 十 八 回 约诗会名士携匡二 访朋友书店会潘三 093
第 十 九 回 匡超人幸得良朋 潘自业横遭祸事 098
第 二 十 回 匡超人高兴长安道 牛布衣客死芜湖关 103
第二十一回 冒姓字小子求名 念亲戚老夫卧病 108
第二十二回 认祖孙玉圃联宗 爱交游雪斋留客 113
第二十三回 发阴私诗人被打 叹老景寡妇寻夫 119
第二十四回 牛浦郎牵连多讼事 鲍文卿整理旧生涯 125
第二十五回 鲍文卿南京遇旧 倪廷玺安庆招亲 130
第二十六回 向观察升官哭友 鲍廷玺丧父娶妻 135
第二十七回 王太太夫妻反目 倪廷珠兄弟相逢 140
第二十八回 季苇萧扬州入赘 萧金铉白下选书 145
第二十九回 诸葛佑僧寮遇友 杜慎卿江郡纳姬 150
第 三 十 回 爱少俊访友神乐观 逞风流高会莫愁湖 155
第三十一回 天长县同访豪杰 赐书楼大醉高朋 160
第三十二回 杜少卿平居豪举 娄焕文临去遗言 166
第三十三回 杜少卿夫妇游山 迟衡山朋友议礼 171
第三十四回 议礼乐名流访友 备弓旌天子招贤 176
第三十五回 圣天子求贤问道 庄征君辞爵还家 182
第三十六回 常熟县真儒降生 泰伯祠名贤主祭 187
第三十七回 祭先圣南京修礼 送孝子西蜀寻亲 192
第三十八回 郭孝子深山遇虎 甘露僧狭路逢仇 198
第三十九回 萧云仙救难明月岭 平少保奏凯青枫城 203
第 四 十 回 萧云仙广武山赏雪 沈琼枝利涉桥卖文 208
第四十一回 庄濯江话旧秦淮河 沈琼枝押解江都县 214
第四十二回 公子妓院说科场 家人苗疆报信息 219
第四十三回 野羊塘将军大战 歌舞地酋长劫营 224
第四十四回 汤总镇成功归故乡 余明经把酒问葬事 229
第四十五回 敦友谊代兄受过 讲堪舆回家葬亲 234
第四十六回 三山门贤人饯别 五河县势利熏心 239
第四十七回 虞秀才重修元武阁 方盐商大闹节孝祠 244
第四十八回 徽州府烈妇殉夫 泰伯祠遗贤感旧 249
第四十九回 翰林高谈龙虎榜 中书冒占凤凰池 254
第 五 十 回 假官员当街出丑 真义气代友求名 259
第五十一回 少妇骗人折风月 壮士高兴试官刑 263
第五十二回 比武艺公子伤身 毁厅堂英雄讨债 267
第五十三回 国公府雪夜留宾 来宾楼灯花惊梦 272
第五十四回 病佳人青楼算命 呆名士妓馆献诗 277
第五十五回 添四客述往思来 弹一曲高山流水 283
第五十六回 神宗帝下诏旌贤 刘尚书奉旨承祭 288', '秉持公心，指摘时弊。机锋所向，尤在士林；其文又戚而能谐，婉而多讽。
——鲁迅
《儒林外史》是一部主角不断变换的长篇小说，其艺术特色堪称“精工提炼”。
——胡适
《儒林外史》里虽然没有一个*人称在那里穿线，但似乎有一个“我”在。这个“我”，把自己所历种种，老老实实地写了出来。
——张天翼', 'f0dbdcb6-1857-4063-8759-090265c217c6', '155', '1000');
INSERT INTO dd_book VALUES ('4', '聊斋志异', '蒲松龄', 'lzzy.jpg', '民主与建设出版社', TO_DATE('2015-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '15', '14', TO_DATE('2019-01-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '中国古代灵异与志怪小说的集大成者，收录近500篇知名小说', '清代小说家蒲松龄代表作，中国古代灵异、志怪小说的集大成者。', '作者很低调，没有做简介', '高序
唐序
聊斋自志
卷一
考城隍
耳中人
尸变
喷水
瞳人语
画壁
山魈
咬鬼
捉狐
收中怪', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '34', '1000');
INSERT INTO dd_book VALUES ('5', '金瓶梅', '兰陵笑笑生', 'jpm.jpg', '吉林大学出版社', TO_DATE('2016-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '125', '120', TO_DATE('2019-02-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '中国伟大的写实小说，有明一代的百科全书，古代小说史上里程碑性质的作品，开拓了中国小说史的新阶段。没有《金瓶梅》，就产生不了《红楼梦》，《金瓶梅》与《红楼梦》是中华民族的骄傲，可以与世界*伟大的小说相媲美。 ', '中国伟大的写实小说 有明一代的百科全书 开拓了中国小说史上的新阶段', '作者很低调，没有做简介', '第一回
西门庆热结十兄弟 武二郎冷遇亲哥嫂
第二回
俏潘娘帘下勾情 老王婆茶坊说技
第三回
定挨光王婆受贿 设圈套浪子私挑
第四回
赴巫山潘氏幽欢 闹茶坊郓哥义愤
第五回
捉奸情郓哥定计 饮酰药武大遭殃
第六回
何九受贿瞒天 王婆帮闲遇雨
第七回
薛媒婆说娶孟三儿 杨姑娘气骂张四舅
第八回
盼情郎佳人占鬼卦 烧夫灵和尚听淫声
第九回
西门庆偷娶潘金莲 武都头误打李皂隶
第十回
义士充配孟州道 妻妾玩赏芙蓉亭', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '0', '1000');
INSERT INTO dd_book VALUES ('6', '东周列国志', '冯梦龙', 'dzlgz.jpg', '民主与建设出版社', TO_DATE('2017-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '20', '19', TO_DATE('2019-03-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '当当网此版本销售火爆！写尽东周五百年群雄争霸颠覆历史格局的传奇巨著！', '古典小说精品系列： 《芈月传》小说原著及编剧蒋胜男读的首本书《 东周列国志 》 ', '作者很低调，没有做简介', '买了就知道目录了，我就不多介绍了', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '98', '1000');
INSERT INTO dd_book VALUES ('2', '镜花缘', '李汝珍', 'jhy.jpg', '民主与建设出版社', TO_DATE('2018-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '20', '18.5', TO_DATE('2019-04-15 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '中国古典文学巨著，鲁迅称之为能“与万宝全书相邻比”的奇书）', '内容很好，买了就知道了', '李汝珍（约1763—约1830），字松石，号松石道人，直隶大兴（今属北京市）人。李汝珍自幼聪敏好学、多才多艺，精通音韵、博弈、书画、星卜等，著有音韵学著作《李氏音鉴》、围棋谱《受子谱》等。
李汝珍凭借自己丰富的想象、幽默的笔调，运用夸张、隐喻、反衬等手法，创造出了结构独特、思想新颖的长篇小说《镜花缘》，书中写了君子国、女儿国、无肠国等国家，表现出作者无与伦比的想象力，而在其所描写的浪漫虚幻的世相下，却展现出对生命的热爱、对死亡的敬畏、对人类生存境遇的追问。', '第一回 女魁星北斗垂景象　老王母西池赐芳筵 001
第二回 发正言花仙顺时令　定罚约月姊助风狂 004
第三回 徐英公传檄起义兵　骆主簿修书寄良友 006
第四回 吟雪诗暖阁赌酒　挥醉笔上苑催花 008
第五回 俏宫娥戏夸金盏草　武太后怒贬牡丹花 011
第六回 众宰承宣游上苑　百花获谴降红尘 014
第七回 小才女月下论文科　老书生梦中闻善果 018
第八回 弃嚣尘结伴游寰海　觅胜迹穷踪越远山 021
第九回 服肉芝延年益寿　食朱草入圣超凡 024
第十回 诛大虫佳人施药箭　搏奇鸟壮士奋空拳 028
第十一回 观雅化闲游君子邦　慕仁风误入良臣府 032
第十二回 双宰辅畅谈俗弊　两书生敬服良箴 035
第十三回 美人入海遭罗网　儒士登山失路途 040
第十四回 谈寿夭道经聂耳　论穷通路出无肠 043
第十五回 喜相逢师生谈故旧　巧遇合宾主结新亲 046
第十六回 紫衣女殷勤问字　白发翁傲慢谈文 050
第十七回 因字声粗谈切韵　闻雁唳细问来宾 054
第十八回 辟清谈幼女讲易经　发至论书生尊孟子 058
第十九回 受女辱潜逃黑齿邦　观民风联步小人国 062
第二十回 丹桂岩山鸡舞镜　碧梧岭孔雀开屏 066
第二十一回 逢恶兽唐生被难　施神枪魏女解围 070
第二十二回 遇白民儒士听奇文　观药兽武夫发妙论 074
第二十三回 说酸话酒保咬文　讲迂谈腐儒嚼字 078
第二十四回 唐探花酒楼闻善政　徐公子茶肆叙衷情 082
第二十五回 越危垣潜出淑士关　登曲岸闲游两面国 085
第二十六回 遇强梁义女怀德　遭大厄灵鱼报恩 088
第二十七回 观奇形路过翼民郡　谈异相道出豕喙乡 092
第二十八回 老书生仗义舞龙泉　小美女衔恩脱虎穴 096
第二十九回 服妙药幼子回春　传奇方老翁济世 100
第三十回 觅蝇头林郎货禽鸟　因恙体枝女作螟蛉 104
第三十一回 谈字母妙语指谜团　看花灯戏言猜哑谜 107
第三十二回 访筹算畅游智佳国　观艳妆闲步女儿乡 113
第三十三回 粉面郎缠足受困　长须女玩股垂情 117
第三十四回 观丽人女主定吉期　访良友老翁得凶信 120
第三十五回 现红鸾林贵妃应课　揭黄榜唐义士治河 123
第三十六回 佳人喜做东床婿　壮士愁为举案妻 127
第三十七回 新贵妃返本为男　旧储子还原作女 130
第三十八回 步玉桥茂林观凤舞　穿金户宝殿听鸾歌 133
第三十九回 轩辕国诸王祝寿　蓬莱岛二老游山 136
第四十回 入仙山撒手弃凡尘　走瀚海牵肠归故土 140
第四十一回 观奇图喜遇佳文　述御旨欣逢盛典 144
第四十二回 开女试太后颁恩诏　笃亲情佳人盼好音 152
第四十三回 因游戏仙猿露意　念劬劳孝女伤怀 155
第四十四回 小孝女岭上访红蕖　老道姑舟中献瑞草 159
第四十五回 君子国海中逢水怪　丈夫邦岭下遇山精 162
第四十六回 施慈悲仙子降妖　发慷慨储君结伴 166
第四十七回 水月村樵夫寄信　镜花岭孝女寻亲 170
第四十八回 睹碑记默喻仙机　观图章微明妙旨 173
第四十九回 泣红亭书叶传佳话　流翠浦搴裳觅旧踪 178
第五十回 遇难成祥马能伏虎　逢凶化吉妇可降夫 181
第五十一回 走穷途孝女绝粮　得生路仙姑献稻 185
第五十二回 谈春秋胸罗锦绣　讲礼制口吐珠玑 188
第五十三回 论前朝数语分南北　书旧史挥毫贯古今 192
第五十四回 通智慧白猿窃书　显奇能红女传信 196
第五十五回 田氏女细谈妙剂　洛家娃默祷灵签 200', '好，很好', 'f0dbdcb6-1857-4063-8759-090265c217c6', '888', '1000');
INSERT INTO dd_book VALUES ('7', '搜神记', '马银琴', 'ssj.jpg', '中华书局出版社', TO_DATE('2014-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '20', '19', TO_DATE('2014-01-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '中华经典名著全书全注全译丛书', '中华经典名著全书全注全译丛书', '作者很低调，没有做简介', '买了就知道目录了，我就不多介绍了', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '951', '1000');
INSERT INTO dd_book VALUES ('9', '世说新语', '刘义庆', 'ssxy.jpg', '上海古籍出版社', TO_DATE('2015-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '600', '16开', '胶版纸', '平装-胶订', '30', '28', TO_DATE('2013-01-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '世说新语详解(套装共2册)》包括《世说新语》原文、今译、刘孝标注、今注、评析五个部分。《世说新语》原文和刘孝标注以涵芬楼影印嘉趣堂本为底本，同时参考了余嘉锡《世说新语笺疏》等著作的校勘成果，力求保持原著的本来面貌；评析部分则注重历史事件、社会背景和人物关系的交代，以期钩深致远，充分阐发其本旨。', '刘义庆的《世说新语》是一部专记前代遗闻轶事 的笔记小说。《世说新语详解》是朱碧莲教授的*后一部著作', '刘义庆，南朝宋人，官至兖州刺史。为人“性简素，寡嗜欲”，喜与文学之士交游，在他的周围，聚集着一大批名儒硕学。他的著作丰富，其中最有名的是《世说新语》。这是一部记载汉末至魏晋时期士族阶层的言行风貌和逸事趣闻的笔记体小说。书中保留了大量反映当时社会生活的珍贵史料，语言简炼，文字生动鲜活，是一部文学价值极高的古典名著。刘义庆也因此书而名垂千古。', '序言
前言
德行第一
言语第二
政事第三
文学第四
方正第五
雅量第六
识鉴第七
赏誉第八
品藻第九
规箴第十
捷悟第十一
夙惠第十二', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '332', '1000');
INSERT INTO dd_book VALUES ('8', '官场现形记', '李伯元', 'gcxxj.jpg', '上海古籍出版社', TO_DATE('2015-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '600', '16开', '胶版纸', '平装-胶订', '22', '20', TO_DATE('2012-01-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '中国官场有着说不尽道不明的故事。一个人不论身居什么环境，只要耳濡目染，久而久之，必然会潜移默化。因此，李伯元编著的《官场现形记》正是一面审视自己*好的借镜。', '中国官场有着说不尽道不明的故事。一个人不论身居什么环境，只要耳濡目染，久而久之，必然会潜移默化。', '作者很低调，没有做简介', '买了就知道目录了，我就不多介绍了', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '189', '1000');
INSERT INTO dd_book VALUES ('13', '三国演义', '罗贯中', 'sgyy.jpg', '人民文学出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '88', TO_DATE('2011-01-15 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说*著名最杰出的长篇章回体历史小说。', '作者很低调，没有做简介', '第001回　宴桃园豪杰三结义　斩黄巾英雄首立功
第002回　张翼德怒鞭督邮　何国舅谋诛宦竖
第003回　议温明董卓叱丁原　馈金珠李肃说吕布
第004回　废汉帝陈留践位　谋董贼孟德献刀
第005回　发矫诏诸镇应曹公　破关兵三英战吕布
第006回　焚金阙董卓行凶　匿玉玺孙坚背约
第007回　袁绍磐河战公孙　孙坚跨江击刘表
第008回　王司徒巧使连环计　董太师大闹凤仪亭
第009回　除暴凶吕布助司徒　犯长安李傕听贾诩
第010回　勤王室马腾举义　报父仇曹操兴师
第011回　刘皇叔北海救孔融　吕温侯濮阳破曹操
第012回　陶恭祖三让徐州　曹孟穗大战吕布
第013回　李傕郭汜大交兵　杨奉董承双救驾
第014回　曹孟德移驾幸许都　吕奉先乘夜袭徐郡', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '469', '1000');
INSERT INTO dd_book VALUES ('11', '西游记', '吴承恩', 'xyj.jpg', '人民文学出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '88', TO_DATE('2000-01-15 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '《西游记》主要描写的是孙悟空保唐僧西天取经，历经九九八十一难的故事。', '吴承恩（1500年-1582年），字汝忠，号淮海浪士，又号射阳山人。淮安府山阳县（今江苏省淮安市淮安区）人。中国明代杰出的小说家，著有中国古典四大名著之一《西游记》，被翻译成世界语。吴承恩一生创作丰富，但是由于家贫，又没有子女，作品多散失。据记载还著有志怪小说集《禹鼎记》，已失传。', '第一回 灵根育孕源流出 心性修持大道生
第二回 悟彻菩提真妙理 断魔归本合元神
第三回 四海千山皆拱伏 九幽十类尽除名
第四回 官封弼马心何足 名注齐天意未宁
第五回 乱蟠桃大圣偷丹 反天宫诸神捉怪
第六回 观音赴会问原因 小圣施威降大圣
第七回 八封炉中逃大圣 五行山下定心猿
第八回 我佛造经传极乐 观音奉旨上长安
第九回 袁守诚妙算无私曲 老龙王拙计犯天条
第十回 二将军宫门镇鬼 唐太宗地府还魂
第十一回 还受生唐王遵善果 度孤魂瑀萧正空门
第十二回 玄奘秉诚建大会 观音显相化金蝉
第十三回 陷虎穴金星解厄 双叉岭伯钦留僧
第十四回 心猿归正 六贼无踪', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '23', '1000');
INSERT INTO dd_book VALUES ('12', '水浒传', '施耐庵', 'shz.jpg', '人民文学出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '88', TO_DATE('2003-01-15 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '《水浒传》是我国第一部以农民起义为题材的长篇章回小说，是我国文学史上一座巍然屹立的丰碑。', '作者很低调，没有做简介', '第一回 张天师祈禳瘟疫 
洪太尉误走妖魔
第二回 王教头私走延安府
九纹龙大闹史家村
第三回 史大郎夜走华阴县
鲁提辖拳打镇关西
第四回 赵员外重修文殊院
鲁智深大闹五台山
第五回 小霸王醉入销金帐
花和尚大闹桃花村
第六回 九纹龙剪径赤松林
鲁智深火烧瓦罐寺
第七回 花和尚倒拔垂杨柳', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '12', '1000');
INSERT INTO dd_book VALUES ('14', '红楼梦', '曹雪芹', 'hlm.jpg', '人民文学出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '88', TO_DATE('2019-01-15 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '中国四大名著之一，本书是一部具有高度思想性和高度艺术性的伟大作品', '作者很低调，没有做简介', '第一回 甄士隐梦幻识通灵
贾雨村风尘怀闺秀
第二回 贾夫人仙逝扬州城
冷子兴演说荣国府
第三回 贾雨村夤缘复旧职
林黛玉抛父进京都
第四回 薄命女偏逢薄命郎
戎芦僧乱判葫芦案
第五回 游幻境指迷十二钗
饮仙醪曲演红楼梦
第六回 贾宝玉初试云雨情
刘姥姥一进荣国府', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '578', '1000');
INSERT INTO dd_book VALUES ('16', '上课睡觉的故事', '张坤', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2004-01-15 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '478', '1000');
INSERT INTO dd_book VALUES ('17', '下课头疼的故事', '张坤', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2006-01-07 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '765', '1000');
INSERT INTO dd_book VALUES ('10', '风神演义', '许仲琳', 'fsyy.jpg', '中华书局出版社', TO_DATE('2015-07-01 16:30:34', 'YYYY-MM-DD HH24:MI:SS'), '第三版', TO_DATE('2018-12-12 16:32:08', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '50000', '600', '16开', '胶版纸', '平装-胶订', '50', '49', TO_DATE('2008-01-07 16:34:07', 'YYYY-MM-DD HH24:MI:SS'), '封神演义》(作者许仲琳)是中国古代优秀的神话文学作品之一。它以周武王起兵伐纣的复杂曲折的斗争为主线，描写了许多仙道斗法的故事，塑造了凶残暴虐的纣王、神机妙算的姜子牙、三头六臂的哪吒等一大批栩栩如生的艺术形象。作品充分发挥神话传说的想象特长，幻想奇特，情节引人入胜，创造了一个色彩斑斓的奇妙世界。几百年来，一直在读者中广为流传。', ' 又名《商周列国全传》、《武王伐纣外史》、《封神 传》，中国神魔小说，为明代陈仲琳(一说是许仲琳) 所作，约成书于隆庆、万历年间。', '作者很低调，没有做简介', '第一回 纣王女娲宫进香
第二回 冀州侯苏护反商
第三回 姬昌解围进妲己
第四回 恩州驿狐狸死妲己
第五回 云中子进剑除妖
第六回 纣王无道造炮烙
第七回 费仲计废姜皇后
第八回 方弼方相反朝歌
第九回 商容九间殿死节
第十回 姬伯燕山收雷震
第十一回 里城囚西伯侯
第十二回 陈塘关哪吒出世
第十三回 太乙真人收石矶
第十四回 哪吒现莲花化身', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '56', '1000');
INSERT INTO dd_book VALUES ('21', '晚上减肥的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2001-01-07 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '876', '1000');
INSERT INTO dd_book VALUES ('24', '上课玩游戏的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2003-01-22 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '435', '1000');
INSERT INTO dd_book VALUES ('18', '下课不睡觉的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2005-01-07 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '345', '1000');
INSERT INTO dd_book VALUES ('15', '上课头疼的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2007-01-15 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '47', '1000');
INSERT INTO dd_book VALUES ('23', '上课去厕所的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('1919-01-07 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '356', '1000');
INSERT INTO dd_book VALUES ('20', '早上不吃饭的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2019-05-07 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '179', '1000');
INSERT INTO dd_book VALUES ('22', '吃饭不减肥的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2019-08-07 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '140', '1000');
INSERT INTO dd_book VALUES ('19', '中午吃饭的故事', '叶锋泽', '1.jpg', '百知教育出版社', TO_DATE('2015-10-01 16:38:10', 'YYYY-MM-DD HH24:MI:SS'), '第四版', TO_DATE('2018-12-19 16:38:26', 'YYYY-MM-DD HH24:MI:SS'), '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100', '89', TO_DATE('2019-01-07 16:39:43', 'YYYY-MM-DD HH24:MI:SS'), '编辑没有推荐', '买了你就知道内容简介了', '作者很低调，没有做简介', '买了你就知道目录是啥了', '你的java学好了吗？', 'f0dbdcb6-1857-4063-8759-090265c217c5', '290', '1000');
commit;



drop table dd_address cascade constraints;
create table dd_address  (
   id                   varchar2(36)     primary key               not null,
    user_id              varchar2(36)  references dd_user (id),
   name                 varchar2(100),
    local                varchar2(300),
     zip_code             varchar2(10),
   phone                varchar2(11)
);
commit;
select * from dd_address;



drop table dd_order cascade constraints;
create table dd_order  (
   id                   varchar2(36)     not null,
   order_no            varchar2(36),
   total                number(10,2),
   create_date          date,
   status               varchar2(100),
   address_id varchar2(36) references dd_address (id),
   user_id varchar2(36) references dd_user(id)
);
commit;
select * from dd_order;



drop table dd_item cascade constraints;
create table dd_item  (
   id                   varchar2(36)        primary key             not null,
   count                number(10),
   create_date          date,
 order_id varchar2(36),
 book_id varchar2(36) references dd_book(id)
);
commit;
select * from dd_item;