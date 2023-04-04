CREATE DATABASE empresa;
USE empresa;

CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255) UNIQUE NOT NULL,
  `senha` varchar(255)
);

CREATE TABLE `authtofac` (
  `id_users` int PRIMARY KEY,
  `cod` int,
  `created_at` datetime DEFAULT (now())
);

ALTER TABLE `authtofac` ADD FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

INSERT INTO `users`(`id`, `nome`, `email`, `senha`) VALUES (1,'admin','admin@admin.com','12345');

INSERT INTO `authtofac`(`id_users`, `cod`) VALUES (1,000000)
