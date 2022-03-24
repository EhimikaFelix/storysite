-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 10:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` text NOT NULL,
  	`description` text NOT NULL,
  	`filepath` text NOT NULL,
  	`uploaded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `images` (`id`, `title`, `description`, `filepath`, `uploaded_date`) VALUES
(1, 'Abandoned Building', '', 'images/abandoned-building.jpg', '2019-07-16 20:09:26'),
(2, 'Beach', 'Hot summer day at the beach.', 'images/beach.jpg', '2019-07-16 20:10:05'),
(3, 'City', 'A view down at the city.', 'images/city.jpg', '2019-07-16 20:10:45'),
(4, 'Mountain', '', 'images/mountain.jpg', '2019-07-16 20:11:27'),
(5, 'Road', 'Going down the only road I''ve even known.', 'images/road.jpg', '2019-07-16 20:12:00'),
(6, 'Stars', 'A wonderful view of the night sky.', 'images/stars.jpg', '2019-07-16 20:12:39');


-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(13, 24, 9, 'Edinburgh Castle and the Royal Mile', '1647251477_scotland-edinburgh-castle-2.jpg', '&lt;p&gt;Since the 13th century, the stone towers and walls of Edinburgh Castle have dominated the Edinburgh skyline. It is perched on a black basalt rock and gives spectacular views of the city as well as a journey through Scotland&#039;s turbulent history.&lt;/p&gt;&lt;p&gt;The stunning Crown Jewels, the famous Stone of Destiny (the Stone of Scone), and St. Margaret&#039;s Chapel, Edinburgh&#039;s oldest edifice, are all highlights of Edinburgh Castle. From the broad Esplanade, where the famed Edinburgh Military Tattoo is held every August, enter the castle through a drawbridge across an old moat. The castle gates are guarded by bronze statues of famous warriors William Wallace and Robert the Bruce.&lt;/p&gt;&lt;p&gt;The Royal Mile, which runs below the escarpment, leads to the beautiful Palace of Holyroodhouse, another of Edinburgh&#039;s most well-known sights. The Royal Mile is lined with brick homes and historic buildings, as well as tiny businesses, kilt makers, tearooms, museums, and caf&eacute;s. There are narrow little alleys called &quot;winds&quot; that swirl between little concealed shuts between its tall buildings - some of which reach more than 10 floors on the downhill side.&lt;/p&gt;&lt;p&gt;In addition to the National Museum of Scotland, make sure to include it in your Edinburgh itinerary. This interesting museum, which is one of Scotland&#039;s top attractions, has everything from medieval treasures to art and scientific exhibits.&lt;/p&gt;&lt;p&gt;Click here for more &lt;a href=&quot;https://www.planetware.com/edinburgh/edinburgh-castle-sco-loth-castle.htm&quot;&gt;highlights.&lt;/a&gt;&lt;/p&gt;', 1, '2019-11-23 15:56:19'),
(14, 24, 9, 'Loch Lomond', '1647251452_scotland-loch-lomond.jpg', '&lt;p&gt;Loch Lomond, Britain&#039;s largest lake, is just a short drive northwest of Glasgow. It&#039;s also known as &quot;The Queen of Scottish Lakes,&quot; according to Scottish author Walter Scott. Anglers will be enticed by the quantity of trout, salmon, and whitefish, as well as water sports and plenty of open space for hikers, making this picturesque part of Scotland a popular day trip from the city.&lt;/p&gt;&lt;p&gt;Boat tours, lakeside rambles, and lengthier treks up majestic Ben Lomond (3,192 feet), with its spectacular views across the Trossachs National Park, are all popular activities in Loch Lomond. Loch Lomond Shores, a beautiful retail complex with local crafts, a farmers market, restaurants, and bike and boat rentals, is the newest addition to the area. The Loch Lomond SEA LIFE Aquarium is a big feature locally. This family-friendly attraction features Scotland&#039;s largest shark tank in addition to native marine life displays. If the weather permits, pay a visit to the rooftop.&lt;br&gt;Loch Lomond is an ideal place to start a tour from Glasgow to Fort William along the Western Highland Way through the Argyll countryside. Cameron House, at the south end of the loch, offers the romance of a Scottish country house, as well as a variety of outdoor sports, including a lakeside golf course.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Here is the list of &lt;a href=&quot;https://www.planetware.com/glasgow/loch-lomond-sco-stra-lom.htm&quot;&gt;&lt;i&gt;&lt;strong&gt;&quot;popular things&quot;&lt;/strong&gt;&lt;/i&gt;&lt;/a&gt; to do in Loch Lomond.&lt;/p&gt;', 1, '2019-11-23 16:01:28'),
(15, 24, 9, 'Cruising Loch Ness and the Caledonian Canal', '1647262377_scotland-loch-ness.jpg', '&lt;p&gt;When you think of Loch Ness, you undoubtedly think of the mythological monster that, according to tradition, has lived in this 23-mile-long loch for millennia. Loch Ness is the largest body of water in Scotland&#039;s Great Glen and is part of a waterway that connects Scotland&#039;s east and west coasts. The Caledonian Canal connects it and three other lochs, and you can cruise it on short excursions or on a six-hour journey from one end to the other, passing through canal locks that adjust the different water levels.&lt;/p&gt;&lt;p&gt;The canal and each of the lochs is surrounded by some of the most stunning highland scenery, but none is more picturesque than Loch Ness itself, which boasts the romantic ruins of Urquhart Castle perched high above the water. The 12th-century fortress, which was the subject of numerous ancient mythology, was destroyed by fire 500 years later.&lt;/p&gt;&lt;p&gt;The greatest way to see the castle is from the water, which you may see by boat or while on a Loch Ness cruise. Loch Ness Exhibition at Drumnadrochit Hotel not only fuels the Nessie legend with exhibits and reports of sightings, but it also includes excellent facts on the geological development of Loch Ness and the surrounding area. From Inverness, the castle, the canal, and Loch Ness are all conveniently accessible.&lt;/p&gt;', 1, '2019-11-23 16:01:57'),
(16, 24, 9, 'The Royal Yacht Britannia, Edinburgh', '1647262527_scotland-edinburgh-britannia.jpg', '&lt;p&gt;The Royal Yacht Britannia was a floating royal house for more than 40 years, covering more than 1,000,000 miles around the world. Explore Britannia&#039;s five major decks with this audio tour, stopping by the Bridge, State Apartments and Royal Bedrooms, Crew&#039;s Quarters, and Engine Room to get a glimpse into the lives of the royal family, their guests, and the crew.&lt;/p&gt;&lt;p&gt;You may also see the Rolls-Royce Phantom V that used to travel onboard and visit the Royal Deck Tea Room for tea and biscuits. The Fingal Hotel, which opened in 2019 and offers luxurious rooms in a former lighthouse tender berthed adjacent to the royal boat, is a new addition to the site.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 1, '2019-11-23 16:02:23'),
(17, 24, 9, 'Isle of Skye and the Inner Hebrides', '1647262680_scotland-isle-of-skye.jpg', '&lt;p&gt;Skye, Scotland&#039;s largest inner isle, is particularly popular with birders, ramblers, and environment enthusiasts. Green valleys, caves, lonely glens, sandy beaches, and rushing waterfalls characterize the island&#039;s wild, picturesque mountain scenery&mdash;a remarkable variation for an island that is only 50 miles long and never more than 15 miles wide.&lt;/p&gt;&lt;p&gt;The island still boasts remnants of ancient oak woods, as well as a plethora of animals, including otters, seals, and at least 200 different bird species. Skye is easily accessible because it is connected to the mainland by a bridge. You can also take a ferry to get here.&lt;/p&gt;&lt;p&gt;Islay, Jura, Mull, Raasay, Staffa, and Iona are among the other islands in the Inner Hebrides. Getting to Iona is a little more difficult, requiring two ferry crossings, but it is well worth it. This is known as Scotland&#039;s &quot;Cradle of Christianity,&quot; as it was here in the 6th century that St. Columba arrived from Ireland to spread the gospel.&lt;/p&gt;&lt;p&gt;Its highlights include a 12th-century church, evocative abbey remains, and a carved stone memorial from the 10th century. It also contains the graves of more than 60 Scottish kings, including Macbeth, in Scotland&#039;s oldest Christian cemetery.&lt;/p&gt;', 1, '2019-11-23 16:02:53'),
(18, 24, 9, 'Stirling Castle', '1647262805_scotland-stirling-castle.jpg', '&lt;p&gt;Stirling Castle, the childhood home of Mary Queen of Scots and the palace of James V, is one of the best-preserved Renaissance structures in the UK. While some older structures remain, the castle&#039;s magnificent halls and rooms have been meticulously rebuilt and decorated to resemble those of the 1500s, including precise copies of the tapestries. On weekends, History Hunter events are tailored for young explorers, and costumed interpreters interact with visitors to bring the castle and its history to life.&lt;/p&gt;&lt;p&gt;Stirling is known for the Battle of Bannockburn, in which Robert the Bruce defeated the English invaders in 1314, as well as the Battle of Stirling Bridge, in which the legendary William Wallace achieved a win for Scottish independence. The magnificent Bannockburn Heritage Centre has great displays and exhibits about this significant period.&lt;br&gt;The Wallace Monument, a beautiful 246-step tower with incredible views of the area, is located between Stirling and Bridge of Allan. There are also a number of objects on display that are alleged to have belonged to Wallace himself.&lt;/p&gt;', 1, '2022-03-14 14:00:05'),
(19, 24, 9, 'Kelvingrove Art Gallery and Museum, Glasgow', '1647263092_scotland-glasgow-kelvingrove-art-gallery.jpg', '&lt;p&gt;Since a fire at the Glasgow School of Art destroyed much of Charles Rennie Mackintosh&#039;s work, Kelvingrove Art Gallery and Museum has become the go-to place for fans of the Glasgow Style, a separate element of the Arts &amp;amp; Crafts movement and early twentieth-century Art Nouveau styles.&lt;/p&gt;&lt;p&gt;The Charles Rennie Mackintosh and the Glasgow Style Gallery, which was built and inaugurated shortly before the fire, has several whole Mackintosh rooms as well as pieces by other major artists of the movement.&lt;/p&gt;&lt;p&gt;Salvador Dali&#039;s Christ of St. John of the Cross&amp;nbsp;is one of the museum&#039;s most popular exhibitions, with other renowned treasures such as a Van Gogh painting, Bronze Age artifacts, and jewelry from Arran and Kintyre, a 1944 Mark 21 Spitfire, and a magnificent 1901 organ used for daily free concerts.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;/p&gt;', 1, '2022-03-14 14:04:52'),
(20, 24, 9, 'Golf at St. Andrews', '1647263186_scotland-the-royal-and-ancient-golf-club-of-st-andrews.jpg', '&lt;p&gt;Many inventions have been attributed to the Scots, including the bicycle, postage stamps, telephones, and steam engines. The game of golf, though, is undoubtedly their most enduring innovation.&lt;/p&gt;&lt;p&gt;The Royal and Ancient Golf Club, nestled in historic St. Andrews and just 12 miles southeast of Dundee, is one of committed players&#039; lifetime aspirations. St. Andrews, which was founded in 1750 and is now regarded as golf&#039;s governing body, hosts the British Open on a regular basis at one of its numerous 18-hole courses, the most famous of which being the par-72 Old Course that runs against the rough coast.&lt;/p&gt;&lt;p&gt;Outside on the River Clyde, you can board the &lt;i&gt;&lt;strong&gt;S. S. Glenlee&lt;/strong&gt;&lt;/i&gt;&lt;strong&gt;, a tall ship built in 1896&lt;/strong&gt;. It has the distinction of being the only Clyde-built ship still sailing in Britain.&lt;/p&gt;', 1, '2022-03-14 14:06:26'),
(21, 24, 9, 'Robbie Burns Country: The Burns Heritage Trail', '1647263341_scotland-robbie-burns-heritage-trail.jpg', '&lt;p&gt;At least one or two sites associated with Scotland&#039;s most renowned son, poet Robbie Burns, must be seen on each trip to the nation. The Burns Heritage Trail is a fantastic chance to learn about Burns&#039; life and times while also visiting some of the most beautiful regions of the country.&lt;/p&gt;&lt;p&gt;Begin your journey with the Robert Burns Birthplace Museum in Alloway, on the outskirts of Ayr, where you can see the poet&#039;s magnificently maintained thatched house, where he was born and spent most of his boyhood.&lt;/p&gt;&lt;p&gt;This circle tour goes south after visiting additional Burns-related locations, such as a monument and gardens built to honour his life and time in Ayr, a collection of his most important literature, and the 16th-century Auld Kirk, where his father is buried.&lt;/p&gt;&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;/p&gt;', 1, '2022-03-14 14:09:01'),
(22, 24, 9, 'Edinburgh', '1647264021_blogs_1594815377767-1+Edinburgh2.jpg', '&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;', 1, '2022-03-14 14:20:21'),
(23, 24, 9, 'Ullapool ', '1647264167_blogs_1594818554841-ullapool+2.jpg', '&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;', 1, '2022-03-14 14:22:13'),
(24, 24, 9, 'Aberdeen ', '1647264205_blogs_1594816116070-4+Inverness2.jpg', '&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;', 1, '2022-03-14 14:23:25'),
(25, 24, 9, 'Dornoch', '1647264266_blogs_1594816357624-5+Dornoch+Beach2.jpg', '&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;', 1, '2022-03-14 14:24:26'),
(26, 24, 9, 'Cowal Peninsula', '1647264471_blogs_1594817373887-7+cowal+dunoon2.jpg', '&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;', 1, '2022-03-14 14:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(9, 'Most Visited Places in Scotland', '<ol><li><strong>Aberdeen.</strong></li><li><strong>Dundee.</strong></li><li><strong>Edinburgh.</strong></li><li><strong>Glasgow.</strong></li><li><strong>Inverness.</strong></li><li><strong>Perth.</strong></li><li><strong>Stirling.</strong></li></ol>'),
(10, 'Places to Lodge in Scotland', ''),
(11, 'Places to Eat in Scotland', ''),
(12, 'Places to watch movies in Scotland', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `user` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `user`, `username`, `email`, `password`, `created_at`) VALUES
(21, 1, 0, 'Felix', 'ehimikafelix@gmail.com', 'dub11', '2019-11-23 14:23:30'),
(24, 1, 0, 'Admin', 'Admin@travelstories.com', '$2y$10$pv6dyBIOsS4GPBDyV0rkOuHwHtHxX9sOGGxFgMym6o1c1zHooc4M2', '2022-03-14 09:25:04'),
(25, 0, 0, 'test', 'help@clipdifferent.com', '$2y$10$13eoltkk3AMJx1Kiu4RDwOVShSlMo0NisWAQ5GOmD5m6xfoj1bI0O', '2022-03-14 13:37:47'),
(26, 0, 0, 'as', 'admin@enkoded.com', '$2y$10$Yc/otM3DKGR4Wh7OiJslg.zVUSFmbd/CiAMftvpCUR28GUbV3VcHG', '2022-03-14 14:26:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table posts
--

--
-- Metadata for table topics
--

--
-- Metadata for table users
--

--
-- Metadata for database dang
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
