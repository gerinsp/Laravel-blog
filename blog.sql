-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 09:35 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'IT', 'web-programming', '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(2, 'Administrasi', 'web-design', '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(3, 'Personal', 'personal', '2022-11-19 06:33:30', '2022-11-19 06:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_11_132220_create_posts_table', 1),
(6, '2022_11_12_080931_create_categories_table', 1),
(7, '2022_11_20_073612_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Aliquid quaerat quo adipisci.', 'ipsam-aut-qui-saepe-cumque', NULL, 'Enim odit voluptate in possimus. Praesentium tempore dolor aut eaque pariatur. Temporibus esse et earum laborum. Impedit cum dignissimos accusamus vero.', '<p>Similique ut adipisci in sunt. Quis accusantium voluptatibus illo officiis. Sed minima magnam aut qui cupiditate quidem. Quis magnam neque culpa error adipisci rerum et.</p><p>Quos ut minima similique commodi itaque quia repellat. Inventore id optio aliquam aut sit sed. Repellat doloribus delectus voluptas velit. Tenetur occaecati dolore et delectus sed ad et.</p><p>Consequatur adipisci placeat est vero accusamus. Et et cupiditate in temporibus tenetur ex iste. Ipsum in dicta molestiae non vel.</p><p>Aut ea nisi amet pariatur porro provident. Aliquam labore amet ducimus et praesentium cupiditate sapiente.</p><p>Nihil itaque ullam ea. Expedita et minima nam est omnis fuga porro facere. Atque et veritatis minima iusto ut qui.</p><p>Ut quos tempora sed expedita. Deleniti voluptas suscipit id debitis adipisci. Est facilis unde tenetur reprehenderit. Et quia numquam dolorem itaque itaque.</p><p>Ipsa id consequatur qui id perspiciatis natus deserunt. Consequatur deserunt quo vero ut voluptas excepturi. Magnam voluptate nihil commodi sint ut inventore ut.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(2, 1, 2, 'Ab et quas enim vel aperiam eius.', 'velit-magnam-possimus-at-omnis', NULL, 'Occaecati molestiae et qui facere enim adipisci dolorum necessitatibus. Quos dignissimos deserunt doloremque similique. Itaque sit minus incidunt. Earum voluptates atque accusantium voluptatem saepe sed saepe.', '<p>Assumenda perferendis fugit amet aut sed et eum. Enim officiis qui qui nemo. Illum accusamus reiciendis suscipit itaque aspernatur.</p><p>Velit nesciunt molestiae est dolor. Praesentium porro qui nemo et sint qui eos. Consequatur quia voluptatem rerum et exercitationem adipisci.</p><p>Nulla dolor voluptate nesciunt aut qui voluptatibus rerum. Odit minus voluptate inventore suscipit earum nihil voluptatum. Voluptates illum eveniet soluta dolor. Ducimus dicta eaque deserunt quidem dolores consequuntur ut.</p><p>Delectus quae eius a ut sequi dolores et. Voluptate officia et aspernatur aut. Omnis consequatur impedit quaerat eius.</p><p>Sed aperiam tempora non assumenda ipsum. Ratione quaerat exercitationem ut veritatis ipsum. Sunt odit quis quasi eum velit veniam eos voluptas. Eos quia assumenda libero.</p><p>Quae commodi nulla voluptates est. Facilis ducimus voluptatibus quo natus vero. Velit iste quia odio illo. Aut asperiores odit molestiae quae.</p><p>Temporibus nulla delectus nihil autem. Velit enim voluptatem illo sunt facere omnis sit. Aliquam et distinctio voluptate quia. Quis ut ea aut sit neque.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(3, 2, 1, 'Sit dolore voluptas non.', 'reprehenderit-rem-ex-ut-vero-suscipit-laborum', NULL, 'Blanditiis culpa quia consequatur et. Sit illo nisi earum nesciunt consectetur delectus qui. Consectetur est pariatur eum voluptatibus voluptatibus quia quisquam tenetur.', '<p>Eligendi est hic in labore consectetur. Quos animi libero et sit quae minima.</p><p>Ut ex accusantium iusto magni quis unde velit. Dolores quos aut culpa eum necessitatibus omnis. Dolorem pariatur itaque ut quos quo itaque.</p><p>Occaecati id consequatur harum harum officia. Nihil nostrum eos et id aut. Ea numquam alias aut sequi laborum.</p><p>In et laudantium et aut et aut. Nam hic ipsum voluptatem quo eligendi voluptatum. Doloribus repellat mollitia ut architecto officia autem ad doloremque. Ex aliquam provident aspernatur doloremque et commodi ea.</p><p>Aperiam sit iste quae itaque alias voluptate omnis. Velit enim est blanditiis molestias magnam dolorem et ab. Architecto pariatur sed et eum ex beatae. Et reiciendis nihil nam voluptatem magni pariatur.</p><p>Ut neque eveniet ab cupiditate dolore ea corrupti est. Earum repellendus est assumenda et reiciendis. Doloribus ut sequi corporis incidunt. At blanditiis cumque at qui deserunt iusto dolor.</p><p>Quam exercitationem odit aut sequi earum. Numquam incidunt voluptatem vel magnam et. Qui non iusto tempore consectetur quia asperiores placeat. Unde facere consequatur pariatur dolore excepturi nesciunt.</p><p>Ut facere similique sunt architecto omnis et at. Voluptatem sint dolor temporibus assumenda cum pariatur placeat. Quasi ipsum qui non nam quisquam magnam deleniti.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(4, 1, 2, 'Odit voluptas molestias dolores.', 'autem-impedit-impedit-assumenda-quis', NULL, 'Doloribus ducimus molestias quo asperiores architecto. Odit rerum soluta consequuntur molestiae iure tempora velit quas. Maxime unde facilis non tenetur aut eos. Tempore debitis qui omnis.', '<p>Harum repellendus quae molestias. Quibusdam itaque eos cumque consectetur laboriosam. Omnis sint nihil qui ducimus eos dolore ea qui. Explicabo quia necessitatibus laboriosam natus minima. Atque voluptas in dolor facilis deserunt similique ipsa.</p><p>Iure placeat libero eligendi ipsa nemo. Doloribus dolores ut et quisquam voluptas et. Error quis ullam quaerat omnis fugit rerum. Nihil fugit rerum eos debitis fugiat quia quis.</p><p>Rerum odio dicta quasi aspernatur et quia assumenda. Illo aut necessitatibus qui sed id consequatur illo qui. Ratione possimus excepturi ut dolor soluta quam. Dolorem rerum sed itaque illum.</p><p>Doloremque tenetur aut atque quo corrupti quidem ea. Fugit dolorem est consequatur tenetur eligendi blanditiis nihil. Iste quidem eaque necessitatibus quaerat illo deleniti iste.</p><p>Qui sit ea doloremque natus ab earum voluptatibus qui. Velit consequatur voluptate qui deleniti qui voluptatibus. Voluptatem rerum voluptatem provident dicta adipisci.</p><p>Nihil aperiam velit omnis vel. Quibusdam consequatur maxime nobis quia ratione voluptates aut. Officia ipsam iure occaecati explicabo quasi velit. Ut architecto architecto et consectetur vitae amet soluta accusantium.</p><p>Repellendus reprehenderit natus qui dolores et sit. Minus fugiat sit sit incidunt ut corrupti inventore. Maxime aut in officiis dolor est tempore et.</p><p>Nesciunt sapiente voluptatum voluptas culpa quidem. Qui voluptatum illum et consequatur et. Et sit dicta magnam et quia maiores enim. A consequatur velit doloremque similique.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(5, 1, 3, 'Iste et vel.', 'sint-vitae-eum-non-et-ad-nisi-quis', NULL, 'Voluptatem incidunt quae voluptatem eos dignissimos. Aut cupiditate voluptates voluptatibus eaque esse reprehenderit aliquid. Facilis soluta aperiam sit nihil iusto porro distinctio.', '<p>Non omnis non consectetur dolores accusantium aut deleniti. Laborum fuga itaque molestiae fugiat. Harum ut ut esse animi. Explicabo voluptatem sed velit.</p><p>Eum qui sed esse nemo. In amet occaecati aut qui.</p><p>Neque ab voluptas repellendus et numquam ipsam. Dolorem voluptatem fugit ut aut dolorum.</p><p>Sunt cumque ea et consequatur alias officia voluptas. Similique maiores molestiae voluptatum porro. Facere aut quis omnis. Repellendus inventore fugiat non.</p><p>Illum illum adipisci adipisci inventore qui sed. Qui sit sunt consequatur qui. Est odio vel blanditiis qui facere.</p><p>Earum assumenda maxime distinctio quia necessitatibus vel non hic. Consequatur culpa enim eum cum laudantium quia odit nobis. Iusto ut est voluptas exercitationem.</p><p>Error eveniet assumenda id aut. Explicabo eveniet excepturi ipsa repellat tempora cum. Pariatur rem provident autem.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(6, 2, 3, 'Incidunt architecto qui.', 'id-dolore-pariatur-laudantium-numquam-nesciunt-eos-occaecati', NULL, 'Totam fuga odio vel omnis. Aut sint voluptatem numquam quia perferendis repudiandae. Aut delectus harum atque et autem.', '<p>Quia nam deleniti non ut dolorum laboriosam est. Rerum pariatur exercitationem voluptatem nulla officiis ipsum. Tenetur sunt ut quibusdam autem beatae.</p><p>Libero magnam harum qui quia odio ducimus beatae. Quis modi sit voluptatem nihil eligendi asperiores non aut. Dolor odit nihil quaerat error eveniet.</p><p>Aut qui ea praesentium quis cumque ea placeat. Sapiente et rerum odio dolorum voluptate. Laudantium minus dolores reiciendis veniam voluptatum qui natus.</p><p>Ab delectus officia amet aspernatur nam quia magnam. At quis aut autem vitae nihil voluptas. Ea at earum ea et quisquam consequatur ea.</p><p>Libero saepe et labore similique culpa. Earum aliquam dignissimos at reprehenderit.</p><p>Nam adipisci nobis maiores molestiae laborum et. Aliquam ea ut iste et ipsum. Quaerat voluptatem laboriosam est officia in quasi. Blanditiis aperiam veritatis sapiente. Voluptates aperiam possimus vel a.</p><p>Id dolor perspiciatis tempora quo. Est corporis repellat quod dolore ad. Consequatur eos fugit perspiciatis nemo quas quis quas. Provident qui modi tempore exercitationem.</p><p>Praesentium possimus asperiores voluptatem culpa voluptas. Ipsam animi eveniet blanditiis. Molestiae qui dolorem ullam quisquam sed. Corporis in minima deleniti quos repudiandae aliquid.</p><p>Voluptatem consequatur harum ut ipsam dolor iure rerum. Beatae non commodi deserunt odio aut at.</p><p>Architecto eum rem soluta quos. Quis deserunt consequatur velit ut dolorum earum et molestiae. Ut sunt cum recusandae adipisci. Iste sit eos quibusdam ut provident dolorum.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(7, 1, 2, 'Provident et iusto sunt ipsum.', 'saepe-qui-est-animi', NULL, 'Aut quo animi doloremque ex nihil itaque assumenda. Quia rerum aut corrupti dolore. Dignissimos est est veniam inventore. Facere nesciunt omnis dignissimos exercitationem sunt.', '<p>Incidunt reprehenderit necessitatibus deserunt nulla deserunt. Est laboriosam blanditiis et repellendus. Vero ut perspiciatis minus recusandae similique rem est.</p><p>Amet nulla maxime voluptatem numquam dolorem ipsum. Deserunt iusto quia autem est totam.</p><p>Distinctio voluptatum numquam eum unde distinctio. Est laboriosam eaque labore sunt optio iste. Eum asperiores nihil perferendis totam eos eaque. Sed quasi accusantium occaecati cupiditate qui.</p><p>Dignissimos adipisci nihil dolorum quis quidem quisquam dicta. Molestiae non saepe aut quia aut natus autem. Quibusdam officia sint voluptates omnis vel et ratione.</p><p>Ipsam totam cupiditate harum et. Sapiente ea dolor impedit assumenda aut sit voluptates. Minima vel enim earum odio earum iusto et.</p><p>Delectus asperiores quisquam beatae nisi. Atque nihil sed ea aliquam illo tempora quo. Magni illum amet rerum animi quisquam. Enim officia dolor nihil odit fugit praesentium sunt.</p><p>Dignissimos nisi aut alias consequatur velit. Sed est odit ratione accusantium voluptas est ut. Iure ullam cum veniam voluptatem. Aut consequatur rerum odit quis commodi sit.</p><p>Qui qui libero explicabo est doloremque at repellendus. Corporis voluptatem numquam nesciunt cupiditate quibusdam rerum. Repellat necessitatibus ipsa expedita sit deleniti et consequatur.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(8, 1, 2, 'Molestias iste omnis explicabo.', 'molestias-perferendis-laboriosam-molestiae-praesentium', NULL, 'Reprehenderit et quo nostrum quo non impedit beatae. Dolorem eum optio ipsa ratione. Quia magni nesciunt aut est perferendis sequi.', '<p>Qui voluptates corrupti repellat sunt quia. Sunt adipisci debitis quia non. Et pariatur ut rerum sunt ut incidunt. Odit cum maxime ea dignissimos et.</p><p>Modi quaerat et voluptas voluptatem. Dicta aliquam quidem est voluptatibus. Quia sunt ullam quas omnis provident voluptatem. Dicta sit excepturi sed sunt.</p><p>Rerum fugit sunt nobis omnis et minima laboriosam. Est unde rem doloremque magnam non. Illo accusantium et iste modi cum quos. Id velit est consequatur blanditiis enim.</p><p>Excepturi accusantium incidunt sunt sunt. Odio est blanditiis aperiam doloribus. Est enim suscipit at incidunt iusto dicta. Amet voluptate dolores omnis nulla fuga.</p><p>Voluptate omnis molestias ut sapiente. Eveniet vero natus et velit vero quisquam consequatur provident. Hic iusto dignissimos voluptatem repellat.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(9, 2, 1, 'Debitis sit voluptatibus corporis consequatur consectetur excepturi.', 'mollitia-tenetur-iusto-ut-quia-consequatur', NULL, 'Sapiente quidem corrupti qui fugit quidem ab omnis. Fuga porro enim fuga iure. Autem consequatur illum laborum perferendis aut modi.', '<p>Molestiae quas quis perspiciatis aspernatur fuga quis. Necessitatibus reiciendis voluptatem tempora consequatur sit aut. Dolore repudiandae dolorum dolore sint iusto nostrum ullam. In quisquam hic et aut sint non.</p><p>Magni deserunt vel unde voluptas. Earum ex ad sint culpa.</p><p>Expedita ipsam asperiores reprehenderit ex praesentium. Fugiat aperiam corrupti corporis aut qui quis. Et odit ex in odio voluptatum. Fugiat sunt non quasi cupiditate non ad nesciunt.</p><p>Ut ea in eligendi et ad. Aliquid nihil quia atque distinctio omnis nihil ut. Qui sit rerum culpa consequatur et et saepe.</p><p>Repellat ut impedit voluptas harum consequatur modi nihil. Ad ab expedita et tenetur assumenda. Et quia cum cum at nemo eius facere fuga. In reprehenderit quos est.</p><p>Soluta molestiae quae voluptatem quas earum. Accusantium quaerat voluptas adipisci sunt eum soluta praesentium. Ut dolores delectus quisquam quos non ab eveniet. Architecto id animi quo provident eaque.</p><p>Veritatis rem quam qui nisi et enim. Veniam quia exercitationem molestiae aut adipisci occaecati voluptas.</p><p>Reprehenderit eos illo ducimus. Vel quam sit tempore magnam. Dolore quae aliquam commodi aspernatur laudantium officiis debitis praesentium.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(10, 1, 2, 'In autem facere culpa dolores et consequatur perferendis.', 'est-impedit-magnam-velit-dolorum-voluptas-et', NULL, 'Et aperiam ipsam enim. Nemo qui repellat suscipit magnam quis unde molestiae. Mollitia veritatis at ea. Fugit et id qui unde natus voluptatem voluptas. Perspiciatis eligendi assumenda maiores sapiente provident.', '<p>Consequatur et quibusdam iure qui. Nihil aliquid corrupti velit omnis sit. Quibusdam quia similique aut architecto. Omnis vero ducimus asperiores aut dolores id et.</p><p>Non laudantium esse eum sed. Nisi a illum totam nesciunt libero est iure sit. Porro accusantium voluptatem deserunt recusandae. Velit aut expedita quasi aut incidunt et eos voluptas.</p><p>Recusandae vero non perferendis ipsum. Nobis animi itaque consequuntur omnis ducimus. Quos quia hic et tenetur deleniti odit ut fuga. Aperiam cumque dicta quia tempora voluptate qui porro.</p><p>Facilis qui qui aliquam tempore praesentium. Porro saepe velit amet recusandae atque quas omnis. Nam qui neque excepturi et odit cum itaque. Ducimus sequi quae sunt distinctio. Labore et explicabo consectetur consequatur non aut.</p><p>Libero omnis et ea necessitatibus voluptas quibusdam. Repellendus sint debitis aliquid omnis omnis nobis aliquid nostrum. Voluptatem occaecati recusandae dolore. Doloribus consectetur occaecati ullam.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(11, 2, 1, 'Cupiditate tempora officiis quaerat enim recusandae.', 'nihil-quo-id-cupiditate-aliquam', NULL, 'Corporis officia laudantium quis excepturi corporis. Porro aut et veritatis. Temporibus earum nostrum eligendi veniam nostrum natus dicta.', '<p>Atque deleniti nam temporibus vero. Eum ullam aliquid rem harum quia sed et perferendis. Magni aliquid quam qui voluptatibus necessitatibus doloribus. Vel quibusdam ratione labore quisquam nemo maxime.</p><p>Sequi illo maxime adipisci eum quia omnis. Vel laborum sed molestias.</p><p>Vel minus rerum unde nemo quas aut. Recusandae a magnam temporibus possimus sapiente explicabo et. Cumque aut rem non natus vero molestiae ipsam.</p><p>Eos nemo autem repellendus ratione voluptatem provident commodi. At aliquid voluptates beatae voluptatem laborum. Rerum qui quaerat quo beatae sed. Eos non saepe quam facere odio voluptates.</p><p>Iusto quis inventore corrupti nobis. Occaecati molestiae quam inventore non soluta quasi culpa. Aut sint illum a distinctio voluptatem nihil quia.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(12, 1, 3, 'Eum impedit omnis accusantium.', 'perspiciatis-ut-non-cumque-impedit-dolorem-aspernatur-cum-cum', NULL, 'Ipsam maxime ipsa accusamus blanditiis alias. Et et voluptas dolorum voluptas ipsam fugit. Voluptas aut sunt unde cumque unde eligendi dolore dolor.', '<p>Et molestiae maiores similique ut. Et eligendi veniam a. Voluptatem asperiores beatae aut. Corrupti cupiditate dolores repellat dolorem temporibus beatae.</p><p>Dolores vel quos eos corporis atque aut aut. Est accusamus fugit aut et dolorem. Similique consequuntur excepturi molestiae inventore explicabo rerum accusamus. Enim facilis qui modi nostrum nulla.</p><p>Ad neque natus accusantium est pariatur. Cupiditate et expedita qui quos. Molestiae et dolorum modi aut numquam. Qui suscipit cum rerum officiis fuga.</p><p>Rerum rerum provident et sequi. Eum voluptatem corporis repudiandae. Est corporis veniam perferendis voluptates fugiat quisquam est.</p><p>Saepe hic quo molestiae qui. Quia maxime amet accusantium assumenda enim explicabo. Eveniet ab officiis dignissimos et.</p><p>Qui asperiores autem impedit recusandae nemo. Impedit animi ducimus eaque. Fuga aspernatur provident quaerat delectus.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(13, 1, 3, 'Temporibus porro provident voluptates ex placeat odio.', 'voluptas-alias-ea-architecto-voluptatem-et-ipsa', NULL, 'Est cum tempore ullam sunt magnam hic eaque. Excepturi cupiditate cumque et placeat est reprehenderit velit.', '<p>Optio esse doloremque nobis quam ut modi. Voluptatibus saepe et eligendi. Cum unde velit sed.</p><p>Nam et odit aliquid. Voluptatem et nihil debitis aut et quibusdam. Voluptatum dicta quod adipisci quis nihil aut eos.</p><p>Molestiae expedita accusamus ea et. Omnis fugiat quibusdam neque aut facilis et rerum. Placeat enim reiciendis sunt molestias magni quis molestiae adipisci. Laboriosam consequuntur placeat nostrum laudantium aut voluptates aut.</p><p>Natus saepe quos ut at. Est illum voluptas dolore. Repellendus aut aut facilis.</p><p>Sit exercitationem optio repellendus quos. Enim earum possimus rerum et nam rerum. Velit omnis aperiam sit repudiandae aspernatur et eum nihil.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(14, 1, 2, 'Eveniet asperiores labore sequi.', 'nihil-aliquid-voluptatem-ut', NULL, 'Illo aut voluptatem quia tenetur illo mollitia. Alias nesciunt qui cumque et deleniti. Minus natus qui suscipit voluptas magnam.', '<p>Numquam repudiandae deleniti porro saepe eveniet. Et dolor et qui ipsum qui. Provident quia deleniti consectetur soluta voluptates unde quis.</p><p>Quo voluptatibus quam et aut praesentium. Minima qui fuga aliquid totam eum non. Nihil porro consequatur ut et consequatur id. Voluptatem atque ea et debitis nostrum doloribus quia.</p><p>Nihil dolorem libero commodi aperiam reprehenderit qui molestiae voluptatem. Hic laborum eos eius animi magnam amet quam. Ex distinctio tenetur tempore laboriosam qui voluptas. Officiis exercitationem recusandae error cumque commodi et. Distinctio voluptas et culpa magni veritatis omnis doloremque.</p><p>Consequatur cum officia saepe qui velit consequatur. Excepturi labore voluptatibus aspernatur beatae consequuntur. Quos atque possimus dolorum aut iure ex soluta. Aut similique ut ea odit est et.</p><p>Corporis quam possimus totam nemo tenetur eos in. Quas consequuntur qui suscipit sed alias. Maxime nihil et architecto voluptatibus rerum nemo maxime.</p><p>Error architecto esse et facere. Ipsum vel illum illum facilis excepturi cumque architecto. Fuga perferendis repudiandae voluptatem veritatis distinctio. Ut sint sed nihil eos explicabo atque.</p><p>Facilis aperiam perferendis eveniet libero animi quis. Tempore aut repudiandae veritatis veritatis qui laboriosam magnam voluptatum. Asperiores et autem aliquid voluptatem ut sunt dolorem. Sunt eum natus est cupiditate enim officiis quidem.</p><p>Dicta ut tenetur itaque praesentium voluptatem ex est. Odit eius rerum ut vel laboriosam totam non. Et et natus eos deserunt eius porro nam itaque. Cumque quis saepe aut eum.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(15, 2, 3, 'Aliquid saepe quidem qui.', 'et-rerum-nihil-itaque-nulla-in-amet', NULL, 'Nam expedita inventore id. Sed libero id omnis velit qui cumque iusto delectus. Et id voluptatem accusantium eum eius optio nihil dolores. Voluptatem possimus quos eum ab.', '<p>Occaecati ut voluptatem esse enim eum ipsum voluptates. Voluptatibus consequatur iusto consequatur eius et vel sed. Autem excepturi incidunt sequi aut voluptatem esse et aut. Modi ut itaque labore enim perferendis.</p><p>Magni provident doloremque repellendus non dicta. Pariatur nemo veritatis dolorum recusandae dolorem. Debitis iure est eveniet et dolorem rem harum animi.</p><p>Rerum esse et in repudiandae. Sit quo blanditiis veritatis facilis eveniet. Sunt impedit pariatur eum magni praesentium id.</p><p>Non optio ducimus voluptas sed et. Consectetur accusamus totam quo consequuntur odit quidem. Et enim quo sit qui maiores praesentium adipisci dolorem. Voluptates iste eaque eos animi ut.</p><p>Labore sed fugiat officiis alias explicabo dolores non. Odio perferendis maxime vitae. Rerum omnis aspernatur veritatis corporis adipisci quis.</p><p>Aut veniam reiciendis dolores possimus. Soluta non ullam adipisci possimus optio. Id fuga tenetur velit libero reiciendis sapiente voluptatem.</p><p>Earum quasi rerum nobis sed modi. Accusantium quas sed ipsam eius tempora earum. Id odit repellat debitis est nostrum.</p><p>Quibusdam expedita qui architecto aut eius ut qui eligendi. Aut dolorem eaque velit et nihil rem. Laboriosam qui velit ea sit voluptatem molestias.</p><p>Saepe incidunt praesentium rem illo minima dolor nesciunt. Et natus officia aut consequatur quos a. Qui ut consequatur quis illum modi optio.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(16, 2, 2, 'Dolores exercitationem excepturi.', 'repudiandae-porro-facilis-est-quia-rerum-qui', NULL, 'Est mollitia natus omnis error ut. Nesciunt temporibus veritatis pariatur et praesentium. Provident et repellat voluptatum aperiam. Aperiam est iusto voluptatibus sit earum id. Quidem voluptatem suscipit adipisci.', '<p>Occaecati esse vel inventore non impedit quae quasi. Et modi necessitatibus fugit quia. Animi quam quia maiores occaecati.</p><p>Ut nobis quis error qui. Velit tempore corporis quisquam esse et et nihil. Qui id aut ut voluptas consequatur.</p><p>Nobis quo aut quasi quia nihil nobis. Amet quidem qui neque ducimus. Illo iste qui tempora reiciendis ex. Porro distinctio rerum quo tenetur natus rerum.</p><p>Et placeat voluptatum facilis natus commodi rem. Voluptate qui molestiae accusantium non. Saepe optio nihil iste assumenda tempora commodi.</p><p>Nemo rerum molestiae dolorum autem facere asperiores necessitatibus. Et tempora quia velit est omnis. Vel atque voluptatum nostrum explicabo nam. Possimus totam quo ratione eum.</p><p>Quia pariatur et consequuntur voluptatem. Vitae nihil iure sapiente ut velit at. Placeat omnis at quisquam consequatur.</p><p>Inventore provident numquam enim doloremque non et. Perferendis odio consequatur unde quia soluta nostrum. Et qui id modi. In provident reprehenderit facere necessitatibus ex.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(17, 2, 2, 'Quas quaerat quas veritatis aut inventore harum.', 'fugiat-sequi-aliquid-quia-pariatur-quo-est', NULL, 'Sapiente quia rem quo distinctio asperiores voluptates tempora. Vel exercitationem corrupti magni quidem quidem aut odit aut. Asperiores earum suscipit est quia quis in molestiae et. Perferendis repudiandae quas ut odit veniam.', '<p>Nihil vitae tempore atque omnis. Adipisci maiores temporibus labore nobis. Dicta non id commodi minima. Architecto porro animi sed.</p><p>Nemo dolor aut perspiciatis ex consequatur cum. Quidem illum non quia sit reprehenderit. Atque facilis deserunt sed magni.</p><p>Nisi est laudantium consequatur quos minus voluptate. Consequatur ipsa ex aspernatur. Beatae recusandae eaque quo. Eligendi dolorum soluta et vitae.</p><p>Impedit et aut voluptates minima at. Quibusdam sed rerum illum consequuntur alias. Consequatur distinctio a nihil quia quod. Et exercitationem minus praesentium non ad ut.</p><p>Quia unde tempora alias veniam minima doloremque. Ratione vel fugiat in et. Soluta qui et delectus cum vel atque dignissimos. Maiores deleniti doloribus aut ea modi dolorem qui assumenda. Numquam atque cumque ea dolor.</p><p>Expedita aut voluptate maxime aut aliquam sed a. Non ea magnam qui et. Non vel et rerum illo. Reiciendis dicta quo in et quidem quas.</p><p>Voluptatem dolor reprehenderit repudiandae facere asperiores minus pariatur. Odio eius aut illo. Autem delectus omnis accusamus ut sint. Expedita est distinctio voluptatem libero expedita aut qui.</p><p>Ratione modi non qui veritatis. Iure et quisquam corporis saepe quo libero repellendus. Ad corrupti aut laboriosam odit ratione. Accusamus sapiente dolores quia aut.</p><p>Nulla tempore repellendus ab doloremque voluptatibus occaecati. Sit aliquam nihil nesciunt aut vel enim laboriosam. Ut inventore quia rerum qui fugit autem est quo. Provident aut dicta aspernatur animi et excepturi eum.</p><p>Quia ex blanditiis consequatur distinctio. Temporibus perferendis voluptatum et quo enim animi. Consequatur id omnis aut ut.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(18, 2, 2, 'Molestias fugit sint dolore sapiente non similique eos.', 'odio-laboriosam-et-sequi-hic-porro', NULL, 'Et sapiente consequuntur vel eum nihil maiores eos. Architecto rerum in ut. Tempora nisi quis odit dolor molestiae adipisci recusandae. Sint accusamus est ratione est harum.', '<p>Porro ut velit sit ut repellendus aut. Quos quo consequatur facere minus. Velit quidem rerum eum dignissimos et asperiores neque. Aut eveniet consequuntur molestiae voluptas aspernatur.</p><p>Numquam vitae excepturi ea debitis fugiat provident. Quia vero necessitatibus voluptas recusandae. Fugit sed nisi quia sequi reprehenderit mollitia. Eligendi tempore voluptatem facere dolor doloribus earum.</p><p>Sit voluptas libero occaecati. Nostrum delectus non sequi vitae nulla alias culpa. Asperiores rerum id tempora est libero optio quod. Tempore voluptas quia quos ut quis.</p><p>Quia nostrum cupiditate dolorem velit voluptatibus. Repudiandae labore sunt eum. Est maxime aliquam dolor et impedit itaque.</p><p>Et corporis libero magni consequatur. Incidunt in cumque minus quia in est. Quaerat officiis ea perferendis deleniti corrupti et. Molestiae eius sed unde placeat culpa fugit nihil.</p><p>Quod aliquid est est alias iure. Non consectetur molestias possimus dicta. Dolorem dignissimos rerum ad fuga corporis suscipit ducimus.</p><p>Expedita ducimus neque qui quaerat quis id. Recusandae ad natus inventore suscipit aut ullam eligendi autem. Quis porro voluptatem et et ut quibusdam nemo.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(19, 2, 1, 'Sit qui aut.', 'commodi-officiis-voluptatem-et-quae', NULL, 'Possimus tempora est sit exercitationem deserunt et debitis. Ad maxime error deleniti eos autem explicabo eius reprehenderit. Nihil sed facilis quis illum nihil blanditiis pariatur. Harum et voluptatem aperiam facere corporis. Doloremque qui soluta similique hic sunt temporibus.', '<p>Minima omnis voluptatibus voluptas magni dolor qui. Quis in qui accusamus praesentium quia omnis eum numquam. Ad omnis dolor aperiam distinctio. Voluptatem qui nihil magni dolor quam ab.</p><p>Nemo aliquid vel rerum quia dolores sapiente fuga quo. Est modi ducimus possimus repellat tempora.</p><p>Eos qui sit perferendis aut et delectus. Sapiente neque incidunt itaque saepe. Soluta magni ad quibusdam dolorem dolore eius ut.</p><p>Dolore aliquam optio autem at nobis inventore tempore. Vel nisi sint ut.</p><p>Et quia accusamus voluptas at voluptas voluptatem. Molestias in eos voluptas in. Reprehenderit non voluptates vitae eligendi ipsum temporibus.</p><p>Eveniet sint et voluptatum itaque aperiam inventore voluptatem modi. Nam nisi fugit dolorem assumenda quo totam maiores hic. Quo labore laborum eum fugiat est perspiciatis.</p><p>Et qui maxime reiciendis veritatis. Sapiente quia necessitatibus facilis corrupti doloremque excepturi ea.</p><p>Qui doloribus quia odit rerum quaerat rerum officia. Unde velit est quo cum. Dolorem perspiciatis quod ipsum doloribus sapiente nesciunt officia.</p><p>Fugit porro corrupti libero officia eius placeat dolorum accusamus. Nostrum vel ut sed molestias inventore. Ducimus sit deleniti quis quo animi. Iste sit qui perspiciatis dolor enim est.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30'),
(20, 1, 1, 'Modi rerum ut molestias velit.', 'ut-architecto-dolorem-dignissimos-voluptate-unde-quibusdam', NULL, 'Ut tempora veritatis dolorum ut est. Expedita corporis laboriosam quo. Laboriosam blanditiis ut pariatur ut.', '<p>Ratione itaque minus qui. Itaque autem qui quia ut labore. Dignissimos dolorem ut accusantium omnis. Natus ea sint nesciunt nam tempora ut quasi.</p><p>Corrupti dolor repudiandae quas fugit sapiente. Dolor dicta cum incidunt reiciendis vel aspernatur est. Sed nihil et qui enim. Odit quo quo officia commodi voluptas autem.</p><p>Minima ipsa ex incidunt. Esse repellendus hic blanditiis ipsum consequuntur. Quia quia ut error maiores ut aut id.</p><p>Inventore blanditiis sit possimus illo at omnis nam. Voluptatum nostrum cumque repudiandae et velit id recusandae. Commodi et aliquid sint voluptas eum et.</p><p>Debitis porro id rerum ea maxime. Ut id ex distinctio vel in sint iure.</p><p>Harum architecto quia sit esse sunt. Numquam distinctio aperiam aut impedit similique libero aut. Cum molestiae dolorem esse nesciunt id sed cumque.</p>', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Gerin Sena Pratama', 'gerinsp', 'denapratama7@gmail.com', NULL, '$2y$10$04x7Fgb0uUeqRVYyL.MTYuSi0DljRmEXxWqYYru7PNhtJ98ibLcX2', NULL, '2022-11-19 06:33:30', '2022-11-19 06:33:30', 1),
(2, 'Karna Hardiansyah', 'jpermata', 'victoria.ramadan@example.net', '2022-11-19 06:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SgGloUjntkAMarCLqGGDJCERxZSWQgRVw1K2PMNvHyzRUCsx9s3rScKh2npB', '2022-11-19 06:33:30', '2022-11-19 06:33:30', 0),
(3, 'Ina Ilsa Andriani S.I.Kom', 'pangestu.sihombing', 'aurora41@example.com', '2022-11-19 06:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LEZjVk8AOC', '2022-11-19 06:33:30', '2022-11-19 06:33:30', 0),
(4, 'Nadine Hariyah S.E.I', 'baktianto.prayoga', 'endra97@example.com', '2022-11-19 06:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IYVS0RJKT7', '2022-11-19 06:33:30', '2022-11-19 06:33:30', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
