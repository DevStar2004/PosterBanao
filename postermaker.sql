/*
 Navicat Premium Data Transfer

 Source Server         : postermaker
 Source Server Type    : MySQL
 Source Server Version : 80200 (8.2.0)
 Source Host           : localhost:3306
 Source Schema         : postermaker

 Target Server Type    : MySQL
 Target Server Version : 80200 (8.2.0)
 File Encoding         : 65001

 Date: 10/04/2024 08:52:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `profile_pic` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `role` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `active` int NOT NULL DEFAULT 0 COMMENT '1=deactive',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'test@gmail.com', 'uploads/profile/61cb91a9-e024-4643-a3f4-ca5fef244eaa.png', '$2y$10$FSEMcc.9c6ICkqqz6NxLwO.PYic9hB8Bfu3IppQLiTF2rXwuHdlKG', 'Super', '{\"section\":\"true\",\"category\":\"true\",\"posts\":\"true\",\"greeting\":\"true\",\"video\":\"true\",\"slider\":\"true\",\"frame\":\"true\",\"subscription\":\"true\",\"offerdialog\":\"true\",\"pushnotification\":\"true\",\"contacts\":\"true\",\"transaction\":\"true\",\"user\":\"true\",\"setting\":\"true\",\"admin\":\"true\"}', 0, '2024-03-29 10:48:52', '2022-11-02 11:18:12');
INSERT INTO `admin` VALUES (14, 'demo', 'demo@gmail.com', 'uploads/profile/9b98f807-e9e2-48c2-96bc-81c2657fad61.png', '$2y$10$FSEMcc.9c6ICkqqz6NxLwO.PYic9hB8Bfu3IppQLiTF2rXwuHdlKG', 'Demo', '{\"section\":\"true\",\"category\":\"true\",\"posts\":\"true\",\"greeting\":\"true\",\"video\":\"true\",\"slider\":\"true\",\"frame\":\"true\",\"subscription\":\"true\",\"offerdialog\":\"true\",\"pushnotification\":\"true\",\"contacts\":\"true\",\"transaction\":\"true\",\"user\":\"true\",\"setting\":\"true\",\"admin\":\"true\"}', 0, '2024-03-17 10:26:13', '2022-12-31 06:55:52');
INSERT INTO `admin` VALUES (20, 'test123', 'test123@qwerty.com', 'uploads/profile/0e76cc25-f3ac-4391-9662-60cc99b98e6c.jpg', '$2y$10$/X3iiNi/IWNA72H2DeR0LO715o0io3MTXnHR5xRmWWIqEvieL1Sou', NULL, '{\"section\":\"false\",\"category\":\"true\",\"posts\":\"true\",\"greeting\":\"false\",\"video\":\"false\",\"slider\":\"false\",\"frame\":\"false\",\"subscription\":\"false\",\"offerdialog\":\"false\",\"pushnotification\":\"false\",\"contacts\":\"false\",\"transaction\":\"false\",\"user\":\"false\",\"setting\":\"false\",\"admin\":\"false\"}', 0, '2024-04-07 12:09:53', '2024-04-07 12:09:53');
INSERT INTO `admin` VALUES (21, 'me', '123@123.com', 'uploads/profile/75f914be-72a8-445c-a2b5-bd6bd3d1e331.jpg', '$2y$10$CEpjNVHiVeL29.XauikcVeeJRbJNlX7RGWuRbyBRbirM5IOvIJbLu', NULL, '{\"section\":\"true\",\"category\":\"false\",\"posts\":\"true\",\"greeting\":\"false\",\"video\":\"false\",\"slider\":\"true\",\"frame\":\"false\",\"subscription\":\"false\",\"offerdialog\":\"true\",\"pushnotification\":\"true\",\"contacts\":\"false\",\"transaction\":\"false\",\"user\":\"false\",\"setting\":\"false\",\"admin\":\"false\"}', 0, '2024-04-09 22:09:14', '2024-04-09 13:00:19');

-- ----------------------------
-- Table structure for background
-- ----------------------------
DROP TABLE IF EXISTS `background`;
CREATE TABLE `background`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of background
-- ----------------------------
INSERT INTO `background` VALUES (2, 'uploads/posts/933288a8-ba58-4e6d-bd6f-4a28d5f8ec11.jpg', '2023-04-28 21:12:58', '2023-04-28 21:12:58');

-- ----------------------------
-- Table structure for business_card_digital
-- ----------------------------
DROP TABLE IF EXISTS `business_card_digital`;
CREATE TABLE `business_card_digital`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_url` varchar(1100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `blade_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `premium` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business_card_digital
-- ----------------------------
INSERT INTO `business_card_digital` VALUES (5, 'card1', 'uploads/thumbnail/e426215a-73c6-451a-8698-e6b720a8b172.JPG', 'card1', 0, 0, '2023-02-16 07:08:43', '2023-02-16 07:08:43', 0);
INSERT INTO `business_card_digital` VALUES (6, 'card2', 'uploads/thumbnail/bb5e2ed3-b1d0-4b8c-a2cf-0284bd52dc40.JPG', 'card2', 0, 0, '2023-02-16 07:09:50', '2023-02-16 07:09:50', 0);
INSERT INTO `business_card_digital` VALUES (7, 'card3', 'uploads/thumbnail/fa301dde-fcd4-4ce7-87ee-cb130f85067a.JPG', 'card3', 0, 0, '2023-02-16 07:10:11', '2023-02-16 07:10:11', 0);

-- ----------------------------
-- Table structure for business_card_tamplate
-- ----------------------------
DROP TABLE IF EXISTS `business_card_tamplate`;
CREATE TABLE `business_card_tamplate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_url` varchar(1100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `json` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `premium` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business_card_tamplate
-- ----------------------------
INSERT INTO `business_card_tamplate` VALUES (6, 'card1', 'uploads/thumbnail/d04fc5f7-cb98-49a1-b18e-3a404e72bffe.jpg', '{\"name\":\"card\",\"path\":\" card\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"card\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"uploads\\/tamplate\\/businesscard\\/card1\\/skins\\/card\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1290,\"height\":813},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":54,\"name\":\"company\",\"x\":697,\"y\":522,\"width\":403,\"height\":42,\"text\":\"Vistic Solutions\"},{\"type\":\"image\",\"src\":\"uploads\\/tamplate\\/businesscard\\/card1\\/skins\\/card\\/logo.png\",\"name\":\"logo\",\"x\":789,\"y\":237,\"width\":219,\"height\":213},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"number\",\"x\":144,\"y\":225,\"width\":232,\"height\":23,\"text\":\"+916263020998\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"email\",\"x\":145,\"y\":327,\"width\":523,\"height\":30,\"text\":\"altafmansuri.devloper@gmail.com\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"website\",\"x\":143,\"y\":450,\"width\":299,\"height\":23,\"text\":\"visticsolutuins.com\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"address\",\"x\":150,\"y\":562,\"width\":518,\"height\":29,\"text\":\"Mandsaur,Madhya Pradesh (India)\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"name\",\"x\":822,\"y\":592,\"width\":253,\"height\":23,\"text\":\"yourname\"}]}', 0, 0, '2023-02-16 07:05:58', '2023-02-15 16:35:44', 1);
INSERT INTO `business_card_tamplate` VALUES (7, 'card2', 'uploads/thumbnail/ca776993-7d73-4244-91ce-ef86c2ac8d6d.jpg', '{\"name\":\"card\",\"path\":\" card\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"card\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"uploads\\/tamplate\\/businesscard\\/card2\\/skins\\/card\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1290,\"height\":813},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0x000000\",\"size\":36,\"name\":\"company\",\"x\":789,\"y\":562,\"width\":272,\"height\":28,\"text\":\"Vistic Solutions\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":36,\"name\":\"name\",\"x\":132,\"y\":121,\"width\":272,\"height\":28,\"text\":\"Vistic Solutions\"},{\"type\":\"text\",\"font\":\"ArialNarrow\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":28,\"name\":\"designation\",\"x\":133,\"y\":159,\"width\":201,\"height\":22,\"text\":\"Vistic Solutions seo\"},{\"type\":\"image\",\"src\":\"uploads\\/tamplate\\/businesscard\\/card2\\/skins\\/card\\/logo.png\",\"name\":\"logo\",\"x\":815,\"y\":297,\"width\":219,\"height\":213,\"effects\":{\"dropShadowMulti\":[],\"innerShadowMulti\":[],\"solidFill\":{\"color\":\"0xff5408\"},\"gradientFillMulti\":[],\"frameFXMulti\":[]}},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"number\",\"x\":206,\"y\":329,\"width\":232,\"height\":23,\"text\":\"+916263020998\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"email\",\"x\":207,\"y\":445,\"width\":323,\"height\":30,\"text\":\"devloper@gmail.com\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"website\",\"x\":209,\"y\":550,\"width\":299,\"height\":23,\"text\":\"visticsolutuins.com\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"address\",\"x\":211,\"y\":665,\"width\":276,\"height\":29,\"text\":\"Mandsaur,Madhya \"}]}', 0, 0, '2023-02-16 07:06:15', '2023-02-15 17:07:50', 14);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `about` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `event_date` date NULL DEFAULT NULL,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (5, 'Good Friday', NULL, 'uploads/posts/ed2a29da-bfc8-4fb7-89d2-a515fac3d73a.png', NULL, '2025-03-30', 'festival', 0, '2024-03-31 02:34:02', '2024-03-29 10:50:25', 1);
INSERT INTO `category` VALUES (7, 'Halloween', NULL, 'uploads/posts/5083c08f-a683-4060-b86c-4b39fe76f278.jpg', NULL, '2024-10-31', 'festival', 0, '2024-04-01 03:13:57', '2024-04-01 03:13:57', 1);
INSERT INTO `category` VALUES (9, 'Happy Dhuleti', NULL, 'uploads/posts/df1d1254-6bec-497f-9935-849418209511.png', NULL, '2024-03-25', 'festival', 0, '2024-04-01 06:05:43', '2024-04-01 06:05:43', 1);
INSERT INTO `category` VALUES (10, 'Dhuleti Wishes', NULL, 'uploads/posts/5b97b5b2-2896-44f3-8dce-ea2befd29ec6.png', NULL, '2024-03-25', 'festival', 0, '2024-04-01 06:24:34', '2024-04-01 06:24:34', 1);
INSERT INTO `category` VALUES (11, 'Happy Dhuleti', NULL, 'uploads/posts/e8cc349b-5de2-47c6-9b26-a00b6ec4c670.png', NULL, '2024-03-25', 'festival', 0, '2024-04-01 06:27:46', '2024-04-01 06:27:46', 1);
INSERT INTO `category` VALUES (12, 'Dhuty', NULL, 'uploads/posts/8cb7f00a-a119-4f14-af56-165f92605a73.png', NULL, '2024-03-25', 'festival', 0, '2024-04-01 06:36:16', '2024-04-01 06:36:16', 1);
INSERT INTO `category` VALUES (16, 'Dhuleti', NULL, 'uploads/posts/6c00de1d-2f5f-4f1c-bba6-13ebf454824b.png', NULL, '2024-03-25', 'festival', 0, '2024-04-01 06:55:08', '2024-04-01 06:55:08', 1);
INSERT INTO `category` VALUES (20, 'Happy Dhuleti', NULL, 'uploads/posts/68a4d1b5-867a-454d-a97c-9c17394f1e45.png', NULL, '2024-03-25', 'festival', 0, '2024-04-01 10:31:35', '2024-04-01 10:24:29', 14);
INSERT INTO `category` VALUES (21, '021', '021', '021', '021', '0000-00-00', '021', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 21);
INSERT INTO `category` VALUES (38, 'Dhuleti', NULL, 'uploads/posts/b030c600-817b-4639-b2ce-c4eaf6c83bca.png', NULL, '2024-03-25', 'festival', 0, '2024-04-01 12:06:06', '2024-04-01 12:06:06', 14);
INSERT INTO `category` VALUES (39, 'Covid Safe Holi', NULL, 'uploads/posts/cbec4b1b-73ff-427e-9f14-eaa42c423086.jpg', NULL, '2024-03-25', 'festival', 0, '2024-04-01 12:09:58', '2024-04-01 12:09:58', 14);
INSERT INTO `category` VALUES (49, 'Happy Rangpanchami', NULL, 'uploads/posts/5bd8a045-c5b6-4421-aa8a-38b6a598b787.png', NULL, '2024-03-30', 'festival', 0, '2024-04-01 13:23:52', '2024-04-01 13:23:52', 14);
INSERT INTO `category` VALUES (54, 'Happy Rangpanchami', NULL, 'uploads/posts/0964e629-6054-4ac1-bba1-575b4316e000.png', NULL, '2024-03-30', 'festival', 0, '2024-04-01 13:40:33', '2024-04-01 13:40:33', 14);
INSERT INTO `category` VALUES (56, 'Dhulivandan', NULL, 'uploads/posts/36301b18-04e7-4bb4-a760-5389c555913a.png', NULL, '2024-03-24', 'festival', 0, '2024-04-01 13:47:23', '2024-04-01 13:47:23', 14);
INSERT INTO `category` VALUES (109, 'HOLI', NULL, 'uploads/posts/b9b4f151-1e72-4ba1-89f4-de4b24af1e93.png', NULL, '2024-03-25', 'festival', 0, '2024-04-02 00:09:09', '2024-04-02 00:09:09', 20);
INSERT INTO `category` VALUES (110, 'Diwali', NULL, 'uploads/posts/24e8e665-f009-48b8-9812-592759eedeba.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 11:57:11', '2024-04-02 11:57:11', 20);
INSERT INTO `category` VALUES (111, 'Diwali', NULL, 'uploads/posts/0a51c62e-4e98-45ae-bad0-26efa3a39b58.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:00:44', '2024-04-02 12:00:44', 20);
INSERT INTO `category` VALUES (112, 'Diwali', NULL, 'uploads/posts/33992992-1ca5-4316-bc22-af4a39954ac7.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:05:06', '2024-04-02 12:05:06', 20);
INSERT INTO `category` VALUES (113, 'Diwali', NULL, 'uploads/posts/f43e7141-fca1-4a1f-b1f9-6d355d0eb20b.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:08:25', '2024-04-02 12:08:25', 20);
INSERT INTO `category` VALUES (114, 'Diwali', NULL, 'uploads/posts/c64c673c-9777-4b81-8acd-807c26917ae6.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:11:11', '2024-04-02 12:11:11', 20);
INSERT INTO `category` VALUES (115, 'Diwali', NULL, 'uploads/posts/69b84981-952f-4a43-b327-9d0e99b10b63.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:18:02', '2024-04-02 12:18:02', 20);
INSERT INTO `category` VALUES (116, 'Diwali', NULL, 'uploads/posts/ab3f8f2b-7756-49b1-acbc-b42ba806d621.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:21:03', '2024-04-02 12:21:03', 20);
INSERT INTO `category` VALUES (117, 'Diwali', NULL, 'uploads/posts/c0149536-899b-4f5d-8e4c-82efc28e1d94.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:23:49', '2024-04-02 12:23:49', 20);
INSERT INTO `category` VALUES (118, 'Diwali', NULL, 'uploads/posts/b9d86ee4-bc2e-4593-b403-96cd3f469cfb.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:26:42', '2024-04-02 12:26:42', 21);
INSERT INTO `category` VALUES (119, 'Diwali', NULL, 'uploads/posts/59cb19cf-f33e-4848-afe0-7b50578b2946.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:28:59', '2024-04-02 12:28:59', 21);
INSERT INTO `category` VALUES (120, 'Diwali', NULL, 'uploads/posts/57e4341b-56ad-447c-991c-8b8a602a9165.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:33:48', '2024-04-02 12:33:48', 21);
INSERT INTO `category` VALUES (121, 'Diwali', NULL, 'uploads/posts/72d4eab2-e6cd-46cf-8e8c-6b908f2b8118.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:36:32', '2024-04-02 12:36:32', 21);
INSERT INTO `category` VALUES (122, 'Diwali', NULL, 'uploads/posts/14c92b8f-f8cb-4d34-9261-041704762a0b.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:40:34', '2024-04-02 12:40:34', 21);
INSERT INTO `category` VALUES (123, 'Diwali', NULL, 'uploads/posts/6098950c-cea6-40c1-8468-0ba340b7cb77.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:44:28', '2024-04-02 12:44:28', 21);
INSERT INTO `category` VALUES (124, 'Diwali', NULL, 'uploads/posts/c0663b0e-06b7-4c09-99e5-276f7ab6fb98.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:46:59', '2024-04-02 12:46:59', 21);
INSERT INTO `category` VALUES (125, 'Diwali', NULL, 'uploads/posts/ecbf3b0c-c4de-4a07-85ad-ca87e51e1ab1.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:49:36', '2024-04-02 12:49:36', 21);
INSERT INTO `category` VALUES (127, 'Diwali', NULL, 'uploads/posts/fdb0a170-f7fe-4fed-8c78-4d99e5284b41.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:55:04', '2024-04-02 12:55:04', 1);
INSERT INTO `category` VALUES (128, 'Diwali', NULL, 'uploads/posts/d588a9df-7224-4551-abd2-61f56366f8e9.jpg', NULL, '2024-11-01', 'festival', 0, '2024-04-02 12:57:16', '2024-04-02 12:57:16', 1);
INSERT INTO `category` VALUES (129, 'Chhath Poja', NULL, 'uploads/posts/64d81fa1-b092-4446-a499-365c6d626604.png', NULL, '2024-11-05', 'festival', 0, '2024-04-02 13:04:31', '2024-04-02 13:04:31', 1);
INSERT INTO `category` VALUES (130, 'Chhath Poja', NULL, 'uploads/posts/10c96676-07b9-4106-b6d0-2c280f8e8099.png', NULL, '2024-11-05', 'festival', 0, '2024-04-02 13:27:58', '2024-04-02 13:27:58', 1);
INSERT INTO `category` VALUES (131, 'Chhath Poja', NULL, 'uploads/posts/db4cc15b-1de2-47c9-b917-b0f71eb00724.png', NULL, '2024-11-05', 'festival', 0, '2024-04-02 15:13:48', '2024-04-02 15:13:48', 14);
INSERT INTO `category` VALUES (132, 'Chhath Poja', NULL, 'uploads/posts/f439a81d-84fb-4b81-8cd2-b0ac76f438d9.png', NULL, '2024-11-05', 'festival', 0, '2024-04-02 20:00:14', '2024-04-02 20:00:14', 14);

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `number` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `message` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for frame_category
-- ----------------------------
DROP TABLE IF EXISTS `frame_category`;
CREATE TABLE `frame_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frame_category
-- ----------------------------
INSERT INTO `frame_category` VALUES (2, 'Political', 0, '2022-12-26 19:01:06', '2022-12-20 15:56:26', 1);
INSERT INTO `frame_category` VALUES (4, 'Business', 0, '2023-04-10 11:32:49', '2023-01-14 07:59:28', 14);

-- ----------------------------
-- Table structure for frames
-- ----------------------------
DROP TABLE IF EXISTS `frames`;
CREATE TABLE `frames`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumbnail` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `json` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ratio` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `premium` int NOT NULL DEFAULT 0,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'business',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frames
-- ----------------------------
INSERT INTO `frames` VALUES (45, 'Personal1', 'uploads/thumbnail/fd7acbe4-8e92-4ffc-83a6-ea9195129e91.jpg', '{\"name\":\"personal\",\"path\":\" personal\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"personal\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Personal1\\/skins\\/personal\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1280,\"height\":1280},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Personal1\\/skins\\/personal\\/logo.png\",\"name\":\"logo\",\"x\":986,\"y\":989,\"width\":272,\"height\":291},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Personal1\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"uppercase\":true,\"color\":\"0x000000\",\"size\":65,\"name\":\"name\",\"x\":77,\"y\":1148,\"width\":449,\"height\":44,\"text\":\"Rahul SHARMA\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Personal1\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"uppercase\":true,\"color\":\"0xFFFFFF\",\"size\":39,\"name\":\"number\",\"x\":87,\"y\":1232,\"width\":271,\"height\":26,\"text\":\"+916263020998\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Personal1\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"color\":\"0xFFFFFF\",\"size\":39,\"name\":\"email\",\"x\":464,\"y\":1229,\"width\":422,\"height\":34,\"text\":\"visticsolution@gmail.com\"}]}', '1:1', 0, 4, 0, 'business', '2024-04-07 11:13:57', '2023-04-10 11:24:08', 1);
INSERT INTO `frames` VALUES (46, 'frame1', 'uploads/thumbnail/22373910-e19a-43c6-892a-6ac96052c972.jpg', '{\"name\":\"frame\",\"path\":\" frame\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"frame\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame1\\/skins\\/frame\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1200,\"height\":1200},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame1\\/skins\\/frame\\/location_logo.png\",\"name\":\"location_logo\",\"x\":153,\"y\":1136,\"width\":46,\"height\":45},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame1\\/skins\\/frame\\/web_logo.png\",\"name\":\"web_logo\",\"x\":821,\"y\":1068,\"width\":48,\"height\":48},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame1\\/skins\\/frame\\/logo.png\",\"name\":\"logo\",\"x\":60,\"y\":53,\"width\":205,\"height\":203},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame1\\/skins\\/frame\\/email_logo.png\",\"name\":\"email_logo\",\"x\":397,\"y\":1068,\"width\":49,\"height\":48},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame1\\/skins\\/frame\\/phone_logo.png\",\"name\":\"phone_logo\",\"x\":77,\"y\":1068,\"width\":48,\"height\":48},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame1\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":31,\"name\":\"number\",\"x\":142,\"y\":1081,\"width\":213,\"height\":21,\"text\":\"+916263020998\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame1\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":31,\"name\":\"email\",\"x\":466,\"y\":1080,\"width\":339,\"height\":28,\"text\":\"visticsolution@gmail.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame1\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":31,\"name\":\"website\",\"x\":890,\"y\":1078,\"width\":229,\"height\":28,\"text\":\"posterbanao.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame1\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":41,\"name\":\"address\",\"x\":210,\"y\":1143,\"width\":858,\"height\":36,\"text\":\"Bangalore,Akshya Nagar 1st Block 1st Cross, India\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame1\\/fonts\\/DesignerRegular.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0x00A3C5\",\"size\":48,\"name\":\"company\",\"x\":719,\"y\":53,\"width\":437,\"height\":35,\"text\":\"Poster Banao\"}]}', '1:1', 0, 4, 0, 'business', '2024-04-07 11:13:47', '2023-04-10 11:15:53', 14);
INSERT INTO `frames` VALUES (47, 'frame232', 'uploads/thumbnail/b410c131-6747-4475-b0c1-eab5a54e4bfe.jpg', '{\"name\":\"frame12\",\"path\":\" frame12\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"frame12\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame232\\/skins\\/frame12\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1080,\"height\":1082},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame232\\/fonts\\/Montserrat-Light.ttf\",\"justification\":\"center\",\"lineHeight\":54,\"color\":\"0xFFFFFF\",\"size\":27,\"name\":\"address\",\"x\":26,\"y\":1034,\"width\":1012,\"height\":25,\"text\":\"Loca Society , Dilbar Chowk CBSCTY Road , Sama Nagar , Mumbai - 2545 India\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame232\\/fonts\\/Arial-BoldMT.ttf\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0x000000\",\"size\":34,\"name\":\"company\",\"x\":767,\"y\":982,\"width\":254,\"height\":32,\"text\":\"    Company Name   \"},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame232\\/skins\\/frame12\\/phone_call.png\",\"name\":\"phone_call\",\"x\":10,\"y\":981,\"width\":34,\"height\":34},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame232\\/skins\\/frame12\\/emailbackground.png\",\"name\":\"emailbackground\",\"x\":-8,\"y\":9,\"width\":540,\"height\":47},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame232\\/fonts\\/Montserrat-Medium.ttf\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":30,\"name\":\"email\",\"x\":38,\"y\":18,\"width\":465,\"height\":29,\"text\":\"demogdemogmail@gmail.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame232\\/fonts\\/ArialMT.ttf\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":32,\"name\":\"number\",\"x\":51,\"y\":987,\"width\":219,\"height\":23,\"text\":\"91 8757893246\"}]}', '1:1', 1, 4, 0, 'business', '2024-04-07 11:13:51', '2023-04-10 11:16:45', 20);
INSERT INTO `frames` VALUES (48, 'frame3', 'uploads/thumbnail/e208da47-a087-4166-8ac4-688f0696dc6f.jpg', '{\"name\":\"frame\",\"path\":\" frame\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"frame\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame3\\/skins\\/frame\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1200,\"height\":1200},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame3\\/skins\\/frame\\/logo.png\",\"name\":\"logo\",\"x\":59,\"y\":49,\"width\":187,\"height\":187},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame3\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":31,\"name\":\"email\",\"x\":518,\"y\":1096,\"width\":339,\"height\":28,\"text\":\"visticsolution@gmail.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame3\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":31,\"name\":\"number\",\"x\":927,\"y\":1098,\"width\":213,\"height\":21,\"text\":\"+916263020998\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame3\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"right\",\"lineHeight\":85,\"color\":\"0x193308\",\"size\":31,\"name\":\"website\",\"x\":38,\"y\":252,\"width\":230,\"height\":28,\"text\":\"posterbanao.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame3\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0x000000\",\"size\":40,\"name\":\"address\",\"x\":104,\"y\":1157,\"width\":1080,\"height\":35,\"text\":\"28, Manish Ngr Shop Centre, 4 Bunglow, Nr Indian Oil, Andheri \"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame3\\/fonts\\/CopperplateGothic-Bold.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":35,\"name\":\"company\",\"x\":70,\"y\":1097,\"width\":287,\"height\":25,\"text\":\"Poster Banao\"}]}', '1:1', 0, 4, 0, 'business', '2024-04-07 11:13:49', '2023-04-10 11:17:29', 1);
INSERT INTO `frames` VALUES (49, 'frame4', 'uploads/thumbnail/876e3236-4050-4064-88d8-1f9f07881808.jpg', '{\"name\":\"frame\",\"path\":\" frame\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"frame\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame4\\/skins\\/frame\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1200,\"height\":1200},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame4\\/skins\\/frame\\/logo.png\",\"name\":\"logo\",\"x\":35,\"y\":23,\"width\":187,\"height\":187},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame4\\/skins\\/frame\\/twit.png\",\"name\":\"twit\",\"x\":1140,\"y\":22,\"width\":47,\"height\":47},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame4\\/skins\\/frame\\/face.png\",\"name\":\"face\",\"x\":1031,\"y\":23,\"width\":47,\"height\":47},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame4\\/skins\\/frame\\/insta.png\",\"name\":\"insta\",\"x\":1085,\"y\":22,\"width\":48,\"height\":47},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame4\\/skins\\/frame\\/whats.png\",\"name\":\"whats\",\"x\":976,\"y\":22,\"width\":47,\"height\":47},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame4\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":31,\"name\":\"email\",\"x\":828,\"y\":1068,\"width\":339,\"height\":28,\"text\":\"visticsolution@gmail.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame4\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":31,\"name\":\"number\",\"x\":94,\"y\":1066,\"width\":339,\"height\":28,\"text\":\"+91123456789\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame4\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"right\",\"lineHeight\":85,\"color\":\"0x111C7E\",\"size\":32,\"name\":\"website\",\"x\":868,\"y\":70,\"width\":321,\"height\":29,\"text\":\"www.posterbanao.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame4\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"lineHeight\":85,\"color\":\"0x111C7E\",\"size\":40,\"name\":\"address\",\"x\":61,\"y\":1132,\"width\":1080,\"height\":35,\"text\":\"28, Manish Ngr Shop Centre, 4 Bunglow, Nr Indian Oil, Andheri \"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame4\\/fonts\\/Ranille-Normal-Regular.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"lineHeight\":85,\"color\":\"0x111C7E\",\"size\":45,\"name\":\"company\",\"x\":450,\"y\":1060,\"width\":299,\"height\":34,\"text\":\"Poster Banao\"}]}', '1:1', 0, 4, 0, 'business', '2024-04-07 11:13:45', '2023-04-10 11:18:05', 1);
INSERT INTO `frames` VALUES (50, 'frame5', 'uploads/thumbnail/a5d64569-0d0c-42c4-9b97-cbcabb817aae.jpg', '{\"name\":\"frame\",\"path\":\" frame\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"frame\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame5\\/skins\\/frame\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1200,\"height\":1200},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/frame5\\/skins\\/frame\\/logo.png\",\"name\":\"logo\",\"x\":35,\"y\":23,\"width\":187,\"height\":187},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame5\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0x000000\",\"size\":28,\"name\":\"email\",\"x\":470,\"y\":1114,\"width\":312,\"height\":25,\"text\":\"visticsolution@gmail.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame5\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0x000000\",\"size\":28,\"name\":\"number\",\"x\":48,\"y\":1117,\"width\":195,\"height\":19,\"text\":\"+916263020998\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame5\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"left\",\"lineHeight\":85,\"color\":\"0x000000\",\"size\":28,\"name\":\"website\",\"x\":914,\"y\":1114,\"width\":288,\"height\":20,\"text\":\"www.visticsolution.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame5\\/fonts\\/Calibri.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"lineHeight\":85,\"color\":\"0xFFFFFF\",\"size\":33,\"name\":\"address\",\"x\":145,\"y\":1162,\"width\":899,\"height\":29,\"text\":\"28, Manish Ngr Shop Centre, 4 Bunglow, Nr Indian Oil, Andheri \"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/frame5\\/fonts\\/Ranille.ttf\",\"weight\":\"bold\",\"justification\":\"center\",\"lineHeight\":85,\"color\":\"0x111C7E\",\"size\":45,\"name\":\"company\",\"x\":868,\"y\":42,\"width\":299,\"height\":34,\"text\":\"Poster Banao\"}]}', '1:1', 0, 4, 0, 'business', '2024-04-07 11:13:44', '2023-04-10 11:20:38', 14);
INSERT INTO `frames` VALUES (51, 'Political', 'uploads/thumbnail/0898272c-3d8e-4c85-92e9-c336d87053ec.jpg', '{\"name\":\"political\",\"path\":\" political\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"political\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Political\\/skins\\/political\\/poitical.png\",\"name\":\"poitical\",\"x\":0,\"y\":0,\"width\":1280,\"height\":1280},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Political\\/skins\\/political\\/whatsapp.png\",\"name\":\"whatsapp\",\"x\":948,\"y\":1234,\"width\":42,\"height\":42},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Political\\/skins\\/political\\/facebook.png\",\"name\":\"facebook\",\"x\":22,\"y\":1234,\"width\":42,\"height\":42},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Political\\/skins\\/political\\/instagram.png\",\"name\":\"instagram\",\"x\":640,\"y\":1234,\"width\":41,\"height\":42},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Political\\/skins\\/political\\/twitter.png\",\"name\":\"twitter\",\"x\":329,\"y\":1234,\"width\":42,\"height\":42},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Political\\/skins\\/political\\/partylogo.png\",\"name\":\"partylogo\",\"x\":917,\"y\":967,\"width\":263,\"height\":244},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/Political\\/skins\\/political\\/logo.png\",\"name\":\"logo\",\"x\":54,\"y\":892,\"width\":318,\"height\":340},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Political\\/fonts\\/Calibri-Bold.ttf\",\"justification\":\"left\",\"uppercase\":true,\"color\":\"0xFFFFFF\",\"size\":57,\"name\":\"name\",\"x\":421,\"y\":1134,\"width\":383,\"height\":38,\"text\":\"Rahul SHARMA\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Political\\/fonts\\/Arial-BoldMT.ttf\",\"justification\":\"left\",\"uppercase\":true,\"color\":\"0xFFFFFF\",\"size\":36,\"name\":\"designation\",\"x\":421,\"y\":1191,\"width\":353,\"height\":25,\"text\":\"Your designation\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Political\\/fonts\\/Calibri.ttf\",\"justification\":\"center\",\"color\":\"0xFFFFFF\",\"size\":34,\"name\":\"facebook_1\",\"x\":80,\"y\":1244,\"width\":170,\"height\":23,\"text\":\"rahulsharma\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Political\\/fonts\\/Calibri.ttf\",\"justification\":\"center\",\"color\":\"0xFFFFFF\",\"size\":34,\"name\":\"twitter_1\",\"x\":386,\"y\":1243,\"width\":170,\"height\":23,\"text\":\"rahulsharma\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Political\\/fonts\\/Calibri.ttf\",\"justification\":\"center\",\"color\":\"0xFFFFFF\",\"size\":34,\"name\":\"instagram_1\",\"x\":696,\"y\":1243,\"width\":170,\"height\":23,\"text\":\"rahulsharma\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/Political\\/fonts\\/Calibri.ttf\",\"justification\":\"center\",\"color\":\"0xFFFFFF\",\"size\":34,\"name\":\"whatsapp_1\",\"x\":996,\"y\":1245,\"width\":222,\"height\":21,\"text\":\"+916263020998\"}]}', '1:1', 0, 4, 0, 'business', '2024-04-07 11:13:43', '2023-04-10 11:22:22', 20);
INSERT INTO `frames` VALUES (53, 'FRAME TESTY', 'uploads/thumbnail/155ba51b-5e77-4d5f-b824-8855b57fb8b6.png', '{\"name\":\"frame12\",\"path\":\" frame12\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"frame12\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/FRAME TESTY\\/skins\\/frame12\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1080,\"height\":1082},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/FRAME TESTY\\/fonts\\/Arial.ttf\",\"justification\":\"center\",\"lineHeight\":54,\"color\":\"0x000000\",\"size\":24,\"name\":\"address\",\"x\":85,\"y\":1040,\"width\":911,\"height\":29,\"text\":\"Loca Society , Dilbar Chowk CBSCTY Road , Sama Nagar , Mumbai - 2545 India\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/FRAME TESTY\\/fonts\\/Arial.ttf\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":26,\"name\":\"company\",\"x\":832,\"y\":970,\"width\":264,\"height\":31,\"text\":\"Company Name\"},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/FRAME TESTY\\/skins\\/frame12\\/phone_call.png\",\"name\":\"phone_call\",\"x\":36,\"y\":972,\"width\":26,\"height\":26},{\"type\":\"image\",\"src\":\"\\/uploads\\/frame\\/FRAME TESTY\\/skins\\/frame12\\/emailbackground.png\",\"name\":\"emailbackground\",\"x\":16,\"y\":16,\"width\":393,\"height\":49},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/FRAME TESTY\\/fonts\\/Arial.ttf\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":24,\"name\":\"email\",\"x\":36,\"y\":26,\"width\":353,\"height\":29,\"text\":\"demogdemogmail@gmail.com\"},{\"type\":\"text\",\"font\":\"\\/uploads\\/frame\\/FRAME TESTY\\/fonts\\/Arial.ttf\",\"justification\":\"center\",\"lineHeight\":124,\"color\":\"0xFFFFFF\",\"size\":26,\"name\":\"number\",\"x\":72,\"y\":970,\"width\":200,\"height\":31,\"text\":\"91 8757893246\"}]}', '1:1', 0, 4, 0, 'business', '2024-04-02 13:49:28', '2024-04-02 13:49:28', 21);

-- ----------------------------
-- Table structure for greeting_posts
-- ----------------------------
DROP TABLE IF EXISTS `greeting_posts`;
CREATE TABLE `greeting_posts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_url` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `item_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `premium` int NOT NULL DEFAULT 0 COMMENT '1-premium',
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'image' COMMENT 'image,video',
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `section_id` int NULL DEFAULT 0,
  `orientation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `height` int NULL DEFAULT 0,
  `width` int NULL DEFAULT 0,
  `views` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of greeting_posts
-- ----------------------------

-- ----------------------------
-- Table structure for greeting_section
-- ----------------------------
DROP TABLE IF EXISTS `greeting_section`;
CREATE TABLE `greeting_section`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `orders` int NULL DEFAULT 0,
  `post_using` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `keyword` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of greeting_section
-- ----------------------------

-- ----------------------------
-- Table structure for invitation_card
-- ----------------------------
DROP TABLE IF EXISTS `invitation_card`;
CREATE TABLE `invitation_card`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `json` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category_id` int NOT NULL DEFAULT 0,
  `premium` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invitation_card
-- ----------------------------
INSERT INTO `invitation_card` VALUES (2, 'weddingtamplate1', 'uploads/thumbnail/cde45ad9-41cd-41df-8812-ab186250e57e.jpeg', '{\"name\":\"inv\",\"path\":\" inv\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"inv\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"uploads\\/tamplate\\/invitationcard\\/weddingtamplate1\\/skins\\/inv\\/background.png\",\"name\":\"background\",\"x\":-78,\"y\":-58,\"width\":1337,\"height\":1776},{\"type\":\"text\",\"font\":\"MyriadPro-Regular\",\"justification\":\"center\",\"uppercase\":true,\"lineHeight\":88,\"color\":\"0x404040\",\"size\":94,\"name\":\"subtitle\",\"x\":305,\"y\":151,\"width\":588,\"height\":65,\"text\":\"Save the date\"},{\"type\":\"text\",\"font\":\"MyriadPro-Regular\",\"justification\":\"left\",\"uppercase\":true,\"color\":\"0x404040\",\"size\":45,\"name\":\"date1\",\"x\":755,\"y\":1452,\"width\":90,\"height\":30,\"text\":\"2022\"},{\"type\":\"text\",\"font\":\"Judson-Bold\",\"justification\":\"left\",\"uppercase\":true,\"color\":\"0x404040\",\"size\":45,\"name\":\"date2\",\"x\":756,\"y\":1413,\"width\":145,\"height\":28,\"text\":\"MARCH\"},{\"type\":\"text\",\"font\":\"Judson-Bold\",\"justification\":\"center\",\"uppercase\":true,\"color\":\"0x404040\",\"size\":117,\"name\":\"date3\",\"x\":579,\"y\":1412,\"width\":100,\"height\":71,\"text\":\"12\"},{\"type\":\"text\",\"font\":\"Judson-Bold\",\"justification\":\"right\",\"uppercase\":true,\"color\":\"0x404040\",\"size\":45,\"name\":\"time\",\"x\":407,\"y\":1455,\"width\":95,\"height\":28,\"text\":\"17:00\"},{\"type\":\"text\",\"font\":\"Judson-Bold\",\"justification\":\"right\",\"uppercase\":true,\"color\":\"0x404040\",\"size\":45,\"name\":\"day\",\"x\":298,\"y\":1413,\"width\":206,\"height\":28,\"text\":\"SATURDAY\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"center\",\"lineHeight\":61,\"color\":\"0x404040\",\"size\":181,\"name\":\"girl\",\"x\":481,\"y\":840,\"width\":331,\"height\":212,\"text\":\"Sofia\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"center\",\"lineHeight\":61,\"color\":\"0x404040\",\"size\":93,\"name\":\"_\",\"x\":673,\"y\":801,\"width\":69,\"height\":70,\"text\":\"&\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"center\",\"lineHeight\":61,\"color\":\"0x404040\",\"size\":181,\"name\":\"boy\",\"x\":335,\"y\":646,\"width\":354,\"height\":214,\"text\":\"Jhon\"}]}', 2, 1, 0, '2023-02-16 07:14:45', '2023-01-29 12:56:26', 1);
INSERT INTO `invitation_card` VALUES (4, 'weddingcard1', 'uploads/thumbnail/87077ec2-3a53-40ae-9947-e71e01b941e8.jpg', '{\"name\":\"psdfile\",\"path\":\" psdfile\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"psdfile\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"image\",\"src\":\"uploads\\/tamplate\\/invitationcard\\/weddingcard1\\/skins\\/psdfile\\/background.png\",\"name\":\"background\",\"x\":0,\"y\":0,\"width\":1080,\"height\":1350},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":25,\"name\":\"your_invited_to\",\"x\":384,\"y\":176,\"width\":239,\"height\":18,\"text\":\"Your Invited To\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":25,\"name\":\"addre\",\"x\":237,\"y\":996,\"width\":605,\"height\":23,\"text\":\"Road no 25, Sundar Ngr Mp, Bhopal, India\"},{\"type\":\"text\",\"font\":\"ArialMT\",\"justification\":\"center\",\"color\":\"0xA81000\",\"size\":25,\"name\":\"qutes\",\"x\":269,\"y\":1100,\"width\":529,\"height\":114,\"text\":\"One day, in your search for happiness\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":31,\"name\":\"the_wedding_of\",\"x\":354,\"y\":225,\"width\":299,\"height\":28,\"text\":\"The Wedding Of\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":41,\"name\":\"date\",\"x\":333,\"y\":918,\"width\":379,\"height\":37,\"text\":\"October 8, 2023\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":31,\"name\":\"time\",\"x\":358,\"y\":865,\"width\":321,\"height\":22,\"text\":\"8 AM To 12:00 PM\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":140,\"name\":\"sean\",\"x\":265,\"y\":365,\"width\":320,\"height\":127,\"text\":\"Sean\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":140,\"name\":\"amile\",\"x\":493,\"y\":635,\"width\":320,\"height\":118,\"text\":\"Amile\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":105,\"name\":\"and\",\"x\":505,\"y\":523,\"width\":60,\"height\":79,\"text\":\"&\"}]}', 2, 0, 0, '2023-02-16 07:12:21', '2023-02-14 06:05:40', 1);
INSERT INTO `invitation_card` VALUES (5, 'invitationcard2', 'uploads/thumbnail/47fc38ce-7af5-42d9-a293-19e2c36c9f8c.jpg', '{\"name\":\"psdfile\",\"path\":\" psdfile\\/\",\"info\":{\"description\":\"Normal\",\"file\":\"psdfile\",\"date\":\"sRGB\",\"title\":\"\",\"author\":\"\",\"keywords\":\"\",\"generator\":\"Export Kit v1.2.8\"},\"layers\":[{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":27,\"name\":\"your_invited_to\",\"x\":384,\"y\":188,\"width\":239,\"height\":20,\"text\":\"Your Invited To\"},{\"type\":\"image\",\"src\":\"uploads\\/tamplate\\/invitationcard\\/invitationcard2\\/skins\\/psdfile\\/background.png\",\"name\":\"background\",\"x\":-5,\"y\":0,\"width\":1080,\"height\":1450},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":27,\"name\":\"addre\",\"x\":237,\"y\":1029,\"width\":605,\"height\":25,\"text\":\"Road no 25, Sundar Ngr Mp, Bhopal, India\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":33,\"name\":\"the_wedding_of\",\"x\":60,\"y\":242,\"width\":298,\"height\":31,\"text\":\"The Wedding Of\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":44,\"name\":\"date\",\"x\":345,\"y\":961,\"width\":379,\"height\":39,\"text\":\"October 8, 2023\"},{\"type\":\"text\",\"font\":\"Arial-BoldMT\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":33,\"name\":\"time\",\"x\":379,\"y\":907,\"width\":321,\"height\":24,\"text\":\"8 AM To 12:00 PM\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":150,\"name\":\"sean\",\"x\":149,\"y\":346,\"width\":320,\"height\":137,\"text\":\"Sean\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":142,\"name\":\"amile\",\"x\":362,\"y\":625,\"width\":305,\"height\":120,\"text\":\"Amile\"},{\"type\":\"text\",\"font\":\"GreatVibes-Regular\",\"justification\":\"left\",\"color\":\"0x000000\",\"size\":113,\"name\":\"and\",\"x\":396,\"y\":511,\"width\":60,\"height\":86,\"text\":\"&\"}]}', 2, 0, 0, '2023-02-16 07:14:06', '2023-02-14 06:32:49', 14);

-- ----------------------------
-- Table structure for invitation_category
-- ----------------------------
DROP TABLE IF EXISTS `invitation_category`;
CREATE TABLE `invitation_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invitation_category
-- ----------------------------
INSERT INTO `invitation_category` VALUES (1, 'Event', 'uploads/posts/a9c73593-6f26-46a4-a5ff-4166d5a980d8.jpg', 1, '2024-03-28 19:49:12', '2023-01-29 10:17:48', 1);
INSERT INTO `invitation_category` VALUES (2, 'Wedding Invitation Card', 'uploads/posts/301326b1-7643-41ae-8080-3a0746075dda.jpg', 1, '2024-03-28 19:49:12', '2023-01-29 12:53:45', 14);

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `language_code` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES (4, 'English', 'en', 'uploads/posts/911a7314-ea2e-4358-85ef-ada71322eed8.png', 0, '2023-02-16 06:34:29', '2022-12-20 12:40:21');
INSERT INTO `language` VALUES (5, 'Hindi', 'hi', 'uploads/posts/3d37bfb5-83a5-492c-a9ba-fd60b3f5d908.jpg', 0, '2023-02-16 06:29:44', '2022-12-24 12:32:26');
INSERT INTO `language` VALUES (6, 'Gujarati', 'gu', 'uploads/posts/fcb1459d-c4d1-4343-b33b-d3ef42c70189.jpg', 0, '2023-02-16 06:34:58', '2023-01-06 08:16:23');

-- ----------------------------
-- Table structure for logo_category
-- ----------------------------
DROP TABLE IF EXISTS `logo_category`;
CREATE TABLE `logo_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logo_category
-- ----------------------------
INSERT INTO `logo_category` VALUES (5, 'Medical & Hospital', 0, '2023-04-03 13:42:55', '2023-04-02 14:47:04', 1);
INSERT INTO `logo_category` VALUES (6, 'Grocery & Shop', 0, '2023-04-03 14:51:34', '2023-04-03 14:51:34', 1);
INSERT INTO `logo_category` VALUES (7, 'Electronics', 0, '2023-04-03 17:00:17', '2023-04-03 17:00:17', 14);

-- ----------------------------
-- Table structure for logos
-- ----------------------------
DROP TABLE IF EXISTS `logos`;
CREATE TABLE `logos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `premium` int NOT NULL DEFAULT 0,
  `thumb_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'business',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logos
-- ----------------------------
INSERT INTO `logos` VALUES (1, 'Medical', '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Alkatra&display=swap\" rel=\"stylesheet\">\r\n    <style>\r\n      .container {\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n        flex-direction: column;\r\n        height: 100vh;\r\n        /* set height of container to full viewport height */\r\n      }\r\n\r\n      .name {\r\n        margin: 0px;\r\n        font-weight: bold;\r\n        font-size: 20px;\r\n        font-family: \'Alkatra\', cursive;\r\n      }\r\n\r\n      img {\r\n        max-width: 50%;\r\n        /* ensure image does not exceed the width of the container */\r\n      }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <div class=\"container\">\r\n      <img src=\"https://i.pinimg.com/originals/85/95/f4/8595f4b711e503bc72fe396e5043e0c2.png\" alt=\"Image description\">\r\n      <p class=\"name\" id=\"name\">Poster Banao</p>\r\n    </div>\r\n    <script>\r\n      function changeName(val) {\r\n        document.getElementById(\'name\').innerHTML = val;\r\n      }\r\n    </script>\r\n  </body>\r\n</html>', 0, 'uploads/logos/0bedd691-d384-4832-bceb-292e05b0d100.png', 5, 0, 'business', '2023-04-05 21:52:06', '2023-04-03 11:24:35', 1);
INSERT INTO `logos` VALUES (2, 'medical & hospital', '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Teko&display=swap\" rel=\"stylesheet\">\r\n    <style>\r\n      .container {\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n        flex-direction: column;\r\n        height: 100vh;\r\n        /* set height of container to full viewport height */\r\n      }\r\n\r\n      .name {\r\n        margin-top: -5px;\r\n        font-weight: bold;\r\n        font-size: 20px;\r\n        font-family: \'Teko\', sans-serif;\r\n      }\r\n\r\n      img {\r\n        max-width: 50%;\r\n        /* ensure image does not exceed the width of the container */\r\n      }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <div class=\"container\">\r\n      <img src=\"https://cdn-icons-png.flaticon.com/512/822/822143.png\" alt=\"Image description\">\r\n      <p class=\"name\" id=\"name\">Poster Banao</p>\r\n    </div>\r\n    <script>\r\n      function changeName(val) {\r\n        document.getElementById(\'name\').innerHTML = val;\r\n      }\r\n    </script>\r\n  </body>\r\n</html>', 0, 'uploads/logos/095925d1-f1fd-4fa3-b396-daabb366998d.png', 5, 0, 'business', '2023-04-05 21:52:37', '2023-04-03 14:05:40', 1);
INSERT INTO `logos` VALUES (3, 'Hospital & Medical', '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap\" rel=\"stylesheet\">\r\n    <style>\r\n      .container {\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n        height: 100vh;\r\n        /* set height of container to full viewport height */\r\n      }\r\n\r\n      .name {\r\n        color: green;\r\n        margin-left: -20px;\r\n        font-weight: bold;\r\n        font-size: 20px;\r\n        font-family: \'Bebas Neue\', cursive;\r\n      }\r\n\r\n      img {\r\n        max-width: 50%;\r\n        /* ensure image does not exceed the width of the container */\r\n      }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <div class=\"container\">\r\n      <img src=\"https://res.cloudinary.com/dse9nnmqr/image/upload/v1680513734/cropped-favicon-1-removebg-preview_dluizw.png\" alt=\"Image description\">\r\n      <p class=\"name\" id=\"name\">Poster Banao</p>\r\n    </div>\r\n    <script>\r\n      function changeName(val) {\r\n        document.getElementById(\'name\').innerHTML = val;\r\n      }\r\n    </script>\r\n  </body>\r\n</html>', 1, 'uploads/logos/b9f56998-fcbe-4bfd-9a2e-c20607cb4447.png', 5, 0, 'business', '2023-04-05 21:52:59', '2023-04-03 14:27:09', 1);
INSERT INTO `logos` VALUES (4, 'shop', '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Righteous&display=swap\" rel=\"stylesheet\">\r\n    <style>\r\n      .container {\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n        flex-direction: column;\r\n        height: 100vh;\r\n        /* set height of container to full viewport height */\r\n      }\r\n\r\n      .name {\r\n        margin-top: 10px;\r\n        font-weight: bold;\r\n        font-size: 20px;\r\n        font-family: \'Righteous\', cursive;\r\n      }\r\n\r\n      img {\r\n        max-width: 50%;\r\n        /* ensure image does not exceed the width of the container */\r\n      }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <div class=\"container\">\r\n      <img src=\"https://res.cloudinary.com/dse9nnmqr/image/upload/v1680515898/hand-drawn-shop-local-logo-design_23-2149581475-removebg-preview_rzkh2b.png\">\r\n      <p class=\"name\" id=\"name\">Poster Banao</p>\r\n    </div>\r\n    <script>\r\n      function changeName(val) {\r\n        document.getElementById(\'name\').innerHTML = val;\r\n      }\r\n    </script>\r\n  </body>\r\n</html>', 1, 'uploads/logos/af0b9ffb-451a-4c50-afb7-366ac4357d24.png', 6, 0, 'business', '2023-04-05 21:53:27', '2023-04-03 15:02:29', 14);
INSERT INTO `logos` VALUES (5, 'mobile & laptop', '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap\" rel=\"stylesheet\">\r\n    <style>\r\n      .container {\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n        flex-direction: column;\r\n        height: 100vh;\r\n        /* set height of container to full viewport height */\r\n      }\r\n\r\n      .name {\r\n        margin-top: 10px;\r\n        font-weight: bold;\r\n        font-size: 20px;\r\n        font-family: \'Black Ops One\', cursive;\r\n      }\r\n\r\n      img {\r\n        max-width: 50%;\r\n        /* ensure image does not exceed the width of the container */\r\n      }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <div class=\"container\">\r\n      <img src=\"https://cdn-icons-png.flaticon.com/512/3659/3659898.png\">\r\n      <p class=\"name\" id=\"name\">Poster Banao</p>\r\n    </div>\r\n    <script>\r\n      function changeName(val) {\r\n        document.getElementById(\'name\').innerHTML = val;\r\n      }\r\n    </script>\r\n  </body>\r\n</html>', 0, 'uploads/logos/d0eadace-aa22-4299-a039-e043e9ea940f.png', 7, 0, 'business', '2023-04-05 21:53:52', '2023-04-03 17:05:44', 20);
INSERT INTO `logos` VALUES (6, 'electronics', '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap\" rel=\"stylesheet\">\r\n    <style>\r\n      .container {\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n        flex-direction: column;\r\n        height: 100vh;\r\n        /* set height of container to full viewport height */\r\n      }\r\n\r\n      .name {\r\n        color: rgb(22, 38, 105);\r\n        margin-top: -5px;\r\n        font-weight: bold;\r\n        font-size: 10px;\r\n        font-family: \'Bungee Shade\', cursive;\r\n      }\r\n\r\n      img {\r\n        max-width: 60%;\r\n        /* ensure image does not exceed the width of the container */\r\n      }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <div class=\"container\">\r\n      <img src=\"https://res.cloudinary.com/dse9nnmqr/image/upload/v1680523777/_Pngtree_electric_mechanical_logo_4167230-removebg-preview_qvnyz8.png\">\r\n      <p class=\"name\" id=\"name\">Poster Banao</p>\r\n    </div>\r\n    <script>\r\n      function changeName(val) {\r\n        document.getElementById(\'name\').innerHTML = val;\r\n      }\r\n    </script>\r\n  </body>\r\n</html>', 0, 'uploads/logos/68e38ef8-fd30-409e-a8f2-81d579ab268a.png', 7, 0, 'business', '2023-04-05 22:03:48', '2023-04-03 17:17:48', 21);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `premium` int NOT NULL DEFAULT 0,
  `category_id` int NOT NULL,
  `language` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'en',
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music
-- ----------------------------

-- ----------------------------
-- Table structure for music_category
-- ----------------------------
DROP TABLE IF EXISTS `music_category`;
CREATE TABLE `music_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orders` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_category
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `message` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `action` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action_item` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for offer_dialog
-- ----------------------------
DROP TABLE IF EXISTS `offer_dialog`;
CREATE TABLE `offer_dialog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_url` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `action` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `action_item` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of offer_dialog
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_url` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `frame_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `slug` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'festival,bussiness',
  `json` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category_id` int NOT NULL DEFAULT 0,
  `sub_category_id` int NULL DEFAULT 0,
  `section_id` int NOT NULL DEFAULT 0,
  `orientation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `height` int NULL DEFAULT 0,
  `width` int NULL DEFAULT 0,
  `views` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `premium` int NOT NULL DEFAULT 0 COMMENT '1=premium',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (7, 'Halloween', 'uploads/thumbnail/442a2937-c1db-4b4e-b22e-16c6cf1501e1.jpg', NULL, 'uploads/posts/442a2937-c1db-4b4e-b22e-16c6cf1501e1.jpg', NULL, 'festival', NULL, 'en', 7, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-03 17:01:28', '2024-04-01 03:16:55', 1);
INSERT INTO `posts` VALUES (8, 'Happy Holi', 'uploads/thumbnail/76311891-ebc5-44b2-b42e-b139c0b7412f.png', NULL, 'uploads/posts/76311891-ebc5-44b2-b42e-b139c0b7412f.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:10:31', '2024-04-01 04:37:37', 1);
INSERT INTO `posts` VALUES (9, 'Happy Dhuleti', 'uploads/thumbnail/072e8307-9a9f-4c18-a1dc-fd8163cc0b04.png', NULL, 'uploads/posts/072e8307-9a9f-4c18-a1dc-fd8163cc0b04.png', NULL, 'festival', NULL, 'en', 16, 0, 3, 'square', 1080, 1080, 0, 0, 1, '2024-04-03 17:25:20', '2024-04-01 06:07:49', 1);
INSERT INTO `posts` VALUES (10, 'Dhuleti Wishes', 'uploads/thumbnail/d3d885af-7e16-4c93-aef2-d3d8d7b648eb.png', NULL, 'uploads/posts/d3d885af-7e16-4c93-aef2-d3d8d7b648eb.png', NULL, 'festival', NULL, 'gu', 16, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:24:42', '2024-04-01 06:25:41', 1);
INSERT INTO `posts` VALUES (11, 'Happy Dhuleti', 'uploads/thumbnail/c33187a0-51d0-4569-9187-51ce3c03575b.png', NULL, 'uploads/posts/c33187a0-51d0-4569-9187-51ce3c03575b.png', NULL, 'festival', NULL, 'en', 16, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:24:03', '2024-04-01 06:29:32', 14);
INSERT INTO `posts` VALUES (12, 'Dhuty', 'uploads/thumbnail/81357ab7-8e3a-4533-b64f-5c1b28c89071.png', NULL, 'uploads/posts/81357ab7-8e3a-4533-b64f-5c1b28c89071.png', NULL, 'festival', NULL, 'gu', 12, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:22:36', '2024-04-01 06:38:11', 14);
INSERT INTO `posts` VALUES (13, 'Happy Holi', 'uploads/thumbnail/aad61f80-dda5-4e03-8510-026b6c7bcd98.png', NULL, 'uploads/posts/aad61f80-dda5-4e03-8510-026b6c7bcd98.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:08:41', '2024-04-01 06:41:22', 1);
INSERT INTO `posts` VALUES (14, 'Happy Holi', 'uploads/thumbnail/f5a8440a-a715-4cac-916c-8480c47568d9.jpg', NULL, 'uploads/posts/f5a8440a-a715-4cac-916c-8480c47568d9.jpg', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 500, 500, 0, 0, 1, '2024-04-02 01:08:09', '2024-04-01 06:48:22', 1);
INSERT INTO `posts` VALUES (15, 'Happy Holi', 'uploads/thumbnail/2324948b-3c4e-4302-ad5f-55f4ed7b2f64.png', NULL, 'uploads/posts/2324948b-3c4e-4302-ad5f-55f4ed7b2f64.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:07:54', '2024-04-01 06:52:46', 1);
INSERT INTO `posts` VALUES (16, 'Dhuleti', 'uploads/thumbnail/092c1ee9-29ec-452d-81a3-311cf0793df8.png', NULL, 'uploads/posts/092c1ee9-29ec-452d-81a3-311cf0793df8.png', NULL, 'festival', NULL, 'gu', 38, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:21:07', '2024-04-01 06:56:01', 1);
INSERT INTO `posts` VALUES (17, 'Happy Holi', 'uploads/thumbnail/ca0b01a2-c51f-42f2-86e7-c1f29283d521.png', NULL, 'uploads/posts/ca0b01a2-c51f-42f2-86e7-c1f29283d521.png', NULL, 'festival', NULL, 'gu', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:39:02', '2024-04-01 06:58:30', 1);
INSERT INTO `posts` VALUES (18, 'Happy Holi', 'uploads/thumbnail/2c39691e-771e-4034-b534-84e99420ba72.jpg', NULL, 'uploads/posts/2c39691e-771e-4034-b534-84e99420ba72.jpg', NULL, 'festival', NULL, 'gu', 109, 0, 3, 'square', 2048, 2048, 0, 0, 1, '2024-04-03 17:38:03', '2024-04-01 10:08:29', 1);
INSERT INTO `posts` VALUES (20, '020', '020', '020', '020', '020', '020', '020', '020', 20, 20, 20, '020', 20, 20, 20, 20, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20);
INSERT INTO `posts` VALUES (31, 'Happy Holi', 'uploads/thumbnail/a88ed05c-b593-4561-9b29-383f4e8bffbd.png', NULL, 'uploads/posts/a88ed05c-b593-4561-9b29-383f4e8bffbd.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:06:40', '2024-04-01 10:16:06', 14);
INSERT INTO `posts` VALUES (32, 'Dhuleti', 'uploads/thumbnail/8db9d1a6-7610-4f60-aeeb-c5e7d96f3f17.png', NULL, 'uploads/posts/8db9d1a6-7610-4f60-aeeb-c5e7d96f3f17.png', NULL, 'festival', NULL, 'gu', 16, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:20:27', '2024-04-01 10:19:11', 20);
INSERT INTO `posts` VALUES (33, 'Happy Dhuleti', 'uploads/thumbnail/59a2be0d-251e-4cf8-b476-505db3c30abb.png', NULL, 'uploads/posts/59a2be0d-251e-4cf8-b476-505db3c30abb.png', NULL, 'festival', NULL, 'en', 16, 0, 3, 'square', 1080, 1080, 0, 0, 1, '2024-04-03 17:19:37', '2024-04-01 10:27:03', 20);
INSERT INTO `posts` VALUES (34, 'Happy Holi', 'uploads/thumbnail/4884b80c-e191-4f1a-8ecf-f96e6e9a18d1.png', NULL, 'uploads/posts/4884b80c-e191-4f1a-8ecf-f96e6e9a18d1.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'portrait', 1054, 1000, 0, 0, 1, '2024-04-02 01:05:41', '2024-04-01 10:38:09', 20);
INSERT INTO `posts` VALUES (35, 'Happy Holi', 'uploads/thumbnail/133b5f1a-8e07-47b6-9439-3f687831ed97.png', NULL, 'uploads/posts/133b5f1a-8e07-47b6-9439-3f687831ed97.png', NULL, 'festival', NULL, 'gu', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:05:25', '2024-04-01 10:41:22', 20);
INSERT INTO `posts` VALUES (36, 'Happy Holi', 'uploads/thumbnail/d1d989ba-798d-477a-8226-c045caeeb4da.png', NULL, 'uploads/posts/d1d989ba-798d-477a-8226-c045caeeb4da.png', NULL, 'festival', NULL, 'gu', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:04:34', '2024-04-01 10:44:52', 20);
INSERT INTO `posts` VALUES (38, 'Happy Holi', 'uploads/thumbnail/12bc8ce6-219b-49e8-9eeb-a9795c40a780.png', NULL, 'uploads/posts/12bc8ce6-219b-49e8-9eeb-a9795c40a780.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:04:05', '2024-04-01 10:59:02', 21);
INSERT INTO `posts` VALUES (39, 'Happy Holi', 'uploads/thumbnail/4c0d3263-c3da-4ca2-9d74-b5d1373298fa.png', NULL, 'uploads/posts/4c0d3263-c3da-4ca2-9d74-b5d1373298fa.png', NULL, 'festival', NULL, 'gu', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:03:48', '2024-04-01 11:03:37', 21);
INSERT INTO `posts` VALUES (41, 'Happy Holi', 'uploads/thumbnail/b756f34d-3c44-4167-8205-849230ef5e2d.png', NULL, 'uploads/posts/b756f34d-3c44-4167-8205-849230ef5e2d.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:03:16', '2024-04-01 11:09:01', 21);
INSERT INTO `posts` VALUES (42, 'Happy Holi', 'uploads/thumbnail/4153870a-a8c1-4802-8914-b3426a0ec130.png', NULL, 'uploads/posts/4153870a-a8c1-4802-8914-b3426a0ec130.png', NULL, 'festival', NULL, 'en', 109, 0, 3, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:02:37', '2024-04-01 11:34:23', 21);
INSERT INTO `posts` VALUES (44, 'Happy Holi', 'uploads/thumbnail/11bafd8d-81a9-4622-9fe2-f9524c18cf1c.png', NULL, 'uploads/posts/11bafd8d-81a9-4622-9fe2-f9524c18cf1c.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:01:55', '2024-04-01 11:45:39', 21);
INSERT INTO `posts` VALUES (45, 'Happy Holi', 'uploads/thumbnail/522079ef-4a31-4157-86b7-7b6b7702e98a.png', NULL, 'uploads/posts/522079ef-4a31-4157-86b7-7b6b7702e98a.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'landscape', 1022, 1024, 0, 0, 1, '2024-04-02 01:01:40', '2024-04-01 11:48:14', 21);
INSERT INTO `posts` VALUES (46, 'Happy Holi', 'uploads/thumbnail/8c81e999-07a5-47f9-b5ab-fe2c7b58b779.jpg', NULL, 'uploads/posts/8c81e999-07a5-47f9-b5ab-fe2c7b58b779.jpg', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 01:01:24', '2024-04-01 11:51:01', 21);
INSERT INTO `posts` VALUES (47, 'Happy Holi', 'uploads/thumbnail/4f7368d2-91b7-4d9e-9844-69004aa16339.png', NULL, 'uploads/posts/4f7368d2-91b7-4d9e-9844-69004aa16339.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:01:12', '2024-04-01 11:53:21', 21);
INSERT INTO `posts` VALUES (48, 'Happy Holi', 'uploads/thumbnail/7817dc8d-8fe8-4753-bec6-17a71597f688.png', NULL, 'uploads/posts/7817dc8d-8fe8-4753-bec6-17a71597f688.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:00:25', '2024-04-01 11:55:47', 21);
INSERT INTO `posts` VALUES (49, 'Happy Holi', 'uploads/thumbnail/c87aae58-090f-41a8-bc0e-dc5eca4b154d.png', NULL, 'uploads/posts/c87aae58-090f-41a8-bc0e-dc5eca4b154d.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 01:00:07', '2024-04-01 11:59:00', 21);
INSERT INTO `posts` VALUES (50, 'Happy Holi', 'uploads/thumbnail/eb566963-3c2d-4916-a4bd-4b21397cb80d.png', NULL, 'uploads/posts/eb566963-3c2d-4916-a4bd-4b21397cb80d.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:33:19', '2024-04-01 12:03:01', 14);
INSERT INTO `posts` VALUES (51, 'Dhuleti', 'uploads/thumbnail/37ffc905-52ff-453e-af67-5749a333dd2f.png', NULL, 'uploads/posts/37ffc905-52ff-453e-af67-5749a333dd2f.png', NULL, 'festival', NULL, 'hi', 38, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:18:37', '2024-04-01 12:07:44', 1);
INSERT INTO `posts` VALUES (52, 'Covid Safe Holi', 'uploads/thumbnail/06904746-3f07-475d-87a2-ec5f4fb20ec0.jpg', NULL, 'uploads/posts/06904746-3f07-475d-87a2-ec5f4fb20ec0.jpg', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 00:59:01', '2024-04-01 12:11:57', 20);
INSERT INTO `posts` VALUES (53, 'Happy Holi', 'uploads/thumbnail/59732309-af72-44a7-836b-8cf30a9eaf15.png', NULL, 'uploads/posts/59732309-af72-44a7-836b-8cf30a9eaf15.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:58:42', '2024-04-01 12:21:18', 14);
INSERT INTO `posts` VALUES (54, 'Happy Holi', 'uploads/thumbnail/33e1efea-45ea-469c-9f41-96cd90d44ef5.png', NULL, 'uploads/posts/33e1efea-45ea-469c-9f41-96cd90d44ef5.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:58:23', '2024-04-01 12:23:46', 14);
INSERT INTO `posts` VALUES (55, 'Happy Holi', 'uploads/thumbnail/75a43b4d-a03a-4be9-b2b0-71c74f497057.png', NULL, 'uploads/posts/75a43b4d-a03a-4be9-b2b0-71c74f497057.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1080, 1080, 0, 0, 1, '2024-04-02 00:58:08', '2024-04-01 12:29:22', 14);
INSERT INTO `posts` VALUES (56, 'Happy Holi', 'uploads/thumbnail/9da610b1-9eef-4c4d-93bb-ec9280d866ce.png', NULL, 'uploads/posts/9da610b1-9eef-4c4d-93bb-ec9280d866ce.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:57:51', '2024-04-01 12:37:15', 14);
INSERT INTO `posts` VALUES (57, 'Happy Holi', 'uploads/thumbnail/d0d7f6bd-5ea0-4cea-b2ec-dc8bb234443e.png', NULL, 'uploads/posts/d0d7f6bd-5ea0-4cea-b2ec-dc8bb234443e.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:57:29', '2024-04-01 12:40:46', 20);
INSERT INTO `posts` VALUES (58, 'Happy Holi', 'uploads/thumbnail/20ee737c-17e7-47d7-aeea-44c048261193.png', NULL, 'uploads/posts/20ee737c-17e7-47d7-aeea-44c048261193.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:57:12', '2024-04-01 12:45:40', 20);
INSERT INTO `posts` VALUES (59, 'Happy Holi', 'uploads/thumbnail/f3cf66df-9e7d-4694-9afd-679e69346d61.png', NULL, 'uploads/posts/f3cf66df-9e7d-4694-9afd-679e69346d61.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:56:55', '2024-04-01 12:48:37', 14);
INSERT INTO `posts` VALUES (60, 'Happy Holi', 'uploads/thumbnail/c0886638-101b-4e85-a49d-274049e2b130.png', NULL, 'uploads/posts/c0886638-101b-4e85-a49d-274049e2b130.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:52:40', '2024-04-01 13:05:47', 21);
INSERT INTO `posts` VALUES (61, 'Happy Holi', 'uploads/thumbnail/53dd0b16-592d-4656-b655-bcb5cc1afd1c.jpg', NULL, 'uploads/posts/53dd0b16-592d-4656-b655-bcb5cc1afd1c.jpg', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 00:52:23', '2024-04-01 13:14:10', 21);
INSERT INTO `posts` VALUES (62, 'Happy Rangpanchami', 'uploads/thumbnail/0a3803e7-44fb-4066-842d-82361700dd40.png', NULL, 'uploads/posts/0a3803e7-44fb-4066-842d-82361700dd40.png', NULL, 'festival', NULL, 'hi', 49, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:30:43', '2024-04-01 13:24:49', 1);
INSERT INTO `posts` VALUES (63, 'Happy Holi', 'uploads/thumbnail/5ec921d3-a2c7-4ace-ada6-8e5af0a66b24.png', NULL, 'uploads/posts/5ec921d3-a2c7-4ace-ada6-8e5af0a66b24.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:51:35', '2024-04-01 13:28:34', 14);
INSERT INTO `posts` VALUES (64, 'Happy Holi', 'uploads/thumbnail/ed8514bb-8bab-423e-a4e3-6bdbc772b05e.png', NULL, 'uploads/posts/ed8514bb-8bab-423e-a4e3-6bdbc772b05e.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:50:58', '2024-04-01 13:31:40', 20);
INSERT INTO `posts` VALUES (65, 'Happy Holi', 'uploads/thumbnail/0b266d2b-dedf-4fb2-9243-52bc490e7bec.png', NULL, 'uploads/posts/0b266d2b-dedf-4fb2-9243-52bc490e7bec.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:49:40', '2024-04-01 13:34:55', 21);
INSERT INTO `posts` VALUES (66, 'Happy Holi', 'uploads/thumbnail/3a4d5d41-2aca-4db6-9408-e9467c4dff0c.png', NULL, 'uploads/posts/3a4d5d41-2aca-4db6-9408-e9467c4dff0c.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:49:18', '2024-04-01 13:38:37', 1);
INSERT INTO `posts` VALUES (67, 'Happy Rangpanchami', 'uploads/thumbnail/109a7d8f-9ef7-4ef1-9727-324a9dbdb49c.png', NULL, 'uploads/posts/109a7d8f-9ef7-4ef1-9727-324a9dbdb49c.png', NULL, 'festival', NULL, 'hi', 49, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:17:40', '2024-04-01 13:41:55', 14);
INSERT INTO `posts` VALUES (68, 'Happy Holi', 'uploads/thumbnail/b528b318-ec00-4b70-b6c5-920ac4c9189e.png', NULL, 'uploads/posts/b528b318-ec00-4b70-b6c5-920ac4c9189e.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:48:18', '2024-04-01 13:44:18', 20);
INSERT INTO `posts` VALUES (69, 'Dhulivandan', 'uploads/thumbnail/ff194336-c116-4057-b2c3-d10caa540a28.png', NULL, 'uploads/posts/ff194336-c116-4057-b2c3-d10caa540a28.png', NULL, 'festival', NULL, 'gu', 56, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:15:56', '2024-04-01 13:48:45', 21);
INSERT INTO `posts` VALUES (70, 'Happy Holi', 'uploads/thumbnail/76315752-96b7-4865-835c-b3d12d866653.png', NULL, 'uploads/posts/76315752-96b7-4865-835c-b3d12d866653.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'landscape', 1023, 1024, 0, 0, 1, '2024-04-02 00:46:14', '2024-04-01 14:29:42', 1);
INSERT INTO `posts` VALUES (71, 'Happy Holi', 'uploads/thumbnail/9064ae9b-d8ff-4fdc-ba6c-170a296ea3b0.png', NULL, 'uploads/posts/9064ae9b-d8ff-4fdc-ba6c-170a296ea3b0.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:44:27', '2024-04-01 14:32:30', 14);
INSERT INTO `posts` VALUES (72, 'Happy Holi', 'uploads/thumbnail/1d0a9ab9-a99b-4b41-a1ce-e79b37c0ff7d.png', NULL, 'uploads/posts/1d0a9ab9-a99b-4b41-a1ce-e79b37c0ff7d.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:33:08', '2024-04-01 14:34:01', 20);
INSERT INTO `posts` VALUES (73, 'Happy Holi', 'uploads/thumbnail/9fb8c9dd-056e-4990-97e9-09903eedfb82.png', NULL, 'uploads/posts/9fb8c9dd-056e-4990-97e9-09903eedfb82.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:32:47', '2024-04-01 14:37:19', 21);
INSERT INTO `posts` VALUES (74, 'Happy Holi', 'uploads/thumbnail/7f8bb80e-2bef-4354-8ec0-7d89d18cbba9.png', NULL, 'uploads/posts/7f8bb80e-2bef-4354-8ec0-7d89d18cbba9.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:32:26', '2024-04-01 14:38:32', 1);
INSERT INTO `posts` VALUES (75, 'Happy Holi', 'uploads/thumbnail/c131ed7a-d076-4437-9477-ccd9ea9516eb.png', NULL, 'uploads/posts/c131ed7a-d076-4437-9477-ccd9ea9516eb.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:31:51', '2024-04-01 14:41:31', 14);
INSERT INTO `posts` VALUES (76, 'Dhuleti\'s Wish', 'uploads/thumbnail/4e9b2221-c9ac-4327-95e7-b63d09f51cc9.png', NULL, 'uploads/posts/4e9b2221-c9ac-4327-95e7-b63d09f51cc9.png', NULL, 'festival', NULL, 'gu', 38, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:15:16', '2024-04-01 14:43:56', 20);
INSERT INTO `posts` VALUES (77, 'Happy Holi', 'uploads/thumbnail/8a645c28-54f8-4755-9a7d-f735abeb536e.png', NULL, 'uploads/posts/8a645c28-54f8-4755-9a7d-f735abeb536e.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:31:08', '2024-04-01 14:48:18', 21);
INSERT INTO `posts` VALUES (78, 'Happy Holi', 'uploads/thumbnail/e7358b0a-3afa-43c7-bec1-b954692ba56c.png', NULL, 'uploads/posts/e7358b0a-3afa-43c7-bec1-b954692ba56c.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'landscape', 1021, 1024, 0, 0, 1, '2024-04-02 00:30:37', '2024-04-01 14:49:54', 1);
INSERT INTO `posts` VALUES (79, 'Happy Holi', 'uploads/thumbnail/dedfec89-6003-4b59-af94-cd284fd5f841.png', NULL, 'uploads/posts/dedfec89-6003-4b59-af94-cd284fd5f841.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:30:15', '2024-04-01 14:53:46', 14);
INSERT INTO `posts` VALUES (80, 'Happy Dhuleti', 'uploads/thumbnail/810c6598-8d07-49a1-a032-5f58f6910674.png', NULL, 'uploads/posts/810c6598-8d07-49a1-a032-5f58f6910674.png', NULL, 'festival', NULL, 'en', 38, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:16:38', '2024-04-01 14:56:03', 20);
INSERT INTO `posts` VALUES (81, 'Dhuleti', 'uploads/thumbnail/a65c92a8-96e4-4af3-a2f3-e8f8b2e3910d.png', NULL, 'uploads/posts/a65c92a8-96e4-4af3-a2f3-e8f8b2e3910d.png', NULL, 'festival', NULL, 'gu', 38, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:13:32', '2024-04-01 15:04:59', 21);
INSERT INTO `posts` VALUES (82, 'Happy Holi', 'uploads/thumbnail/867383fb-3a36-422e-bee9-2116c920df0c.png', NULL, 'uploads/posts/867383fb-3a36-422e-bee9-2116c920df0c.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:28:48', '2024-04-01 15:09:41', 1);
INSERT INTO `posts` VALUES (83, 'Happy Holi', 'uploads/thumbnail/c512d558-5943-4fda-a52d-ae81bd23b712.jpg', NULL, 'uploads/posts/c512d558-5943-4fda-a52d-ae81bd23b712.jpg', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 00:28:01', '2024-04-01 15:13:00', 14);
INSERT INTO `posts` VALUES (84, 'Happy Holi', 'uploads/thumbnail/8c961e1b-cd89-48f8-94b2-3bdda006e8ab.png', NULL, 'uploads/posts/8c961e1b-cd89-48f8-94b2-3bdda006e8ab.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'landscape', 1024, 1025, 0, 0, 1, '2024-04-02 00:26:23', '2024-04-01 15:14:05', 20);
INSERT INTO `posts` VALUES (85, 'Happy Holi', 'uploads/thumbnail/8d7abf8a-15a3-40d4-b186-96144985135e.png', NULL, 'uploads/posts/8d7abf8a-15a3-40d4-b186-96144985135e.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:25:59', '2024-04-01 15:55:18', 21);
INSERT INTO `posts` VALUES (86, 'Happy Holi', 'uploads/thumbnail/c842073d-2952-4ca4-97f7-6f51fb214d7c.png', NULL, 'uploads/posts/c842073d-2952-4ca4-97f7-6f51fb214d7c.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:25:34', '2024-04-01 15:57:07', 1);
INSERT INTO `posts` VALUES (87, 'Happy Holi', 'uploads/thumbnail/b18908a9-6441-42e0-9def-dacbb59d1c48.png', NULL, 'uploads/posts/b18908a9-6441-42e0-9def-dacbb59d1c48.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1080, 1080, 0, 0, 1, '2024-04-02 00:24:55', '2024-04-01 16:00:36', 14);
INSERT INTO `posts` VALUES (88, 'Happy Holi', 'uploads/thumbnail/59071749-a052-42c1-a286-6996949b9f9c.png', NULL, 'uploads/posts/59071749-a052-42c1-a286-6996949b9f9c.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:24:32', '2024-04-01 16:01:44', 20);
INSERT INTO `posts` VALUES (89, 'Happy Holi', 'uploads/thumbnail/4f790b73-a53d-4b24-8591-335802600258.png', NULL, 'uploads/posts/4f790b73-a53d-4b24-8591-335802600258.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:24:11', '2024-04-01 16:04:44', 21);
INSERT INTO `posts` VALUES (90, 'Happy Holi', 'uploads/thumbnail/a1e70801-0fdd-419f-96a4-ed3089a100a6.png', NULL, 'uploads/posts/a1e70801-0fdd-419f-96a4-ed3089a100a6.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:23:43', '2024-04-01 16:08:51', 1);
INSERT INTO `posts` VALUES (91, 'Happy Holi', 'uploads/thumbnail/72eb6e00-d087-4987-8b04-9d87f90abe8d.jpg', NULL, 'uploads/posts/72eb6e00-d087-4987-8b04-9d87f90abe8d.jpg', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 00:23:19', '2024-04-01 16:14:58', 14);
INSERT INTO `posts` VALUES (92, 'Happy Holi', 'uploads/thumbnail/d2b1e3e8-d3c7-4510-b32b-bf3fcc5d25f6.png', NULL, 'uploads/posts/d2b1e3e8-d3c7-4510-b32b-bf3fcc5d25f6.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:22:53', '2024-04-01 16:18:05', 20);
INSERT INTO `posts` VALUES (93, 'Dhuleti', 'uploads/thumbnail/0cadadb8-c1ae-492c-afa7-3161166dd900.png', NULL, 'uploads/posts/0cadadb8-c1ae-492c-afa7-3161166dd900.png', NULL, 'festival', NULL, 'gu', 16, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:12:37', '2024-04-01 16:21:07', 21);
INSERT INTO `posts` VALUES (94, 'Happy Holi', 'uploads/thumbnail/4d01cc87-6eb8-4e65-a022-5b238a3253c2.png', NULL, 'uploads/posts/4d01cc87-6eb8-4e65-a022-5b238a3253c2.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:21:47', '2024-04-01 16:24:13', 1);
INSERT INTO `posts` VALUES (95, 'Happy Holi', 'uploads/thumbnail/094e4974-7a45-4d96-b286-a30e8ba574b5.png', NULL, 'uploads/posts/094e4974-7a45-4d96-b286-a30e8ba574b5.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:21:28', '2024-04-01 16:27:42', 0);
INSERT INTO `posts` VALUES (96, 'Happy Holi', 'uploads/thumbnail/97ef5b6c-f2bc-4198-8d60-8d051ad5016f.png', NULL, 'uploads/posts/97ef5b6c-f2bc-4198-8d60-8d051ad5016f.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:20:23', '2024-04-01 16:30:16', 1);
INSERT INTO `posts` VALUES (97, 'Happy Holi', 'uploads/thumbnail/44a92270-2419-4965-a630-5f3b3fb22b03.png', NULL, 'uploads/posts/44a92270-2419-4965-a630-5f3b3fb22b03.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1025, 1025, 0, 0, 1, '2024-04-02 00:20:00', '2024-04-01 16:34:19', 1);
INSERT INTO `posts` VALUES (98, 'Happy Holi', 'uploads/thumbnail/00dd9816-9e59-49d2-a6d5-9feadf1364d6.png', NULL, 'uploads/posts/00dd9816-9e59-49d2-a6d5-9feadf1364d6.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:19:36', '2024-04-01 16:37:09', 1);
INSERT INTO `posts` VALUES (99, 'Happy Holi', 'uploads/thumbnail/446be7aa-75af-485d-b56c-494e50092e42.png', NULL, 'uploads/posts/446be7aa-75af-485d-b56c-494e50092e42.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1025, 1025, 0, 0, 1, '2024-04-02 00:18:14', '2024-04-01 16:42:10', 1);
INSERT INTO `posts` VALUES (100, 'Happy Holi', 'uploads/thumbnail/b5f305ed-1acf-4e99-a2b8-329db497981b.png', NULL, 'uploads/posts/b5f305ed-1acf-4e99-a2b8-329db497981b.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 0, '2024-04-02 00:17:49', '2024-04-01 16:47:10', 0);
INSERT INTO `posts` VALUES (101, 'Happy Holi', 'uploads/thumbnail/68e3b06c-0c32-4c18-b0ef-9f5babebd397.png', NULL, 'uploads/posts/68e3b06c-0c32-4c18-b0ef-9f5babebd397.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:16:48', '2024-04-01 16:50:09', 1);
INSERT INTO `posts` VALUES (102, 'Happy Holi', 'uploads/thumbnail/e71f5040-2b34-430d-ae9c-b66546ed5810.png', NULL, 'uploads/posts/e71f5040-2b34-430d-ae9c-b66546ed5810.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:16:12', '2024-04-01 17:01:19', 0);
INSERT INTO `posts` VALUES (103, 'Happy Holi', 'uploads/thumbnail/1aa454f6-5318-4d58-8a79-8e8086812f03.png', NULL, 'uploads/posts/1aa454f6-5318-4d58-8a79-8e8086812f03.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 300, 300, 0, 0, 1, '2024-04-02 00:15:47', '2024-04-01 17:08:05', 1);
INSERT INTO `posts` VALUES (104, 'Happy Holi', 'uploads/thumbnail/35d2a322-251a-4f4b-9ad8-4e88a2f511de.png', NULL, 'uploads/posts/35d2a322-251a-4f4b-9ad8-4e88a2f511de.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:15:26', '2024-04-01 17:10:47', 14);
INSERT INTO `posts` VALUES (105, 'Happy Holi', 'uploads/thumbnail/96aeb20d-473c-4aaf-9418-99cf96f27c9d.png', NULL, 'uploads/posts/96aeb20d-473c-4aaf-9418-99cf96f27c9d.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:15:03', '2024-04-01 17:19:46', 14);
INSERT INTO `posts` VALUES (106, 'Happy Holi', 'uploads/thumbnail/f4524266-2304-4723-82da-3a4dc3373991.png', NULL, 'uploads/posts/f4524266-2304-4723-82da-3a4dc3373991.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:14:42', '2024-04-01 17:22:33', 14);
INSERT INTO `posts` VALUES (107, 'Happy Holi', 'uploads/thumbnail/b0292ad1-cad5-4dc6-a5aa-0e53135f6c6d.png', NULL, 'uploads/posts/b0292ad1-cad5-4dc6-a5aa-0e53135f6c6d.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:43:54', '2024-04-01 17:26:39', 14);
INSERT INTO `posts` VALUES (108, 'Happy Holi', 'uploads/thumbnail/0e28b426-085a-4907-9cbb-ef081eed91ab.png', NULL, 'uploads/posts/0e28b426-085a-4907-9cbb-ef081eed91ab.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:13:47', '2024-04-01 17:29:16', 14);
INSERT INTO `posts` VALUES (109, 'Happy Holi', 'uploads/thumbnail/cf6ec74b-b196-42c0-a91f-b7e4a2834a09.jpg', NULL, 'uploads/posts/cf6ec74b-b196-42c0-a91f-b7e4a2834a09.jpg', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 00:13:16', '2024-04-01 17:32:53', 20);
INSERT INTO `posts` VALUES (110, 'Happy Holi', 'uploads/thumbnail/b3f04ac1-fa6b-49c9-90dd-fc4600c32024.png', NULL, 'uploads/posts/b3f04ac1-fa6b-49c9-90dd-fc4600c32024.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1080, 1080, 0, 0, 1, '2024-04-02 00:12:55', '2024-04-01 17:35:43', 20);
INSERT INTO `posts` VALUES (111, 'Happy Holi', 'uploads/thumbnail/e90e0785-4055-493e-961a-df92e1dbde46.png', NULL, 'uploads/posts/e90e0785-4055-493e-961a-df92e1dbde46.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1080, 1080, 0, 0, 1, '2024-04-02 00:12:36', '2024-04-01 17:38:03', 20);
INSERT INTO `posts` VALUES (112, 'Dhuleti', 'uploads/thumbnail/73474475-d906-44b2-b65d-419cf01b0ecd.png', NULL, 'uploads/posts/73474475-d906-44b2-b65d-419cf01b0ecd.png', NULL, 'festival', NULL, 'gu', 16, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:11:49', '2024-04-01 17:40:50', 20);
INSERT INTO `posts` VALUES (113, 'Happy Holi', 'uploads/thumbnail/c310de23-227e-4911-84eb-50f0e7409920.png', NULL, 'uploads/posts/c310de23-227e-4911-84eb-50f0e7409920.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'landscape', 1024, 1025, 0, 0, 1, '2024-04-02 00:11:48', '2024-04-01 18:14:32', 20);
INSERT INTO `posts` VALUES (114, 'Happy Holi', 'uploads/thumbnail/b6f09f74-021b-4ca8-8717-69ee34db1a90.png', NULL, 'uploads/posts/b6f09f74-021b-4ca8-8717-69ee34db1a90.png', NULL, 'festival', NULL, 'gu', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:11:33', '2024-04-01 18:17:47', 20);
INSERT INTO `posts` VALUES (115, 'Happy Holi', 'uploads/thumbnail/e802126b-4674-4244-b8e4-d68bd83a84d0.png', NULL, 'uploads/posts/e802126b-4674-4244-b8e4-d68bd83a84d0.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1080, 1080, 0, 0, 1, '2024-04-02 00:10:56', '2024-04-01 18:18:58', 20);
INSERT INTO `posts` VALUES (116, 'Happy Holi', 'uploads/thumbnail/f8f88a8f-e82f-43ea-b8be-e7bb57bef214.jpg', NULL, 'uploads/posts/f8f88a8f-e82f-43ea-b8be-e7bb57bef214.jpg', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 00:10:43', '2024-04-01 18:23:42', 20);
INSERT INTO `posts` VALUES (117, 'Happy Holi', 'uploads/thumbnail/2fefe1c3-19d8-4c3c-b972-1a00fd99e932.png', NULL, 'uploads/posts/2fefe1c3-19d8-4c3c-b972-1a00fd99e932.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 00:10:28', '2024-04-01 18:26:58', 21);
INSERT INTO `posts` VALUES (119, 'Happy Holi', 'uploads/thumbnail/9f633e69-9a87-4b30-a8f2-55eff7b46970.jpg', NULL, 'uploads/posts/9f633e69-9a87-4b30-a8f2-55eff7b46970.jpg', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 00:09:48', '2024-04-01 18:37:16', 21);
INSERT INTO `posts` VALUES (120, 'Happy Diwali', 'uploads/thumbnail/6a0637f3-c368-42a8-9852-6f0d8cb5447f.jpg', NULL, 'uploads/posts/6a0637f3-c368-42a8-9852-6f0d8cb5447f.jpg', NULL, 'festival', NULL, 'hi', 110, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 11:58:50', '2024-04-02 11:58:50', 21);
INSERT INTO `posts` VALUES (121, 'Diwali', 'uploads/thumbnail/58af2f76-af16-4535-a66d-04b2824f1f1f.jpg', NULL, 'uploads/posts/58af2f76-af16-4535-a66d-04b2824f1f1f.jpg', NULL, 'festival', NULL, 'hi', 111, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:03:04', '2024-04-02 12:03:04', 21);
INSERT INTO `posts` VALUES (122, 'Diwali', 'uploads/thumbnail/286b4318-b15c-4d44-8988-098a1f2a3a43.jpg', NULL, 'uploads/posts/286b4318-b15c-4d44-8988-098a1f2a3a43.jpg', NULL, 'festival', NULL, 'hi', 110, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:06:46', '2024-04-02 12:06:46', 21);
INSERT INTO `posts` VALUES (123, 'Diwali', 'uploads/thumbnail/2a7f72c7-92bd-4efc-81c2-c2440a4908c4.jpg', NULL, 'uploads/posts/2a7f72c7-92bd-4efc-81c2-c2440a4908c4.jpg', NULL, 'festival', NULL, 'hi', 112, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:09:47', '2024-04-02 12:09:47', 21);
INSERT INTO `posts` VALUES (124, 'Diwali', 'uploads/thumbnail/b466f118-b2de-4f66-b531-eab195927646.jpg', NULL, 'uploads/posts/b466f118-b2de-4f66-b531-eab195927646.jpg', NULL, 'festival', NULL, 'hi', 114, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:12:35', '2024-04-02 12:12:35', 21);
INSERT INTO `posts` VALUES (125, 'Diwali', 'uploads/thumbnail/06974bb9-fb84-4b3d-8585-6d2aedd8f6a1.jpg', NULL, 'uploads/posts/06974bb9-fb84-4b3d-8585-6d2aedd8f6a1.jpg', NULL, 'festival', NULL, 'en', 115, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:19:12', '2024-04-02 12:19:12', 21);
INSERT INTO `posts` VALUES (126, 'Diwali', 'uploads/thumbnail/a30b7aa0-76ee-4dce-a49d-c536eb480469.jpg', NULL, 'uploads/posts/a30b7aa0-76ee-4dce-a49d-c536eb480469.jpg', NULL, 'festival', NULL, 'hi', 116, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:22:22', '2024-04-02 12:22:22', 21);
INSERT INTO `posts` VALUES (127, 'Diwali', 'uploads/thumbnail/92ad5b62-28f8-42e5-9b4f-ec21a91c3379.jpg', NULL, 'uploads/posts/92ad5b62-28f8-42e5-9b4f-ec21a91c3379.jpg', NULL, 'festival', NULL, 'hi', 117, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:25:43', '2024-04-02 12:25:43', 21);
INSERT INTO `posts` VALUES (128, 'Diwali', 'uploads/thumbnail/7ac7811d-3673-4131-90e2-dd75deff5b72.jpg', NULL, 'uploads/posts/7ac7811d-3673-4131-90e2-dd75deff5b72.jpg', NULL, 'festival', NULL, 'hi', 113, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:27:49', '2024-04-02 12:27:49', 21);
INSERT INTO `posts` VALUES (129, 'Diwali', 'uploads/thumbnail/9a31044c-01dd-4c08-85ee-18aa572feb27.jpg', NULL, 'uploads/posts/9a31044c-01dd-4c08-85ee-18aa572feb27.jpg', NULL, 'festival', NULL, 'hi', 114, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:32:42', '2024-04-02 12:32:42', 21);
INSERT INTO `posts` VALUES (130, 'Diwali', 'uploads/thumbnail/8482fde5-e118-40db-a087-6a4c4ff19164.jpg', NULL, 'uploads/posts/8482fde5-e118-40db-a087-6a4c4ff19164.jpg', NULL, 'festival', NULL, 'hi', 119, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:35:02', '2024-04-02 12:35:02', 1);
INSERT INTO `posts` VALUES (131, 'Diwali', 'uploads/thumbnail/2c5796e0-95a0-47cf-81bc-a44c28b702cb.jpg', NULL, 'uploads/posts/2c5796e0-95a0-47cf-81bc-a44c28b702cb.jpg', NULL, 'festival', NULL, 'en', 120, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:38:09', '2024-04-02 12:38:09', 21);
INSERT INTO `posts` VALUES (132, 'Diwali', 'uploads/thumbnail/a92fe148-e67c-4a11-aa0d-12f4cf1ec4ba.jpg', NULL, 'uploads/posts/a92fe148-e67c-4a11-aa0d-12f4cf1ec4ba.jpg', NULL, 'festival', NULL, 'hi', 121, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:43:03', '2024-04-02 12:43:03', 20);
INSERT INTO `posts` VALUES (133, 'Diwali', 'uploads/thumbnail/ee0ef87f-a0c6-4e05-b9df-5ce77701bfe7.jpg', NULL, 'uploads/posts/ee0ef87f-a0c6-4e05-b9df-5ce77701bfe7.jpg', NULL, 'festival', NULL, 'hi', 114, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:45:37', '2024-04-02 12:45:37', 14);
INSERT INTO `posts` VALUES (134, 'Diwali', 'uploads/thumbnail/93da0371-3187-43d3-9b1f-8ef9d95817a0.jpg', NULL, 'uploads/posts/93da0371-3187-43d3-9b1f-8ef9d95817a0.jpg', NULL, 'festival', NULL, 'hi', 123, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:48:10', '2024-04-02 12:48:10', 1);
INSERT INTO `posts` VALUES (135, 'Diwali', 'uploads/thumbnail/f4c67a37-cf79-42a8-ad40-c95c83bcb5e0.jpg', NULL, 'uploads/posts/f4c67a37-cf79-42a8-ad40-c95c83bcb5e0.jpg', NULL, 'festival', NULL, 'en', 110, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:50:35', '2024-04-02 12:50:35', 0);
INSERT INTO `posts` VALUES (136, 'Diwali', 'uploads/thumbnail/726733b2-96e8-4a2c-9119-370bc1db95e7.jpg', NULL, 'uploads/posts/726733b2-96e8-4a2c-9119-370bc1db95e7.jpg', NULL, 'festival', NULL, 'hi', 125, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:53:16', '2024-04-02 12:53:16', 14);
INSERT INTO `posts` VALUES (137, 'Diwali', 'uploads/thumbnail/c2e9c15f-9f9b-4acf-9c74-cdc764a39a18.jpg', NULL, 'uploads/posts/c2e9c15f-9f9b-4acf-9c74-cdc764a39a18.jpg', NULL, 'festival', NULL, 'hi', 118, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:56:24', '2024-04-02 12:56:24', 12);
INSERT INTO `posts` VALUES (138, 'Diwali', 'uploads/thumbnail/c353bd20-d377-4f1a-a7dc-9ff817147ef9.jpg', NULL, 'uploads/posts/c353bd20-d377-4f1a-a7dc-9ff817147ef9.jpg', NULL, 'festival', NULL, 'hi', 127, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-02 12:58:57', '2024-04-02 12:58:57', 21);
INSERT INTO `posts` VALUES (139, 'Chhath Poja', 'uploads/thumbnail/8d3f6548-2b37-4615-887e-0e158b77e4ea.png', NULL, 'uploads/posts/8d3f6548-2b37-4615-887e-0e158b77e4ea.png', NULL, 'festival', NULL, 'en', 129, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 13:05:45', '2024-04-02 13:05:45', 21);
INSERT INTO `posts` VALUES (140, 'Chhath Poja', 'uploads/thumbnail/98165cf3-474b-483d-ac82-481a70dbea96.png', NULL, 'uploads/posts/98165cf3-474b-483d-ac82-481a70dbea96.png', NULL, 'festival', NULL, 'en', 129, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 13:29:38', '2024-04-02 13:29:38', 21);
INSERT INTO `posts` VALUES (141, 'Chhath Poja', 'uploads/thumbnail/24c0b06c-a9d6-437b-867b-f7e2116ea2e8.png', NULL, 'uploads/posts/24c0b06c-a9d6-437b-867b-f7e2116ea2e8.png', NULL, 'festival', NULL, 'en', 132, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-02 20:01:48', '2024-04-02 20:01:48', 20);
INSERT INTO `posts` VALUES (143, 'Happy Holi', 'uploads/thumbnail/ca4f2f8a-3e0c-4e66-a8c2-a45027bf2634.png', NULL, 'uploads/posts/ca4f2f8a-3e0c-4e66-a8c2-a45027bf2634.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:48:28', '2024-04-03 17:48:28', 20);
INSERT INTO `posts` VALUES (144, 'Happy Holi', 'uploads/thumbnail/e4e1a5aa-35bc-4b22-afb8-c8ebe8d59012.png', NULL, 'uploads/posts/e4e1a5aa-35bc-4b22-afb8-c8ebe8d59012.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:49:26', '2024-04-03 17:49:26', 20);
INSERT INTO `posts` VALUES (146, 'Happy Holi', 'uploads/thumbnail/11f29e30-f758-49f4-9142-aff78cd7feb5.png', NULL, 'uploads/posts/11f29e30-f758-49f4-9142-aff78cd7feb5.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 17:51:46', '2024-04-03 17:51:46', 20);
INSERT INTO `posts` VALUES (149, 'Happy Holi', 'uploads/thumbnail/64558c06-d75d-4a7c-bc28-f4b700b4b869.png', NULL, 'uploads/posts/64558c06-d75d-4a7c-bc28-f4b700b4b869.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:23:12', '2024-04-03 18:23:12', 20);
INSERT INTO `posts` VALUES (150, 'Happy Holi', 'uploads/thumbnail/db2b0691-194d-4dcf-b612-565abb1591ce.jpg', NULL, 'uploads/posts/db2b0691-194d-4dcf-b612-565abb1591ce.jpg', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-03 18:25:52', '2024-04-03 18:25:52', 21);
INSERT INTO `posts` VALUES (151, 'Happy Holi', 'uploads/thumbnail/e6d79b84-2d19-4d3f-a5d8-345194de62c2.png', NULL, 'uploads/posts/e6d79b84-2d19-4d3f-a5d8-345194de62c2.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1080, 1080, 0, 0, 1, '2024-04-03 18:27:27', '2024-04-03 18:27:27', 20);
INSERT INTO `posts` VALUES (152, 'Happy Holi', 'uploads/thumbnail/0b36d796-f2de-4f28-807f-65fdf0687012.png', NULL, 'uploads/posts/0b36d796-f2de-4f28-807f-65fdf0687012.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:28:52', '2024-04-03 18:28:52', 14);
INSERT INTO `posts` VALUES (153, 'Happy Holi', 'uploads/thumbnail/ef9cf15a-45bf-4f28-a610-7136658819ac.jpg', NULL, 'uploads/posts/ef9cf15a-45bf-4f28-a610-7136658819ac.jpg', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-03 18:30:14', '2024-04-03 18:30:14', 1);
INSERT INTO `posts` VALUES (154, 'Happy Holi', 'uploads/thumbnail/e02b9d66-d591-4d98-b1e2-9aa30d1f287b.png', NULL, 'uploads/posts/e02b9d66-d591-4d98-b1e2-9aa30d1f287b.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1080, 1080, 0, 0, 1, '2024-04-03 18:31:33', '2024-04-03 18:31:33', 21);
INSERT INTO `posts` VALUES (155, 'Happy Holi', 'uploads/thumbnail/8397b959-026e-4a65-83d4-47c9a45f0cce.png', NULL, 'uploads/posts/8397b959-026e-4a65-83d4-47c9a45f0cce.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:32:23', '2024-04-03 18:32:23', 20);
INSERT INTO `posts` VALUES (156, 'Happy Holi', 'uploads/thumbnail/931a769a-37f8-4590-9318-01dea053d62b.jpg', NULL, 'uploads/posts/931a769a-37f8-4590-9318-01dea053d62b.jpg', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 2048, 2048, 0, 0, 1, '2024-04-03 18:33:23', '2024-04-03 18:33:23', 14);
INSERT INTO `posts` VALUES (157, 'Happy Holi', 'uploads/thumbnail/47d7d85e-5a86-4d20-98c4-81fd00bfff69.png', NULL, 'uploads/posts/47d7d85e-5a86-4d20-98c4-81fd00bfff69.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:36:47', '2024-04-03 18:36:47', 1);
INSERT INTO `posts` VALUES (158, 'Happy Holi', 'uploads/thumbnail/9c623bf9-26c0-4910-a312-f87dc96596e7.png', NULL, 'uploads/posts/9c623bf9-26c0-4910-a312-f87dc96596e7.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:37:27', '2024-04-03 18:37:27', 21);
INSERT INTO `posts` VALUES (159, 'Happy Holi', 'uploads/thumbnail/5da2fc2d-feee-4cd5-8709-6fff327f521e.png', NULL, 'uploads/posts/5da2fc2d-feee-4cd5-8709-6fff327f521e.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:37:58', '2024-04-03 18:37:58', 20);
INSERT INTO `posts` VALUES (160, 'Happy Holi', 'uploads/thumbnail/49a1ecfb-fea4-40ef-a18f-7bce566e5311.png', NULL, 'uploads/posts/49a1ecfb-fea4-40ef-a18f-7bce566e5311.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:38:36', '2024-04-03 18:38:36', 14);
INSERT INTO `posts` VALUES (161, 'Happy Holi', 'uploads/thumbnail/c69c24bb-cec6-41f3-86e3-790f83c62e71.png', NULL, 'uploads/posts/c69c24bb-cec6-41f3-86e3-790f83c62e71.png', NULL, 'festival', NULL, 'en', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:39:26', '2024-04-03 18:39:26', 1);
INSERT INTO `posts` VALUES (162, 'Happy Holi', 'uploads/thumbnail/b7e2ab0c-7c82-4e9b-b7ef-1bf0843883f9.png', NULL, 'uploads/posts/b7e2ab0c-7c82-4e9b-b7ef-1bf0843883f9.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:41:23', '2024-04-03 18:41:23', 21);
INSERT INTO `posts` VALUES (163, 'Happy Holi', 'uploads/thumbnail/b191dbef-2b06-4b75-acaf-617518da8206.png', NULL, 'uploads/posts/b191dbef-2b06-4b75-acaf-617518da8206.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:49:04', '2024-04-03 18:49:04', 20);
INSERT INTO `posts` VALUES (164, 'Happy Holi', 'uploads/thumbnail/584d0df9-eeb3-4b57-8e3b-ed7edc8d10fb.png', NULL, 'uploads/posts/584d0df9-eeb3-4b57-8e3b-ed7edc8d10fb.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-03 18:50:57', '2024-04-03 18:50:57', 14);
INSERT INTO `posts` VALUES (165, 'Happy Holi', 'uploads/thumbnail/880dba6d-0b1f-4a2b-92f1-8f60682ed2a6.png', NULL, 'uploads/posts/880dba6d-0b1f-4a2b-92f1-8f60682ed2a6.png', NULL, 'festival', NULL, 'hi', 109, 0, 0, 'square', 1024, 1024, 0, 0, 1, '2024-04-10 01:10:13', '2024-04-03 18:52:31', 1);

-- ----------------------------
-- Table structure for promocode
-- ----------------------------
DROP TABLE IF EXISTS `promocode`;
CREATE TABLE `promocode`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `discount` int NULL DEFAULT 0,
  `total_use` int NOT NULL DEFAULT 10,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promocode
-- ----------------------------
INSERT INTO `promocode` VALUES (1, 'VOUCHER20', 100, 20, 0, '2024-03-31 22:58:16', '2024-03-31 22:58:16');

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `orders` int NOT NULL DEFAULT 0,
  `post_using` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `keyword` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, 'Happy Holi', NULL, 1, NULL, NULL, 1, '2024-03-31 02:21:50', '2023-02-16 07:17:47', 1);
INSERT INTO `section` VALUES (2, 'Trending', NULL, 2, NULL, NULL, 1, '2024-03-31 02:34:45', '2024-03-29 10:49:11', 14);
INSERT INTO `section` VALUES (3, 'Upcoming Festivals', NULL, 0, NULL, NULL, 0, '2024-04-01 03:09:06', '2024-04-01 03:09:06', 20);

-- ----------------------------
-- Table structure for service_inquiries
-- ----------------------------
DROP TABLE IF EXISTS `service_inquiries`;
CREATE TABLE `service_inquiries`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `service_id` int NOT NULL DEFAULT 0,
  `number` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `message` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_inquiries
-- ----------------------------

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `old_price` int NOT NULL DEFAULT 0,
  `new_price` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of services
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `field` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (2, 'app_name', 'Poster Banao', '2022-12-22 09:21:17', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (3, 'company_name', 'ZOOPMATE', '2024-03-24 15:46:13', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (4, 'app_logo', 'uploads/2cbb6584-0473-4cce-97b2-e2257b65aaaf.png', '2024-03-24 15:46:13', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (5, 'company_logo', 'uploads/6d8da678-9be9-490f-894d-b637ee51f86b.png', '2024-03-24 15:46:13', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (6, 'contact_number', '+916263020998', '2022-12-22 09:21:17', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (7, 'contact_email', 'info@zoopmate.cloud', '2024-03-24 15:46:13', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (8, 'api_key', NULL, '2023-02-25 19:05:43', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (9, 'timezone', 'Asia/Calcutta', '2022-12-22 08:30:24', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (10, 'currency', 'INR', '2023-01-25 05:58:46', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (11, 'google_play', 'false', '2023-02-06 04:37:46', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (12, 'razorpay', 'true', '2024-04-07 11:05:20', '2022-12-22 09:21:29');
INSERT INTO `settings` VALUES (13, 'razorpay_key', 'rzp_live_7fIzYN340ItBL1', '2024-04-07 11:05:20', '2022-12-22 09:46:20');
INSERT INTO `settings` VALUES (14, 'razorpay_secret', 'g2uyZyDuBDD514AGgeW2zxoJ', '2024-04-07 11:05:20', '2022-12-22 09:46:26');
INSERT INTO `settings` VALUES (15, 'onesignal_app_id', 'c9bd9fe7-7c47-4359-af7a-5825df1b372b', '2023-02-07 03:45:45', '2022-12-22 10:21:01');
INSERT INTO `settings` VALUES (16, 'onesignal_key', 'MGQ0MDc1NjEtNDNhMC00YTQxLTk4MTAtZWVmYzE2MDczMjg3', '2023-02-07 03:45:45', '2022-12-22 10:21:01');
INSERT INTO `settings` VALUES (17, 'show_ads', 'true', '2023-02-16 12:30:31', '2022-12-22 10:32:16');
INSERT INTO `settings` VALUES (18, 'show_admob_banner', 'true', '2022-12-22 10:39:16', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (19, 'admob_banner_id', 'ca-app-pub-6436658914108583/9472683183', '2024-03-31 21:25:20', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (20, 'show_admob_interstital', 'true', '2022-12-22 10:39:16', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (21, 'admob_interstitial_ad', 'ca-app-pub-6436658914108583/8159601519', '2024-03-31 21:46:56', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (22, 'show_admob_rewarded', 'true', '2022-12-22 10:39:16', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (23, 'admob_rewarde_id', 'ca-app-pub-6436658914108583/4487115668', '2024-03-31 21:29:42', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (24, 'show_admob_native', 'true', '2022-12-22 10:39:16', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (25, 'admob_native_id', 'ca-app-pub-6436658914108583/3174033995', '2024-03-31 21:46:56', '2022-12-22 11:23:03');
INSERT INTO `settings` VALUES (26, 'publisher_id', 'ca-app-pub-6436658914108583~2979550739', '2024-03-31 13:07:04', '2022-12-22 11:31:23');
INSERT INTO `settings` VALUES (27, 'show_update_dialog', 'false', '2024-03-23 03:16:02', '2022-12-22 11:55:11');
INSERT INTO `settings` VALUES (28, 'force_update', 'false', '2024-03-23 03:16:02', '2022-12-22 11:55:11');
INSERT INTO `settings` VALUES (29, 'app_version_code', '17', '2023-02-25 03:17:40', '2022-12-22 11:55:11');
INSERT INTO `settings` VALUES (30, 'app_link', 'https://play.google.com/store/apps/details?id=com.poster.banao', '2023-02-23 04:10:25', '2022-12-22 11:55:11');
INSERT INTO `settings` VALUES (31, 'update_information', 'News Update', '2022-12-22 11:02:07', '2022-12-22 11:55:11');
INSERT INTO `settings` VALUES (32, 'privacypolicy', '<p><span style=\"color: rgb(32, 33, 34); font-family: Poppins; font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><span style=\"color: rgb(0, 0, 0); font-family: Poppins;\">privacy policy</span></span><span style=\"color: rgb(32, 33, 34); font-family: Poppins; font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"color: rgb(6, 69, 173); text-decoration: none; background: none rgb(255, 255, 255); font-family: sans-serif; font-weight: 400; letter-spacing: normal; font-size: 14px;\"><span style=\"color: rgb(0, 0, 0); font-family: Poppins;\">privacy law</span></a><span style=\"color: rgb(32, 33, 34); font-family: Poppins; font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"color: rgb(32, 33, 34); font-family: Poppins; font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"color: rgb(6, 69, 173); text-decoration: none; background: none rgb(255, 255, 255); font-family: sans-serif; font-weight: 400; letter-spacing: normal; font-size: 14px;\"><span style=\"color: rgb(0, 0, 0); font-family: Poppins;\">expiry date</span></a><span style=\"color: rgb(32, 33, 34); font-family: Poppins; font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"color: rgb(32, 33, 34); font-family: Poppins; font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"color: rgb(32, 33, 34); font-family: Poppins; font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">A<span style=\"font-weight: bolder; color: rgb(0, 0, 0);\">&nbsp;</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(32, 33, 34); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy policy</span></span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;is a statement or legal document (in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Privacy_law\" title=\"Privacy law\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">privacy law</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Expiration_date\" title=\"Expiration date\" style=\"font-weight: 400; text-align: var(--bs-body-text-align); font-family: sans-serif; color: rgb(6, 69, 173); text-decoration: none; letter-spacing: normal; background: none rgb(255, 255, 255); font-size: 14px;\"><span style=\"font-family: Poppins; color: rgb(0, 0, 0);\">expiry date</span></a><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; font-size: 11.2px; white-space: nowrap;\">&nbsp;</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span style=\"background-color: var(--bs-card-bg); text-align: var(--bs-body-text-align); font-family: Poppins; color: rgb(32, 33, 34); font-size: 14px;\">&nbsp;Privacy policies typically represent a broader, more generalized treatment, as opposed to data use statements, which tend to be more detailed and specific.</span><br></p>', '2022-12-22 12:14:17', '2022-12-22 12:16:02');
INSERT INTO `settings` VALUES (33, 'terms_and_condition', '<h6><span style=\"color: rgb(102, 102, 102); font-family: &quot;Clear Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; letter-spacing: normal;\">Lorame 2mg Tablet is a prescription medicine used to treat symptoms of short term anxiety and anxiety disorders. It helps to decrease the abnormal and excessive activity of the nerve cells and </span><span style=\"font-family: &quot;Courier New&quot;;\">﻿</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Clear Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; letter-spacing: normal;\">calms the brain.</span>Lorame 2mg Tablet is a prescription medicine used to treat symptoms of short term anxiety and anxiety disorders. It helps to decrease the abnormal and excessive activity of the nerve cells and&nbsp;<span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align); font-family: &quot;Courier New&quot;;\">﻿</span><span style=\"background-color: var(--bs-card-bg); font-weight: 400; text-align: var(--bs-body-text-align); font-family: &quot;Clear Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">calms the brain.</span>Lorame 2mg Tablet is a prescription medicine used to treat symptoms of short term anxiety and anxiety disorders. It helps to decrease the abnormal and excessive activity of the nerve cells and&nbsp;<span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align); font-family: &quot;Courier New&quot;;\">﻿</span><span style=\"background-color: var(--bs-card-bg); font-weight: 400; text-align: var(--bs-body-text-align); font-family: &quot;Clear Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">calms the brain.</span>Lorame 2mg Tablet is a prescription medicine used to treat symptoms of short term anxiety and anxiety disorders. It helps to decrease the abnormal and excessive activity of the nerve cells and&nbsp;<span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align); font-family: &quot;Courier New&quot;;\">﻿</span><span style=\"background-color: var(--bs-card-bg); font-weight: 400; text-align: var(--bs-body-text-align); font-family: &quot;Clear Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">calms the brain.</span>Lorame 2mg Tablet is a prescription medicine used to treat symptoms of short term anxiety and anxiety disorders. It helps to decrease the abnormal and excessive activity of the nerve cells and&nbsp;<span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align); font-family: &quot;Courier New&quot;;\">﻿</span><span style=\"background-color: var(--bs-card-bg); font-weight: 400; text-align: var(--bs-body-text-align); font-family: &quot;Clear Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">calms the brain.</span>Lorame 2mg Tablet is a prescription medicine used to treat symptoms of short term anxiety and anxiety disorders. It helps to decrease the abnormal and excessive activity of the nerve cells and&nbsp;<span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align); font-family: &quot;Courier New&quot;;\">﻿</span><span style=\"background-color: var(--bs-card-bg); font-weight: 400; text-align: var(--bs-body-text-align); font-family: &quot;Clear Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">calms the brain.</span></h6>', '2022-12-22 12:14:31', '2022-12-22 12:16:02');
INSERT INTO `settings` VALUES (34, 'show_api_post', 'false', '2022-12-25 08:13:53', '2022-12-25 08:13:53');
INSERT INTO `settings` VALUES (35, 'single_post_subsciption_amount', '10', '2022-12-26 07:01:10', '2022-12-25 18:05:21');
INSERT INTO `settings` VALUES (36, 'share_image_url', 'uploads/3797d457-87e8-46ed-b83f-017b6018cc5f.png', '2024-03-24 15:46:13', '2022-12-26 08:46:05');
INSERT INTO `settings` VALUES (37, 'share_text', 'ZOOP POSTER  is #1 Indian Festival Poster Maker App. All Festival, Birthday, Good Morning and many more Post to send wishes and celebrate and make the day more special. download app now below link. download app now below link   \r\n\r\nhttps://play.google.com/store/apps/details?id=com.zoop.poster\r\n\r\nRefer code - REFER_CODE', '2024-03-31 22:06:49', '2022-12-26 08:46:05');
INSERT INTO `settings` VALUES (38, 'refer_earn', 'true', '2023-02-06 05:48:13', '2023-01-21 10:19:04');
INSERT INTO `settings` VALUES (39, 'refer_bonus', '20', '2023-02-06 04:38:46', '2023-01-21 10:19:04');
INSERT INTO `settings` VALUES (40, 'refer_subscription_bonus', '10', '2023-01-28 07:04:02', '2023-01-28 07:04:02');
INSERT INTO `settings` VALUES (41, 'min_withdraw', '25', '2023-02-06 04:38:46', '2023-01-28 07:04:02');
INSERT INTO `settings` VALUES (42, 'paytm_merchant_key', NULL, '2024-04-07 11:05:20', '2023-02-14 10:57:02');
INSERT INTO `settings` VALUES (43, 'paytm_merchant_id', NULL, '2024-04-07 11:05:20', '2023-02-14 10:57:02');
INSERT INTO `settings` VALUES (44, 'paytm', 'false', '2024-03-27 01:33:49', '2023-02-14 15:11:50');
INSERT INTO `settings` VALUES (45, 'cashfree', 'true', '2023-02-14 15:11:50', '2023-02-14 15:11:50');
INSERT INTO `settings` VALUES (46, 'cashfree_client_id', '3029768ce26bde777bd8e6db25679203', '2023-02-14 15:12:39', '2023-02-14 15:12:39');
INSERT INTO `settings` VALUES (47, 'cashfree_client_secret', 'f21030a9126f817f1686884f335148148c224008', '2023-02-14 15:12:39', '2023-02-14 15:12:39');
INSERT INTO `settings` VALUES (55, 'do_end_point', NULL, '2023-02-22 04:30:17', '2023-02-22 04:30:17');
INSERT INTO `settings` VALUES (56, 'storage_type', 'local', '2023-02-23 19:32:58', '2023-02-22 04:56:58');
INSERT INTO `settings` VALUES (57, 'whatsapp_api_key', NULL, '2023-03-12 16:57:17', '2023-03-12 16:57:17');
INSERT INTO `settings` VALUES (58, 'whatsapp_instance_id', NULL, '2023-03-12 16:57:17', '2023-03-12 16:57:17');
INSERT INTO `settings` VALUES (59, 'stripe', 'false', '2024-03-27 01:33:49', '2023-03-24 18:10:19');
INSERT INTO `settings` VALUES (60, 'stripe_public_key', NULL, '2023-03-24 18:10:19', '2023-03-24 18:10:19');
INSERT INTO `settings` VALUES (61, 'stripe_secret_key', NULL, '2023-03-24 18:10:19', '2023-03-24 18:10:19');
INSERT INTO `settings` VALUES (62, 'buy_singal_post', 'true', '2024-04-07 11:05:20', '2023-03-24 18:10:19');
INSERT INTO `settings` VALUES (63, 'watch_and_remove_watermark', 'true', '2024-04-07 11:05:20', '2023-03-24 18:10:19');
INSERT INTO `settings` VALUES (64, 'whatsapp_otp', 'false', '2023-03-27 20:28:12', '2023-03-27 20:28:12');
INSERT INTO `settings` VALUES (65, 'auto_festival_notification', NULL, '2023-04-05 18:20:04', '2023-04-05 18:20:04');
INSERT INTO `settings` VALUES (66, 'posts_limit_status', 'true', '2024-04-07 11:05:20', '2023-04-07 08:02:47');
INSERT INTO `settings` VALUES (67, 'offline_payment', 'false', '2024-03-27 01:33:49', '2023-04-07 18:53:07');
INSERT INTO `settings` VALUES (68, 'offline_details', NULL, '2023-04-07 18:53:07', '2023-04-07 18:53:07');
INSERT INTO `settings` VALUES (69, 'fcm_key', NULL, '2023-06-06 18:54:33', '2023-06-06 18:54:33');
INSERT INTO `settings` VALUES (70, 'instamojo', 'false', '2024-03-27 01:33:49', '2023-06-07 13:08:25');
INSERT INTO `settings` VALUES (71, 'client_id', NULL, '2023-06-07 13:08:25', '2023-06-07 13:08:25');
INSERT INTO `settings` VALUES (72, 'client_secret', NULL, '2023-06-07 13:08:25', '2023-06-07 13:08:25');

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `action_item` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `slider` int NULL DEFAULT 1,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES (1, 'slider1', 'uploads/thumbnail/1a0eb5a3-3779-4d4c-84b6-19e642619459.png', 'custom', NULL, NULL, 1, 0, '2024-03-27 01:38:49', '2023-04-29 09:43:24', 1);

-- ----------------------------
-- Table structure for stickers
-- ----------------------------
DROP TABLE IF EXISTS `stickers`;
CREATE TABLE `stickers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL DEFAULT 0,
  `name` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `item_url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `premium` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stickers
-- ----------------------------

-- ----------------------------
-- Table structure for stickers_category
-- ----------------------------
DROP TABLE IF EXISTS `stickers_category`;
CREATE TABLE `stickers_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stickers_category
-- ----------------------------

-- ----------------------------
-- Table structure for sub_category
-- ----------------------------
DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE `sub_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT 0,
  `name` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `about` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_category
-- ----------------------------

-- ----------------------------
-- Table structure for subscription
-- ----------------------------
DROP TABLE IF EXISTS `subscription`;
CREATE TABLE `subscription`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` int NOT NULL DEFAULT 1,
  `price` int NOT NULL,
  `discount_price` int NULL DEFAULT 0,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `posts_limit` int NULL DEFAULT 10,
  `business_limit` int NULL DEFAULT 5,
  `political_limit` int NOT NULL DEFAULT 0,
  `purchase` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscription
-- ----------------------------
INSERT INTO `subscription` VALUES (1, 'Business', 'YEAR', 1, 999, 899, 'uploads/posts/e619170b-70e7-408d-b22e-5cda3a620159.jfif', '[\"Make +1000 Premium Posts \\ud83d\\udc8e\",\"Remove Watermark \\ud83d\\udca6\",\"Add Up to 50 Business \\ud83c\\udfe2\",\"No Ads \\ud83d\\udc1b\",\"High Quality Posts \\ud83c\\udf80\",\"Unlimited Stickers \\ud83c\\udf83\"]', 1000, 50, 10, NULL, 0, '2023-02-25 13:59:00', '2022-11-24 05:10:13', 1);
INSERT INTO `subscription` VALUES (2, 'Silver', 'MONTH', 1, 365, 300, 'uploads/thumbnail/ecbe6c1d-d155-44e8-ae1a-b0479eb9f734.png', '[\"Make +300 Premium Posts \\ud83d\\udc8e\",\"Remove Watermark \\ud83d\\udca6\",\"Add Up to 10 Business \\ud83c\\udfe2\",\"No Ads \\ud83d\\udc1b\",\"High Quality Posts \\ud83c\\udf80\",\"Unlimited Stickers \\ud83c\\udf83\"]', 300, 10, 2, NULL, 0, '2023-02-26 05:06:13', '2022-11-24 05:10:47', 1);
INSERT INTO `subscription` VALUES (4, 'Starter', 'DAY', 1, 15, 5, 'uploads/posts/9d631917-ae85-48f1-99ad-d74b0346239b.png', '[\"Make 10 Premium Posts \\ud83d\\udc8e\",\"Remove Watermark \\ud83d\\udca6\",\"Add Up to 5 Business \\ud83c\\udfe2\",\"+10 Premium Posts Save \\ud83d\\udcc1\",\"High Quality Posts \\ud83c\\udf80\",\"Unlimited Stickers \\ud83c\\udf83\",\"No Ads \\ud83d\\udc1b\"]', 1000, 5, 2, 'test', 0, '2024-04-07 11:15:22', '2022-12-21 15:01:29', 1);

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `plan` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `amount` int NOT NULL,
  `promocode` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `payment_type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `transaction_id` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES (2, 26, 'Starter', 5, NULL, 'razorpay', 'pay_NvcckVcRvhlJZQ', '2024-04-07 11:17:02', '2024-04-07 11:17:02', 0);

-- ----------------------------
-- Table structure for user_bussiness
-- ----------------------------
DROP TABLE IF EXISTS `user_bussiness`;
CREATE TABLE `user_bussiness`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `company` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `about` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `designation` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `category_id` int NOT NULL DEFAULT 0,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'business',
  `website` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `whatsapp` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `facebook` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `youtube` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `twitter` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `instagram` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_bussiness
-- ----------------------------
INSERT INTO `user_bussiness` VALUES (1, 6, 'DJ', 'g', 'ctv', '6', 'h gb g bt', 'vt', 'uploads/profile/4f5bd54c-e0ef-4db0-827a-dc41143eefd2.png', 4, 'business', 'tv', 'v', 'fvv', 'tv', 'bt', 'vt', 'tvt', '2024-03-23 03:05:14', '2024-03-23 03:05:14');
INSERT INTO `user_bussiness` VALUES (2, 8, 'business', 'name', 'dhdhhsshb', '91919191919', 'officer', 'fjdudhdhd@gmail.com', 'uploads/profile/28a14256-046b-4a4f-97fc-b6b3bb8a607e.png', 4, 'business', 'okokok.com', 'indi', '38383839', 'xjxjxj', 'ndjdj', 'jdjdj', 'jjdjdjdhdh', '2024-03-29 10:54:31', '2024-03-29 10:54:31');
INSERT INTO `user_bussiness` VALUES (3, 16, 'jvkg', 'hfuf', 'yfufuf', '5686868', 'hfufufjf', 'hchcyg@jgj.hi', 'uploads/profile/ff6b0dd0-545d-4ea9-8a68-1050750fe29c.png', 4, 'business', 'yfuguy.jgg', 'gugug', NULL, NULL, NULL, NULL, NULL, '2024-03-31 16:25:58', '2024-03-31 16:25:58');
INSERT INTO `user_bussiness` VALUES (4, 20, 'Preciousky', 'priyanshu kumar', NULL, '9122101927', 'CEO', 'info@preciousky.com', 'uploads/profile/e80870c7-e6ee-4b99-abe5-59441b6ca8a0.png', 4, 'business', 'https://preciousky.co.in', 'sahibjada mohali Chandigarh', NULL, NULL, NULL, NULL, NULL, '2024-03-31 21:52:21', '2024-03-31 21:52:21');

-- ----------------------------
-- Table structure for user_frame
-- ----------------------------
DROP TABLE IF EXISTS `user_frame`;
CREATE TABLE `user_frame`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `item_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_frame
-- ----------------------------

-- ----------------------------
-- Table structure for user_post
-- ----------------------------
DROP TABLE IF EXISTS `user_post`;
CREATE TABLE `user_post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_post
-- ----------------------------
INSERT INTO `user_post` VALUES (1, 6, 'uploads/profile/a490687d-5e91-461c-85be-3c198181b8e3.jpg', 0, '2024-03-23 03:14:08', '2024-03-23 03:14:08');
INSERT INTO `user_post` VALUES (2, 6, 'uploads/profile/0a646486-3881-4722-9ec1-32e73173f9df.jpg', 0, '2024-03-23 03:14:31', '2024-03-23 03:14:31');
INSERT INTO `user_post` VALUES (3, 9, 'uploads/profile/7a7e1e93-d49e-4597-bc31-1095c474ba5f.jpg', 0, '2024-03-26 11:02:56', '2024-03-26 11:02:56');
INSERT INTO `user_post` VALUES (4, 3, 'uploads/profile/5e14f899-4796-42b3-bd99-0034aea412a2.jpg', 0, '2024-03-27 00:11:37', '2024-03-27 00:11:37');
INSERT INTO `user_post` VALUES (5, 3, 'uploads/profile/72fe882b-a907-410e-94d5-5ab4ccb6d0a5.jpg', 0, '2024-03-27 00:55:22', '2024-03-27 00:55:22');
INSERT INTO `user_post` VALUES (6, 8, 'uploads/profile/291ebe01-5955-4071-ad6b-a6d1d7ab83ef.jpg', 0, '2024-03-29 10:54:45', '2024-03-29 10:54:45');
INSERT INTO `user_post` VALUES (7, 20, 'uploads/profile/5d0875a1-ca52-4bc1-bdd8-d481740295a3.png', 0, '2024-03-31 21:56:30', '2024-03-31 21:56:30');

-- ----------------------------
-- Table structure for user_transaction
-- ----------------------------
DROP TABLE IF EXISTS `user_transaction`;
CREATE TABLE `user_transaction`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `other_user_id` int NOT NULL DEFAULT 0,
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_transaction
-- ----------------------------
INSERT INTO `user_transaction` VALUES (1, 36, 2, 'Vickey raj Join by your refer code ', 20, 'credit', '2023-02-24 05:22:14', '2023-02-24 05:22:14');
INSERT INTO `user_transaction` VALUES (2, 36, 2, 'Subscription Bonus By Vickey raj', 5, 'credit', '2023-02-24 05:25:02', '2023-02-24 05:25:02');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `profile_pic` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `balance` int NOT NULL DEFAULT 0,
  `category_id` int NOT NULL DEFAULT 0,
  `state` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `district` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `refer_id` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `refered` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `designation` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `subscription_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `subscription_price` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `subscription_date` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `subscription_end_date` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `posts_limit` int NOT NULL DEFAULT 5,
  `business_limit` int NOT NULL DEFAULT 1,
  `political_limit` int NOT NULL DEFAULT 1,
  `login` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `social` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `social_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `auth_token` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `device_token` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0 COMMENT '1 = Blocked',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (21, 'sreeza sengupta', 'null', 'sreeza149@gmail.com', '9123175841', 0, 0, 'West Bengal', 'Kolkata', 'KVPUJ5XM', 'KEN2BLQP', 'sreeza Sengupta', NULL, NULL, NULL, NULL, 5, 1, 1, 'sreeza149@gmail.com', 'google', '103950209357847181407', 'null', 'flbVLgJpRvWWeel8CUo0YE:APA91bGSD1QcfCpSjrUfjiifu5WWe28sjLZVrJal6jLY3GCk5M_Dh8beOAFp_cet-Pj0OutgsaRt9xO2zJqI5oJkHZONwdhVHoblHgK6fHIRZpOzP8rdXrGZoI7YWweaQBzZzG-GSUNp', 0, '2024-03-31 22:11:21', '2024-03-31 22:10:13');
INSERT INTO `users` VALUES (22, 'null null', 'null', 'santiagoguzman.83395@gmail.com', NULL, 0, 0, NULL, NULL, '3S7O0EZ6', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'santiagoguzman.83395@gmail.com', 'google', '116514864816977615746', 'null', NULL, 0, '2024-04-07 11:10:50', '2024-04-01 03:24:41');
INSERT INTO `users` VALUES (23, 'null null', 'null', 'charlottbartholomew.54027@gmail.com', NULL, 0, 0, NULL, NULL, 'ABZT5AI0', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'charlottbartholomew.54027@gmail.com', 'google', '116210216003356776101', 'null', NULL, 0, '2024-04-07 11:10:49', '2024-04-01 15:24:01');
INSERT INTO `users` VALUES (24, 'null null', 'null', 'annetteellis.27071@gmail.com', NULL, 0, 0, NULL, NULL, 'SESIG36Q', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'annetteellis.27071@gmail.com', 'google', '114628937219831733804', 'null', NULL, 0, '2024-04-07 11:10:48', '2024-04-03 10:25:47');
INSERT INTO `users` VALUES (25, 'null null', 'null', 'sonjalyons.19372@gmail.com', NULL, 0, 0, NULL, NULL, 'X24EAGXD', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'sonjalyons.19372@gmail.com', 'google', '102925598017608448263', 'null', NULL, 0, '2024-04-07 11:10:47', '2024-04-04 09:24:26');
INSERT INTO `users` VALUES (26, 'priiiiiyanshuuuuu Kumar', NULL, 'priyanshudev2304@gmail.com', '+916205132068', 0, 0, 'Assam', 'Chirang', '4PHT46WS', NULL, 'manager', NULL, NULL, NULL, NULL, 1005, 5, 2, '+916205132068', 'phone', 'F2rLUnaloqMPC3lI9rl8s58CCus1', NULL, 'ckvGR_XLRJ2ZiJz_8JqePd:APA91bES8eUPTXOdfmUc6a_Znw1K_qaPCu9E_ocMSPZ9Xi5TtOprZqoGM26WaKs73BrNOIdQAzsnb5CwaaTQ1EnbOaGNEC4HPhGHPS7CvtoHC-n6XHhghE7V0zFkIUiOuPQoAK9exphQ', 0, '2024-04-09 00:30:51', '2024-04-07 11:11:07');
INSERT INTO `users` VALUES (27, 'null null', 'null', 'angiehorton.30235@gmail.com', NULL, 0, 0, NULL, NULL, 'OUEDDDCV', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'angiehorton.30235@gmail.com', 'google', '114806058185174767113', 'null', NULL, 0, '2024-04-09 04:23:43', '2024-04-09 04:23:43');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `thumb_url` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `slug` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'festival,bussiness',
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `category_id` int NOT NULL DEFAULT 0,
  `section_id` int NOT NULL DEFAULT 0,
  `sub_category_id` int NULL DEFAULT 0,
  `views` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `premium` int NOT NULL DEFAULT 0 COMMENT '1=premium',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------

-- ----------------------------
-- Table structure for video_template
-- ----------------------------
DROP TABLE IF EXISTS `video_template`;
CREATE TABLE `video_template`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_url` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `video_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `zip_url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'festival,bussiness',
  `language` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category_id` int NOT NULL DEFAULT 0,
  `views` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `premium` int NOT NULL DEFAULT 0 COMMENT '1=premium',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_template
-- ----------------------------

-- ----------------------------
-- Table structure for video_template_category
-- ----------------------------
DROP TABLE IF EXISTS `video_template_category`;
CREATE TABLE `video_template_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `orders` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_template_category
-- ----------------------------

-- ----------------------------
-- Table structure for whatsapp_message
-- ----------------------------
DROP TABLE IF EXISTS `whatsapp_message`;
CREATE TABLE `whatsapp_message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `msg` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `btn1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `btn1value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `btn1type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `btn2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `btn2value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `btn2type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `footer` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `media` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'text',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of whatsapp_message
-- ----------------------------

-- ----------------------------
-- Table structure for withdraw
-- ----------------------------
DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE `withdraw`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amount` int NOT NULL,
  `upi_id` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` varchar(1100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdraw
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
