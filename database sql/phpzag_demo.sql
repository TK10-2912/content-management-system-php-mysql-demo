-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 10:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpzag_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_category`
--

CREATE TABLE `cms_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cms_category`
--

INSERT INTO `cms_category` (`id`, `name`) VALUES
(1, 'PHP'),
(2, 'jQuery'),
(3, 'JavaScript'),
(5, 'HTML'),
(6, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts`
--

CREATE TABLE `cms_posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` enum('published','draft','archived','') NOT NULL DEFAULT 'published',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cms_posts`
--

INSERT INTO `cms_posts` (`id`, `title`, `message`, `category_id`, `userid`, `status`, `created`, `updated`) VALUES
(1, 'What is PHP?', 'PHP  (recursive acronym for PHP: Hypertext Preprocessor) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML. \r\n\r\nThe standard PHP interpreter, powered by the Zend Engine, is free software released under the PHP License. PHP has been widely ported and can be deployed on most web servers on almost every operating system and platform, free of charge.[10]\r\n\r\nThe PHP language evolved without a written formal specification or standard until 2014, with the original implementation acting as the de facto standard which other implementations aimed to follow. Since 2014, work has gone on to create a formal PHP specification.[11]\r\n\r\nAs of September 2019, over 60% of sites on the web using PHP are still on discontinued/&quot;EOLed&quot;[12] version 5.6 or older;[13] versions prior to 7.1 are no longer officially supported by The PHP Development Team,[14] but security support is provided by third parties, such as Debian.\r\n\r\nPHP development began in 1994 when Rasmus Lerdorf wrote several Common Gateway Interface (CGI) programs in C,[16][17][18] which he used to maintain his personal homepage. He extended them to work with web forms and to communicate with databases, and called this implementation &quot;Personal Home Page/Forms Interpreter&quot; or PHP/FI.\r\n\r\nPHP/FI could be used to build simple, dynamic web applications. To accelerate bug reporting and improve the code, Lerdorf initially announced the release of PHP/FI as &quot;Personal Home Page Tools (PHP Tools) version 1.0&quot; on the Usenet discussion group comp.infosystems.www.authoring.cgi on June 8, 1995.[19][20] This release already had the basic functionality that PHP has today. This included Perl-like variables, form handling, and the ability to embed HTML. The syntax resembled that of Perl, but was simpler, more limited and less consistent.\r\n\r\nDuring 2014 and 2015, a new major PHP version was developed, which was numbered PHP 7. The numbering of this version involved some debate.[46] While the PHP 6 Unicode experiment had never been released, several articles and book titles referenced the PHP 6 name, which might have caused confusion if a new release were to reuse the name.[47] After a vote, the name PHP 7 was chosen.[48]\r\n\r\nThe foundation of PHP 7 is a PHP branch that was originally dubbed PHP next generation (phpng). It was authored by Dmitry Stogov, Xinchen Hui and Nikita Popov,[49] and aimed to optimize PHP performance by refactoring the Zend Engine while retaining near-complete language compatibility.[50] As of 14 July 2014, WordPress-based benchmarks, which served as the main benchmark suite for the phpng project, showed an almost 100% increase in performance. Changes from phpng are also expected to make it easier to improve performance in the future, as more compact data structures and other changes are seen as better suited for a successful migration to a just-in-time (JIT) compiler.[51] Because of the significant changes, the reworked Zend Engine is called Zend Engine 3, succeeding Zend Engine 2 used in PHP 5.[52]\r\n\r\nBecause of major internal changes in phpng it must receive a new major version number of PHP, rather than a minor PHP 5 release, according to PHP\'s release process.[53] Major versions of PHP are allowed to break backward-compatibility of code and therefore PHP 7 presented an opportunity for other improvements beyond phpng that require backward-compatibility breaks. In particular, it involved the following changes:\r\n\r\nSource: https://en.wikipedia.org/wiki/PHP\r\n', 1, 1, 'published', '2019-11-30 10:07:15', '2019-12-01 07:55:56'),
(3, 'fhdfh', 'dfhdfhd', 1, 1, 'archived', '2019-11-30 15:06:11', '2019-11-30 15:38:36'),
(4, 'fhdfh', 'dfhdfhd', 1, 1, 'draft', '2019-11-30 15:06:39', '2019-11-30 15:41:29'),
(5, 'vzxvzx', 'vzxvzxv', 1, 1, 'archived', '2019-11-30 15:06:50', '2019-11-30 15:06:50'),
(7, 'What is JavaScript?', 'JavaScript is a scripting or programming language that allows you to implement complex things on web pages â€” every time a web page does more than just sit there and display static information for you to look at â€” displaying timely content updates, interactive maps, animated 2D/3D graphics, scrolling video jukeboxes, etc.\r\n\r\nIn 1993, the National Center for Supercomputing Applications (NCSA), a unit of the University of Illinois at Urbana-Champaign, released NCSA Mosaic, the first popular graphical Web browser, which played an important part in expanding the growth of the nascent World Wide Web beyond the NeXTSTEP niche where the WorldWideWeb had formed three years earlier. In 1994, a company called Mosaic Communications was founded in Mountain View, California and employed many of the original NCSA Mosaic authors to create Mosaic Netscape. However, it intentionally shared no code with NCSA Mosaic. The internal codename for the company\'s browser was Mozilla, a portmanteau of &quot;Mosaic and Godzilla&quot;.[17] The first version of the Web browser, Mosaic Netscape 0.9, was released in late 1994. Within four months it had already taken three-quarters of the browser market and became the main web browser for the 1990s. To avoid trademark ownership problems with the NCSA, the browser was subsequently renamed Netscape Navigator in the same year, and the company took the name Netscape Communications. Netscape Communications realized that the Web needed to become more dynamic. Marc Andreessen, the founder of the company, believed that HTML needed a &quot;glue language&quot; that was easy to use by Web designers and part-time programmers to assemble components such as images and plugins, where the code could be written directly in the Web page markup.\r\n\r\nIn 1995, Netscape Communications recruited Brendan Eich with the goal of embedding the Scheme programming language into its Netscape Navigator.[18] Before he could get started, Netscape Communications collaborated with Sun Microsystems to include Sun\'s more static programming language, Java, in Netscape Navigator so as to compete with Microsoft for user adoption of Web technologies and platforms.[19] Netscape Communications then decided that the scripting language they wanted to create would complement Java and should have a similar syntax, which excluded adopting other languages such as Perl, Python, TCL, or Scheme. To defend the idea of JavaScript against competing proposals, the company needed a prototype. Eich wrote one in 10 days, in May 1995.[citation needed]\r\n\r\nAlthough it was developed under the name Mocha, the language was officially called LiveScript when it first shipped in beta releases of Netscape Navigator 2.0 in September 1995, but it was renamed JavaScript when it was deployed in the Netscape Navigator 2.0 beta 3 in December.[2][20] The final choice of name caused confusion, giving the impression that the language was a spin-off of the Java programming language, and the choice has been characterized[21] as a marketing ploy by Netscape to give JavaScript the cachet of what was then the hot new Web programming language.\r\n\r\nThere is a common misconception that JavaScript was influenced by an earlier Web page scripting language developed by Nombas named Cmm (not to be confused with the later C-- created in 1997).[22][23] Brendan Eich, however, had never heard of Cmm before he created LiveScript. Nombas did pitch their embedded Web page scripting to Netscape, though Web page scripting was not a new concept, as shown by the ViolaWWW Web browser.[24] Nombas later switched to offering JavaScript instead of Cmm in their ScriptEase product and was part of the TC39 group that standardized ECMAScrip.\r\n\r\nSource: https://en.wikipedia.org/wiki/JAVASCRIPT\r\n', 3, 1, 'published', '2019-11-30 15:43:03', '2019-12-01 07:58:02'),
(12, 'What is Java?', 'Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible. It is intended to let application developers write once, run anywhere (WORA),[15] meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.[16] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but it has fewer low-level facilities than either of them. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[17][18] particularly for client-server web applications, with a reported 9 million developers.[19]\r\n\r\nJava was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle) and released in 1995 as a core component of Sun Microsystems\' Java platform. The original and reference implementation Java compilers, virtual machines, and class libraries were originally released by Sun under proprietary licenses. As of May 2007, in compliance with the specifications of the Java Community Process, Sun had relicensed most of its Java technologies under the GNU General Public License. Meanwhile, others have developed alternative implementations of these Sun technologies, such as the GNU Compiler for Java (bytecode compiler), GNU Classpath (standard libraries), and IcedTea-Web (browser plugin for applets).\r\n\r\nThe latest versions are Java 13, released in September 2019, and Java 11, a currently supported long-term support (LTS) version, released on September 25, 2018; Oracle released for the legacy Java 8 LTS the last free public update in January 2019 for commercial use, while it will otherwise still support Java 8 with public updates for personal use up to at least December 2020. Oracle (and others) highly recommend uninstalling older versions of Java because of serious risks due to unresolved security issues.[20] Since Java 9 (and 10 and 12) is no longer supported, Oracle advises its users to immediately transition to the latest version (currently Java 13) or an LTS release.\r\n\r\nJames Gosling, Mike Sheridan, and Patrick Naughton initiated the Java language project in June 1991.[21] Java was originally designed for interactive television, but it was too advanced for the digital cable television industry at the time.[22] The language was initially called Oak after an oak tree that stood outside Gosling\'s office. Later the project went by the name Green and was finally renamed Java, from Java coffee, the coffee from Indonesia.[23] Gosling designed Java with a C/C++-style syntax that system and application programmers would find familiar.[24]\r\n\r\nSun Microsystems released the first public implementation as Java 1.0 in 1996.[25] It promised Write Once, Run Anywhere (WORA), providing no-cost run-times on popular platforms. Fairly secure and featuring configurable security, it allowed network- and file-access restrictions. Major web browsers soon incorporated the ability to run Java applets within web pages, and Java quickly became popular. The Java 1.0 compiler was re-written in Java by Arthur van Hoff to comply strictly with the Java 1.0 language specification.[26] With the advent of Java 2 (released initially as J2SE 1.2 in December 1998 â€“ 1999), new versions had multiple configurations built for different types of platforms. J2EE included technologies and APIs for enterprise applications typically run in server environments, while J2ME featured APIs optimized for mobile applications. The desktop version was renamed J2SE. In 2006, for marketing purposes, Sun renamed new J2 versions as Java EE, Java ME, and Java SE, respectively.\r\n\r\nIn 1997, Sun Microsystems approached the ISO/IEC JTC 1 standards body and later the Ecma International to formalize Java, but it soon withdrew from the process.[27][28][29] Java remains a de facto standard, controlled through the Java Community Process.[30] At one time, Sun made most of its Java implementations available without charge, despite their proprietary software status. Sun generated revenue from Java through the selling of licenses for specialized products such as the Java Enterprise System.\r\n\r\nOn November 13, 2006, Sun released much of its Java virtual machine (JVM) as free and open-source software (FOSS), under the terms of the GNU General Public License (GPL). On May 8, 2007, Sun finished the process, making all of its JVM\'s core code available under free software/open-source distribution terms, aside from a small portion of code to which Sun did not hold the copyright.[31]\r\n\r\nSun\'s vice-president Rich Green said that Sun\'s ideal role with regard to Java was as an evangelist.[32] Following Oracle Corporation\'s acquisition of Sun Microsystems in 2009â€“10, Oracle has described itself as the steward of Java technology with a relentless commitment to fostering a community of participation and transparency.[33] This did not prevent Oracle from filing a lawsuit against Google shortly after that for using Java inside the Android SDK (see the Android section). Java software runs on everything from laptops to data centers, game consoles to scientific supercomputers.[34] On April 2, 2010, James Gosling resigned from Oracle.[35]\r\n\r\nIn January 2016, Oracle announced that Java run-time environments based on JDK 9 will discontinue the browser plugin.\r\n\r\nSource: https://en.wikipedia.org/wiki/JAVA\r\n\r\n\r\n', 6, 1, 'published', '2019-11-30 16:01:47', '2019-12-01 07:57:40'),
(13, 'What is jQuery?', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.[2] It is free, open-source software using the permissive MIT License.[3] As of May 2019, jQuery is used by 73% of the 10 million most popular websites.[4] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having 3 to 4 times more usage than any other JavaScript library.[4][5]\r\n\r\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, themeable widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\r\n\r\nThe set of jQuery core featuresâ€”DOM element selections, traversal and manipulationâ€”enabled by its selector engine (named &quot;Sizzle&quot; from v1.3), created a new &quot;programming style&quot;, fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[6] Later, this style has been enhanced with a deeper algorithm-data fusion in a heir of jQuery, the D3.js framework.\r\n\r\nMicrosoft and Nokia bundle jQuery on their platforms.[7] Microsoft includes it with Visual Studio[8] for use within Microsoft\'s ASP.NET AJAX and ASP.NET MVC frameworks while Nokia has integrated it into the Web Run-Time widget development platform.\r\n\r\njQuery, at its core, is a Document Object Model (DOM) manipulation library. The DOM is a tree-structure representation of all the elements of a Web page. jQuery simplifies the syntax for finding, selecting, and manipulating these DOM elements. For example, jQuery can be used for finding an element in the document with a certain property (e.g. all elements with an h1 tag), changing one or more of its attributes (e.g. color, visibility), or making it respond to an event (e.g. a mouse click).\r\n\r\njQuery also provides a paradigm for event handling that goes beyond basic DOM element selection and manipulation. The event assignment and the event callback function definition are done in a single step in a single location in the code. jQuery also aims to incorporate other highly used JavaScript functionality (e.g. fade ins and fade outs when hiding elements, animations by manipulating CSS properties).\r\n\r\nThe principles of developing with jQuery are:\r\n\r\nSeparation of JavaScript and HTML: The jQuery library provides simple syntax for adding event handlers to the DOM using JavaScript, rather than adding HTML event attributes to call JavaScript functions. Thus, it encourages developers to completely separate JavaScript code from HTML markup.\r\nBrevity and clarity: jQuery promotes brevity and clarity with features like &quot;chainable&quot; functions and shorthand function names.\r\nElimination of cross-browser incompatibilities: The JavaScript engines of different browsers differ slightly so JavaScript code that works for one browser may not work for another. Like other JavaScript toolkits, jQuery handles all these cross-browser inconsistencies and provides a consistent interface that works across different browsers.\r\nExtensibility: New events, elements, and methods can be easily added and then reused as a plugin.\r\n\r\nSource: https://en.wikipedia.org/wiki/jQuery\r\n\r\n', 2, 1, 'published', '2019-11-30 16:02:16', '2019-12-01 07:57:21'),
(14, 'bbbbbbbbbbb', 'gsdgsdgsdg', 1, 1, 'draft', '2019-11-30 16:02:23', '2019-11-30 16:02:23'),
(15, 'What is HTML?', 'Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for the appearance of the document.\r\n\r\nHTML elements are the building blocks of HTML pages. With HTML constructs, images and other objects such as interactive forms may be embedded into the rendered page. HTML provides a means to create structured documents by denoting structural semantics for text such as headings, paragraphs, lists, links, quotes and other items. HTML elements are delineated by tags, written using angle brackets. Tags such as  and  directly introduce content into the page. Other tags such as  surround and provide information about document text and may include other tags as sub-elements. Browsers do not display the HTML tags, but use them to interpret the content of the page.\r\n\r\nHTML can embed programs written in a scripting language such as JavaScript, which affects the behavior and content of web pages. Inclusion of CSS defines the look and layout of content. The World Wide Web Consortium (W3C), former maintainer of the HTML and current maintainer of the CSS standards, has encouraged the use of CSS over explicit presentational HTML since 1997.[2]\r\n\r\nIn 1980, physicist Tim Berners-Lee, a contractor at CERN, proposed and prototyped ENQUIRE, a system for CERN researchers to use and share documents. In 1989, Berners-Lee wrote a memo proposing an Internet-based hypertext system.[3] Berners-Lee specified HTML and wrote the browser and server software in late 1990. That year, Berners-Lee and CERN data systems engineer Robert Cailliau collaborated on a joint request for funding, but the project was not formally adopted by CERN. In his personal notes[4] from 1990 he listed[5] &quot;some of the many areas in which hypertext is used&quot; and put an encyclopedia first.\r\n\r\nThe first publicly available description of HTML was a document called &quot;HTML Tags&quot;, first mentioned on the Internet by Tim Berners-Lee in late 1991.[6][7] It describes 18 elements comprising the initial, relatively simple design of HTML. Except for the hyperlink tag, these were strongly influenced by SGMLguid, an in-house Standard Generalized Markup Language (SGML)-based documentation format at CERN. Eleven of these elements still exist in HTML 4.[8]\r\n\r\nHTML is a markup language that web browsers use to interpret and compose text, images, and other material into visual or audible web pages. Default characteristics for every item of HTML markup are defined in the browser, and these characteristics can be altered or enhanced by the web page designer\'s additional use of CSS. Many of the text elements are found in the 1988 ISO technical report TR 9537 Techniques for using SGML, which in turn covers the features of early text formatting languages such as that used by the RUNOFF command developed in the early 1960s for the CTSS (Compatible Time-Sharing System) operating system: these formatting commands were derived from the commands used by typesetters to manually format documents. However, the SGML concept of generalized markup is based on elements (nested annotated ranges with attributes) rather than merely print effects, with also the separation of structure and markup; HTML has been progressively moved in this direction with CSS.\r\n\r\nBerners-Lee considered HTML to be an application of SGML. It was formally defined as such by the Internet Engineering Task Force (IETF) with the mid-1993 publication of the first proposal for an HTML specification, the &quot;Hypertext Markup Language (HTML)&quot; Internet Draft by Berners-Lee and Dan Connolly, which included an SGML Document type definition to define the grammar.[9][10] The draft expired after six months, but was notable for its acknowledgment of the NCSA Mosaic browser\'s custom tag for embedding in-line images, reflecting the IETF\'s philosophy of basing standards on successful prototypes. Similarly, Dave Raggett\'s competing Internet-Draft, &quot;HTML+ (Hypertext Markup Format)&quot;, from late 1993, suggested standardizing already-implemented features like tables and fill-out forms.[11]\r\n\r\nAfter the HTML and HTML+ drafts expired in early 1994, the IETF created an HTML Working Group, which in 1995 completed &quot;HTML 2.0&quot;, the first HTML specification intended to be treated as a standard against which future implementations should be based.[12]\r\n\r\nFurther development under the auspices of the IETF was stalled by competing interests. Since 1996, the HTML specifications have been maintained, with input from commercial software vendors, by the World Wide Web Consortium (W3C).[13] However, in 2000, HTML also became an international standard (ISO/IEC 15445:2000). HTML 4.01 was published in late 1999, with further errata published through 2001. In 2004, development began on HTML5 in the Web Hypertext Application Technology Working Group (WHATWG), which became a joint deliverable with the W3C in 2008, and completed and standardized on 28 October 2014.[14]\r\n\r\nSource: https://en.wikipedia.org/wiki/HTML\r\n\r\n', 5, 2, 'published', '2019-11-30 16:14:46', '2019-12-01 07:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `first_name`, `last_name`, `email`, `password`, `type`, `deleted`) VALUES
(1, 'php', 'zag', 'admin@phpzag.com', '202cb962ac59075b964b07152d234b70', 1, 0),
(2, 'user', '', 'user@phpzag.com', '202cb962ac59075b964b07152d234b70', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_posts`
--
ALTER TABLE `cms_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
