-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2020 at 06:50 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eLearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Linux', '2020-08-31 03:29:27', '2020-08-30 22:22:13'),
(2, 'Test title 2', '2020-08-31 03:29:27', '2020-08-31 03:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Tuhin', 'tzz.tuhin@gmail.com', '01821141777', 'hi', '2020-08-31 03:39:59', '2020-08-31 03:39:59'),
(2, 'Joha', 'tuhin.joha24@gmail.com', '01303281997', 'hello', '2020-08-31 03:39:59', '2020-08-31 03:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `instructor_id`, `title`, `description`, `image`, `view_count`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 'Test Course Title 1', 'Test Course Title 1 Description', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fathousandsisters.com%2F&psig=AOvVaw0JNTEWeP6Y2XhdRztuR_Sz&ust=1598931374039000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCODsndnBxOsCFQAAAAAdAAAAABAD', NULL, 1, '2020-08-31 03:32:10', '2020-08-31 03:32:10'),
(2, 2, 55, 'Test Course Title 2', 'Test Course Title 2 Description', NULL, NULL, 1, '2020-08-31 03:32:10', '2020-08-31 03:32:10'),
(3, 1, 4, 'Linux Friendly Bangladesh (লিনাক্স বান্ধব দেশ গড়ি)', '<p>অনেকের মুখেই শুনেছি \'লিনাক্স \' শব্দ টা। ইন্টারনেটেও অনেক জায়গাতেই এই নাম টা দেখতে পাওয়া যায়।</p><p>কেউ বলে এটা একটা সফটওয়্যার , কেউ বা বলে অপারেটিং সিস্টেম , আবার কেউ বা বলে নতুন কোনো গেইম হয়ত। অনেকের মধ্যেই এমন জল্পনা কল্পনার আভাস পাওয়া যায়। লিনাক্স আসলে কি? কি হয় এইটা দিয়ে? .. এরকম আরও অনেক প্রশ্নই আমাদের মাথায় ঘুরপাক খায়। আবার কখনো কখনো মনে হয় কোনো অপারেটিং সিস্টেম কিভাবে কাজ করে।</p><p><br>&nbsp;</p><p><strong>লিনাক্স কি?</strong></p><p><br>&nbsp;</p><p>লিনাক্স কি সেটা বলার আগে বলতে চাই অপারেটিং সিস্টেম বলতে কি বুঝায়। অপারেটিং সিস্টেম হলো এক ধরণের সিস্টেম সফটওয়্যার যা আমাদের মিনি কম্পিউটার, পার্সোনাল কম্পিউটার , সার্ভার কম্পিউটার থেকে সুপার কম্পিউটার পর্যন্তও ব্যবহৃত হয়। এই অপারেটিং সিস্টেম সফটওয়্যারটির কাজ টা আসলে কি। এই সফটওয়্যার টি আমাদের কম্পিউটার কে অপারেট করে। আমাদের কম্পিউটারের দেখতে পাওয়া অংশ গুলো হলো মনিটর, কিবোর্ড, সিপিইউ, প্রিন্টার ইত্যাদি। এই সবগুলো অংশের ভিতরেই রয়েছে ইলেক্ট্রনিক সার্কিট বা হার্ডওয়্যার। এই ইলেক্ট্রনিক হার্ডওয়্যার গুলো কিভাবে কি কি কাজ করবে তার নির্দেশনা গুলো অপারেটিং সিস্টেমে দেওয়া থাকে। সোজা কথায় এই হার্ডওয়্যার গুলোকে নিয়ন্ত্রণ করার ক্ষমতা অপারেটিং সিস্টেম সফটওয়্যার এ দেওয়া থাকে।এ রকম কয়েকটি অপারেটিং সিস্টেম এর নাম হলোঃ মাইক্রোসফট উইন্ডোজ, ম্যাক ওএস, এন্ড্রোয়েড, উবুন্টু (লিনাক্স), আর্চ (লিনাক্স) ইত্যাদি।অপারেটিং সিস্টেমকে (Operating System) সংক্ষেপে ওএস (OS) বলা হয়।&nbsp;</p><p><br>&nbsp;</p><p>প্রথমত বলতে চাই লিনাক্স আসলে কোনো অপারেটিং সিস্টেম এর নাম নয়। মানে??? লিনাক্স তাহলে কিসের নাম। হ্যাঁ, লিনাক্স হচ্ছে \'<strong>কার্নেল\'</strong> এর নাম। আর কার্নেল হচ্ছে এক ধরেন সফটওয়্যার প্যাকেজ । যে সফটওয়্যার টি অপারেটিং সফটওয়্যার এর সাথে হার্ডওয়্যার এর সংযোগ স্থাপন করে। মানে হচ্ছে কার্নেল একধরণের ব্রিজ বা হাব এর মত কাজ করে। একটু যদি পরিষ্কার করে বলতেন! আচ্ছা বুঝিয়ে বলতেছি। সর্ব প্রথম \'<strong>লিনাস টরভাল্ডস</strong>\' নামের একজন সফটওয়্যার ডেভেলপার যিনি ইউনিক্স অপারেটিং সিস্টেম থেকে লিনাক্স নামের একটি কার্নেল তৈরি করেন। যা ওপেনসোর্স লাইসেন্স এর অন্তর্ভুক্ত ছিল। মানে এই সফটওয়্যার প্যাকেজটির সোর্সকোড উন্মুক্ত ছিলো।যে কেউ এই সফটওয়্যার টি ব্যাবহার করতে পারবে , এর উন্নয়ন করতে পারবে এবং বিতরণ করতে পারবে।। মূলত এটিই ছিল লিনাক্স এর যাত্রা শুরু হওয়ার সূত্রপাত। এই লিনাক্স কার্নেল এর উপর ভিত্তি করে তিনি একটি নতুন অপারেটিং সিস্টেম তৈরি করলেন যার নাম দিয়েছিলেন \'<strong>মিনিক্স</strong>\'। এর পরবর্তিতে লিনাক্স কার্নেলের উপর ভিত্তি করে অনেক অপারেটিং সিস্টেম তৈরি হয়। এই যে অনেকগুলো অপারেটিং সিস্টেম তৈরি করা আছে আমরা কি তা জানি?? এরকম লিনাক্স কার্নের উপর ভিত্তি করে প্রায় ১০০০+ অপারেটিং সিস্টেম তৈরি করা হয়েছিলো , এখনো তৈরি হচ্ছে। কি অবাক লাগতেছে?? হ্যাঁ, এটাই সত্যি আপনি ঠিকই জানতেছেন । একটু এখানে থেকে ঘুরে আসতে পারেন (<a href=\"https://upload.wikimedia.org/wikipedia/commons/1/1b/Linux_Distribution_Timeline.svg\">https://upload.wikimedia.org/wikipedia/commons/1/1b/Linux_Distribution_Timeline.svg</a>) ।এখানে সবগুলো ডিস্ট্রিবিউশনের নাম ও তালিকা দেওয়া আছে। লিনাক্স কার্নেল বেইজ করে যেসব অপারেটিং সিস্টেম তৈরি করা হয়েছে সেগুলোকে লিনাক্স ডিস্ট্রিবিউশন বলে। মানে প্রত্যেকটি লিনাক্স ডিস্ট্রিবিউশন এক এক টি অপারেটিং সিস্টেম। আর ডিস্ট্রিবিউশন কে সংক্ষেপে দিষ্টরও বলা হয়। এইসব ডিস্ট্রো গুলোর মধ্যে সবচেয়ে জনপ্রিয় গুলোর নাম হচ্ছেঃ <strong>ডেবিয়ান, রেডহ্যাট, উবুন্টু, লিনাক্সমিন্ট, আর্চ, মাঞ্জারো, এন্ড্রোয়েড</strong> ইত্যাদি।&nbsp;</p><p><br>&nbsp;</p><p><strong>লিনাক্স কার্নেল এ এতো অপারেটিং সিস্টেম চলে তাহলে কি উইন্ডোজ ও লিনাক্স কার্নেল ব্যবহার করে?</strong></p><p><br>&nbsp;</p><p>না। উইন্ডোজ কোনো ধরেনের লিনাক্স কার্নেল ব্যবহার করেনা। উইন্ডোজ এর নিজস্ব কিছু ব্যাবস্থা আছে। যা ইন্টারেক্টিভ শেল এর মাধ্যমে এক্সিকিউট হয়। \'<strong>শেল</strong>\' আসলে কি?? শেল হচ্ছে একধরণের ইন্টারফেইস যেখানে ইউজার এর থেকে ইনপুট নিয়ে কোনো এক সফটওয়্যার প্রোগ্রামের মধ্যে এক্সিকিউট করে এর আউটপুট দেখানো।মানে শেল হচ্ছে এমন এক এনভাইরনমেন্ট যেখানে ইউজার কমান্ড, সফটওয়ার প্রোগ্রাম এবং শেল স্ক্রিপ্ট রান করা হয়। এই এনভাইরনমেন্ট এর ইন্টারফেইস গুলোর মধ্যে \'<strong>পাওয়ার শেল</strong>\' ও \'<strong>সিএমডি কমান্ড প্রম্পট</strong>\' অন্যতম।এগুলোকে কনসোল ও বলা হয় । উইন্ডোজ অপারেটিং সিস্টেম এ ড্রাইভার নামে কিছু সফটওয়্যার প্যাকেজ ব্যবহার করা হয়। যা অপারেটিং সিস্টেম সফটওয়্যার কে হার্ডওয়্যার এর সাথে সংযুক্ত করে। যদিও এখানের কার্যপদ্ধতি লিনাক্স কার্নেল এর তুলনায় অনেকটা আলাদা ।</p><p><strong>লিনাক্স কেন ব্যবহার করব এবং কি কি কাজ করা যায়?</strong></p><p><br>&nbsp;</p><p>প্রশ্নটি আসলে এমন হওয়া উচিত হয়নি! প্রশ্ন টা এইরকম হলে মনে হয় নির্ভুল হতো, লিনাক্স কার্নেল উপর ভিত্তি করে তৈরি করা অপারেটিং সিস্টেম গুলো কেন ব্যবহার করব?? । লিনাক্স হচ্ছে ওপেনসোর্স প্রোজেক্ট। যে কেউ এর সোর্স কোড দেখতে পারবে, নতুন কিছু যুক্ত করতে পারবে, নিজের ইচ্ছে মত কাস্টমাইজ করে নিতে পারবে, এই সোর্স কোড ব্যবহার কওরে নতুন অপারেটিং সিস্টেম তৈরিও করতে পারবে। আসলে যে কেউ এগুলো করতে পারবে না। এসব কাজ করার আগে জানতে হবে অনেক। কথায় আছে না \'ইচ্ছে থাকলে উপায় হয়’! যেকোনো একটা লিনাক্স ডিস্ট্রো সম্পর্কে আলোচনা করলে মোটামুটি সবগুলোর কার্যপদ্ধতি জানা যাবে।&nbsp;</p><p><br>&nbsp;</p><p>আমার প্রথম ব্যবহার করা লিনাক্স ডিস্ট্রো টি ছিল \'<strong>লিনাক্স মিন্ট</strong>\'। যেটি উবুন্টু ডিস্ট্রো এর সোর্স কোড থেকে তৈরি করা হয়। আবার এই উবুন্টু আরেকটি জনপ্রিয় ডিস্ট্রো ডেবিয়ান এর সোর্স কোড থেকে তৈরি করা। যদিও অন্য কোনো ডিস্ট্রো থেকে তৈরি করা হয়েছে তবুও এর অভ্যন্তরীণ কার্যপ্রনালীতে নিজস্ব কিছু পদ্ধতি রয়েছে। এইসব মেইন্টেইন করার জন্যে রয়েছে নিজস্ব রিপোজিটরি। প্রত্যেক ডেভেলপার রা বুঝতে পারবে রিপোজিটরি বলতে কি বুঝায়। রিপোজিটরি হচ্ছে এমন একটা প্যাটফর্ম যেখান থেকে সফটওয়ার এর ভার্শন কন্ট্রোল সহ এডিং, আপডেট, রিমুভ এবং আপগ্রেড করা হয়। এর পরবর্তিতে এ পর্যন্ত ৫০ টি ডিস্ট্রো ব্যবহার করেছি।</p><p><br>&nbsp;</p><p>লিনাক্স ব্যবহার করলে এন্টিভাইরাস সফটওয়্যার ব্যবহার করার একদম প্রয়োজন নেই। কারণ এর কার্নেল এ রয়েছে অত্যন্ত পাওয়ারফুল একটি প্রটেকশন সিস্টেম। যার কারণে ভাইরাস তৈরি করাটাও অনেক কঠিন । আর লিনাক্স এর প্রায় সব ধরনের অভ্যন্তরীণ কাজ টেক্সট মুড এ হয়। মানে উইন্ডোজ ওএস এ কোনো প্রোগ্রাম গ্রাফিক্যাল অবজেক্ট হিসেবে এক্সিকিউট করে, সেখানে লিনাক্স ডিস্ট্রো গুলো টেক্সট বেইজড অবজেক্ট হিসেবে কোন প্রোগ্রাম কে এক্সিকিউট করে। ওপেন সোর্স হওয়াই লিনাক্স এর কমিউনিটি সাপোর্ট ও বৃহৎ। তাই কোনো ডিস্ট্রো তে কোনো বাগ পাওয়া গেলে তাৎক্ষনিক এর মধ্যেই কেউ না কেউ সেইটার সমাধানের জন্যে কমিউনিটিতে হেল্প চায় বা নিজেই সেটার সমাধান করে কমিউনিটি কে জানায় এবং শীঘ্রই এর আপডেট চলে যায় সবার কাছে। লিনাক্স এর পাওয়ার ই হচ্ছে এই বিশাল কমিউনিটি সাপোর্ট।&nbsp;</p><p><br>&nbsp;</p><p>লিনাক্স এর রয়েছে পাওয়ারফুল একটি কনসোল যেটির নাম টার্মিনাল। কিছু লিনাক্স ডিস্ট্রো একটি টার্মিনাল এ চলে আবার কিছু কয়েকটি টার্মিনাল এ চলে। টার্মিনাল গুলোতে টীটীওয়াই যুক্ত করা থাকে যাতে কোনো ব্যবহারকারী সরাসরি কমান্ড চালিয়ে হার্ডওয়্যার ও বিভিন্ন সফটওয়্যার কে এক্সেস করতে পারে। TTY (TELETYPEWRITER) ৬ টি থাকে tty1, tty2, tty3, tty4, tty5, tty6 নামে।</p><p><br>&nbsp;</p><p>বিভিন্ন ফ্লেভার এর ডেস্কটপ এনভাইরনমেন্ট আছে। মানে ইউজার ইন্টারফেইস বলতে আমরা যা বুঝি। ডেস্কটপ ইনভেইরনমেন্ট (Desktop Environment) কে সংক্ষেপে ডিই (DE) বলা হয়। আপনি চাইলে এগুলোকেও নিজের মত কাস্টমাইজ করে নিতে পারবেন। নিচে কয়েকটি ডেস্কটপ ইনভাইরনমেন্ট এর নামঃ নোম (Gnome), কেডিই (KDE), ছিনামন (Cinnamon), এক্সএফসিই (Xfce), মেইট (Mate), এলএক্সডিই (LXDE), ডিডিই (Deepin DE), আই থ্রি (i3) , ইউনিটি (Unity) ইত্যাদি।</p><p><br>&nbsp;</p><p>আপনি আপনার যতরকমের দরকার আছে প্রায় সবগুলোই এখানে করতে পারবেন। এই ইন্টারনেট জগতে যতধরনের ওপেন সোর্স সফটওয়্যার আছে প্রায় সব গুলোই লিনাক্স এ চলে। প্রোগ্রামিং করার জন্যে লিনাক্স এ বিল্টইন পাইথন৩/পাইথন২ , সি/সি++, পার্ল, রুবি প্রভৃতি ল্যাঙ্গুয়েজ এর কম্পাইলার দেওয়া থাকে। ডেভেলপমেন্ট এর জন্যেও লিনাক্স প্ল্যাটফরম অনেক অনেক কার্যকরী।</p><p><br>&nbsp;</p><p>গ্রাফিক্স এর কাজের জন্যে রয়েছে গিম্প Gimp(GNU Image Manipulation Program), বাংলায় লেখার জন্যে রয়েছে অভ্র ফোনেটিক কিবোর্ড এবং ওপেনবাংলা ফোনেটিক কিবোর্ড সাপোর্ট। অফিস এর কাযকর্মের জন্য রয়েছে লিব্রে অফিস নামের পাওয়ারফুল সফটওয়ার টুল আছে যেখানে মাইক্রোসফট অফিসের সব কাজই করা যায়। LibreOffice Base , LibreOffice Calc, LibreOffice Draw, LibreOffice Impress, LibreOffice Writer. আমি এই মুহুর্তে আমি আর্চ লিনাক্স এ আছি যেখানে LibreOffice Writer সফটওয়্যার এ লিখছি।&nbsp;</p><p>লিনাক্স এর প্রায় সব ডিস্ট্রিবিউশন অত্যন্ত লাইটওয়েট এবং অত্যান্ত দ্রুত । তাই লো কনফিগারেশনের পিসিতেও অনেক স্মুথলি চলে বা কাজ কওরা যায়। সিস্টেম ড্রাইভ সর্বনিম্ন ১০ জিবি থেকে ২০ জিবি বা এর বেশিও দেওয়া যাবে, র‍্যাম সর্বনীম্ন ২ জিবি বা এর থেকে বেশি, সোয়াপ এরিয়া র‍্যাম এর সাইজ এর সমান থাকবে, আর বর্তমানের যতরকম প্রসেসর পাওয়া যায় প্রায় সবগুলোতেই চলবে।</p><p><br>&nbsp;</p><p><strong>এন্ড্রয়েড কি লিনাক্স ভিত্তিক অপারেটিং সিস্টেম?</strong></p><p><br>&nbsp;</p><p>হ্যাঁ, এন্ড্রয়েড লিনাক্স এর কার্নেল ভিত্তিক একটি মোবাইল অপারেটিং সিস্টেম। যা এআরএম প্রসেসর এর জন্যে তৈরি কওরা হয়েছে। গুগল এর প্রস্তুতকারক যেটিকে স্টক এন্ড্রয়েড বলে। স্টক এন্ড্রয়েড ওএস টি কে বিভিন্ন কোম্পানি গুগল এর থেকে নিয়ে নিজেদের মত করে কাস্টমাইজ করে একটি নির্দিষ্ট লাইসেন্স এর অন্তর্ভুক্ত করে নিজেদের নামে ডিস্ট্রিবিউশন করে যেমনঃ নেক্সাস, স্যামসাং, শাওমি, অপ্পো ইত্যাদি। বলতে গেলে এগুলোও লিনাক্স এর এক একটি ডিস্ট্রো।&nbsp;</p><p><br>&nbsp;</p><p>&nbsp;</p>', 'uploads/873631PSX_20200813_232145.jpg', NULL, 1, '2020-08-30 21:59:39', '2020-08-30 22:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_code_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `instructor_id`, `section_id`, `title`, `description`, `video_url`, `source_code_url`, `view_count`, `like_count`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 'Linux', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_03_194608_create_user_profiles_table', 1),
(4, '2019_04_04_190447_create_categories_table', 1),
(5, '2019_04_04_190814_create_courses_table', 1),
(6, '2019_04_04_191611_create_sections_table', 1),
(7, '2019_04_04_192019_create_lessions_table', 1),
(8, '2019_04_04_193018_create_comments_table', 1),
(9, '2019_04_04_193929_create_contacts_table', 1),
(10, '2019_04_04_194446_create_ratings_table', 1),
(11, '2019_04_04_195023_create_likes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tzz.tuhin@gmail.com', '$2y$10$OKsD5T5QGtc6MdR9etWVheVeHhlHSA82ul0l9l.rPGwqu5UHCnQkW', '2020-08-30 21:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `instructor_id`, `course_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 'Linux', '2020-08-30 22:01:10', '2020-08-31 00:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_approved`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'Tuhin', 'tzz.tuhin@gmail.com', 'pingpong', 'admin', 1, 1, '2020-08-31 03:45:35', '2020-08-31 03:45:35'),
(2, 'Joha', 'tuhin.joha24@gmail.com', 'pingpong', 'user', 1, 1, '2020-08-31 03:45:35', '2020-08-31 03:45:35'),
(3, 'Tahuruzzoha', 'tuhinjoha9@gmail.com', '123456789', 'user', 0, 0, '2020-08-31 03:52:56', '2020-08-31 03:52:56'),
(4, 'Tisha', 'mst.mehejabin.tisha@gmail.com', '$2y$10$nm4wT45N6u9G0eIXTfZ49.xvFGsksb277//khMCnH60vpQoZ2gXhm', 'instructor', 0, 0, '2020-08-30 21:55:40', '2020-08-30 21:55:40'),
(5, 'Parag', 'parag@gmail.com', '$2y$10$l.ZrXlux4ixH3NreUY/aAetXesxEfwM3QAOvlhhs2mKyh7NLuFl0.', 'admin', 1, 1, '2020-08-30 22:02:52', '2020-08-30 22:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `dob`, `phone`, `address`, `institute`, `subject`, `created_at`, `updated_at`) VALUES
(1, 1, '1997-04-16', '01780164328', 'Joypur, Nawabgonj, Dinajpur', 'SUST', 'Mathematics', '2020-08-31 03:47:55', '2020-08-31 03:47:55'),
(2, 2, '1999-08-02', '01534589602', 'Dhaka, Bangladesh', 'BUET', 'CES', '2020-08-31 03:47:55', '2020-08-31 03:47:55'),
(3, 4, NULL, NULL, NULL, NULL, NULL, '2020-08-30 21:55:52', '2020-08-30 21:55:52'),
(4, 5, NULL, NULL, NULL, NULL, NULL, '2020-08-30 22:03:02', '2020-08-30 22:03:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
