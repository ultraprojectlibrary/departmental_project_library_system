-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2026 at 08:14 PM
-- Server version: 11.4.13-MariaDB
-- PHP Version: 8.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freestud_dpls_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Web Development', '2026-08-12 13:48:59'),
(2, 'Data Science', '2026-08-12 13:48:59'),
(3, 'Mobile Applications', '2026-08-12 13:48:59'),
(4, 'Artificial Intelligence', '2026-08-12 13:48:59'),
(5, 'Cybersecurity', '2026-08-12 13:48:59'),
(6, 'Networking', '2026-08-12 13:48:59'),
(7, 'Software Engineering', '2026-08-27 01:16:49'),
(8, 'Computer Graphics', '2026-08-27 01:17:07'),
(9, 'Computer Vision', '2026-09-07 17:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('unread','read') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `file_type` enum('document','source_code','presentation','other') NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `project_id`, `file_name`, `original_name`, `file_type`, `mime_type`, `uploaded_at`) VALUES
(1, 2, '294cef49adbc851242773d1b3bc34de9.docx', 'AKP-APPENDIX-CODE.docx', 'document', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2026-08-12 14:17:36'),
(2, 2, '6beb0644986c615600cd88795d8aae5b.docx', 'fire-practical-pics.docx', 'presentation', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2026-08-12 14:18:00'),
(3, 1, 'dummy_document.pdf', 'Final_Project_Document_1.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(4, 3, 'dummy_document.pdf', 'Final_Project_Document_3.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(5, 4, 'dummy_document.pdf', 'Final_Project_Document_4.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(6, 5, 'dummy_document.pdf', 'Final_Project_Document_5.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(7, 6, 'dummy_document.pdf', 'Final_Project_Document_6.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(8, 7, 'dummy_document.pdf', 'Final_Project_Document_7.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(9, 8, 'dummy_document.pdf', 'Final_Project_Document_8.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(10, 9, 'dummy_document.pdf', 'Final_Project_Document_9.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(11, 10, 'dummy_document.pdf', 'Final_Project_Document_10.pdf', 'document', 'application/pdf', '2026-08-12 15:17:01'),
(12, 1, 'dummy_presentation.pptx', 'Final_Presentation_1.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(13, 1, 'dummy_source.zip', 'Source_Code_1.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(14, 2, 'dummy_source.zip', 'Source_Code_2.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(15, 3, 'dummy_presentation.pptx', 'Final_Presentation_3.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(16, 3, 'dummy_source.zip', 'Source_Code_3.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(17, 4, 'dummy_presentation.pptx', 'Final_Presentation_4.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(18, 4, 'dummy_source.zip', 'Source_Code_4.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(19, 5, 'dummy_presentation.pptx', 'Final_Presentation_5.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(20, 5, 'dummy_source.zip', 'Source_Code_5.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(21, 6, 'dummy_presentation.pptx', 'Final_Presentation_6.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(22, 6, 'dummy_source.zip', 'Source_Code_6.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(23, 7, 'dummy_presentation.pptx', 'Final_Presentation_7.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(24, 7, 'dummy_source.zip', 'Source_Code_7.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(25, 8, 'dummy_presentation.pptx', 'Final_Presentation_8.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(26, 8, 'dummy_source.zip', 'Source_Code_8.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(27, 9, 'dummy_presentation.pptx', 'Final_Presentation_9.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(28, 9, 'dummy_source.zip', 'Source_Code_9.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(29, 10, 'dummy_presentation.pptx', 'Final_Presentation_10.pptx', 'presentation', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2026-08-12 15:21:34'),
(30, 10, 'dummy_source.zip', 'Source_Code_10.zip', 'source_code', 'application/zip', '2026-08-12 15:21:34'),
(31, 11, 'e11c6bf12627f0b5410bb1b54a472b01.docx', 'DIABETES RISK PREDICTION WEB APP AN AI.docx', 'document', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2026-08-26 15:35:47'),
(32, 11, '5c985c21322924ba28d8d713df41d7b9.txt', 'ads.txt', 'presentation', 'text/plain', '2026-08-26 15:35:48'),
(33, 11, '55af83109b92925c8d1f3bb8d0e0037e.txt', 'ads.txt', 'source_code', 'text/plain', '2026-08-26 15:35:48'),
(34, 12, '5b38a22a7aa4c8e74947268ee68a6fe7.pdf', 'COMPLETE WORK MPLS_VPN.pdf', 'document', 'application/pdf', '2026-08-27 01:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` text NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supervisor_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `supervisor_note` text DEFAULT NULL,
  `admin_status` enum('pending','published','rejected') DEFAULT 'pending',
  `year` int(11) NOT NULL,
  `language` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `abstract`, `student_id`, `supervisor_id`, `category_id`, `supervisor_status`, `supervisor_note`, `admin_status`, `year`, `language`, `created_at`) VALUES
(1, 'AI-Powered Chatbot for Student Services', 'This research presents the development and deployment of an advanced, transformer-based conversational agent designed specifically to handle student inquiries within a university ecosystem. By fine-tuning a pre-trained Large Language Model (LLM) on a vast corpus of institutional data, policies, and academic calendars, the system achieves a 94% accuracy rate in intent recognition. The architecture implements a hybrid approach, combining retrieval-augmented generation (RAG) with a deterministic fallback mechanism for sensitive administrative operations. Empirical evaluation demonstrates a significant reduction in administrative workload, decreasing average ticket resolution time from 24 hours to under 3 minutes, while maintaining high user satisfaction metrics across a diverse student demographic.', 3, 2, 4, 'approved', NULL, 'published', 2026, 'Python, React', '2026-08-12 13:48:59'),
(2, 'Secure File Sharing Protocol', 'Securing data transmission across untrusted networks requires robust cryptographic protocols. This project analyzes the vulnerabilities inherent in current file-sharing standards and proposes a custom, end-to-end encrypted file transfer protocol. Utilizing AES-256 for symmetric data encryption and RSA-4096 for secure key exchange, the protocol ensures data confidentiality and integrity. Furthermore, we implemented a Zero-Knowledge Proof (ZKP) authentication mechanism that allows clients to verify their identity without transmitting sensitive credentials over the network. Network simulations confirm that the protocol resists man-in-the-middle (MitM) and replay attacks, offering a highly secure alternative for enterprise data exchange.', 3, 2, 5, 'approved', NULL, 'pending', 2026, 'Go, C++', '2026-08-12 13:48:59'),
(3, 'Building Scalable Web Architecture', 'This thesis investigates the architectural paradigms required to transition traditional monolithic web services into highly distributed microservice ecosystems. Focusing on cloud-native deployments, the study evaluates the performance, latency, and fault-tolerance of containerized services orchestrated via Kubernetes. A comprehensive load-testing framework was developed to simulate high-concurrency traffic, revealing that while microservices introduce network overhead, the implementation of strategic caching layers and asynchronous event-driven communication mitigates latency spikes by up to 40%. The findings provide a prescriptive roadmap for enterprise software teams looking to adopt scalable, resilient cloud architectures without compromising data consistency.', 3, 2, 1, 'approved', NULL, 'published', 2025, 'Node.js, AWS', '2026-08-12 14:36:26'),
(4, 'Cyber Threat Intelligence Platform', 'As cyber threats grow increasingly sophisticated, the need for centralized, real-time threat intelligence becomes paramount. This project introduces a scalable Threat Intelligence Platform (TIP) that aggregates, correlates, and analyzes disparate indicators of compromise (IoCs) from multiple open-source and proprietary feeds. Utilizing machine learning algorithms, specifically Isolation Forests and Support Vector Machines, the system dynamically scores the severity of incoming threats and automates the dissemination of firewall rules to edge devices. Field testing within a simulated enterprise network showed a 60% improvement in threat detection time and a drastic reduction in false positive alerts compared to legacy SIEM solutions.', 3, 2, 5, 'approved', NULL, 'published', 2026, 'Python, Vue', '2026-08-12 14:36:26'),
(5, 'Distributed Systems Consensus Algorithms', 'Maintaining data consistency in highly distributed, partition-tolerant networks remains a critical challenge in modern computing. This paper provides a comparative analysis of the Paxos and Raft consensus algorithms when subjected to extreme network latency and packet loss. Through the development of a custom distributed systems emulator, we measured the leader election times, replication latency, and recovery protocols of both algorithms under Byzantine failure conditions. The results indicate that while Paxos offers theoretical optimality, Raft\'s strong leader approach provides significantly faster recovery times in high-latency environments, making it more suitable for geographically dispersed database clusters.', 3, 2, 6, 'approved', NULL, 'published', 2024, 'Go', '2026-08-12 14:36:26'),
(6, 'Exploring Quantum Cryptography', 'The imminent arrival of practical quantum computing poses an existential threat to classical cryptographic systems based on integer factorization and discrete logarithms. This study explores the theoretical and practical frameworks of post-quantum cryptography (PQC), focusing on lattice-based cryptographic algorithms. We implemented a prototype secure communication channel utilizing the CRYSTALS-Kyber key encapsulation mechanism. Our performance benchmarking across various hardware architectures reveals that while lattice-based algorithms require larger key sizes, their computational overhead remains well within acceptable bounds for modern IoT devices, proving that a seamless transition to quantum-resistant security is feasible.', 3, 2, 5, 'approved', NULL, 'published', 2026, 'C++', '2026-08-12 14:36:26'),
(7, 'Facial Recognition Access Control', 'Access control systems increasingly rely on biometric authentication to enhance physical security. This project details the design and deployment of a real-time facial recognition system leveraging deep convolutional neural networks (CNNs). Built on the OpenCV framework and optimized for edge computing devices, the system performs liveness detection to prevent spoofing attacks via photographs or screens. The model was trained on a diverse dataset to mitigate demographic bias, achieving a 99.2% true positive rate under variable lighting conditions. The integration with existing physical turnstiles demonstrates the viability of deploying highly accurate, frictionless biometric security in high-traffic corporate environments.', 3, 2, 4, 'approved', NULL, 'published', 2025, 'Python, OpenCV', '2026-08-12 14:36:26'),
(8, 'Graph Neural Networks for Social Media', 'Social media platforms frequently act as echo chambers, polarizing user opinions through algorithmic content recommendation. This research applies Graph Neural Networks (GNNs) to model and predict user behavior and information diffusion across large-scale social graphs. By representing users as nodes and interactions as edges, our GNN model captures complex topological features that traditional predictive models overlook. The study analyzes a dataset of over 10 million interactions, successfully identifying isolated community clusters and predicting the viral trajectory of misinformation with an 85% accuracy rate. The findings underscore the potential of GNNs in developing more ethical, diverse content recommendation engines.', 3, 2, 4, 'approved', NULL, 'published', 2026, 'PyTorch', '2026-08-12 14:36:26'),
(9, 'Heuristic Search in Pathfinding', 'Pathfinding in massive, dynamic 3D environments is computationally expensive and critical for modern simulations and gaming engines. This paper proposes an optimized heuristic search algorithm that builds upon the traditional A* approach. By introducing a hierarchical navigation mesh and dynamic weight adjustments based on localized terrain density, the algorithm significantly reduces the search space. Empirical tests conducted within a highly complex virtual city environment demonstrate a 45% reduction in path computation time and a 30% decrease in memory consumption compared to standard A*, without any loss in path optimality. This optimization is particularly beneficial for resource-constrained mobile hardware.', 3, 2, 1, 'approved', NULL, 'published', 2023, 'C#', '2026-08-12 14:36:26'),
(10, 'Intelligent Tutoring Systems', 'The shift towards digital education necessitates the development of systems that can adapt to individual learning paces. This project presents an Intelligent Tutoring System (ITS) that leverages reinforcement learning to dynamically generate personalized educational pathways. The system continuously evaluates student performance through interactive assessments, using the resulting data to tailor the difficulty and topic selection of subsequent modules. A pilot study involving 200 undergraduate students showed a marked improvement in knowledge retention and engagement compared to static curriculum delivery. The scalable architecture, built with React and Node.js, allows for rapid integration into existing Learning Management Systems.', 3, 2, 4, 'approved', NULL, 'published', 2026, 'React, Node.js', '2026-08-12 14:36:26'),
(11, 'Design and Implementation of an Hospital Management System with Payment Integration', 'The healthcare sector increasingly relies on digital transformation to improve service delivery, yet many medical facilities continue to struggle with fragmented data management and manual billing processes. These inefficiencies often result in prolonged patient wait times, administrative bottlenecks, misplaced records, and financial discrepancies.\r\n\r\nThis project details the Design and Implementation of a Hospital Management System (HMS) with Payment Integration, aimed at automating and streamlining core clinical and administrative operations. The proposed system provides a centralized, web-based platform featuring modules for patient registration, appointment scheduling, electronic medical records (EMR) management, and pharmacy inventory. \r\n\r\nCrucially, the system incorporates a secure, integrated payment gateway that enables seamless, real-time processing of hospital bills—including consultation fees, laboratory tests, and medication costs. Developed using a robust relational database management system and modern web technologies, the architecture ensures data integrity, role-based access control, and strict compliance with patient privacy standards. \r\n\r\nThe implementation of this integrated solution effectively eliminates the drawbacks of paper-based administration, minimizes manual billing errors, and accelerates the hospital’s revenue cycle. Ultimately, this system significantly enhances the patient experience by reducing wait times at billing counters and allows healthcare professionals to dedicate more time to quality patient care rather than administrative overhead.', 3, 2, 4, 'approved', 'The student has completed the project, there are no corrections or changes to make. Admin you can verify.', 'rejected', 2026, 'PHP, MySQL', '2026-08-26 15:35:47'),
(12, 'Design and Implementation of an MPLS VPN Network for a Federated Service', 'This project focuses on the design and implementation of a Multiprotocol Label Switching/Virtual Private Network (MPLS VPN) network for a federated service, using Interswitch as a case study. The study addresses the challenges associated with fragmented inter-bank communication systems, including limited scalability, security risks, high latency, and inefficient connectivity between banks, Automated Teller Machines (ATMs), and Point of Sale (POS) terminals. The proposed solution provides a secure, scalable, and efficient network architecture in which Interswitch serves as a central transaction hub for inter-bank communication.\r\n\r\nA simulation-based methodology was adopted for the design, implementation, and evaluation of the proposed network. The network was developed and simulated using GNS3, with Cisco 7200 routers and IOU L2 switches used to represent the MPLS infrastructure. The implementation incorporated MPLS, MP-BGP, OSPF, Virtual Routing and Forwarding (VRF), VLAN segmentation, Access Control Lists (ACLs), and Quality of Service (QoS) mechanisms to provide secure traffic separation, efficient routing, and prioritization of financial transactions. ATMs and POS terminals were simulated using GNS3 Virtual PC Simulator (VPCS).\r\n\r\nTesting and validation of the proposed network demonstrated successful connectivity between banking devices through the Interswitch hub, effective traffic isolation using VRFs and VLANs, and minimal latency within the simulated environment. The project therefore demonstrates that an MPLS VPN architecture can provide a practical framework for improving the security, scalability, reliability, and efficiency of federated inter-bank communication. The proposed model can serve as a foundation for future expansion involving additional banks, enhanced encryption, real-time monitoring, and larger-scale deployment.', 3, 2, 6, 'approved', NULL, 'published', 2020, '', '2026-08-27 01:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `project_tags`
--

CREATE TABLE `project_tags` (
  `project_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_tags`
--

INSERT INTO `project_tags` (`project_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(12, 15),
(12, 16),
(12, 17),
(12, 18),
(12, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(19, 'Banking'),
(11, 'Billing System'),
(18, 'Computer Networking'),
(3, 'Cryptography'),
(6, 'Electronic Medical Records'),
(13, 'Health Informatics'),
(8, 'Healthcare Automation'),
(5, 'Hospital Management System'),
(12, 'Information Retrieval'),
(1, 'Machine Learning'),
(15, 'MPLS'),
(17, 'Network Security'),
(4, 'Networks'),
(2, 'NLP'),
(9, 'Patient Data Management'),
(7, 'Payment Integration'),
(14, 'Relational Database'),
(16, 'VPN'),
(10, 'Web-based Application');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','supervisor','student') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','suspended') DEFAULT 'active',
  `level` varchar(50) DEFAULT NULL,
  `mat_no` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `role`, `created_at`, `status`, `level`, `mat_no`, `year`) VALUES
(1, 'System Admin', 'admin@dpls.test', '$2y$10$YCpwvoRS/YQqDK2SBWUuwuqUFjFZp356YoDxFrDlVqnC8P/z8.2M.', 'admin', '2026-08-12 13:48:59', 'active', NULL, NULL, NULL),
(2, 'Dr. Sarah Supervisor', 'supervisor@dpls.test', '$2y$10$YCpwvoRS/YQqDK2SBWUuwuqUFjFZp356YoDxFrDlVqnC8P/z8.2M.', 'supervisor', '2026-08-12 13:48:59', 'active', NULL, NULL, NULL),
(3, 'John Student', 'student@dpls.test', '$2y$10$YCpwvoRS/YQqDK2SBWUuwuqUFjFZp356YoDxFrDlVqnC8P/z8.2M.', 'student', '2026-08-12 13:48:59', 'active', 'M26', 'M.23/ND/CSIT/11533', 2026),
(4, 'Eromosele Emmanuel', 'emmaerons2025@gmail.com', '$2y$10$Ls564rSqq3ZrPoH7XRHUJuZjk/DkP1RrjzFaqZNkGcAHb/t8GlpIW', 'student', '2026-08-22 16:34:25', 'active', 'M26', 'M.23/ND/CSIT/11533', 2026),
(6, 'Chika Susan Akuma', 'chikachristopher203@gmail.com', '$2y$10$YOnn/3TUzKb8vF7MrBJmme33sFj11SCmyPy8c.zX/zRcJjowORXEK', 'student', '2026-08-27 01:18:26', 'active', 'M26', 'M.23/ND/CSIT/11533', 2026),
(7, 'Mr kess', 'mrkess21@gmail.com', '$2y$10$lzlQzKC4EvuWVDWMxQA/xOfG.Rr9XItlAbiGje00LVTQ8n81mk44G', 'supervisor', '2026-08-28 16:31:00', 'active', NULL, NULL, NULL),
(8, 'Aruoture Chris', 'chrisaruoture47@gmail.com', '$2y$10$fY7vEup6ZBkl4HiqwJw8C.pMWO72lQJxdNHzsUQGOvOwHEoMFdHge', 'student', '2026-08-28 17:40:56', 'active', 'M26', 'M.23/ND/CSIT/11533', 2026),
(9, 'Kindness', 'dafevwirorokindness@gmail.com', '$2y$10$XZ2zQBis9bPRqH9xEYkVm.TyG2sXOd5mXY9Ra4DqLVGM6juP4no/m', 'student', '2026-08-28 19:23:12', 'active', 'M26', 'M.23/ND/CSIT/11533', 2026),
(10, 'Mr john', 'mrjohn44@gmail.com', '$2y$10$yOubnKtppfe4i/iwkfGzvOTiO/2e3XaivJlLi0.y8G47zmNWNM3s2', 'student', '2026-09-14 04:27:03', 'active', 'M26', 'M.23/ND/CSIT/11533', 2026);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `supervisor_id` (`supervisor_id`),
  ADD KEY `category_id` (`category_id`);
ALTER TABLE `projects` ADD FULLTEXT KEY `title` (`title`,`abstract`);

--
-- Indexes for table `project_tags`
--
ALTER TABLE `project_tags`
  ADD PRIMARY KEY (`project_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`supervisor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_tags`
--
ALTER TABLE `project_tags`
  ADD CONSTRAINT `project_tags_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
