-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2019 at 09:44 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mssrf`
--

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE IF NOT EXISTS `codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `type` int(3) NOT NULL DEFAULT '2' COMMENT '1-html,2-js',
  `copy_disable` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `title`, `code`, `type`, `copy_disable`) VALUES
(0, 'Latest code', 'var i=0;\nwhile(i<21)\n{\nalert(i);\ni++;\n}\n\nvar arr=["a","bb","c",4,6,9];\nfor(var i=0;i<arr.length;i++){\n   alert(arr[i]);\n}\n\n\nfor (var i in arr){\n   alert(arr[i]);\n}\n', 1, 1),
(1, 'Welcome', 'Welcome to building our UI', 2, 0),
(2, '', '<!DOCTYPE html>\r\n<html>\r\n	<head>\r\n		<title>MSSRF</title>\r\n	</head>\r\n<body>\r\n</body>\r\n</html>', 1, 0),
(3, '', '<!DOCTYPE html>\r\n<html>\r\n	<head>\r\n		<title>MSSRF</title>\r\n		<style type="text/css">\r\n		/*css goes here*/\r\n		</style>\r\n	</head>\r\n	\r\n	<body>\r\n	<!-- main content -->\r\n	</body>\r\n\r\n<script type="text/javascript">\r\n // We are gonna work here\r\n</script>\r\n</html>', 1, 0),
(4, '', '<h1>My First Heading</h1>\r\n<p>My first paragraph.</p>', 1, 0),
(5, '', '<h1>My First Heading</h1>\r\n\r\n<p>My first paragraph.</p>\r\n', 1, 0),
(6, '', '<h1>My First Heading</h1>\r\n<br>\r\n<p>My first paragraph.</p>\r\n', 1, 0),
(7, '', '<h1>Heading 1</h1>\r\n<h2>Heading 2</h2>\r\n<h3>Heading 3</h3>\r\n<h4>Heading 4</h4>\r\n<h5>Heading 5</h5>\r\n<h6>Heading 6</h6>', 1, 0),
(8, '', '<div style="background-color:lightblue">\r\n  <h3>This is a heading</h3>\r\n  <p>This is a paragraph.</p>\r\n</div>', 1, 0),
(9, '', '<ol>\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Milk</li>\r\n</ol>', 1, 0),
(10, '', '<ul>\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Milk</li>\r\n</ul>', 1, 0),
(11, '', ' <!-- types:1,A,a,i,I  and this is a comment-->\r\n\r\n<ol type="1">\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Milk</li>\r\n</ol>', 1, 0),
(12, '', ' <!-- disc,circle,square -->\r\n<ul style="list-style-type:circle;">\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Milk</li>\r\n</ul>', 1, 0),
(13, '', '--Lets start with the input elements', 2, 0),
(14, 'All inputs', '<input type="button">\r\n<input type="checkbox">\r\n<input type="color">\r\n<input type="date">\r\n<input type="datetime-local">\r\n<input type="email">\r\n<input type="file">\r\n<input type="hidden">\r\n<input type="image">\r\n<input type="month">\r\n<input type="number">\r\n<input type="password">\r\n<input type="radio">\r\n<input type="range">\r\n<input type="reset">\r\n<input type="search">\r\n<input type="submit">\r\n<input type="tel">\r\n<input type="text">\r\n<input type="time">\r\n<input type="url">\r\n<input type="week">', 1, 0),
(15, 'Number', 'Number:\r\n  <input type="number" id="num1"><br>', 1, 0),
(16, 'Number', 'Number:          \r\n  <input type="number" id="num1"><br>', 1, 0),
(17, 'nbsp and value', 'Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  <input type="number" id="num1" value=2><br>', 1, 0),
(18, 'text', 'Name:  <br>   \r\n  <input type="text" id="name">', 1, 0),
(19, 'Radio Button', '  <input type="radio" name="gender" value=1> Male<br>\r\n  <input type="radio" name="gender" value=2> Female<br>\r\n  <input type="radio" name="gender" value=3> Other', 1, 0),
(20, 'check box', '<input type="checkbox" name="vehicle" value=1> LandSat<br>\r\n<input type="checkbox" name="vehicle" value=2> Sentinel ', 1, 0),
(21, 'button', '<input type="button" value="Click Me!">', 1, 0),
(22, 'button with action', '<input type="button" onclick="alert(''Hello!'')" value="Click Me!">', 1, 0),
(23, 'horizontal line tag-(no end tag)', 'Number:\n  <input type="number" id="num1">\n  <hr>\nText: \n  <input type="text" id="name">', 1, 0),
(24, 'Welcome to javascript', '', 2, 0),
(25, 'Variables', 'var x = 5;\r\nvar y = "mssrf";\r\nvar z=true;', 2, 0),
(26, 'Outputs in js-console', 'console.log("Welcome");\r\n\r\nconsole.log(x);\r\n\r\nconsole.log(y);', 2, 0),
(27, 'Alert', 'alert("Welcome");\n\nalert(x);\n\nalert(y);', 2, 0),
(28, 'Prompt', 'var a = prompt("Enter something");\r\n\r\n\r\n\r\n', 2, 0),
(29, 'Prompt-declaration', 'var a;\r\na = prompt("Enter something");\r\n\r\n\r\n\r\n', 2, 0),
(30, 'How to  find the type of  variable', 'typeof(x);\r\n\r\n\r\n\r\n\r\n', 2, 0),
(31, 'How to  find the type of  variable', 'alert(typeof(x));\r\n\r\n\r\n\r\n\r\n', 2, 0),
(32, 'Data types in js', '<h2>\r\nBoolean.\r\nNull.\r\nUndefined.\r\nNumber.\r\nString.</h2>', 2, 0),
(33, 'Operators', '<h2>\r\nAssignmet\r\nArithmetic\r\nLogical\r\nComparison \r\nBitwise\r\n</h2>', 2, 0),
(34, 'Arithmatic operators', '<table class="w3-table-all notranslate">\r\n<tbody><tr>\r\n<th style="width:25%">Operator</th>\r\n<th>Description</th>\r\n</tr>\r\n<tr>\r\n<td>+</td>\r\n<td>Addition</td>\r\n</tr>\r\n<tr>\r\n<td>-</td>\r\n<td>Subtraction</td>\r\n</tr>\r\n<tr>\r\n<td>*</td>\r\n<td>Multiplication</td>\r\n</tr>\r\n<tr>\r\n<td>**</td>\r\n<td>Exponentiation (<a href="js_es6.asp">ES2016</a>)</td>\r\n</tr>\r\n<tr>\r\n<td>/</td>\r\n<td>Division</td>\r\n</tr>\r\n<tr>\r\n<td>%</td>\r\n<td>Modulus (Division Remainder)</td>\r\n</tr>\r\n<tr>\r\n<td>++</td>\r\n<td>Increment</td>\r\n</tr>\r\n<tr>\r\n<td>--</td>\r\n<td>Decrement</td>\r\n</tr>\r\n</tbody></table>', 2, 0),
(35, 'Assignment operator', 'var a=0;\r\n\r\nvar b=a;\r\n', 2, 0),
(36, 'opertions', 'var a=9;\r\nvar b=5;\r\na+b;\r\na*b;\r\na++; //equivalent to a=a+1;\r\n\r\n', 2, 0),
(37, 'comaparative operators return boolean value', '<table class="w3-table-all notranslate">\r\n<tbody><tr>\r\n<th style="width:12%">Operator</th>\r\n<th>Description</th>\r\n</tr>\r\n<tr>\r\n<td>==</td>\r\n<td>equal to</td>\r\n</tr>\r\n<tr>\r\n<td>===</td>\r\n<td>equal value and equal type</td>\r\n</tr>\r\n<tr>\r\n<td>!=</td>\r\n<td>not equal</td>\r\n</tr>\r\n<tr>\r\n<td>!==</td>\r\n<td>not equal value or not equal type</td>\r\n</tr>\r\n<tr>\r\n<td>&gt;</td>\r\n<td>greater than</td>\r\n</tr>\r\n<tr>\r\n<td>&lt;</td>\r\n<td>less than</td>\r\n</tr>\r\n<tr>\r\n<td>&gt;=</td>\r\n<td>greater than or equal to</td>\r\n</tr>\r\n<tr>\r\n<td>&lt;=</td>\r\n<td>less than or equal to</td>\r\n</tr>\r\n<tr>\r\n<td>?</td>\r\n<td>ternary operator</td>\r\n</tr>\r\n</tbody></table>', 2, 0),
(38, 'comaparative operators return boolean value', '<table class="w3-table-all notranslate">\r\n<tbody><tr>\r\n<th style="width:12%">Operator</th>\r\n<th>Description</th>\r\n</tr>\r\n<tr>\r\n<td>==</td>\r\n<td>equal to</td>\r\n</tr>\r\n<tr>\r\n<td>===</td>\r\n<td>equal value and equal type</td>\r\n</tr>\r\n<tr>\r\n<td>!=</td>\r\n<td>not equal</td>\r\n</tr>\r\n<tr>\r\n<td>!==</td>\r\n<td>not equal value or not equal type</td>\r\n</tr>\r\n<tr>\r\n<td>&gt;</td>\r\n<td>greater than</td>\r\n</tr>\r\n<tr>\r\n<td>&lt;</td>\r\n<td>less than</td>\r\n</tr>\r\n<tr>\r\n<td>&gt;=</td>\r\n<td>greater than or equal to</td>\r\n</tr>\r\n<tr>\r\n<td>&lt;=</td>\r\n<td>less than or equal to</td>\r\n</tr>\r\n<tr>\r\n<td>?</td>\r\n<td>ternary operator</td>\r\n</tr>\r\n</tbody></table>', 2, 0),
(39, 'ternery operator', 'var x=8;\r\n\r\nvar y=(x>10)? 2:3;\r\n\r\nconsole.log(y);', 2, 0),
(40, '', '(8>9)?alert(3):alert(4);', 2, 0),
(41, 'Logical operators', '<table class="w3-table-all notranslate">\r\n<tbody><tr>\r\n<th style="width:12%">Operator</th>\r\n<th>Description</th>\r\n</tr>\r\n<tr>\r\n<td>&amp;&amp;</td>\r\n<td>logical and</td>\r\n</tr>\r\n<tr>\r\n<td>||</td>\r\n<td>logical or</td>\r\n</tr>\r\n<tr>\r\n<td>!</td>\r\n<td>logical not</td>\r\n</tr>\r\n</tbody></table>', 2, 0),
(42, 'logical operator', 'var c=8;\r\n(a>b) || (a>c);\r\n\r\n', 2, 0),
(43, '', '(a>b) && (a>c);', 2, 0),
(44, 'Not operator', '!(a>b) && (a>c);\r\n\r\n!true;\r\n\r\n!((a>b) && (a>c));', 2, 0),
(45, 'If else', 'var hour=6;\nif (hour < 18) {\n  alert("Good day");\n} else {\n  alert("Good evening");\n}', 2, 0),
(46, 'syntax', 'if (condition) {\r\n  //  block of code to be executed if the condition is true\r\n} else { \r\n  //  block of code to be executed if the condition is false\r\n}', 2, 0),
(47, 'if else if syntax', 'if (condition1) {\r\n  //  block of code to be executed if condition1 is true\r\n} else if (condition2) {\r\n  //  block of code to be executed if the condition1 is false and condition2 is true\r\n} else {\r\n  //  block of code to be executed if the condition1 is false and condition2 is false\r\n}', 2, 0),
(48, 'example', 'var time=5;\nvar greeting;\nif (time < 10) {\n  greeting = "Good morning";\n} else if (time < 20) {\n  greeting = "Good day";\n} else {\n  greeting = "Good evening";\n}\nalert(greeting);', 2, 0),
(49, 'Switch Case syntax', 'switch(expression) {\r\n  case x:\r\n    // code block\r\n    break;\r\n  case y:\r\n    // code block\r\n    break;\r\n  default:\r\n    // code block\r\n}', 2, 0),
(50, 'example', 'var day=0;\r\nswitch (day) {\r\n  case 0:\r\n    day = "Sunday";\r\n    break;\r\n  case 1:\r\n    day = "Monday";\r\n    break;\r\n  case 2:\r\n     day = "Tuesday";\r\n    break;\r\n  case 3:\r\n    day = "Wednesday";\r\n    break;\r\n  case 4:\r\n    day = "Thursday";\r\n    break;\r\n  case 5:\r\n    day = "Friday";\r\n    break;\r\n  case 6:\r\n    day = "Saturday";\r\n}\r\nalert(day);', 2, 0),
(51, 'what happens without break', 'var day=2;\r\nswitch (day) {\r\n  case 0:\r\n    day = "Sunday";\r\n    \r\n  case 1:\r\n    day = "Monday";\r\n \r\n  case 2:\r\n     day = "Tuesday";\r\n  \r\n  case 3:\r\n    day = "Wednesday";\r\n  \r\n  case 4:\r\n    day = "Thursday";\r\n    \r\n  case 5:\r\n    day = "Friday";\r\n    alert(day);\r\n  case 6:\r\n    day = "Saturday";\r\n}\r\nalert(day);', 2, 0),
(52, 'default', 'var day=0;\r\nswitch (day) {\r\n  case 0:\r\n    day = "Sunday";\r\n    break;\r\n  case 1:\r\n    day = "Monday";\r\n    break;\r\n  case 2:\r\n     day = "Tuesday";\r\n    break;\r\n  case 3:\r\n    day = "Wednesday";\r\n    break;\r\n  case 4:\r\n    day = "Thursday";\r\n    break;\r\n  case 5:\r\n    day = "Friday";\r\n    break;\r\n  case 6:\r\n    day = "Saturday";\r\n    break;\r\n  default:\r\n    day="Wrong input";\r\n}\r\nalert(day);', 2, 0),
(53, 'Get day in prompt and print day', 'var day=prompt("Enter day number");', 2, 1),
(54, 'Why to parse', 'var a=prompt("Enter Number:");\nvar b=10;\nalert(a+b);\n\n//coz\ntypeof(a);', 2, 0),
(55, 'prasing', 'var a= Number("123.94");\r\ntypeof(a);\r\nvar b= Number("123");\r\ntypeof(b);\r\nb=String(b);\r\ntypeof(b);', 2, 1),
(56, 'Try the get day number and alert day example', '', 2, 1),
(57, 'Functions syntax', 'function functionName(parameters) {\r\n  // code to be executed\r\n  return value; //optional\r\n}', 2, 0),
(58, 'function example', 'function myFunction(a, b) {\r\n  return a * b;\r\n}', 2, 1),
(59, 'function invoking', 'function myFunction(a, b) {\n  return a ** b;\n}\n\nvar a=myFunction(9,2);\n\na;', 2, 1),
(60, 'Write your own function that gets two numbers, finds the greatest and returns its square', '', 2, 0),
(61, 'Inbuilt Math functions', 'var a = Math.abs(7.25);\r\nvar b = Math.abs(-7.25);\r\n\r\nMath.floor(1.6);\r\nMath.max(0, 150, 30, 20, 38);\r\nMath.min(-5, -10);\r\n\r\nMath.PI;\r\n\r\n', 2, 1),
(62, 'Url reference', '\r\n<a href="https://www.w3schools.com/jsref/jsref_obj_math.asp">Math Functions reference</a>\r\n<br>\r\n<a href="https://www.w3schools.com/jsref/jsref_obj_string.asp">String Functions reference</a>\r\n\r\n', 2, 1),
(63, 'String functions', 'var a = "   Hello World   !    ";\r\nstr.length;  //not a function but a object''s attribute\r\n\r\nstr.toLowerCase();\r\nstr.toUpperCase();\r\nstr.trim();\r\n\r\n\r\nvar str = "How are you doing today?";\r\nstr.split(" ");\r\n\r\nstr.substr(1, 4);\r\nstr.replace("today", "this day");', 2, 1),
(64, 'Getting in jquery', '<!DOCTYPE html>\n<html>\n	<head>\n		<title>MSSRF</title>\n		<style type="text/css">\n		/*css goes here*/\n		</style>\n	</head>\n	\n	<body>\n	<!-- main content -->\n	</body>\n\n<script src="jquery.min.js"></script>\n\n<script type="text/javascript">\n // We are gonna work here\n</script>\n</html>', 1, 0),
(65, 'getting value from text box', '$(''#id'').val();\n\n', 2, 0),
(66, '', 'var a=$(''#id'').val();\n\nconsole.log(a);\n\n//then change it to number', 2, 1),
(67, 'Handling button events', 'function run(){\n  alert(''clicked'');\n}\n\n$("id").click(run);\n', 2, 1),
(68, 'Handling button events-2', 'function run(){\n  alert(''clicked'');\n}\n\nfunction fun2(){\n alert("clicked button2");\n}\n\n$("id_of_button").click(run);\n\n$("id_of_btn_2").click(fun2);\n', 2, 1),
(69, 'Complete the calculator with the trim icon', '', 2, 0),
(70, 'Radio button check if checked', ' $(''#radio_button_id'').is('':checked'')\n', 2, 0),
(71, 'Radio button check if checked', ' if( $(''#radio_button'').is('':checked'') )\n { \n    alert("it''s checked"); \n}', 2, 1),
(72, 'Complete the upper and lower radio button functionality', '', 2, 0),
(73, 'Date', ' var date = new Date();\ndate;\ndate.getDate();\ndate.getFullYear();\n\nvar new_date=new Date(2019, 11, 24);\nnew_date.getDay();', 2, 1),
(74, 'Date form element', ' var date = new Date($(''#date-input-id'').val());', 2, 0),
(75, 'More with date', 'var today = new Date();\nvar tomorrow = new Date();\ntomorrow.setDate(today.getDate()+1);\n\nvar nxt_month=today;\nnxt_month.setMonth(today.getMonth()+1);\n', 2, 1),
(76, 'Using the day finder and Date field alert the selected date', '', 2, 0),
(77, 'Arrays', 'var list=[1,2,3,4,5];\nvar list2=["asdf",2,3,true,0.3];\n\n', 2, 1),
(78, 'accessing and changing elemet of an array', 'list2[0];\n\nlist2[3]=''mssrf'';\n\nlist2;', 2, 1),
(79, 'Playing around with array functions', 'list2.length;  //gives the length of array\n\nlist2.push("class2");\n\nlist2.pop();\n \nlist2.shift();  \n\nnew_list=list.concat(list2);\n\nnew_list=list.concat(list2,list);\n\n<a href="https://www.w3schools.com/jsref/jsref_obj_array.asp">https://www.w3schools.com/jsref/jsref_obj_array.asp</a>', 2, 0),
(80, 'reference and objects', 'a=[1,2,3,''asdf'',''qwert''];\nvar b=a;\na.pop();\n\n', 2, 0),
(81, 'array sorting', 'var numbers=[2,4,7,5,1,0,8];\nvar words=[''new'',''apple'',''google'',''microsoft'',''zone''];\n\nnumbers.sort();\nwords.sort();', 0, 0),
(82, 'For each function', 'fruits = ["Banana", "Orange", "Apple", "Mango"];\n\nfruits.forEach(print_upper);\n\nfunction print_upper(item,index,array) {\n  console.log(index+": "+item.toUpperCase());\n}', 2, 1),
(83, 'Classe and objects', 'class User {\n\n  setName(name){\nthis.name=name;\n}\n\n  sayHi() {\n    alert(this.name);\n  }\n\n}\n\nvar user = new User();\nuser.setName("Sneha");\nuser.sayHi();\n', 2, 0),
(84, 'One class any number of objects ', 'var user = new User();\nuser.setName("Sneha");\nuser.sayHi();\n\nvar user2=new User();\nuser2.setName("Prakash");\nuser2.sayHi();', 2, 0),
(85, 'Create your own object', '\nclass Point { \n    setLatLng(lat,lng)\n    { \n      this.lat=lat;\n      this.lng=lng;\n    } \n\n   printLatLag(){\n   console.log("Latitude: "+this.lat);\n   console.log("Longitude: "+this.lng);\n}\n\n } ', 2, 0),
(86, 'Simple objects', 'var object = {\n  foo: ''bar'',\n  baz: 13,\n  stuff: [''this'', ''that'', ''the other thing'']\n};\n\nconsole.log(object.baz);', 2, 0),
(87, 'Node js', 'const express = require(''express'');\nconst app = express();\nvar bodyParser = require(''body-parser'');\napp.use(bodyParser.json()); // support json encoded bodies\napp.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies\n\n\napp.get(''/add'', (req, res) => {\n\n	var num1=req.query.num1;\n	num1=Number(num1);\n\n	var num2=req.query.num2;\n    num2=Number(num2);\n\n    res.send({\n    	''result'':num2+num1\n    });\n});\n\napp.post(''/greatest_square'', (req, res) => {\n\n	var num1=req.body.num1;\n	num1=Number(num1);\n\n	var num2=req.body.num2;\n    num2=Number(num2);\n\n    res.send({\n    	''result'':myGreatestSquare(num1,num2)\n    });\n});\n\n\nfunction myGreatestSquare(num1,num2){\n	return (num1>num2)?num1*num1:num2*num2;\n}\n\n\n\napp.listen(3000, () => console.log(''Server app listening on port 3000!''));', 2, 0),
(88, 'ajax post', '/* http://localhost:3000/add?num1=89&num2=9 */\n$.ajax({\n			  type: "POST",\n			  url: "http://localhost:3000/greatest_square",\n			  data: {\n					''num1'':2,\n					''num2'':3\n					},\n			   dataType: ''json'',\n			  success: function(data){\n			  	console.log(data);\n			  },\n			  error:function(){\n			  	alert("error");\n			  }\n			});', 2, 0),
(89, 'Create your own function on server and request and get the results', '', 2, 0),
(90, 'Welcome to Google Earth  Engine', '', 2, 0),
(91, 'printing', 'print("hi this is ", "GEE"," console");', 2, 1),
(92, 'EE containers', 'var aString = ''To the cloud!'';\nvar eeString = ee.String(aString);\nprint(''Where to?'', eeString);', 2, 1),
(93, 'EE Number', 'var serverNumber = ee.Number(67);\nprint(''num='', serverNumber);', 2, 1),
(94, 'Lists', '// Make a sequence the hard way.\nvar eeList = ee.List([1, 2, 3, 4, 5]);\n// Make a sequence the easy way!\nvar sequence = ee.List.sequence(1, 5);\nprint(''Sequence:'', sequence);', 2, 0),
(95, 'Can''t access list as we do', 'var value = sequence[2];\nprint(''Value at index 2:'', value);', 2, 1),
(96, 'Accessing ee list item', 'var value = sequence.get(2);\nprint(''Value at index 2:'', value);', 2, 1),
(97, 'Cast to do the functions', 'var p=Math.PI;\nprint("add result",p+10);', 2, 1),
(98, 'Right way to add', 'var p=Math.PI;\nvar n2=ee.Number(10);\n\nprint("add result",p.add(n2));\n\nprint("add result",p.add(ee.Number(10)));', 2, 1),
(99, 'Dictionaries and Objects', '// Make a Dictionary on the server.\nvar dictionary = ee.Dictionary({\n  e: Math.E,\n  pi: Math.PI,\n  phi: (1 + Math.sqrt(5)) / 2\n});\n\n// Get some values from the dictionary.\nprint(''Euler:'', dictionary.get(''e''));\nprint(''Pi:'', dictionary.get(''pi''));\nprint(''Golden ratio:'', dictionary.get(''phi''));\n\n// Get all the keys:\nprint(''Keys: '', dictionary.keys());', 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
