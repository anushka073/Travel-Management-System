-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2021 at 03:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE tbooking (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    check_in_date DATE NOT NULL,
    end_date DATE NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(10) NOT NULL
);

-- --------------------------------------------------------
CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destination VARCHAR(100) NOT NULL,
    hotel_name VARCHAR(255) NOT NULL,
    number_of_rooms INT NOT NULL,
    number_of_adults INT NOT NULL,
    number_of_children INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    amount_per_night DECIMAL(10, 2) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- --------------------------------------------------------


--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `packagecov` varchar(1000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `htr1` varchar(1000) NOT NULL,
  `htr2` varchar(1000) NOT NULL,
  `htr3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`pname`, `pdescription`, `packagecov`, `pi_main`, `htr1`, `htr2`, `htr3`, `package`) VALUES
('Goa', 'Goa, located on the western coast of India, is renowned for its beautiful beaches, vibrant nightlife, and Portuguese heritage. It is a popular tourist destination known for its relaxed atmosphere, seafood delicacies, and water sports activities. Beyond its beaches, Goa offers a rich cultural tapestry with colonial-era architecture, Hindu temples, and Christian churches coexisting harmoniously. The state is also famous for its music festivals, especially during the peak tourist season from November to February, attracting visitors from around the world seeking sun, sand, and a unique blend of Indian and Western influences.','Package Inclusion: Experience the best of Goa with our 5-day, 4-night tour package. Explore vibrant beaches of North Goa like Calangute and Baga, and discover historical gems such as Aguada Fort. In South Goa, visit the serene Miramar Beach, the Basilica of Bom Jesus, and the Mangueshi Temple. Enjoy leisurely beach time, delve into Goan history with fort and temple visits, and opt for thrilling water sports. Packages start from ₹35,000 per person, covering accommodation, breakfast, local transfers, and sightseeing, ensuring a memorable and hassle-free Goa getaway.', 'images//destination//goa1.jpg','Nearest Railway Station: Madgaon Railway Station (also known as Margao)','Nearest Airport: Goa International Airport (Dabolim Airport)','Nearest Bus Stand: Kadamba Bus Stand, Panaji', 35000),
('Kerala', 'Kerala, located in southern India along the Malabar Coast, is celebrated for its lush greenery, tranquil backwaters, and Ayurvedic treatments. Known as "Gods Own Country," Kerala boasts diverse landscapes ranging from serene beaches along the Arabian Sea to verdant hill stations in the Western Ghats. The state is culturally rich, with vibrant traditions in dance, music, and festivals like Onam. Its cuisine, centered around coconut and spices, is renowned worldwide. Kerala backwaters, a network of interconnected canals, rivers, and lakes, offer a unique way to experience its natural beauty aboard traditional houseboats.','Package Inclusion: Embark on a 6-day, 5-night journey through enchanting landscapes of Kerala. Explore the lush tea plantations of Munnar, cruise the serene backwaters of Alleppey aboard a traditional houseboat, and discover the cultural tapestry of Kochi with visits to Fort Kochi, Mattancherry Palace, and more. Enjoy scenic drives, tranquil houseboat experiences, and cultural sightseeing. Packages start from ₹40,000 per person, covering accommodation, breakfast, local transfers, houseboat stay with full board, and guided sightseeing, promising a memorable exploration beauty and heritage of Kerala.', 'images//destination//kerala1.jpg','Nearest Railway Station: Trivandrum Central Railway Station','Nearest Airport: Trivandrum International Airport','Nearest Bus Stand: Thiruvananthapuram Central Bus Station (KSRTC)' , 40000),
('Mysore', 'Mysore, located in the southern part of Karnataka, India, is renowned for its royal heritage, majestic palaces, and vibrant culture. The city is best known for the Mysore Palace, a splendid example of Indo-Saracenic architecture and a symbol of its royal past. Mysore is also famous for its Dasara festival, a ten-day celebration featuring processions, music, and traditional dance performances. Beyond its historical charm, Mysore is a hub for sandalwood and silk industries, offering visitors a glimpse into traditional craftsmanship.','Package Inclusion: Experience the cultural richness of Mysore with our 3-day, 2-night tour. Discover the grandeur of Mysore Palace, the former royal residence adorned with intricate architecture. Visit Chamundi Hill for panoramic views and spiritual exploration at Chamundeshwari Temple. Enjoy an evening at Brindavan Gardens, renowned for its musical fountain show. Packages start from ₹20,000 per person, covering accommodation, breakfast, local transfers, and guided sightseeing, offering a delightful glimpse into royal heritage and scenic beauty of Mysore.', 'images//destination//mysore1.jpg','Nearest Railway Station: Mysore Junction Railway Station','Nearest Airport: Mysore Airport (Mandakalli Airport)','Nearest Bus Stand: KSRTC Bus Stand, Mysore' , 20000),
('Ladakh', 'Ladakh, nestled in the northernmost part of Indian states of Jammu and Kashmir, is renowned for its breathtaking landscapes of rugged mountains, high-altitude lakes, and Buddhist monasteries. Often referred to as "Little Tibet," Ladakh is characterized by its stark, barren terrain dotted with picturesque villages and ancient gompas (monasteries). The cultural heritage is deeply rooted in Tibetan Buddhism, evident in its vibrant festivals and intricate monastery architecture. Ladakh attracts adventure enthusiasts and spiritual seekers alike, offering opportunities for trekking, mountaineering, and meditation in a truly awe-inspiring setting.','Package Inclusion: Embark on a 7-day adventure through the breathtaking landscapes of Ladakh. Explore Lehs cultural gems like Leh Palace and Shanti Stupa, visit ancient monasteries such as Thiksey and Hemis, and marvel at the surreal beauty of Nubra Valleys sand dunes and Pangong Lake. Enjoy scenic drives amidst the rugged Himalayas and optional trekking opportunities. Packages start from ₹45,000 per person, covering accommodation, breakfast, local transfers, and guided sightseeing, offering an unforgettable journey into Ladakhs natural wonders and Buddhist heritage.', 'images//destination//ladakh1.jpg','Nearest Railway Station: Jammu Tawi Railway Station (Nearest major railway station, around 700 km from Leh)','Nearest Airport: Kushok Bakula Rimpochee Airport, Leh','Nearest Bus Stand: Leh Bus Stand', 45000),
('Agra', 'Agra, located in northern India on the banks of the Yamuna River, is renowned worldwide for being home to the iconic Taj Mahal, a UNESCO World Heritage site and one of the Seven Wonders of the World. This white marble mausoleum, built by Emperor Shah Jahan in memory of his beloved wife Mumtaz Mahal, is the citys crown jewel and a testament to Mughal architectures grandeur. Beyond the Taj Mahal, Agra boasts other significant Mughal-era landmarks like the Agra Fort, showcasing ornate palaces and mosques, and Fatehpur Sikri, an abandoned city with well-preserved structures. Agra is a cultural treasure trove, offering visitors a glimpse into the rich history and architectural brilliance of India.','Package Inclusion: Discover Agras iconic landmarks in a 2-day, 1-night tour. Experience the mesmerizing Taj Mahal at sunrise and explore the majestic Agra Fort. Packages start from ₹15,000 per person, covering accommodation, breakfast, local transfers, and guided sightseeing, offering a memorable immersion into Mughal history and architectural splendor.', 'images//destination//tajmahal1.jpg','Nearest Railway Station: Agra Cantonment Railway Station','Nearest Airport: Pandit Deen Dayal Upadhyay Airport (Kheria Airport)','Nearest Bus Stand: Idgah Bus Stand, Agra', 15000),
('Delhi', 'Delhi, the capital city of India, is a vibrant metropolis blending a rich historical heritage with modernity. It serves as a cultural, political, and commercial hub of the country. Delhi is dotted with ancient monuments such as the Red Fort, Humayuns Tomb, and Qutub Minar, showcasing its Mughal and Sultanate-era architecture. The city also boasts modern marvels like bustling markets, contemporary malls, and a thriving culinary scene offering diverse cuisines from across India. With a bustling energy and a mix of old-world charm and new-age dynamism, Delhi remains a captivating destination for tourists and a symbol cultural diversity of India.','Package Inclusion: Explore vibrant blend of history and modernity of Delhi in a comprehensive tour. Visit iconic landmarks such as the Red Fort, Jama Masjid, and India Gate. Discover the rich cultural heritage at Humayuns Tomb and Qutub Minar. Enjoy bustling markets, diverse cuisines, and a dynamic cityscape. Packages start from ₹25,000 per person for a 3-day, 2-night tour, inclusive of accommodation, breakfast, local transfers, and guided sightseeing, ensuring an enriching Delhi experience.', 'images//destination//india_gate1.jpg','Nearest Railway Station: New Delhi Railway Station','Nearest Airport: Indira Gandhi International Airport','Nearest Bus Stand: Inter State Bus Terminal (ISBT) Kashmere Gate' , 25000),
('Rajasthan', 'Rajasthan, located in northwestern India, is synonymous with royalty, vibrant colors, and a rich cultural heritage. Known as the "Land of Kings," Rajasthan is dotted with majestic palaces, ancient forts, and intricately carved temples, reflecting its royal past and architectural splendor. The states desert landscape, dominated by the Thar Desert, adds to its mystique, offering camel safaris and traditional folk performances. Cities like Jaipur, Udaipur, Jodhpur, and Jaisalmer are famed for their palaces, lakes, forts, and vibrant bazaars selling handicrafts and textiles. Rajasthans warm hospitality, folk music, and traditional cuisine make it a captivating destination, attracting travelers from around the globe.','Package Inclusion: Experience the royal charm and cultural richness of Rajasthan with our 7-day, 6-night tour. Explore Jaipurs majestic Amber Fort and City Palace, marvel at Udaipurs serene Lake Pichola and City Palace, and wander through Jodhpurs majestic Mehrangarh Fort and blue-hued houses. Discover Jaisalmers golden sand dunes and intricately carved havelis. Enjoy camel safaris, folk performances, and traditional Rajasthani cuisine. Packages start from ₹50,000 per person, covering accommodation, breakfast, local transfers, and guided sightseeing, promising an unforgettable journey through Rajasthans vibrant history and landscapes.', 'images//destination//rajasthan1.jpg','Nearest Railway Station: Jaipur Junction Railway Station','Nearest Airport: Jaipur International Airport','Nearest Bus Stand: Sindhi Camp Bus Stand' , 50000),
('Amritsar', 'Amritsar, located in the state of Punjab in northwest India, is a city steeped in Sikh history and culture. The holiest shrine of Sikhism, the Golden Temple (Harmandir Sahib), is situated here, attracting millions of pilgrims and visitors annually. This iconic temple, with its shimmering golden façade surrounded by a sacred pool (Sarovar), is a symbol of peace and spiritual fervor. Beyond the Golden Temple, Amritsar is known for its vibrant bazaars, delectable Punjabi cuisine, and the poignant Jallianwala Bagh memorial, commemorating a tragic massacre during British rule. The rich heritage, warm hospitality, and religious significance of the city make it a compelling destination for travelers exploring cultural tapestry of India.','Package Inclusions: Immerse yourself in the spiritual and cultural heart of Punjab with our 3-day, 2-night tour of Amritsar. Witness the serene beauty of the Golden Temple (Harmandir Sahib), visit the historic Jallianwala Bagh memorial, and explore the vibrant markets of the city. Experience the Wagah Border ceremony, showcasing the border closing ceremony between India and Pakistan. Packages start from ₹18,000 per person, including accommodation, breakfast, local transfers, and guided sightseeing, offering a deeply enriching experience of Amritsars Sikh heritage and poignant history.', 'images//destination//amritsar1.jpg','Nearest Railway Station: Amritsar Junction Railway Station','Nearest Airport: Sri Guru Ram Dass Jee International Airport','Nearest Bus Stand: Amritsar Bus Stand (ISBT)', 18000),
('Srinagar', 'Srinagar, located in the picturesque Kashmir Valley in northern India, is renowned for its stunning natural beauty, serene lakes, and Mughal gardens. The city is famous for Dal Lake, where houseboats and shikaras (traditional wooden boats) offer a unique way to experience its tranquil waters surrounded by snow-capped mountains. Srinagars Mughal gardens, such as Shalimar Bagh and Nishat Bagh, showcase terraced lawns, vibrant flowerbeds, and historic pavilions. The citys rich cultural heritage, influenced by Hindu, Buddhist, and Islamic traditions, adds to its charm, making Srinagar a popular destination for nature lovers and cultural enthusiasts alike.','Package Inclusion: Discover the enchanting beauty of Srinagar with our 4-day, 3-night tour. Explore the serene Dal Lake with a Shikara ride, visit the Mughal gardens of Shalimar Bagh and Nishat Bagh, and marvel at the ancient architecture of Shankaracharya Temple. Experience the vibrant local markets and enjoy traditional Kashmiri cuisine. Packages start from ₹30,000 per person, including accommodation, breakfast, local transfers, and guided sightseeing, offering a peaceful retreat amidst Srinagars natural splendor and cultural heritage.', 'images//destination//srinagar1.jpg','Nearest Railway Station: Jammu Tawi Railway Station (around 290 km from Srinagar)','Nearest Airport: Sheikh ul-Alam International Airport (Srinagar Airport)','Nearest Bus Stand: Srinagar Bus Stand (TRC Bus Stand)', 30000),
('Manali', 'Manali, nestled in the Himalayas of Himachal Pradesh in northern India, is a popular hill station known for its scenic beauty and adventure activities. Surrounded by snow-capped mountains and lush forests, Manali offers stunning vistas, especially during the summer and winter seasons. The Beas River flows through the town, adding to its charm. Manali is a haven for adventure enthusiasts, offering opportunities for trekking, skiing, paragliding, and rafting. It is also a gateway to the nearby Solang Valley and Rohtang Pass, known for their breathtaking views and adventure sports. With its pleasant weather, picturesque landscapes, and cultural diversity, Manali attracts tourists seeking both relaxation and adrenaline-pumping experiences.','Package Inclusion: Embark on a 4-day, 3-night adventure in the scenic landscapes of Manali. Explore the lush greenery of Solang Valley and Rohtang Pass, known for breathtaking views and adventure activities. Visit Hadimba Devi Temple, Vashisht Hot Water Springs, and enjoy leisurely walks along the Mall Road. Packages start from ₹25,000 per person, covering accommodation, breakfast, local transfers, and guided sightseeing, offering a perfect blend of relaxation and adventure in the picturesque town of Manali.', 'images//destination//manali1.jpg','Nearest Railway Station: Joginder Nagar Railway Station (approx. 163 km from Manali)','Nearest Airport: Kullu-Manali Airport (Bhuntar Airport)','Nearest Bus Stand: Manali Bus Stand', 25000);



-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `tbooking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;


--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
