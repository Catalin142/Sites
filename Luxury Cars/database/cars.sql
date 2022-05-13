-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 02:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `nume` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `putere` int(11) NOT NULL,
  `viteza` int(11) NOT NULL,
  `accelerare` float NOT NULL,
  `masa` int(11) NOT NULL,
  `consum` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`nume`, `id`, `info`, `putere`, `viteza`, `accelerare`, `masa`, `consum`) VALUES
('Audi A8', 'audi_a8', 'Impresionând cu personalitatea aparte a designului său și cu tehnologiile inovatoare de ultimă oră, Audi A8 vă oferă experiențe confortabile și fascinante de călătorie. De fiecare dată din nou.\r\nLa interior găsiți materiale rafinate și finisaje precise, confirmare a caracterului premium al acestei limuzine de lux. Scaunele Confort-Contur Individual opționale pentru locurile din față și scaunele din spate cu tetiere Confort opționale, dar și întreaga ambianță generală vă îmbie să călătoriți de fiecare dată la clasa de lux. ', 350, 250, 5.7, 1980, 8.4),
('Audi e-tron', 'audi_etron', 'Savurați experiența fascinantă a mobilității electrice: Audi e-tron. Putere de până la 300 kW (408 CP) și autonomie de până la 446 kilometri. Primul nostru SUV pur electric este însoțitorul dumneavoastră sportiv, sigur și fiabil în cotidian, fiind pregătit deja pentru o nouă eră.\r\nAtât în excursiile de weekend, cât și la drum lung sau în concediu: Audi e-tron își va demonstra caracterul practic în toate situațiile, nu în ultimul rând pentru că oferă o autonomie mare, de până la 441 de kilometri. Această autonomie mare se datorează și bateriei avansate de înaltă tensiune, precum și sistemului inteligent de recuperare a energiei. ', 230, 190, 6.8, 2435, 22.4),
('Audi e-tron GT', 'audi_etron_gt', 'Intenția de reinterpretare a însuși automobilului se arată și în designul purist, inspirat din performanțele aerodinamice avansate. Luxul progresist devine creator de impulsuri și crește intensitatea emoțională extraordinară a conducerii acestui automobil. \r\nBateria litiu-ion subțire este integrată în podeaua automobilului și oferă performanțe avansate extraordinare, atât în privința încărcării, cât și a propulsiei. Astfel, în combinație cu sistemul de recuperare, autonomia se ridică la 472 km, conform măsurătorilor în baza procedurii WLTP.', 598, 266, 4.1, 2200, 90),
('Bentley Bentayga', 'bentley_bentayga', 'Bentley Bentayga este un crossover de lux cu cinci uși de dimensiuni medii, cu motor frontal, cu tracțiune integrală, comercializat de Bentley, începând cu anul model 2016. Caroseria sa este fabricată la uzina Volkswagen Zwickau-Mosel din Germania, apoi vopsită de Paintbox Editions în Banbury, Anglia, și în cele din urmă asamblate la fabrica Bentley din Crewe, Anglia. \r\nLa nivel estetic, designerii pregătesc mici modificări. SUV-ul va integra un spoiler frontal restilizat, prize de aer modificate, un difuzor spate nou, faruri mai mari și aripi mai late.\r\nDar la finalul anului trecut, oficialii Bentley au decis să elimine din gamă această motorizare diesel.', 608, 301, 3.7, 2440, 12.8),
('Bentley Continental GT', 'bentley_continental_gt', 'Designul noii generații este inspirat din conceptul EXP 10 Speed 6, ampatamentul a crescut 110 milimetri, iar platforma MSB o regăsim și pe noul Panamera.\r\nInteriorul noului model britanic îmbină tehnologia de ultimă oră cu materiale rafinate. Instrumentarul de bord este complet digital, iar consola centrală integrează un ecran tactil de 12.3 inch', 635, 333, 3.7, 2335, 2.1),
('BMW Seria 7 Sedan', 'bmw_seria7_sedan', 'Bucură-te de performanţe uimitoare, savurează fiecare moment. BMW Seria 7 Sedan înseamnă prezenţă sigură pe sine, performanţă excepţională şi confort maxim. Iar noul BMW 750Li, propulsat de un motor pe benzină TwinPower Turbo cu 8 cilindri de ultimă generaţie şi dotat cu xDrive în echiparea standard, este creat pentru poziţia de lider. Emoţia designului elegant împreună cu atmosfera specială de bunăstare din interior datorită calităţii supreme a detaliilor, opţiunilor individuale de stil şi inovaţiilor tehnologice îl transformă în simbolul clasei de lux BMW. Fineţea întâlneşte exclusivitatea. Luxul întâlneşte performanţa.', 394, 250, 5, 2075, 1.8),
('BMW X4 M', 'bmw_x4m', 'Rebeli fermecători: automobilele BMW X4 M combină performanţele spectaculoase şi exclusivitatea unui automobil M cu conceptul progresiv al unui BMW X4. Alege una dintre cele patru versiuni de sports activity coupé (SAC).\r\n\r\nNoul BMW X4 M se trage din fraţii lui din sporturile cu motor şi oferă o dinamică de condus la un alt nivel. BMW X4 M40i şi BMW X4 M40d sunt în formă maximă pe orice tip de traseu şi combină excelent performanţele ridicate, confortul şi eficienţa.', 375, 250, 3.8, 1875, 10.5),
('BMW Z4', 'bmw_z4', 'Plat, cu top-ul deschis şi creat pentru performanţă: Cu partea frontală lată, roţile mari, capota alungită şi multe detalii inspirate de motorsport, BMW Z4 M40i Roadster se dovedeşte a accelera pulsul dintr-o privire. Pe şosea, acesta îşi eliberează caracterul sportiv până în cel mai mic detaliu: un roadster care transformă dorinţa de libertate în plăcere pură de a conduce.', 250, 220, 4, 1405, 7.9),
('Maserati MC20', 'maserati_mc20', 'MC20 subliniază caracterul sportiv al noului model: MC este acronimul pentru Maserati Corse, iar 20 se referă la anul 2020, care marchează începutul unei noi faze în istoria Maserati.\r\nPrima mașină de curse care a purtat simbolul Tridentului a fost Tipo 26, unde numărul indica anul fabricației și, în același mod, MC20 va fi prima mașină născută în noua Eră a producătorului din Modena.\r\nMașina super sport reprezintă evoluția naturală a modelului de mare succes MC12, mașină care în 2004 a marcat revenirea Maserati după 37 de ani.\r\n', 630, 325, 2.9, 1500, 11.6),
('Maserati Quattroporte', 'maserati_quattroporte', 'Cel mai rapid, cel mai rafinat. Puternica imagine iconică a lui Quattroporte ridică călătoriile tale de lux la niveluri de performanță fără precedent. Numai pentru cei care aparțin benzii rapide a exclusivității.\r\nCompoziția inconfundabilă a sunetului motorului V8 de sub capota lui Quattroporte Trofeo subliniază magnitudinea călătoriei tale. Umple arena cu nota de motor a urletului tău triumfător.\r\n', 580, 326, 4.5, 1860, 18.1),
('Mercedes Benz Clasa C', 'mercedes_benz_cclass', 'Noul model Clasa C Limuzină întruchipează dezvoltarea luxului modern. Inovațiile își găsesc locul în interiorul sportiv al modelului Clasa C. Un ecran tactil vertical de 30,2 cm (11,9 inch) transformă consola centrală în centrul digital al habitaclului. Elemente decorative moderne continuă exprimarea limbajului contemporan al designului.\r\nLiniile reduse întâlnesc suprafețe sculptate minuțios. Rezultatul: un limbaj minimalist al formelor, ce reunește luxul și sportivitatea ca și cum ar fi cel mai natural lucru din lume. Proporțiile dinamice, un ampatament extins și ecartamentul lat oferă noului model Clasa C dorința clară de a merge înainte.', 272, 231, 8.6, 1540, 4.9),
('Mercedes Benz Clasa S', 'mercedes_benz_sclass', 'Noul model Clasa S se concentrează asupra elementelor esențiale: tehnologii unice pentru confort și siguranță pe care vă puteți baza. Indiferent că sunteți conducător auto sau pasager pe locurile din spate. Conceptul unic de operare MBUX oferă, în combinație cu materialele premium, o experiență de călătorie cu adevărat deosebită.\r\nNoul model Clasa S se concentrează asupra elementelor esențiale: tehnologii unice pentru confort și siguranță pe care vă puteți baza. Indiferent că sunteți conducător auto sau pasager pe locurile din spate. Conceptul unic de operare MBUX oferă, în combinație cu materialele premium, o experiență de călătorie cu adevărat deosebită.', 630, 250, 4.5, 2175, 13.4),
('Range Rover SE', 'range_rover_se', 'Cu un design mai sportiv si o silueta care inspira forta, modelul Range Rover Sport este proiectat pentru a face senzatie. Mai simplu si mai dinamic, inspira modernitate din orice unghi - de la grila noua Range Rover Sport, la prizele de aer de pe capota reproiectate si la optiunile pentru jante, sportive si rafinate.\r\nSistemul multimedia Touch Pro Duo integreaza perfect 2 ecrane tactile de inalta definitie, cu diagonala de 10”. Utilizati Touch Pro Duo impreuna cu afisajul color de pe parbriz si ecranul interactiv al soferului, pentru a vedea si interactiona simultan cu mai multe tehnologii. ', 250, 206, 8.3, 3350, 13.8),
('Range Rover Velar', 'range_rover_velar', 'O parte din fata rafinata, puternica, si o centura continua, eleganta a caroseriei, culminand cu partea din spate plonjanta, cabrata.\r\nPrin imbinarea luxului contemporan cu rafinamentul specific, veti savura fiecare calatorie la bordul modelului Range Rover Velar.\r\nAveti la dispozitie o gama diversificata de motoare Ingenium, care asigura atat putere, cat si placerea de a conduce. Toate modelele sunt echipate cu sistem stop/start si cu o gama de motorizari diesel si pe benzina ce includ tehnologie hibrida cu asistenta medie (MHEV).', 600, 250, 5.5, 1813, 10),
('Rolls Royce Cullian', 'rolls_royce_cullian', 'Rolls-Royce Cullinan are o suspensie pneumatică cu reglare automată și poate să traverseze un vad de apă adânc de până la 54 de centimetri. Sistemul de tracțiune integrală are mai multe moduri de rulare, între care comută automat pentru a asigura aderență în orice condiții și a asigura pe cât posibil contactul celor patru roți cu solul.\r\nO altă dotare interesantă a lui Cullinan este o funcție integrată în hayon care facilitează un picnic ad-hoc prin extragerea a două scaune și a unei mese dintr-un spațiu special creat. Rolls-Royce Cullinan poate fi comandat atât cu o banchetă spate convențională și fracționabilă, cât și cu două scaune spate individuale, după preferințele clientului.', 571, 250, 5.2, 2660, 15),
('Rolls Royce Ghost', 'rolls_royce_ghost', 'Noul Ghost este perfect prin simplitatea sa, dar conceperea acestui mediu pur a fost una din cele mai mari provocări din istoria mărcii. Într-adevăr, noul Ghost este automobilul cu cea mai avansată tehnologie pe care l-a produs vreodată Rolls-Royce.\r\nDesignerii, inginerii și mecanicii mărcii au cerut libertatea de a crea o personalitate foarte distinctă pentru noul Ghost. Ei au avut mână liberă să creeze un produs care să reprezinte luxul autentic, fără constrângerile unei platforme utilizate pentru fabricarea în serie mare a unor automobile mai puțin impresionante. De unde și arhitectura specifică Rolls-Royce, pe structură din aluminiu.', 571, 250, 4.8, 2490, 15.2),
('Rolls Royce Phantom', 'rolls_royce_phantom', 'Noul Rolls-Royce Phantom oferă o interpretare contemporană de design a esenţei Rolls-Royce. De asemenea, noul model aduce o evoluție spectaculoasă în programul Bespoke, prin conceptul \"The Gallery\". Un nou concept fără precedent în ceea ce priveşte luxul, \"The Gallery\" reinterpretează tabloul de bord al automobilului pentru prima dată în 100 de ani. Proprietarii vor putea să comande o operă de artă cu adevărat unică, în universul extins al conceptului \"The Gallery\", ce se va regăsi în spatele unui singur panou de sticlă în interiorul noului Phantom.', 571, 250, 5.4, 2610, 14),
('Tesla Model S', 'tesla_model_s', 'Tesla Model S este prima masina electrica fabricata de cei de la Tesla vanduta pe tot globul\r\nAre un design modern, dominat de cele 2 ecrane mari LCD: unul pe centru si unul in fata volanului\r\nCel mai spectaculos este pilotul automat care poate conduce singur masina\r\nVa puteti incarca Tesla Model S cu un incarcator type 2 acasa si/sau la serviciu si la statii de incarcare Tesla Supercharger direct cu cablul din dotarea statiilor. Sau de la statii de incarcare DC folosind un adaptor CHADEMO. Masina suporta teoretic incarcare de pana la 145kw. ', 1100, 322, 2.1, 2162, 18.1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
