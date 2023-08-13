DROP TABLE IF EXISTS `youtube_references`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `youtube_references` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creator_name` varchar(255) DEFAULT NULL,
  `sfa_license_no` varchar(255) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueVideoAndEstablishment` (`sfa_license_no`, `video_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;