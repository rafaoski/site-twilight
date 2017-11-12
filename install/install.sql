# --- WireDatabaseBackup {"time":"2017-11-12 17:17:17","user":"","dbName":"site-twilight","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '191');

DROP TABLE IF EXISTS `field_authors`;
CREATE TABLE `field_authors` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_authors` (`pages_id`, `data`, `sort`) VALUES('1106', '1135', '0');
INSERT INTO `field_authors` (`pages_id`, `data`, `sort`) VALUES('1124', '1149', '0');
INSERT INTO `field_authors` (`pages_id`, `data`, `sort`) VALUES('1155', '1157', '0');
INSERT INTO `field_authors` (`pages_id`, `data`, `sort`) VALUES('1159', '1163', '0');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<h1>What is ProcessWire?</h1>\n\n<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>\n\n<h2>Basic Site Profile</h2>\n\n<p>This is a basic starter site for you to use in developing your own site. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire forums</a>. If you are building a new site, this basic profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>\n\n<h2>ProcessWire is a valuable tool for designers, developers and clients</h2>\n\n<h3>Simple, powerful, consistent, predictable, capable … and fun</h3>\n\n<p>ProcessWire is designed to have an approachable simplicity that is retained regardless of scale. Simplicity often implies reduced capability, and this is not the case with ProcessWire. From the surface, there is very little complexity and the application requires no training. But open the hood, and you have a lot of horsepower at your disposal for just about any content need. The goal is jQuery or Google-like simplicity (a simple interface to powerful engineering). Regardless of scale, the inherent simplicity and joy in using the interface and <a href=\"https://processwire.com/api/\">CMS API</a> remains consistent, predictable, and capable. <a href=\"https://processwire.com/about/what/\">Read more</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1106', '<p>CSS Grid Layout is the most powerful layout system available in CSS. It is a 2-dimensional system, meaning it can handle both columns and rows, unlike <a href=\"https://css-tricks.com/snippets/css/a-guide-to-flexbox/\">flexbox</a> which is largely a 1-dimensional system. You work with Grid Layout by applying CSS rules both to a parent element (which becomes the Grid Container) and to that elements children (which become Grid Items).</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1124', '<p>Is there a formula—some mix of love, work, and psychological adaptation—for a good life? For 72 years, researchers at Harvard have been examining this question, following 268 men who entered college in the late 1930s through war, career, marriage and divorce, parenthood and grandparenthood, and old age. Here, for the first time, a journalist gains access to the archive of one of the most comprehensive longitudinal studies in history. Its contents, as much literature as science, offer profound insight into the human condition—and into the brilliant, complex mind of the study’s longtime director, George Vaillant.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1135', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1147', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1153', '<h3>Website privacy policy - sample template</h3>\n\n<p>This privacy policy sets out how [business name] uses and protects any information that you give [business name] when you use this website. [business name] is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement. [business name] may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from [date]. What we collect We may collect the following information: name and job title contact information including email address demographic information such as postcode, preferences and interests other information relevant to customer surveys and/or offers What we do with the information we gather We require this information to understand your needs and provide you with a better service, and in particular for the following reasons: Internal record keeping. We may use the information to improve our products and services. We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided. From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail. We may use the information to customise the website according to your interests. Security We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online. How we use cookies A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences. We use traffic log cookies to identify which pages are being used. This helps us analyse data about webpage traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system. Overall, cookies help us provide you with a better website by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us. You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website. Links to other websites Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question. Controlling your personal information You may choose to restrict the collection or use of your personal information in the following ways: whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes if you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us at [email address] We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen. You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to [address]. If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible at the above address. We will promptly correct any information found to be incorrect.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1345', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1155', '<p>One of the early scenes in \"Pulp Fiction\" features two hit-men discussing what a Big Mac is called in other countries. Their dialogue is witty and entertaining, and it\'s also disarming, because it makes these two thugs seem all too normal. If you didn\'t know better, you might assume these were regular guys having chit-chat on their way to work. Other than the comic payoff at the end of the scene, in which they use parts of this conversation to taunt their victims, their talk has no relevance to anything in the film, or to anything else, for that matter. Yet without such scenes, \"Pulp Fiction\" wouldn\'t be \"Pulp Fiction.\" I get the sense that Tarantino put into the film whatever struck his fancy, and somehow the final product is not only coherent but wonderfully textured.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1159', '<h1>WordPress, Joomla and Drupal are NOT the Best CMS</h1>\n\n<blockquote>\n<p>All of these tools have drawbacks and shortcomings. Getting the right one means getting one that is the best fit to your scenarios and constraints. But it’s equally important to know the drawbacks. You’re not just committing to the awesome advantages — you’ll always get annoying problems in return. If you know about these in advance instead of ignoring them, you can live with them — and mitigate the problem. Go in eyes wide open.</p>\n</blockquote>\n\n<h4>Article taken from: <a href=\"https://www.cmscritic.com/wordpress-joomla-and-drupal-are-not-the-best-cms/\">CMS CRITIC</a></h4>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1355', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1361', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1365', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1347', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1369', '<h2><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</h2>\n\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1389', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1106', '1108', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1124', '1126', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1159', '1165', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1155', '1169', '0');

DROP TABLE IF EXISTS `field_check_1`;
CREATE TABLE `field_check_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1124', '2017-10-18 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1106', '2017-10-17 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1155', '2017-10-17 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1159', '2017-10-18 00:00:00');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_fieldset_1`;
CREATE TABLE `field_fieldset_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_1_end`;
CREATE TABLE `field_fieldset_1_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_1`;
CREATE TABLE `field_fieldset_tab_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_1_end`;
CREATE TABLE `field_fieldset_tab_1_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_2`;
CREATE TABLE `field_fieldset_tab_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_2_end`;
CREATE TABLE `field_fieldset_tab_2_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_3`;
CREATE TABLE `field_fieldset_tab_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_3_end`;
CREATE TABLE `field_fieldset_tab_3_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_file_1`;
CREATE TABLE `field_file_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_file_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1304', 'pdf-1.pdf', '0', '', '2017-10-17 20:09:29', '2017-10-17 20:09:29');

DROP TABLE IF EXISTS `field_global_seo`;
CREATE TABLE `field_global_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_global_seo` (`pages_id`, `data`) VALUES('1019', '1312');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1059', 'Lorem Ipsum has been the industry\'s standard dummy text.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1156', 'One of the early scenes in Pulp Fiction features two hit-men discussing what a Big Mac ...');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1069', 'Welcome Friends To My Blog Page.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1071', 'Lorem Ipsum has been the industry\'s standard dummy text.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1073', 'SEARCH ITEMS');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1074', 'ERROR -- 404 -- BAD REQUEST');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1125', 'Is there a formula—some mix of love.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1383', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1384', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1387', 'Thomas Jeffrey Hanks was born in Concord, California, to Janet Marylyn (Frager), a hospital worker, and Amos Mefford Hanks, an itinerant cook.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1388', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1147', 'Hello and welcome to connect with our services.');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1106', 'grid.jpg', '0', '', '2017-09-11 09:21:49', '2017-09-11 09:21:49');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1124', 'crazy-l.jpg', '0', '', '2017-09-20 21:49:01', '2017-09-20 21:49:01');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1135', 'pablo.jpg', '0', '', '2017-09-14 19:31:58', '2017-09-14 19:31:58');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1149', 'tom-hanks.jpg', '0', '', '2017-09-14 19:46:06', '2017-09-14 19:46:06');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1155', 'pulp.jpg', '0', '', '2017-09-18 13:13:51', '2017-09-18 13:13:51');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1157', 'quentin.jpg', '0', '', '2017-09-18 13:21:12', '2017-09-18 13:21:12');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1163', 'mike-compressor.jpg', '0', '', '2017-09-18 13:41:52', '2017-09-18 13:41:52');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1147', 'skyscrapers.jpg', '0', '', '2017-10-14 23:31:17', '2017-10-14 23:31:17');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1159', 'eye-compressor.png', '0', '', '2017-09-18 17:34:35', '2017-09-18 17:34:35');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1304', 'galaxy-2150265_640-compressor.png', '0', '', '2017-10-17 20:09:29', '2017-10-17 20:09:29');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1', 'pulp.jpg', '0', '', '2017-11-08 18:56:30', '2017-11-08 18:56:30');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1345', 'linda-hamilton.jpg', '0', '', '2017-11-06 19:32:19', '2017-11-06 19:32:19');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1347', 'scary-83133_640-compressor.jpg', '0', '', '2017-11-06 19:32:47', '2017-11-06 19:32:47');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1355', 'halloween.jpg', '0', '', '2017-11-06 19:40:04', '2017-11-06 19:40:04');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1389', 'basic-guide-compressor.jpg', '0', '', '2017-11-08 16:47:00', '2017-11-08 16:47:00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1365', 'pablo.jpg', '0', '', '2017-11-06 20:47:08', '2017-11-06 20:47:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1361', 'tom-hanks.jpg', '0', '', '2017-11-06 22:07:42', '2017-11-06 22:07:42');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1369', 'proc-3-compressor.jpg', '1', '', '2017-11-07 13:21:09', '2017-11-07 13:21:09');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1369', 'basic-guide-compressor.jpg', '0', '', '2017-11-07 13:21:09', '2017-11-07 13:21:09');

DROP TABLE IF EXISTS `field_img_1`;
CREATE TABLE `field_img_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1019', 'rocket-n-compressor.png', '0', '', '2017-09-05 19:51:47', '2017-09-05 19:51:47');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1383', 'machete-1.jpg', '0', '', '2017-11-07 14:46:01', '2017-11-07 14:46:01');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1384', 'quentin.jpg', '0', '', '2017-11-08 14:13:46', '2017-11-08 14:13:46');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1387', 'tom-hanks.jpg', '0', '', '2017-11-08 16:30:57', '2017-11-08 16:30:57');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1388', 'pablo.jpg', '0', '', '2017-11-08 16:34:41', '2017-11-08 16:34:41');

DROP TABLE IF EXISTS `field_img_2`;
CREATE TABLE `field_img_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_img_2` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1019', 'wrench-compressor.png', '0', '', '2017-09-05 19:51:47', '2017-09-05 19:51:47');

DROP TABLE IF EXISTS `field_int_1`;
CREATE TABLE `field_int_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_int_1` (`pages_id`, `data`) VALUES('1147', '10');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1029', '167');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1032', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1033', '169');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1086', '173');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1190', '174');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1195', '178');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1308', '182');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1310', '184');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1313', '188');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1404', '195');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1407', '196');

DROP TABLE IF EXISTS `field_ref_1`;
CREATE TABLE `field_ref_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1019', '1307', '0');

DROP TABLE IF EXISTS `field_ref_2`;
CREATE TABLE `field_ref_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_2` (`pages_id`, `data`, `sort`) VALUES('1343', '1152', '0');
INSERT INTO `field_ref_2` (`pages_id`, `data`, `sort`) VALUES('1369', '1152', '0');
INSERT INTO `field_ref_2` (`pages_id`, `data`, `sort`) VALUES('1', '1340', '0');

DROP TABLE IF EXISTS `field_ref_3`;
CREATE TABLE `field_ref_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_3` (`pages_id`, `data`, `sort`) VALUES('1147', '1226', '0');
INSERT INTO `field_ref_3` (`pages_id`, `data`, `sort`) VALUES('1147', '1227', '1');

DROP TABLE IF EXISTS `field_ref_4`;
CREATE TABLE `field_ref_4` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1345', '1351', '0');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1347', '1351', '0');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1355', '1351', '0');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1345', '1353', '1');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1347', '1357', '1');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1355', '1357', '1');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1361', '1357', '0');

DROP TABLE IF EXISTS `field_rep_1`;
CREATE TABLE `field_rep_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_1` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1369', '1383,1384,1387,1388', '4', '1381');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_seo`;
CREATE TABLE `field_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1', '1059');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1041', '1069');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1020', '1071');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1018', '1073');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('27', '1074');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1088', '1089');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1106', '1107');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1108', '1109');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1116', '1117');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1124', '1125');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1126', '1127');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1128', '1129');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1131', '1132');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1133', '1134');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1135', '1136');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1147', '1148');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1149', '1150');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1153', '1154');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1155', '1156');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1157', '1158');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1159', '1160');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1163', '1164');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1165', '1166');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1167', '1168');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1169', '1170');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1171', '1172');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1075', '1130');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1343', '1344');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1345', '1346');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1347', '1348');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1349', '1350');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1351', '1352');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1353', '1354');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1355', '1356');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1357', '1358');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1361', '1362');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1365', '1366');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1369', '1370');
INSERT INTO `field_seo` (`pages_id`, `data`) VALUES('1389', '1390');

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1019', '<h3>About ProcessWire</h3>\n\n<p>ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.</p>\n\n<p><a href=\"https://processwire.com/about/sites/\">Showcase</a><br /><a href=\"https://processwire.com/docs/\">Documentation</a><br /><a href=\"https://processwire.com/docs/tutorials/\">Tutorials</a><br /><a href=\"https://processwire.com/talk/\">Support</a><br /><a href=\"http://cheatsheet.processwire.com\">API Cheatsheet</a><br /><a href=\"http://modules.processwire.com\">Modules</a></p>');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1059', 'It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1156', 'Their dialogue is witty and entertaining, and it\'s also disarming, because it makes these two thugs seem all too normal.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1069', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1071', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1073', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1074', '404');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1125', 'You literally fell down drunk and died. Not quite what the study had in mind.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1147', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.');

DROP TABLE IF EXISTS `field_tags`;
CREATE TABLE `field_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1106', '1116', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1124', '1128', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1124', '1131', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1159', '1167', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1155', '1171', '0');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1147', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1311', 'global_seo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1152', 'Disable Sidebar');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1151', 'Custom Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Site Map');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1157', 'Quentin Tarantino\'s');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Clone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Clone a tree of pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Export/Import');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Switch Settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Enable Minify Html');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1307', 'Enable Img Lazy Load');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1153', 'Privacy Policy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'seo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1126', 'Psychology');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1087', 'Use the comments manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1088', 'Tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1135', 'Casanova');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1133', 'Authors');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1131', 'Joker');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1128', 'Happy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1159', 'So What is the Best CMS?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1171', 'Best Movie');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1163', 'Mike Johnston');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1106', 'A Complete Guide to Grid');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1108', 'CSS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1165', 'CMS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1173', 'Disable Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1167', 'BEST');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1116', 'GRID');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1124', 'What Makes Us Happy?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1155', 'Pulp Fiction');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1149', 'Tom Hanks');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1169', 'Top 500');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1227', 'Enable PDF');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1226', 'Enable Images');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1225', 'Contact Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1190', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1195', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1304', 'Max Kolonko');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1305', 'Enable Quiet Light');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1306', 'Enable Gulp Watch');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1308', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1310', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1313', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1349', 'Portfolio Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1347', '2 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1345', '1 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1343', 'Portfolios');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1340', 'Enable Global Sidebar');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1351', '1 Category');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1353', '2 Category');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1355', '3 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1357', '3 Category');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1361', '4 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1365', '6 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1369', 'About Us');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1389', '1 Child');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1379', 'Enable Container');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1380', 'rep_1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1381', 'about-us');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1404', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1407', 'Export Site Profile');

DROP TABLE IF EXISTS `field_txt_1`;
CREATE TABLE `field_txt_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1075', 'fa-sitemap');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1', 'fa-home');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1088', 'fa-tags');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1041', 'fa-eercast');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1020', 'fa-map-o');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1147', 'fa-envelope-open-o');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1153', 'fa-user-secret');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1304', '2017-10-17 | 20:09');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1133', 'fa-user-secret');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1387', 'Tom Hanks');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1388', 'Freak');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1384', 'Quentin Tarantino');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1383', 'Danny Trejo');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1369', 'fa-simplybuilt');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1349', 'fa-th-large');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1343', 'fa-th');

DROP TABLE IF EXISTS `field_txt_2`;
CREATE TABLE `field_txt_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1304', '127.0.0.1');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1384', 'quentin@gmail.com');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1383', 'gloria@aefhtalent.com');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1147', 'Message From Your Page');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1387', 'tomhanks@gmail.com');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1388', 'freak@gmail.com');

DROP TABLE IF EXISTS `field_txt_3`;
CREATE TABLE `field_txt_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1304', '123-456');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1387', '477-4442');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1384', '323-951-4600');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1383', '323-939-1188');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1147', '23-44-78 , alex@gmail.com');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1388', '477-4443');

DROP TABLE IF EXISTS `field_txt_4`;
CREATE TABLE `field_txt_4` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_4` (`pages_id`, `data`) VALUES('1147', 'Thanks for sending the message and ...');

DROP TABLE IF EXISTS `field_txtarea_1`;
CREATE TABLE `field_txtarea_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1304', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1147', '192.0.78.9,72.29.124.146');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1019', 'Rss,https://plus.google.com/,https://twitter.com/, https://www.facebook.com/,https://www.youtube.com/,https://pinterest.com,https://linkedin.com,https://www.tumblr.com/,https://medium.com/,https://www.instagram.com,user@gmail.com');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1369', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1384', 'https://twitter.com/hashtag/quentin%20tarantino,https://www.facebook.com/QuentinTarantinoDirector/,https://plus.google.com/communities/112066161304212565491');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1383', 'https://twitter.com/officialdannyt,https://www.facebook.com/officialdannytrejo/,https://www.instagram.com/officialdannytrejo/');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1387', 'https://www.facebook.com/TomHanks/,https://twitter.com/tomhanks,https://www.instagram.com/tomhanks/');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1388', 'https://www.facebook.com/Zumba-freak-391268994223617/,https://twitter.com/akayaby,https://www.instagram.com/explore/tags/freak/');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('121', 'repeater_global_seo');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'switch-settings');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'toggle');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'blog-post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'blog');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'repeater_seo');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'tag');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'tags');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'author');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'authors');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('120', 'contact-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('126', 'portfolio-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('127', 'portfolio');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('128', 'portfolio-categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('129', 'portfolio-category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('130', 'abot');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('131', 'about-single');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('132', 'repeater_rep_1');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '114', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '123', '5', '{\"label\":\"Seo\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '124', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '100', '1', '{\"columnWidth\":60,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '105', '4', '{\"columnWidth\":50,\"description\":\"You Can Provide The Following Addresses:\\nRss ( Blog RSS ) , Google Plus, Twitter, Facebook, Youtube, Pinterest, Linkedin, Tumblr, Medium, Instagram, E-Mail\",\"label\":\"Add Social Profile, Rss, Mail ... With Separate Comma ...\",\"placeholder\":\"https:\\/\\/twitter.com\\/, https:\\/\\/www.facebook.com\\/, https:\\/\\/www.youtube.com\\/,\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', '{\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', '{\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '123', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '118', '7', '{\"columnWidth\":50,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '92', '1', '{\"columnWidth\":40,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '125', '2', '{\"columnWidth\":20,\"label\":\"Phone Number\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '111', '3', '{\"collapsed\":\"0\",\"columnWidth\":50,\"description\":\"\",\"label\":\"Date\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '122', '4', '{\"label\":\"Ip Adress\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '105', '5', '{\"label\":\"Subject Message\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '99', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '123', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '106', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '124', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '126', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '113', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '108', '4', '{\"columnWidth\":25,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '110', '5', '{\"columnWidth\":25,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '112', '6', '{\"columnWidth\":25,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '107', '7', '{\"columnWidth\":25,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '97', '0', '{\"columnWidth\":40,\"maxlength\":0,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '133', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '135', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '104', '5', '{\"label\":\"Enable OR Disable Options\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '111', '8', '{\"collapsed\":\"0\",\"columnWidth\":100,\"description\":\"Add Google Analytics Tracking code like: UA-XXXXX-Y\",\"label\":\"Google Analytics Code\",\"placeholder\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '139', '17', '{\"label\":\"Disable Comments\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '140', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '127', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '125', '2', '{\"columnWidth\":40,\"description\":\"You must separate comma Like => 23-44-78, alex@gmail.com\",\"label\":\"Provide the fastest form of contact with you  phone, e-mail\",\"placeholder\":\"23-44-78, alex@gmail.com\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '92', '3', '{\"columnWidth\":40,\"description\":\"Enter your email address to receive messages from the contact form\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '121', '4', '{\"columnWidth\":20,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '122', '5', '{\"columnWidth\":100,\"label\":\"Subject Message\",\"placeholder\":\"\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '98', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '101', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '99', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '123', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '106', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '124', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '128', '12', '{\"label\":\"Welcome message for user\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '141', '13', '{\"label\":\"First Welcome Heading\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '111', '1', '{\"label\":\"Add Menu Icon\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '134', '3', '{\"label\":\"Categories, Tags, Authors, Date\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '111', '0', '{\"collapsed\":\"0\",\"columnWidth\":100,\"description\":\"\",\"label\":\"Site Name\",\"placeholder\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '122', '1', '{\"label\":\"Facebook App ID\",\"placeholder\":\"\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '125', '2', '{\"columnWidth\":50,\"label\":\"Facebook Admin ID\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '103', '2', '{\"columnWidth\":50,\"label\":\"Favicon\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '101', '3', '{\"label\":\"Global Sidebar\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '136', '18', '{\"label\":\"Max Message Per User\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '113', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '105', '20', '{\"description\":\"Add IP Adresses likes examples:  127.0.0.1,192.0.78.9,72.29.124.146 -- with separate comma \\\" , \\\"\",\"label\":\"Disable Ip Adress\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '127', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '97', '14', '{\"columnWidth\":40,\"label\":\"Heading Message\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '100', '15', '{\"columnWidth\":60,\"label\":\"Welcome Message\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '129', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '106', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '124', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '128', '9', '{\"label\":\"Our Team\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '138', '10', '{\"label\":\"Add Employee\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '129', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '126', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '124', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '126', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '127', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '105', '2', '{\"label\":\"About Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '101', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '99', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '123', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '111', '0', '{\"collapsed\":\"0\",\"columnWidth\":50,\"description\":\"\",\"label\":\"Name\",\"placeholder\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '102', '1', '{\"columnWidth\":50,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '97', '2', '{\"collapsed\":\"5\",\"columnWidth\":100,\"label\":\"Simple Biography\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '122', '3', '{\"label\":\"Mail\",\"placeholder\":\"\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '125', '4', '{\"columnWidth\":50,\"label\":\"Phone\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '105', '5', '{\"description\":\"Add Social Profile, With Separate Comma ...\",\"label\":\"Social Profiles\",\"notes\":\"You Can Provide The Following Addresses:\\nGoogle Plus, Twitter, Facebook, Youtube, Pinterest, Linkedin, Tumblr, Medium, Instagram, E-Mail\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', '{\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '102', '1', '{\"columnWidth\":50,\"label\":\"Logo\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '101', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '99', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '113', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '126', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '1', '0', '{\"columnWidth\":40,\"label\":\"Name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '123', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '113', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '127', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '137', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '1', '0', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"tags\":\"-seo\",\"icon\":\"circle-thin\",\"columnWidth\":70,\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeTextarea', 'headline', '0', 'Headline', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":160,\"showCount\":0,\"rows\":2,\"tags\":\"-seo\",\"icon\":\"circle-o-notch\",\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":9,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"tags\":\"-text\",\"icon\":\"file-text-o\",\"textformatters\":[\"TextformatterMarkdownExtra\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"-img\",\"icon\":\"picture-o\",\"fileSchema\":2,\"collapsed\":0,\"themeBorder\":\"none\",\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeTextarea', 'summary', '0', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":3,\"tags\":\"-seo\",\"icon\":\"circle-o\",\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"tags\":\"-text\",\"icon\":\"th-list\",\"themeBorder\":\"card\",\"themeColor\":\"secondary\",\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeImage', 'img_1', '0', 'Img 1', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"-img\",\"icon\":\"picture-o\",\"clone_field\":\"img_2\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeImage', 'img_2', '0', 'Img 2', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"-img\",\"icon\":\"picture-o\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypePage', 'ref_1', '0', 'Ref 1', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1034,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"usb\",\"template_id\":48,\"template_ids\":[50]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeTextarea', 'txtarea_1', '0', 'Txtarea 1', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"-text\",\"icon\":\"text-width\",\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeFieldsetPage', 'seo', '0', 'Add Seo', '{\"template_id\":55,\"parent_id\":1040,\"repeaterLoading\":2,\"repeaterMaxItems\":1,\"repeaterMinItems\":1,\"repeaterFields\":[97,100],\"collapsed\":0,\"tags\":\"-seo\",\"icon\":\"eercast\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeDatetime', 'date', '0', 'Date', '{\"dateOutputFormat\":\"Y-m-d\",\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\",\"defaultToday\":1,\"tags\":\"-date\",\"icon\":\"calendar\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypePage', 'categories', '0', 'Categories', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1075,\"template_id\":54,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"sitemap\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypePage', 'tags', '0', 'Tags', '{\"derefAsPage\":0,\"inputfield\":\"_InputfieldPageAutocomplete\",\"parent_id\":1088,\"template_id\":56,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\",\"tags\":\"-pagereference\",\"icon\":\"tags\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeText', 'txt_1', '0', 'Add Icon', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":1,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\",\"columnWidth\":30,\"placeholder\":\"fa-eercast\",\"description\":\"From [Font Awesome](http:\\/\\/fontawesome.io\\/icons\\/) Example => fa-eercast\",\"themeBorder\":\"none\",\"clone_field\":\"txt_4\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypePage', 'authors', '0', 'Authors', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1133,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"template_id\":58,\"addable\":1,\"operator\":\"%=\",\"searchFields\":\"title\",\"icon\":\"user-secret\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypePage', 'ref_2', '0', 'Enable / Disable Options', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1151,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"usb\",\"template_id\":48}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeFile', 'file_1', '0', 'File 1', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"tags\":\"-files\",\"icon\":\"file\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypeFieldsetTabOpen', 'fieldset_tab_2', '0', 'Custom Options', '{\"closeFieldID\":127,\"collapsed\":0,\"tags\":\"-fieldset\",\"icon\":\"folder-open-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypePage', 'ref_3', '0', 'Contact Options', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1225,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"usb\",\"template_id\":48,\"usePageEdit\":0,\"clone_field\":\"ref_4\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeText', 'txt_2', '0', 'Txt 2', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\",\"columnWidth\":50,\"placeholder\":\"fa-eercast\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('140', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"moderate\":1,\"useNotify\":0,\"deleteSpamDays\":3,\"depth\":0,\"dateFormat\":\"relative\",\"useVotes\":2,\"useStars\":1,\"schemaVersion\":6,\"tags\":\"-blog\",\"icon\":\"comments-o\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeFieldsetTabOpen', 'fieldset_tab_1', '0', 'Seo', '{\"closeFieldID\":124,\"collapsed\":0,\"tags\":\"-fieldset\",\"icon\":\"folder-open-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeFieldsetClose', 'fieldset_tab_1_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_tab_1\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":123,\"tags\":\"-fieldset\",\"icon\":\"folder-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeText', 'txt_3', '0', 'Txt 3', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\",\"clone_field\":\"txt_4\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeFieldsetClose', 'fieldset_tab_2_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_tab_2\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":126,\"tags\":\"-fieldset\",\"icon\":\"folder-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeFieldsetTabOpen', 'fieldset_tab_3', '0', 'Fieldset Tab 3', '{\"closeFieldID\":129,\"collapsed\":0,\"tags\":\"-fieldset\",\"icon\":\"folder-open-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeFieldsetClose', 'fieldset_tab_3_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_tab_3\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":128,\"tags\":\"-fieldset\",\"icon\":\"folder-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('133', 'FieldtypeFieldsetPage', 'global_seo', '0', 'Global Seo', '{\"template_id\":67,\"parent_id\":1311,\"repeaterLoading\":2,\"repeaterMaxItems\":1,\"repeaterMinItems\":1,\"repeaterFields\":[111,122,125],\"collapsed\":0,\"tags\":\"-seo\",\"icon\":\"codiepie\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypeFieldsetOpen', 'fieldset_1', '0', 'Fieldset 1', '{\"closeFieldID\":135,\"collapsed\":0,\"tags\":\"-fieldset\",\"icon\":\"folder-open\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeFieldsetClose', 'fieldset_1_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_1\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":134,\"tags\":\"-fieldset\",\"icon\":\"folder\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeInteger', 'int_1', '0', 'Int 1', '{\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10,\"tags\":\"-integer\",\"icon\":\"subscript\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypePage', 'ref_4', '0', 'Portfolio Categories', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1349,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"ellipsis-v\",\"template_id\":75,\"usePageEdit\":0,\"addable\":1,\"optionColumns\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('138', 'FieldtypeRepeater', 'rep_1', '0', 'Rep 1', '{\"template_id\":78,\"parent_id\":1380,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"handshake-o\",\"repeaterFields\":[111,102,97,122,125,105]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('139', 'FieldtypeCheckbox', 'check_1', '0', 'Check 1', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('141', 'FieldtypeText', 'txt_4', '0', 'Txt 4', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\"}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(171) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(171),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '{\"shortcutSort\":[51,54,56,58,72,75,77,66],\"bookmarks\":{\"_0\":[]}}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"admin_theme\",\"admin_theme\",\"admin_theme\"]}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.83\"}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2017-09-03 15:39:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2017-09-03 15:39:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLogger', '1', '', '2017-09-03 15:39:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'InputfieldIcon', '0', '', '2017-09-03 15:39:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1028}', '2017-09-05 19:37:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'InputfieldRepeater', '0', '', '2017-09-05 19:37:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeFieldsetPage', '35', '{\"repeatersRootPageID\":1028}', '2017-09-05 19:39:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'FieldtypeOptions', '1', '', '2017-09-05 19:40:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'InputfieldPageAutocomplete', '0', '', '2017-09-05 19:41:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'ProcessPageClone', '11', '', '2017-09-05 19:41:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessPagesExportImport', '1', '', '2017-09-05 19:42:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'TracyDebugger', '3', '{\"enabled\":\"\",\"coreBranch\":\"master\",\"allowLogProduction\":1,\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"strictMode\":1,\"strictModeAjax\":null,\"forceScream\":null,\"outputMode\":\"detect\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"logSeverity\":[],\"numLogEntries\":10,\"maxDepth\":3,\"maxLength\":150,\"showDebugBar\":[\"frontend\"],\"hideDebugBar\":\"\",\"hideDebugBarTemplates\":[],\"hideDebugBarModals\":[\"regularModal\",\"inlineModal\"],\"frontendPanels\":[\"processwireInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"templatePath\",\"console\",\"templateEditor\",\"dumpsRecorder\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"processwireLogs\",\"tracyLogs\",\"debugMode\",\"console\",\"dumpsRecorder\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"showPanelLabels\":\"\",\"panelZindex\":100,\"styleWhere\":[],\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"styleAdminColors\":\"local|#ca6500\\ndev.*|#990000\\nstaging.*|#8b0066\",\"showPWInfoPanelIconLabels\":1,\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"pageObject\",\"templateObject\",\"fieldsObject\",\"editLinks\"],\"processwireInfoPanelSections\":[\"versionsList\",\"adminLinks\",\"documentationLinks\"],\"debugModePanelSections\":[\"pagesLoaded\",\"session\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"diagnosticsPanelSections\":[\"filesystemFolders\"],\"snippetsPath\":\"templates\",\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoScanModules\":\"\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"variablesShowPwObjects\":\"\",\"alwaysShowDebugTools\":1,\"respectConfigDebugTools\":\"\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"customPhpCode\":\"\",\"email\":\"\",\"clearEmailSent\":\"\",\"referencePageEdited\":1,\"editor\":\"subl:\\/\\/open\\/?url=file:\\/\\/%file&line=%line\",\"localRootPath\":\"\",\"htaccessUsername\":\"\",\"htaccessPassword\":\"\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"debugAll\",\"da\",\"dump\",\"d\",\"barDump\",\"bd\",\"barDumpLive\",\"bdl\",\"l\",\"timer\",\"t\",\"fireLog\",\"fl\",\"addBreakpoint\",\"bp\",\"templateVars\",\"tv\"],\"hooksPwVersion\":\"3.0.82\",\"timerkey\":\"-1509716071.5546\",\"recordedPages\":[1036,1037,1131,1234,1235,1236,1237,1238,1241,1242,1243,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1281,1282,1283,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1300,1307,1325,1326,1327,1328,1329]}', '2017-09-05 19:45:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'FieldtypeComments', '1', '', '2017-09-10 21:31:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'InputfieldCommentsAdmin', '0', '', '2017-09-10 21:31:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessCommentsManager', '1', '', '2017-09-10 21:31:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'AdminThemeReno', '10', '{\"colors\":\"\",\"avatar_field_user\":\"\",\"userFields_user\":\"name\",\"notices\":\"fa-bell\",\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2017-09-24 12:48:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'AdminThemeUikit', '14', '{\"useAsLogin\":1,\"layout\":\"\",\"cssURL\":\"\",\"logoURL\":\"\",\"noBorderTypes\":[],\"offsetTypes\":[],\"-dups\":[\"\\/site\\/modules\\/AdminThemeUikit\\/AdminThemeUikit.module\",\"\\/wire\\/modules\\/AdminTheme\\/AdminThemeUikit\\/AdminThemeUikit.module\"],\"-dups-use\":\"\\/wire\\/modules\\/AdminTheme\\/AdminThemeUikit\\/AdminThemeUikit.module\"}', '2017-11-09 09:25:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'MarkupRSS', '0', '{\"title\":\"Untitled RSS Feed\",\"url\":\"\",\"description\":\"\",\"xsl\":\"\",\"css\":\"\",\"copyright\":\"\",\"ttl\":60,\"itemTitleField\":\"title\",\"itemDescriptionField\":\"summary\",\"itemDescriptionLength\":1024,\"itemDateField\":\"created\"}', '2017-10-19 19:53:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'TextformatterMarkdownExtra', '1', '{\"flavor\":\"2\"}', '2017-10-19 21:36:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'MarkupSitemap', '3', '{\"sitemap_include_templates\":[],\"sitemap_image_fields\":[],\"sitemap_stylesheet\":1,\"sitemap_stylesheet_custom\":\"\",\"o1019\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1153\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1106\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o27\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1304\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1147\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1155\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1041\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1343\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1349\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1345\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1347\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1355\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1075\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1020\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1361\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1365\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1369\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1379\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1389\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}}}', '2017-11-02 16:17:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('187', 'MarkupCache', '3', '', '2017-11-02 16:19:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'ProcessForgotPassword', '1', '', '2017-11-08 22:39:29');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1408 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2017-11-08 22:20:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2017-11-12 16:52:40', '40', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '21');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2017-09-03 15:39:47', '40', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '22');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2017-09-03 15:39:50', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2017-09-03 15:39:48', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1039', '2017-11-02 23:31:30', '41', '2017-09-03 15:39:15', '3', '2017-09-03 15:39:15', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'rafaoski', '1', '2017-11-12 16:52:40', '40', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '2', '2017-09-03 15:39:15', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '41', '2017-09-03 15:39:15', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2017-09-03 15:39:15', '40', '2017-09-03 15:39:15', '40', '2017-09-03 15:39:15', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2017-09-03 15:39:15', '40', '2017-09-03 15:39:15', '40', '2017-09-03 15:39:15', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2017-09-03 15:39:33', '40', '2017-09-03 15:39:33', '40', '2017-09-03 15:39:33', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2017-09-03 15:39:33', '40', '2017-09-03 15:39:33', '40', '2017-09-03 15:39:33', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2017-09-03 15:39:36', '40', '2017-09-03 15:39:36', '40', '2017-09-03 15:39:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2017-09-03 15:39:36', '40', '2017-09-03 15:39:36', '40', '2017-09-03 15:39:36', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2017-09-03 15:39:36', '40', '2017-09-03 15:39:36', '40', '2017-09-03 15:39:36', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1', '45', 'search', '1029', '2017-11-02 23:31:18', '41', '2017-09-04 19:15:51', '41', '2017-09-04 19:15:51', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1', '44', 'options', '1025', '2017-11-10 12:34:07', '41', '2017-09-04 19:43:12', '41', '2017-09-05 18:19:48', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1', '46', 'site-map', '1', '2017-11-06 20:36:42', '41', '2017-09-04 19:44:30', '41', '2017-09-04 19:44:30', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1147', '1', '60', 'contact', '1', '2017-11-09 15:03:09', '41', '2017-09-14 17:52:24', '41', '2017-09-14 17:52:24', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1148', '1040', '55', 'for-page-1147', '1', '2017-11-09 15:03:09', '41', '2017-09-14 17:53:32', '41', '2017-09-14 17:53:32', '29');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1149', '1133', '58', 'tom-hanks', '1', '2017-09-14 19:46:17', '41', '2017-09-14 19:38:09', '41', '2017-09-14 19:38:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1150', '1040', '55', 'for-page-1149', '1', '2017-09-14 19:46:17', '41', '2017-09-14 19:38:09', '41', '2017-09-14 19:38:15', '26');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1151', '1', '47', 'custom-options', '1029', '2017-09-15 22:14:03', '41', '2017-09-15 22:13:05', '41', '2017-09-15 22:13:05', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '2', '2', 'repeaters', '1036', '2017-09-05 19:37:43', '41', '2017-09-05 19:37:43', '41', '2017-09-05 19:37:43', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '3', '2', 'clone', '1024', '2017-09-05 19:41:53', '41', '2017-09-05 19:41:53', '41', '2017-09-05 19:41:53', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '31', '5', 'page-clone', '1', '2017-09-05 19:41:53', '41', '2017-09-05 19:41:53', '41', '2017-09-05 19:41:53', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '31', '5', 'page-clone-tree', '1', '2017-09-05 19:41:53', '41', '2017-09-05 19:41:53', '41', '2017-09-05 19:41:53', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '3', '2', 'export-import', '1', '2017-09-05 19:42:08', '41', '2017-09-05 19:42:08', '41', '2017-09-05 19:42:08', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '1', '47', 'switch-settings', '1029', '2017-09-14 21:54:38', '41', '2017-09-06 10:43:30', '41', '2017-09-06 10:43:30', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1034', '48', 'enable-minify-html', '1029', '2017-09-18 19:04:16', '41', '2017-09-06 10:44:11', '41', '2017-09-06 10:44:11', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1028', '2', 'for-field-106', '17', '2017-09-10 19:26:51', '41', '2017-09-10 19:26:51', '41', '2017-09-10 19:26:51', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1152', '1151', '48', 'disable-sidebar', '1029', '2017-09-15 22:17:47', '41', '2017-09-15 22:13:34', '41', '2017-09-15 22:13:34', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1154', '1040', '55', 'for-page-1153', '1025', '2017-11-02 23:10:53', '41', '2017-09-17 15:35:38', '41', '2017-09-17 15:35:38', '25');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1', '52', 'blog', '1', '2017-11-08 21:59:25', '41', '2017-09-10 19:29:25', '41', '2017-09-10 19:43:38', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1153', '1', '29', 'privacy-policy', '1025', '2017-11-02 23:10:53', '41', '2017-09-17 15:35:23', '41', '2017-09-17 15:35:23', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1163', '1133', '58', 'mike-johnston', '1', '2017-09-18 13:41:52', '41', '2017-09-18 13:33:17', '41', '2017-09-18 13:33:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1071', '1040', '55', 'for-page-1020', '1', '2017-11-06 20:36:42', '41', '2017-09-10 21:10:21', '41', '2017-09-10 21:10:21', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1069', '1040', '55', 'for-page-1041', '1', '2017-11-08 21:59:25', '41', '2017-09-10 21:08:43', '41', '2017-09-10 21:08:43', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1164', '1040', '55', 'for-page-1163', '1', '2017-09-18 13:41:52', '41', '2017-09-18 13:33:17', '41', '2017-09-18 13:33:17', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1059', '1040', '55', 'for-page-1', '1', '2017-11-08 22:20:15', '41', '2017-09-10 20:59:35', '41', '2017-09-10 20:59:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1173', '1034', '48', 'disable-comments', '1029', '2017-09-18 18:27:47', '41', '2017-09-18 18:27:41', '41', '2017-09-18 18:27:41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1155', '1041', '51', 'pulp-fiction', '1', '2017-11-12 17:09:10', '41', '2017-09-18 12:40:57', '41', '2017-09-18 12:42:11', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1073', '1040', '55', 'for-page-1018', '1025', '2017-11-02 23:31:18', '41', '2017-09-10 21:13:37', '41', '2017-09-10 21:13:37', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1074', '1040', '55', 'for-page-27', '1025', '2017-11-02 23:31:30', '41', '2017-09-10 21:13:53', '41', '2017-09-10 21:13:53', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1075', '1', '53', 'categories', '1', '2017-11-06 20:35:06', '41', '2017-09-10 21:23:19', '41', '2017-09-10 21:24:50', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1165', '1075', '54', 'cms', '1', '2017-10-19 20:36:18', '41', '2017-09-18 13:43:44', '41', '2017-09-18 13:43:44', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1166', '1040', '55', 'for-page-1165', '1', '2017-10-19 20:36:18', '41', '2017-09-18 13:43:44', '41', '2017-09-18 13:43:44', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1128', '1088', '56', 'happy', '1', '2017-09-11 09:39:10', '41', '2017-09-11 09:39:10', '41', '2017-09-11 09:39:10', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1129', '1040', '55', 'for-page-1128', '1', '2017-09-11 09:39:10', '41', '2017-09-11 09:39:10', '41', '2017-09-11 09:39:10', '26');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1130', '1040', '55', 'for-page-1075', '1', '2017-11-06 20:35:06', '41', '2017-09-11 11:26:43', '41', '2017-09-11 11:26:43', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1124', '1041', '51', 'what-makes-us-happy', '1', '2017-10-17 20:18:27', '41', '2017-09-11 09:38:13', '41', '2017-09-11 09:39:00', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1125', '1040', '55', 'for-page-1124', '1', '2017-10-17 20:18:27', '41', '2017-09-11 09:38:13', '41', '2017-09-11 09:39:00', '24');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1126', '1075', '54', 'psychology', '1', '2017-09-11 09:38:59', '41', '2017-09-11 09:38:59', '41', '2017-09-11 09:38:59', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1127', '1040', '55', 'for-page-1126', '1', '2017-09-11 09:38:59', '41', '2017-09-11 09:38:59', '41', '2017-09-11 09:38:59', '25');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1086', '22', '2', 'comments', '1', '2017-09-10 21:31:34', '41', '2017-09-10 21:31:34', '41', '2017-09-10 21:31:34', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1087', '31', '5', 'comments-manager', '1', '2017-09-10 21:31:34', '41', '2017-09-10 21:31:34', '41', '2017-09-10 21:31:34', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1088', '1', '57', 'tags', '1025', '2017-11-06 20:34:27', '41', '2017-09-10 21:36:46', '41', '2017-09-10 21:36:59', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1089', '1040', '55', 'for-page-1088', '1025', '2017-11-06 20:34:28', '41', '2017-09-10 21:36:46', '41', '2017-09-10 21:36:59', '21');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1136', '1040', '55', 'for-page-1135', '1', '2017-09-14 19:33:53', '41', '2017-09-13 16:22:59', '41', '2017-09-13 16:23:06', '30');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1134', '1040', '55', 'for-page-1133', '1025', '2017-11-08 22:20:15', '41', '2017-09-13 16:22:28', '41', '2017-10-19 18:44:48', '29');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1135', '1133', '58', 'casanova', '1', '2017-09-14 19:33:53', '41', '2017-09-13 16:22:59', '41', '2017-09-13 16:23:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1133', '1', '59', 'authors', '1025', '2017-11-08 22:20:15', '41', '2017-09-13 16:22:28', '41', '2017-10-19 18:44:48', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1160', '1040', '55', 'for-page-1159', '1', '2017-10-19 15:53:50', '41', '2017-09-18 13:30:24', '41', '2017-09-18 13:33:18', '25');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1107', '1040', '55', 'for-page-1106', '1', '2017-11-02 23:04:22', '41', '2017-09-11 08:23:29', '41', '2017-09-11 08:24:31', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1108', '1075', '54', 'css', '1', '2017-09-11 08:24:31', '41', '2017-09-11 08:24:31', '41', '2017-09-11 08:24:31', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1109', '1040', '55', 'for-page-1108', '1', '2017-09-11 08:24:31', '41', '2017-09-11 08:24:31', '41', '2017-09-11 08:24:31', '28');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1106', '1041', '51', 'a-complete-guide-to-grid', '1', '2017-11-02 23:04:22', '41', '2017-09-11 08:23:29', '41', '2017-09-11 08:24:31', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1167', '1088', '56', 'best', '1', '2017-09-18 13:44:02', '41', '2017-09-18 13:44:02', '41', '2017-09-18 13:44:02', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1168', '1040', '55', 'for-page-1167', '1', '2017-09-18 13:44:02', '41', '2017-09-18 13:44:02', '41', '2017-09-18 13:44:02', '28');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1169', '1075', '54', 'top-500', '1', '2017-09-18 17:43:39', '41', '2017-09-18 17:43:39', '41', '2017-09-18 17:43:39', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1170', '1040', '55', 'for-page-1169', '1', '2017-09-18 17:43:39', '41', '2017-09-18 17:43:39', '41', '2017-09-18 17:43:39', '26');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1116', '1088', '56', 'grid', '1', '2017-09-11 08:27:46', '41', '2017-09-11 08:27:46', '41', '2017-09-11 08:27:46', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1117', '1040', '55', 'for-page-1116', '1', '2017-09-11 08:27:46', '41', '2017-09-11 08:27:46', '41', '2017-09-11 08:27:46', '32');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1131', '1088', '56', 'joker', '1', '2017-09-11 18:38:32', '41', '2017-09-11 18:38:32', '41', '2017-09-11 18:38:32', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1132', '1040', '55', 'for-page-1131', '1', '2017-09-11 18:38:32', '41', '2017-09-11 18:38:32', '41', '2017-09-11 18:38:32', '28');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1158', '1040', '55', 'for-page-1157', '1', '2017-09-18 13:21:12', '41', '2017-09-18 12:42:11', '41', '2017-09-18 12:42:11', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1159', '1041', '51', 'so-what-is-the-best-cms', '1', '2017-10-19 15:53:50', '41', '2017-09-18 13:30:24', '41', '2017-09-18 13:33:18', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1156', '1040', '55', 'for-page-1155', '1', '2017-11-12 17:09:10', '41', '2017-09-18 12:40:57', '41', '2017-09-18 12:42:11', '26');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1157', '1133', '58', 'quentin-tarantinos', '1', '2017-09-18 13:21:12', '41', '2017-09-18 12:42:11', '41', '2017-09-18 12:42:11', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1171', '1088', '56', 'best-movie', '1', '2017-09-18 17:47:32', '41', '2017-09-18 17:47:32', '41', '2017-09-18 17:47:32', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1172', '1040', '55', 'for-page-1171', '1', '2017-09-18 17:47:32', '41', '2017-09-18 17:47:32', '41', '2017-09-18 17:47:32', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1225', '1', '47', 'contact-options', '1029', '2017-10-15 11:45:06', '41', '2017-10-15 11:42:17', '41', '2017-10-15 11:42:17', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1226', '1225', '48', 'enable-images', '1029', '2017-10-15 11:45:13', '41', '2017-10-15 11:44:05', '41', '2017-10-15 11:44:05', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1227', '1225', '48', 'enable-pdf', '1029', '2017-10-15 11:45:18', '41', '2017-10-15 11:44:44', '41', '2017-10-15 11:44:44', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1307', '1034', '48', 'enable-img-lazy-load', '1029', '2017-10-19 19:20:41', '41', '2017-10-19 19:20:16', '41', '2017-10-19 19:20:32', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1306', '1034', '48', 'enable-gulp-watch', '1029', '2017-10-18 19:58:28', '41', '2017-10-18 19:51:10', '41', '2017-10-18 19:51:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1304', '1147', '66', '1508263770-max-kolonko', '1025', '2017-11-09 14:23:46', '41', '2017-10-17 20:09:30', '41', '2017-11-03 11:17:39', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1305', '1034', '48', 'enable-quiet-light', '1029', '2017-10-18 18:23:57', '41', '2017-10-18 12:21:57', '41', '2017-10-18 12:21:57', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1311', '1028', '2', 'for-field-133', '17', '2017-11-02 22:04:58', '41', '2017-11-02 22:04:58', '41', '2017-11-02 22:04:58', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1312', '1311', '67', 'for-page-1019', '1025', '2017-11-10 12:34:07', '41', '2017-11-02 22:06:06', '41', '2017-11-02 22:06:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1348', '1040', '55', 'for-page-1347', '1', '2017-11-06 21:03:01', '41', '2017-11-06 17:18:21', '41', '2017-11-06 17:20:07', '29');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1349', '1', '74', 'portfolio-categories', '1025', '2017-11-08 22:19:48', '41', '2017-11-06 17:38:26', '41', '2017-11-06 17:38:51', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1350', '1040', '55', 'for-page-1349', '1025', '2017-11-08 22:19:48', '41', '2017-11-06 17:38:26', '41', '2017-11-06 17:38:51', '30');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1351', '1349', '75', '1-category', '1', '2017-11-06 17:39:35', '41', '2017-11-06 17:39:13', '41', '2017-11-06 17:39:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1352', '1040', '55', 'for-page-1351', '1', '2017-11-06 17:39:35', '41', '2017-11-06 17:39:13', '41', '2017-11-06 17:39:35', '31');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1347', '1343', '72', '2-portfolio', '1', '2017-11-06 21:03:01', '41', '2017-11-06 17:18:21', '41', '2017-11-06 17:20:07', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1346', '1040', '55', 'for-page-1345', '1', '2017-11-06 21:01:55', '41', '2017-11-06 17:18:02', '41', '2017-11-06 21:01:55', '28');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1345', '1343', '72', '1-portfolio', '1', '2017-11-06 21:01:55', '41', '2017-11-06 17:18:02', '41', '2017-11-06 17:18:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1340', '1151', '48', 'enable-global-sidebar', '1029', '2017-11-03 17:38:30', '41', '2017-11-03 17:38:16', '41', '2017-11-03 17:38:16', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1343', '1', '73', 'portfolios', '1', '2017-11-08 22:19:40', '41', '2017-11-06 17:14:28', '41', '2017-11-06 17:14:46', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1344', '1040', '55', 'for-page-1343', '1', '2017-11-08 22:19:40', '41', '2017-11-06 17:14:28', '41', '2017-11-06 17:14:46', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1353', '1349', '75', '2-category', '1', '2017-11-06 17:39:38', '41', '2017-11-06 17:39:29', '41', '2017-11-06 17:39:38', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1354', '1040', '55', 'for-page-1353', '1', '2017-11-06 17:39:38', '41', '2017-11-06 17:39:29', '41', '2017-11-06 17:39:38', '32');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1355', '1343', '72', '3-portfolio', '1', '2017-11-06 22:09:02', '41', '2017-11-06 19:39:39', '41', '2017-11-06 19:39:52', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1356', '1040', '55', 'for-page-1355', '1', '2017-11-06 22:09:02', '41', '2017-11-06 19:39:39', '41', '2017-11-06 19:39:52', '33');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1357', '1349', '75', '3-category', '1', '2017-11-06 19:39:52', '41', '2017-11-06 19:39:52', '41', '2017-11-06 19:39:52', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1358', '1040', '55', 'for-page-1357', '1', '2017-11-06 19:39:52', '41', '2017-11-06 19:39:52', '41', '2017-11-06 19:39:52', '34');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1361', '1343', '72', '4-portfolio', '1', '2017-11-06 22:09:24', '41', '2017-11-06 20:45:14', '41', '2017-11-06 20:45:27', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1362', '1040', '55', 'for-page-1361', '1', '2017-11-06 22:09:24', '41', '2017-11-06 20:45:14', '41', '2017-11-06 20:45:27', '36');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1365', '1343', '72', '6-portfolio', '1', '2017-11-06 21:02:48', '41', '2017-11-06 20:46:59', '41', '2017-11-06 20:47:08', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1366', '1040', '55', 'for-page-1365', '1', '2017-11-06 21:02:48', '41', '2017-11-06 20:46:59', '41', '2017-11-06 20:47:08', '38');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1370', '1040', '55', 'for-page-1369', '1', '2017-11-12 16:58:18', '41', '2017-11-07 01:09:43', '41', '2017-11-07 01:09:59', '38');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1369', '1', '76', 'about-us', '1', '2017-11-12 16:58:18', '41', '2017-11-07 01:09:43', '41', '2017-11-07 01:09:59', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1390', '1040', '55', 'for-page-1389', '2049', '2017-11-08 16:47:12', '41', '2017-11-08 16:46:25', '41', '2017-11-08 16:47:00', '39');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1379', '1151', '48', 'enable-container', '1029', '2017-11-07 13:57:54', '41', '2017-11-07 13:57:41', '41', '2017-11-07 13:57:44', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1380', '1028', '2', 'for-field-138', '17', '2017-11-07 14:18:38', '41', '2017-11-07 14:18:38', '41', '2017-11-07 14:18:38', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1381', '1380', '2', 'for-page-1369', '17', '2017-11-07 14:28:06', '41', '2017-11-07 14:28:06', '41', '2017-11-07 14:28:06', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1383', '1381', '78', '1510061473-1061-1', '1', '2017-11-08 15:08:52', '41', '2017-11-07 14:31:13', '41', '2017-11-07 14:35:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1384', '1381', '78', '1510146474-6544-1', '1', '2017-11-08 15:10:45', '41', '2017-11-08 14:07:54', '41', '2017-11-08 14:08:05', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1387', '1381', '78', '1510151791-0986-1', '1', '2017-11-08 20:31:39', '41', '2017-11-08 15:36:31', '41', '2017-11-08 16:31:24', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1388', '1381', '78', '1510155223-9549-1', '1', '2017-11-08 20:31:39', '41', '2017-11-08 16:33:43', '41', '2017-11-08 16:34:41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1389', '1369', '77', '1-child', '1', '2017-11-08 16:47:00', '41', '2017-11-08 16:46:25', '41', '2017-11-08 16:47:00', '0');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1087', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1071', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1073', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1089', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1107', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1109', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1117', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1125', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1127', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1129', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1130', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1132', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1134', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1136', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1148', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1150', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1154', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1156', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1158', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1160', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1164', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1166', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1168', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1170', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1172', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1312', '2', '2017-11-03 16:18:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1344', '2', '2017-11-06 17:14:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1340', '1', '2017-11-03 17:38:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1343', '1', '2017-11-06 17:14:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1346', '2', '2017-11-06 17:18:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1345', '1', '2017-11-06 17:18:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1348', '2', '2017-11-06 17:18:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1347', '1', '2017-11-06 17:18:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1350', '2', '2017-11-06 17:38:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1349', '1', '2017-11-06 17:38:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1352', '2', '2017-11-06 17:39:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1351', '1', '2017-11-06 17:39:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1354', '2', '2017-11-06 17:39:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1353', '1', '2017-11-06 17:39:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1356', '2', '2017-11-06 19:39:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1355', '1', '2017-11-06 19:39:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1358', '2', '2017-11-06 19:39:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1357', '1', '2017-11-06 19:39:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1362', '2', '2017-11-06 20:45:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1361', '1', '2017-11-06 20:45:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1366', '2', '2017-11-06 20:46:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1365', '1', '2017-11-06 20:47:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1369', '1', '2017-11-07 01:09:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1370', '2', '2017-11-07 01:09:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1389', '1', '2017-11-08 16:46:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1390', '2', '2017-11-08 16:46:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1379', '1', '2017-11-07 13:57:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1383', '2', '2017-11-07 14:31:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1384', '2', '2017-11-08 14:07:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1387', '2', '2017-11-08 15:36:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1388', '2', '2017-11-08 16:33:43');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1028', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '1028');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1311', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1311', '1028');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1380', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1380', '1028');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1381', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1381', '1028');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1381', '1380');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-home title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1510460580,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-file title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('67', 'repeater_global_seo', '121', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"FieldsetPage\",\"pageLabelField\":\"for_page_path\",\"noGlobal\":1,\"compile\":3,\"modified\":1509656698}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'options', '98', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"compile\":3,\"tags\":\"-options\",\"modified\":1510174254}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'search', '99', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-search title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'sitemap', '100', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-map title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'switch-settings', '101', '0', '0', '{\"noParents\":1,\"childTemplates\":[48],\"slashUrls\":1,\"pageLabelField\":\"fa-list-ol title\",\"compile\":3,\"tags\":\"-options\",\"modified\":1508060610}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'toggle', '102', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[47],\"slashUrls\":1,\"pageLabelField\":\"fa-toggle-on title\",\"noShortcut\":1,\"compile\":3,\"tags\":\"-options\",\"modified\":1510170206}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'blog-post', '105', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[52],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-quote-left title\",\"compile\":3,\"label\":\"Post\",\"tags\":\"-blog\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'blog', '106', '0', '0', '{\"noParents\":-1,\"childTemplates\":[51],\"allowPageNum\":1,\"urlSegments\":[\"rss\"],\"slashUrls\":1,\"pageLabelField\":\"fa-ravelry title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'categories', '107', '0', '0', '{\"noParents\":-1,\"childTemplates\":[54],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-sitemap title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'category', '108', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[53],\"slashUrls\":1,\"pageLabelField\":\"fa-free-code-camp title\",\"compile\":3,\"label\":\"Category\",\"tags\":\"-blog\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'repeater_seo', '109', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"FieldsetPage\",\"pageLabelField\":\"for_page_path\",\"noGlobal\":1,\"compile\":3,\"modified\":1508439066}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'tag', '110', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[57],\"slashUrls\":1,\"pageLabelField\":\"fa-tag title\",\"compile\":3,\"label\":\"Tag\",\"tags\":\"-blog\",\"modified\":1510267842,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'tags', '111', '0', '0', '{\"noParents\":-1,\"childTemplates\":[56],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-tags title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'author', '112', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[59],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-user-secret title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1510187962,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'authors', '113', '0', '0', '{\"noParents\":-1,\"childTemplates\":[58],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-users title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'contact', '114', '0', '0', '{\"sortfield\":\"-111\",\"noParents\":-1,\"childTemplates\":[66],\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-open-o title\",\"compile\":3,\"tags\":\"-contact\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('66', 'contact-item', '120', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[60],\"slashUrls\":1,\"pageLabelField\":\"fa-smile-o email txt_1 txt_2\",\"compile\":3,\"label\":\"Contact Item\",\"tags\":\"-contact\",\"modified\":1510233753}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('73', 'portfolio', '127', '0', '0', '{\"noParents\":-1,\"childTemplates\":[72],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-th title\",\"compile\":3,\"tags\":\"-portfolio\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('72', 'portfolio-item', '126', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[73],\"slashUrls\":1,\"pageLabelField\":\"fa-paw title\",\"compile\":3,\"label\":\"Portfolio Item\",\"tags\":\"-portfolio\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('74', 'portfolio-categories', '128', '0', '0', '{\"noParents\":-1,\"childTemplates\":[75],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-th-large title\",\"compile\":3,\"tags\":\"-portfolio\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('75', 'portfolio-category', '129', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[74],\"slashUrls\":1,\"pageLabelField\":\"fa-first-order title\",\"compile\":3,\"label\":\"Portfolio Category\",\"tags\":\"-portfolio\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('76', 'abot', '130', '0', '0', '{\"noParents\":-1,\"childTemplates\":[77],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-simplybuilt title\",\"compile\":3,\"tags\":\"-about\",\"modified\":1510503335,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('77', 'about-single', '131', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[76],\"slashUrls\":1,\"pageLabelField\":\"fa-hand-spock-o title\",\"compile\":3,\"label\":\"About Item\",\"tags\":\"-about\",\"modified\":1510460580,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('78', 'repeater_rep_1', '132', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1510060718}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":50,"numCreateTables":56,"numInserts":1049,"numSeconds":0}