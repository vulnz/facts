-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 10 2020 г., 15:18
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sca`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sca`
--

CREATE TABLE `sca` (
  `id` int(3) DEFAULT NULL,
  `category` text,
  `info` text,
  `fact` text,
  `advice` text,
  `description` text,
  `score` text,
  `severity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sca`
--

INSERT INTO `sca` (`id`, `category`, `info`, `fact`, `advice`, `description`, `score`, `severity`) VALUES
(666, 'Apache', 'Local file include', '/etc/pass', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(71, 'Apache', 'Local file include', '/etc/shadow', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(115, 'Apache', 'Local file include', '../etc/passwd', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(372, 'Apache', 'Local file include', 'C:oot.ini', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(373, 'Apache', 'Local file include', 'C:/boot.ini', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(600, 'Apache', 'Local file include', '/var/log/httpd-access.log', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(617, 'Apache', 'Local file include', '../../../../', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(635, 'Apache', 'Local file include', '../', 'LFI Attack', 'https://www.owasp.org/index.php/Testing_for_Local_File_Inclusion', '-1', 'Yellow'),
(737, 'Admin Panel', 'moderator/', 'moderator/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(738, 'Admin Panel', 'controlpanel/', 'controlpanel/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(755, 'Admin Panel', 'myadmin/', 'myadmin/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(760, 'Admin Panel', 'wp-admin/', 'wp-admin/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(770, 'Admin Panel', 'useradmin/', 'useradmin/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(775, 'Admin Panel', 'administrators/', 'administrators/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(801, 'Admin Panel', 'wp-login/', 'wp-login/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(853, 'Admin Panel', 'instadmin/', 'instadmin/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(863, 'Admin Panel', 'admincp/', 'admincp/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(891, 'Admin Panel', 'root/', 'root/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(895, 'Admin Panel', 'moderator.php', 'moderator.php', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(902, 'Admin Panel', 'aadmin/', 'aadmin/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(905, 'Admin Panel', 'login_admin/', 'login_admin/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(918, 'Admin Panel', 'secrets/', 'secrets/', 'Admin Panel enumiration', 'https://www.owasp.org/index.php/Enumerate_Infrastructure_and_Application_Admin_Interfaces_(OTG-CONFIG-005)', '-1', 'Yellow'),
(929, 'Scanners', 'Havij', 'Havij scanner detected', 'Look for SQL injection', 'https://www.owasp.org/index.php/SQL_Injection', '-3', 'Orange'),
(1001, 'Scanners', 'Possible CRLF injection', '%E5%98%8A ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1002, 'Scanners', 'Possible CRLF injection', '%E5%98%8D ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1003, 'Scanners', 'Possible CRLF injection', '%E5%98%BE ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1004, 'Scanners', 'Possible CRLF injection', '%E5%98%BC ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1005, 'Scanners', 'Possible CRLF injection', '%0A  ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1006, 'Scanners', 'Possible CRLF injection', '%0D ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1007, 'Scanners', 'Possible CRLF injection', '%3E ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1008, 'Scanners', 'Possible CRLF injection', '%3C  ', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1009, 'Scanners', 'Possible CRLF injection', 'SLEEP(', 'CRLF can be mitigated by checking server configuration', 'CSRF attack can allow attacker to send custom header from server', '-2', 'Purple'),
(1010, 'Scanners', 'Web vulenrability scanner was used to scan the target', 'Netsparker', 'It is automatic scan and can be not followed by manual check.', 'Netsparker is web vulnerability scanner which has hight vulnerability detection rate.', '-2', 'Orange'),
(1011, 'Scanners', 'Web vulenrability scanner was used to scan the target', 'Acunetix', 'It is automatic scan and can be not followed by manual check.', 'Acunetix  is web vulnerability scanner which has hight vulnerability detection rate.', '-2', 'Orange'),
(1012, 'Scanners', 'Web vulenrability scanner was used to scan the target', 'Nikto', 'It is automatic scan and can be not followed by manual check.', 'Nikto  is web vulnerability scanner which has hight vulnerability detection rate.', '-2', 'Orange'),
(1013, 'Scanners', 'Web vulenrability scanner was used to scan the target', 'W3af', 'It is automatic scan and can be not followed by manual check.', 'This is a web vulnerability scanner which has hight vulnerability detection rate.', '-2', 'Orange'),
(1014, 'Scanners', 'Web vulenrability scanner was used to scan the target', 'Wapiti', 'It is automatic scan and can be not followed by manual check.', 'This is a web vulnerability scanner which has hight vulnerability detection rate.', '-2', 'Orange'),
(1015, 'Scanners', 'Web vulenrability scanner was used to scan the target', 'Arachni', 'It is automatic scan and can be not followed by manual check.', 'This is a web vulnerability scanner which has hight vulnerability detection rate.', '-2', 'Orange'),
(1016, 'Scanners', 'Manual attack using scripts performed. Burpcollaborator', 'burpcollaborator ', 'Take a deep look on this attack', 'Dagerous attack was performed using manual tools', '-3', 'Red'),
(1017, 'Scanners', 'Manual attack using scripts performed. Xsshunter', 'xsshunter', 'Take a deep look on this attack', 'Dagerous attack was performed using manual tools', '-3', 'Red'),
(1018, 'Scanners', 'Manual attack using scripts performed. Xsshunter', 'xss.ht', 'Take a deep look on this attack', 'Dagerous attack was performed using manual tools', '-3', 'Red'),
(1019, 'Scanners', 'Web vulenrability scanner was used to scan the target', 'masscan', 'It is automatic scan and can be not followed by manual check.', 'This is a web vulnerability scanner which has hight vulnerability detection rate.', '-3', 'Red'),
(1020, 'Scanners', 'Manual attack using scripts performed', 'zapproxy', 'Take a deep look on this attack', 'Dagerous attack was performed using manual tools', '-3', 'Red'),
(1021, 'Scanners', 'SQL injection took place.', '%27', 'Make sure to filter this content', '%27', '-2', 'Orange'),
(1022, 'Scanners', 'Somebody is using github', 'github', 'Check the logs to see details', 'The using github script was done', '-3', 'Orange'),
(1023, 'Scanners', 'Office pattern', 'office', 'Office pattern', 'Office pattern', '-3', 'Yellow'),
(1024, 'Scanners', 'CURL command was used', 'curl', 'Please doublecheck ths call', 'Curl can be done to download specific software', '-4', 'Red'),
(1025, 'Scanners', 'WGET command was used', 'wget', 'Please doublecheck ths call', 'WGET can be done to download specific software', '-4', 'Red'),
(1026, 'Scanners', 'Powershell command was used', 'ps.exe', 'Please doublecheck ths call', 'Powershell can be done to download specific software or run scripts', '-4', 'Red'),
(1027, 'Scanners', 'Powershell command was used', 'powershell.exe', 'Please doublecheck ths call', 'Powershell can be done to download specific software or run scripts', '-4', 'Red'),
(1028, 'Scanners', 'CMD command was used', 'cmd.exe', 'Please doublecheck ths call', 'CMD can be done to download specific software or run scripts', '-4', 'Red'),
(1029, 'SQLI', 'SQL injection took place. Auth bypass', '1=1', 'This is SQL injection bypass', 'SQL injection took place.', '-2', 'Orange'),
(1030, 'SQLI', 'SQL injection took place. Auth bypass', 'SLEEP(', 'This is SQL injection bypass', 'SQL injection took place.', '-2', 'Orange'),
(1031, 'SQLI', 'SQL injection took place. Blind SLI.', 'UNION', 'This is SQL injection. Blind try', 'SQL injection took place.', '-2', 'Orange'),
(1032, 'SQLI', 'SQL injection took place. ', 'CONCAT', 'This is SQL injection. Blind try', 'SQL injection took place.', '-2', 'Orange'),
(1033, 'SQLI', 'SQL injection took place. Drop table', 'DROP', 'This is SQL injection. Somebody dropped table', 'SQL injection took place.', '-4', 'Orange'),
(1034, 'XSS', 'Possible XSSinjection', '<body onload', 'Filter all user input.', 'XSS request took place', '-4', 'Purple'),
(1035, 'XSS', 'Possible XSSinjection', '<svg onload ', 'Filter all user input.', 'XSS request took place', '-4', 'Purple'),
(1036, 'XSS', 'Possible XSSinjection', '<script', 'Filter all user input.', 'XSS request took place', '-4', 'Purple'),
(1037, 'Apache', 'Directory listing', '?C=S;O=A ', 'Directory listing took place', 'Folder can be viewed from remote machine', '', ''),
(1038, 'Scanners', 'SQL injection took place.', '%%2727', 'Make sure to filter this content', 'SQL injection took place.', '-2', 'Orange'),
(1039, 'Scanners', 'SQL injection took place.', '%22', 'Make sure to filter this content', 'SQL injection took place.', '-2', 'Orange'),
(1040, 'Scanners', 'SQL injection took place.', '%%2727', 'Make sure to filter this content', 'SQL injection took place.', '-2', 'Orange'),
(520778, 'Code injection', 'Exec commnd performed', 'exec', 'Can be dangerous command', 'Exec command runs local execution command', '-4', 'Red'),
(718629, 'Code injection', 'Exec commnd performed', 'eval', 'Can be dangerous command', 'Exec command runs local execution command', '-4', 'Red'),
(117294, 'Code injection', 'Bash call commnd performed', '/bin/sh', 'Can be dangerous command', 'Bash command runs local execution command', '-4', 'Red'),
(148223, 'Code injection', '&& call commnd performed for command compilation', '&&', 'Can be dangerous command', '&& command runs local execution command one by one', '-4', 'Red'),
(411769, 'Code injection', 'phpinfo command is PHP command to show PHP information', 'phpinfo', 'Can be dangerous command. Please double check the result', 'phpinfo command can be used if attacker has ability to run php scripts', '-4', 'Red'),
(415573, 'Code injection', 'system command was performed', 'system', 'Can be dangerous command. Please double check the result', 'system can be used to execute commands on the machine', '-4', 'Red'),
(612609, 'Code injection', 'whoami command was performed', 'whoami', 'Can be dangerous command. Please double check the result', 'whoami command is ment to check users name on the system', '-4', 'Red'),
(508442, 'Code injection', '$_GET[\"cmd\"] command was performed', '$_GET[\"cmd\"]', 'Can be dangerous command. Please double check the result', '$_GET[\"cmd\"] command is ment to open pseudoshell using php', '-4', 'Red'),
(760633, 'LFI', 'PHP filter used', 'php://filter/', 'Can be dangerous command. Please double check the result', 'PHP filter used for data download using Local file include', '-4', 'Orange'),
(700179, 'LFI', 'Wrapper filter used', 'data://', 'Can be dangerous command. Please double check the result', 'Wrapper used for data download using Local file include', '-4', 'Orange'),
(396719, 'LFI', 'Netstat command performed', 'netstat ', 'Can be dangerous command. Please double check the result', 'If attacker has ability to runm commands this is one of the first commands which will be run', '-4', 'Orange'),
(272819, 'LFI', 'Uname -a command performed', 'uname', 'Can be dangerous command. Please double check the result', 'If attacker has ability to runm commands this is one of the first commands which will be run', '-4', 'Orange'),
(258328, 'LFI', 'Ipconfig command performed', 'ipconfig', 'Can be dangerous command. Please double check the result', 'If attacker has ability to runm commands this is one of the first commands which will be run', '-4', 'Orange'),
(143324, 'Other', 'Possible SSTI vulnerability', '{{', 'Server side template injection is a dangerous attack which can cause command execution', 'SSTI vulnerability was detected.', '-2', 'Yellow'),
(855994, 'Other', 'Possible SSTI vulnerability', '<%=', 'Server side template injection is a dangerous attack which can cause command execution', 'SSTI vulnerability was detected.', '-2', 'Yellow'),
(896504, 'Other', 'Possible SSTI vulnerability', '{%', 'Server side template injection is a dangerous attack which can cause command execution', 'SSTI vulnerability was detected.', '-2', 'Yellow'),
(652292, 'Other', 'Possible SSTI vulnerability', '#{', 'Server side template injection is a dangerous attack which can cause command execution', 'SSTI vulnerability was detected.', '-2', 'Yellow'),
(628545, 'Other', 'XXE attack performed', '<!ENTITY', 'Check your parser', 'Please see your parser and check its version.', '-3', 'Orange'),
(366119, 'Other', 'XXE attack performed', 'expect://', 'Check your parser', 'Please see your parser and check its version.', '-3', 'Orange'),
(864921, 'XSS', 'Possible XSS injection', 'svgonload=', 'Filter all user input.', 'XSS request took place', '-3', 'Orange'),
(218756, 'XSS', 'Possible XSS injection in IFRAME', 'iframe', 'Filter all user input.', 'XSS request took place', '-3', 'Orange'),
(533814, 'XSS', 'Possible XSS injection in IFRAME', 'javascript:eval', 'Filter all user input.', 'XSS request took place', '-3', 'Orange'),
(779820, 'XSS', 'Possible XSS injection using UTF-8', '%F0%80%80%BC', 'Filter all user input.', 'XSS request took place', '-3', 'Orange'),
(773262, 'XSS', 'Possible XSS injection using UTF-8', '%CA%BA', 'Filter all user input.', 'XSS request took place', '-3', 'Orange'),
(830552, 'Manual attack', 'Possible shell detected', 'shell.', 'Please doublecheck ths call', 'Shell call was performed', '-3', 'Yellow'),
(345143, 'Code injection', 'DLL injection attack', 'rundll32.exe', 'Please doublecheck ths call', 'DLL injection attack was performed by attacker', '-3', 'Yellow'),
(547131, 'Code injection', 'Shellshock attack ', '/cgi-bin/status', 'Please doublecheck ths call', 'Shellshock,also known as bashshock - Dangerous vulnerability', '-3', 'Yellow'),
(825949, 'Manual attack', 'Mimikatz. Possible malware run', 'mimitatz', 'Please doublecheck ths call', 'Mimikatz is used to extract ntlm hash, kerberos tokens and passwords', '-3', 'Red'),
(454501, 'Manual attack', 'Possible CVE found. Sharepoint', 'Picker.aspx?PickerDialogType', 'Sharepoint should be fully patched in order to avoid this attack', 'cve-2019-0604 SharePoint RCE exploit', '-4', 'Orange'),
(488302, 'Manual attack', 'Possible CVE found. Sharepoint', '_layouts/15/ua.aspx', 'Sharepoint should be fully patched in order to avoid this attack', 'cve-2019-0604 SharePoint RCE exploit', '-4', 'Orange'),
(816294, 'Manual attack', 'Possible CVE found. Struts', 'help.action', 'Strutst should be fully patched in order to avoid this attack', 'CVE-2018-11776 Apache struts RCE', '-4', 'Orange');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sca`
--
ALTER TABLE `sca`
  ADD UNIQUE KEY `A` (`id`),
  ADD KEY `id` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
