-- +migrate Up
CREATE TABLE users (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE users_items (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_user_items_users1_idx` (`user_id`),
  CONSTRAINT `fk_users_user_items_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);

-- +migrate Down
DROP TABLE users_items;
DROP TABLE users;

