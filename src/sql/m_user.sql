-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id`         INT(11)      NOT NULL AUTO_INCREMENT,
  `user_name`  VARCHAR(100) NOT NULL
  COMMENT '登录名',
  `password`   VARCHAR(100) NOT NULL
  COMMENT '密码',
  `email`      VARCHAR(100) NOT NULL
  COMMENT '邮箱',
  `phone`      VARCHAR(100) NOT NULL
  COMMENT '手机号',
  `status`     INT(3)       NOT NULL DEFAULT '0'
  COMMENT '状态,默认正常',
  `created_at` DATETIME     NOT NULL
  COMMENT '创建时间',
  `created_by` VARCHAR(100) NOT NULL
  COMMENT '创建人',
  `changed_at` DATETIME              DEFAULT NULL
  COMMENT '修改时间',
  `changed_by` VARCHAR(100)          DEFAULT NULL
  COMMENT '修改人',
  `version`    INT(10)      NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNI_ID` (`id`) USING BTREE,
  UNIQUE KEY `UNI_UNAME` (`user_name`) USING BTREE
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;

INSERT INTO m_user (user_name, `password`, email, phone, created_at, created_by)
VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '13111111111', now(), 'System');