-- CREATE DATABASE SUSForum;
-- CREATE SCHEMA public;

DROP TABLE IF EXISTS t_user CASCADE;
CREATE TABLE t_user -- 用户表
(
    id           char(19)           NOT NULL,
    username     varchar(255)       NOT NULL,
    password     varchar(255)       NOT NULL,
    nick_name    varchar(255)       NULL,
    email        varchar(255)       NULL,
    avatar       varchar(255)       NULL,
    role         smallint DEFAULT 1 NOT NULL,
    gmt_create   varchar(255)       NOT NULL,
    gmt_modified varchar(255)       NOT NULL,
    PRIMARY KEY (id)
);
COMMENT ON TABLE t_user IS '用户表';
COMMENT ON COLUMN t_user.id IS '主键ID';
COMMENT ON COLUMN t_user.username IS '用户名';
COMMENT ON COLUMN t_user.password IS '密码';
COMMENT ON COLUMN t_user.nick_name IS '昵称';
COMMENT ON COLUMN t_user.email IS '邮箱';
COMMENT ON COLUMN t_user.avatar IS '头像';
COMMENT ON COLUMN t_user.role IS '角色（0管理员、1普通用户）';
COMMENT ON COLUMN t_user.gmt_create IS '创建时间';
COMMENT ON COLUMN t_user.gmt_modified IS '修改时间';

DROP TABLE IF EXISTS t_collection CASCADE;
CREATE TABLE t_collection --收藏表
(
    id           char(19)     NOT NULL,
    user_id      char(19)     NOT NULL,
    topic_id     char(19)     NOT NULL,
    article_id   char(19)     NOT NULL,
    gmt_create   varchar(255) NOT NULL,
    gmt_modified varchar(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (topic_id) REFERENCES t_topic,
    FOREIGN KEY (article_id) REFERENCES t_article
);
COMMENT ON TABLE t_collection IS '收藏表';
COMMENT ON COLUMN t_collection.id IS '主键ID';
COMMENT ON COLUMN t_collection.user_id IS '用户ID';
COMMENT ON COLUMN t_collection.topic_id IS '话题ID';
COMMENT ON COLUMN t_collection.article_id IS '文章ID';

DROP TABLE IF EXISTS t_article CASCADE;
CREATE TABLE t_article -- 文章表
(
    id           char(19)              NOT NULL,
    title        varchar(255)          NOT NULL,
    content      varchar(255)          NULL,
    user_id      char(19)              NOT NULL,
    tags         varchar(255)          NULL,
    likes        int     DEFAULT 0     NOT NULL,
    cover        varchar(255)          NULL,
    is_anonymous boolean DEFAULT false NOT NULL,
    gmt_create   varchar(255)          NOT NULL,
    gmt_modified varchar(255)          NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES t_user
);
COMMENT ON TABLE t_article IS '文章表';
COMMENT ON COLUMN t_article.id IS '主键ID';
COMMENT ON COLUMN t_article.title IS '文章标题';
COMMENT ON COLUMN t_article.content IS '文章内容';
COMMENT ON COLUMN t_article.user_id IS '文章提出者（外键关联t_user）';
COMMENT ON COLUMN t_article.tags IS '文章标签';
COMMENT ON COLUMN t_article.likes IS '点赞人数';
COMMENT ON COLUMN t_article.cover IS '文章封面';
COMMENT ON COLUMN t_article.is_anonymous IS '是否匿名';
COMMENT ON COLUMN t_article.gmt_create IS '创建时间';
COMMENT ON COLUMN t_article.gmt_modified IS '修改时间';

DROP TABLE IF EXISTS t_article_comment CASCADE;
CREATE TABLE t_article_comment -- 文章下的评论表
(
    id           char(19)                   NOT NULL,
    content      varchar(255)               NOT NULL,
    article_id   char(19)                   NOT NULL,
    path         varchar(255) DEFAULT '.'   NOT NULL,
    user_id      char(19)                   NOT NULL,
    likes        int          DEFAULT 0     NOT NULL,
    is_anonymous boolean      DEFAULT false NOT NULL,
    gmt_create   varchar(255)               NOT NULL,
    gmt_modified varchar(255)               NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (article_id) REFERENCES t_article,
    FOREIGN KEY (user_id) REFERENCES t_user
);
COMMENT ON TABLE t_article_comment IS '文章下的评论表';
COMMENT ON COLUMN t_article_comment.id IS '主键ID';
COMMENT ON COLUMN t_article_comment.content IS '评论内容';
COMMENT ON COLUMN t_article_comment.article_id IS '评论的文章（外键关联t_article）';
COMMENT ON COLUMN t_article_comment.user_id IS '评论提出者（外键关联t_user）';
COMMENT ON COLUMN t_article_comment.is_anonymous IS '是否匿名';
COMMENT ON COLUMN t_article_comment.gmt_create IS '创建时间';
COMMENT ON COLUMN t_article_comment.gmt_modified IS '修改时间';

DROP TABLE IF EXISTS t_topic CASCADE;
CREATE TABLE t_topic -- 话题表
(
    id           char(19)              NOT NULL,
    title        varchar(255)          NOT NULL,
    user_id      char(19)              NOT NULL,
    is_anonymous boolean DEFAULT false NOT NULL,
    views        int     DEFAULT 0     NOT NULL,
    answers      int     DEFAULT 0     NOT NULL,
    likes        int     DEFAULT 0     NOT NULL,
    gmt_create   varchar(255)          NOT NULL,
    gmt_modified varchar(255)          NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES t_user
);
COMMENT ON TABLE t_topic IS '话题表';
COMMENT ON COLUMN t_topic.id IS '主键ID';
COMMENT ON COLUMN t_topic.title IS '话题标题';
COMMENT ON COLUMN t_topic.user_id IS '话题提出者（外键关联t_user）';
COMMENT ON COLUMN t_topic.is_anonymous IS '是否匿名';
COMMENT ON COLUMN t_topic.gmt_create IS '创建时间';
COMMENT ON COLUMN t_topic.gmt_modified IS '修改时间';

DROP TABLE IF EXISTS t_comment CASCADE;
CREATE TABLE t_comment -- 话题下的评论表
(
    id           char(19)                   NOT NULL,
    content      varchar(255)               NOT NULL,
    topic_id     char(19)                   NOT NULL,
    path         varchar(255) DEFAULT '.'   NOT NULL,
    user_id      char(19)                   NOT NULL,
    likes        int          DEFAULT 0     NOT NULL,
    is_anonymous boolean      DEFAULT false NOT NULL,
    gmt_create   varchar(255)               NOT NULL,
    gmt_modified varchar(255)               NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (topic_id) REFERENCES t_topic,
    FOREIGN KEY (user_id) REFERENCES t_user
);
COMMENT ON TABLE t_comment IS '话题下的评论表';
COMMENT ON COLUMN t_comment.id IS '主键ID';
COMMENT ON COLUMN t_comment.content IS '评论内容';
COMMENT ON COLUMN t_comment.topic_id IS '评论的话题（外键关联t_topic）';
COMMENT ON COLUMN t_comment.user_id IS '评论提出者（外键关联t_user）';
COMMENT ON COLUMN t_comment.is_anonymous IS '是否匿名';
COMMENT ON COLUMN t_comment.gmt_create IS '创建时间';
COMMENT ON COLUMN t_comment.gmt_modified IS '修改时间';


