DROP TABLE IF EXISTS users;

create table
    IF not exists users (
        `id` char(36) COLLATE utf8mb4_general_ci NOT NULL,
        `name` VARCHAR(20) NOT NULL,
        `count` INT NOT NULL,
        `updated_at` Datetime DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE `unique_name_count` (`name`, `count`)
    ) DEFAULT CHARSET = utf8 COLLATE = utf8_bin;