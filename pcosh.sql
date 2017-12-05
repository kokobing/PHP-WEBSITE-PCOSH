-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 12 月 05 日 08:11
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `pcosh`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 1);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品目录', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, '考核统计', '', '/admin/hr/hr_exam.php', 4, 2, 18, 1);
INSERT INTO `backmenu` VALUES (19, 1, '招聘管理', '', '/admin/hr/hr_job.php', 4, 2, 19, 1);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- 导出表中的数据 `exam`
-- 

INSERT INTO `exam` VALUES (15, 1, 'dd', 'D', '2010-10-01');
INSERT INTO `exam` VALUES (16, 1, 'ww', 'D', '2010-09-01');
INSERT INTO `exam` VALUES (17, 1, 'dr', 'D', '2010-12-01');
INSERT INTO `exam` VALUES (18, 1, 'rr', 'S', '2010-12-01');
INSERT INTO `exam` VALUES (19, 1, 'tt', 'T', '2010-10-01');
INSERT INTO `exam` VALUES (20, 1, '张荣', 'F', '2010-08-01');
INSERT INTO `exam` VALUES (21, 1, '收发', 'D', '2010-06-01');
INSERT INTO `exam` VALUES (22, 1, '张荣', 'F', '2010-12-01');
INSERT INTO `exam` VALUES (23, 1, '吕品', 'U', '2010-05-01');
INSERT INTO `exam` VALUES (24, 1, '囸打开', 'G', '2010-04-01');
INSERT INTO `exam` VALUES (25, 1, 'ss', 'S', '2010-12-01');

-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2012-04-12 11:33:10', '101.85.43.164');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (1, 1, 'test', '', 'test', '', 1);
INSERT INTO `layout` VALUES (8, 1, 'test', '', 'test', '', 1);
INSERT INTO `layout` VALUES (9, 1, 'test', '', 'test', '', 1);
INSERT INTO `layout` VALUES (10, 1, 'test', '', 'test', '', 1);
INSERT INTO `layout` VALUES (11, 1, 'test', '', 'test', '', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (25, 4, 1, '', '', '', '1325665442.jpg', '', 1, 'JPG', '2012-01-04 16:24:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (6, 0, 1, '', '', '', '', '', 1, '', '2011-04-15 22:40:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (21, 3, 1, 'EATON工业过滤', 'Checker是一款功能强大的视觉传感器，内置光源和镜头，检测距离可调，通过辨别外观检测部件，提供无可比拟的检测性能和可靠性。', '', '1325655066.jpg', '', 1, 'JPG', '2012-01-04 13:30:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (22, 3, 1, 'TST快速接头', '激光位移传感器是采用激光三角原理或回波分析原理进行非接触位置、位移测量的精密传感器。', '', '1325655107.jpg', '', 1, 'JPG', '2012-01-04 13:31:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (23, 3, 1, 'Borries针式打标系统', 'DSP激光安全栅专为折弯机提供安全防护，为操作者的安全和机器的生产效率提供有效的解决方案。拥有前、中、后区域防护。', '', '1325655135.jpg', '', 1, 'JPG', '2012-01-04 13:32:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (24, 3, 1, 'Sintec Optronics激光打标系统', 'FT20WT体积小巧，设置简单，容易安装。白色光源，可靠检测色彩标志，最微小的差异也不放过，还具体高度的抗震特性。', '', '1325655155.jpg', '', 1, 'JPG', '2012-01-04 13:32:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (26, 4, 1, '', '', '', '1325665448.jpg', '', 1, 'JPG', '2012-01-04 16:24:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (27, 4, 1, '', '', '', '1325665453.jpg', '', 1, 'JPG', '2012-01-04 16:24:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (28, 4, 1, '', '', '', '1325665458.jpg', '', 1, 'JPG', '2012-01-04 16:24:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (30, 7, 1, 'EATON', 'Checker是一款功能强大的视觉传感器，内置光源和镜头，检测距离可调，通过辨别外观检测部件，提供无可比拟的检测性能和可靠性.', '', '1325687213.jpg', '', 1, 'JPG', '2012-01-04 22:26:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (31, 7, 1, 'TST', '激光位移传感器是采用激光三角原理或回波分析原理进行非接触位置、位移测量的精密传感器.', '', '1325687239.jpg', '', 1, 'JPG', '2012-01-04 22:27:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (32, 7, 1, 'Borries', 'DSP激光安全栅专为折弯机提供安全防护，为操作者的安全和机器的生产效率提供有效的解决方案。拥有前、中、后区域防护.', '', '1325687261.jpg', '', 1, 'JPG', '2012-01-04 22:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (33, 7, 1, 'Sintec Optronics', 'FT20WT体积小巧，设置简单，容易安装。白色光源，可靠检测色彩标志，最微小的差异也不放过，还具体高度的抗震特性.', '', '1325687298.jpg', '', 1, 'JPG', '2012-01-04 22:28:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 1, '新闻动态', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (3, 1, '公司新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (4, 1, '产品新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (5, 1, '行业新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (19, 1, 'Company News', '', 1, 18, 2, 19);
INSERT INTO `newsdir` VALUES (18, 1, 'News', '', 1, 0, 1, 18);
INSERT INTO `newsdir` VALUES (15, 1, '最新公告', '', 1, 1, 2, 15);
INSERT INTO `newsdir` VALUES (16, 1, '加入我们', '', 1, 1, 2, 16);
INSERT INTO `newsdir` VALUES (17, 1, '技术支持', '', 1, 1, 2, 17);
INSERT INTO `newsdir` VALUES (20, 1, 'Product News', '', 1, 18, 2, 20);
INSERT INTO `newsdir` VALUES (21, 1, 'Industry News', '', 1, 18, 2, 21);
INSERT INTO `newsdir` VALUES (22, 1, 'Announcements', '', 1, 18, 2, 22);
INSERT INTO `newsdir` VALUES (23, 1, 'Join Us', '', 1, 18, 2, 23);
INSERT INTO `newsdir` VALUES (24, 1, 'Technical Support', '', 1, 18, 2, 24);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (73, 19, 0, 1, '棉价不是纺织服装企业唯一判断市场的方法 ', '棉价不是纺织服装企业唯一判断市场的方法 ', '<p>　　　eeee春江水暖鸭先知，这是大家熟知的道理。纺织企业在判断市场走向时一般都是把棉花价格作为依据，但从目前的情况看，仅凭这一依据来判断是不够的。今年2月的棉花期货市场价格曾达到每吨34000多元，到本周降到28000多元。现在市场正处于一个渐变的过程，此前棉花大涨是受棉花供求缺口的影响，而现在市场正在悄悄发生变化，棉花价格的回落说明棉纺织企业的生产正处在调整时期。可能有些人认为棉花价格的下跌是件好事，殊不知，企业在高价位时购买的棉花还没销售出去，亏损的买卖还得硬着头皮做下去。</p>\r\n<p>　　影响纺织行业的因素还有很多。例如纺机企业，其所需的原材料价格近来也在逐步回落，从本周期货市场上看，钢材价格上涨的趋势受到遏制，铜的价格与去年年底相比每吨下降了近7000元，橡胶的价格也呈回落趋势。最近人民币的持续加息，加快了资金的回笼，市场上的货币流动性开始收紧。此外，纺织市场上原有的一些不确定因素也频频释出，给纺织企业判断未来市场增加了困难。受上述因素影响，纺机市场也一改年初时的红火局面，一些原来坐在纺机厂门口急着拿货的客户也不见了踪影。河北一家纺机企业负责人说，今年的买卖特别不好做，主要原因是市场波动性大。去年棉花、钢材等价格一路上涨，今年从2月底开始有了较大的起伏，这种剧烈的市场波动不仅在企业心理上造成极大的震撼，而且还给现在的生产带来某种不确定的感觉，市场观望的态度也由此产生。</p>\r\n<p>　　当前，资金紧缺是很多企业面临的共同问题。然而，我们有些同行却乐观地认为，纺织行业一直站在市场经济的最前沿，绝大多数企业的资金基本靠自己解决或者民间借贷，与国家商业银行基本不发生关系，国家的紧缩政策不会对纺织行业造成很大影响。此观点大错特错了。现在所有的行业都相互关联、相互交织，不可能大河没水小河流。市场顺畅大家皆大欢喜；如果资金一天比一天紧张，依照历史经验，毁约的就会增多，麻烦也会增多。因此，我们纺织企业不能只从个别现象看问题，我们必须从货币、原材料、贸易等不同方面、不同角度来全面判断纺织行业的未来走势，这样我们的企业才能立于不败之地。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:25:31', '2012-01-05 11:58:02', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (72, 4, 0, 1, '今年美国棉花种植面积高于预估', '今年美国棉花种植面积高于预估', '<p>　　孟山都公司总裁DavidRhylander称，今年美国农户的棉花种植面积可能将高于政府预估，预计美国2011年棉花种植面积在1280-1300万英亩，</p>\r\n<p>　　因棉价上扬刺激农户的种植兴趣，且可能出现棉花的套种。</p>\r\n<p>　　生物科技种子企业--孟山都公司(MonsantoCo。)总裁David Rhylander称，&ldquo;我认为他们低估了美国2011年棉花种植面积，&rdquo;</p>\r\n<p>　　Rhylander预计美国2011年棉花种植面积在1280-1300万英亩，美国农业部(USDA)上周五公布的4月供需报告显示，美国2010/11年度棉花种植面积预估为1097万英亩，与3月份报告持平。</p>\r\n<p>　　美国2009/10年度棉花种植面积预估为915万英亩，2008/09年度实际种植面积为947万英亩。</p>\r\n<p>　　美国2011年棉花种植面积扩大的关键因素是价格。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:24:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (70, 4, 0, 1, '经济数据多次遭提前泄露 统计局发言人严厉谴责', '经济数据多次遭提前泄露 统计局发言人严厉谴责', '<p>&nbsp;&nbsp;&nbsp; 　国务院新闻办定于2011年4月15日(星期五)上午10时在国务院新闻办新闻发布厅举行新闻发布会，请国家统计局新闻发言人、国民经济综合统计司司长盛来运介绍今年一季度国民经济运行情况，并回答记者提问。</p>\r\n<p>　　彭博新闻社记者：</p>\r\n<p>　　昨天凤凰卫视就已经报道了相关数据，而且这些数据在今天的发布会上也得到了印证，同样的事情在1月份和去年6月份也出现过，这些消息在发布会之前就被泄露出去了，有没有相关的程序来调查这种提前泄露的情况，会不会在未来防止这种情况发生，谁来负责相关的调查？</p>\r\n<p>　　盛来运：</p>\r\n<p>　　国家统计局严厉谴责任何泄露还在保密期数据的行为，我们相信任何违法的行为都必将会受到法律的制裁。国家统计局也一直高度重视发布前数据的保密工作，为此制定了相关的管理制度和程序，进一步缩小了涉密数据的人员和范围。</p>\r\n<p>　　特别是近两年，国家统计局根据公平、公正、公开、透明的原则，建立和进一步规范了统计信息的发布制度，国家统计局也正在听取各方面的意见，研究进一步完善发布制度问题，改进的方向是进一步缩短数据生产到发布的时间，尽可能减少数据被泄露的风险。</p>\r\n<p>　　最后我还想提醒一点，《中华人民共和国保密法》也有规定，一切国家机关、党政团体、企事业单位和公民都有保守国家秘密的义务。</p>\r\n<p>　　同时也规定在互联网和其他公共信息网络上传播国家秘密的也应该给予相应的责任追究。我们国家互联网新闻信息服务管理规定第19条也明确规定，登载发送的新闻信息不得含有危害国家安全、泄露国家秘密的内容。所以，我们希望大家一起来遵守相关的法律和规定。谢谢大家！</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:22:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (71, 5, 0, 1, '江苏鑫缘茧丝绸集团将跨越式发展 ', '江苏鑫缘茧丝绸集团将跨越式发展 ', '<p>　　　近年来，江苏鑫缘茧丝绸集团立足海安传统蚕桑产业资源，彰显精深加工优势，实施品牌经营，推进产品精品化、织造无梭化、品种多样化，成为中国丝绸行业唯一拥有&ldquo;一个中国驰名商标、三个中国名牌、五类国家免检产品&rdquo;的跨国企业。<br />\r\n<br />\r\n　　重研发。集团利用自身技术优势，制定了国际国内先进的蚕茧烘干、制丝、丝织、服饰、床上用品、染整等方面的先进工艺路线，&ldquo;鑫缘&rdquo;牌蚕茧、桑蚕丝、真丝绸、服装及床上用品质量达到国际领先水平。拥有自主知识产权的桑蚕丝和利用新材料、新工艺生产的真丝绸产品，成为国内外客商首选产品。部分桑蚕丝科研成果达到世界先进水平，产品被法国巴黎、荷兰、韩国等地商场指定为专营产品。<br />\r\n　　强引进。集团先后引进和新上飞宇系列自动缫丝机，意大利产剑杆织机、整经机、真丝倍捻机、无捻并丝机，瑞士产精密络筒机，日发牌真丝针织圆机等国际国内一流的生产设备，借助自身拥有先进的生产工艺流程，产品质量达到国际一流，梭织绸和针织绸产品成为市场抢手货。<br />\r\n<br />\r\n　　推攻关。集团创立了国家级星火龙头企业科技创新中心，与苏州大学联合成立了&ldquo;丝绸新技术(产品)研发中心&rdquo;，承担了国家、省、市科研项目20多项。先后承担了国家&ldquo;双高一优&rdquo;工程项目、国家农业综合开发重点项目和茧丝绸风险基金项目。2004年《制丝生产在线质量监控系统软件的研发及推广》项目通过江苏省科技成果鉴定；《纳米级再生蚕丝纤维制品的研制与开发》和《多功能蚕丝被的研究与开发》列为2004年江苏省科技攻关项目。2005年《天然彩色茧丝加工技术研究及生产应用》和《以蚕桑副产品为原料的丝绸草木染加工技术研究》再次列为江苏省科技攻关项目，运用基因工程生产出天然彩色茧，开发出高品位的天然彩色丝、绸及服装，为中国桑蚕丝家庭成员的丰富多彩的发展探索出了一条新路。《制丝生产在线监控网络系统软件的研发及推广》项目被国家商务部茧丝办列为国家茧丝绸发展风险基金第六批发展性项目，《应用缫丝企业信息化管理技术辅助生产高等级蚕丝》项目被国家科技部列为&ldquo;2005年度国家级星火计划项目&rdquo;。科技和管理等方面形成国家专利30项。2010年11月鑫缘集团率先成立博士后工作站。</p>\r\n<p>&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:23:49', '2011-12-30 13:57:33', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (68, 3, 0, 1, '埃及纺织纺纱公司面临严峻材料确实', '埃及纺织纺纱公司面临严峻材料确实', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4月15日讯　埃及的纺织和纺纱公司正面临严峻的材料缺乏，这些材料是他们生产所必需的，纺织工人联合组织的主席说。</p>\r\n<p>　　在新闻发布会上，纺织工人联合组织的主席赛义德.古哈利要求政府立即采取行动，就业纺织和纺纱工业及其工人。</p>\r\n<p>　　部分私营工厂已经停产，这是因为他们不能够在这样的环境下继续生产，古哈利说。</p>\r\n<p>　　古哈利说，政府应当分配土地种植棉花，满足工厂的需求，向公司注入新的投资，改革财政和管理结构，打击倾销和走私行为，保护当地工业。</p>\r\n<p>　　观察家认为，埃及棉纺织工业经历了持续下降，这是由于政府对棉花耕种的补贴不充分。棉花以埃及最古老的作物而闻名。</p>\r\n<p>　　古哈尔强大，有必要发展棉花生产力，在过去的几年，埃及的棉花生产急剧下降，这是由于依赖进口棉花造成的。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:20:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (66, 17, 0, 1, '乌兹别克斯坦将与瑞士成立服装机械合资公司', '乌兹别克斯坦将与瑞士成立服装机械合资公司', '<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 乌兹别克斯坦轻工业公司与瑞士立达纺织机械公司拟在乌成立纺织服装机械生产合资公司――&ldquo;立达乌兹别克斯坦&rdquo;。双方所签协议被&ldquo;关于组织生产现代化纺织机械&rdquo;的总统令确认。瑞士公司将于2011至2012年对该项目投入200万美元进行纺织机械现代化改造和技术设备更新，并逐步在停产的&ldquo;乌兹别克斯坦纺织服装机械公司&rdquo;基础上组织纺织设备生产。项目将分三个阶段实施：第一阶段（2011年）将完成厂房和设施建设，并进行工艺设备安装调试；第二阶段（2012年）将投入生产制带机和梳棉机；第三阶段（2015年）将投入运行金属加工车间。</p>\r\n<p>　　根据乌总统令，2015年7月1日前，&ldquo;立达乌兹别克斯坦&rdquo;公司将被免除包括乌公路基金强制扣除的基本营业税在内的一切税费，同时还享受对乌国内不生产的设备、仪器、机械和其他材料及产品免除进口关税的优惠政策。<br />\r\n&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:19:11', '2011-12-30 13:57:56', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (67, 17, 0, 1, '台纺织产业综合研究所将在盐城成立研究院', '台纺织产业综合研究所将在盐城成立研究院', '<p>&nbsp;&nbsp;&nbsp; ４月１５日电，记者从江苏省盐城市获悉，由台湾纺织产业综合研究所提供技术支持的江苏南纬悦达纺织研究院已在该市成立，将安排台湾专家来盐城培训纺织行业的员工和人才。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 盐城是传统的纺织大市，以棉纺为主，纺织业一直是盐城重要的产业支撑，近年来份额有所减少，但仍占２０％左右。虽然规模较大，但盐城纺织业一直存在创新不够、研发不足等问题，江苏南纬悦达纺织研究院成立后，将借助台湾纺织产业综合研究所的技术支撑，迅速对纺织产业高端课题、纤维、技术、工艺、产品等方面进行研究，并向行业、产业、企业、项目延伸。研究院将安排盐城人员赴台湾接受培训教育，还将安排台湾专家来盐城培训人才和员工。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 台湾纺织产业综合研究所的前身是台湾纺织品试验中心，成立于１９５９年，是台湾地区致力于纺织科技研发、产品检测和技术服务的主要机构，汪雅康于２００８年６月接任董事长。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 汪雅康说，纺织是传统行业，但是，产品有夕阳产品，而产业是没有夕阳的，台湾的纺织产业，特别是新开发的功能性产品，上至太空、下到海洋，处处都有应用，&ldquo;（研究院）将寻求产业链条上新的合作，共同提升纺织产业的发展。&rdquo;<br />\r\n&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:19:49', '2011-12-30 13:57:47', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `newspic`
-- 

INSERT INTO `newspic` VALUES (9, 77, 1, '', '', '', '1321930838.jpg', '', 1, 'JPG', '2011-11-22 11:00:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (8, 76, 1, '', '', '', '1321842554.JPG', '', 1, 'JPG', '2011-11-21 10:29:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (15, 1, '图书馆-白蚁', '', '', '', '', '<table border="0" cellspacing="5" cellpadding="5" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td align="center"><img alt="" width="450" height="123" src="/upload/other/3329897473.gif" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;<a href="/library.php">返回</a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <h2>白蚁防治</h2>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="top" width="16%" align="left"><img alt="" width="205" height="120" src="/upload/other/3329985611.gif" /></td>\r\n                        <td valign="top" width="84%" align="left">\r\n                        <p>白蚁危害所造成的损失是惊人的，这些危害主要表现在以下几个方面：<br />\r\n                        对农作物的危害：<br />\r\n                        一般来说，白蚁对我国农作物还不是重要的害虫。但是对经济作物甘蔗来说危害还是较为严重的。<br />\r\n                        对树木的危害：<br />\r\n                        危害树木的白蚁种类很多，其主要种类有：新白 白蚁，堆砂白蚁，家白蚁，树白蚁，散白蚁，木鼻白蚁，土白蚁和大白蚁，原白蚁等。</p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <p>对房屋建筑的破坏：白蚁对房屋建筑的破坏，特别是对砖木结构、木结构建筑的破坏尤为严重。由于其隐藏在木结构内部，破坏或损坏其承重点，往往造成房屋突然倒塌，引起人们的极大关注。在我国，危害建筑的白蚁种类主要有；家白蚁，散白蚁种堆白蚁等属。其中，家白蚁属的种类是破坏建筑物最严重的白蚁种类。它的特点是扩散力强，群体大，破坏迅速，在短期内即能造成巨大损失。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (16, 1, '图书馆-跳蚤', '', '', '', '', '<table border="0" cellspacing="5" cellpadding="5" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td align="center"><img alt="" width="450" height="123" src="/upload/other/3329897473.gif" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;<a href="/library.php">返回</a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <h2>跳蚤防治</h2>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="top" width="16%" align="left"><img alt="" width="172" height="143" src="/upload/other/3329989252.gif" /></td>\r\n                        <td valign="top" width="84%" align="left">\r\n                        <p>跳蚤是小型、无翅、善跳跃的寄生性昆虫，成虫通常生活在哺乳类身上，少数在鸟类。触角粗短。<br />\r\n                        口器锐利，用于吸吮。腹部宽大，有9节。 后腿发达、粗壮。完全变态昆虫。蛹被茧所包住。<br />\r\n                        跳蚤为属于蚤目(Siphonaptera)的完全变态类昆虫。<br />\r\n                        成虫体型微小或小型，无翅，体坚硬侧扁， 外寄生于哺乳类和鸟类体上， 具刺吸式口器，雌雄均吸血；幼虫无足呈圆柱形，营自由生活， 具咀嚼 式口器，以成虫血便或有机物质为食。</p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <p>&nbsp;</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (7, 1, '公司简介', '', '', '', '', '<table border="0" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <h1>关于我们</h1>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p><strong>上海胜华卫生害虫防制有限公司</strong> 在上海市爱卫办、上海市有害生物防制协会领导下，是国内最早开始进行卫生害虫防制工作的专业公司之一</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p>我们的前身上海联合化工厂中心实验室（国内最早研制、生产拟除虫菊酯类卫生杀虫剂的国有企业）技术力量雄厚，消杀经验丰富.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width="625" height="150" alt="" src="/upload/other/3320457161.jpg" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p>早在90年代初就是上海市爱卫办除四害协会（上海市有害生物防制协会前身）的团体会员、骨干队伍。并获得除害服务资格认可。</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p>长期以来，本公司以消杀质量和服务质量为本，以信誉为本，与各类客户建立了长期友好合作关系，并与上海市爱卫办、上海市有害生物防制协会及各区爱卫办（如嘉定区爱卫办、杨浦区爱卫办、黄浦区爱卫办、虹口区爱卫办、长宁区爱卫办等）始终保持着十分密切而友好的关系。</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p>经过三十多年的发展，公司针对不同虫害的防制对象发展了不同的虫害控制体系，聘请多名上海市昆虫协会会员和上海除四害协会专家、消毒专家担任技术顾问，并拥有一批具有丰富工作经验的资深技术人员；现场操作员工全部获得初、中级以上（PCO）职业资格证书；</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p>我们公司引进德国巴斯夫股份有限公司、美国陶氏益农公司、英国先正达有限公司、美国氰胺公司等专业国际集团和国内专业厂商的安全优质的卫生害虫防制产品，并由长宁区疾病预防控制中心配合科研实验及对各类卫生害虫的抗药性试验，为客户提供具有国家标准的专业卫生害虫防制工程服务和管理咨询。</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p><strong>本公司是上海市有害生物防制协会团体会员</strong><br />\r\n            <strong>长宁区有害生物防制协会团体会员、常务理事</strong><br />\r\n            并被长宁区爱卫办和长宁区疾病预防中心指定为长宁区内重点行业的卫生害虫防制专业队伍。</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" width="100%">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="33%" align="center"><img width="196" height="261" alt="" src="/upload/other/3320457369.jpg" /></td>\r\n                        <td width="33%" align="center"><img width="196" height="261" alt="" src="/upload/other/3320457369.jpg" /></td>\r\n                        <td width="33%" align="center"><img width="196" height="261" alt="" src="/upload/other/3320457369.jpg" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="txt_black" align="right">如果您无法确定身边害虫的种类，可以通过<a href="#"><img border="0" width="109" height="38" alt="" src="/inc/pics/libary.gif" /></a> <br />\r\n            获取更多有害生物相关的信息</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (13, 1, '图书馆-老鼠', '', '', '', '', '<table border="0" cellspacing="5" cellpadding="5" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td align="center"><img alt="" width="450" height="123" src="/upload/other/3329897473.gif" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;<a href="/library.php">返回</a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <h2>鼠类与鼠类防治</h2>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="16%" align="left"><img alt="" width="288" height="140" src="/upload/other/3329911874.gif" /></td>\r\n                        <td valign="top" width="84%" align="left">\r\n                        <p>鼠类是多种传染病，特别是自然疫源性传染病的传染源，鼠类可传播鼠疫、流行性出血热、钩端螺旋体病等，鼠身上寄生的跳蚤又是病原体的传播媒介。对农业、林业、工业都造成巨大损失，例石化热电厂因老鼠跳入配电房造成巨大损失。灭鼠是除害灭病消灭动物传染源的一项重要的预防控制措施。上海的主要鼠种为黄胸鼠、褐家鼠、小家鼠是上海地区主要害鼠，野外农田则以黑线姬鼠为主。</p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <p>鼠类防治的要点：勘查鼠情和环境条件，投放毒饵时要确保人、畜和宠物安全，防止环境污染，使用慢性抗凝血灭鼠剂防止造成二次中毒事故的发生（国家已经明确禁用急性鼠药）；开始每周必须检查补充毒饵，其后每月检查更换补充，每次检查后作出详细记录，每三个月作一次鼠密度调查。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (14, 1, '图书馆-蟑螂', '', '', '', '', '<table border="0" cellspacing="5" cellpadding="5" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td align="center"><img alt="" width="450" height="123" src="/upload/other/3329897473.gif" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;<a href="/library.php">返回</a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <h2>蟑螂防治</h2>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="16%" align="left"><img alt="" width="189" height="121" src="/upload/other/3329922197.gif" /></td>\r\n                        <td valign="top" width="84%" align="left">\r\n                        <p>蟑螂泛指属于蜚蠊目（Blattodea）的昆虫，目前已被发现大约有4000多种，其中大约有数十种会入侵人类家居。上海家居最常见的蟑螂为体长约1.5厘米（0.59英寸）的德国蟑螂（Blattella germanica）、日本姬蠊（Blattella bisignata）及亚洲蟑螂（ Blattella asahinai）。家居蟑螂普遍夜行及畏光，野外蟑螂因品种而异，趋光性有正亦有负。</p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <p>大部份的蟑螂都是杂食性，与人类的食性重叠，部份蟑螂对人类的家居都有很强的入侵性，它们繁殖力强，在人类家居栖身及觅食的同时，亦会传播多种病原体，因此蟑螂普遍地被认为是害虫。虽然很多人并不喜欢蟑螂，甚至要除之而后快，但蟑螂早在人类出现前的数亿年已活跃于地球，从石炭纪及二叠纪的化石找到一些比现存大出数倍的品种，而经过数亿年的演化，蟑螂并没有太大的变化，人们不得不承认它们是一种成功的生物。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (6, 1, '首页', '', '', '', '', '<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="middle" align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="14%"><img width="104" height="106" alt="" src="/inc/pics/homequestion.gif" /></td>\r\n                        <td width="86%">\r\n                        <h1>为什么选择PCOSH?</h1>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="85%" align="center">\r\n                <tbody>\r\n                    <tr>\r\n                        <td valign="middle" width="14%" align="center"><img width="74" height="80" alt="" src="/inc/pics/homeleftpic1.gif" /></td>\r\n                        <td width="86%">\r\n                        <p><a href="/aboutus.php">上海胜华卫生害虫防制有限公司</a>（PCOSH）成立于上世纪八十年代初，拥有近30年的<br />\r\n                        专业有害生物防制经验，是国内最早的有害生物防制公司之一。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="85%" align="center">\r\n                <tbody>\r\n                    <tr>\r\n                        <td valign="middle" width="14%" align="center"><img width="74" height="80" alt="" src="/inc/pics/homeleftpic2.gif" /></td>\r\n                        <td width="86%">\r\n                        <p>公司前身是国内最早研制、生产拟除虫菊酯类卫生杀虫剂的国有企业--上海联合化工厂<br />\r\n                        中心实验室，技术力量雄量，经验丰富；是上海市有害生物防制协会会员单位、长宁区<br />\r\n                        有害生物防制协会常务理事单位，并被长宁区爱卫办和长宁区疾病预防中心指定为长宁<br />\r\n                        区重点行业卫生害虫防制专业队伍。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="85%" align="center">\r\n                <tbody>\r\n                    <tr>\r\n                        <td valign="middle" width="14%" align="center"><img width="74" height="80" alt="" src="/inc/pics/homeleftpic3.gif" /></td>\r\n                        <td width="86%">\r\n                        <p>对长期合作客户赠送免责赔偿服务，消杀服务满65天后，凡被上海市权威认证机构检查害<br />\r\n                        虫指标不符合国家规定，我们承诺赔付全额罚款。对一次性合作客户，服务后情况没有改<br />\r\n                        善，我们承诺退返全额服务费。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="85%" align="center">\r\n                <tbody>\r\n                    <tr>\r\n                        <td valign="middle" width="14%" align="center"><img width="74" height="80" alt="" src="/inc/pics/homeleftpic4.gif" /></td>\r\n                        <td width="86%">\r\n                        <p>我们着眼于建立良好长期的合作关系，不断提高自身的队伍素质和服务质量，因此也被更<br />\r\n                        多知名用户所选择，其中一些已经服务了将近二十年了。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">\r\n                <tbody>\r\n                    <tr>\r\n                        <td valign="middle" width="16%" align="center">&nbsp;</td>\r\n                        <td width="84%" align="left"><img width="709" height="278" alt="" src="/inc/pics/client01.jpg" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="middle" align="center">&nbsp;</td>\r\n                        <td>&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="middle" align="center">&nbsp;</td>\r\n                        <td align="left"><img width="665" height="484" alt="" src="/inc/pics/client02.jpg" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="middle" align="center">&nbsp;</td>\r\n                        <td>&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="middle" align="center">&nbsp;</td>\r\n                        <td align="left"><img width="675" height="199" alt="" src="/inc/pics/client03.jpg" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="85%" align="center">\r\n                <tbody>\r\n                    <tr>\r\n                        <td valign="middle" width="14%" align="center">&nbsp;</td>\r\n                        <td width="86%">\r\n                        <p>中国工商银行股份有限公司数据中心<br />\r\n                        上海工行现金营运中心<br />\r\n                        中国工商银行金桥科技大楼<br />\r\n                        长宁区人民政府食堂<br />\r\n                        光明乳业上海有限公司<br />\r\n                        上海美林阁仙霞酒家有限公司<br />\r\n                        上海广播大厦<br />\r\n                        上海市段和段律师事务所<br />\r\n                        捷强超市<br />\r\n                        ........</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align="center">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="85%" align="center">\r\n                <tbody>\r\n                    <tr>\r\n                        <td valign="middle" width="14%" align="center"><img width="74" height="80" alt="" src="/inc/pics/homeleftpic5.gif" /></td>\r\n                        <td width="86%">\r\n                        <p>当您发现您的身边受到各种害虫的干扰，赶紧联系我们，我们将会为您安排一次免费的上门排查，并量身订做服务方案，我们的目的是使您的生活和工作更加舒适、安逸。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p>&nbsp;</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (8, 1, '解答疑问', '', '', '', '', '<table class="txt" border="0" cellspacing="5" cellpadding="5" width="98%" align="left">\r\n    <tbody>\r\n        <tr>\r\n            <td width="3%">&nbsp;</td>\r\n            <td width="97%" align="left">\r\n            <h1>常见问题解答</h1>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left"><strong>问:你们采取什么更好的防治方法吗?</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">自1980年一来，上海胜华卫生害虫防制有限公司就提供了一个整体性的服务模型对有害生物进行控制。我们更注重于预防的方法，并应用更有针对性的、降低毒性残留产品。我们不做的千篇一律的病虫害防治，而是以量身定做的服务方式以满足每一个客户的需要。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left"><strong>问:你们是如何保证药物的安全性?</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">我们使用了一个结合了植物和矿物成分的天然杀虫剂，我们使用包括pyrethrin(来源于菊花)、硅藻土(化石海贝微粒),borates(重型盐)。这些成分已经使用了几个世纪,可以非常有效的治理/预防多种害虫。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left"><img alt="" width="404" height="554" src="/upload/other/3328351279.jpg" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left"><strong>问:什么是害虫控制的预防维护计划?</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">定期维护计划是指有害生物防制服务计划。维护程序的目标是解决当前的害虫以及防止它未来的侵袭。维护计划开始于一次综合初始服务后的评估,随后由技术人员定期访问,包括排查和有针对性的预防措施。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">维护频率将以定制的方式以满足各种需要。根据目前害虫状况、气候、以及建筑周围的环境， 我们提供月度、双月(每隔一个月)和季度维护计划。根据实际情况可以增加或减少所需要的药物使用量和维护频率。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">同时根据不同的害虫种类和种群，我们将更换药物的配方，减少抗药性的发生频率，达到更好的服务效果。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left"><strong>问：你们的服务收费标准？</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">我们严格执行国家爱卫会制定的最新的有害虫体控制标准；</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">由于我们更注重于长期合作关系的建立，因此收费标准低于国家爱卫会制定的行业收费标准；<br />\r\n            并且我们提供免费的上门排查，预付三个月以上的服务费，将获得10％的总价折扣。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">\r\n            <table border="0" cellspacing="0" cellpadding="0" width="70%">\r\n                <tbody>\r\n                    <tr>\r\n                        <td><a href="/priceinfo.php?pdir1=1&amp;pdir2=6&amp;pid=11">国家爱卫会的行业收费标准</a></td>\r\n                        <td><a href="/priceinfo.php?pdir1=1&amp;pdir2=6&amp;pid=11">PCOSH收费标准</a></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left"><strong>问：什么是服务理赔计划？</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">我们对以下客户承诺服务：</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">短期客户（一次性服务客户）<br />\r\n            我们为客户提供一个短期的害虫防治服务流程，服务满65天之后，若经国家指定的权威部门检测不合格，虫害密度未达到国家规定，退赔服务费用。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">长期客户（服务周期三个月以上）<br />\r\n            我们为客户提供一个长期的害虫防治服务流程，服务满65天之后，若经国家指定的权威部门检测不合格，虫害密度未达到国家规定，退赔服务费用。<br />\r\n            服务满65天之后，若经国家指定的权威部门检测不合格，虫害密度未达到国家规定，并造成罚款，将由我们全额赔付罚款。</td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td align="left">&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (9, 1, '服务流程', '', '', '', '', '<img width="256" height="54" alt="" src="/upload/other/3329028528.jpg" /><br />\r\n<img width="341" height="212" alt="" src="/upload/other/3329028622.jpg" /><br />\r\n<img width="720" height="1323" alt="" src="/upload/other/3329028722.jpg" />');
INSERT INTO `pageset` VALUES (10, 1, '价格及维护', '', '', '', '', '<table border="0" cellspacing="0" cellpadding="0" width="100%" height="100">\r\n    <tbody>\r\n        <tr>\r\n            <td><img alt="" width="536" height="149" src="/upload/other/3320511278.gif" /></td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (11, 1, '图书馆', '', '', '', '', '<table border="0" cellspacing="5" cellpadding="5" width="80%">\r\n    <tbody>\r\n        <tr>\r\n            <td align="center"><img alt="" width="450" height="123" src="/upload/other/3329897473.gif" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%">\r\n                <tbody>\r\n                    <tr>\r\n                        <td align="center"><a href="/mouse.php"><img border="0" alt="" width="206" height="100" src="/upload/other/3329897515.gif" /></a></td>\r\n                        <td align="center"><a href="/cockroach.php"><img src="/upload/other/3329897639.gif" alt="" width="156" height="100" border="0" /></a></td>\r\n                        <td align="center"><a href="/termite.php"><img src="/upload/other/3329898097.gif" alt="" width="171" height="100" border="0" /></a></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%">\r\n                <tbody>\r\n                    <tr>\r\n                        <td align="center"><a href="/flea.php"><img src="/upload/other/3329898238.gif" alt="" width="132" height="110" border="0" /></a></td>\r\n                        <td align="center"><a href="/bug.php"><img src="/upload/other/3329898311.gif" alt="" width="162" height="110" border="0" /></a></td>\r\n                        <td align="center"><a href="/mosquitoes.php"><img src="/upload/other/3329898453.gif" alt="" width="160" height="110" border="0" /></a></td>\r\n                        <td align="center"><a href="/mosquitoes.php"><img src="/upload/other/3329898541.gif" alt="" width="148" height="110" border="0" /></a></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (17, 1, '图书馆-臭虫', '', '', '', '', '<table border="0" cellspacing="5" cellpadding="5" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td align="center"><img alt="" width="450" height="123" src="/upload/other/3329897473.gif" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;<a href="/library.php">返回</a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <h2>臭虫防治</h2>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="top" width="16%" align="left"><img alt="" width="212" height="144" src="/upload/other/3329990762.gif" /></td>\r\n                        <td valign="top" width="84%" align="left">\r\n                        <p>床虱，俗称臭虫，是一种很小及难以捕捉的寄生昆虫，属于臭虫科（Cimicidae），是半翅目异翅亚目臭虫下目臭虫总科的生物种类。</p>\r\n                        <p>一般来说，臭虫泛指所有偏好以人体血液为食粮的种属 ；但其实臭虫科包括所有 以吸食温血动物的血液为生的昆虫[1][2]。臭虫的首选栖息地是房子的床板， 尤其 是病床或其他公共地方的床。臭虫虽然不是严格只在夜间活动，但夜间仍然是它 们的主要活动时间， 亦可以在宿主不留意下吸取宿主的血液。</p>\r\n                        <p>臭虫曾经在1940年代早期开始在已发展国家间蔓延， 但后来得到治理； 不过，从1995年开始，臭虫再度在世界为患。</p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <p>&nbsp;</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (18, 1, '图书馆-蚊蝇', '', '', '', '', '<table border="0" cellspacing="5" cellpadding="5" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td align="center"><img alt="" width="450" height="123" src="/upload/other/3329897473.gif" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;<a href="/library.php">返回</a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <table border="0" cellspacing="5" cellpadding="5" width="98%" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td colspan="2" align="left">\r\n                        <h2>蚊蝇防治</h2>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="top" width="16%" align="left"><img alt="" width="249" height="121" src="/upload/other/3329992921.gif" /></td>\r\n                        <td valign="top" width="84%" align="left">\r\n                        <p>在世界中大部分的地区，蚊是严重的公共卫生问题。估计，每年约有7亿人 被蚊子传染各种疾病， 且每十七人中，就有1人死于被蚊子传染的各种疾病。 尤其是在热带地区，多种传染病常借由蚊子传染给人类。</p>\r\n                        <p>传染疾病的机制雌蚊在吸血时，若叮咬的对象是病人，则病原可能借由这个 动作进入蚊子体内， 并借着蚊子的叮咬传播。由于只有雌蚊会吸血，所以只 有雌蚊会传染疾病。</p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign="top" align="left">\r\n                        <p><img alt="" width="249" height="121" src="/upload/other/3329993058.gif" /></p>\r\n                        </td>\r\n                        <td valign="top" align="left">\r\n                        <p>蝇为杂食性昆虫，常见的种类则多偏好甜食或腐食，如：食蚜蝇与寄生蝇喜欢访花吸蜜；果蝇与果实蝇喜欢食水果或腐果；丽蝇、家蝇与肉蝇则偏好腐肉与粪便。</p>\r\n                        <p>粗大且类似象鼻的舐吸式口器，是大部分蝇用来舐食液体食物的利器。舐食之前，很多蝇会先分泌消化液，溶解食物中的养分，再舐食吸收。</p>\r\n                        <p>由于家蝇、丽蝇、肉蝇等蝇经常于人类的食物与污物之间来往觅食，因此成了传播细菌、流行传染病源的元凶。</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 

INSERT INTO `pagesetpic` VALUES (28, 6, 1, '', '', '', '1333936087.jpg', '', 1, 'JPG', '2012-04-07 16:42:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (27, 6, 1, '', '', '', '1333936098.jpg', '', 1, 'JPG', '2012-04-07 16:42:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (26, 6, 1, '', '', '', '1333936107.jpg', '', 1, 'JPG', '2012-04-07 16:41:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (25, 11, 1, '', '', '', '1332050759.jpg', '', 1, 'JPG', '2012-03-18 14:05:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (20, 6, 1, '', '', '', '1333936115.jpg', '', 1, 'JPG', '2012-03-18 11:59:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (21, 7, 1, '', '', '', '1332043869.jpg', '', 1, 'JPG', '2012-03-18 12:11:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (22, 8, 1, '', '', '', '1332049745.jpg', '', 1, 'JPG', '2012-03-18 13:49:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (24, 10, 1, '', '', '', '1332050664.jpg', '', 1, 'JPG', '2012-03-18 14:04:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (23, 9, 1, '', '', '', '1332050379.jpg', '', 1, 'JPG', '2012-03-18 13:59:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 0, 0, 0, 0, 1, 0, 1, '2011-04-15 02:03:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `productdir`
-- 

INSERT INTO `productdir` VALUES (1, 0, '产品目录', '', 1, '', 0, 1, 1);
INSERT INTO `productdir` VALUES (2, 0, '灭鼠相关', '', 1, '', 1, 2, 2);
INSERT INTO `productdir` VALUES (3, 0, '灭蟑螂', '', 1, '', 1, 2, 3);
INSERT INTO `productdir` VALUES (4, 0, '苍蝇蚊子', '', 1, '', 1, 2, 4);
INSERT INTO `productdir` VALUES (5, 0, '白蚁', '', 1, '', 1, 2, 5);
INSERT INTO `productdir` VALUES (6, 0, '害虫控制服务', '', 1, '', 1, 2, 6);

-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- 导出表中的数据 `productinfo`
-- 

INSERT INTO `productinfo` VALUES (2, 2, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (3, 2, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (4, 2, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (5, 2, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (6, 2, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (7, 3, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (8, 3, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (9, 3, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (10, 3, 0, 1, '产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍', '14.8', 1, 1, '2012-03-18 15:19:43', '2012-03-18 15:22:23', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (11, 6, 0, 1, '行业收费标准', '行业收费标准', '行业收费标准行业收费标准行业收费标准行业收费标准行业收费标准行业收费标准<br />\r\n<br />\r\n<img alt="" width="800" height="600" src="/upload/other/3342035996.jpg" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />', '', 1, 1, '2012-04-12 11:55:19', '2012-04-12 12:07:36', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `productpic`
-- 

INSERT INTO `productpic` VALUES (1, 1, 1, '', '', '', '1332055264.jpg', '', 1, 'JPG', '2012-03-18 15:21:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (2, 2, 1, '', '', '', '1332055489.jpg', '', 1, 'JPG', '2012-03-18 15:24:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (3, 3, 1, '', '', '', '1332055497.jpg', '', 1, 'JPG', '2012-03-18 15:24:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (4, 10, 1, '', '', '', '1332056284.jpg', '', 1, 'JPG', '2012-03-18 15:38:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (5, 10, 1, '', '', '', '1332056341.jpg', '', 1, 'JPG', '2012-03-18 15:39:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (6, 9, 1, '', '', '', '1332056898.jpg', '', 1, 'JPG', '2012-03-18 15:48:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, '上海胜华卫生害虫防制有限公司', '上海胜华卫生害虫防制有限公司', '上海胜华卫生害虫防制有限公司', '', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, 'Main', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, 'Company', '/about.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, 'Product', '/productdir.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, 'Agent', '/agent.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, 'Certificate', '/cert.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (8, 1, 'Contact', '/contact.php', 1, 0, 1, 1);
