SET
  names utf8;
DROP DATABASE IF EXISTS beiwo;
CREATE DATABASE beiwo charset = utf8;
USE beiwo;
-- **************用户表*************
  CREATE TABLE users (
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(16) UNIQUE,
    uphone VARCHAR(11) NOT NULL UNIQUE,
    upwd VARCHAR(32) NOT NULL,
    uphoto VARCHAR(64) DEFAULT '/img/touxiang/default.jpg',
    uemail VARCHAR(32),
    sex INT
  );
INSERT INTO
  users
values(
    1,
    'paddy',
    '18323292281',
    '123456789',
    '/img/touxiang/1.jpg',
    '1311511705@qq.com',
    1
  );
INSERT INTO
  users
values(
    null,
    'zycmax',
    '14780093875',
    '123456789',
    default,
    '17780093875@qq.com',
    0
  );
-- ************************案例表*********************
  CREATE TABLE cases(
    wid INT PRIMARY KEY AUTO_INCREMENT,
    wphoto VARCHAR(64) NOT NULL,
    wdphoto VARCHAR(64) NOT NULL,
    warea VARCHAR(10) NOT NULL,
    wroom VARCHAR(8) NOT NULL,
    wstyle VARCHAR(6) NOT NULL,
    wprice VARCHAR(8) NOT NULL,
    region VARCHAR(6) NOT NULL,
    wtitle VARCHAR(32) NOT NULL,
    calls VARCHAR(11) NOT NULL,
    tagroom VARCHAR(8),
    tagarea VARCHAR(12),
    tagprice VARCHAR(8)
  );
INSERT INTO
  cases
values(
    1,
    'img/anli/1/anli1.jpg',
    'img/anli/1/anli1-1.jpg',
    '110㎡',
    '3室2厅1厨2卫',
    '轻奢',
    '40万起',
    '北京',
    '开放式厨房+吧台，还有超大餐厅，鱼和熊掌也可兼得',
    '17888888888',
    '3',
    '90-120',
    '30-50'
  );
INSERT INTO
  cases
values(
    null,
    'img/anli/2/anli2.jpg',
    'img/anli/2/anli2-1.jpg',
    '35㎡',
    '1室1厅1厨1卫',
    '北欧',
    '25万起',
    '北京',
    '小户型也有大空间',
    '18888888888',
    '1',
    '60',
    '20-30'
  );
INSERT INTO
  cases
values(
    null,
    'img/anli/3/anli3.jpg',
    'img/anli/3/anli3-1.jpg',
    '45㎡',
    '1室1厅1厨1卫',
    '北欧',
    '20万起',
    '北京',
    '这个家看起来不止45平米',
    '19888888888',
    '1',
    '60',
    '20-30'
  );
INSERT INTO
  cases
values(
    null,
    'img/anli/4/anli4.jpg',
    'img/anli/4/anli4-1.jpg',
    '60㎡',
    '2室1厅1厨1卫',
    '工业风',
    '23万起',
    '北京',
    '工业+日式，也可以打造得很舒适',
    '16888888888',
    '2',
    '60-90',
    '20-30'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/5/anli5.jpg',
    'img/anli/5/anli5-1.jpg',
    '75㎡',
    '2室1厅1厨1卫',
    '新中式',
    '35万起',
    '北京',
    '设计师的家',
    '16988888888',
    '2',
    '60-90',
    '30-50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/6/anli6.jpg',
    'img/anli/6/anli6-1.jpg',
    '180㎡',
    '3室2厅1厨3卫',
    '美式',
    '50万起',
    '北京',
    '浅蓝色+白色，美式也能小清新',
    '16788888888',
    '3',
    '150',
    '50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/7/anli7.jpg',
    'img/anli/7/anli7-1.jpg',
    '70㎡',
    '2室1厅1厨1卫',
    '工业风',
    '30万起',
    '北京',
    '都不敢在家中尝试的工业风，在70㎡的两居中竟然如此完美',
    '16888888888',
    '2',
    '60-90',
    '30-50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/8/anli8.jpg',
    'img/anli/8/anli8-1.jpg',
    '100㎡',
    '2室1厅1厨1卫',
    '现代简约',
    '25万起',
    '北京',
    '利用一扇屏风，一组柜既划分空间，有不耽误空间利用',
    '16688888888',
    '2',
    '90-120',
    '20-30'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/9/anli9.jpg',
    'img/anli/9/anli9-1.jpg',
    '98㎡',
    '2室1厅1厨1卫',
    '北欧',
    '23万起',
    '北京',
    '98㎡精装房改造记',
    '16388888888',
    '2',
    '90-120',
    '20-30'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/10/anli10.jpg',
    'img/anli/10/anli10-1.jpg',
    '145㎡',
    '3室2厅1厨2卫',
    '现代简约',
    '125万起',
    '北京',
    '房屋布局大开脑洞，巧妙规划后变得灵动而有趣',
    '16288888888',
    '3',
    '120-150',
    '50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/11/anli11.jpg',
    'img/anli/11/anli11-1.jpg',
    '130㎡',
    '3室2厅1厨2卫',
    '轻奢',
    '35万起',
    '北京',
    '灰色调的现代都市风，不仅颜值高，收纳能力也很强',
    '16388888888',
    '3',
    '120-150',
    '30-50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/12/anli12.jpg',
    'img/anli/12/anli12-1.jpg',
    '81㎡',
    '3室1厅1厨1卫',
    '日式',
    '25万起',
    '北京',
    '客厅有个窗户应该怎么装',
    '16898888888',
    '3',
    '60-90',
    '20-30'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/13/anli13.jpg',
    'img/anli/13/anli13-1.jpg',
    '150㎡',
    '4室2厅1厨2卫',
    '新中式',
    '52万起',
    '北京',
    '逛工地随手拍硬装-撩人浪漫法式',
    '16878888888',
    '4',
    '150',
    '50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/14/anli14.jpg',
    'img/anli/14/anli14-1.jpg',
    '212㎡',
    '4室1厅1厨3卫',
    '现代简约',
    '130万起',
    '北京',
    '作为整屋的颜值担当，餐桌不甘寂寞从厨房跑了出来',
    '16868888888',
    '4',
    '150',
    '50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/15/anli15.jpg',
    'img/anli/15/anli15-1.jpg',
    '220㎡',
    '5室3厅1厨3卫',
    '北欧',
    '120万起',
    '北京',
    '给你一个冷酷的家，你敢吗',
    '16858888888',
    '5',
    '150',
    '50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/16/anli16.jpg',
    'img/anli/16/anli16-1.jpg',
    '260㎡',
    '5室2厅1厨4卫',
    '现代简约',
    '130万起',
    '北京',
    '这个优雅别致的家，别具匠心的装了一个【透明】走廊',
    '16838888888',
    '5',
    '150',
    '50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/17/anli17.jpg',
    'img/anli/17/anli17-1.jpg',
    '55㎡',
    '1室1厅1厨1卫',
    '复古',
    '25万起',
    '北京',
    '55㎡老房，摆脱“老破小”标签，变身别具韵味的老土风雅豪宅',
    '16889888888',
    '1',
    '60',
    '20-30'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/18/anli18.jpg',
    'img/anli/18/anli18-1.jpg',
    '73㎡',
    '2室1厅1厨1卫',
    '新中式',
    '35万起',
    '北京',
    '住进山水画里，每日看山喝茶品酒',
    '16885888888',
    '2',
    '60-90',
    '20-30'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/19/anli19.jpg',
    'img/anli/19/anli19-1.jpg',
    '90㎡',
    '2室1厅1厨1卫',
    '复古',
    '40万起',
    '北京',
    '为时髦年轻的小两口改造专属户型-人房合一的生活状态',
    '16886888888',
    '2',
    '90-120',
    '30-50'
  );
  INSERT INTO
  cases
values(
    null,
    'img/anli/20/anli20.jpg',
    'img/anli/20/anli20-1.jpg',
    '98㎡',
    '2室2厅1厨1卫',
    '新中式',
    '25万起',
    '北京',
    '简·新中式',
    '16886888888',
    '2',
    '90-120',
    '20-30'
  );
  
-- *******************用户关注表****************
  CREATE TABLE focus(
    aid INT PRIMARY KEY AUTO_INCREMENT,
    wid INT NOT NULL,
    uid INT NOT NULL,
    FOREIGN KEY(wid) REFERENCES cases(wid),
    FOREIGN KEY(uid) REFERENCES users(uid)
  );
INSERT INTO
  focus
values(1, 1, 1);
INSERT INTO
  focus
values(NULL, 3, 1);
INSERT INTO
  focus
values(null, 1, 2);
INSERT INTO
  focus
values(NULL, 4, 2);
-- ******************用户户型信息表**************
  CREATE TABLE user_house(
    uhid INT PRIMARY KEY AUTO_INCREMENT,
    ucity VARCHAR(8) NOT NULL,
    estate VARCHAR(8) NOT NULL,
    house VARCHAR(10) NOT NULL,
    area VARCHAR(8) NOT NULL,
    uid INT NOT NULL,
    FOREIGN KEY(uid) REFERENCES users(uid)
  );
INSERT INTO
  user_house
values(1, '重庆市', '中交丽景', '3室2厅1厨2卫', '120', 1);
INSERT INTO
  user_house
values(null, '重庆市', '两代一家', '3室2厅1厨2卫', '120', 2);
-- ******************消息列表***********************
  CREATE TABLE news(
    newid INT PRIMARY KEY AUTO_INCREMENT,
    newsname VARCHAR(16) NOT NULL,
    kfphoto VARCHAR(64) NOT NULL,
    uphoto VARCHAR(64) NOT NULL,
    uid INT NOT NULL,
    FOREIGN KEY(uid) REFERENCES users(uid)
  );
INSERT INTO
  news
values(
    1,
    '被窝装修顾问',
    'img/touxiang/tx_gw',
    'img/touxiang/tx2',
    1
  ),
  (
    null,
    '系统消息',
    'img/touxiang/tx_xt',
    'img/touxiang/tx2',
    1
  );
INSERT INTO
  news
values(
    null,
    '被窝装修顾问',
    'img/touxiang/tx_gw',
    'img/touxiang/tx3',
    2
  ),
  (
    null,
    '系统消息',
    'img/touxiang/tx_xt',
    'img/touxiang/tx3',
    2
  );
-- ******************导航列表**********************
  CREATE TABLE nav(
    nid INT PRIMARY KEY AUTO_INCREMENT,
    navname VARCHAR(8) NOT NULL,
    navicon VARCHAR(64) NOT NULL
  );
INSERT INTO
  nav
values(1, '整装套餐', 'img/icon/daohang1.jpg');
INSERT INTO
  nav
values(null, '案例图集', 'img/icon/daohang2.jpg');
INSERT INTO
  nav
values(null, '户型方案', 'img/icon/daohang3.jpg');
INSERT INTO
  nav
values(null, '家装选材', 'img/icon/daohang4.jpg');
-- ******************************套餐表***********************
  CREATE TABLE combo(
    tid INT PRIMARY KEY AUTO_INCREMENT,
    tname VARCHAR(16) NOT NULL,
    tphoto VARCHAR(64) NOT NULL,
    tprice INT NOT NULL,
    isnew INT,
    phone VARCHAR(11) NOT NULL
  );
INSERT INTO
  combo
values(
    1,
    '2020简约套餐',
    'img/taocan/taocan1.jpg',
    '999',
    0,
    '15888888888'
  );
INSERT INTO
  combo
values(
    2,
    'iNNO俭良套餐',
    'img/taocan/taocan2.jpg',
    '1199',
    1,
    '16888888888'
  );
INSERT INTO
  combo
values(
    3,
    '2020简约套餐',
    'img/taocan/taocan3.jpg',
    '1399',
    0,
    '18888888888'
  );
-- ***************************套餐展示图表************************
  CREATE TABLE combo_show(
    dsid INT PRIMARY KEY AUTO_INCREMENT,
    dsphoto VARCHAR(64) NOT NULL,
    tid INT NOT NULL,
    FOREIGN KEY(tid) REFERENCES combo(tid)
  );
INSERT INTO
  combo_show
values(1, 'img/taocan/taocan1_1.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_2.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_3.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_4.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_5.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_6.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_7.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_8.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_9.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_10.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_11.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_12.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_13.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_14.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_15.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan1_16.jpg', 1);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_1.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_2.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_3.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_4.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_5.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_6.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_7.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_8.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan2_9.jpg', 2);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_1.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_2.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_3.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_4.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_5.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_6.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_7.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_8.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_9.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_10.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_11.jpg', 3);
INSERT INTO
  combo_show
values(null, 'img/taocan/taocan3_12.jpg', 3);
-- -- ***********************套餐详情表*********************
  CREATE TABLE combo_detail(
    ddid INT PRIMARY KEY AUTO_INCREMENT,
    ddphoto VARCHAR(64) NOT NULL,
    tid INT NOT NULL,
    FOREIGN KEY(tid) REFERENCES combo(tid)
  );
INSERT INTO
  combo_detail
values(1, 'img/taocan/detail/td1-1.jpg', 1);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td1-2.jpg', 1);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td1-3.jpg', 1);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td1-4.jpg', 1);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td1-5.jpg', 1);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-1.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-2.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-3.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-4.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-5.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-6.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-7.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-8.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-9.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-10.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td2-11.jpg', 2);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-1.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-2.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-3.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-4.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-5.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-6.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-7.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-8.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-9.jpg', 3);
INSERT INTO
  combo_detail
values(null, 'img/taocan/detail/td3-10.jpg', 3);
-- ************************问题表**************
  CREATE TABLE question(
    qid INT PRIMARY KEY AUTO_INCREMENT,
    question VARCHAR(32) NOT NULL,
    answer VARCHAR(512) NOT NULL,
    qphoto VARCHAR(64) NOT NULL,
    aphoto VARCHAR(64) NOT NULL
  );
INSERT INTO
  question
values(
    1,
    '被窝家装施工周期是多久？',
    '全屋整装套餐施工周期是45~60个工作日；设计师半包施工是35~57个工作日。 （具体工期会因面积、套餐种类、装修需求、新老房屋情况不同而出现变动，详情可以咨询您的装修顾问或设计师。）',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '标准化套餐装修都包含什么？',
    '套餐装修模式是被窝家装提供的一种按房屋平米数计价，并提供设计+施工+主辅材+售后等一站式全包的家装模式。 产品包含主材搭配+标准化施工（施工服务由被窝精工承接）。竣工后业主只需自购软装家具、部分电器，即可直接入住。 【特点】计价模式简单，设计施工选材一站式搞定，无需东奔西走，而且标准工期相对固定，省时省心；产品选择少，定制化程度相对较低。',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '套餐整装与个性化半包有什么区别？',
    '1、主材包含：地面材质（地板/地砖）、墙面材质（乳胶漆、壁纸、墙砖）、室内门（含门锁门吸）、橱柜、烟机灶具、马桶、浴室柜、厨卫五金（水槽、龙头、花洒、地漏、角阀）、厨卫铝扣板吊顶、开关插座、踢脚线、扣条、过门石、窗台石；2、施工包含：硬装基础施工（地面找平、墙面刷漆、贴砖等）、电路断点改造、水路改造（包含11个上水点改造）、成品保护、主材安装、垃圾清运、材料搬运、竣工保洁；套内不包含：水电路换新（可自选）、全屋拆除（可自选）、套外产品的主材+施工（窗户、暖气、防盗门、软装配饰等）、其余套内不含的施工项。个性化半包】含前期整体室内设计及被窝精工施工（含轻工辅料），但不包含主材，主材需业主自购。',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '套餐整装如何计算费用？（含水电拆除）',
    '基础套餐费用=（套餐报价×建筑面积）+水电改造+拆除改造（老房翻新）+税费+个性化项目，最终得出您的装修总款费用。计算方式仅供参考，具体实际费用需要咨询您的设计师或装修顾问。
',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '链家、万链、精工与贝壳、被窝是什么关系？',
    '被窝家装是贝壳找房旗下家装服务平台。链家是贝壳找房上的直营品牌，与被窝家装同属于贝壳找房集团。被窝精工是贝壳找房旗下施工交付平台，为被窝家装平台下套餐装修及个性化半包装修提供标准化施工服务。万链是贝壳找房旗下标准化家装品牌，贝壳找房/链家是万链公司股东。其施工服务由被窝精工承接；万链和链家同属于贝壳找房集团。
',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '个性化半包如何服务？',
    '个性化半包服务是被窝家装提供的一种为客户进行一对一差异化服务和定制产品，为客户提供专属装修解决方案的家装模式。产品包含个性化设计+标准化施工，施工服务由被窝精工承接。【特点】更自由灵活的主材选择，不受限不捆绑，充分满足客户的个性化需求；主材需要业主自购，同时投入一定精力和时间。',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '个性化设计师与被窝家装的关系？',
    '个性化设计师是指被窝家装平台个性化半包模式下的设计师，负责深度了解客户需求，产出整体设计方案，跟进施工环节确保方案落实。按照入驻状态分为认证设计师、入驻设计师。 认证设计师：获得APP 专属+V 标识；统一规范使用平台公允合同；设计费由被窝家装平台专项管理，三大节点验收满意后放款。',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '工人都是哪儿的？',
    '工长均由被窝家装平台严格筛选并签约，实名认证，经验丰富，统一管理，定期培训，持证上岗，无分包转包。直管工长负责严格把控施工质量，落实工艺标准，每日对项目进行自检及验收',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '选择被窝家装平台有什么优势？',
    '被窝家装平台提供一站式装修服务，包含标准化套餐装修模式及个性化半包装修模式，套餐档位风格多样，设计师资源丰富，满足不同预算、设计需求的消费者。施工采用直管工长和专业管家为您提供一对一的托管服务，承诺售后最长十年品质质保，施工延期赔付，管家全托管等服务。',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
INSERT INTO
  question
values(
    null,
    '我想去线下展厅看看，都在哪里？',
    '被窝家装门店地址如下： 【北四环店（万链）】北京市朝阳区北四环东路108号。【南四环店（万链）】北京市丰台区马家堡东路189号南四环公益东桥西北角。【装修中|东三环店（南鱼）】北京市朝阳区白家庄东里锦湖中心一层/二层。
',
    'img/taocan/icon/wen.png',
    'img/taocan/icon/da.png'
  );
-- ***********************案例筛选名称表******************
  CREATE TABLE filtrate(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(4) NOT NULL
  );
INSERT INTO
  filtrate
values(1, '居室');
INSERT INTO
  filtrate
values(2, '面积');
INSERT INTO
  filtrate
values(3, '风格');
INSERT INTO
  filtrate
values(4, '费用');
-- **************************案例筛选下拉详情表**********************
  CREATE TABLE filtrate_drop(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pname VARCHAR(10),
    fid INT NOT NULL,
    FOREIGN KEY(fid) REFERENCES filtrate(fid)
  );
INSERT INTO
  filtrate_drop
values(1, '不限', 1);
INSERT INTO
  filtrate_drop
values(null, '一室', 1);
INSERT INTO
  filtrate_drop
values(null, '二室', 1);
INSERT INTO
  filtrate_drop
values(null, '三室', 1);
INSERT INTO
  filtrate_drop
values(null, '四室', 1);
INSERT INTO
  filtrate_drop
values(null, '不限', 2);
INSERT INTO
  filtrate_drop
values(null, '60㎡以下', 2);
INSERT INTO
  filtrate_drop
values(null, '60-90㎡', 2);
INSERT INTO
  filtrate_drop
values(null, '90-120㎡', 2);
INSERT INTO
  filtrate_drop
values(null, '120-150㎡', 2);
INSERT INTO
  filtrate_drop
values(null, '150㎡以上', 2);
INSERT INTO
  filtrate_drop
values(null, '现代简约', 3);
INSERT INTO
  filtrate_drop
values(null, '北欧', 3);
INSERT INTO
  filtrate_drop
values(null, '日式', 3);
INSERT INTO
  filtrate_drop
values(null, '新中式', 3);
INSERT INTO
  filtrate_drop
values(null, '欧式', 3);
INSERT INTO
  filtrate_drop
values(null, '美式', 3);
INSERT INTO
  filtrate_drop
values(null, '轻奢', 3);
INSERT INTO
  filtrate_drop
values(null, '复古', 3);
INSERT INTO
  filtrate_drop
values(null, '工业风', 3);
INSERT INTO
  filtrate_drop
values(null, '5-10万', 4);
INSERT INTO
  filtrate_drop
values(null, '10-20万', 4);
INSERT INTO
  filtrate_drop
values(null, '20-30万', 4);
INSERT INTO
  filtrate_drop
values(null, '30-50万', 4);
INSERT INTO
  filtrate_drop
values(null, '50万以上', 4);
-- *********************案例小标题表*****************
  CREATE TABLE case_lgtitle(
    wsid INT PRIMARY KEY AUTO_INCREMENT,
    wsname VARCHAR(6) NOT NULL,
    wid INT NOT NULL,
    FOREIGN KEY(wid) REFERENCES cases(wid)
  );
INSERT INTO
  case_lgtitle
values
  -- ******案例1********
  (1, '业主诉求', 1),
  (null, '设计思路', 1),
  (null, '户型图', 1),
  (null, '玄关', 1),
  (null, '客厅', 1),
  (null, '餐厅', 1),
  (null, '厨房', 1),
  (null, '次卧', 1),
  (null, '书房', 1),
  (null, '卫生间', 1),
  (null, '阳台', 1),
  -- ****案例2*****
  (null, '业主诉求', 2),
  (null, '设计思路', 2),
  (null, '户型图', 2),
  (null, '客厅', 2),
  (null, '厨房', 2),
  (null, '卧室', 2),
  (null, '卫生间', 2),
  (null, '阳台', 2),
  -- ****案例3*****
  (null, '业主诉求', 3),
  (null, '设计思路', 3),
  (null, '户型图', 3),
  (null, '玄关', 3),
  (null, '客厅', 3),
  (null, '厨房', 3),
  (null, '卧室', 3),
  (null, '卫生间', 3),
  (null, '餐厅', 3),
  (null, '阳台', 3),
  -- ****案例4*****
  (null, '业主诉求', 4),
  (null, '设计思路', 4),
  (null, '户型图', 4),
  (null, '玄关', 4),
  (null, '客厅', 4),
  (null, '厨房', 4),
  (null, '主卧', 4),
  (null, '次卧', 4),
  (null, '卫生间', 4),
  (null, '业主诉求', 5),
  (null, '设计思路', 5),
  (null, '户型图', 5),
  (null, '客厅', 5),
  (null, '厨房', 5),
  (null, '卧室', 5),
  (null, '卫生间', 5),
  (null, '阳台', 5),
  -- ****案例3*****
  (null, '业主诉求', 6),
  (null, '设计思路', 6),
  (null, '户型图', 6),
  (null, '玄关', 6),
  (null, '客厅', 6),
  (null, '厨房', 6),
  (null, '卧室', 6),
  (null, '卫生间', 6),
  (null, '餐厅', 6),
  (null, '阳台', 6),
  -- ****案例4*****
  (null, '业主诉求', 7),
  (null, '设计思路', 7),
  (null, '户型图', 7),
  (null, '玄关', 7),
  (null, '客厅', 7),
  (null, '厨房', 7),
  (null, '主卧', 7),
  (null, '次卧', 7),
  (null, '卫生间', 7),
  (null, '业主诉求', 8),
  (null, '设计思路', 8),
  (null, '户型图', 8),
  (null, '客厅', 8),
  (null, '厨房', 8),
  (null, '卧室', 8),
  (null, '卫生间', 8),
  (null, '阳台', 8),
  -- ****案例3*****
  (null, '业主诉求', 9),
  (null, '设计思路', 9),
  (null, '户型图', 9),
  (null, '玄关', 9),
  (null, '客厅', 9),
  (null, '厨房', 9),
  (null, '卧室', 9),
  (null, '卫生间', 9),
  (null, '餐厅', 9),
  (null, '阳台', 9),
  -- ****案例4*****
  (null, '业主诉求', 10),
  (null, '设计思路', 10),
  (null, '户型图', 10),
  (null, '玄关', 10),
  (null, '客厅', 10),
  (null, '厨房', 10),
  (null, '主卧', 10),
  (null, '次卧', 10),
  (null, '卫生间', 10),
  (null, '业主诉求', 11),
  (null, '设计思路', 11),
  (null, '户型图', 11),
  (null, '客厅', 11),
  (null, '厨房', 11),
  (null, '卧室', 11),
  (null, '卫生间', 11),
  (null, '阳台', 11),
  -- ****案例3*****
  (null, '业主诉求', 12),
  (null, '设计思路', 12),
  (null, '户型图', 12),
  (null, '玄关', 12),
  (null, '客厅', 12),
  (null, '厨房', 12),
  (null, '卧室', 12),
  (null, '卫生间', 12),
  (null, '餐厅', 12),
  (null, '阳台', 12),
  -- ****案例4*****
  (null, '业主诉求', 13),
  (null, '设计思路', 13),
  (null, '户型图', 13),
  (null, '玄关', 13),
  (null, '客厅', 13),
  (null, '厨房', 13),
  (null, '主卧', 13),
  (null, '次卧', 13),
  (null, '卫生间', 13),
  (null, '业主诉求', 14),
  (null, '设计思路', 14),
  (null, '户型图', 14),
  (null, '客厅', 14),
  (null, '厨房', 14),
  (null, '卧室', 14),
  (null, '卫生间', 14),
  (null, '阳台', 14),
  -- ****案例3*****
  (null, '业主诉求', 15),
  (null, '设计思路', 15),
  (null, '户型图', 15),
  (null, '玄关', 15),
  (null, '客厅', 15),
  (null, '厨房', 15),
  (null, '卧室', 15),
  (null, '卫生间', 15),
  (null, '餐厅', 15),
  (null, '阳台', 15),
  -- ****案例4*****
  (null, '业主诉求', 16),
  (null, '设计思路', 16),
  (null, '户型图', 16),
  (null, '玄关', 16),
  (null, '客厅', 16),
  (null, '厨房', 16),
  (null, '主卧', 16),
  (null, '次卧', 16),
  (null, '卫生间', 16),
  (null, '业主诉求', 17),
  (null, '设计思路', 17),
  (null, '户型图', 17),
  (null, '客厅', 17),
  (null, '厨房', 17),
  (null, '卧室', 17),
  (null, '卫生间', 17),
  (null, '阳台', 17),
  -- ****案例3*****
  (null, '业主诉求', 18),
  (null, '设计思路', 18),
  (null, '户型图', 18),
  (null, '玄关', 18),
  (null, '客厅', 18),
  (null, '厨房', 18),
  (null, '卧室', 18),
  (null, '卫生间', 18),
  (null, '餐厅', 18),
  (null, '阳台', 18),
  -- ****案例4*****
  (null, '业主诉求', 19),
  (null, '设计思路', 19),
  (null, '户型图', 19),
  (null, '玄关', 19),
  (null, '客厅', 19),
  (null, '厨房', 19),
  (null, '主卧', 19),
  (null, '次卧', 19),
  (null, '卫生间', 19),
   (null, '业主诉求', 20),
  (null, '设计思路', 20),
  (null, '户型图', 20),
  (null, '客厅', 20),
  (null, '厨房', 20),
  (null, '卧室', 20),
  (null, '卫生间', 20),
  (null, '阳台', 20);
-- ****************案例详情介绍表**************
  CREATE TABLE case_referal(
    reid INT PRIMARY KEY AUTO_INCREMENT,
    rephoto VARCHAR(64),
    recontent VARCHAR(256),
    video VARCHAR(64),
    wsid INT NOT NULL,
    wid INT NOT NULL,
    FOREIGN KEY(wsid) REFERENCES case_lgtitle(wsid),
    FOREIGN KEY(wid) REFERENCES cases(wid)
  );
INSERT INTO
  case_referal
values
  -- 诉求
  (
    1,
    '',
    '屋主平常自己一个人住，希望空间能够尽可能开放，同时希望能够有空间满足待客和家人过来居住的情况，在主卧因为衣服较多希望能够有一个衣帽间进行储物收纳盒衣物收纳。屋主对空气的要求比较高，因此在屋内进行了新风系统的设计。需要考虑整体空间的处理。',
    '',
    1,
    1
  ),
  -- 思路
  (
    null,
    '',
    '
  1.将原有厨房的墙体进行了开放，同时设计了吧台进行小型就餐区的设计，满足日常就餐以及小型会客的需求，同时吧台在沙发的正后方，平常休闲的同时也可以进行观影娱乐。2.次卫干区进行了干湿分离设计，满足多人同时使用，同时进行了淋浴房的设计，满足洗浴的舒适性。  3.在洗衣机的处理上进行了三个洗衣机设计，同时在次卫进行了壁挂洗衣机设计，满足现阶段内衣，等小件衣物清洗，同时满足后期儿童衣物的处理。',
    'img/anli/1/vedio.mp4',
    2,
    1
  ),
  -- 户型图
  (null, 'img/anli/1/anli1-3.jpg', '', '', 3, 1),
  (null, 'img/anli/1/anli1-4.jpg', '', '', 3, 1),
  -- 玄关
  (
    null,
    'img/anli/1/anli1-5.jpg',
    '
门厅设计中，采用了成品全身镜+挂衣架的形式进行设计，同时挂衣架后方也很好的挡住了电箱位置（次电箱为物业预留，已经废除），同时采用半高门厅柜进行设计，增加了玄关的收纳，同时也不会影响视觉的通透性。
',
    '',
    4,
    1
  ),
  -- 客厅
  (
    null,
    'img/anli/1/anli1-6.jpg',
    '客厅空间，因为将厨房空间也打开了，因此空间额采光好了很多，在背景墙的处理上，采用了石膏线与粉色漆的处理方式进行设计，保证整体效果统一的前提下，在视觉上又增加了一些变化。',
    '',
    5,
    1
  ),
  (
    null,
    'img/anli/1/anli1-7.jpg',
    '电视背景墙区域采用了灯带线的处理方式进行设计，灯带从阳台贯穿到餐厅位置，让背景墙变得更加整体，石膏线的处理上也采用了上下分区的设计方式，增加了空间的变化，保证了风格的统一。
',
    '',
    5,
    1
  ),
  (
    null,
    'img/anli/1/anli1-8.jpg',
    '
电视柜的处理上也采用了一些格栅的造型，与整体风格相互统一，阳台增加了跑步健身区，同时，利用绿植，增加了空间的灵动性。',
    '',
    5,
    1
  ),
  (
    null,
    'img/anli/1/anli1-9.jpg',
    '
客厅沙区区与厨房区域整体融为一个空间，因为全屋有新风系统，因此在吊顶的处理上采用了局部吊顶，同时利用吊顶进行了空间的分区设计。沙发后方的吧台也方便了平常就餐与休闲的功能。',
    '',
    5,
    1
  ),
  (
    null,
    'img/anli/1/anli1-10.jpg',
    '
客厅的大角度，在整体空间划分上，利用吊顶、家具、颜色、灯光等方式进行处理，相邻空间既可以相互独立又可以与其他空间产生联系。增加空间的互动性。',
    '',
    5,
    1
  ),
  -- 餐厅
  (
    null,
    'img/anli/1/anli1-11.jpg',
    '餐厅在处理上增加了餐边柜的处理，一方面餐边柜可以极大缓解厨房的电器压力，同时也可以方便餐厅区域临时收纳或者就餐物品摆放的需求。灯具处理上采用吊灯进行就餐区照明，增加就餐的氛围感。',
    '',
    6,
    1
  ),
  (
    null,
    'img/anli/1/anli1-12.jpg',
    '餐边柜也同时将冰箱进行了收纳，冰箱区域采用内嵌的方式进行设计，缓解冰箱的体积感同时，也方便餐厅就餐饮料等及食食品的拿取。',
    '',
    6,
    1
  ),
  (
    null,
    'img/anli/1/anli1-13.jpg',
    '就餐区与背景墙进行统一，在餐椅以及灯具的处理上，采用一部分石材与金属的元素，增加空间的质感，同时与风格相互统一呼应，暖气位置摆放需要前期计算尺寸，根据尺寸进行暖气位置设计以及石膏线的大小处理。',
    '',
    6,
    1
  ),
  (
    null,
    'img/anli/1/anli1-14.jpg',
    '餐厅小景色，仪式感满满。',
    '',
    6,
    1
  ),
  -- 厨房
  (
    null,
    'img/anli/1/anli1-15.jpg',
    '
厨房的设计中，采用了开放式厨房的设计方式，同时利用中岛台家餐桌的方式进行设计，增加空间的灵活性，同时也方便了临时就餐，增加生活氛围感。',
    '',
    7,
    1
  ),
  (
    null,
    'img/anli/1/anli1-16.jpg',
    '厨房在吊顶的处理上采用了铝扣板大板的设计方式进行设计，利用内嵌式线性灯作为厨房的整体照明，同时厨房顶部有新风主机，利用吊顶的设计也很好的隐藏了新风主机，让空间更加整体。',
    '',
    7,
    1
  ),
  -- 次卧
  (
    null,
    'img/anli/1/anli1-17.jpg',
    '
老人房采用了定制榻榻米的方式进行设计，在衣柜的对面有电视区的设计，满足老人的观影需求，利用便携式椅靠，增加了观影的舒适度。榻榻米的设计也极大的缓解了储物的压力，增加了空间的收纳，同是将空间最大化利用。',
    '',
    8,
    1
  ),
  (
    null,
    'img/anli/1/anli1-18.jpg',
    '老人有书法的爱好，因此在靠窗位置进行了书桌的设计，既可以在书法的绘制中拥有足够的光照，同时也可以进行远眺，劳逸结合。',
    '',
    8,
    1
  ),
  -- 书房
  (
    null,
    'img/anli/1/anli1-19.jpg',
    '书房采用了沙发床的设计方式，满足日常工作需要，同时也可以兼顾客房的需求。',
    '',
    9,
    1
  ),
  (null, 'img/anli/1/anli1-20.jpg', '', '', 9, 1),
  -- 卫生间
  (
    null,
    'img/anli/1/anli1-21.jpg',
    '
次卫采用干湿分离处理，并且采用了弧形门洞的设计，空间既可以相互呼应，也可以增加空间的变化。',
    '',
    10,
    1
  ),
  (
    null,
    'img/anli/1/anli1-22.jpg',
    '干区与湿区中间采用半墙的处理方式进行设计，利用长虹玻璃作为隔断，既可以保证空间的分区，也可以保证空间不同空间的私密性。',
    '',
    10,
    1
  ),
  (
    null,
    'img/anli/1/anli1-23.jpg',
    '干区将洗手台与洗衣机作为一个整体设计，洗衣机台面既可以增加洗漱区的功能延申，也可以满足熨烫衣物等需求。',
    '',
    10,
    1
  ),
  (
    null,
    'img/anli/1/anli1-24.jpg',
    '湿区采用淋浴房进行设计，同时在湿区增加了壁挂洗衣机，为将来有孩子后进行了衣物单独处理的功能需求，同时在没有孩子的设计，壁挂洗衣机也可以作为内衣等衣物清洗的功能。',
    '',
    10,
    1
  ),
  -- 阳台
  (
    null,
    'img/anli/1/anli1-25.jpg',
    '
阳台既作为生活阳台使用，满足晾晒等功能，同时也可以进行休闲阳台的设计，日常休息，健身等需求，增加空间的趣味性。高大的绿植也会让空间生机勃勃。',
    '',
    11,
    1
  ),
  -- **********案例2******
  -- 诉求
  (
    null,
    '',
    '原始格局种有很多诟病的地方，希望在设计中优化整体格局，并满足日常待客以及生活休闲的功能。',
    '',
    12,
    2
  ),
  -- 思路
  (
    null,
    '',
    '原始户型中厨房相对较小，并且卫生间足够大，设计中需要将两个空间进行重新划分以及组合，考虑屋主的收纳以及居住要求，采用定制柜以及成品家居组合方式进行整体设计',
    '',
    13,
    2
  ),
  -- 户型
  (
    null,
    'img/anli/2/anli2-2.jpg',
    '',
    '',
    14,
    2
  ),
  (
    null,
    'img/anli/2/anli2-3.jpg',
    '',
    '',
    14,
    2
  ),
  -- 客厅
  (
    null,
    'img/anli/2/anli2-4.jpg',
    '客厅和厨房中间的墙体进行了半墙设计，采用推拉窗进行空间的联系，增加客厅的采光同时，也可以保证两个空间的互动',
    '',
    15,
    2
  ),(
    null,
    'img/anli/2/anli2-5.jpg',
    '原始客厅属于开间的设计，在客户需求中，希望将客厅以及卧室进行分割，客厅采用沙发床进行设计，满足客厅偶尔待客休息的功能，因此在客厅与卧室中间采用了四联动推拉门的设计，进行空间的划分',
    '',
    15,
    2
  ),(
    null,
    'img/anli/2/anli2-6.jpg',
    '厨房采用了玻璃隔断和玻璃门的设计，将厨房的光最大可能的引进客厅，在沙发上部分采用磁吸轨道设计，增加只能整体的氛围感',
    '',
    15,
    2
  ),(
    null,
    'img/anli/2/anli2-7.jpg',
    '隔断封闭后的一个状态',
    '',
    15,
    2
  ),(
    null,
    'img/anli/2/anli2-8.jpg',
    '客厅采用定制柜的设计方式，将门厅柜与客厅电视柜进行整体化设计，满足收纳的同时也可以保证整体造型以及材质的统一。',
    '',
    15,
    2
  ),
  -- 厨房
  (
    null,
    'img/anli/2/anli2-9.jpg',
    '配色中整体厨房采用白色柜子进行设计，在上墙的处理中采用浅灰色墙砖的方式拉开与白色柜子颜色的差距，增加空间感。利用深灰色地砖的方式进行地面颜色处理，增加空间的立体感',
    '',
    16,
    2
  ),(
    null,
    'img/anli/2/anli2-10.jpg',
    '从厨房一侧可以看到客厅区域，方便两个空间人员的互动。增加生活的趣味性，同时也增加了客厅的采光',
    '',
    16,
    2
  ),(
    null,
    'img/anli/2/anli2-11.jpg',
    '从客厅看向厨房的角度（两个空间的联动性）',
    '',
    16,
    2
  ),
  -- 卧室
  (
    null,
    'img/anli/2/anli2-12.jpg',
    '在收纳的设计中，利用墙体的优势将门厅、客厅、卧室的收纳、颜色、材质进行统一协调。',
    '',
    17,
    2
  ),(
    null,
    'img/anli/2/anli2-13.jpg',
    '客厅与卧室空间的隔断处理，进行两个空间的区分。',
    '',
    17,
    2
  ),(
    null,
    'img/anli/2/anli2-14.jpg',
    '卧室空间利用定制柜进行床头的设计，增加空间收纳以及利用，柜子顶部利用突出柜体的空间进行线性灯设计，增加空间氛围感。（实际使用中，屋主反馈，线性灯利用率最高）',
    '',
    17,
    2
  ),(
    null,
    'img/anli/2/anli2-15.jpg',
    '卧室和阳台的整体空间',
    '',
    17,
    2
  ),
  -- 卫生间
  (
    null,
    'img/anli/2/anli2-16.jpg',
    '卫生间更改了原有布局，进行了空间的重新划分，将洗衣机与洗手台进行了一体化定制，采用智能镜进行面光的补充。',
    '',
    18,
    2
  ),(
    null,
    'img/anli/2/anli2-17.jpg',
    '',
    '',
    18,
    2
  ),(
    null,
    'img/anli/2/anli2-18.jpg',
    '洗手台区域正面',
    '',
    18,
    2
  ),(
    null,
    'img/anli/2/anli2-19.jpg',
    '卫生间淋浴区与马桶区',
    '',
    18,
    2
  ),
  -- 阳台
  (
    null,
    'img/anli/2/anli2-20.jpg',
    '阳台空间的设计，利用凸出去的阳台空间进行吧台的设计，满足日常休闲以及办公的需求',
    '',
    19,
    2
  ),(
    null,
    'img/anli/2/anli2-21.jpg',
    '阳台采用定制柜的方式进行设计，补充卧室衣柜的不足，同时柜子底部采用镂空方式放置扫地机器人。',
    '',
    19,
    2
  ),(
    null,
    'img/anli/2/anli2-22.jpg',
    '效果图',
    '',
    19,
    2
  ),(
    null,
    'img/anli/2/anli2-23.jpg',
    '效果图',
    '',
    19,
    2
  ),(
    null,
    'img/anli/2/anli2-24.jpg',
    '屋主的小喵咪',
    '',
    19,
    2
  ),
  -- *********案例3****
  -- 诉求
  (
    null,
    '',
    '房屋会准备长期居住，并且近几年会成家，需要一定的收纳空间，并且老人也会偶尔过来居住，整体要求空间要明亮并且适合长期居住',
    '',
    20,
    3
  ),
  -- 思路
  (
    null,
    '',
    '根据屋主需求，在进门位置进行了门厅柜的设计，并且将冰箱隐藏在了门厅位置，靠近餐厅以及客厅厨房，方便三个空间同时使用冰箱；餐厅以及客厅位置采用了定制柜的方式进行设计，并且将电视背景墙以及餐边柜进行整体定制，保证了材质颜色的统一，卫生间进行干湿分离设计，同时我是进行定制柜的设计方式，最大化利用空间，保证整体收纳以及功能性使用。
',
    '',
    21,
    3
  ),
  -- 户型
  (
    null,
    'img/anli/3/anli3-2.jpg',
    '',
    '',
    22,
    3
  ),
  (
    null,
    'img/anli/3/anli3-3.jpg',
    '',
    '',
    22,
    3
  ),
  -- 玄关
  (
    null,
    'img/anli/3/anli3-4.jpg',
    '门厅位置采用了定制柜的设计方式进行设计，并且采用了双色进行分区以及颜色的搭配，因为异型墙体的设计，因此在门厅卫视可以有一个比较薄的位置进行门厅柜的设计，从视觉上既可以拥有薄柜子的设计，让空间更加通透，同时进行门厅的装饰。
',
    '',
    23,
    3
  ),
  (
    null,
    'img/anli/3/anli3-5.jpg',
    '冰箱内嵌在门厅柜位置，既可以方便冰箱满足不同空间的时使用，也可以减少门厅空间过大带来的浪费。同时在进门位置并不会发现冰箱的突兀，在空间上满足使用。
',
    '',
    23,
    3
  ),
  -- 客厅
  (
    null,
    'img/anli/3/anli3-6.jpg',
    '客厅电视背景墙采用了整体定制的方式，在底部采用了口空的设计方式（方便后期收纳盒以及成品物品的拿取摆放）利用抽屉，进行小型物品的收纳以及物品分区。
',
    '',
    24,
    3
  ),
  (
    null,
    'img/anli/3/anli3-7.jpg',
    '电视背景墙区域与餐厅和门厅进行了整体定制，保持了颜色以及材质的统一，在客厅颜色的配置上采用了灰色墙面进行设计(灰色墙面会让空间后撤，拉开空间感以及立体感。',
    '',
    24,
    3
  ),
  (
    null,
    'img/anli/3/anli3-8.jpg',
    '沙发区域采用了半墙的设计方式，并且在隔断的处理上采用了玻璃隔断进行设计，将厨房阳台的自然采光引进到客厅区域，增加整体的光照以及视觉的通透性，从视觉上增加空间感。',
    '',
    24,
    3
  ),
  (
    null,
    'img/anli/3/anli3-9.jpg',
    '茶几采用了玻璃材质进行设计和沙发背后的半墙玻璃材质进行了呼应，金属材质的边缘会让空间有一定的精致感。
',
    '',
    24,
    3
  ),
  (
    null,
    'img/anli/3/anli3-10.jpg',
    '在沙发半墙位置采用了大理石作为台面的同时进行半墙的收口处理，同时隔断靠厨房一侧进行安装，窗台位置作为台面可以进行装饰品以及背景墙的处理应用，同时在沙发背景墙采用了轨道灯进行辅助光源的设计，增加整体的氛围感以及温馨感。',
    '',
    24,
    3
  ),
  (
    null,
    'img/anli/3/anli3-11.jpg',
    '沙发采用了沙发床进行设计，增加，方便客人以及家庭成员的偶尔居住场所。',
    '',
    24,
    3
  ),
  -- 厨房
  (
    null,
    'img/anli/3/anli3-12.jpg',
    '厨房采用了深灰色地柜进行设计，采用了白色吊柜以及浅色墙砖进行搭配，深色的地柜会让空间立体感更加丰富。
',
    '',
    25,
    3
  ),
  (
    null,
    'img/anli/3/anli3-13.jpg',
    '采用了部分吊柜开放格进行搭配丰富空间，同时墙体边缘的开放格和门厅相对，开放格可以进行多种干果或者小件物品的储藏。',
    '',
    25,
    3
  ),
  -- 卧室
  (
    null,
    'img/anli/3/anli3-14.jpg',
    '卧室背景墙采用了深色墙漆的设计方式，利用壁灯以及装饰画进行搭配利用，深色墙面搭配浅色的四件套，以及胡桃木的床品，空间感会有明显对比',
    '',
    26,
    3
  ),(
    null,
    'img/anli/3/anli3-15.jpg',
    '床头一角',
    '',
    26,
    3
  ),(
    null,
    'img/anli/3/anli3-16.jpg',
    '壁灯方便夜晚看书，并且在辅助光源上有很大额效果。',
    '',
    26,
    3
  ),
  -- 卫生间
  (
    null,
    'img/anli/3/anli3-17.jpg',
    '卫生间干区采用局部贴砖的设计方式，墙的边缘采用了收边条进行收口，利用顶部的光源以及智能镜作为光源的设计。',
    '',
    27,
    3
  ),(
    null,
    'img/anli/3/anli3-18.jpg',
    '卫生间湿区，在马桶后方以及淋浴区采用了壁龛的方式进行设计，增加整体储物以及淋浴区物品的摆放。',
    '',
    27,
    3
  ),
  -- 餐厅
  (
    null,
    'img/anli/3/anli3-19.jpg',
    '餐厅位置利用定制柜进行了餐边柜的设计，并且定制了抽屉方便一些就餐器具的储放和随时拿取并且采用了一些开放区，方便小电器应用缓解厨房电器的压力',
    '',
    28,
    3
  ),(
    null,
    'img/anli/3/anli3-20.jpg',
    '顶部采用了吊灯进行光照的设计，增加就餐的氛围。',
    '',
    28,
    3
  ),(
    null,
    'img/anli/3/anli3-21.jpg',
    '餐厅门厅一侧：门厅增加换鞋区，方便平时鞋子的存储以及生活用品的摆放',
    '',
    28,
    3
  ),
  -- 阳台
  (
    null,
    'img/anli/3/anli3-22.jpg',
    '阳台采用了花砖进行地面材质的铺贴，并且利用装饰品进行空间的点缀。',
    '',
    29,
    3
  ),
  -- ******案例4******
  -- 诉求
  (
    null,
    '',
    '屋主喜欢片工业风的设计，房屋属于年代久远的小区（老破小），整体格局在原始结构的中并不是很理想，因此在整体设计中，如何在少动结构的情况下进行整体的改造属于重点。',
    '',
    30,
    4
  ),
  -- --思路
  (
    null,
    '',
    '因为屋主喜欢片工业风的设计，因此在屋内的很多管道的处理上变得简单起来（房屋属于一层，屋顶管道偏多），剩下的就是如何让空间变得协调统一，并且增加空间的收纳，方便屋主使用。',
    '',
    31,
    4
  ),
  -- 户型
  (
    null,
    'img/anli/4/anli4-1.jpg',
    '',
    '',
    32,
    4
  ),(
    null,
    'img/anli/4/anli4-2.jpg',
    '',
    '',
    32,
    4
  ),
  --   -- 玄关
  (
    null,
    'img/anli/4/anli4-3.jpg',
    '玄关位置，进门左手边进行了留白处理，采用成品家居的方式，增加门厅的使用率：电表箱位置的装饰画（还没挂，竖在了下边）、成品的一架，增加了门厅应季物品的收纳摆放，成品的全身镜一方面增加通透性，也有非常大的实用性。',
    '',
    33,
    4
  ),(
    null,
    'img/anli/4/anli4-4.jpg',
    '花瓶下方是门厅的鞋柜，采用成品方式可以极大的增加空间的灵活性。冰箱贴的应用也可以方便随手记录一些需要待办的事宜。既可以增加空间的灵动性也具备实用性。',
    '',
    33,
    4
  ),(
    null,
    'img/anli/4/anli4-5.jpg',
    '电表箱位置的装饰画可以很好的将电表箱位置进行隐藏。',
    '',
    33,
    4
  ),
  -- 客厅
  (
    null,
    'img/anli/4/anli4-6.jpg',
    '在将厨房墙体拆除一部分后，进门后的客餐厅变得很宽敞，既减少了墙体遮挡视线的问题，同时也增加了整体的就餐区，就餐区采用了定制岛台的设计方式——既可以增加桌面下方的储物，也可以最大化的利用空间，岛台下方有储物空间，弥补客餐厅厨房的收纳空间。',
    '',
    34,
    4
  ),(
    null,
    'img/anli/4/anli4-7.jpg',
    '从这个角度可以看到客餐厅还有厨房的全貌。',
    '',
    34,
    4
  ),(
    null,
    'img/anli/4/anli4-8.jpg',
    '客厅一处边柜位置：下方采用成品边柜的方式，增加物品的收纳以及作为餐边柜使用，柜子顶部可以进行装饰品的摆放使用。装饰品摆放小秘诀——高矮胖瘦都要有。 墙面采用了灰色艺术漆，既可以增加质感，也可以提升空间的品质感。',
    '',
    34,
    4
  ),(
    null,
    'img/anli/4/anli4-9.jpg',
    '靠窗的位置同样采用了成品柜的方式，增加空间的收纳率，同时在窗台下方增加了插座的位置，厨房多余的小电器都可以在边柜位置摆放使用。',
    '',
    34,
    4
  ),(
    null,
    'img/anli/4/anli4-10.jpg',
    '插座提前预留好，后期才会方便使用。',
    '',
    34,
    4
  ),(
    null,
    'img/anli/4/anli4-11.jpg',
    '小景，既有工业风的质感又增加了一些东方的禅意',
    '',
    34,
    4
  ),(
    null,
    'img/anli/4/anli4-12.jpg',
    '个人最喜欢的一处小景：很安静',
    '',
    34,
    4
  ),(
    null,
    'img/anli/4/anli4-13.jpg',
    '家中一些鲜花的使用，会让空间有很多的生机感。',
    '',
    34,
    4
  ),
  -- 厨房
  (
    null,
    'img/anli/4/anli4-14.jpg',
    '厨房位置采用了木色的地柜，白色的吊柜，同时地柜与吊柜中间采用了灰色的墙砖进行搭配。这样可以保证空间既有进深感的同时，颜色的搭配上也会更加温馨。',
    '',
    35,
    4
  ),(
    null,
    'img/anli/4/anli4-15.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    35,
    4
  ),(
    null,
    'img/anli/4/anli4-16.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    35,
    4
  ),(
    null,
    'img/anli/4/anli4-17.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    35,
    4
  ),(
    null,
    'img/anli/4/anli4-18.jpg',
    '',
    '',
    35,
    4
  ),(
    null,
    'img/anli/4/anli4-19.jpg',
    '黑白灰三个元素：电器深色（压空间），吊柜白色（轻盈感）灰色墙面（突出空间感）',
    '',
    35,
    4
  ),(
    null,
    'img/anli/4/anli4-20.jpg',
    '鞋柜位置也看到了一部分，冰箱上的一些冰箱贴，方便放一些小菜单等物品。
',
    '',
    35,
    4
  ),(
    null,
    'img/anli/4/anli4-21.jpg',
    '灵动的小黄人。',
    '',
    35,
    4
  ),
  -- 主卧
  (
    null,
    'img/anli/4/anli4-22.jpg',
    '卧室整体空间采用了和客餐厅相同的艺术漆，只是在涂刷的空间上有所区分，因为卧室进深比较大，因此相应小面积的灰色，会让空间后移增加空间的进深感。',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-23.jpg',
    '床头的背景上采用了留白的方式。浅咖色的床头，与白色的墙体形成对比，增加空间的灵动性。在留白的过程中，一些带有禅意的灯具，会让空间变得很安静。',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-24.jpg',
    '休息区的一角：墨绿色的休闲椅，还有绿植，水泥色的做旧水磨石，生活好不惬意。',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-25.jpg',
    '床头背景的一角。',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-26.jpg',
    '衣柜采用了成品的衣柜方式，增加收纳。',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-27.jpg',
    '床尾采用了老榆木的柜子，既可以和整体风格呼应起来，同时还可以增加空间的收纳，墙面采用了留白的方式，为投影的空间做了准备。',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-28.jpg',
    '靠近阳台位置，进行了垫高处理，增加了一个飘窗空间（原始阳台是一个下陷1米多的坑）',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-29.jpg',
    '在这个位置进行休闲，生活会非常的惬意。绿植的出现，也为空间增加生机感。',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-30.jpg',
    '',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-31.jpg',
    '',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-32.jpg',
    '',
    '',
    36,
    4
  ),(
    null,
    'img/anli/4/anli4-33.jpg',
    '',
    '',
    36,
    4
  ),
  -- 次卧
  (
    null,
    'img/anli/4/anli4-34.jpg',
    '工作区兼次卧的空间。背景处留白设计，一盏复古小灯就可以很好的进行装饰。',
    '',
    37,
    4
  ),(
    null,
    'img/anli/4/anli4-35.jpg',
    '工作区采用了一个非常大的长条办工作，满足两个人或者一人多台电脑的使用',
    '',
    37,
    4
  ),(
    null,
    'img/anli/4/anli4-36.jpg',
    '窗台位置，同样采用了榆木板的方式，整体颜色质感相互统一协调。百叶窗的使用，增加了整体空间的质感。',
    '',
    37,
    4
  ),(
    null,
    'img/anli/4/anli4-37.jpg',
    '床头一角。',
    '',
    37,
    4
  ),(
    null,
    'img/anli/4/anli4-38.jpg',
    '',
    '',
    37,
    4
  ),(
    null,
    'img/anli/4/anli4-39.jpg',
    '工作区一角，灰色的艺术漆墙面，将空间变得很安静。',
    '',
    37,
    4
  ),(
    null,
    'img/anli/4/anli4-40.jpg',
    '门的选择上采用了黑色边框的方式，增加空间线条感的呼应。',
    '',
    37,
    4
  ),
  -- 卫生间
  (
    null,
    'img/anli/4/anli4-41.jpg',
    '手工墨绿色小砖搭配白色瓷缝，让整体的空间质感有了提升，金属元素的镜子和水龙头也让空间显得很精致。',
    '',
    38,
    4
  ),(
    null,
    'img/anli/4/anli4-42.jpg',
    '',
    '',
    38,
    4
  ),(
    null,
    'img/anli/4/anli4-43.jpg',
    '受空间影响拍的不是太全，整体风格还是非常和谐统一的',
    '',
    38,
    4
  ),(
    null,
    'img/anli/4/anli4-44.jpg',
    '生间内部，采用了壁挂马桶的方式，同时增加了壁龛的设计，将原有不起眼的地方进行了设计利用，增加了卫生间的使用率和收纳率。马桶水箱上方同样有了空间，存放一些备用物品非常方便。',
    '',
    38,
    4
  ),(
    null,
    'img/anli/4/anli4-45.jpg',
    '内部一角，同时预留了高压水枪的接水口与插座，为以后增加设备做了提前的准备工作。',
    '',
    38,
    4
  ),
  -- **********案例2******
  -- 诉求
  (
    null,
    '',
    '原始格局种有很多诟病的地方，希望在设计中优化整体格局，并满足日常待客以及生活休闲的功能。',
    '',
    39,
    5
  ),
  -- 思路
  (
    null,
    '',
    '原始户型中厨房相对较小，并且卫生间足够大，设计中需要将两个空间进行重新划分以及组合，考虑屋主的收纳以及居住要求，采用定制柜以及成品家居组合方式进行整体设计',
    '',
    40,
    5
  ),
  -- 户型
  (
    null,
    'img/anli/2/anli2-2.jpg',
    '',
    '',
    41,
    5
  ),
  (
    null,
    'img/anli/2/anli2-3.jpg',
    '',
    '',
    41,
    5
  ),
  -- 客厅
  (
    null,
    'img/anli/2/anli2-4.jpg',
    '客厅和厨房中间的墙体进行了半墙设计，采用推拉窗进行空间的联系，增加客厅的采光同时，也可以保证两个空间的互动',
    '',
    42,
    5
  ),(
    null,
    'img/anli/2/anli2-5.jpg',
    '原始客厅属于开间的设计，在客户需求中，希望将客厅以及卧室进行分割，客厅采用沙发床进行设计，满足客厅偶尔待客休息的功能，因此在客厅与卧室中间采用了四联动推拉门的设计，进行空间的划分',
    '',
    42,
    5
  ),(
    null,
    'img/anli/2/anli2-6.jpg',
    '厨房采用了玻璃隔断和玻璃门的设计，将厨房的光最大可能的引进客厅，在沙发上部分采用磁吸轨道设计，增加只能整体的氛围感',
    '',
    42,
    5
  ),(
    null,
    'img/anli/2/anli2-7.jpg',
    '隔断封闭后的一个状态',
    '',
    42,
    5
  ),(
    null,
    'img/anli/2/anli2-8.jpg',
    '客厅采用定制柜的设计方式，将门厅柜与客厅电视柜进行整体化设计，满足收纳的同时也可以保证整体造型以及材质的统一。',
    '',
    42,
    5
  ),
  -- 厨房
  (
    null,
    'img/anli/2/anli2-9.jpg',
    '配色中整体厨房采用白色柜子进行设计，在上墙的处理中采用浅灰色墙砖的方式拉开与白色柜子颜色的差距，增加空间感。利用深灰色地砖的方式进行地面颜色处理，增加空间的立体感',
    '',
    43,
    5
  ),(
    null,
    'img/anli/2/anli2-10.jpg',
    '从厨房一侧可以看到客厅区域，方便两个空间人员的互动。增加生活的趣味性，同时也增加了客厅的采光',
    '',
    43,
    5
  ),(
    null,
    'img/anli/2/anli2-11.jpg',
    '从客厅看向厨房的角度（两个空间的联动性）',
    '',
    43,
    5
  ),
  -- 卧室
  (
    null,
    'img/anli/2/anli2-12.jpg',
    '在收纳的设计中，利用墙体的优势将门厅、客厅、卧室的收纳、颜色、材质进行统一协调。',
    '',
    44,
    5
  ),(
    null,
    'img/anli/2/anli2-13.jpg',
    '客厅与卧室空间的隔断处理，进行两个空间的区分。',
    '',
    44,
    5
  ),(
    null,
    'img/anli/2/anli2-14.jpg',
    '卧室空间利用定制柜进行床头的设计，增加空间收纳以及利用，柜子顶部利用突出柜体的空间进行线性灯设计，增加空间氛围感。（实际使用中，屋主反馈，线性灯利用率最高）',
    '',
    44,
    5
  ),(
    null,
    'img/anli/2/anli2-15.jpg',
    '卧室和阳台的整体空间',
    '',
    44,
    5
  ),
  -- 卫生间
  (
    null,
    'img/anli/2/anli2-16.jpg',
    '卫生间更改了原有布局，进行了空间的重新划分，将洗衣机与洗手台进行了一体化定制，采用智能镜进行面光的补充。',
    '',
    45,
    5
  ),(
    null,
    'img/anli/2/anli2-17.jpg',
    '',
    '',
    45,
    5
  ),(
    null,
    'img/anli/2/anli2-18.jpg',
    '洗手台区域正面',
    '',
    45,
    5
  ),(
    null,
    'img/anli/2/anli2-19.jpg',
    '卫生间淋浴区与马桶区',
    '',
    45,
    5
  ),
  -- 阳台
  (
    null,
    'img/anli/2/anli2-20.jpg',
    '阳台空间的设计，利用凸出去的阳台空间进行吧台的设计，满足日常休闲以及办公的需求',
    '',
    46,
    5
  ),(
    null,
    'img/anli/2/anli2-21.jpg',
    '阳台采用定制柜的方式进行设计，补充卧室衣柜的不足，同时柜子底部采用镂空方式放置扫地机器人。',
    '',
    46,
    5
  ),(
    null,
    'img/anli/2/anli2-22.jpg',
    '效果图',
    '',
    46,
    5
  ),(
    null,
    'img/anli/2/anli2-23.jpg',
    '效果图',
    '',
    46,
    5
  ),(
    null,
    'img/anli/2/anli2-24.jpg',
    '屋主的小喵咪',
    '',
    46,
    5
  ),
  -- *********案例3****
  -- 诉求
  (
    null,
    '',
    '房屋会准备长期居住，并且近几年会成家，需要一定的收纳空间，并且老人也会偶尔过来居住，整体要求空间要明亮并且适合长期居住',
    '',
    47,
    6
  ),
  -- 思路
  (
    null,
    '',
    '根据屋主需求，在进门位置进行了门厅柜的设计，并且将冰箱隐藏在了门厅位置，靠近餐厅以及客厅厨房，方便三个空间同时使用冰箱；餐厅以及客厅位置采用了定制柜的方式进行设计，并且将电视背景墙以及餐边柜进行整体定制，保证了材质颜色的统一，卫生间进行干湿分离设计，同时我是进行定制柜的设计方式，最大化利用空间，保证整体收纳以及功能性使用。
',
    '',
    48,
    6
  ),
  -- 户型
  (
    null,
    'img/anli/3/anli3-2.jpg',
    '',
    '',
    49,
    6
  ),
  (
    null,
    'img/anli/3/anli3-3.jpg',
    '',
    '',
    49,
    6
  ),
  -- 玄关
  (
    null,
    'img/anli/3/anli3-4.jpg',
    '门厅位置采用了定制柜的设计方式进行设计，并且采用了双色进行分区以及颜色的搭配，因为异型墙体的设计，因此在门厅卫视可以有一个比较薄的位置进行门厅柜的设计，从视觉上既可以拥有薄柜子的设计，让空间更加通透，同时进行门厅的装饰。
',
    '',
    50,
    6
  ),
  (
    null,
    'img/anli/3/anli3-5.jpg',
    '冰箱内嵌在门厅柜位置，既可以方便冰箱满足不同空间的时使用，也可以减少门厅空间过大带来的浪费。同时在进门位置并不会发现冰箱的突兀，在空间上满足使用。
',
    '',
    50,
    6
  ),
  -- 客厅
  (
    null,
    'img/anli/3/anli3-6.jpg',
    '客厅电视背景墙采用了整体定制的方式，在底部采用了口空的设计方式（方便后期收纳盒以及成品物品的拿取摆放）利用抽屉，进行小型物品的收纳以及物品分区。
',
    '',
    51,
    6
  ),
  (
    null,
    'img/anli/3/anli3-7.jpg',
    '电视背景墙区域与餐厅和门厅进行了整体定制，保持了颜色以及材质的统一，在客厅颜色的配置上采用了灰色墙面进行设计(灰色墙面会让空间后撤，拉开空间感以及立体感。',
    '',
    51,
    6
  ),
  (
    null,
    'img/anli/3/anli3-8.jpg',
    '沙发区域采用了半墙的设计方式，并且在隔断的处理上采用了玻璃隔断进行设计，将厨房阳台的自然采光引进到客厅区域，增加整体的光照以及视觉的通透性，从视觉上增加空间感。',
    '',
    51,
    6
  ),
  (
    null,
    'img/anli/3/anli3-9.jpg',
    '茶几采用了玻璃材质进行设计和沙发背后的半墙玻璃材质进行了呼应，金属材质的边缘会让空间有一定的精致感。
',
    '',
    51,
    6
  ),
  (
    null,
    'img/anli/3/anli3-10.jpg',
    '在沙发半墙位置采用了大理石作为台面的同时进行半墙的收口处理，同时隔断靠厨房一侧进行安装，窗台位置作为台面可以进行装饰品以及背景墙的处理应用，同时在沙发背景墙采用了轨道灯进行辅助光源的设计，增加整体的氛围感以及温馨感。',
    '',
    51,
    6
  ),
  (
    null,
    'img/anli/3/anli3-11.jpg',
    '沙发采用了沙发床进行设计，增加，方便客人以及家庭成员的偶尔居住场所。',
    '',
    51,
    6
  ),
  -- 厨房
  (
    null,
    'img/anli/3/anli3-12.jpg',
    '厨房采用了深灰色地柜进行设计，采用了白色吊柜以及浅色墙砖进行搭配，深色的地柜会让空间立体感更加丰富。
',
    '',
    52,
    6
  ),
  (
    null,
    'img/anli/3/anli3-13.jpg',
    '采用了部分吊柜开放格进行搭配丰富空间，同时墙体边缘的开放格和门厅相对，开放格可以进行多种干果或者小件物品的储藏。',
    '',
    52,
    6
  ),
  -- 卧室
  (
    null,
    'img/anli/3/anli3-14.jpg',
    '卧室背景墙采用了深色墙漆的设计方式，利用壁灯以及装饰画进行搭配利用，深色墙面搭配浅色的四件套，以及胡桃木的床品，空间感会有明显对比',
    '',
    53,
    6
  ),(
    null,
    'img/anli/3/anli3-15.jpg',
    '床头一角',
    '',
    53,
    6
  ),(
    null,
    'img/anli/3/anli3-16.jpg',
    '壁灯方便夜晚看书，并且在辅助光源上有很大额效果。',
    '',
    53,
    6
  ),
  -- 卫生间
  (
    null,
    'img/anli/3/anli3-17.jpg',
    '卫生间干区采用局部贴砖的设计方式，墙的边缘采用了收边条进行收口，利用顶部的光源以及智能镜作为光源的设计。',
    '',
    54,
    6
  ),(
    null,
    'img/anli/3/anli3-18.jpg',
    '卫生间湿区，在马桶后方以及淋浴区采用了壁龛的方式进行设计，增加整体储物以及淋浴区物品的摆放。',
    '',
    54,
    6
  ),
  -- 餐厅
  (
    null,
    'img/anli/3/anli3-19.jpg',
    '餐厅位置利用定制柜进行了餐边柜的设计，并且定制了抽屉方便一些就餐器具的储放和随时拿取并且采用了一些开放区，方便小电器应用缓解厨房电器的压力',
    '',
    55,
    6
  ),(
    null,
    'img/anli/3/anli3-20.jpg',
    '顶部采用了吊灯进行光照的设计，增加就餐的氛围。',
    '',
    55,
    6
  ),(
    null,
    'img/anli/3/anli3-21.jpg',
    '餐厅门厅一侧：门厅增加换鞋区，方便平时鞋子的存储以及生活用品的摆放',
    '',
    55,
    6
  ),
  -- 阳台
  (
    null,
    'img/anli/3/anli3-22.jpg',
    '阳台采用了花砖进行地面材质的铺贴，并且利用装饰品进行空间的点缀。',
    '',
    56,
    6
  ),
  -- ******案例4******
  -- 诉求
  (
    null,
    '',
    '屋主喜欢片工业风的设计，房屋属于年代久远的小区（老破小），整体格局在原始结构的中并不是很理想，因此在整体设计中，如何在少动结构的情况下进行整体的改造属于重点。',
    '',
    57,
    7
  ),
  -- --思路
  (
    null,
    '',
    '因为屋主喜欢片工业风的设计，因此在屋内的很多管道的处理上变得简单起来（房屋属于一层，屋顶管道偏多），剩下的就是如何让空间变得协调统一，并且增加空间的收纳，方便屋主使用。',
    '',
    58,
    7
  ),
  -- 户型
  (
    null,
    'img/anli/4/anli4-1.jpg',
    '',
    '',
    59,
    7
  ),(
    null,
    'img/anli/4/anli4-2.jpg',
    '',
    '',
    59,
    7
  ),
  --   -- 玄关
  (
    null,
    'img/anli/4/anli4-3.jpg',
    '玄关位置，进门左手边进行了留白处理，采用成品家居的方式，增加门厅的使用率：电表箱位置的装饰画（还没挂，竖在了下边）、成品的一架，增加了门厅应季物品的收纳摆放，成品的全身镜一方面增加通透性，也有非常大的实用性。',
    '',
    60,
    7
  ),(
    null,
    'img/anli/4/anli4-4.jpg',
    '花瓶下方是门厅的鞋柜，采用成品方式可以极大的增加空间的灵活性。冰箱贴的应用也可以方便随手记录一些需要待办的事宜。既可以增加空间的灵动性也具备实用性。',
    '',
    60,
    7
  ),(
    null,
    'img/anli/4/anli4-5.jpg',
    '电表箱位置的装饰画可以很好的将电表箱位置进行隐藏。',
    '',
    60,
    7
  ),
  -- 客厅
  (
    null,
    'img/anli/4/anli4-6.jpg',
    '在将厨房墙体拆除一部分后，进门后的客餐厅变得很宽敞，既减少了墙体遮挡视线的问题，同时也增加了整体的就餐区，就餐区采用了定制岛台的设计方式——既可以增加桌面下方的储物，也可以最大化的利用空间，岛台下方有储物空间，弥补客餐厅厨房的收纳空间。',
    '',
    61,
    7
  ),(
    null,
    'img/anli/4/anli4-7.jpg',
    '从这个角度可以看到客餐厅还有厨房的全貌。',
    '',
    61,
    7
  ),(
    null,
    'img/anli/4/anli4-8.jpg',
    '客厅一处边柜位置：下方采用成品边柜的方式，增加物品的收纳以及作为餐边柜使用，柜子顶部可以进行装饰品的摆放使用。装饰品摆放小秘诀——高矮胖瘦都要有。 墙面采用了灰色艺术漆，既可以增加质感，也可以提升空间的品质感。',
    '',
    61,
    7
  ),(
    null,
    'img/anli/4/anli4-9.jpg',
    '靠窗的位置同样采用了成品柜的方式，增加空间的收纳率，同时在窗台下方增加了插座的位置，厨房多余的小电器都可以在边柜位置摆放使用。',
    '',
    61,
    7
  ),(
    null,
    'img/anli/4/anli4-10.jpg',
    '插座提前预留好，后期才会方便使用。',
    '',
    61,
    7
  ),(
    null,
    'img/anli/4/anli4-11.jpg',
    '小景，既有工业风的质感又增加了一些东方的禅意',
    '',
    61,
    7
  ),(
    null,
    'img/anli/4/anli4-12.jpg',
    '个人最喜欢的一处小景：很安静',
    '',
    61,
    7
  ),(
    null,
    'img/anli/4/anli4-13.jpg',
    '家中一些鲜花的使用，会让空间有很多的生机感。',
    '',
    61,
    7
  ),
  -- 厨房
  (
    null,
    'img/anli/4/anli4-14.jpg',
    '厨房位置采用了木色的地柜，白色的吊柜，同时地柜与吊柜中间采用了灰色的墙砖进行搭配。这样可以保证空间既有进深感的同时，颜色的搭配上也会更加温馨。',
    '',
    62,
    7
  ),(
    null,
    'img/anli/4/anli4-15.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    62,
    7
  ),(
    null,
    'img/anli/4/anli4-16.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    62,
    7
  ),(
    null,
    'img/anli/4/anli4-17.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    62,
    7
  ),(
    null,
    'img/anli/4/anli4-18.jpg',
    '',
    '',
    62,
    7
  ),(
    null,
    'img/anli/4/anli4-19.jpg',
    '黑白灰三个元素：电器深色（压空间），吊柜白色（轻盈感）灰色墙面（突出空间感）',
    '',
    62,
    7
  ),(
    null,
    'img/anli/4/anli4-20.jpg',
    '鞋柜位置也看到了一部分，冰箱上的一些冰箱贴，方便放一些小菜单等物品。
',
    '',
    62,
    7
  ),(
    null,
    'img/anli/4/anli4-21.jpg',
    '灵动的小黄人。',
    '',
    62,
    7
  ),
  -- 主卧
  (
    null,
    'img/anli/4/anli4-22.jpg',
    '卧室整体空间采用了和客餐厅相同的艺术漆，只是在涂刷的空间上有所区分，因为卧室进深比较大，因此相应小面积的灰色，会让空间后移增加空间的进深感。',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-23.jpg',
    '床头的背景上采用了留白的方式。浅咖色的床头，与白色的墙体形成对比，增加空间的灵动性。在留白的过程中，一些带有禅意的灯具，会让空间变得很安静。',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-24.jpg',
    '休息区的一角：墨绿色的休闲椅，还有绿植，水泥色的做旧水磨石，生活好不惬意。',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-25.jpg',
    '床头背景的一角。',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-26.jpg',
    '衣柜采用了成品的衣柜方式，增加收纳。',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-27.jpg',
    '床尾采用了老榆木的柜子，既可以和整体风格呼应起来，同时还可以增加空间的收纳，墙面采用了留白的方式，为投影的空间做了准备。',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-28.jpg',
    '靠近阳台位置，进行了垫高处理，增加了一个飘窗空间（原始阳台是一个下陷1米多的坑）',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-29.jpg',
    '在这个位置进行休闲，生活会非常的惬意。绿植的出现，也为空间增加生机感。',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-30.jpg',
    '',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-31.jpg',
    '',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-32.jpg',
    '',
    '',
    63,
    7
  ),(
    null,
    'img/anli/4/anli4-33.jpg',
    '',
    '',
    63,
    7
  ),
  -- 次卧
  (
    null,
    'img/anli/4/anli4-34.jpg',
    '工作区兼次卧的空间。背景处留白设计，一盏复古小灯就可以很好的进行装饰。',
    '',
    64,
    7
  ),(
    null,
    'img/anli/4/anli4-35.jpg',
    '工作区采用了一个非常大的长条办工作，满足两个人或者一人多台电脑的使用',
    '',
    64,
    7
  ),(
    null,
    'img/anli/4/anli4-36.jpg',
    '窗台位置，同样采用了榆木板的方式，整体颜色质感相互统一协调。百叶窗的使用，增加了整体空间的质感。',
    '',
    64,
    7
  ),(
    null,
    'img/anli/4/anli4-37.jpg',
    '床头一角。',
    '',
    64,
    7
  ),(
    null,
    'img/anli/4/anli4-38.jpg',
    '',
    '',
    64,
    7
  ),(
    null,
    'img/anli/4/anli4-39.jpg',
    '工作区一角，灰色的艺术漆墙面，将空间变得很安静。',
    '',
    64,
    7
  ),(
    null,
    'img/anli/4/anli4-40.jpg',
    '门的选择上采用了黑色边框的方式，增加空间线条感的呼应。',
    '',
    64,
    7
  ),
  -- 卫生间
  (
    null,
    'img/anli/4/anli4-41.jpg',
    '手工墨绿色小砖搭配白色瓷缝，让整体的空间质感有了提升，金属元素的镜子和水龙头也让空间显得很精致。',
    '',
    65,
    7
  ),(
    null,
    'img/anli/4/anli4-42.jpg',
    '',
    '',
    65,
    7
  ),(
    null,
    'img/anli/4/anli4-43.jpg',
    '受空间影响拍的不是太全，整体风格还是非常和谐统一的',
    '',
    65,
    7
  ),(
    null,
    'img/anli/4/anli4-44.jpg',
    '生间内部，采用了壁挂马桶的方式，同时增加了壁龛的设计，将原有不起眼的地方进行了设计利用，增加了卫生间的使用率和收纳率。马桶水箱上方同样有了空间，存放一些备用物品非常方便。',
    '',
    65,
    7
  ),(
    null,
    'img/anli/4/anli4-45.jpg',
    '内部一角，同时预留了高压水枪的接水口与插座，为以后增加设备做了提前的准备工作。',
    '',
    65,
    7
  ),
  -- **********案例2******
  -- 诉求
  (
    null,
    '',
    '原始格局种有很多诟病的地方，希望在设计中优化整体格局，并满足日常待客以及生活休闲的功能。',
    '',
    66,
    8
  ),
  -- 思路
  (
    null,
    '',
    '原始户型中厨房相对较小，并且卫生间足够大，设计中需要将两个空间进行重新划分以及组合，考虑屋主的收纳以及居住要求，采用定制柜以及成品家居组合方式进行整体设计',
    '',
    67,
    8
  ),
  -- 户型
  (
    null,
    'img/anli/2/anli2-2.jpg',
    '',
    '',
    68,
    8
  ),
  (
    null,
    'img/anli/2/anli2-3.jpg',
    '',
    '',
    68,
    8
  ),
  -- 客厅
  (
    null,
    'img/anli/2/anli2-4.jpg',
    '客厅和厨房中间的墙体进行了半墙设计，采用推拉窗进行空间的联系，增加客厅的采光同时，也可以保证两个空间的互动',
    '',
    69,
    8
  ),(
    null,
    'img/anli/2/anli2-5.jpg',
    '原始客厅属于开间的设计，在客户需求中，希望将客厅以及卧室进行分割，客厅采用沙发床进行设计，满足客厅偶尔待客休息的功能，因此在客厅与卧室中间采用了四联动推拉门的设计，进行空间的划分',
    '',
    69,
    8
  ),(
    null,
    'img/anli/2/anli2-6.jpg',
    '厨房采用了玻璃隔断和玻璃门的设计，将厨房的光最大可能的引进客厅，在沙发上部分采用磁吸轨道设计，增加只能整体的氛围感',
    '',
    69,
    8
  ),(
    null,
    'img/anli/2/anli2-7.jpg',
    '隔断封闭后的一个状态',
    '',
    69,
    8
  ),(
    null,
    'img/anli/2/anli2-8.jpg',
    '客厅采用定制柜的设计方式，将门厅柜与客厅电视柜进行整体化设计，满足收纳的同时也可以保证整体造型以及材质的统一。',
    '',
    69,
    8
  ),
  -- 厨房
  (
    null,
    'img/anli/2/anli2-9.jpg',
    '配色中整体厨房采用白色柜子进行设计，在上墙的处理中采用浅灰色墙砖的方式拉开与白色柜子颜色的差距，增加空间感。利用深灰色地砖的方式进行地面颜色处理，增加空间的立体感',
    '',
    70,
    8
  ),(
    null,
    'img/anli/2/anli2-10.jpg',
    '从厨房一侧可以看到客厅区域，方便两个空间人员的互动。增加生活的趣味性，同时也增加了客厅的采光',
    '',
    70,
    8
  ),(
    null,
    'img/anli/2/anli2-11.jpg',
    '从客厅看向厨房的角度（两个空间的联动性）',
    '',
    70,
    8
  ),
  -- 卧室
  (
    null,
    'img/anli/2/anli2-12.jpg',
    '在收纳的设计中，利用墙体的优势将门厅、客厅、卧室的收纳、颜色、材质进行统一协调。',
    '',
    71,
    8
  ),(
    null,
    'img/anli/2/anli2-13.jpg',
    '客厅与卧室空间的隔断处理，进行两个空间的区分。',
    '',
    71,
    8
  ),(
    null,
    'img/anli/2/anli2-14.jpg',
    '卧室空间利用定制柜进行床头的设计，增加空间收纳以及利用，柜子顶部利用突出柜体的空间进行线性灯设计，增加空间氛围感。（实际使用中，屋主反馈，线性灯利用率最高）',
    '',
    71,
    8
  ),(
    null,
    'img/anli/2/anli2-15.jpg',
    '卧室和阳台的整体空间',
    '',
    71,
    8
  ),
  -- 卫生间
  (
    null,
    'img/anli/2/anli2-16.jpg',
    '卫生间更改了原有布局，进行了空间的重新划分，将洗衣机与洗手台进行了一体化定制，采用智能镜进行面光的补充。',
    '',
    72,
    8
  ),(
    null,
    'img/anli/2/anli2-17.jpg',
    '',
    '',
    72,
    8
  ),(
    null,
    'img/anli/2/anli2-18.jpg',
    '洗手台区域正面',
    '',
    72,
    8
  ),(
    null,
    'img/anli/2/anli2-19.jpg',
    '卫生间淋浴区与马桶区',
    '',
    72,
    8
  ),
  -- 阳台
  (
    null,
    'img/anli/2/anli2-20.jpg',
    '阳台空间的设计，利用凸出去的阳台空间进行吧台的设计，满足日常休闲以及办公的需求',
    '',
    73,
    8
  ),(
    null,
    'img/anli/2/anli2-21.jpg',
    '阳台采用定制柜的方式进行设计，补充卧室衣柜的不足，同时柜子底部采用镂空方式放置扫地机器人。',
    '',
    73,
    8
  ),(
    null,
    'img/anli/2/anli2-22.jpg',
    '效果图',
    '',
    73,
    8
  ),(
    null,
    'img/anli/2/anli2-23.jpg',
    '效果图',
    '',
    73,
    8
  ),(
    null,
    'img/anli/2/anli2-24.jpg',
    '屋主的小喵咪',
    '',
    73,
    8
  ),
  -- *********案例3****
  -- 诉求
  (
    null,
    '',
    '房屋会准备长期居住，并且近几年会成家，需要一定的收纳空间，并且老人也会偶尔过来居住，整体要求空间要明亮并且适合长期居住',
    '',
    74,
    9
  ),
  -- 思路
  (
    null,
    '',
    '根据屋主需求，在进门位置进行了门厅柜的设计，并且将冰箱隐藏在了门厅位置，靠近餐厅以及客厅厨房，方便三个空间同时使用冰箱；餐厅以及客厅位置采用了定制柜的方式进行设计，并且将电视背景墙以及餐边柜进行整体定制，保证了材质颜色的统一，卫生间进行干湿分离设计，同时我是进行定制柜的设计方式，最大化利用空间，保证整体收纳以及功能性使用。
',
    '',
    75,
    9
  ),
  -- 户型
  (
    null,
    'img/anli/3/anli3-2.jpg',
    '',
    '',
    76,
    9
  ),
  (
    null,
    'img/anli/3/anli3-3.jpg',
    '',
    '',
    76,
    9
  ),
  -- 玄关
  (
    null,
    'img/anli/3/anli3-4.jpg',
    '门厅位置采用了定制柜的设计方式进行设计，并且采用了双色进行分区以及颜色的搭配，因为异型墙体的设计，因此在门厅卫视可以有一个比较薄的位置进行门厅柜的设计，从视觉上既可以拥有薄柜子的设计，让空间更加通透，同时进行门厅的装饰。
',
    '',
    77,
    9
  ),
  (
    null,
    'img/anli/3/anli3-5.jpg',
    '冰箱内嵌在门厅柜位置，既可以方便冰箱满足不同空间的时使用，也可以减少门厅空间过大带来的浪费。同时在进门位置并不会发现冰箱的突兀，在空间上满足使用。
',
    '',
    77,
    9
  ),
  -- 客厅
  (
    null,
    'img/anli/3/anli3-6.jpg',
    '客厅电视背景墙采用了整体定制的方式，在底部采用了口空的设计方式（方便后期收纳盒以及成品物品的拿取摆放）利用抽屉，进行小型物品的收纳以及物品分区。
',
    '',
    78,
    9
  ),
  (
    null,
    'img/anli/3/anli3-7.jpg',
    '电视背景墙区域与餐厅和门厅进行了整体定制，保持了颜色以及材质的统一，在客厅颜色的配置上采用了灰色墙面进行设计(灰色墙面会让空间后撤，拉开空间感以及立体感。',
    '',
    78,
    9
  ),
  (
    null,
    'img/anli/3/anli3-8.jpg',
    '沙发区域采用了半墙的设计方式，并且在隔断的处理上采用了玻璃隔断进行设计，将厨房阳台的自然采光引进到客厅区域，增加整体的光照以及视觉的通透性，从视觉上增加空间感。',
    '',
    78,
    9
  ),
  (
    null,
    'img/anli/3/anli3-9.jpg',
    '茶几采用了玻璃材质进行设计和沙发背后的半墙玻璃材质进行了呼应，金属材质的边缘会让空间有一定的精致感。
',
    '',
    78,
    9
  ),
  (
    null,
    'img/anli/3/anli3-10.jpg',
    '在沙发半墙位置采用了大理石作为台面的同时进行半墙的收口处理，同时隔断靠厨房一侧进行安装，窗台位置作为台面可以进行装饰品以及背景墙的处理应用，同时在沙发背景墙采用了轨道灯进行辅助光源的设计，增加整体的氛围感以及温馨感。',
    '',
    78,
    9
  ),
  (
    null,
    'img/anli/3/anli3-11.jpg',
    '沙发采用了沙发床进行设计，增加，方便客人以及家庭成员的偶尔居住场所。',
    '',
    78,
    9
  ),
  -- 厨房
  (
    null,
    'img/anli/3/anli3-12.jpg',
    '厨房采用了深灰色地柜进行设计，采用了白色吊柜以及浅色墙砖进行搭配，深色的地柜会让空间立体感更加丰富。
',
    '',
    79,
    9
  ),
  (
    null,
    'img/anli/3/anli3-13.jpg',
    '采用了部分吊柜开放格进行搭配丰富空间，同时墙体边缘的开放格和门厅相对，开放格可以进行多种干果或者小件物品的储藏。',
    '',
    79,
    9
  ),
  -- 卧室
  (
    null,
    'img/anli/3/anli3-14.jpg',
    '卧室背景墙采用了深色墙漆的设计方式，利用壁灯以及装饰画进行搭配利用，深色墙面搭配浅色的四件套，以及胡桃木的床品，空间感会有明显对比',
    '',
    80,
    9
  ),(
    null,
    'img/anli/3/anli3-15.jpg',
    '床头一角',
    '',
    80,
    9
  ),(
    null,
    'img/anli/3/anli3-16.jpg',
    '壁灯方便夜晚看书，并且在辅助光源上有很大额效果。',
    '',
    80,
    9
  ),
  -- 卫生间
  (
    null,
    'img/anli/3/anli3-17.jpg',
    '卫生间干区采用局部贴砖的设计方式，墙的边缘采用了收边条进行收口，利用顶部的光源以及智能镜作为光源的设计。',
    '',
    81,
    9
  ),(
    null,
    'img/anli/3/anli3-18.jpg',
    '卫生间湿区，在马桶后方以及淋浴区采用了壁龛的方式进行设计，增加整体储物以及淋浴区物品的摆放。',
    '',
    81,
    9
  ),
  -- 餐厅
  (
    null,
    'img/anli/3/anli3-19.jpg',
    '餐厅位置利用定制柜进行了餐边柜的设计，并且定制了抽屉方便一些就餐器具的储放和随时拿取并且采用了一些开放区，方便小电器应用缓解厨房电器的压力',
    '',
    82,
    9
  ),(
    null,
    'img/anli/3/anli3-20.jpg',
    '顶部采用了吊灯进行光照的设计，增加就餐的氛围。',
    '',
    82,
    9
  ),(
    null,
    'img/anli/3/anli3-21.jpg',
    '餐厅门厅一侧：门厅增加换鞋区，方便平时鞋子的存储以及生活用品的摆放',
    '',
    82,
    9
  ),
  -- 阳台
  (
    null,
    'img/anli/3/anli3-22.jpg',
    '阳台采用了花砖进行地面材质的铺贴，并且利用装饰品进行空间的点缀。',
    '',
    83,
    9
  ),
  -- ******案例4******
  -- 诉求
  (
    null,
    '',
    '屋主喜欢片工业风的设计，房屋属于年代久远的小区（老破小），整体格局在原始结构的中并不是很理想，因此在整体设计中，如何在少动结构的情况下进行整体的改造属于重点。',
    '',
    84,
    10
  ),
  -- --思路
  (
    null,
    '',
    '因为屋主喜欢片工业风的设计，因此在屋内的很多管道的处理上变得简单起来（房屋属于一层，屋顶管道偏多），剩下的就是如何让空间变得协调统一，并且增加空间的收纳，方便屋主使用。',
    '',
    85,
    10
  ),
  -- 户型
  (
    null,
    'img/anli/4/anli4-1.jpg',
    '',
    '',
    86,
    10
  ),(
    null,
    'img/anli/4/anli4-2.jpg',
    '',
    '',
    86,
    10
  ),
  --   -- 玄关
  (
    null,
    'img/anli/4/anli4-3.jpg',
    '玄关位置，进门左手边进行了留白处理，采用成品家居的方式，增加门厅的使用率：电表箱位置的装饰画（还没挂，竖在了下边）、成品的一架，增加了门厅应季物品的收纳摆放，成品的全身镜一方面增加通透性，也有非常大的实用性。',
    '',
    87,
    10
  ),(
    null,
    'img/anli/4/anli4-4.jpg',
    '花瓶下方是门厅的鞋柜，采用成品方式可以极大的增加空间的灵活性。冰箱贴的应用也可以方便随手记录一些需要待办的事宜。既可以增加空间的灵动性也具备实用性。',
    '',
    87,
    10
  ),(
    null,
    'img/anli/4/anli4-5.jpg',
    '电表箱位置的装饰画可以很好的将电表箱位置进行隐藏。',
    '',
    87,
    10
  ),
  -- 客厅
  (
    null,
    'img/anli/4/anli4-6.jpg',
    '在将厨房墙体拆除一部分后，进门后的客餐厅变得很宽敞，既减少了墙体遮挡视线的问题，同时也增加了整体的就餐区，就餐区采用了定制岛台的设计方式——既可以增加桌面下方的储物，也可以最大化的利用空间，岛台下方有储物空间，弥补客餐厅厨房的收纳空间。',
    '',
    88,
    10
  ),(
    null,
    'img/anli/4/anli4-7.jpg',
    '从这个角度可以看到客餐厅还有厨房的全貌。',
    '',
    88,
    10
  ),(
    null,
    'img/anli/4/anli4-8.jpg',
    '客厅一处边柜位置：下方采用成品边柜的方式，增加物品的收纳以及作为餐边柜使用，柜子顶部可以进行装饰品的摆放使用。装饰品摆放小秘诀——高矮胖瘦都要有。 墙面采用了灰色艺术漆，既可以增加质感，也可以提升空间的品质感。',
    '',
    88,
    10
  ),(
    null,
    'img/anli/4/anli4-9.jpg',
    '靠窗的位置同样采用了成品柜的方式，增加空间的收纳率，同时在窗台下方增加了插座的位置，厨房多余的小电器都可以在边柜位置摆放使用。',
    '',
    88,
    10
  ),(
    null,
    'img/anli/4/anli4-10.jpg',
    '插座提前预留好，后期才会方便使用。',
    '',
    88,
    10
  ),(
    null,
    'img/anli/4/anli4-11.jpg',
    '小景，既有工业风的质感又增加了一些东方的禅意',
    '',
    88,
    10
  ),(
    null,
    'img/anli/4/anli4-12.jpg',
    '个人最喜欢的一处小景：很安静',
    '',
    88,
    10
  ),(
    null,
    'img/anli/4/anli4-13.jpg',
    '家中一些鲜花的使用，会让空间有很多的生机感。',
    '',
    88,
    10
  ),
  -- 厨房
  (
    null,
    'img/anli/4/anli4-14.jpg',
    '厨房位置采用了木色的地柜，白色的吊柜，同时地柜与吊柜中间采用了灰色的墙砖进行搭配。这样可以保证空间既有进深感的同时，颜色的搭配上也会更加温馨。',
    '',
    89,
    10
  ),(
    null,
    'img/anli/4/anli4-15.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    89,
    10
  ),(
    null,
    'img/anli/4/anli4-16.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    89,
    10
  ),(
    null,
    'img/anli/4/anli4-17.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    89,
    10
  ),(
    null,
    'img/anli/4/anli4-18.jpg',
    '',
    '',
    89,
    10
  ),(
    null,
    'img/anli/4/anli4-19.jpg',
    '黑白灰三个元素：电器深色（压空间），吊柜白色（轻盈感）灰色墙面（突出空间感）',
    '',
    89,
    10
  ),(
    null,
    'img/anli/4/anli4-20.jpg',
    '鞋柜位置也看到了一部分，冰箱上的一些冰箱贴，方便放一些小菜单等物品。
',
    '',
    89,
    10
  ),(
    null,
    'img/anli/4/anli4-21.jpg',
    '灵动的小黄人。',
    '',
    89,
    10
  ),
  -- 主卧
  (
    null,
    'img/anli/4/anli4-22.jpg',
    '卧室整体空间采用了和客餐厅相同的艺术漆，只是在涂刷的空间上有所区分，因为卧室进深比较大，因此相应小面积的灰色，会让空间后移增加空间的进深感。',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-23.jpg',
    '床头的背景上采用了留白的方式。浅咖色的床头，与白色的墙体形成对比，增加空间的灵动性。在留白的过程中，一些带有禅意的灯具，会让空间变得很安静。',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-24.jpg',
    '休息区的一角：墨绿色的休闲椅，还有绿植，水泥色的做旧水磨石，生活好不惬意。',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-25.jpg',
    '床头背景的一角。',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-26.jpg',
    '衣柜采用了成品的衣柜方式，增加收纳。',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-27.jpg',
    '床尾采用了老榆木的柜子，既可以和整体风格呼应起来，同时还可以增加空间的收纳，墙面采用了留白的方式，为投影的空间做了准备。',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-28.jpg',
    '靠近阳台位置，进行了垫高处理，增加了一个飘窗空间（原始阳台是一个下陷1米多的坑）',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-29.jpg',
    '在这个位置进行休闲，生活会非常的惬意。绿植的出现，也为空间增加生机感。',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-30.jpg',
    '',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-31.jpg',
    '',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-32.jpg',
    '',
    '',
    90,
    10
  ),(
    null,
    'img/anli/4/anli4-33.jpg',
    '',
    '',
    90,
    10
  ),
  -- 次卧
  (
    null,
    'img/anli/4/anli4-34.jpg',
    '工作区兼次卧的空间。背景处留白设计，一盏复古小灯就可以很好的进行装饰。',
    '',
    91,
    10
  ),(
    null,
    'img/anli/4/anli4-35.jpg',
    '工作区采用了一个非常大的长条办工作，满足两个人或者一人多台电脑的使用',
    '',
    91,
    10
  ),(
    null,
    'img/anli/4/anli4-36.jpg',
    '窗台位置，同样采用了榆木板的方式，整体颜色质感相互统一协调。百叶窗的使用，增加了整体空间的质感。',
    '',
    91,
    10
  ),(
    null,
    'img/anli/4/anli4-37.jpg',
    '床头一角。',
    '',
    91,
    10
  ),(
    null,
    'img/anli/4/anli4-38.jpg',
    '',
    '',
    91,
    10
  ),(
    null,
    'img/anli/4/anli4-39.jpg',
    '工作区一角，灰色的艺术漆墙面，将空间变得很安静。',
    '',
    91,
    10
  ),(
    null,
    'img/anli/4/anli4-40.jpg',
    '门的选择上采用了黑色边框的方式，增加空间线条感的呼应。',
    '',
    91,
    10
  ),
  -- 卫生间
  (
    null,
    'img/anli/4/anli4-41.jpg',
    '手工墨绿色小砖搭配白色瓷缝，让整体的空间质感有了提升，金属元素的镜子和水龙头也让空间显得很精致。',
    '',
    92,
    10
  ),(
    null,
    'img/anli/4/anli4-42.jpg',
    '',
    '',
    92,
    10
  ),(
    null,
    'img/anli/4/anli4-43.jpg',
    '受空间影响拍的不是太全，整体风格还是非常和谐统一的',
    '',
    92,
    10
  ),(
    null,
    'img/anli/4/anli4-44.jpg',
    '生间内部，采用了壁挂马桶的方式，同时增加了壁龛的设计，将原有不起眼的地方进行了设计利用，增加了卫生间的使用率和收纳率。马桶水箱上方同样有了空间，存放一些备用物品非常方便。',
    '',
    92,
    10
  ),(
    null,
    'img/anli/4/anli4-45.jpg',
    '内部一角，同时预留了高压水枪的接水口与插座，为以后增加设备做了提前的准备工作。',
    '',
    92,
    10
  ),
  -- **********案例2******
  -- 诉求
  (
    null,
    '',
    '原始格局种有很多诟病的地方，希望在设计中优化整体格局，并满足日常待客以及生活休闲的功能。',
    '',
    93,
    11
  ),
  -- 思路
  (
    null,
    '',
    '原始户型中厨房相对较小，并且卫生间足够大，设计中需要将两个空间进行重新划分以及组合，考虑屋主的收纳以及居住要求，采用定制柜以及成品家居组合方式进行整体设计',
    '',
    94,
    11
  ),
  -- 户型
  (
    null,
    'img/anli/2/anli2-2.jpg',
    '',
    '',
    95,
    11
  ),
  (
    null,
    'img/anli/2/anli2-3.jpg',
    '',
    '',
    95,
    11
  ),
  -- 客厅
  (
    null,
    'img/anli/2/anli2-4.jpg',
    '客厅和厨房中间的墙体进行了半墙设计，采用推拉窗进行空间的联系，增加客厅的采光同时，也可以保证两个空间的互动',
    '',
    96,
    11
  ),(
    null,
    'img/anli/2/anli2-5.jpg',
    '原始客厅属于开间的设计，在客户需求中，希望将客厅以及卧室进行分割，客厅采用沙发床进行设计，满足客厅偶尔待客休息的功能，因此在客厅与卧室中间采用了四联动推拉门的设计，进行空间的划分',
    '',
    96,
    11
  ),(
    null,
    'img/anli/2/anli2-6.jpg',
    '厨房采用了玻璃隔断和玻璃门的设计，将厨房的光最大可能的引进客厅，在沙发上部分采用磁吸轨道设计，增加只能整体的氛围感',
    '',
    96,
    11
  ),(
    null,
    'img/anli/2/anli2-7.jpg',
    '隔断封闭后的一个状态',
    '',
    96,
    11
  ),(
    null,
    'img/anli/2/anli2-8.jpg',
    '客厅采用定制柜的设计方式，将门厅柜与客厅电视柜进行整体化设计，满足收纳的同时也可以保证整体造型以及材质的统一。',
    '',
    96,
    11
  ),
  -- 厨房
  (
    null,
    'img/anli/2/anli2-9.jpg',
    '配色中整体厨房采用白色柜子进行设计，在上墙的处理中采用浅灰色墙砖的方式拉开与白色柜子颜色的差距，增加空间感。利用深灰色地砖的方式进行地面颜色处理，增加空间的立体感',
    '',
    97,
    11
  ),(
    null,
    'img/anli/2/anli2-10.jpg',
    '从厨房一侧可以看到客厅区域，方便两个空间人员的互动。增加生活的趣味性，同时也增加了客厅的采光',
    '',
    97,
    11
  ),(
    null,
    'img/anli/2/anli2-11.jpg',
    '从客厅看向厨房的角度（两个空间的联动性）',
    '',
    97,
    11
  ),
  -- 卧室
  (
    null,
    'img/anli/2/anli2-12.jpg',
    '在收纳的设计中，利用墙体的优势将门厅、客厅、卧室的收纳、颜色、材质进行统一协调。',
    '',
    98,
    11
  ),(
    null,
    'img/anli/2/anli2-13.jpg',
    '客厅与卧室空间的隔断处理，进行两个空间的区分。',
    '',
    98,
    11
  ),(
    null,
    'img/anli/2/anli2-14.jpg',
    '卧室空间利用定制柜进行床头的设计，增加空间收纳以及利用，柜子顶部利用突出柜体的空间进行线性灯设计，增加空间氛围感。（实际使用中，屋主反馈，线性灯利用率最高）',
    '',
    98,
    11
  ),(
    null,
    'img/anli/2/anli2-15.jpg',
    '卧室和阳台的整体空间',
    '',
    98,
    11
  ),
  -- 卫生间
  (
    null,
    'img/anli/2/anli2-16.jpg',
    '卫生间更改了原有布局，进行了空间的重新划分，将洗衣机与洗手台进行了一体化定制，采用智能镜进行面光的补充。',
    '',
    99,
    11
  ),(
    null,
    'img/anli/2/anli2-17.jpg',
    '',
    '',
    99,
    11
  ),(
    null,
    'img/anli/2/anli2-18.jpg',
    '洗手台区域正面',
    '',
    99,
    11
  ),(
    null,
    'img/anli/2/anli2-19.jpg',
    '卫生间淋浴区与马桶区',
    '',
    99,
    11
  ),
  -- 阳台
  (
    null,
    'img/anli/2/anli2-20.jpg',
    '阳台空间的设计，利用凸出去的阳台空间进行吧台的设计，满足日常休闲以及办公的需求',
    '',
    100,
    11
  ),(
    null,
    'img/anli/2/anli2-21.jpg',
    '阳台采用定制柜的方式进行设计，补充卧室衣柜的不足，同时柜子底部采用镂空方式放置扫地机器人。',
    '',
    100,
    11
  ),(
    null,
    'img/anli/2/anli2-22.jpg',
    '效果图',
    '',
    100,
    11
  ),(
    null,
    'img/anli/2/anli2-23.jpg',
    '效果图',
    '',
    100,
    11
  ),(
    null,
    'img/anli/2/anli2-24.jpg',
    '屋主的小喵咪',
    '',
    100,
    11
  ),
  -- *********案例3****
  -- 诉求
  (
    null,
    '',
    '房屋会准备长期居住，并且近几年会成家，需要一定的收纳空间，并且老人也会偶尔过来居住，整体要求空间要明亮并且适合长期居住',
    '',
    101,
    12
  ),
  -- 思路
  (
    null,
    '',
    '根据屋主需求，在进门位置进行了门厅柜的设计，并且将冰箱隐藏在了门厅位置，靠近餐厅以及客厅厨房，方便三个空间同时使用冰箱；餐厅以及客厅位置采用了定制柜的方式进行设计，并且将电视背景墙以及餐边柜进行整体定制，保证了材质颜色的统一，卫生间进行干湿分离设计，同时我是进行定制柜的设计方式，最大化利用空间，保证整体收纳以及功能性使用。
',
    '',
    102,
    12
  ),
  -- 户型
  (
    null,
    'img/anli/3/anli3-2.jpg',
    '',
    '',
    103,
    12
  ),
  (
    null,
    'img/anli/3/anli3-3.jpg',
    '',
    '',
    103,
    12
  ),
  -- 玄关
  (
    null,
    'img/anli/3/anli3-4.jpg',
    '门厅位置采用了定制柜的设计方式进行设计，并且采用了双色进行分区以及颜色的搭配，因为异型墙体的设计，因此在门厅卫视可以有一个比较薄的位置进行门厅柜的设计，从视觉上既可以拥有薄柜子的设计，让空间更加通透，同时进行门厅的装饰。
',
    '',
    104,
    12
  ),
  (
    null,
    'img/anli/3/anli3-5.jpg',
    '冰箱内嵌在门厅柜位置，既可以方便冰箱满足不同空间的时使用，也可以减少门厅空间过大带来的浪费。同时在进门位置并不会发现冰箱的突兀，在空间上满足使用。
',
    '',
    104,
    12
  ),
  -- 客厅
  (
    null,
    'img/anli/3/anli3-6.jpg',
    '客厅电视背景墙采用了整体定制的方式，在底部采用了口空的设计方式（方便后期收纳盒以及成品物品的拿取摆放）利用抽屉，进行小型物品的收纳以及物品分区。
',
    '',
    105,
    12
  ),
  (
    null,
    'img/anli/3/anli3-7.jpg',
    '电视背景墙区域与餐厅和门厅进行了整体定制，保持了颜色以及材质的统一，在客厅颜色的配置上采用了灰色墙面进行设计(灰色墙面会让空间后撤，拉开空间感以及立体感。',
    '',
    105,
    12
  ),
  (
    null,
    'img/anli/3/anli3-8.jpg',
    '沙发区域采用了半墙的设计方式，并且在隔断的处理上采用了玻璃隔断进行设计，将厨房阳台的自然采光引进到客厅区域，增加整体的光照以及视觉的通透性，从视觉上增加空间感。',
    '',
    105,
    12
  ),
  (
    null,
    'img/anli/3/anli3-9.jpg',
    '茶几采用了玻璃材质进行设计和沙发背后的半墙玻璃材质进行了呼应，金属材质的边缘会让空间有一定的精致感。
',
    '',
    105,
    12
  ),
  (
    null,
    'img/anli/3/anli3-10.jpg',
    '在沙发半墙位置采用了大理石作为台面的同时进行半墙的收口处理，同时隔断靠厨房一侧进行安装，窗台位置作为台面可以进行装饰品以及背景墙的处理应用，同时在沙发背景墙采用了轨道灯进行辅助光源的设计，增加整体的氛围感以及温馨感。',
    '',
    105,
    12
  ),
  (
    null,
    'img/anli/3/anli3-11.jpg',
    '沙发采用了沙发床进行设计，增加，方便客人以及家庭成员的偶尔居住场所。',
    '',
    105,
    12
  ),
  -- 厨房
  (
    null,
    'img/anli/3/anli3-12.jpg',
    '厨房采用了深灰色地柜进行设计，采用了白色吊柜以及浅色墙砖进行搭配，深色的地柜会让空间立体感更加丰富。
',
    '',
    106,
    12
  ),
  (
    null,
    'img/anli/3/anli3-13.jpg',
    '采用了部分吊柜开放格进行搭配丰富空间，同时墙体边缘的开放格和门厅相对，开放格可以进行多种干果或者小件物品的储藏。',
    '',
    106,
    12
  ),
  -- 卧室
  (
    null,
    'img/anli/3/anli3-14.jpg',
    '卧室背景墙采用了深色墙漆的设计方式，利用壁灯以及装饰画进行搭配利用，深色墙面搭配浅色的四件套，以及胡桃木的床品，空间感会有明显对比',
    '',
    107,
    12
  ),(
    null,
    'img/anli/3/anli3-15.jpg',
    '床头一角',
    '',
    107,
    12
  ),(
    null,
    'img/anli/3/anli3-16.jpg',
    '壁灯方便夜晚看书，并且在辅助光源上有很大额效果。',
    '',
    107,
    12
  ),
  -- 卫生间
  (
    null,
    'img/anli/3/anli3-17.jpg',
    '卫生间干区采用局部贴砖的设计方式，墙的边缘采用了收边条进行收口，利用顶部的光源以及智能镜作为光源的设计。',
    '',
    108,
    12
  ),(
    null,
    'img/anli/3/anli3-18.jpg',
    '卫生间湿区，在马桶后方以及淋浴区采用了壁龛的方式进行设计，增加整体储物以及淋浴区物品的摆放。',
    '',
    108,
    12
  ),
  -- 餐厅
  (
    null,
    'img/anli/3/anli3-19.jpg',
    '餐厅位置利用定制柜进行了餐边柜的设计，并且定制了抽屉方便一些就餐器具的储放和随时拿取并且采用了一些开放区，方便小电器应用缓解厨房电器的压力',
    '',
    109,
    12
  ),(
    null,
    'img/anli/3/anli3-20.jpg',
    '顶部采用了吊灯进行光照的设计，增加就餐的氛围。',
    '',
    109,
    12
  ),(
    null,
    'img/anli/3/anli3-21.jpg',
    '餐厅门厅一侧：门厅增加换鞋区，方便平时鞋子的存储以及生活用品的摆放',
    '',
    109,
    12
  ),
  -- 阳台
  (
    null,
    'img/anli/3/anli3-22.jpg',
    '阳台采用了花砖进行地面材质的铺贴，并且利用装饰品进行空间的点缀。',
    '',
    110,
    12
  ),
  -- ******案例4******
  -- 诉求
  (
    null,
    '',
    '屋主喜欢片工业风的设计，房屋属于年代久远的小区（老破小），整体格局在原始结构的中并不是很理想，因此在整体设计中，如何在少动结构的情况下进行整体的改造属于重点。',
    '',
    111,
    13
  ),
  -- --思路
  (
    null,
    '',
    '因为屋主喜欢片工业风的设计，因此在屋内的很多管道的处理上变得简单起来（房屋属于一层，屋顶管道偏多），剩下的就是如何让空间变得协调统一，并且增加空间的收纳，方便屋主使用。',
    '',
    112,
    13
  ),
  -- 户型
  (
    null,
    'img/anli/4/anli4-1.jpg',
    '',
    '',
    113,
    13
  ),(
    null,
    'img/anli/4/anli4-2.jpg',
    '',
    '',
    113,
    13
  ),
  --   -- 玄关
  (
    null,
    'img/anli/4/anli4-3.jpg',
    '玄关位置，进门左手边进行了留白处理，采用成品家居的方式，增加门厅的使用率：电表箱位置的装饰画（还没挂，竖在了下边）、成品的一架，增加了门厅应季物品的收纳摆放，成品的全身镜一方面增加通透性，也有非常大的实用性。',
    '',
    114,
    13
  ),(
    null,
    'img/anli/4/anli4-4.jpg',
    '花瓶下方是门厅的鞋柜，采用成品方式可以极大的增加空间的灵活性。冰箱贴的应用也可以方便随手记录一些需要待办的事宜。既可以增加空间的灵动性也具备实用性。',
    '',
    114,
    13
  ),(
    null,
    'img/anli/4/anli4-5.jpg',
    '电表箱位置的装饰画可以很好的将电表箱位置进行隐藏。',
    '',
    114,
    13
  ),
  -- 客厅
  (
    null,
    'img/anli/4/anli4-6.jpg',
    '在将厨房墙体拆除一部分后，进门后的客餐厅变得很宽敞，既减少了墙体遮挡视线的问题，同时也增加了整体的就餐区，就餐区采用了定制岛台的设计方式——既可以增加桌面下方的储物，也可以最大化的利用空间，岛台下方有储物空间，弥补客餐厅厨房的收纳空间。',
    '',
    115,
    13
  ),(
    null,
    'img/anli/4/anli4-7.jpg',
    '从这个角度可以看到客餐厅还有厨房的全貌。',
    '',
    115,
    13
  ),(
    null,
    'img/anli/4/anli4-8.jpg',
    '客厅一处边柜位置：下方采用成品边柜的方式，增加物品的收纳以及作为餐边柜使用，柜子顶部可以进行装饰品的摆放使用。装饰品摆放小秘诀——高矮胖瘦都要有。 墙面采用了灰色艺术漆，既可以增加质感，也可以提升空间的品质感。',
    '',
    115,
    13
  ),(
    null,
    'img/anli/4/anli4-9.jpg',
    '靠窗的位置同样采用了成品柜的方式，增加空间的收纳率，同时在窗台下方增加了插座的位置，厨房多余的小电器都可以在边柜位置摆放使用。',
    '',
    115,
    13
  ),(
    null,
    'img/anli/4/anli4-10.jpg',
    '插座提前预留好，后期才会方便使用。',
    '',
    115,
    13
  ),(
    null,
    'img/anli/4/anli4-11.jpg',
    '小景，既有工业风的质感又增加了一些东方的禅意',
    '',
    115,
    13
  ),(
    null,
    'img/anli/4/anli4-12.jpg',
    '个人最喜欢的一处小景：很安静',
    '',
    115,
    13
  ),(
    null,
    'img/anli/4/anli4-13.jpg',
    '家中一些鲜花的使用，会让空间有很多的生机感。',
    '',
    115,
    13
  ),
  -- 厨房
  (
    null,
    'img/anli/4/anli4-14.jpg',
    '厨房位置采用了木色的地柜，白色的吊柜，同时地柜与吊柜中间采用了灰色的墙砖进行搭配。这样可以保证空间既有进深感的同时，颜色的搭配上也会更加温馨。',
    '',
    116,
    13
  ),(
    null,
    'img/anli/4/anli4-15.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    116,
    13
  ),(
    null,
    'img/anli/4/anli4-16.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    116,
    13
  ),(
    null,
    'img/anli/4/anli4-17.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    116,
    13
  ),(
    null,
    'img/anli/4/anli4-18.jpg',
    '',
    '',
    116,
    13
  ),(
    null,
    'img/anli/4/anli4-19.jpg',
    '黑白灰三个元素：电器深色（压空间），吊柜白色（轻盈感）灰色墙面（突出空间感）',
    '',
    116,
    13
  ),(
    null,
    'img/anli/4/anli4-20.jpg',
    '鞋柜位置也看到了一部分，冰箱上的一些冰箱贴，方便放一些小菜单等物品。
',
    '',
    116,
    13
  ),(
    null,
    'img/anli/4/anli4-21.jpg',
    '灵动的小黄人。',
    '',
    116,
    13
  ),
  -- 主卧
  (
    null,
    'img/anli/4/anli4-22.jpg',
    '卧室整体空间采用了和客餐厅相同的艺术漆，只是在涂刷的空间上有所区分，因为卧室进深比较大，因此相应小面积的灰色，会让空间后移增加空间的进深感。',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-23.jpg',
    '床头的背景上采用了留白的方式。浅咖色的床头，与白色的墙体形成对比，增加空间的灵动性。在留白的过程中，一些带有禅意的灯具，会让空间变得很安静。',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-24.jpg',
    '休息区的一角：墨绿色的休闲椅，还有绿植，水泥色的做旧水磨石，生活好不惬意。',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-25.jpg',
    '床头背景的一角。',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-26.jpg',
    '衣柜采用了成品的衣柜方式，增加收纳。',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-27.jpg',
    '床尾采用了老榆木的柜子，既可以和整体风格呼应起来，同时还可以增加空间的收纳，墙面采用了留白的方式，为投影的空间做了准备。',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-28.jpg',
    '靠近阳台位置，进行了垫高处理，增加了一个飘窗空间（原始阳台是一个下陷1米多的坑）',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-29.jpg',
    '在这个位置进行休闲，生活会非常的惬意。绿植的出现，也为空间增加生机感。',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-30.jpg',
    '',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-31.jpg',
    '',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-32.jpg',
    '',
    '',
    117,
    13
  ),(
    null,
    'img/anli/4/anli4-33.jpg',
    '',
    '',
    117,
    13
  ),
  -- 次卧
  (
    null,
    'img/anli/4/anli4-34.jpg',
    '工作区兼次卧的空间。背景处留白设计，一盏复古小灯就可以很好的进行装饰。',
    '',
    118,
    13
  ),(
    null,
    'img/anli/4/anli4-35.jpg',
    '工作区采用了一个非常大的长条办工作，满足两个人或者一人多台电脑的使用',
    '',
    118,
    13
  ),(
    null,
    'img/anli/4/anli4-36.jpg',
    '窗台位置，同样采用了榆木板的方式，整体颜色质感相互统一协调。百叶窗的使用，增加了整体空间的质感。',
    '',
    118,
    13
  ),(
    null,
    'img/anli/4/anli4-37.jpg',
    '床头一角。',
    '',
    118,
    13
  ),(
    null,
    'img/anli/4/anli4-38.jpg',
    '',
    '',
    118,
    13
  ),(
    null,
    'img/anli/4/anli4-39.jpg',
    '工作区一角，灰色的艺术漆墙面，将空间变得很安静。',
    '',
    118,
    13
  ),(
    null,
    'img/anli/4/anli4-40.jpg',
    '门的选择上采用了黑色边框的方式，增加空间线条感的呼应。',
    '',
    118,
    13
  ),
  -- 卫生间
  (
    null,
    'img/anli/4/anli4-41.jpg',
    '手工墨绿色小砖搭配白色瓷缝，让整体的空间质感有了提升，金属元素的镜子和水龙头也让空间显得很精致。',
    '',
    119,
    13
  ),(
    null,
    'img/anli/4/anli4-42.jpg',
    '',
    '',
    119,
    13
  ),(
    null,
    'img/anli/4/anli4-43.jpg',
    '受空间影响拍的不是太全，整体风格还是非常和谐统一的',
    '',
    119,
    13
  ),(
    null,
    'img/anli/4/anli4-44.jpg',
    '生间内部，采用了壁挂马桶的方式，同时增加了壁龛的设计，将原有不起眼的地方进行了设计利用，增加了卫生间的使用率和收纳率。马桶水箱上方同样有了空间，存放一些备用物品非常方便。',
    '',
    119,
    13
  ),(
    null,
    'img/anli/4/anli4-45.jpg',
    '内部一角，同时预留了高压水枪的接水口与插座，为以后增加设备做了提前的准备工作。',
    '',
    119,
    13
  ),
  -- **********案例2******
  -- 诉求
  (
    null,
    '',
    '原始格局种有很多诟病的地方，希望在设计中优化整体格局，并满足日常待客以及生活休闲的功能。',
    '',
    120,
    14
  ),
  -- 思路
  (
    null,
    '',
    '原始户型中厨房相对较小，并且卫生间足够大，设计中需要将两个空间进行重新划分以及组合，考虑屋主的收纳以及居住要求，采用定制柜以及成品家居组合方式进行整体设计',
    '',
    121,
    14
  ),
  -- 户型
  (
    null,
    'img/anli/2/anli2-2.jpg',
    '',
    '',
    122,
    14
  ),
  (
    null,
    'img/anli/2/anli2-3.jpg',
    '',
    '',
    122,
    14
  ),
  -- 客厅
  (
    null,
    'img/anli/2/anli2-4.jpg',
    '客厅和厨房中间的墙体进行了半墙设计，采用推拉窗进行空间的联系，增加客厅的采光同时，也可以保证两个空间的互动',
    '',
   123,
    14
  ),(
    null,
    'img/anli/2/anli2-5.jpg',
    '原始客厅属于开间的设计，在客户需求中，希望将客厅以及卧室进行分割，客厅采用沙发床进行设计，满足客厅偶尔待客休息的功能，因此在客厅与卧室中间采用了四联动推拉门的设计，进行空间的划分',
    '',
   123,
    14
  ),(
    null,
    'img/anli/2/anli2-6.jpg',
    '厨房采用了玻璃隔断和玻璃门的设计，将厨房的光最大可能的引进客厅，在沙发上部分采用磁吸轨道设计，增加只能整体的氛围感',
    '',
   123,
    14
  ),(
    null,
    'img/anli/2/anli2-7.jpg',
    '隔断封闭后的一个状态',
    '',
   123,
    14
  ),(
    null,
    'img/anli/2/anli2-8.jpg',
    '客厅采用定制柜的设计方式，将门厅柜与客厅电视柜进行整体化设计，满足收纳的同时也可以保证整体造型以及材质的统一。',
    '',
   123,
    14
  ),
  -- 厨房
  (
    null,
    'img/anli/2/anli2-9.jpg',
    '配色中整体厨房采用白色柜子进行设计，在上墙的处理中采用浅灰色墙砖的方式拉开与白色柜子颜色的差距，增加空间感。利用深灰色地砖的方式进行地面颜色处理，增加空间的立体感',
    '',
    124,
    14
  ),(
    null,
    'img/anli/2/anli2-10.jpg',
    '从厨房一侧可以看到客厅区域，方便两个空间人员的互动。增加生活的趣味性，同时也增加了客厅的采光',
    '',
    124,
    14
  ),(
    null,
    'img/anli/2/anli2-11.jpg',
    '从客厅看向厨房的角度（两个空间的联动性）',
    '',
    124,
    14
  ),
  -- 卧室
  (
    null,
    'img/anli/2/anli2-12.jpg',
    '在收纳的设计中，利用墙体的优势将门厅、客厅、卧室的收纳、颜色、材质进行统一协调。',
    '',
    125,
    14
  ),(
    null,
    'img/anli/2/anli2-13.jpg',
    '客厅与卧室空间的隔断处理，进行两个空间的区分。',
    '',
    125,
    14
  ),(
    null,
    'img/anli/2/anli2-14.jpg',
    '卧室空间利用定制柜进行床头的设计，增加空间收纳以及利用，柜子顶部利用突出柜体的空间进行线性灯设计，增加空间氛围感。（实际使用中，屋主反馈，线性灯利用率最高）',
    '',
    125,
    14
  ),(
    null,
    'img/anli/2/anli2-15.jpg',
    '卧室和阳台的整体空间',
    '',
    125,
    14
  ),
  -- 卫生间
  (
    null,
    'img/anli/2/anli2-16.jpg',
    '卫生间更改了原有布局，进行了空间的重新划分，将洗衣机与洗手台进行了一体化定制，采用智能镜进行面光的补充。',
    '',
    126,
    14
  ),(
    null,
    'img/anli/2/anli2-17.jpg',
    '',
    '',
    126,
    14
  ),(
    null,
    'img/anli/2/anli2-18.jpg',
    '洗手台区域正面',
    '',
    126,
    14
  ),(
    null,
    'img/anli/2/anli2-19.jpg',
    '卫生间淋浴区与马桶区',
    '',
    126,
    14
  ),
  -- 阳台
  (
    null,
    'img/anli/2/anli2-20.jpg',
    '阳台空间的设计，利用凸出去的阳台空间进行吧台的设计，满足日常休闲以及办公的需求',
    '',
    127,
    14
  ),(
    null,
    'img/anli/2/anli2-21.jpg',
    '阳台采用定制柜的方式进行设计，补充卧室衣柜的不足，同时柜子底部采用镂空方式放置扫地机器人。',
    '',
    127,
    14
  ),(
    null,
    'img/anli/2/anli2-22.jpg',
    '效果图',
    '',
    127,
    14
  ),(
    null,
    'img/anli/2/anli2-23.jpg',
    '效果图',
    '',
    127,
    14
  ),(
    null,
    'img/anli/2/anli2-24.jpg',
    '屋主的小喵咪',
    '',
    127,
    14
  ),
  -- *********案例3****
  -- 诉求
  (
    null,
    '',
    '房屋会准备长期居住，并且近几年会成家，需要一定的收纳空间，并且老人也会偶尔过来居住，整体要求空间要明亮并且适合长期居住',
    '',
    128,
    15
  ),
  -- 思路
  (
    null,
    '',
    '根据屋主需求，在进门位置进行了门厅柜的设计，并且将冰箱隐藏在了门厅位置，靠近餐厅以及客厅厨房，方便三个空间同时使用冰箱；餐厅以及客厅位置采用了定制柜的方式进行设计，并且将电视背景墙以及餐边柜进行整体定制，保证了材质颜色的统一，卫生间进行干湿分离设计，同时我是进行定制柜的设计方式，最大化利用空间，保证整体收纳以及功能性使用。
',
    '',
    129,
    15
  ),
  -- 户型
  (
    null,
    'img/anli/3/anli3-2.jpg',
    '',
    '',
    130,
    15
  ),
  (
    null,
    'img/anli/3/anli3-3.jpg',
    '',
    '',
    130,
    15
  ),
  -- 玄关
  (
    null,
    'img/anli/3/anli3-4.jpg',
    '门厅位置采用了定制柜的设计方式进行设计，并且采用了双色进行分区以及颜色的搭配，因为异型墙体的设计，因此在门厅卫视可以有一个比较薄的位置进行门厅柜的设计，从视觉上既可以拥有薄柜子的设计，让空间更加通透，同时进行门厅的装饰。
',
    '',
    131,
    15
  ),
  (
    null,
    'img/anli/3/anli3-5.jpg',
    '冰箱内嵌在门厅柜位置，既可以方便冰箱满足不同空间的时使用，也可以减少门厅空间过大带来的浪费。同时在进门位置并不会发现冰箱的突兀，在空间上满足使用。
',
    '',
    131,
    15
  ),
  -- 客厅
  (
    null,
    'img/anli/3/anli3-6.jpg',
    '客厅电视背景墙采用了整体定制的方式，在底部采用了口空的设计方式（方便后期收纳盒以及成品物品的拿取摆放）利用抽屉，进行小型物品的收纳以及物品分区。
',
    '',
    132,
    15
  ),
  (
    null,
    'img/anli/3/anli3-7.jpg',
    '电视背景墙区域与餐厅和门厅进行了整体定制，保持了颜色以及材质的统一，在客厅颜色的配置上采用了灰色墙面进行设计(灰色墙面会让空间后撤，拉开空间感以及立体感。',
    '',
    132,
    15
  ),
  (
    null,
    'img/anli/3/anli3-8.jpg',
    '沙发区域采用了半墙的设计方式，并且在隔断的处理上采用了玻璃隔断进行设计，将厨房阳台的自然采光引进到客厅区域，增加整体的光照以及视觉的通透性，从视觉上增加空间感。',
    '',
    132,
    15
  ),
  (
    null,
    'img/anli/3/anli3-9.jpg',
    '茶几采用了玻璃材质进行设计和沙发背后的半墙玻璃材质进行了呼应，金属材质的边缘会让空间有一定的精致感。
',
    '',
    132,
    15
  ),
  (
    null,
    'img/anli/3/anli3-10.jpg',
    '在沙发半墙位置采用了大理石作为台面的同时进行半墙的收口处理，同时隔断靠厨房一侧进行安装，窗台位置作为台面可以进行装饰品以及背景墙的处理应用，同时在沙发背景墙采用了轨道灯进行辅助光源的设计，增加整体的氛围感以及温馨感。',
    '',
    132,
    15
  ),
  (
    null,
    'img/anli/3/anli3-11.jpg',
    '沙发采用了沙发床进行设计，增加，方便客人以及家庭成员的偶尔居住场所。',
    '',
    132,
    15
  ),
  -- 厨房
  (
    null,
    'img/anli/3/anli3-12.jpg',
    '厨房采用了深灰色地柜进行设计，采用了白色吊柜以及浅色墙砖进行搭配，深色的地柜会让空间立体感更加丰富。
',
    '',
    133,
    15
  ),
  (
    null,
    'img/anli/3/anli3-13.jpg',
    '采用了部分吊柜开放格进行搭配丰富空间，同时墙体边缘的开放格和门厅相对，开放格可以进行多种干果或者小件物品的储藏。',
    '',
    133,
    15
  ),
  -- 卧室
  (
    null,
    'img/anli/3/anli3-14.jpg',
    '卧室背景墙采用了深色墙漆的设计方式，利用壁灯以及装饰画进行搭配利用，深色墙面搭配浅色的四件套，以及胡桃木的床品，空间感会有明显对比',
    '',
    134,
    15
  ),(
    null,
    'img/anli/3/anli3-15.jpg',
    '床头一角',
    '',
    134,
    15
  ),(
    null,
    'img/anli/3/anli3-16.jpg',
    '壁灯方便夜晚看书，并且在辅助光源上有很大额效果。',
    '',
    134,
    15
  ),
  -- 卫生间
  (
    null,
    'img/anli/3/anli3-17.jpg',
    '卫生间干区采用局部贴砖的设计方式，墙的边缘采用了收边条进行收口，利用顶部的光源以及智能镜作为光源的设计。',
    '',
    135,
    15
  ),(
    null,
    'img/anli/3/anli3-18.jpg',
    '卫生间湿区，在马桶后方以及淋浴区采用了壁龛的方式进行设计，增加整体储物以及淋浴区物品的摆放。',
    '',
    135,
    15
  ),
  -- 餐厅
  (
    null,
    'img/anli/3/anli3-19.jpg',
    '餐厅位置利用定制柜进行了餐边柜的设计，并且定制了抽屉方便一些就餐器具的储放和随时拿取并且采用了一些开放区，方便小电器应用缓解厨房电器的压力',
    '',
    136,
    15
  ),(
    null,
    'img/anli/3/anli3-20.jpg',
    '顶部采用了吊灯进行光照的设计，增加就餐的氛围。',
    '',
    136,
    15
  ),(
    null,
    'img/anli/3/anli3-21.jpg',
    '餐厅门厅一侧：门厅增加换鞋区，方便平时鞋子的存储以及生活用品的摆放',
    '',
    136,
    15
  ),
  -- 阳台
  (
    null,
    'img/anli/3/anli3-22.jpg',
    '阳台采用了花砖进行地面材质的铺贴，并且利用装饰品进行空间的点缀。',
    '',
    137,
    15
  ),
  -- ******案例4******
  -- 诉求
  (
    null,
    '',
    '屋主喜欢片工业风的设计，房屋属于年代久远的小区（老破小），整体格局在原始结构的中并不是很理想，因此在整体设计中，如何在少动结构的情况下进行整体的改造属于重点。',
    '',
    138,
    16
  ),
  -- --思路
  (
    null,
    '',
    '因为屋主喜欢片工业风的设计，因此在屋内的很多管道的处理上变得简单起来（房屋属于一层，屋顶管道偏多），剩下的就是如何让空间变得协调统一，并且增加空间的收纳，方便屋主使用。',
    '',
    139,
    16
  ),
  -- 户型
  (
    null,
    'img/anli/4/anli4-1.jpg',
    '',
    '',
    140,
    16
  ),(
    null,
    'img/anli/4/anli4-2.jpg',
    '',
    '',
    140,
    16
  ),
  --   -- 玄关
  (
    null,
    'img/anli/4/anli4-3.jpg',
    '玄关位置，进门左手边进行了留白处理，采用成品家居的方式，增加门厅的使用率：电表箱位置的装饰画（还没挂，竖在了下边）、成品的一架，增加了门厅应季物品的收纳摆放，成品的全身镜一方面增加通透性，也有非常大的实用性。',
    '',
    141,
    16
  ),(
    null,
    'img/anli/4/anli4-4.jpg',
    '花瓶下方是门厅的鞋柜，采用成品方式可以极大的增加空间的灵活性。冰箱贴的应用也可以方便随手记录一些需要待办的事宜。既可以增加空间的灵动性也具备实用性。',
    '',
    141,
    16
  ),(
    null,
    'img/anli/4/anli4-5.jpg',
    '电表箱位置的装饰画可以很好的将电表箱位置进行隐藏。',
    '',
    141,
    16
  ),
  -- 客厅
  (
    null,
    'img/anli/4/anli4-6.jpg',
    '在将厨房墙体拆除一部分后，进门后的客餐厅变得很宽敞，既减少了墙体遮挡视线的问题，同时也增加了整体的就餐区，就餐区采用了定制岛台的设计方式——既可以增加桌面下方的储物，也可以最大化的利用空间，岛台下方有储物空间，弥补客餐厅厨房的收纳空间。',
    '',
    142,
    16
  ),(
    null,
    'img/anli/4/anli4-7.jpg',
    '从这个角度可以看到客餐厅还有厨房的全貌。',
    '',
    142,
    16
  ),(
    null,
    'img/anli/4/anli4-8.jpg',
    '客厅一处边柜位置：下方采用成品边柜的方式，增加物品的收纳以及作为餐边柜使用，柜子顶部可以进行装饰品的摆放使用。装饰品摆放小秘诀——高矮胖瘦都要有。 墙面采用了灰色艺术漆，既可以增加质感，也可以提升空间的品质感。',
    '',
    142,
    16
  ),(
    null,
    'img/anli/4/anli4-9.jpg',
    '靠窗的位置同样采用了成品柜的方式，增加空间的收纳率，同时在窗台下方增加了插座的位置，厨房多余的小电器都可以在边柜位置摆放使用。',
    '',
    142,
    16
  ),(
    null,
    'img/anli/4/anli4-10.jpg',
    '插座提前预留好，后期才会方便使用。',
    '',
    142,
    16
  ),(
    null,
    'img/anli/4/anli4-11.jpg',
    '小景，既有工业风的质感又增加了一些东方的禅意',
    '',
    142,
    16
  ),(
    null,
    'img/anli/4/anli4-12.jpg',
    '个人最喜欢的一处小景：很安静',
    '',
    142,
    16
  ),(
    null,
    'img/anli/4/anli4-13.jpg',
    '家中一些鲜花的使用，会让空间有很多的生机感。',
    '',
    142,
    16
  ),
  -- 厨房
  (
    null,
    'img/anli/4/anli4-14.jpg',
    '厨房位置采用了木色的地柜，白色的吊柜，同时地柜与吊柜中间采用了灰色的墙砖进行搭配。这样可以保证空间既有进深感的同时，颜色的搭配上也会更加温馨。',
    '',
    143,
    16
  ),(
    null,
    'img/anli/4/anli4-15.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    143,
    16
  ),(
    null,
    'img/anli/4/anli4-16.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    143,
    16
  ),(
    null,
    'img/anli/4/anli4-17.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    143,
    16
  ),(
    null,
    'img/anli/4/anli4-18.jpg',
    '',
    '',
    143,
    16
  ),(
    null,
    'img/anli/4/anli4-19.jpg',
    '黑白灰三个元素：电器深色（压空间），吊柜白色（轻盈感）灰色墙面（突出空间感）',
    '',
    143,
    16
  ),(
    null,
    'img/anli/4/anli4-20.jpg',
    '鞋柜位置也看到了一部分，冰箱上的一些冰箱贴，方便放一些小菜单等物品。
',
    '',
    143,
    16
  ),(
    null,
    'img/anli/4/anli4-21.jpg',
    '灵动的小黄人。',
    '',
    143,
    16
  ),
  -- 主卧
  (
    null,
    'img/anli/4/anli4-22.jpg',
    '卧室整体空间采用了和客餐厅相同的艺术漆，只是在涂刷的空间上有所区分，因为卧室进深比较大，因此相应小面积的灰色，会让空间后移增加空间的进深感。',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-23.jpg',
    '床头的背景上采用了留白的方式。浅咖色的床头，与白色的墙体形成对比，增加空间的灵动性。在留白的过程中，一些带有禅意的灯具，会让空间变得很安静。',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-24.jpg',
    '休息区的一角：墨绿色的休闲椅，还有绿植，水泥色的做旧水磨石，生活好不惬意。',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-25.jpg',
    '床头背景的一角。',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-26.jpg',
    '衣柜采用了成品的衣柜方式，增加收纳。',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-27.jpg',
    '床尾采用了老榆木的柜子，既可以和整体风格呼应起来，同时还可以增加空间的收纳，墙面采用了留白的方式，为投影的空间做了准备。',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-28.jpg',
    '靠近阳台位置，进行了垫高处理，增加了一个飘窗空间（原始阳台是一个下陷1米多的坑）',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-29.jpg',
    '在这个位置进行休闲，生活会非常的惬意。绿植的出现，也为空间增加生机感。',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-30.jpg',
    '',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-31.jpg',
    '',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-32.jpg',
    '',
    '',
    144,
    16
  ),(
    null,
    'img/anli/4/anli4-33.jpg',
    '',
    '',
    144,
    16
  ),
  -- 次卧
  (
    null,
    'img/anli/4/anli4-34.jpg',
    '工作区兼次卧的空间。背景处留白设计，一盏复古小灯就可以很好的进行装饰。',
    '',
    145,
    16
  ),(
    null,
    'img/anli/4/anli4-35.jpg',
    '工作区采用了一个非常大的长条办工作，满足两个人或者一人多台电脑的使用',
    '',
    145,
    16
  ),(
    null,
    'img/anli/4/anli4-36.jpg',
    '窗台位置，同样采用了榆木板的方式，整体颜色质感相互统一协调。百叶窗的使用，增加了整体空间的质感。',
    '',
    145,
    16
  ),(
    null,
    'img/anli/4/anli4-37.jpg',
    '床头一角。',
    '',
    145,
    16
  ),(
    null,
    'img/anli/4/anli4-38.jpg',
    '',
    '',
    145,
    16
  ),(
    null,
    'img/anli/4/anli4-39.jpg',
    '工作区一角，灰色的艺术漆墙面，将空间变得很安静。',
    '',
    145,
    16
  ),(
    null,
    'img/anli/4/anli4-40.jpg',
    '门的选择上采用了黑色边框的方式，增加空间线条感的呼应。',
    '',
    145,
    16
  ),
  -- 卫生间
  (
    null,
    'img/anli/4/anli4-41.jpg',
    '手工墨绿色小砖搭配白色瓷缝，让整体的空间质感有了提升，金属元素的镜子和水龙头也让空间显得很精致。',
    '',
    146,
    16
  ),(
    null,
    'img/anli/4/anli4-42.jpg',
    '',
    '',
    146,
    16
  ),(
    null,
    'img/anli/4/anli4-43.jpg',
    '受空间影响拍的不是太全，整体风格还是非常和谐统一的',
    '',
    146,
    16
  ),(
    null,
    'img/anli/4/anli4-44.jpg',
    '生间内部，采用了壁挂马桶的方式，同时增加了壁龛的设计，将原有不起眼的地方进行了设计利用，增加了卫生间的使用率和收纳率。马桶水箱上方同样有了空间，存放一些备用物品非常方便。',
    '',
    146,
    16
  ),(
    null,
    'img/anli/4/anli4-45.jpg',
    '内部一角，同时预留了高压水枪的接水口与插座，为以后增加设备做了提前的准备工作。',
    '',
    146,
    16
  ),
  -- **********案例2******
  -- 诉求
  (
    null,
    '',
    '原始格局种有很多诟病的地方，希望在设计中优化整体格局，并满足日常待客以及生活休闲的功能。',
    '',
    147,
    17
  ),
  -- 思路
  (
    null,
    '',
    '原始户型中厨房相对较小，并且卫生间足够大，设计中需要将两个空间进行重新划分以及组合，考虑屋主的收纳以及居住要求，采用定制柜以及成品家居组合方式进行整体设计',
    '',
    148,
    17
  ),
  -- 户型
  (
    null,
    'img/anli/2/anli2-2.jpg',
    '',
    '',
    149,
    17
  ),
  (
    null,
    'img/anli/2/anli2-3.jpg',
    '',
    '',
    149,
    17
  ),
  -- 客厅
  (
    null,
    'img/anli/2/anli2-4.jpg',
    '客厅和厨房中间的墙体进行了半墙设计，采用推拉窗进行空间的联系，增加客厅的采光同时，也可以保证两个空间的互动',
    '',
    150,
    17
  ),(
    null,
    'img/anli/2/anli2-5.jpg',
    '原始客厅属于开间的设计，在客户需求中，希望将客厅以及卧室进行分割，客厅采用沙发床进行设计，满足客厅偶尔待客休息的功能，因此在客厅与卧室中间采用了四联动推拉门的设计，进行空间的划分',
    '',
    150,
    17
  ),(
    null,
    'img/anli/2/anli2-6.jpg',
    '厨房采用了玻璃隔断和玻璃门的设计，将厨房的光最大可能的引进客厅，在沙发上部分采用磁吸轨道设计，增加只能整体的氛围感',
    '',
    150,
    17
  ),(
    null,
    'img/anli/2/anli2-7.jpg',
    '隔断封闭后的一个状态',
    '',
    150,
    17
  ),(
    null,
    'img/anli/2/anli2-8.jpg',
    '客厅采用定制柜的设计方式，将门厅柜与客厅电视柜进行整体化设计，满足收纳的同时也可以保证整体造型以及材质的统一。',
    '',
    150,
    17
  ),
  -- 厨房
  (
    null,
    'img/anli/2/anli2-9.jpg',
    '配色中整体厨房采用白色柜子进行设计，在上墙的处理中采用浅灰色墙砖的方式拉开与白色柜子颜色的差距，增加空间感。利用深灰色地砖的方式进行地面颜色处理，增加空间的立体感',
    '',
    151,
    17
  ),(
    null,
    'img/anli/2/anli2-10.jpg',
    '从厨房一侧可以看到客厅区域，方便两个空间人员的互动。增加生活的趣味性，同时也增加了客厅的采光',
    '',
    151,
    17
  ),(
    null,
    'img/anli/2/anli2-11.jpg',
    '从客厅看向厨房的角度（两个空间的联动性）',
    '',
    151,
    17
  ),
  -- 卧室
  (
    null,
    'img/anli/2/anli2-12.jpg',
    '在收纳的设计中，利用墙体的优势将门厅、客厅、卧室的收纳、颜色、材质进行统一协调。',
    '',
    152,
    17
  ),(
    null,
    'img/anli/2/anli2-13.jpg',
    '客厅与卧室空间的隔断处理，进行两个空间的区分。',
    '',
    152,
    17
  ),(
    null,
    'img/anli/2/anli2-14.jpg',
    '卧室空间利用定制柜进行床头的设计，增加空间收纳以及利用，柜子顶部利用突出柜体的空间进行线性灯设计，增加空间氛围感。（实际使用中，屋主反馈，线性灯利用率最高）',
    '',
    152,
    17
  ),(
    null,
    'img/anli/2/anli2-15.jpg',
    '卧室和阳台的整体空间',
    '',
    152,
    17
  ),
  -- 卫生间
  (
    null,
    'img/anli/2/anli2-16.jpg',
    '卫生间更改了原有布局，进行了空间的重新划分，将洗衣机与洗手台进行了一体化定制，采用智能镜进行面光的补充。',
    '',
    153,
    17
  ),(
    null,
    'img/anli/2/anli2-17.jpg',
    '',
    '',
    153,
    17
  ),(
    null,
    'img/anli/2/anli2-18.jpg',
    '洗手台区域正面',
    '',
    153,
    17
  ),(
    null,
    'img/anli/2/anli2-19.jpg',
    '卫生间淋浴区与马桶区',
    '',
    153,
    17
  ),
  -- 阳台
  (
    null,
    'img/anli/2/anli2-20.jpg',
    '阳台空间的设计，利用凸出去的阳台空间进行吧台的设计，满足日常休闲以及办公的需求',
    '',
    154,
    17
  ),(
    null,
    'img/anli/2/anli2-21.jpg',
    '阳台采用定制柜的方式进行设计，补充卧室衣柜的不足，同时柜子底部采用镂空方式放置扫地机器人。',
    '',
    154,
    17
  ),(
    null,
    'img/anli/2/anli2-22.jpg',
    '效果图',
    '',
    154,
    17
  ),(
    null,
    'img/anli/2/anli2-23.jpg',
    '效果图',
    '',
    154,
    17
  ),(
    null,
    'img/anli/2/anli2-24.jpg',
    '屋主的小喵咪',
    '',
    154,
    17
  ),
  -- *********案例3****
  -- 诉求
  (
    null,
    '',
    '房屋会准备长期居住，并且近几年会成家，需要一定的收纳空间，并且老人也会偶尔过来居住，整体要求空间要明亮并且适合长期居住',
    '',
    155,
    18
  ),
  -- 思路
  (
    null,
    '',
    '根据屋主需求，在进门位置进行了门厅柜的设计，并且将冰箱隐藏在了门厅位置，靠近餐厅以及客厅厨房，方便三个空间同时使用冰箱；餐厅以及客厅位置采用了定制柜的方式进行设计，并且将电视背景墙以及餐边柜进行整体定制，保证了材质颜色的统一，卫生间进行干湿分离设计，同时我是进行定制柜的设计方式，最大化利用空间，保证整体收纳以及功能性使用。
',
    '',
    156,
    18
  ),
  -- 户型
  (
    null,
    'img/anli/3/anli3-2.jpg',
    '',
    '',
    157,
    18
  ),
  (
    null,
    'img/anli/3/anli3-3.jpg',
    '',
    '',
    157,
    18
  ),
  -- 玄关
  (
    null,
    'img/anli/3/anli3-4.jpg',
    '门厅位置采用了定制柜的设计方式进行设计，并且采用了双色进行分区以及颜色的搭配，因为异型墙体的设计，因此在门厅卫视可以有一个比较薄的位置进行门厅柜的设计，从视觉上既可以拥有薄柜子的设计，让空间更加通透，同时进行门厅的装饰。
',
    '',
    158,
    18
  ),
  (
    null,
    'img/anli/3/anli3-5.jpg',
    '冰箱内嵌在门厅柜位置，既可以方便冰箱满足不同空间的时使用，也可以减少门厅空间过大带来的浪费。同时在进门位置并不会发现冰箱的突兀，在空间上满足使用。
',
    '',
    158,
    18
  ),
  -- 客厅
  (
    null,
    'img/anli/3/anli3-6.jpg',
    '客厅电视背景墙采用了整体定制的方式，在底部采用了口空的设计方式（方便后期收纳盒以及成品物品的拿取摆放）利用抽屉，进行小型物品的收纳以及物品分区。
',
    '',
    159,
    18
  ),
  (
    null,
    'img/anli/3/anli3-7.jpg',
    '电视背景墙区域与餐厅和门厅进行了整体定制，保持了颜色以及材质的统一，在客厅颜色的配置上采用了灰色墙面进行设计(灰色墙面会让空间后撤，拉开空间感以及立体感。',
    '',
    159,
    18
  ),
  (
    null,
    'img/anli/3/anli3-8.jpg',
    '沙发区域采用了半墙的设计方式，并且在隔断的处理上采用了玻璃隔断进行设计，将厨房阳台的自然采光引进到客厅区域，增加整体的光照以及视觉的通透性，从视觉上增加空间感。',
    '',
    159,
    18
  ),
  (
    null,
    'img/anli/3/anli3-9.jpg',
    '茶几采用了玻璃材质进行设计和沙发背后的半墙玻璃材质进行了呼应，金属材质的边缘会让空间有一定的精致感。
',
    '',
    159,
    18
  ),
  (
    null,
    'img/anli/3/anli3-10.jpg',
    '在沙发半墙位置采用了大理石作为台面的同时进行半墙的收口处理，同时隔断靠厨房一侧进行安装，窗台位置作为台面可以进行装饰品以及背景墙的处理应用，同时在沙发背景墙采用了轨道灯进行辅助光源的设计，增加整体的氛围感以及温馨感。',
    '',
    159,
    18
  ),
  (
    null,
    'img/anli/3/anli3-11.jpg',
    '沙发采用了沙发床进行设计，增加，方便客人以及家庭成员的偶尔居住场所。',
    '',
    159,
    18
  ),
  -- 厨房
  (
    null,
    'img/anli/3/anli3-12.jpg',
    '厨房采用了深灰色地柜进行设计，采用了白色吊柜以及浅色墙砖进行搭配，深色的地柜会让空间立体感更加丰富。
',
    '',
    160,
    18
  ),
  (
    null,
    'img/anli/3/anli3-13.jpg',
    '采用了部分吊柜开放格进行搭配丰富空间，同时墙体边缘的开放格和门厅相对，开放格可以进行多种干果或者小件物品的储藏。',
    '',
    160,
    18
  ),
  -- 卧室
  (
    null,
    'img/anli/3/anli3-14.jpg',
    '卧室背景墙采用了深色墙漆的设计方式，利用壁灯以及装饰画进行搭配利用，深色墙面搭配浅色的四件套，以及胡桃木的床品，空间感会有明显对比',
    '',
    161,
    18
  ),(
    null,
    'img/anli/3/anli3-15.jpg',
    '床头一角',
    '',
    161,
    18
  ),(
    null,
    'img/anli/3/anli3-16.jpg',
    '壁灯方便夜晚看书，并且在辅助光源上有很大额效果。',
    '',
    161,
    18
  ),
  -- 卫生间
  (
    null,
    'img/anli/3/anli3-17.jpg',
    '卫生间干区采用局部贴砖的设计方式，墙的边缘采用了收边条进行收口，利用顶部的光源以及智能镜作为光源的设计。',
    '',
    162,
    18
  ),(
    null,
    'img/anli/3/anli3-18.jpg',
    '卫生间湿区，在马桶后方以及淋浴区采用了壁龛的方式进行设计，增加整体储物以及淋浴区物品的摆放。',
    '',
    162,
    18
  ),
  -- 餐厅
  (
    null,
    'img/anli/3/anli3-19.jpg',
    '餐厅位置利用定制柜进行了餐边柜的设计，并且定制了抽屉方便一些就餐器具的储放和随时拿取并且采用了一些开放区，方便小电器应用缓解厨房电器的压力',
    '',
    163,
    18
  ),(
    null,
    'img/anli/3/anli3-20.jpg',
    '顶部采用了吊灯进行光照的设计，增加就餐的氛围。',
    '',
    163,
    18
  ),(
    null,
    'img/anli/3/anli3-21.jpg',
    '餐厅门厅一侧：门厅增加换鞋区，方便平时鞋子的存储以及生活用品的摆放',
    '',
    163,
    18
  ),
  -- 阳台
  (
    null,
    'img/anli/3/anli3-22.jpg',
    '阳台采用了花砖进行地面材质的铺贴，并且利用装饰品进行空间的点缀。',
    '',
    164,
    18
  ),
  -- ******案例4******
  -- 诉求
  (
    null,
    '',
    '屋主喜欢片工业风的设计，房屋属于年代久远的小区（老破小），整体格局在原始结构的中并不是很理想，因此在整体设计中，如何在少动结构的情况下进行整体的改造属于重点。',
    '',
    165,
    19
  ),
  -- --思路
  (
    null,
    '',
    '因为屋主喜欢片工业风的设计，因此在屋内的很多管道的处理上变得简单起来（房屋属于一层，屋顶管道偏多），剩下的就是如何让空间变得协调统一，并且增加空间的收纳，方便屋主使用。',
    '',
    166,
    19
  ),
  -- 户型
  (
    null,
    'img/anli/4/anli4-1.jpg',
    '',
    '',
    167,
    19
  ),(
    null,
    'img/anli/4/anli4-2.jpg',
    '',
    '',
    167,
    19
  ),
  --   -- 玄关
  (
    null,
    'img/anli/4/anli4-3.jpg',
    '玄关位置，进门左手边进行了留白处理，采用成品家居的方式，增加门厅的使用率：电表箱位置的装饰画（还没挂，竖在了下边）、成品的一架，增加了门厅应季物品的收纳摆放，成品的全身镜一方面增加通透性，也有非常大的实用性。',
    '',
    168,
    19
  ),(
    null,
    'img/anli/4/anli4-4.jpg',
    '花瓶下方是门厅的鞋柜，采用成品方式可以极大的增加空间的灵活性。冰箱贴的应用也可以方便随手记录一些需要待办的事宜。既可以增加空间的灵动性也具备实用性。',
    '',
    168,
    19
  ),(
    null,
    'img/anli/4/anli4-5.jpg',
    '电表箱位置的装饰画可以很好的将电表箱位置进行隐藏。',
    '',
    168,
    19
  ),
  -- 客厅
  (
    null,
    'img/anli/4/anli4-6.jpg',
    '在将厨房墙体拆除一部分后，进门后的客餐厅变得很宽敞，既减少了墙体遮挡视线的问题，同时也增加了整体的就餐区，就餐区采用了定制岛台的设计方式——既可以增加桌面下方的储物，也可以最大化的利用空间，岛台下方有储物空间，弥补客餐厅厨房的收纳空间。',
    '',
    169,
    19
  ),(
    null,
    'img/anli/4/anli4-7.jpg',
    '从这个角度可以看到客餐厅还有厨房的全貌。',
    '',
    169,
    19
  ),(
    null,
    'img/anli/4/anli4-8.jpg',
    '客厅一处边柜位置：下方采用成品边柜的方式，增加物品的收纳以及作为餐边柜使用，柜子顶部可以进行装饰品的摆放使用。装饰品摆放小秘诀——高矮胖瘦都要有。 墙面采用了灰色艺术漆，既可以增加质感，也可以提升空间的品质感。',
    '',
    169,
    19
  ),(
    null,
    'img/anli/4/anli4-9.jpg',
    '靠窗的位置同样采用了成品柜的方式，增加空间的收纳率，同时在窗台下方增加了插座的位置，厨房多余的小电器都可以在边柜位置摆放使用。',
    '',
    169,
    19
  ),(
    null,
    'img/anli/4/anli4-10.jpg',
    '插座提前预留好，后期才会方便使用。',
    '',
    169,
    19
  ),(
    null,
    'img/anli/4/anli4-11.jpg',
    '小景，既有工业风的质感又增加了一些东方的禅意',
    '',
    169,
    19
  ),(
    null,
    'img/anli/4/anli4-12.jpg',
    '个人最喜欢的一处小景：很安静',
    '',
    169,
    19
  ),(
    null,
    'img/anli/4/anli4-13.jpg',
    '家中一些鲜花的使用，会让空间有很多的生机感。',
    '',
    169,
    19
  ),
  -- 厨房
  (
    null,
    'img/anli/4/anli4-14.jpg',
    '厨房位置采用了木色的地柜，白色的吊柜，同时地柜与吊柜中间采用了灰色的墙砖进行搭配。这样可以保证空间既有进深感的同时，颜色的搭配上也会更加温馨。',
    '',
    170,
    19
  ),(
    null,
    'img/anli/4/anli4-15.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    170,
    19
  ),(
    null,
    'img/anli/4/anli4-16.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    170,
    19
  ),(
    null,
    'img/anli/4/anli4-17.jpg',
    '定制岛台作为餐桌使用既可以和厨房相互呼应。大理石台面也更加的方便打理。',
    '',
    170,
    19
  ),(
    null,
    'img/anli/4/anli4-18.jpg',
    '',
    '',
    170,
    19
  ),(
    null,
    'img/anli/4/anli4-19.jpg',
    '黑白灰三个元素：电器深色（压空间），吊柜白色（轻盈感）灰色墙面（突出空间感）',
    '',
    170,
    19
  ),(
    null,
    'img/anli/4/anli4-20.jpg',
    '鞋柜位置也看到了一部分，冰箱上的一些冰箱贴，方便放一些小菜单等物品。
',
    '',
    170,
    19
  ),(
    null,
    'img/anli/4/anli4-21.jpg',
    '灵动的小黄人。',
    '',
    170,
    19
  ),
  -- 主卧
  (
    null,
    'img/anli/4/anli4-22.jpg',
    '卧室整体空间采用了和客餐厅相同的艺术漆，只是在涂刷的空间上有所区分，因为卧室进深比较大，因此相应小面积的灰色，会让空间后移增加空间的进深感。',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-23.jpg',
    '床头的背景上采用了留白的方式。浅咖色的床头，与白色的墙体形成对比，增加空间的灵动性。在留白的过程中，一些带有禅意的灯具，会让空间变得很安静。',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-24.jpg',
    '休息区的一角：墨绿色的休闲椅，还有绿植，水泥色的做旧水磨石，生活好不惬意。',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-25.jpg',
    '床头背景的一角。',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-26.jpg',
    '衣柜采用了成品的衣柜方式，增加收纳。',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-27.jpg',
    '床尾采用了老榆木的柜子，既可以和整体风格呼应起来，同时还可以增加空间的收纳，墙面采用了留白的方式，为投影的空间做了准备。',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-28.jpg',
    '靠近阳台位置，进行了垫高处理，增加了一个飘窗空间（原始阳台是一个下陷1米多的坑）',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-29.jpg',
    '在这个位置进行休闲，生活会非常的惬意。绿植的出现，也为空间增加生机感。',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-30.jpg',
    '',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-31.jpg',
    '',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-32.jpg',
    '',
    '',
    171,
    19
  ),(
    null,
    'img/anli/4/anli4-33.jpg',
    '',
    '',
    171,
    19
  ),
  -- 次卧
  (
    null,
    'img/anli/4/anli4-34.jpg',
    '工作区兼次卧的空间。背景处留白设计，一盏复古小灯就可以很好的进行装饰。',
    '',
    172,
    19
  ),(
    null,
    'img/anli/4/anli4-35.jpg',
    '工作区采用了一个非常大的长条办工作，满足两个人或者一人多台电脑的使用',
    '',
    172,
    19
  ),(
    null,
    'img/anli/4/anli4-36.jpg',
    '窗台位置，同样采用了榆木板的方式，整体颜色质感相互统一协调。百叶窗的使用，增加了整体空间的质感。',
    '',
    172,
    19
  ),(
    null,
    'img/anli/4/anli4-37.jpg',
    '床头一角。',
    '',
    172,
    19
  ),(
    null,
    'img/anli/4/anli4-38.jpg',
    '',
    '',
    172,
    19
  ),(
    null,
    'img/anli/4/anli4-39.jpg',
    '工作区一角，灰色的艺术漆墙面，将空间变得很安静。',
    '',
    172,
    19
  ),(
    null,
    'img/anli/4/anli4-40.jpg',
    '门的选择上采用了黑色边框的方式，增加空间线条感的呼应。',
    '',
    172,
    19
  ),
  -- 卫生间
  (
    null,
    'img/anli/4/anli4-41.jpg',
    '手工墨绿色小砖搭配白色瓷缝，让整体的空间质感有了提升，金属元素的镜子和水龙头也让空间显得很精致。',
    '',
    173,
    19
  ),(
    null,
    'img/anli/4/anli4-42.jpg',
    '',
    '',
    173,
    19
  ),(
    null,
    'img/anli/4/anli4-43.jpg',
    '受空间影响拍的不是太全，整体风格还是非常和谐统一的',
    '',
    173,
    19
  ),(
    null,
    'img/anli/4/anli4-44.jpg',
    '生间内部，采用了壁挂马桶的方式，同时增加了壁龛的设计，将原有不起眼的地方进行了设计利用，增加了卫生间的使用率和收纳率。马桶水箱上方同样有了空间，存放一些备用物品非常方便。',
    '',
    173,
    19
  ),(
    null,
    'img/anli/4/anli4-45.jpg',
    '内部一角，同时预留了高压水枪的接水口与插座，为以后增加设备做了提前的准备工作。',
    '',
    173,
    19
  ),
  -- **********案例2******
  -- 诉求
  (
    null,
    '',
    '原始格局种有很多诟病的地方，希望在设计中优化整体格局，并满足日常待客以及生活休闲的功能。',
    '',
    174,
    20
  ),
  -- 思路
  (
    null,
    '',
    '原始户型中厨房相对较小，并且卫生间足够大，设计中需要将两个空间进行重新划分以及组合，考虑屋主的收纳以及居住要求，采用定制柜以及成品家居组合方式进行整体设计',
    '',
    175,
    20
  ),
  -- 户型
  (
    null,
    'img/anli/2/anli2-2.jpg',
    '',
    '',
    176,
    20
  ),
  (
    null,
    'img/anli/2/anli2-3.jpg',
    '',
    '',
    176,
    20
  ),
  -- 客厅
  (
    null,
    'img/anli/2/anli2-4.jpg',
    '客厅和厨房中间的墙体进行了半墙设计，采用推拉窗进行空间的联系，增加客厅的采光同时，也可以保证两个空间的互动',
    '',
    177,
    20
  ),(
    null,
    'img/anli/2/anli2-5.jpg',
    '原始客厅属于开间的设计，在客户需求中，希望将客厅以及卧室进行分割，客厅采用沙发床进行设计，满足客厅偶尔待客休息的功能，因此在客厅与卧室中间采用了四联动推拉门的设计，进行空间的划分',
    '',
    177,
    20
  ),(
    null,
    'img/anli/2/anli2-6.jpg',
    '厨房采用了玻璃隔断和玻璃门的设计，将厨房的光最大可能的引进客厅，在沙发上部分采用磁吸轨道设计，增加只能整体的氛围感',
    '',
    177,
    20
  ),(
    null,
    'img/anli/2/anli2-7.jpg',
    '隔断封闭后的一个状态',
    '',
    177,
    20
  ),(
    null,
    'img/anli/2/anli2-8.jpg',
    '客厅采用定制柜的设计方式，将门厅柜与客厅电视柜进行整体化设计，满足收纳的同时也可以保证整体造型以及材质的统一。',
    '',
    177,
    20
  ),
  -- 厨房
  (
    null,
    'img/anli/2/anli2-9.jpg',
    '配色中整体厨房采用白色柜子进行设计，在上墙的处理中采用浅灰色墙砖的方式拉开与白色柜子颜色的差距，增加空间感。利用深灰色地砖的方式进行地面颜色处理，增加空间的立体感',
    '',
    178,
    20
  ),(
    null,
    'img/anli/2/anli2-10.jpg',
    '从厨房一侧可以看到客厅区域，方便两个空间人员的互动。增加生活的趣味性，同时也增加了客厅的采光',
    '',
    178,
    20
  ),(
    null,
    'img/anli/2/anli2-11.jpg',
    '从客厅看向厨房的角度（两个空间的联动性）',
    '',
    178,
    20
  ),
  -- 卧室
  (
    null,
    'img/anli/2/anli2-12.jpg',
    '在收纳的设计中，利用墙体的优势将门厅、客厅、卧室的收纳、颜色、材质进行统一协调。',
    '',
    179,
    20
  ),(
    null,
    'img/anli/2/anli2-13.jpg',
    '客厅与卧室空间的隔断处理，进行两个空间的区分。',
    '',
    179,
    20
  ),(
    null,
    'img/anli/2/anli2-14.jpg',
    '卧室空间利用定制柜进行床头的设计，增加空间收纳以及利用，柜子顶部利用突出柜体的空间进行线性灯设计，增加空间氛围感。（实际使用中，屋主反馈，线性灯利用率最高）',
    '',
    179,
    20
  ),(
    null,
    'img/anli/2/anli2-15.jpg',
    '卧室和阳台的整体空间',
    '',
    179,
    20
  ),
  -- 卫生间
  (
    null,
    'img/anli/2/anli2-16.jpg',
    '卫生间更改了原有布局，进行了空间的重新划分，将洗衣机与洗手台进行了一体化定制，采用智能镜进行面光的补充。',
    '',
    120,
    20
  ),(
    null,
    'img/anli/2/anli2-17.jpg',
    '',
    '',
    120,
    20
  ),(
    null,
    'img/anli/2/anli2-18.jpg',
    '洗手台区域正面',
    '',
    120,
    20
  ),(
    null,
    'img/anli/2/anli2-19.jpg',
    '卫生间淋浴区与马桶区',
    '',
    120,
    20
  ),
  -- 阳台
  (
    null,
    'img/anli/2/anli2-20.jpg',
    '阳台空间的设计，利用凸出去的阳台空间进行吧台的设计，满足日常休闲以及办公的需求',
    '',
    121,
    20
  ),(
    null,
    'img/anli/2/anli2-21.jpg',
    '阳台采用定制柜的方式进行设计，补充卧室衣柜的不足，同时柜子底部采用镂空方式放置扫地机器人。',
    '',
    121,
    20
  ),(
    null,
    'img/anli/2/anli2-22.jpg',
    '效果图',
    '',
    121,
    20
  ),(
    null,
    'img/anli/2/anli2-23.jpg',
    '效果图',
    '',
    121,
    20
  ),(
    null,
    'img/anli/2/anli2-24.jpg',
    '屋主的小喵咪',
    '',
    121,
    20
  );
-- ************************************标签表********************************
  CREATE TABLE tag(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    lname VARCHAR(6) NOT NULL,
    tid INT,
    wid INT,
    FOREIGN KEY(tid) REFERENCES combo(tid),
    FOREIGN KEY(wid) REFERENCES cases(wid)
  );
INSERT INTO
  tag
values
  (1, '功能随性加载', 1, null),
  (null, '风格多变', 1, null),
  (null, '温润', 2, null),
  (null, '尊重', 2, null),
  (null, '适合', 2, null),
  (null, '好佳', 2, null),
  (null, '高颜值', 3, null),
  (null, '大师色', 3, null),
  (null, '轻奢级配置', 3, null),
  (null, '轻奢', null, 1),
  (null, '三分离', null, 1),
  (null, '榻榻米', null, 1),
  (null, '衣帽间', null, 1),
  (null, '玄关', null, 2),
  (null, '客餐厅', null, 2),
  (null, '小户型改造', null, 2),
  (null, '北欧', null, 2),
  (null, '北欧', null, 3),
  (null, '客餐厅一体', null, 3),
  (null, '干湿分离', null, 3),
  (null, '阳台', null, 3),
  (null, '工业风', null, 4),
  (null, '户型改造', null, 4),
  (null, '小户型收纳', null, 4),
  (null, '干湿分离', null, 4),
  (null, '高级灰', null, 4),
   (null, '新中式', null, 5),
  (null, '原木色', null, 5),
  (null, '平层', null, 5),
  (null, '美式', null, 6),
  (null, '儿童房', null, 6),
  (null, '榻榻米', null, 6),
  (null, '餐厅', null, 6),
  (null, '工业风', null, 7),
  (null, '客餐厅一体', null, 7),
  (null, '吧台', null, 7),
  (null, '衣帽间', null, 7),
  (null, '原木色', null, 7),
  (null, '现代简约', null, 8),
  (null, '开放式厨房', null, 8),
  (null, '影音室', null, 8),
  (null, '衣帽间', null, 8),
  (null, '高级灰', null, 8),
  (null, '北欧', null, 9),
  (null, '卧室', null, 9),
  (null, '阳台', null, 9),
  (null, '洗衣房', null, 9),
  (null, '现代简约', null, 10),
  (null, '平层', null, 10),
  (null, '夫妻', null, 10),
  (null, '户型改造', null, 10),
  (null, '轻奢', null, 11),
  (null, '客餐厅一体', null, 11),
  (null, '开放式厨房', null, 11),
  (null, '岛台', null, 11),
  (null, '日式', null, 12),
  (null, '客餐厅一体', null, 12),
  (null, '平层', null, 12),
  (null, '卧室', null, 12),
  (null, '新中式', null, 13),
  (null, 'loft', null, 13),
  (null, '原木色', null, 13),
  (null, '吧台', null, 13),
  (null, '现代简约', null, 14),
  (null, '杂物间', null, 14),
  (null, '玄关', null, 14),
  (null, '书房', null, 14),
  (null, '北欧', null, 15),
  (null, '客餐厅一体', null, 15),
  (null, '榻榻米', null, 15),
  (null, '卧室', null, 15),
  (null, '现代简约', null, 16),
  (null, '阳台', null, 16),
  (null, '衣帽间', null, 16),
  (null, '干湿分离', null, 16),
  (null, '复古', null, 17),
  (null, '客餐厅一体', null, 17),
  (null, '吧台', null, 17),
  (null, '开放式厨房', null, 17),
  (null, '榻榻米', null, 17),
  (null, '新中式', null, 18),
  (null, '洗衣区', null, 18),
  (null, '书房', null, 18),
  (null, '衣帽间', null, 18),
  (null, '复古', null, 19),
  (null, '户型改造', null, 19),
  (null, '开放式厨房', null, 19),
  (null, '客餐厅一体', null, 19),
  (null, '新中式', null, 20),
  (null, '儿童房', null, 20),
  (null, '阳台', null, 20),
  (null, '黑白灰', null, 20),
  (null, '吧台', null, 20);