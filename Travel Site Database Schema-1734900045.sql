CREATE TABLE IF NOT EXISTS `users` (
	`user_id` int NOT NULL,
	`username` varchar(255) NOT NULL DEFAULT '50',
	`email` varchar(255) NOT NULL DEFAULT '100',
	`password` varchar(255) NOT NULL DEFAULT '255',
	`first_name` varchar(255) DEFAULT '50',
	`last_name` varchar(255) DEFAULT '50',
	`date_of_birth` date,
	`created_at` timestamp NOT NULL,
	`updated_at` timestamp,
	`is_active` boolean NOT NULL DEFAULT '1',
	PRIMARY KEY (`user_id`)
);

CREATE TABLE IF NOT EXISTS `content` (
	`content_id` int NOT NULL,
	`title` varchar(255) NOT NULL DEFAULT '100',
	`description` text,
	`user_id` int NOT NULL,
	`created_at` timestamp NOT NULL,
	`updated_at` timestamp,
	`status` enum NOT NULL DEFAULT '10',
	`category` varchar(255) DEFAULT '50',
	`tags` varchar(255) DEFAULT '255',
	`views` int DEFAULT '0',
	PRIMARY KEY (`content_id`)
);

CREATE TABLE IF NOT EXISTS `admin_user` (
	`admin_id` int NOT NULL,
	`username` varchar(255) NOT NULL DEFAULT '50',
	`email` varchar(255) NOT NULL DEFAULT '100',
	`password` varchar(255) NOT NULL DEFAULT '255',
	`first_name` varchar(255) DEFAULT '50',
	`last_name` varchar(255) DEFAULT '50',
	`created_at` timestamp NOT NULL,
	`updated_at` timestamp,
	`role` enum NOT NULL DEFAULT '10',
	`is_active` boolean NOT NULL DEFAULT '1',
	PRIMARY KEY (`admin_id`)
);


ALTER TABLE `content` ADD CONSTRAINT `content_fk3` FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`);
