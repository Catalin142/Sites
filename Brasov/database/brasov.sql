-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 10:05 AM
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
-- Database: `brasov`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `nume` varchar(20) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`nume`, `link`) VALUES
('Aro', 'https://aro-palace.ro/'),
('AveLux', 'http://www.hotelavelux.ro/ro/'),
('Belfort', 'https://www.belfort.ro/en/'),
('Belvedere', 'https://www.restaurantbelvedere.ro/'),
('Rainer', 'http://www.hotelrainer.ro/'),
('Safrano', 'https://hotelsafrano.ro/'),
('TowerOne', 'https://www.hptowerone.ro/?lang=en'),
('Wagner', 'https://www.casa-wagner.com/ro/home-brasov/'),
('Wolkendorf', 'https://wolkendorfhotel.ro/en/');

-- --------------------------------------------------------

--
-- Table structure for table `locatii`
--

CREATE TABLE `locatii` (
  `id` varchar(40) NOT NULL,
  `informatii` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locatii`
--

INSERT INTO `locatii` (`id`, `informatii`) VALUES
('bastionul_fierarilor', 'Aflat in coltul de nord-vest al cetatii Brasov, Bastionul Fierarilor exista deja la 1521. Prima atestare documentara este datata insa opt ani mai tarziu, in 1529. Avand forma pentagonala, bastionul este construit pe trei nivele, cu guri pentru pacura si goluri de tragere in care se puteau instala si tunuri de calibru mic (bombarde).\r\nPe acest loc se afla initial un turn, mentionat prima oara in 1521, distrus de inundatia din 1526, apoi refacut. La 30 iulie 1667, o alta inundatie distruge fortificatiile din acest loc, astfel ca in 1668 sunt finalizate lucrarile Bastionului Fierarilor in forma sa de astazi.\r\nMarele incendiu din 1689 a transformat bastionul intr-o ruina pentru urmatorii 20 de ani.\r\n'),
('bastionul_tesatorilor', 'Turnul aparat si intretinut de bresla tesatorilor de in a fost construit in doua etape, intre anii 1421 – 1436 si 1570 – 1573.\r\nIn prima etapa, au fost construite primele doua nivele dintre cele trei galerii de lupta. Primul nivel a fost amenajat cu guri mari de tragere pentru folosirea armele de foc de calibru mare, bombarde si archebuze, precum si cu gauri pentru aruncarea materialelor incendiare.\r\nGaleriile superioare, construite intre anii 1570 – 1573, erau destinate armelor de calibru mic, care puteau fi folosite prin gurile de tragere inguste, de forma circulara, prezente pe tot parcursul traseului galeriilor de tragere. Au fost ridicate doua turnuri de veghe destinate corpului de garda care supraveghea orasul atat din punct de vedere militar, cat si din perspectiva observarii unor eventuale incendii.\r\nConstructia de forma hexagonala inchide o suprafata de 1616 m², strajuita de ziduri care, in unele segmente, masoara 4,30 m la baza. Intrarea in incinta se facea din suisul strazii Castelului, printr-o poarta culisanta, intarita cu turn si un gang lung de aprox. 5 metri.'),
('biserica_neagra', 'Biserica Neagra este una dintre cele mai reprezentative constructii de factura gotica din tara noastra, ridicarea ei fiind realizata in secolele XIV-XV. Este considerata cea mai mare biserica din Romania, fiind si cel mai mare lacas de cult in stil gotic din sud-estul Europei, primind, la momentul inaugurarii, titlul de „Cea mai mare biserica dintre Viena si Constantinopol”, adica de la de la domul Sf. Stefan din Viena pana la Hagia Sophia din actualul Istanbul.\r\nBiserica Neagra este unul dintre simbolurile orasului Brasov, este sediul parohiei Bisericii Evanghelice C.A. din Romania si detine cateva recorduri remarcabile: aici se afla Orga Buchholz, construita in perioada romantismului timpuriu, cea mai mare orga mecanica din Romania, al carei sunet exceptional atrage in fiecare an organisti de prestigiu din tara si strainatate; tot aici se afla a doua cea mai mare colectie de covoare orientale din Europa, datand din secolele XV-XVI, iar turnul bisericii adaposteste cel mai mare clopot mobil din Romania, cu o greutate de circa 6.000 kg.\r\nIn urmatorii 150 de ani, constructia a fost afectata de mai multe cutremure majore, fiind necesare ample lucrari de restaurare, zadarnicite insa de marele incendiu din data de 21 aprilie 1689, care a cuprins si biserica parohiala, distrugand acoperisul si mobilierul din interior. Pentru o buna perioada de timp, biserica a ramas in stadiu de ruina, cu acoperisul si zidurile inegrite de foc si fum, fapt care a dat denumirea populara a lacasului – „Biserica Neagra”, nume care peste mai mult timp avea sa fie oficializat.'),
('casa_hirscher', 'Casa Hirscher, cunoscuta si sub numele de “Casa de negot”, a fost ridicata intre anii 1539-1545. Apollonia Hirscher, sotia fostului jude al orasului Brasov , Lukas Hirscher, a construit pe cheltuiala sa aceasta casa ca omagiu adus memoriei sotului ei, “mic de statura, dar mare de intelepciune”\r\nConceputa in stilul vechilor hale occidentale, cu numeroase camere si pivnite boltite pentru marfurile aduse la targurile saptamanale care se tineau in “piata”, inconjurata de “targul graurului”, “targul straielor” sau “targul florilor”, cu pilastrii si arcade intre care isi etalau produsele iscusitii mesteri ai celor 50 de bresle brasovene , cladirea a fost secole de-a randul simbolul unei vieti economice infloritoare, la raspantia marilor drumuri europene. '),
('colegiul_national_unirea', 'Colegiul Național „Unirea” din Brașov este unul dintre cele mai prestigioase licee din județul Brașov.\r\nÎn decursul istoriei sale, actuala instituție a avut mai multe denumiri printre care: Școala Civilă de Fete de Stat, Școala Superioară de Fete, Liceul \"Principesa Elena\", Liceul de Fete. În consiliul profesoral extraordinar ținut în ziua de 20 ianuarie 1959, sărbătorindu-se centenarul Unirii Principatelor Române, s-a decis în unanimitate ca liceul să poarte numele de \"Unirea\". \r\nTradiția înființării Școlii Civile de Fete în anul 1897 își găsește originea în apariția institutelor de fete din oraș în cea de-a doua jumătate a secolului al XIX-lea. Conduse de institutoare - precum Philippine Barrout, Marie Joanelli sau Henriette Vautier - venite din spațiul francofon acestea răspund unei cerințe crescânde a societății brașovene de a se ralia programelor de învățământ din Europa occidentală. Dintre acestea, Institutul Vautier înființat în anul 1854 poate fi considerat predecesorul de drept al Școlii Civile de Fete, atât prin longevitatatea sa - încheiându-și activitatea în 1899 - cât și prin curriculumul oferit - limba franceză fiind principala materie de studiu alături de limba germană, maghiară și română, pian, caligrafie, desen, croitorie, istorie, geografie, matematică și religie.'),
('muzeul_casa_muresenilor', '\'Casa Muresenilor\'\' s-a infiintat in anul 1968, ca urmare a donatiei facute de urmasii familiei Muresianu. Ei puneau astfel in opera testamentul cultural al lui Iacob Muresianu, oferind statului roman, in vederea organizarii unui muzeu, spatiul necesar (o cladire construita in secolul XVI in stil neoclasic, declarata monument istoric), o foarte valoroasa colectie de mobilier, pictura, sculptura si mai ales, o arhiva de o inestimabila valoare culturala, numarand peste 25.000 de documente. Muzeul este consacrat memoriei mai multor membri ai acestei familii cu mari merite in viata culturala si politica a vremii lor. Dupa ce a fost subordonat, o perioada, Muzeului Judetean de Istorie Brasov, incepand din 1998 a devenit muzeu de sine statator. Muzeul ilustreaza in special viata si activitatea poetului Andrei Muresianu, autorul imnului de stat al Romaniei, a publicistului Iacob Muresianu (1812 - 1887), a fiului sau Aurel Muresianu (1847 - 1909), gazetar si publicist, continuatorul tatalui la conducerea \'\'Gazetei de Transilvania\'\', si a compozitorului Iacob Muresianu jr. Cele patru incaperi ale muzeului cuprind exponate ce ilustreaza viata culturala a Brasovului din a doua jumatate a secolului al XIX-lea.'),
('muzeul_de_arta', 'Muzeul de Arta Brasov este adapostit de o cladire conceputa in stil neobaroc, realizata dupa proiectul lui M. Wagner la 1902 si cuprinde o galerie nationala de pictura si sculptura in cele sase sali de la etajul cladirii si o expozitie de arta decorativa.\r\nGaleria nationala cuprinde piese de anonimi (secolul al XVIII-lea), pasoptisti, Theodor Aman, Nicolae Grigorescu (36 piese, a doua colectie din tara, din toate perioadele de creatie), Ion Andreescu, Stefan Luchian, Theodor Pallady, Stefan Popescu, Nicolae Tonitza, Octav Bancila, Iosif Iser, Ion Tuculescu, Francisc Sirato, Alexandru Ciucurencu, Jean Alexandru Steriadi, Nicolae Darascu, Valeriu Maximilian precum si de contemporani din Bucuresti si Brasov. Sculptura este semnata de Paul Dubois, Ion Irimescu, Dimitrie Paciurea etc.\r\nPrin activitatea sa, muzeul se distinge ca o institutie de prestigiu, in special prin expozitii cu caracter national si international organizate in ultimii ani, cum ar fi Salvador Dali, Francisco de Goya, Max Ernst etc. precum si prin participarea cu lucrari la expozitii internationale importante. '),
('poarta_ecaterinei', 'Poarta Ecaterinei isi incepe povestea in anul 1559 cand scheienii o construiesc pentru a putea intra in cetate. In decursul veacurilor a fost cunoscuta si sub denumirea de „Porta Superior”, „Porta Corpus Christi” sau „Porta Sancte Katharinae”. A fost construita pe fundatia fostei porti de lemn numita „Poarta Sfantului Duh”, atestata documentar in anul 1522, dar distrusa in urma inundatiei din 24 august 1526.\r\nSituata in partea vestica a vechii cetati medievale, langa Poarta Schei, Poarta Ecaterina este unicul vestigiu din oras care si-a pastrat aspectul original pana in prezent. Numele acestui monument a fost imprumutat de la manastirea de calugarite ce se afla acolo, pe strada Caterina.'),
('poarta_schei', 'Datand inca din anul 1828, Poarta Schei deschide drumul spre batranul cartier Schei, oglindind tabloul pitoresc al orasului medieval.\r\nOrasul Brasov pastreaza cu mandrie imaginea cetatii de odinioara, prin case istorice medievale, turnuri, bastione si porti ale fortificatiilor. Cetatea Brasovului a avut initial patru porti: Poarta Ecaterinei, Poarta Vamii (sau a Manastirii), Poarta Principala si Poarta Strazii Negre. Dintre acestea, intrarea care s-a pastrat pana in zilele noastre este Poarta Ecaterinei, datand inca din secolul al XVI-lea. Din motive legate de economie si pragmatism, localnicii au demolat si au reconstruit de-a lungul timpului intrarile, pentru a beneficia de o mai buna organizare a orasului. Constructiile ulterioare au fost: Poarta Schei, Poarta Targul Cailor si Poarta Vamii, demolata ulterior.'),
('prima_scoala_romaneasca', 'In interiorul curtii Bisericii Sfantul Nicolae din cartierul istoric Scheii Brasovului, care incepe chiar de la portile Ecaterina si Schei ale Cetatii Brasovului se afla Prima Scoala Romaneasca, edificiu plin de istorie si cultura.\r\nAcesta este locul in care s-au tinut primele cursuri de limba romana, in 1583, iar diaconul Coresi si-a putut tipari primele carti in limba romana, in Transilvania. Actuala cladire dateaza din anul 1760, fiind declarata monument istoric, alaturi de intreg ansamblul arhitectural.\r\nCele aproximativ 4.000 de carti vechi si peste 30.000 de documente, precum si numeroasele obiecte muzeale stau astazi straja la temelia istoriei, oferind tuturor posibilitatea de cunoastere a adevarului care se derula istoric pe aceste meleaguri.'),
('strada_sforii', 'Intre strazile Cerbului si Poarta Schei exista o strada ca o sfoara, lunga de aproximativ 80 m si lata de pana la 1,35 m. Aceasta a fost restaurata in 2003, pentru a arata exact ca acum 100 de ani. Au avut loc modificari majore asupra pavajului si peretii cladirilor au fost renovati. Stalpii de iluminat au fost schimbati cu unii cu aspect medieval.\r\nStraduta ingusta intre strazile Cerbului si Poarta Schei a carei existenta este atestata in documentele din secolul XVII a fost un simplu coridor de trecere intre Poarta Schei si Piata Sfatului. Strada a fost un punct de sprijin pentru pompieri, facand astfel accesul mai usor in caz de incendiu. Straduta de 80 de metrii este parcursa de toti turistii care ajung in oras. Este locul de intalnire a indragostitilor si nu in ultimul rand, o tema provocatoare pentru fotografi.'),
('tampa', 'Muntele Tampa apartine de masivul Postavaru si o mare parte din el este instituit ca rezervatie naturala si arie protejata la nivel national. Traseul pana in varful Tampei este considerat usor de catre excursionisti, putand fi „escaladat” chiar si fara echipament special. Din fericire pentru cei dornici doar sa se bucure de peisaj, exista o telecabina care ii poate transporta de la baza pana in varf.\r\nCu toate acestea, muntele Tampa nu este doar un simbol natural al orasului, ci si unul incarcat de legende care circula si in ziua de astazi. Aceste legende mi-a starnit si mie curiozitatea\r\nSe spune ca sub Tampa s-ar afla o pestera de mari dimensiuni care gazduieste un lac urias. Unii spun ca este un lac sarat, ramasita a unei mari preistorice, altii spun ca este un lac de apa dulce, ca dovada fiind izvoarele de apa dulce de la baza Tampei, partial secate in prezent. In cazul in care s-ar construi tunele pe sub Tampa, asa cum fusese o discutie a autoritatilor în anii 1940, acest lac ar putea inunda centrul orasului.\r\nPana in prezent, desi au fost facute studii, existenta lacului sau a pesterii nu a fost dovedita stiintific.'),
('turnul_alb', 'Turnul Alb situat pe o stanca a fost construit in anul 1494 si are forma unui semicerc inchis, cu partea dreapta orientata spre oras. Constructia avea 5 nivele iar inaltimea varia intre 18-20 metrii in functie de denivelarile solului. Denumirea de alb provine de la aspectul lui, fiind tencuit si varuit in alb. Partea de sus a turnului este dotata cu creneluri iar pe peretii laterali se vad si astazi niste jgheaburi iesite in consola de unde ploua cu pietre peste atacatori. Intrarea in turn fiind la mare inaltime accesul era posibil doar prin intermediul unor scari mobile. Marele incendiu din 1689 a cuprins si turnul alb, urmarile lui au fost inlaturate doar in 1723, cand turnul a fost restaurat. In conceptia de aparare a orasului acest turn era aparat de breasla cositorarilor si aramarilor.'),
('turnul_negru', 'Turnul Negru este turnul inalt de 11 metri, turn care a primit in 1995 un mandru acoperis de sticla. Construit in secolul XIV, turnul a avut de facut fata unui numar de doua incendii cauzate din pricina trasnetelor, iar datorita primului incediu (1599) a primit si numele de Turnul Negru, desi astazi, dupa ultima renovare, turnul este destul de.. alb.\r\nn turn se putea intra pe o poarta amplasata la inaltimea de 2 metri, iar legatura cu cetatea Brasovului se mentinea printr-un pod mobil si printr-un tunel subteran. Rolul turnului cu forma sa patratica era acela de a impiedica inamicii sa se apropie de zidurile orasului, prevazut fiind cu doua guri de tragere pe fiecare latura.Proptiti startegic stateau paznicii care alertau populatia atunci cand se apropia vreun picior cotropitor sau vreun foc parjolitor. Ultima-i utilizare a fost cea din 1756 cand au stat, in perioada teribilei epidemii de ciuma, cei ce vegheau asupra cordonului sanitar din preajma orasului.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`nume`);

--
-- Indexes for table `locatii`
--
ALTER TABLE `locatii`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
