-- MySQL dump 10.16  Distrib 10.2.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_nagiosql_v32
-- ------------------------------------------------------
-- Server version	10.2.12-MariaDB-10.2.12+maria~jessie

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `db_nagiosql_v32`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_nagiosql_v32` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `db_nagiosql_v32`;

--
-- Table structure for table `tbl_command`
--

DROP TABLE IF EXISTS `tbl_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_command` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `command_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `command_line` text COLLATE utf8_unicode_ci NOT NULL,
  `command_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(10) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`command_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_command`
--

LOCK TABLES `tbl_command` WRITE;
/*!40000 ALTER TABLE `tbl_command` DISABLE KEYS */;
INSERT INTO `tbl_command` VALUES (6,'check_by_ssh','$USER1$/check_by_ssh -H $HOSTADDRESS$ -C $ARG1$ -l $ARG2$ -p $ARG3$ -i /usr/lib64/nagios/plugins/keys/id_rsa -o StrictHostKeyChecking=no -E',1,'1','1','2017-04-06 16:54:32',0,1),(7,'check_cpu_remote','$USER1$/check_by_ssh -H $HOSTADDRESS$ -C $ARG1$ -l $ARG2$ -p $ARG3$ -i /usr/lib64/nagios/plugins/keys/id_rsa -o StrictHostKeyChecking=no -E',1,'1','1','2017-04-06 16:54:32',0,1),(8,'check_dhcp','$USER1$/check_dhcp $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(12,'check_ftp','$USER1$/check_ftp -H $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(13,'check_gearman','$USER1$/check_gearman -H gearmand -q $ARG1$ -t 10 -s check',1,'1','1','2017-04-25 16:17:31',0,1),(14,'check_gearman_server','$USER1$/check_gearman -H gearmand -t 10 -q $ARG1$ $ARG2$',1,'1','1','2017-04-25 16:17:25',0,1),(17,'check_http','$USER1$/check_http -I $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(21,'check_imap','$USER1$/check_imap -H $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(27,'check_ldap','$USER1$/check_ldap -H $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(28,'check_linux_procstat','$USER1$/check_linux_procstat.pl -f',1,'1','1','2017-04-06 16:54:32',0,1),(29,'check_local_disk','$USER1$/check_disk -w $ARG1$ -c $ARG2$ -p $ARG3$',1,'1','1','2017-04-06 16:54:32',0,1),(30,'check_local_load','$USER1$/check_load -w $ARG1$ -c $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(31,'check_local_mrtgtraf','$USER1$/check_mrtgtraf -F $ARG1$ -a $ARG2$ -w $ARG3$ -c $ARG4$ -e $ARG5$',1,'1','1','2017-04-06 16:54:32',0,1),(32,'check_local_procs','$USER1$/check_procs -w $ARG1$ -c $ARG2$ -s $ARG3$',1,'1','1','2017-04-06 16:54:32',0,1),(33,'check_local_swap','$USER1$/check_swap -w $ARG1$ -c $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(34,'check_local_users','$USER1$/check_users -w $ARG1$ -c $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(36,'check_nrpe','$USER1$/check_nrpe -H $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(37,'check_nt','$USER1$/check_nt -H $HOSTADDRESS$ -p 12489 -v $ARG1$ $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(39,'check_ping','$USER1$/check_ping -H $HOSTADDRESS$ -w $ARG1$ -c $ARG2$ -p 5',1,'1','1','2017-04-06 16:54:32',0,1),(41,'check_pop','$USER1$/check_pop -H $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(44,'check_smtp','$USER1$/check_smtp -H $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(45,'check_snmp','$USER1$/check_snmp -H $HOSTADDRESS$ $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(57,'check_snmp_cpu','$USER1$/check_cpu -H $HOSTADDRESS$ -C $ARG1$ -P $ARG2$ -w $ARG3$ -c $ARG4$',1,'1','1','2017-04-06 16:54:32',0,1),(58,'check_snmp_date','$USER1$/check_snmp_hrSystemDate.pl -H $HOSTADDRESS$ -C $ARG1$ -w $ARG2$ -c $ARG3$',1,'1','1','2017-04-06 16:54:32',0,1),(59,'check_snmp_hw_env','$USER1$/check_snmp_environment.pl -H $HOSTADDRESS$ -C $ARG1$ -T $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(62,'check_snmp_interface','$USER1$/check_snmp_int_all.pl -H $HOSTADDRESS$ -C $ARG1$',1,'1','1','2017-04-25 15:35:25',0,1),(67,'check_snmp_linux_cpu','$USER1$/check_snmp_load.pl -w 90 -c 95 -f -H $HOSTADDRESS$ -C $ARG1$',1,'1','1','2017-04-25 15:33:21',0,1),(68,'check_snmp_linux_disk','$USER1$/check_snmp_storage.pl -f -H $HOSTADDRESS$ -C $ARG1$ -w 80 -c 90 -m /',1,'1','1','2017-04-06 16:54:32',0,1),(71,'check_snmp_linux_load','$USER1$/check_snmp_load_final.pl -T netsl -w 6,5,4 -c 8,7,6 -f -H $HOSTADDRESS$ -C $ARG1$',1,'1','1','2017-04-25 15:33:38',0,1),(72,'check_snmp_linux_memory','$USER1$/check_snmp_mem.pl -w 99,20 -c 100,30 -f -H $HOSTADDRESS$ -C $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(73,'check_snmp_linux_memory_detailed','$USER1$/check_netsnmp_memory.pl -H $HOSTADDRESS$ -C $ARG1$ -a \"total_free,%avail_real,%avail_swap,%buffer_real,user,%user_real,avail_swap,%used_real,used_swap,total,%cached_real,cached,total_swap,buffer,min_swap,avail_real,total_real,%used_swap\" -w \',,,,,,,,,,,,,,,,,\' -c \',,,,,,,,,,,,,,,,,,\' -f',1,'1','1','2017-04-06 16:54:32',0,1),(74,'check_snmp_linux_memory_swap','$USER1$/check_netsnmp_memory.pl -H $HOSTADDRESS$ -C $ARG1$ -a \"%used_swap,used_swap,total_swap\" -w $ARG2$ -c $ARG3$ -f',1,'1','1','2017-04-06 16:54:32',0,1),(75,'check_snmp_linux_memory_user','$USER1$/check_netsnmp_memory.pl -H $HOSTADDRESS$ -C $ARG1$ -a \"%user_real,user,total_real\" -w $ARG2$ -c $ARG3$ -f',1,'1','1','2017-04-06 16:54:32',0,1),(76,'check_snmp_linux_process','$USER1$/check_snmp_process.pl -f -H $HOSTADDRESS$ -C $ARG1$ -n $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(77,'check_snmp_memory_memswap','$USER1$/check_snmp_storage_memswap.pl -H $HOSTADDRESS$ -C $ARG1$ -P $ARG2$ -w $ARG3$ -c $ARG4$ -p $ARG5$',1,'1','1','2017-04-06 16:54:32',0,1),(79,'check_snmp_proc','$USER1$/check_snmp_proc.pl -t 45 -H $HOSTADDRESS$ -C $ARG1$ $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(82,'check_snmp_storage_master','$USER1$/check_snmp_storage_master.pl -H $HOSTADDRESS$ -C $ARG1$ -P $ARG2$ -w $ARG3$ -c $ARG4$ $ARG5$',1,'1','1','2017-04-06 16:54:32',0,1),(83,'check_snmp_system','$USER1$/system_snmp_perf.pl -H $HOSTADDRESS$ -C $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(91,'check_ssh','$USER1$/check_ssh $ARG1$ $HOSTADDRESS$',1,'1','1','2017-04-06 16:54:32',0,1),(92,'check_tcp','$USER1$/check_tcp -H $HOSTADDRESS$ -p $ARG1$ $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(93,'check_udp','$USER1$/check_udp -H $HOSTADDRESS$ -p $ARG1$ $ARG2$',1,'1','1','2017-04-06 16:54:32',0,1),(94,'check_vmware_snapshots','$USER1$/check_vmware_snapshots.pl --url \'https://VCENTER-IP\' --username \'administrator@vsphere.local\' --password \'PASSWORD\' --critical $ARG1$ --warning $ARG2$ --mode $ARG3$',1,'1','1','2017-05-24 21:21:27',0,1),(97,'check-host-alive','$USER1$/check_ping -H $HOSTADDRESS$ -w 3000.0,80% -c 5000.0,100% -p 5',1,'1','1','2017-04-25 16:43:19',0,1),(110,'notify-host-by-email','/usr/bin/printf \"%b\" \"***** Nagios *****\\n\\nNotification Type: $NOTIFICATIONTYPE$\\nHost: $HOSTNAME$\\nState: $HOSTSTATE$\\nAddress: $HOSTADDRESS$\\nInfo: $HOSTOUTPUT$\\n\\nDate/Time: $LONGDATETIME$\\n\" | /bin/mail -s \"** $NOTIFICATIONTYPE$ Host Alert: $HOSTNAME$ is $HOSTSTATE$ **\" $CONTACTEMAIL$',2,'1','1','2017-04-06 16:54:32',0,1),(131,'VMware_check_esx3_test','$USER1$/check_esx3.pl -D $ARG1$ -u \'artiq@vsphere.local\' -p \'rGF$s6CuHUtd\' $ARG2$',1,'1','1','2017-12-02 14:50:58',0,1),(112,'notify-service-by-email','/usr/bin/printf \"%b\" \"***** Nagios *****\\n\\nNotification Type: $NOTIFICATIONTYPE$\\n\\nService: $SERVICEDESC$\\nHost: $HOSTALIAS$\\nAddress: $HOSTADDRESS$\\nState: $SERVICESTATE$\\n\\nDate/Time: $LONGDATETIME$\\n\\nAdditional Info:\\n\\n$SERVICEOUTPUT$\\n\" | /bin/mail -s \"** $NOTIFICATIONTYPE$ Service Alert: $HOSTALIAS$/$SERVICEDESC$ is $SERVICESTATE$ **\" $CONTACTEMAIL$',2,'1','1','2017-04-06 16:54:32',0,1),(115,'process-host-perfdata','/usr/bin/perl /usr/libexec/pnp4nagios/process_perfdata.pl -d HOSTPERFDATA',2,'1','1','2017-04-06 16:54:32',0,1),(133,'VMware_test','$USER1$/test.sh',0,'1','1','2017-12-03 01:00:18',0,1),(117,'process-service-perfdata','/usr/bin/perl /usr/libexec/pnp4nagios/process_perfdata.pl',2,'1','1','2017-04-06 16:54:32',0,1),(135,'check_disk_iops','$USER1$/check_disk_iops.pl -H $HOSTADDRESS$ -C $ARG1$ -d $ARG2$ -w $ARG3$ -c $ARG4$',1,'1','1','2018-01-31 17:11:51',0,1),(119,'ssl_cert_checker','$USER1$/check_ssl_cert.sh -w 90 -c 60 -s -H $HOSTADDRESS$ -p $ARG1$',1,'1','1','2017-04-06 16:54:32',0,1),(120,'VMWare_check_api_wrapper','$USER1$/check_vmware_api_wrapper.pl -D \"$ARG1$\" $ARG2$ $ARG3$ -H $HOSTADDRESS$ -u $USER3$ -p $USER4$ ',1,'1','1','2017-12-03 14:15:58',0,1),(121,'VMWare_check_esx','$USER1$/check_vmware_esx -D $ARG1$ -H $HOSTADDRESS$ -u \'artiq@vsphere.local\' -p \'rGF$s6CuHUtd\' $ARG2$',1,'1','1','2017-12-02 01:44:03',0,1),(122,'VMware_check_esx3','$USER1$/check_esx3.pl -D $ARG1$ -u \'artiq@vsphere.local\' -p \'rGF$s6CuHUtd\' -N $ARG2$ -l $ARG3$',1,'1','1','2017-12-02 01:44:08',0,1),(123,'VMware_check_esx3_Cluster','$USER1$/check_esx3.pl -D $ARG1$ -u \'artiq@vsphere.local\' -p \'rGF$s6CuHUtd\' -C $ARG2$ $ARG3$',1,'1','1','2017-12-02 01:44:13',0,1),(124,'VMware_check_esx3_DC','$USER1$/check_esx3.pl -D $ARG1$ -u \'artiq@vsphere.local\' -p \'rGF$s6CuHUtd\' $ARG2$',1,'1','1','2017-12-02 01:44:16',0,1);
/*!40000 ALTER TABLE `tbl_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_configtarget`
--

DROP TABLE IF EXISTS `tbl_configtarget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_configtarget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ssh_key_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `basedir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hostconfig` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceconfig` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `backupdir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hostbackup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `servicebackup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nagiosbasedir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `importdir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picturedir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commandfile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binaryfile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pidfile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conffile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `access_group` int(10) unsigned NOT NULL DEFAULT 0,
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `nodelete` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `target` (`target`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configtarget`
--

LOCK TABLES `tbl_configtarget` WRITE;
/*!40000 ALTER TABLE `tbl_configtarget` DISABLE KEYS */;
INSERT INTO `tbl_configtarget` VALUES (1,'localhost','Local installation','localhost','1','','','','/etc/nagiosql/','/etc/nagiosql/hosts/','/etc/nagiosql/services/','/etc/nagiosql/backup/','/etc/nagiosql/backup/hosts/','/etc/nagiosql/backup/services/','/etc/nagios/','/etc/nagios/objects/','','/var/spool/nagios/cmd/nagios.cmd','/usr/sbin/nagios','/var/run/nagios/nagios.lock','/etc/nagios/nagios.cfg',3,0,'1','1','2017-04-06 17:00:13');
/*!40000 ALTER TABLE `tbl_configtarget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactgroups` int(10) unsigned NOT NULL DEFAULT 0,
  `contactgroups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `host_notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `service_notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `host_notification_period` int(10) unsigned NOT NULL DEFAULT 0,
  `service_notification_period` int(10) unsigned NOT NULL DEFAULT 0,
  `host_notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `service_notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `host_notification_commands` int(10) unsigned NOT NULL DEFAULT 0,
  `host_notification_commands_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `service_notification_commands` int(10) unsigned NOT NULL DEFAULT 0,
  `service_notification_commands_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `can_submit_commands` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_status_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_nonstatus_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address6` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_variables` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(10) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`contact_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (3,'admin','Admin',0,2,2,2,0,0,'','',0,2,0,2,2,2,2,'nagios@localhost','','','','','','','','',0,1,2,'1','1','2017-12-01 18:58:36',0,1);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contactgroup`
--

DROP TABLE IF EXISTS `tbl_contactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contactgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contactgroup_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `members` int(10) unsigned NOT NULL DEFAULT 0,
  `contactgroup_members` int(10) unsigned NOT NULL DEFAULT 0,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(10) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`contactgroup_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contactgroup`
--

LOCK TABLES `tbl_contactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_contactgroup` DISABLE KEYS */;
INSERT INTO `tbl_contactgroup` VALUES (1,'admins','Nagios Administrators',1,0,'1','1','2017-04-25 16:15:06',0,1),(2,'all','Everybody',0,0,'1','1','2017-04-06 16:56:19',0,1);
/*!40000 ALTER TABLE `tbl_contactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contacttemplate`
--

DROP TABLE IF EXISTS `tbl_contacttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contacttemplate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactgroups` int(10) unsigned NOT NULL DEFAULT 0,
  `contactgroups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `host_notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `service_notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `host_notification_period` int(11) NOT NULL DEFAULT 0,
  `service_notification_period` int(11) NOT NULL DEFAULT 0,
  `host_notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `service_notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `host_notification_commands` int(10) unsigned NOT NULL DEFAULT 0,
  `host_notification_commands_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `service_notification_commands` int(10) unsigned NOT NULL DEFAULT 0,
  `service_notification_commands_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `can_submit_commands` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_status_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_nonstatus_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address6` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_variables` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(10) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`template_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contacttemplate`
--

LOCK TABLES `tbl_contacttemplate` WRITE;
/*!40000 ALTER TABLE `tbl_contacttemplate` DISABLE KEYS */;
INSERT INTO `tbl_contacttemplate` VALUES (1,'generic-contact','',0,2,2,2,1,1,'d,u,r,f,s','w,u,c,r,f,s',1,2,1,2,2,2,2,'','','','','','','','',0,0,2,'0','1','2017-04-06 16:55:46',0,1);
/*!40000 ALTER TABLE `tbl_contacttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_datadomain`
--

DROP TABLE IF EXISTS `tbl_datadomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_datadomain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `targets` int(10) unsigned NOT NULL,
  `version` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `enable_common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `utf8_decode` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `access_group` int(10) unsigned NOT NULL DEFAULT 0,
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `nodelete` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_datadomain`
--

LOCK TABLES `tbl_datadomain` WRITE;
/*!40000 ALTER TABLE `tbl_datadomain` DISABLE KEYS */;
INSERT INTO `tbl_datadomain` VALUES (0,'common','Global common domain',0,3,0,0,0,'1','1','2017-04-06 16:53:33'),(1,'localhost','Local installation',1,3,1,0,0,'1','1','2017-04-06 16:53:33');
/*!40000 ALTER TABLE `tbl_datadomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_group`
--

DROP TABLE IF EXISTS `tbl_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_group`
--

LOCK TABLES `tbl_group` WRITE;
/*!40000 ALTER TABLE `tbl_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_host`
--

DROP TABLE IF EXISTS `tbl_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_host` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parents` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `parents_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `hostgroups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_command` text COLLATE utf8_unicode_ci NOT NULL,
  `use_template` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `initial_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `max_check_attempts` int(11) DEFAULT NULL,
  `check_interval` int(11) DEFAULT NULL,
  `retry_interval` int(11) DEFAULT NULL,
  `active_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `passive_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_period` int(11) NOT NULL DEFAULT 0,
  `obsess_over_host` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_freshness` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `freshness_threshold` int(11) DEFAULT NULL,
  `event_handler` int(11) NOT NULL DEFAULT 0,
  `event_handler_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `low_flap_threshold` int(11) DEFAULT NULL,
  `high_flap_threshold` int(11) DEFAULT NULL,
  `flap_detection_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `flap_detection_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `process_perf_data` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_status_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_nonstatus_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contacts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contacts_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contact_groups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contact_groups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `notification_interval` int(11) DEFAULT NULL,
  `notification_period` int(11) NOT NULL DEFAULT 0,
  `first_notification_delay` int(11) DEFAULT NULL,
  `notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `stalking_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vrml_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statusmap_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `2d_coords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `3d_coords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_variables` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(10) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`host_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_host`
--

LOCK TABLES `tbl_host` WRITE;
/*!40000 ALTER TABLE `tbl_host` DISABLE KEYS */;
INSERT INTO `tbl_host` VALUES (12,'windows-example-host','windows-host','windows-host','windows-host',0,2,1,2,'0',1,2,'',NULL,NULL,NULL,2,2,0,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,0,2,0,2,NULL,0,NULL,'',2,'','','','','','','','','','',0,'','1','1','2018-01-31 20:20:53',0,1),(13,'worker01','worker01','','127.0.0.1',0,2,1,2,'0',1,2,'',NULL,NULL,NULL,2,2,0,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,0,2,0,2,NULL,0,NULL,'',2,'','','','','','','','','','',0,'','1','1','2018-01-31 20:13:25',0,1),(14,'linux-example-host','linux-host','linux-host','linux-host',0,2,1,2,'0',1,2,'',NULL,NULL,NULL,2,2,0,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,0,2,0,2,NULL,0,NULL,'',2,'','','','','','','','','','',0,'','1','1','2018-01-31 20:20:46',0,1),(30,'esx-example-host','esx-host','esx-host','esx-host',0,2,1,2,'0',1,2,'',NULL,NULL,NULL,2,2,0,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,0,2,0,2,NULL,0,NULL,'',2,'','','','','','','','','','',0,'','1','1','2018-01-31 20:20:36',0,1);
/*!40000 ALTER TABLE `tbl_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hostdependency`
--

DROP TABLE IF EXISTS `tbl_hostdependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hostdependency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dependent_host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dependent_hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `inherits_parent` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `execution_failure_criteria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notification_failure_criteria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dependency_period` int(11) NOT NULL DEFAULT 0,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `import_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`config_name`,`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hostdependency`
--

LOCK TABLES `tbl_hostdependency` WRITE;
/*!40000 ALTER TABLE `tbl_hostdependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_hostdependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hostescalation`
--

DROP TABLE IF EXISTS `tbl_hostescalation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hostescalation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contacts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contact_groups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `first_notification` int(11) DEFAULT NULL,
  `last_notification` int(11) DEFAULT NULL,
  `notification_interval` int(11) DEFAULT NULL,
  `escalation_period` int(11) NOT NULL DEFAULT 0,
  `escalation_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `import_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`config_name`,`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hostescalation`
--

LOCK TABLES `tbl_hostescalation` WRITE;
/*!40000 ALTER TABLE `tbl_hostescalation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_hostescalation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hostextinfo`
--

DROP TABLE IF EXISTS `tbl_hostextinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hostextinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_name` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statistik_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vrml_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statusmap_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `2d_coords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `3d_coords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`host_name`,`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hostextinfo`
--

LOCK TABLES `tbl_hostextinfo` WRITE;
/*!40000 ALTER TABLE `tbl_hostextinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_hostextinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hostgroup`
--

DROP TABLE IF EXISTS `tbl_hostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hostgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostgroup_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `members` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroup_members` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`hostgroup_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hostgroup`
--

LOCK TABLES `tbl_hostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_hostgroup` DISABLE KEYS */;
INSERT INTO `tbl_hostgroup` VALUES (1,'SERVER-WINDOWS','',0,0,'','','','1','1','2017-04-06 16:56:35',0,1),(3,'ZONE_ALL','ZONE_ALL',0,0,'','','','1','1','2017-04-25 16:24:35',0,1),(4,'SERVER-LINUX','',0,0,'','','','1','1','2017-04-06 16:56:58',0,1),(7,'DashAICore','DashAICore',1,0,'','','','1','1','2017-12-01 20:34:15',0,1),(8,'SERVER-VMWARE','',0,0,'','','','1','1','2017-04-06 16:57:42',0,1);
/*!40000 ALTER TABLE `tbl_hostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hosttemplate`
--

DROP TABLE IF EXISTS `tbl_hosttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hosttemplate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parents` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `parents_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `hostgroups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_command` text COLLATE utf8_unicode_ci NOT NULL,
  `use_template` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `initial_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `max_check_attempts` int(11) DEFAULT NULL,
  `check_interval` int(11) DEFAULT NULL,
  `retry_interval` int(11) DEFAULT NULL,
  `active_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `passive_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_period` int(11) NOT NULL DEFAULT 0,
  `obsess_over_host` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_freshness` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `freshness_threshold` int(11) DEFAULT NULL,
  `event_handler` int(11) NOT NULL DEFAULT 0,
  `event_handler_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `low_flap_threshold` int(11) DEFAULT NULL,
  `high_flap_threshold` int(11) DEFAULT NULL,
  `flap_detection_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `flap_detection_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `process_perf_data` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_status_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_nonstatus_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contacts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contacts_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contact_groups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contact_groups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `notification_interval` int(11) DEFAULT NULL,
  `notification_period` int(11) NOT NULL DEFAULT 0,
  `first_notification_delay` int(11) DEFAULT NULL,
  `notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `stalking_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vrml_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statusmap_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `2d_coords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `3d_coords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_variables` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`template_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hosttemplate`
--

LOCK TABLES `tbl_hosttemplate` WRITE;
/*!40000 ALTER TABLE `tbl_hosttemplate` DISABLE KEYS */;
INSERT INTO `tbl_hosttemplate` VALUES (2,'generic-host','',0,2,0,2,'0',0,2,'',3,NULL,NULL,2,2,0,2,2,NULL,0,1,NULL,50,1,'o,d,u',1,1,1,1,2,0,2,NULL,1,NULL,'',1,'','','','','','','','','','',0,'0','1','2017-12-01 20:33:35',0,1),(13,'vmware-hypervisor','',0,2,0,2,'97',1,2,'',3,3,1,2,2,1,2,2,NULL,111,1,NULL,NULL,2,'',2,2,2,0,2,1,2,120,8,NULL,'d,u,r',2,'','','','/pnp4nagios/graph?host=$HOSTNAME$&srv=_HOST_\' class=\'tips\' rel=\'/pnp4nagios/popup?host=$HOSTNAME$&srv=_HOST_','vmware-logo.png','','','','','',0,'0','1','2017-04-06 16:56:35',0,1),(14,'windows-server','',0,2,1,2,'97',1,2,'',3,3,1,2,2,1,2,2,NULL,111,1,NULL,NULL,2,'',2,2,2,0,2,1,2,30,1,NULL,'d,r',2,'','','','/pnp4nagios/graph?host=$HOSTNAME$&srv=_HOST_\' class=\'tips\' rel=\'/pnp4nagios/popup?host=$HOSTNAME$&srv=_HOST_','win40.png','','','','','',0,'0','1','2017-04-06 16:56:35',0,1),(16,'linux-server','',0,2,1,2,'97',1,2,'',3,3,1,2,2,1,2,2,NULL,0,1,NULL,NULL,2,'',2,2,2,0,2,1,2,30,1,NULL,'d,r',2,'','','','/pnp4nagios/graph?host=$HOSTNAME$&srv=_HOST_\' class=\'tips\' rel=\'/pnp4nagios/popup?host=$HOSTNAME$&srv=_HOST_','win40.png','','','','','',0,'0','1','2017-12-01 20:33:23',0,1);
/*!40000 ALTER TABLE `tbl_hosttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_info`
--

DROP TABLE IF EXISTS `tbl_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `infotext` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keypair` (`key1`,`key2`,`version`,`language`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_info`
--

LOCK TABLES `tbl_info` WRITE;
/*!40000 ALTER TABLE `tbl_info` DISABLE KEYS */;
INSERT INTO `tbl_info` VALUES (1,'domain','domain','all','default','Common name of this domain. This field is for internal use only.'),(2,'domain','basedir','all','default','<p>Absolute path to your NagiosQL configuration directory.<br><br>Examples:<br>/etc/nagiosql/ <br>/usr/local/nagiosql/etc/<br><br>Be sure, that your configuration path settings are matching with your nagios.cfg! (cfg_file=<span style=\"color: red;\">/etc/nagiosql</span>/timeperiods.cfg)</p>'),(3,'domain','hostdir','all','default','NagiosQL writes one configuration file for every host. It is useful to store this files inside an own subdirectory below your Nagios configuration path.<br><br>Examples:<br>/etc/nagios/hosts <br>/usr/local/nagios/etc/hosts<br><br>Be sure, that your configuration settings are matching with your nagios.cfg!<br> (cfg_dir=<font color=\"red\">/etc/nagios/hosts</font>)'),(4,'domain','servicedir','all','default','NagiosQL writes services grouped into files identified by the service configuration names. It is useful to store this files inside an own subdirectory below your Nagios configuration path.<br><br>Examples:<br>/etc/nagios/services <br>/usr/local/nagios/etc/services<br><br>Be sure, that your configuration settings are matching with your nagios.cfg!<br> (cfg_dir=<font color=\"red\">/etc/nagios/services</font>)'),(5,'domain','backupdir','all','default','Absolute path to your NagiosQL configuration backup directory.<br><br>Examples:<br>/etc/nagios/backup <br>/usr/local/nagios/etc/backup<br><br>This directory is for internal configuration backups of NagiosQL and is not used by Nagios itself. '),(6,'domain','backuphostdir','all','default','Absolute path to your NagiosQL host configuration backup directory.<br><br>Examples:<br>/etc/nagios/backup/hosts <br>/usr/local/nagios/etc/backup/hosts<br><br>This directory is for internal configuration backups of NagiosQL only and is not used by Nagios itself.'),(7,'domain','backupservicedir','all','default','Absolute path to your NagiosQL service configuration backup directory.<br><br>Examples:<br>/etc/nagios/backup/services <br>/usr/local/nagios/etc/backup/services<br><br>This directory is for internal configuration backups of NagiosQL only and is not used by Nagios itself.'),(8,'domain','commandfile','all','default','Absolute path to your Nagios command file.<br><br>Examples:<br>/var/spool/nagios/nagios.cmd<br>/usr/local/nagios/var/rw/nagios.cmd<br><br>Be sure, that your command file path settings are matching with your nagios.cfg! (command_file=<font color=\"red\">/var/spool/nagios/nagios.cmd</font>)<br>(check_external_commands=1)<br><br>\r\nThis is used to reload Nagios directly from NagiosQL after changing a configuration.'),(9,'common','accesskeys','all','default','<p><strong>Access key/keyholes</strong></p>\r\n<p>NagiosQL uses a very simplified access control mechanism by using up to 8 keys.</p>\r\n<p>To access a secure object (menu, domain), a user must have a key for every defined keyhole.</p>\r\n<p><em>Example:</em></p>\r\n<p>User A has key 1,2,5,7 (can be defined in user management)<br>User B has key 3,5,7,8 (can be defined in user management)</p>\r\n<p>Menu 1 has keyhole 3,5<br>Menu 2 has keyhole 2,5,7<br>Menu 3 has no keyhole<br>Menu 4 has keyhole 4<br><br>User A has access to menu 2 and menu 3 (key 3 for menu 1 and key 4 for menu 4 are missing)<br>User B has access to menu 1 and menu 3 (key 2 for menu 2 and key 4 for menu 4 are missing)</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),(10,'user','webserverauth','all','default','<p><strong>User - webserver authentification</strong></p>\r\n<p>If your webserver uses authentification and the NagiosQL user name is the same which is actually logged in - the NagiosQL login process will passed. This means, that NagiosQL no longer shows a login page if this user is already logged in by webserver authentification.</p>'),(11,'domain','nagiosbasedir','all','default','<p>Absolute path to your Nagios configuration directory.<br><br>Examples:<br>/etc/nagios/ <br>/usr/local/nagios/etc/</p>\r\n<p>Be sure, that your <span style=\"color: #ff0000;\">nagios.cfg</span> and <span style=\"color: #ff0000;\">cfg.cfg</span> ist located inside this directory. NagiosQL uses this to handle this two files.</p>'),(12,'domain','importdir','all','default','<p>Absolute path to your configuration import directory.<br><br>Examples:<br>/etc/nagiosql/import/ <br>/usr/local/nagios/etc/import/</p>\r\n<p>You can use this directory to store old or example configuration files in it which should be accessable by the importer of NagiosQL.</p>'),(13,'domain','binary','all','default','<p>Absolute path to your Nagios binary file.<br><br>Examples:<br>/usr/bin/nagios<br>/usr/local/nagios/bin/nagios<br><br> This is used to verify your configuration.</p>'),(14,'domain','pidfile','all','default','<p>Absolute path to your Nagios process file.<br><br>Examples:<br>/var/run/nagios/nagios.pid<br>/var/run/nagios/nagios.lock<br><br> This is used to check if nagios is running before sending a reload command to the nagios command file.</p>'),(15,'domain','version','all','default','<p>The nagios version which is running in this domain.</p>\r\n<p>Be sure you select the correct version here - otherwise not all configuration options are available or not supported options are shown.</p>\r\n<p>You can change this with a running configuration - NagiosQL will then upgrade or downgrade your configuration. Don\'t forget to write your complete configuration after a version change!</p>'),(16,'host','hostname','all','default','<p><strong>Host - host name</strong><br><br>This directive is used to define a short name used to identify the host. It is used in host group and service definitions to reference this particular host. Hosts can have multiple services (which are monitored) associated with them. When used properly, the $HOSTNAME$ macro will contain this short name.</p>\r\n<p><em>Parameter name:</em> host_name<br><em>Required:</em> yes</p>'),(17,'host','alias','all','default','<p><strong>Host - alias</strong><br><br>This directive is used to define a longer name or description used to identify the host. It is provided in order to allow you to more easily identify a particular host. When used properly, the $HOSTALIAS$ macro will contain this alias/description.</p>\r\n<p><em>Parameter name:</em> alias<br><em>Required:</em> yes</p>'),(18,'host','address','all','default','<p><strong>Host - address</strong></p>\r\n<p>This directive is used to define the address of the host. Normally, this is an IP address, although it could really be anything you want (so long as it can be used to check the status of the host). You can use a FQDN to identify the host instead of an IP address, but if DNS services are not availble this could cause problems. When used properly, the $HOSTADDRESS$ macro will contain this address.</p>\r\n<p><strong>Note:</strong> If you do not specify an address directive in a host definition, the name of the host will be used as its address. A word of caution about doing this, however - if DNS fails, most of your service checks will fail because the plugins will be unable to resolve the host name.</p>\r\n<p><em>Parameter name:</em> address<br><em>Required:</em> yes</p>'),(19,'host','display_name','all','default','<p><strong>Host - display name</strong></p>\r\n<p>This directive is used to define an alternate name that should be displayed in the web interface for this host. If not specified, this defaults to the value you specify for the <em>host_name</em> directive.</p>\r\n<p><strong>Note:</strong> The current CGIs do not use this option, although future versions of the web interface will.</p>\r\n<p><em>Parameter name:</em> display_name<br><em>Required:</em> no</p>'),(20,'host','parents','all','default','<p><strong>Host - parents</strong></p>\r\n<p>This directive is used to define a comma-delimited list of short names of the \"parent\" hosts for this particular host. Parent hosts are typically routers, switches, firewalls, etc. that lie between the monitoring host and a remote hosts. A router, switch, etc. which is closest to the remote host is considered to be that host\'s \"parent\". Read the \"Determining Status and Reachability of Network Hosts\" document for more information.</p>\r\n<p>If this host is on the same network segment as the host doing the monitoring (without any intermediate routers, etc.) the host is considered to be on the local network and will not have a parent host. Leave this value blank if the host does not have a parent host (i.e. it is on the same segment as the Nagios host). The order in which you specify parent hosts has no effect on how things are monitored.</p>\r\n<p><em>Parameter name:</em> parents<br><em>Required:</em> no</p>'),(21,'host','hostgroups','all','default','<p><strong>Host - hostgroup names</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the hostgroup(s) that the host belongs to. Multiple hostgroups should be separated by commas. This directive may be used as an alternative to (or in addition to) using the members directive in hostgroup definitions.<span style=\"color: #ff0000;\"><span style=\"color: #000000;\"> </span></span></p>\r\n<p><span style=\"color: #ff0000;\"><span style=\"color: #000000;\"><strong>NagiosQL:</strong> If a hostgroup is defined here - this host will <span style=\"color: #ff0000;\">not be selected</span> inside the member field of the same hostgroup definition! <br></span></span></p>\r\n<p><em>Parameter name:</em> hostgroups<br><em>Required:</em> no</p>'),(22,'common','tploptions','3','default','<p><strong>Cancelling Inheritance of String Values</strong></p>\r\n<p>In some cases you may not want your host, service, or contact definitions to inherit values of string variables from the templates they reference. If this is the case, you can specify \"<strong>null</strong>\" as the value of the variable that you do not want to inherit.</p>\r\n<p><strong><br>Additive Inheritance of String Values</strong></p>\r\n<p>Nagios gives preference to local variables instead of values inherited from templates. In most cases local variable values override those that are defined in templates. In some cases it makes sense to allow Nagios to use the values of inherited <em>and</em> local variables together.</p>\r\n<p>This \"additive inheritance\" can be accomplished by prepending the local variable value with a plus sign (<strong>+</strong>).  This features is only available for standard (non-custom) variables that contain string values.</p>'),(23,'host','check_command','all','default','<p><strong>Host - check command</strong><br><br>This directive is used to specify the <em>short name</em> of the command that should be used to check if the host is up or down. Typically, this command would try and ping the host to see if it is \"alive\". The command must return a status of OK (0) or Nagios will assume the host is down.</p>\r\n<p>If you leave this argument blank, the host will <em>not</em> be actively checked. Thus, Nagios will likely always assume the host is up (it may show up as being in a \"PENDING\" state in the web interface). This is useful if you are monitoring printers or other devices that are frequently turned off. The maximum amount of time that the notification command can run is controlled by the host_check_timeout option.</p>\r\n<p><em>Parameter name:</em> check_command<br><em>Required:</em> no</p>'),(24,'host','arguments','all','default','<p><strong>Host - arguments</strong></p>\r\n<p>The values defined here will replace the according argument variable behind the selected command. Up to 8 argument variables are supported. Be sure, that you defines a valid value for each required argument variable.</p>'),(25,'host','templateadd','all','default','<p><strong>Host - Templates</strong></p>\r\n<p>You can add one or more host templates to a host configuration. Nagios will add the definitions from each template to a host configuration.</p>\r\n<p>If you add more than one template - the sort order will be used to overwrite configuration items which are defined inside templates before.</p>\r\n<p>The host configuration itselves will overwrite all values which are defined in templates before and pass all values which are not defined.</p>'),(26,'host','initial_state','3','default','<p><strong>Host - initial state</strong></p>\r\n<p>By default Nagios will assume that all hosts are in UP states when in starts. You can override the initial state for a host by using this directive. Valid options are: <strong><br>o</strong> = UP, <br><strong>d</strong> = DOWN, and <br><strong>u</strong> = UNREACHABLE.</p>\r\n<p><em>Parameter name:</em> initial_state<em><br>Required:</em> no</p>\r\n<p>&nbsp;</p>'),(27,'host','retry_interval','3','default','<p><strong>Host - retry interval</strong></p>\r\n<p>This directive is used to define the number of \"time units\" to wait before scheduling a re-check of the hosts. Hosts are rescheduled at the retry interval when they have changed to a non-UP state. Once the host has been retried <strong>max_check_attempts</strong> times without a change in its status, it will revert to being scheduled at its \"normal\" rate as defined by the <strong>check_interval</strong> value. Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes.  More information on this value can be found in the check scheduling documentation.</p>\r\n<p><em>Parameter name:</em> retry_interval<em><br>Required:</em> no</p>'),(28,'host','max_check_attempts','all','default','<p><strong>Host - max check attempts</strong></p>\r\n<p>This directive is used to define the number of times that Nagios will retry the host check command if it returns any state other than an OK state. Setting this value to 1 will cause Nagios to generate an alert without retrying the host check again. Note: If you do not want to check the status of the host, you must still set this to a minimum value of 1. To bypass the host check, just leave the <em>check_command</em> option blank.</p>\r\n<p><em>Parameter name:</em> max_check_attempts<em><br>Required:</em> yes</p>'),(29,'host','check_interval','all','default','<p><strong>Host - check interval</strong></p>\r\n<p>This directive is used to define the number of \"time units\" between regularly scheduled checks of the host. Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes.  More information on this value can be found in the check scheduling documentation.</p>\r\n<p><em>Parameter name:</em> check_interval<em><br>Required:</em> no</p>'),(30,'host','active_checks_enabled','all','default','<p><strong>Host - active checks enabled<br></strong></p>\r\n<p>This directive is used to determine whether or not active checks (either regularly scheduled or on-demand) of this host are enabled. Values: 0 = disable active host checks, 1 = enable active host checks.</p>\r\n<p><em>Parameter name:</em> active_checks_enabled<br><em>Required:</em> no</p>'),(31,'host','passive_checks_enabled','all','default','<p><strong>Host - passive checks enabled<br> </strong></p>\r\n<p>This directive is used to determine whether or not passive checks are enabled for this host. Values: 0 = disable passive host checks, 1 = enable passive host checks.</p>\r\n<p><em>Parameter name:</em> passive_checks_enabled<br> <em>Required:</em> no</p>'),(32,'host','check_period','all','default','<p><strong>Host - check period<br> </strong></p>\r\n<p>This directive is used to specify the short name of the time period during which active checks of this host can be made.</p>\r\n<p><em>Parameter name:</em> check_period<br> <em>Required:</em> yes</p>'),(33,'host','freshness_threshold','all','default','<p><strong>Host - freshness threshold<br> </strong></p>\r\n<p>This directive is used to specify the freshness threshold (in seconds) for this host. If you set this directive to a value of 0, Nagios will determine a freshness threshold to use automatically.</p>\r\n<p><em>Parameter name:</em> freshness_threshold<br> <em>Required:</em> no</p>'),(34,'host','check_freshness','all','default','<p><strong>Host - check freshness<br> </strong></p>\r\n<p>This directive is used to determine whether or not freshness checks are enabled for this host. Values: 0 = disable freshness checks, 1 = enable freshness checks.</p>\r\n<p><em>Parameter name:</em> check_freshness<br> <em>Required:</em> no</p>'),(35,'host','obsess_over_host','all','default','<p><strong>Host - obsess over host<br> </strong></p>\r\n<p>This directive determines whether or not checks for the host will be \"obsessed\" over using the ochp_command.</p>\r\n<p><em>Parameter name:</em> obsess_over_host<br> <em>Required:</em> no</p>'),(36,'host','event_handler','all','default','<p><strong>Host - event handler<br> </strong></p>\r\n<p>This directive is used to specify the <em>short name</em> of the command that should be run whenever a change in the state of the host is detected (i.e. whenever it goes down or recovers). Read the documentation on event handlers for a more detailed explanation of how to write scripts for handling events. The maximum amount of time that the event handler command can run is controlled by the event_handler_timeout option.</p>\r\n<p><em>Parameter name:</em> event_handler<br> <em>Required:</em> no</p>'),(37,'host','event_handler_enabled','all','default','<p><strong>Host - event handler enabled<br> </strong></p>\r\n<p>This directive is used to determine whether or not the event handler for this host is enabled. Values: 0 = disable host event handler, 1 = enable host event handler.</p>\r\n<p><em>Parameter name:</em> event_handler_enabled<br> <em>Required:</em> no</p>'),(38,'host','low_flap_threshold','all','default','<p><strong>Host - low flap threshold<br> </strong></p>\r\n<p>This directive is used to specify the low state change threshold used in flap detection for this host. If you set this directive to a value of 0, the program-wide value specified by the low_host_flap_threshold directive will be used.</p>\r\n<p><em>Parameter name:</em> low_flap_threshold<br> <em>Required:</em> no</p>'),(39,'host','high_flap_threshold','all','default','<p><strong>Host - high flap threshold<br> </strong></p>\r\n<p>This directive is used to specify the high state change threshold used in flap detection for this host. If you set this directive to a value of 0, the program-wide value specified by the high_host_flap_threshold directive will be used.</p>\r\n<p><em>Parameter name:</em> high_flap_threshold<br> <em>Required:</em> no</p>'),(40,'host','flap_detection_enabled','all','default','<p><strong>Host - flap detection enabled<br> </strong></p>\r\n<p>This directive is used to determine whether or not flap detection is enabled for this host. Values: 0 = disable host flap detection, 1 = enable host flap detection.</p>\r\n<p><em>Parameter name:</em> flap_detection_enabled<br> <em>Required:</em> no</p>'),(41,'host','flap_detection_options','3','default','<p><strong>Host - flap detection options<br> </strong></p>\r\n<p>This directive is used to determine what host states the flap detection logic will use for this host.  Valid options are a combination of one or more of the following: <strong><br>o</strong> = UP states, <br><strong>d</strong> = DOWN states, <br><strong>u</strong> =  UNREACHABLE states.</p>\r\n<p><em>Parameter name:</em> flap_detection_options<br> <em>Required:</em> no</p>'),(42,'host','retain_status_information','all','default','<p><strong>Host - retain status information<br></strong></p>\r\n<p>This directive is used to determine whether or not status-related information about the host is retained across program restarts. This is only useful if you have enabled state retention using the retain_state_information directive.  Value: 0 = disable status information retention, 1 = enable status information retention.</p>\r\n<p><em>Parameter name:</em> retain_status_information<em><br>Required:</em> no</p>'),(43,'host','retain_nonstatus_information','all','default','<p><strong>Host - retain nonstatus information<br></strong></p>\r\n<p>This directive is used to determine whether or not non-status information about the host is retained across program restarts. This is only useful if you have enabled state retention using the retain_state_information directive.  Value: 0 = disable non-status information retention, 1 = enable non-status information retention.</p>\r\n<p><em>Parameter name:</em> retain_nonstatus_information<em><br>Required:</em> no</p>'),(45,'host','contacts','3','default','<p><strong>Host - contacts<br></strong></p>\r\n<p>This is a list of the <em>short names</em> of the contacts that should be notified whenever there are problems (or recoveries) with this host. Multiple contacts should be separated by commas. Useful if you want notifications to go to just a few people and don\'t want to configure contact groups.  You must specify at least one contact or contact group in each host definition.</p>\r\n<p><em>Parameter name:</em> <em>contacs<br>Required:</em> yes (at least one contact <strong>or</strong> contact group)</p>'),(46,'host','contactgroups','all','default','<p><strong>Host - contact groups<br></strong></p>\r\n<p>This is a list of the <em>short names</em> of the contact groups that should be notified whenever there are problems (or recoveries) with this host. Multiple contact groups should be separated by commas. You must specify at least one contact or contact group in each host definition.</p>\r\n<p><em>Parameter name:</em> contact_groups<br><em>Required:</em> yes (at least one contact <strong>or</strong> contact group)</p>'),(47,'host','notification_period','all','default','<p><strong>Host - notification period<br></strong></p>\r\n<p>This directive is used to specify the short name of the time period during which notifications of events for this host can be sent out to contacts. If a host goes down, becomes unreachable, or recoveries during a time which is not covered by the time period, no notifications will be sent out.</p>\r\n<p><em>Parameter name:</em> notification_period<br><em>Required:</em> yes</p>'),(48,'host','notification_options','all','default','<p><strong>Host - notification options<br></strong></p>\r\n<p>This directive is used to determine when notifications for the host should be sent out. Valid options are a combination of one or more of the following: <br><strong>d</strong> = send notifications on a DOWN state, <br><strong>u</strong> = send notifications on an UNREACHABLE state, <strong><br>r</strong> = send notifications on recoveries (OK state), <br><strong>f</strong> = send notifications when the host starts and stops flapping, and <br><strong>s</strong> = send notifications when scheduled downtime starts and ends.  <br>If you do not specify any notification options, Nagios will assume that you want notifications to be sent out for all possible states.</p>\r\n<p>Example: If you specify <strong>d,r</strong> in this field, notifications will only be sent out when the host goes DOWN and when it recovers from a DOWN state.</p>\r\n<p><em>Parameter name:</em> notification_options<br><em>Required:</em> yes</p>'),(51,'host','notification_enabled','all','default','<p><strong>Host - notification enabled<br></strong></p>\r\n<p>This directive is used to determine whether or not notifications for this host are enabled. Values: 0 = disable host notifications, 1 = enable host notifications.</p>\r\n<p><em>Parameter name:</em> notification_enabled<br><em>Required:</em> yes</p>'),(52,'host','stalking_options','all','default','<p><strong>Host - stalking options<br></strong></p>\r\n<p>This directive determines which host states \"stalking\" is enabled for. Valid options are a combination of one or more of the following: <strong><br>o</strong> = stalk on UP states, <br><strong>d</strong> = stalk on DOWN states, and <br><strong>u</strong> = stalk on UNREACHABLE states.</p>\r\n<p><em>Parameter name:</em> stalking_options<br><em>Required:</em> yes</p>'),(53,'host','process_perf_data','all','default','<p><strong>Host - process performance data<br></strong></p>\r\n<p>This directive is used to determine whether or not the processing of performance data is enabled for this host. Values: 0 = disable performance data processing, 1 = enable performance data processing.</p>\r\n<p><em>Parameter name:</em> process_perf_data<em><br>Required:</em> no</p>'),(54,'host','notification_intervall','all','default','<p><strong>Host - notification interval<br></strong></p>\r\n<p>This directive is used to define the number of \"time units\" to wait before re-notifying a contact that this service is <em>still</em> down or unreachable.  Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes.  If you set this value to 0, Nagios will <em>not</em> re-notify contacts about problems for this host - only one problem notification will be sent out.</p>\r\n<p><em>Parameter name:</em> notification_interval<br><em>Required:</em> yes</p>'),(55,'host','first_notification_delay','all','default','<p><strong>Host - first notification delay<br></strong></p>\r\n<p>This directive is used to define the number of \"time units\" to wait before sending out the first problem notification when this host enters a non-UP state. Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes. If you set this value to 0, Nagios will start sending out notifications immediately.</p>\r\n<p><em>Parameter name:</em> first_notification_delay<br><em>Required:</em> no</p>'),(56,'host','notes','3','default','<p><strong>Host - notes<br> </strong></p>\r\n<p>This directive is used to define an optional string of notes pertaining to the host. If you specify a note here, you will see the it in the extended information CGI (when you are viewing information about the specified host).</p>\r\n<p><em>Parameter name:</em> notes<br> <em>Required:</em> no</p>'),(57,'host','vrml_image','3','default','<p><strong>Host - vrml image<br> </strong></p>\r\n<p>This variable is used to define the name of a GIF, PNG, or JPG image that should be associated with this host. This image will be used as the texture map for the specified host in the statuswrl CGI.  Unlike the image you use for the <em>icon_image</em> variable, this one should probably <em>not</em> have any transparency.</p>\r\n<p>If it does, the host object will look a bit wierd.  Images for hosts are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> vrml_image<br> <em>Required:</em> no</p>'),(58,'host','notes_url','3','default','<p><strong>Host - notes url<br> </strong></p>\r\n<p>This variable is used to define an optional URL that can be used to provide more information about the host. If you specify an URL, you will see a red folder icon in the CGIs (when you are viewing host information) that links to the URL you specify here. Any valid URL can be used.</p>\r\n<p>If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>). This can be very useful if you want to make detailed information on the host, emergency contact methods, etc. available to other support staff.</p>\r\n<p><em>Parameter name:</em> notes_url<br> <em>Required:</em> no</p>'),(59,'host','status_image','3','default','<p><strong>Host - statusmap image<br> </strong></p>\r\n<p>This variable is used to define the name of an image that should be associated with this host in the statusmap CGI. You can specify a JPEG, PNG, and GIF image if you want, although I would strongly suggest using a GD2 format image, as other image formats will result in a lot of wasted CPU time when the statusmap image is generated.</p>\r\n<p>GD2 images can be created from PNG images by using the <strong>pngtogd2</strong> utility supplied with Thomas Boutell\'s gd library .  The GD2 images should be created in <em>uncompressed</em> format in order to minimize CPU load when the statusmap CGI is generating the network map image.</p>\r\n<p>The image will look best if it is 40x40 pixels in size. You can leave these option blank if you are not using the statusmap CGI. Images for hosts are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> statusmap_image<br> <em>Required:</em> no</p>'),(60,'host','action_url','3','default','<p><strong>Host - action url<br> </strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more actions to be performed on the host. If you specify an URL, you will see a red \"splat\" icon in the CGIs (when you are viewing host information) that links to the URL you specify here. Any valid URL can be used.</p>\r\n<p>If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>).</p>\r\n<p><em>Parameter name:</em> action_url<br> <em>Required:</em> no</p>'),(61,'host','icon_image','3','default','<p><strong>Host - icon image<br> </strong></p>\r\n<p>This variable is used to define the name of a GIF, PNG, or JPG image that should be associated with this host. This image will be displayed in the various places in the CGIs. The image will look best if it is 40x40 pixels in size. Images for hosts are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> icon_image<br> <em>Required:</em> no</p>'),(62,'host','2d_coords','3','default','<p><strong>Host - 2D coords<br> </strong></p>\r\n<p>This variable is used to define coordinates to use when drawing the host in the statusmap CGI. Coordinates should be given in positive integers, as they correspond to physical pixels in the generated image. The origin for drawing (0,0) is in the upper left hand corner of the image and extends in the positive x direction (to the right) along the top of the image and in the positive y direction (down) along the left hand side of the image.</p>\r\n<p>For reference, the size of the icons drawn is usually about 40x40 pixels (text takes a little extra space). The coordinates you specify here are for the upper left hand corner of the host icon that is drawn. Note: Don\'t worry about what the maximum x and y coordinates that you can use are. The CGI will automatically calculate the maximum dimensions of the image it creates based on the largest x and y coordinates you specify.</p>\r\n<p><em>Parameter name:</em> 2d_coords<br> <em>Required:</em> no</p>'),(63,'host','icon_image_alt_text','3','default','<p><strong>Host - icon image alt<br> </strong></p>\r\n<p>This variable is used to define an optional string that is used in the ALT tag of the image specified by the <em>icon image</em> <em></em> argument.</p>\r\n<p><em>Parameter name:</em> icon_image_alt<br> <em>Required:</em> no</p>'),(64,'host','3d_coords','3','default','<p><strong>Host - 3D coords<br> </strong></p>\r\n<p>This variable is used to define coordinates to use when drawing the host in the statuswrl CGI. Coordinates can be positive or negative real numbers. The origin for drawing is (0.0,0.0,0.0). For reference, the size of the host cubes drawn is 0.5 units on each side (text takes a little more space). The coordinates you specify here are used as the center of the host cube.</p>\r\n<p><em>Parameter name:</em> 3d_coords<br> <em>Required:</em> no</p>'),(65,'common','free_variables_name','all','default','<p><strong>Free variables (custom object variables)<br></strong></p>\r\n<p>NagiosQL supports custom object variables.</p>\r\n<p>There are a few important things that you should note about custom variables:</p>\r\n<ul>\r\n<li>Custom variable names must begin with an underscore (_) to prevent name collision with standard variables </li>\r\n<li>Custom variable names are case-insensitive </li>\r\n<li>Custom variables are inherited from object templates like normal variables </li>\r\n<li>Scripts can reference custom variable values with macros and environment variables </li>\r\n</ul>\r\n<p><em>Examples</em></p>\r\n<p><span style=\"font-family: courier new,courier;\">define host{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; host_name	linuxserver<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _mac_address	00:06:5B:A6:AD:AA	; &lt;-- Custom MAC_ADDRESS variable<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _rack_number	R32		; &lt;-- Custom RACK_NUMBER variable<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ...<br>}</span></p>'),(66,'common','free_variables_value','all','default','<p><strong>Free variables (custom object variables)<br></strong></p>\r\n<p>NagiosQL supports custom object variables.</p>\r\n<p>There are a few important things that you should note about custom variables:</p>\r\n<ul>\r\n<li>Custom variable names must begin with an underscore (_) to prevent name collision with standard variables </li>\r\n<li>Custom variable names are case-insensitive </li>\r\n<li>Custom variables are inherited from object templates like normal variables </li>\r\n<li>Scripts can reference custom variable values with macros and environment variables </li>\r\n</ul>\r\n<p><em>Examples</em></p>\r\n<p><span style=\"font-family: courier new,courier;\">define host{<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; host_name	linuxserver<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _mac_address	00:06:5B:A6:AD:AA	; &lt;-- Custom MAC_ADDRESS variable<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _rack_number	R32		; &lt;-- Custom RACK_NUMBER variable<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ...<br> }</span></p>'),(67,'host','genericname','all','default','<p><strong>Host - generic name</strong></p>\r\n<p>It is possible to use a host definition as a template for other host configurations. If this definition should be used as template, a generic template name must be defined.</p>\r\n<p>We do not recommend to do this - it is more open to define a separate host template than to use this option.</p>\r\n<p><em>Parameter name:</em> name<em><br>Required:</em> no</p>'),(68,'service','config_name','all','default','<p><strong>Service - config name</strong></p>\r\n<p>This directive is used to specify a common config name for a group of service definitions. This is a NagiosQL parameter and it will not be written to the configuration file. Every service definitions with the same configuration name will stored in one file. The configuration name is also the file name of this configuration set.</p>'),(69,'service','hosts','all','default','<p><strong>Service - host name<br> </strong></p>\r\n<p>This directive is used to specify the <em>short name(s)</em> of the host(s) that the service \"runs\" on or is associated with.</p>\r\n<p><em>Parameter name:</em> host_name<br> <em>Required:</em> yes (no, if a hostgroup is defined)</p>'),(70,'service','hostgroups','all','default','<p><strong>Service</strong><strong> - hostgroup name<br> </strong></p>\r\n<p>This directive is used to specify the <em>short name(s)</em> of the hostgroup(s) that the service \"runs\" on or is associated with. The hostgroup_name may be used instead of, or in addition to, the host_name directive.</p>\r\n<p><em>Parameter name:</em> hostgroup_name<br> <em>Required:</em> no (yes, if no host is defined)</p>'),(71,'service','service_description','all','default','<p><strong>Service</strong><strong> - service description<br> </strong></p>\r\n<p>This directive is used to define the description of the service, which may contain spaces, dashes, and colons (semicolons, apostrophes, and quotation marks should be avoided). No two services associated with the same host can have the same description. Services are uniquely identified with their <em>host_name</em> and <em>service_description</em> directives.</p>\r\n<p><em>Parameter name:</em> service_description<br> <em>Required:</em> yes</p>'),(72,'service','service_groups','all','default','<p><strong>Service</strong><strong> - servicegroups<br> </strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the servicegroup(s) that the service belongs to. Multiple servicegroups should be separated by commas. This directive may be used as an alternative to using the <em>members</em> directive in servicegroup definitions.</p>\r\n<p><span style=\"color: #ff0000;\"><span style=\"color: #000000;\"><strong>NagiosQL:</strong> If a servicegroup is defined here - this service will <span style=\"color: #ff0000;\">not be selected</span> inside the member field of the same servicegroup definition! </span></span></p>\r\n<p><em>Parameter name:</em> servicegroups<br> <em>Required:</em> no</p>'),(73,'service','display_name','all','default','<p><strong>Service</strong><strong> - display name<br> </strong></p>\r\n<p>This directive is used to define an alternate name that should be displayed in the web interface for this service. If not specified, this defaults to the value you specify for the <em>service_description</em> directive.  Note:  The current CGIs do not use this option, although future versions of the web interface will.</p>\r\n<p><em>Parameter name:</em> display_name<br> <em>Required:</em> no</p>'),(74,'service','check_command','all','default','<p><strong>Service</strong><strong> - check command<br> </strong></p>\r\n<p>This directive is used to specify the <em>short name</em> of the command that Nagios will run in order to check the status of the service. The maximum amount of time that the service check command can run is controlled by the service_check_timeout option.</p>\r\n<p><em>Parameter name:</em> check_command<br> <em>Required:</em> yes</p>'),(75,'service','argument','all','default','<p><strong>Service - arguments</strong></p>\r\n<p>The values defined here will replace the according argument variable behind the selected command. Up to 8 argument variables are supported. Be sure, that you defines a valid value for each required argument variable.</p>'),(76,'service','templateadd','all','default','<p><strong>Service - Templates</strong></p>\r\n<p>You can add one or more service templates to a service configuration. Nagios will add the definitions from each template to a service configuration.</p>\r\n<p>If you add more than one template - the sort order will be used to overwrite configuration items which are defined inside templates before.</p>\r\n<p>The host configuration itselves will overwrite all values which are defined in templates before and pass all values which are not defined.</p>'),(77,'service','initial_state','3','default','<p><strong>Service - initial state<br> </strong></p>\r\n<p>By default Nagios will assume that all services are in OK states when in starts. You can override the initial state for a service by using this directive. Valid options are: <strong><br>o</strong> = OK,<br> <strong>w</strong> = WARNING, <strong><br>u</strong> = UNKNOWN, and <strong><br>c</strong> = CRITICAL.</p>\r\n<p><em>Parameter name:</em> initial_state<br> <em>Required:</em> no</p>'),(78,'service','retry_interval','3','default','<p><strong>Service - retry interval<br> </strong></p>\r\n<p>This directive is used to define the number of \"time units\" to wait before scheduling a re-check of the service. Services are rescheduled at the retry interval when they have changed to a non-OK state. Once the service has been retried <strong>max_check_attempts</strong> times without a change in its status, it will revert to being scheduled at its \"normal\" rate as defined by the <strong>check_interval</strong> value. Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes.  More information on this value can be found in the check scheduling documentation.</p>\r\n<p><em>Parameter name:</em> retry_interval<br> <em>Required:</em> yes</p>'),(79,'service','max_check_attempts','all','default','<p><strong>Service - max check attempts<br> </strong></p>\r\n<p>This directive is used to define the number of times that Nagios will retry the service check command if it returns any state other than an OK state. Setting this value to 1 will cause Nagios to generate an alert without retrying the service check again.</p>\r\n<p><em>Parameter name:</em> max_check_attempts<br> <em>Required:</em> yes</p>'),(80,'service','check_interval','all','default','<p><strong>Service - check interval<br> </strong></p>\r\n<p>This directive is used to define the number of \"time units\" to wait before scheduling the next \"regular\" check of the service. \"Regular\" checks are those that occur when the service is in an OK state or when the service is in a non-OK state, but has already been rechecked <strong>max_check_attempts</strong> number of times.  Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes.  More information on this value can be found in the check scheduling documentation.</p>\r\n<p><em>Parameter name:</em> check_interval<br> <em>Required:</em> yes</p>'),(81,'service','active_checks_enabled','all','default','<p><strong>Service - active checks enabled<br> </strong></p>\r\n<p>This directive is used to determine whether or not active checks of this service are enabled. Values: 0 = disable active service checks, 1 = enable active service checks.</p>\r\n<p><em>Parameter name:</em> active_checks_enabled<br> <em>Required:</em> no</p>'),(82,'service','passive_checks_enabled','all','default','<p><strong>Service - passive checks enabled<br> </strong></p>\r\n<p>This directive is used to determine whether or not passive checks of this service are enabled. Values: 0 = disable passive service checks, 1 = enable passive service checks.</p>\r\n<p><em>Parameter name:</em> passive_checks_enabled<br> <em>Required:</em> no</p>'),(83,'service','parallelize_checks','2','default','<p><strong>Service - </strong><strong>parallelize check</strong></p>\r\n<p>This directive is used to determine whether or not the service check can be parallelized. By default, all service checks are parallelized. Disabling parallel checks of services can result in serious performance problems. More information on service check parallelization can be found in the nagios documentation.</p>\r\n<p>Values: 0 = service check cannot be parallelized (use with caution!), 1 = service check can be parallelized.</p>\r\n<p><em>Parameter name:</em> parallelize_check<br> <em>Required:</em> no</p>'),(84,'service','check_period','all','default','<p><strong>Service - check period<br> </strong></p>\r\n<p>This directive is used to specify the short name of the time period during which active checks of this service can be made.</p>\r\n<p><em>Parameter name:</em> check_period<br> <em>Required:</em> yes</p>'),(85,'service','freshness_threshold','all','default','<p><strong>Service - </strong><strong>freshness threshold</strong></p>\r\n<p>This directive is used to specify the freshness threshold (in seconds) for this service. If you set this directive to a value of 0, Nagios will determine a freshness threshold to use automatically.</p>\r\n<p><em>Parameter name:</em> freshness_threshold<br> <em>Required:</em> no</p>'),(86,'service','check_freshness','all','default','<p><strong>Service - </strong><strong>check freshness</strong></p>\r\n<p>This directive is used to determine whether or not freshness checks are enabled for this service. Values: 0 = disable freshness checks, 1 = enable freshness checks.</p>\r\n<p><em>Parameter name:</em> check_freshness<br> <em>Required:</em> no</p>'),(87,'service','obsess_over_service','all','default','<p><strong>Service - </strong><strong>obsess over service</strong></p>\r\n<p>This directive determines whether or not checks for the service will be \"obsessed\" over using the ocsp_command.</p>\r\n<p><em>Parameter name:</em> obsess_over_service<br> <em>Required:</em> no</p>'),(88,'service','event_handler','all','default','<p><strong>Service - </strong><strong>event handler</strong></p>\r\n<p>This directive is used to specify the <em>short name</em> of the command that should be run whenever a change in the state of the service is detected (i.e. whenever it goes down or recovers). Read the documentation on event handlers for a more detailed explanation of how to write scripts for handling events. The maximum amount of time that the event handler command can run is controlled by the event_handler_timeout option.</p>\r\n<p><em>Parameter name:</em> event_handler<br> <em>Required:</em> no</p>'),(89,'service','event_handler_enabled','all','default','<p><strong>Service - </strong><strong>event handler enabled</strong></p>\r\n<p>This directive is used to determine whether or not the event handler for this service is enabled. Values: 0 = disable service event handler, 1 = enable service event handler.</p>\r\n<p><em>Parameter name:</em> event_handler_enabled<br> <em>Required:</em> no</p>'),(90,'service','low_flap_threshold','all','default','<p><strong>Service - </strong><strong>low flap threshold</strong></p>\r\n<p>This directive is used to specify the low state change threshold used in flap detection for this service. More information on flap detection can be found in the nagios documentation.  If you set this directive to a value of 0, the program-wide value specified by the low_service_flap_threshold  directive will be used.</p>\r\n<p><em>Parameter name:</em> low_flap_threshold<br> <em>Required:</em> no</p>'),(91,'service','high_flap_threshold','all','default','<p><strong>Service - </strong><strong>high flap threshold</strong></p>\r\n<p>This directive is used to specify the high state change threshold used in flap detection for this service. More information on flap detection can be found in the nagios documentation.  If you set this directive to a value of 0, the program-wide value specified by the high_service_flap_threshold directive will be used.</p>\r\n<p><em>Parameter name:</em> high_flap_threshold<br> <em>Required:</em> no</p>'),(92,'service','flap_detection_enabled','all','default','<p><strong>Service - </strong><strong>flap detection enabled</strong></p>\r\n<p>This directive is used to determine whether or not flap detection is enabled for this service. More information on flap detection can be found in the nagios documentation. Values: 0 = disable service flap detection, 1 = enable service flap detection.</p>\r\n<p><em>Parameter name:</em> flap_detection_enabled<br> <em>Required:</em> no</p>'),(93,'service','flap_detection_options','3','default','<p><strong>Service - </strong><strong>flap detection options</strong></p>\r\n<p>This directive is used to determine what service states the flap detection logic will use for this service.  Valid options are a combination of one or more of the following: <strong><br>o</strong> = OK states, <br><strong>w</strong> = WARNING states, <br><strong>c</strong> = CRITICAL states, <br><strong>u</strong> = UNKNOWN states.</p>\r\n<p><em>Parameter name:</em> flap_detection_options<br> <em>Required:</em> no</p>'),(94,'service','retain_status_information','all','default','<p><strong>Service - </strong><strong>retain status information</strong></p>\r\n<p>This directive is used to determine whether or not status-related information about the service is retained across program restarts. This is only useful if you have enabled state retention using the retain_state_information directive.  Value: 0 = disable status information retention, 1 = enable status information retention.</p>\r\n<p><em>Parameter name:</em> retain_status_information<br> <em>Required:</em> no</p>'),(95,'service','retain_nonstatus_information','all','default','<p><strong>Service - </strong><strong>retain nonstatus information</strong></p>\r\n<p>This directive is used to determine whether or not non-status information about the service is retained across program restarts. This is only useful if you have enabled state retention using the retain_state_information directive.  Value: 0 = disable non-status information retention, 1 = enable non-status information retention.</p>\r\n<p><em>Parameter name:</em> retain_nonstatus_information<br> <em>Required:</em> no</p>'),(96,'service','process_perf_data','all','default','<p><strong>Service - </strong><strong>process perf data</strong></p>\r\n<p>This directive is used to determine whether or not the processing of performance data is enabled for this service. Values: 0 = disable performance data processing, 1 = enable performance data processing.</p>\r\n<p><em>Parameter name:</em> process_perf_data<br> <em>Required:</em> no</p>'),(97,'service','is_volatile','all','default','<p><strong>Service</strong><strong> - is volatile<br> </strong></p>\r\n<p>This directive is used to denote whether the service is \"volatile\".  Services are normally <em>not</em> volatile.  More information on volatile service and how they differ from normal services can be found in the nagios documentation.  Value: 0 = service is not volatile, 1 = service is volatile.</p>\r\n<p><em>Parameter name:</em> is_volatile<br> <em>Required:</em>no</p>'),(98,'service','contacts','3','default','<p><strong>Service - </strong><strong>contacts</strong></p>\r\n<p>This is a list of the <em>short names</em> of the contacts that should be notified whenever there are problems (or recoveries) with this service. Multiple contacts should be separated by commas. Useful if you want notifications to go to just a few people and don\'t want to configure contact groups. You must specify at least one contact or contact group in each service definition.</p>\r\n<p><em>Parameter name:</em> contacts<br> <em>Required:</em> yes (no, if a contact group is defined)</p>'),(99,'service','contactgroups','all','default','<p><strong>Service - </strong><strong>contact groups</strong></p>\r\n<p>This is a list of the <em>short names</em> of the contact groups that should be notified whenever there are problems (or recoveries) with this service. Multiple contact groups should be separated by commas. You must specify at least one contact or contact group in each service definition.</p>\r\n<p><em>Parameter name:</em> contact_groups<br> <em>Required:</em> yes (no, if a contact is defined)</p>'),(100,'service','notification_period','all','default','<p><strong>Service - </strong><strong>notification period</strong></p>\r\n<p>This directive is used to specify the short name of the time period during which notifications of events for this service can be sent out to contacts. No service notifications will be sent out during times which is not covered by the time period.</p>\r\n<p><em>Parameter name:</em> notification_period<br> <em>Required:</em> yes</p>'),(101,'service','notification_options','all','default','<p><strong>Service - </strong><strong>notification options</strong></p>\r\n<p>This directive is used to determine when notifications for the service should be sent out. Valid options are a combination of one or more of the following:<br><strong><br>w</strong> = send notifications on a WARNING state, <br><strong>u</strong> = send notifications on an UNKNOWN state, <strong><br>c</strong> = send notifications on a CRITICAL state, <br><strong>r</strong> = send notifications on recoveries (OK state), <strong><br>f</strong> = send notifications when the service starts and stops flapping, and <br><strong>s</strong> = send notifications when scheduled downtime starts and ends.</p>\r\n<p>If you do not specify any notification options, Nagios will assume that you want notifications to be sent out for all possible states.</p>\r\n<p>Example: If you specify <strong>w,r</strong> in this field, notifications will only be sent out when the service goes into a WARNING state and when it recovers from a WARNING state.</p>\r\n<p><em>Parameter name:</em> notification_options<br> <em>Required:</em> no</p>'),(102,'service','notification_intervall','all','default','<p><strong>Service - </strong><strong>notification interval</strong></p>\r\n<p>This directive is used to define the number of \"time units\" to wait before re-notifying a contact that this service is <em>still</em> in a non-OK state.  Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes.  If you set this value to 0, Nagios will <em>not</em> re-notify contacts about problems for this service - only one problem notification will be sent out.</p>\r\n<p><em>Parameter name:</em> notification_interval<br> <em>Required:</em> yes</p>'),(103,'service','first_notification_delay','all','default','<p><strong>Service - </strong><strong>first notification delay</strong></p>\r\n<p>This directive is used to define the number of \"time units\" to wait before sending out the first problem notification when this service enters a non-OK state. Unless you\'ve changed the interval_length directive from the default value of 60, this number will mean minutes. If you set this value to 0, Nagios will start sending out notifications immediately.</p>\r\n<p><em>Parameter name:</em> first_notification_delay<br> <em>Required:</em> no</p>'),(104,'service','notification_enabled','all','default','<p><strong>Service - </strong><strong>notifications enabled</strong><strong></strong></p>\r\n<p>This directive is used to determine whether or not notifications for this service are enabled. Values: 0 = disable service notifications, 1 = enable service notifications.</p>\r\n<p><em>Parameter name:</em> notifications_enabled<br> <em>Required:</em> no</p>'),(105,'service','stalking_options','all','default','<p><strong>Service - </strong><strong>stalking options</strong></p>\r\n<p>This directive determines which service states \"stalking\" is enabled for. Valid options are a combination of one or more of the following: <strong><br>o</strong> = stalk on OK states, <br><strong>w</strong> = stalk on WARNING states, <strong><br>u</strong> = stalk on UNKNOWN states, and <strong><br>c</strong> = stalk on CRITICAL states.</p>\r\n<p>More information on state stalking can be found in the nagios documentation.</p>\r\n<p><em>Parameter name:</em> stalking_options<br> <em>Required:</em> no</p>'),(106,'service','notes','3','default','<p><strong>Service - </strong><strong>notes</strong></p>\r\n<p>This directive is used to define an optional string of notes pertaining to the service. If you specify a note here, you will see the it in the extended information CGI (when you are viewing information about the specified service).</p>\r\n<p><em>Parameter name:</em> notes<br> <em>Required:</em> no</p>'),(107,'service','icon_image','3','default','<p><strong>Service - </strong><strong>icon image</strong><strong> </strong></p>\r\n<p>This variable is used to define the name of a GIF, PNG, or JPG image that should be associated with this service. This image will be displayed in the status and extended information CGIs.  The image will look best if it is 40x40 pixels in size.  Images for services are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> icon_image<br> <em>Required:</em> no</p>'),(108,'service','notes_url','3','default','<p><strong>Service - </strong><strong>notes url<br></strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more information about the service. If you specify an URL, you will see a red folder icon in the CGIs (when you are viewing service information) that links to the URL you specify here. Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>). This can be very useful if you want to make detailed information on the service, emergency contact methods, etc. available to other support staff.</p>\r\n<p><em>Parameter name:</em> notes_url<br> <em>Required:</em> no</p>'),(109,'service','icon_image_alt_text','3','default','<p><strong>Service - </strong><strong>icon image alt</strong><strong> </strong></p>\r\n<p>This variable is used to define an optional string that is used in the ALT tag of the image specified by the <em>&lt;icon_image&gt;</em> argument.  The ALT tag is used in the status, extended information and statusmap CGIs.</p>\r\n<p><em>Parameter name:</em> icon_image_alt<br> <em>Required:</em> no</p>'),(110,'service','action_url','3','default','<p><strong>Service - action</strong><strong> url<br> </strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more actions to be performed on the service. If you specify an URL, you will see a red \"splat\" icon in the CGIs (when you are viewing service information) that links to the URL you specify here. Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>).</p>\r\n<p><em>Parameter name:</em> action_url<br> <em>Required:</em> no</p>'),(111,'hostgroup','hostgroup_name','all','default','<p><strong>Hostgroup - </strong><strong>hostgroup name</strong></p>\r\n<p>This directive is used to define a short name used to identify the host group.</p>\r\n<p><em>Parameter name:</em> hostgroup_name<br> <em>Required:</em> yes</p>'),(112,'hostgroup','members','all','default','<p><strong>Hostgroup - </strong><strong>members</strong></p>\r\n<p>This is a list of the <em>short names</em> of hosts that should be included in this group. Multiple host names should be separated by commas. This directive may be used as an alternative to (or in addition to) the <em>hostgroups</em> directive in host definitions.</p>\r\n<p><strong>NagiosQL:</strong> If you select a hostgroup inside a host definition using the <em>hostgroups</em> directive in <em>host definition</em>, this host will <span style=\"color: #ff0000;\">not be selected</span> here because these are two different ways to specify a hostgroup!</p>\r\n<p><em>Parameter name:</em> members<br> <em>Required:</em> no</p>'),(113,'hostgroup','description','all','default','<p><strong>Hostgroup - </strong><strong>alias</strong></p>\r\n<p>This directive is used to define is a longer name or description used to identify the host group. It is provided in order to allow you to more easily identify a particular host group.</p>\r\n<p><em>Parameter name:</em> alias<br> <em>Required:</em> yes</p>'),(114,'hostgroup','notes','3','default','<p><strong>Hostgroup - </strong><strong>notes</strong></p>\r\n<p>This directive is used to define an optional string of notes pertaining to the host. If you specify a note here, you will see the it in the extended information CGI (when you are viewing information about the specified host).</p>\r\n<p><em>Parameter name:</em> notes<br> <em>Required:</em> no</p>'),(115,'hostgroup','notes_url','3','default','<p><strong>Hostgroup - </strong><strong>notes url<br></strong></p>\r\n<p>This variable is used to define an optional URL that can be used to provide more information about the host group. If you specify an URL, you will see a red folder icon in the CGIs (when you are viewing hostgroup information) that links to the URL you specify here. Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>). This can be very useful if you want to make detailed information on the host group, emergency contact methods, etc. available to other support staff.</p>\r\n<p><em>Parameter name:</em> notes_url<br> <em>Required:</em> no</p>'),(116,'hostgroup','action_url','3','default','<p><strong>Hostgroup - </strong><strong>action url</strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more actions to be performed on the host group. If you specify an URL, you will see a red \"splat\" icon in the CGIs (when you are viewing hostgroup information) that links to the URL you specify here. Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>).</p>\r\n<p><em>Parameter name:</em> action_url<br> <em>Required:</em> no</p>'),(117,'hostgroup','hostgroup_members','all','default','<p><strong>Hostgroup - </strong><strong>hostgroup members</strong></p>\r\n<p>This optional directive can be used to include hosts from other \"sub\" host groups in this host group. Specify a comma-delimited list of short names of other host groups whose members should be included in this group.</p>\r\n<p><em>Parameter name:</em> hostgroup_members<br> <em>Required:</em> no</p>'),(118,'servicegroup','servicegroup_name','all','default','<p><strong>Servicegroup - </strong><strong>servicegroup name</strong></p>\r\n<p>This directive is used to define a short name used to identify the service group.</p>\r\n<p><em>Parameter name:</em> servicegroup_name<br> <em>Required:</em> yes</p>'),(119,'servicegroup','members','all','default','<p><strong>Servicegroup - </strong><strong>members</strong></p>\r\n<p>This is a list of the <em>descriptions</em> of services (and the names of their corresponding hosts) that should be included in this group. Host and service names should be separated by commas. This directive may be used as an alternative to the <em>servicegroups</em> directive in service definitions.</p>\r\n<p><strong>NagiosQL:</strong> If you select a servicegroup inside a service definition using the <em>servicegroups</em> directive in <em>service definition</em>, this service will <span style=\"color: #ff0000;\">not be selected</span> here because these are two different ways to specify a servicegroup!</p>\r\n<p><em>Parameter name:</em> members<br> <em>Required:</em> no</p>'),(120,'servicegroup','description','all','default','<p><strong>Servicegroup - </strong><strong>alias</strong><strong></strong></p>\r\n<p>This directive is used to define is a longer name or description used to identify the service group. It is provided in order to allow you to more easily identify a particular service group.</p>\r\n<p><em>Parameter name:</em> alias<br> <em>Required:</em> yes</p>'),(121,'servicegroup','notes','3','default','<p><strong>Servicegroup - </strong><strong>notes</strong></p>\r\n<p>This directive is used to define an optional string of notes pertaining to the service group. If you specify a note here, you will see the it in the extended information CGI (when you are viewing information about the specified service group).</p>\r\n<p><em>Parameter name:</em> notes<br> <em>Required:</em> no</p>'),(122,'servicegroup','notes_url','3','default','<p><strong>Servicegroup - </strong><strong>notes url</strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more information about the service group. If you specify an URL, you will see a red folder icon in the CGIs (when you are viewing service group information) that links to the URL you specify here. Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>). This can be very useful if you want to make detailed information on the service group, emergency contact methods, etc. available to other support staff.</p>\r\n<p><em>Parameter name:</em> notes_url<br> <em>Required:</em> no</p>'),(123,'servicegroup','action_url','3','default','<p><strong>Servicegroup - </strong><strong>action url</strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more actions to be performed on the service group. If you specify an URL, you will see a red \"splat\" icon in the CGIs (when you are viewing service group information) that links to the URL you specify here. Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>).</p>\r\n<p><em>Parameter name:</em> action_url<br> <em>Required:</em> no</p>'),(124,'servicegroup','servicegroup_members','all','default','<p><strong>Servicegroup - </strong><strong>servicegroup members</strong></p>\r\n<p>This optional directive can be used to include services from other \"sub\" service groups in this service group. Specify a comma-delimited list of short names of other service groups whose members should be included in this group.</p>\r\n<p><em>Parameter name:</em> servicegroup_members<br> <em>Required:</em> yes</p>'),(125,'hosttemplate','template_name','all','default','<p><strong>Hosttemplate - template name</strong></p>\r\n<p>This directive is used to define a short name used to identify the host template.</p>\r\n<p><em>Parameter name:</em> name<br> <em>Required:</em> yes</p>'),(126,'servicetemplate','template_name','all','default','<p><strong>Servicetemplate - template name</strong></p>\r\n<p>This directive is used to define a short name used to identify the service template.</p>\r\n<p><em>Parameter name:</em> name<br> <em>Required:</em> yes</p>'),(127,'contact','contact_name','all','default','<p><strong>Contact - </strong><strong>contact name</strong></p>\r\n<p>This directive is used to define a short name used to identify the contact.  It is referenced in contact group definitions.  Under the right circumstances, the $CONTACTNAME$ macro will contain this value.</p>\r\n<p><em>Parameter name:</em> contact_name<br> <em>Required:</em> yes</p>'),(128,'contact','contactgroups','all','default','<p><strong>Contact - </strong><strong>contactgroups</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the contactgroup(s) that the contact belongs to. Multiple contactgroups should be separated by commas. This directive may be used as an alternative to (or in addition to) using the <em>members</em> directive in contactgroup definitions.</p>\r\n<p><span style=\"color: #ff0000;\"><span style=\"color: #000000;\"><strong>NagiosQL:</strong> If a contactgroup is defined here - this contact will <span style=\"color: #ff0000;\">not be selected</span> inside the member field of the same contactgroup definition! </span></span></p>\r\n<p><em>Parameter name:</em> contactgroups<br> <em>Required:</em> no</p>'),(129,'contact','alias','all','default','<p><strong>Contact - </strong><strong>alias</strong></p>\r\n<p>This directive is used to define a longer name or description for the contact. Under the rights circumstances, the $CONTACTALIAS$ macro will contain this value.  If not specified, the <em>contact_name</em> will be used as the alias.</p>\r\n<p><em>Parameter name:</em> alias<br> <em>Required:</em> no (yes in Nagios 2.x)</p>'),(130,'contact','email','all','default','<p><strong>Contact - </strong><strong>email</strong></p>\r\n<p>This directive is used to define an email address for the contact. Depending on how you configure your notification commands, it can be used to send out an alert email to the contact. Under the right circumstances, the $CONTACTEMAIL$ macro will contain this value.</p>\r\n<p>Parameter name: email<br> <em>Required:</em> no</p>'),(131,'contact','pager','all','default','<p><strong>Contact - </strong><strong>pager</strong></p>\r\n<p>This directive is used to define a pager number for the contact. It can also be an email address to a pager gateway (i.e. pagejoe@pagenet.com). Depending on how you configure your notification commands, it can be used to send out an alert page to the contact. Under the right circumstances, the $CONTACTPAGER$ macro will contain this value.</p>\r\n<p>Parameter name: pager<br> <em>Required:</em> no</p>'),(132,'contact','address','all','default','<p><strong>Contact - </strong><strong>address<em>x</em></strong></p>\r\n<p>Address directives are used to define additional \"addresses\" for the contact. These addresses can be anything - cell phone numbers, instant messaging addresses, etc. Depending on how you configure your notification commands, they can be used to send out an alert o the contact. Up to six addresses can be defined using these directives (<em>address1</em> through <em>address6</em>). The $CONTACTADDRESS<em>x</em>$ macro will contain this value.</p>\r\n<p>Parameter name: addressx (x as number from 1 to 6)<br> <em>Required:</em> no</p>'),(133,'contact','host_notifications_enabled','3','default','<p><strong>Contact - </strong><strong>host notifications enabled</strong></p>\r\n<p>This directive is used to determine whether or not the contact will receive notifications about host problems and recoveries. Values: 0 = don\'t send notifications, 1 = send notifications.</p>\r\n<p><em>Parameter name:</em> host_notifications_enabled<br> <em>Required:</em> yes</p>'),(134,'contact','service_notifications_enabled','3','default','<p><strong>Contact - </strong><strong>service notifications enabled</strong></p>\r\n<p>This directive is used to determine whether or not the contact will receive notifications about service problems and recoveries. Values: 0 = don\'t send notifications, 1 = send notifications.</p>\r\n<p><em>Parameter name:</em> service_notifications_enabled<br> <em>Required:</em> yes</p>'),(135,'contact','host_notification_period','all','default','<p><strong>Contact - </strong><strong>host notification period</strong></p>\r\n<p>This directive is used to specify the short name of the time period during which the contact can be notified about host problems or recoveries. You can think of this as an \"on call\" time for host notifications for the contact. Read the documentation on time periods for more information on how this works and potential problems that may result from improper use.</p>\r\n<p><em>Parameter name:</em> host_notification_period<br> <em>Required:</em> yes</p>'),(136,'contact','service_notification_period','all','default','<p><strong>Contact - </strong><strong>service notification period</strong><strong></strong></p>\r\n<p>This directive is used to specify the short name of the time period during which the contact can be notified about service problems or recoveries. You can think of this as an \"on call\" time for service notifications for the contact. Read the documentation on time periods for more information on how this works and potential problems that may result from improper use.</p>\r\n<p><em>Parameter name:</em> service_notification_period<br> <em>Required:</em> yes</p>'),(137,'contact','host_notification_options','2','default','<p><strong>Contact - </strong><strong>host notification options</strong></p>\r\n<p>This directive is used to define the host states for which notifications can be sent out to this contact. Valid options are a combination of one or more of the following: <strong><br>d</strong> = notify on DOWN host states, <br><strong>u</strong> = notify on UNREACHABLE host states, <strong><br>r</strong> = notify on host recoveries (UP states), and <strong><br>f</strong> = notify when the host starts and stops flapping.<br>If you specify <strong>n</strong> (none) as an option, the contact will not receive any type of host notifications.</p>\r\n<p><em>Parameter name:</em> host_notification_options<br> <em>Required:</em> yes</p>'),(138,'contact','host_notification_options','3','default','<p><strong>Contact - </strong><strong>host notification options</strong></p>\r\n<p>This directive is used to define the host states for which notifications can be sent out to this contact. Valid options are a combination of one or more of the following: <br><strong>d</strong> = notify on DOWN host states, <strong><br>u</strong> = notify on UNREACHABLE host states, <strong><br>r</strong> = notify on host recoveries (UP states), <strong><br>f</strong> = notify when the host starts and stops flapping, and <br><strong>s</strong> = send notifications when host or service scheduled downtime starts and ends.<br>If you specify <strong>n</strong> (none) as an option, the contact will not receive any type of host notifications.</p>\r\n<p><em>Parameter name:</em> host_notification_options<br> <em>Required:</em> yes</p>'),(139,'contact','service_notification_options','2','default','<p><strong>Contact - </strong><strong>service notification options</strong></p>\r\n<p>This directive is used to define the service states for which notifications can be sent out to this contact. Valid options are a combination of one or more of the following: <strong><br>w</strong> = notify on WARNING service states, <strong><br>u</strong> = notify on UNKNOWN service states, <strong><br>c</strong> = notify on CRITICAL service states, <br><strong>r</strong> = notify on service recoveries (OK states), and <br><strong>f</strong> = notify when the servuce starts and stops flapping.<br>If you specify <strong>n</strong> (none) as an option, the contact will not receive any type of host notifications.</p>\r\n<p><em>Parameter name:</em> service_notification_options<br> <em>Required:</em> yes</p>'),(140,'contact','service_notification_options','3','default','<p><strong>Contact - </strong><strong>service notification options</strong></p>\r\n<p>This directive is used to define the service states for which notifications can be sent out to this contact. Valid options are a combination of one or more of the following: <strong><br>w</strong> = notify on WARNING service states, <br><strong>u</strong> = notify on UNKNOWN service states, <br><strong>c</strong> = notify on CRITICAL service states, <strong><br>r</strong> = notify on service recoveries (OK states), and <strong><br></strong><strong>f</strong> = notify when the host starts and stops flapping, and <strong><br>s</strong> = send notifications when host or service scheduled downtime starts and ends.  <br>If you specify <strong>n</strong> (none) as an option, the contact will not receive any type of host notifications.</p>\r\n<p><em>Parameter name:</em> service_notification_options<br> <em>Required:</em> yes</p>'),(141,'contact','host_notification_commands','all','default','<p><strong>Contact - </strong><strong>host notification commands</strong></p>\r\n<p>This directive is used to define a list of the <em>short names</em> of the commands used to notify the contact of a <em>host</em> problem or recovery. Multiple notification commands should be separated by commas. All notification commands are executed when the contact needs to be notified. The maximum amount of time that a notification command can run is controlled by the notification_timeout option.</p>\r\n<p><em>Parameter name:</em> host_notification_commands<br> <em>Required:</em> yes</p>'),(142,'contact','service_notification_commands','all','default','<p><strong>Contact - </strong><strong>service notification commands</strong></p>\r\n<p>This directive is used to define a list of the <em>short names</em> of the commands used to notify the contact of a <em>service</em> problem or recovery. Multiple notification commands should be separated by commas. All notification commands are executed when the contact needs to be notified. The maximum amount of time that a notification command can run is controlled by the notification_timeout option.</p>\r\n<p><em>Parameter name:</em> service_notification_commands<br> <em>Required:</em> yes</p>'),(143,'contact','retain_status_information','3','default','<p><strong>Contact - </strong><strong>retain status information</strong></p>\r\n<p>This directive is used to determine whether or not status-related information about the contact is retained across program restarts. This is only useful if you have enabled state retention using the retain_state_information directive.  Value: 0 = disable status information retention, 1 = enable status information retention.</p>\r\n<p>Parameter name: retain_status_information<br> <em>Required:</em> no</p>'),(144,'contact','can_submit_commands','3','default','<p><strong>Contact - </strong><strong>can submit commands</strong></p>\r\n<p>This directive is used to determine whether or not the contact can submit external commands to Nagios from the CGIs. Values: 0 = don\'t allow contact to submit commands, 1 = allow contact to submit commands.</p>\r\n<p>Parameter name: can_submit_commands<br> <em>Required:</em> no</p>'),(145,'contact','retain_nostatus_information','3','default','<p><strong>Contact - </strong><strong>retain nonstatus information</strong></p>\r\n<p>This directive is used to determine whether or not non-status information about the contact is retained across program restarts. This is only useful if you have enabled state retention using the retain_state_information directive.  Value: 0 = disable non-status information retention, 1 = enable non-status information retention.</p>\r\n<p>Parameter name: retain_nonstatus_information<br> <em>Required:</em> no</p>'),(146,'contact','templateadd','all','default','<p><strong>Contact - Templates</strong></p>\r\n<p>You can add one or more contact templates to a contact configuration. Nagios will add the definitions from each template to a contact configuration.</p>\r\n<p>If you add more than one template - the sort order will be used to overwrite configuration items which are defined inside templates before.</p>\r\n<p>The host configuration itselves will overwrite all values which are defined in templates before and pass all values which are not defined.</p>'),(147,'contact','genericname','all','default','<p><strong>Contact - generic name</strong></p>\r\n<p>It is possible to use a contact definition as a template for other contact configurations. If this definition should be used as template, a generic template name must be defined.</p>\r\n<p>We do not recommend to do this - it is more open to define a separate contact template than use this option.</p>\r\n<p><em>Parameter name:</em> name<em><br>Required:</em> no</p>'),(148,'contactgroup','contactgroup_name','all','default','<p><strong>Contactgroup - contactgroup name</strong></p>\r\n<p>This directive is a short name used to identify the contact group.</p>\r\n<p><em>Parameter name:</em> contactgroup_name<em><br>Required:</em> yes</p>'),(149,'contactgroup','members','all','default','<p><strong>Contactgroup - </strong><strong>members</strong></p>\r\n<p>This directive is used to define a list of the <em>short names</em> of contacts that should be included in this group. Multiple contact names should be separated by commas. This directive may be used as an alternative to (or in addition to) using the <em>contactgroups</em> directive in contact definitions.</p>\r\n<p><strong>NagiosQL:</strong> If you select a contactgroup inside a contact definition using the&nbsp;<em>contactgroups</em> directive in&nbsp;<em>contact definition</em>, this contact will <span style=\"color: #ff0000;\">not be selected</span> here because these are two different ways to specify a contactgroup!</p>\r\n<p><em>Parameter name:</em> members<em><br>Required:</em> yes</p>'),(150,'contactgroup','alias','all','default','<p><strong>Contactgroup - </strong><strong>alias</strong></p>\r\n<p>This directive is used to define a longer name or description used to identify the contact group.</p>\r\n<p><em>Parameter name:</em> alias<em><br>Required:</em> yes</p>'),(151,'contactgroup','contactgroup_members','all','default','<p><strong>Contactgroup - </strong><strong>contactgroup members</strong></p>\r\n<p>This optional directive can be used to include contacts from other \"sub\" contact groups in this contact group. Specify a comma-delimited list of short names of other contact groups whose members should be included in this group.</p>\r\n<p><em>Parameter name:</em> contactgroup_members<em><br>Required:</em> no</p>'),(152,'timeperiod','timeperiod_name','all','default','<p><strong>Timeperiod - </strong><strong>timeperiod name</strong></p>\r\n<p>This directives is the short name used to identify the time period.</p>\r\n<p><em>Parameter name:</em> timeperiod_name<br> <em>Required:</em> yes</p>'),(153,'timeperiod','exclude','3','default','<p><strong>Timeperiod - </strong><strong>exclude</strong></p>\r\n<p>This directive is used to specify the short names of other timeperiod definitions whose time ranges should be excluded from this timeperiod. Multiple timeperiod names should be separated with a comma.</p>\r\n<p><em>Parameter name:</em> exclude<br> <em>Required:</em> no</p>'),(154,'timeperiod','alias','all','default','<p><strong>Timeperiod - </strong><strong>alias</strong></p>\r\n<p>This directive is a longer name or description used to identify the time period.</p>\r\n<p><em>Parameter name:</em> alias<br> <em>Required:</em> yes</p>'),(155,'timeperiod','templatename','3','default','<p><strong>Timeperiod - </strong><strong>template name</strong></p>\r\n<p>Not yet implemented.</p>\r\n<p><em>Parameter name:</em> name<br> <em>Required:</em> no</p>'),(156,'timeperiod','weekday','2','default','<p><strong>Timeperiod - </strong><strong>time definition<br></strong></p>\r\n<p>The <em>sunday</em> through <em>saturday</em> directives are comma-delimited lists of time ranges that are \"valid\" times for a particular day of the week. Notice that there are seven different days for which you can define time ranges (Sunday through Saturday).</p>\r\n<p><em>Parameter name:</em> [weekday] [exception]<br> <em>Required:</em> no</p>'),(157,'timeperiod','timerange','2','default','<p><strong>Timeperiod - </strong><strong>time range<br></strong></p>\r\n<p>Each time range is in the form of <strong>HH:MM-HH:MM</strong>, where hours are specified on a 24 hour clock.  For example, <strong>00:15-24:00</strong> means 12:15am in the morning for this day until 12:20am midnight (a 23 hour, 45 minute total time range). If you wish to exclude an entire day from the timeperiod, simply do not include it in the timeperiod definition.</p>\r\n<p><em>Parameter name:</em> [weekday] [exception]<br> <em>Required:</em> no</p>'),(158,'timeperiod','weekday','3','default','<p><strong>Timeperiod - </strong><strong>time definition<br></strong></p>\r\n<p>The weekday directives (\"<em>sunday</em>\" through \"<em>saturday</em>\")are comma-delimited lists of time ranges that are \"valid\" times for a particular day of the week. Notice that there are seven different days for which you can define time ranges (Sunday through Saturday).&nbsp;</p>\r\n<p>You can also specify several different types of exceptions to the standard rotating weekday schedule. Exceptions can take a number of different forms including single days of a specific or generic month, single weekdays in a month, or single calendar dates. You can also specify a range of days/dates and even specify skip intervals to obtain functionality described by \"every 3 days between these dates\". Rather than list all the possible formats for exception strings, Weekdays and different types of exceptions all have different levels of precedence, so its important to understand how they can affect each other. More information on this can be found in the documentation on timeperiods.</p>\r\n<p><em>Parameter name:</em> [weekday] [exception]<br> <em>Required:</em> no</p>'),(159,'timeperiod','timerange','3','default','<p><strong>Timeperiod - </strong><strong>time range<br></strong></p>\r\n<p>Each time range is in the form of <strong>HH:MM-HH:MM</strong>, where hours are specified on a 24 hour clock.  For example, <strong>00:15-24:00</strong> means 12:15am in the morning for this day until 12:00am midnight (a 23 hour, 45 minute total time range). If you wish to exclude an entire day from the timeperiod, simply do not include it in the timeperiod definition.</p>\r\n<p><em>Parameter name:</em> [weekday] [exception]<br> <em>Required:</em> no</p>'),(160,'contacttemplate','template_name','all','default','<p><strong>Contacttemplate - template name</strong></p>\r\n<p>This directive is used to define a short name used to identify the contact template.</p>\r\n<p><em>Parameter name:</em> name<br> <em>Required:</em> yes</p>'),(161,'command','command_name','all','default','<p><strong>Command - </strong><strong>command name</strong></p>\r\n<p>This directive is the short name used to identify the command.  It is referenced in contact, host, and service definitions (in notification, check, and event handler directives), among other places.</p>\r\n<p><em>Parameter name:</em> command_name<br> <em>Required:</em> yes</p>'),(162,'command','command_line','all','default','<p><strong>Command - </strong><strong>command line</strong></p>\r\n<p>This directive is used to define what is actually executed by Nagios when the command is used for service or host checks, notifications, or event handlers. Before the command line is executed, all valid macros are replaced with their respective values. See the documentation on macros for determining when you can use different macros. Note that the command line is <em>not</em> surrounded in quotes. Also, if you want to pass a dollar sign ($) on the command line, you have to escape it with another dollar sign.</p>\r\n<p><strong>NOTE</strong>: You may not include a <strong>semicolon</strong> (;) in the <em>command_line</em> directive, because everything after it will be ignored as a config file comment. You can work around this limitation by setting one of the <strong>$USER$</strong> macros in your resource file to a semicolon and then referencing the appropriate $USER$ macro in the <em>command_line</em> directive in place of the semicolon.</p>\r\n<p>If you want to pass arguments to commands during runtime, you can use <strong>$ARGn$</strong> macros in the <em>command_line</em> directive of the command definition and then separate individual arguments from the command name (and from each other) using bang (!) characters in the object definition directive (host check command, service event handler command, etc) that references the command. More information on how arguments in command definitions are processed during runtime can be found in the documentation on macros.</p>\r\n<p><em>Parameter name:</em> command_line<br> <em>Required:</em> yes</p>'),(163,'command','command_type','all','default','<p><strong>Command - </strong><strong>command type</strong></p>\r\n<p>This directive is used to differ checks and misc commands. Its a NagiosQL definition only.</p>\r\n<p>Commands tagged as \"check command\" will be displayed in services and hosts as check command.</p>\r\n<p>Commands tagged as \"misc command\" will be displayed in contacts, services and hosts as event command.</p>\r\n<p>Not classified commands will be displayed everywhere.</p>\r\n<p>This definition is only used to reduce the amount of commands shown in the selection fields and to have a more clear view.</p>'),(164,'hostdependency','dependent_host','all','default','<p><strong>Hostdependency - </strong><strong>dependent host name</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the <em>dependent</em> host(s).  Multiple hosts should be separated by commas</p>\r\n<p><em>Parameter name:</em> dependent_host_name<br> <em>Required:</em> yes (no, if a dependent hostgroup is defined)</p>'),(165,'hostdependency','dependent_hostgroups','all','default','<p><strong>Hostdependency - </strong><strong>dependent hostgroup name</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the <em>dependent</em>hostgroup(s). Multiple hostgroups should be separated by commas. The dependent_hostgroup_name may be used instead of, or in addition to, the dependent_host_name directive.</p>\r\n<p><em>Parameter name:</em> dependent_hostgroup_name<br> <em>Required:</em> no (yes, if no dependent host is defined)</p>'),(166,'hostdependency','host','all','default','<p><strong>Hostdependency - </strong><strong>host name</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the host(s) <em>that is being depended upon</em> (also referred to as the master host).  Multiple hosts should be separated by commas.</p>\r\n<p><em>Parameter name:</em> host_name<br> <em>Required:</em> yes (no, if&nbsp; a hostgroup is defined)</p>'),(167,'hostdependency','hostgroup','all','default','<p><strong>Hostdependency - </strong><strong>hostgroup name</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the host(s) <em>that is being depended upon</em> (also referred to as the master host).  Multiple hosts should be separated by commas.</p>\r\n<p><em>Parameter name:</em> hostgroup_name<br> <em>Required:</em> no (yes, if a no host is defined)</p>'),(168,'hostdependency','config_name','all','default','<p><strong>Hostdependency - config name</strong></p>\r\n<p>This directive is used to specify a common config name for a hostdependency configration. This is a NagiosQL parameter and it will not be written to the configuration file.</p>'),(169,'hostdependency','inherit_parents','all','default','<p><strong>Hostdependency - </strong><strong>inherits parent</strong></p>\r\n<p>This directive indicates whether or not the dependency inherits dependencies of the host <em>that is being depended upon</em> (also referred to as the master host). In other words, if the master host is dependent upon other hosts and any one of those dependencies fail, this dependency will also fail.</p>\r\n<p><em>Parameter name:</em> inherits_parent<br> <em>Required:</em> no</p>'),(170,'hostdependency','dependency_period','3','default','<p><strong>Hostdependency - </strong><strong>dependency_period</strong></p>\r\n<p>This directive is used to specify the short name of the time period during which this dependency is valid. If this directive is not specified, the dependency is considered to be valid during all times.</p>\r\n<p><em>Parameter name:</em> dependency_period<br> <em>Required:</em> no</p>'),(171,'hostdependency','execution_failure_criteria','all','default','<p><strong>Hostdependency - </strong><strong>execution failure criteria</strong></p>\r\n<p>This directive is used to specify the criteria that determine when the dependent host should <em>not</em> be actively checked.  If the <em>master</em> host is in one of the failure states we specify, the <em>dependent</em> host will not be actively checked. Valid options are a combination of one or more of the following (multiple options are separated with commas): <br><strong>o</strong> = fail on an UP state, <br><strong>d</strong> = fail on a DOWN state, <br><strong>u</strong> = fail on an UNREACHABLE state, and <strong><br>p</strong> = fail on a pending state (e.g. the host has not yet been checked).</p>\r\n<p>If you specify <strong>n</strong> (none) as an option, the execution dependency will never fail and the dependent host will always be actively checked (if other conditions allow for it to be).</p>\r\n<p>Example: If you specify <strong>u,d</strong> in this field, the <em>dependent</em> host will not be actively checked if the <em>master</em> host is in either an UNREACHABLE or DOWN state.</p>\r\n<p><em>Parameter name:</em> execution_failure_criteria<br> <em>Required:</em> no</p>'),(172,'hostdependency','notification_failure_criteria','all','default','<p><strong>Hostdependency - </strong><strong>notification failure criteria</strong></p>\r\n<p>This directive is used to define the criteria that determine when notifications for the dependent host should <em>not</em> be sent out.  If the <em>master</em> host is in one of the failure states we specify, notifications for the <em>dependent</em> host will not be sent to contacts.  Valid options are a combination of one or more of the following: <br><strong>o</strong> = fail on an UP state, <br><strong>d</strong> = fail on a DOWN state, <br><strong>u</strong> = fail on an UNREACHABLE state, and <br><strong>p</strong> = fail on a pending state (e.g. the host has not yet been checked).</p>\r\n<p>If you specify <strong>n</strong> (none) as an option, the notification dependency will never fail and notifications for the dependent host will always be sent out.</p>\r\n<p>Example: If you specify <strong>d</strong> in this field, the notifications for the <em>dependent</em> host will not be sent out if the <em>master</em> host is in a DOWN state.</p>\r\n<p><em>Parameter name:</em> notification_failure_criteria<br> <em>Required:</em> no</p>'),(173,'hostescalation','host','all','default','<p><strong>Hostescalation - </strong><strong>host name</strong></p>\r\n<p>This directive is used to identify the <em>short name</em> of the host that the escalation should apply to.</p>\r\n<p><em>Parameter name:</em> host_name<br> <em>Required:</em> yes (no, if a hostgroup name is defined</p>'),(174,'hostescalation','hostgroup','all','default','<p><strong>Hostescalation - </strong><strong>hostgroup name</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the hostgroup(s) that the escalation should apply to. Multiple hostgroups should be separated by commas. If this is used, the escalation will apply to all hosts that are members of the specified hostgroup(s).</p>\r\n<p><em>Parameter name:</em> hostgroup_name<br> <em>Required:</em> no (yes, if no host ist defined)</p>'),(175,'hostescalation','contact','all','default','<p><strong>Hostescalation - </strong><strong>contacts</strong><strong></strong></p>\r\n<p>This is a list of the <em>short names</em> of the contacts that should be notified whenever there are problems (or recoveries) with this host. Multiple contacts should be separated by commas. Useful if you want notifications to go to just a few people and don\'t want to configure contact groups.  You must specify at least one contact or contact group in each host escalation definition.</p>\r\n<p><em>Parameter name:</em> contacts<br> <em>Required:</em> yes (no, if a contactgroup is defined)</p>'),(176,'hostescalation','contactgroup','all','default','<p><strong>Hostescalation - </strong><strong>contact groups</strong></p>\r\n<p>This directive is used to identify the <em>short name</em> of the contact group that should be notified when the host notification is escalated. Multiple contact groups should be separated by commas. You must specify at least one contact or contact group in each host escalation definition.</p>\r\n<p><em>Parameter name:</em> contact_groups<br> <em>Required:</em> yes (no, if a contact is defined)</p>'),(177,'hostescalation','config_name','all','default','<p><strong>Hostescalation - config name</strong></p>\r\n<p>This directive is used to specify a common config name for a hostescalation configration. This is a NagiosQL parameter and it will not be written to the configuration file.</p>'),(178,'hostescalation','escalation_period','all','default','<p><strong>Hostescalation - </strong><strong>escalation period</strong></p>\r\n<p>This directive is used to specify the short name of the time period during which this escalation is valid. If this directive is not specified, the escalation is considered to be valid during all times.</p>\r\n<p><em>Parameter name:</em> escalation_period<br> <em>Required:</em> no</p>'),(179,'hostescalation','escalation_options','all','default','<p><strong>Hostescalation - </strong><strong>escalation options</strong><strong></strong></p>\r\n<p>This directive is used to define the criteria that determine when this host escalation is used. The escalation is used only if the host is in one of the states specified in this directive. If this directive is not specified in a host escalation, the escalation is considered to be valid during all host states. Valid options are a combination of one or more of the following: <br><strong>r</strong> = escalate on an UP (recovery) state, <br><strong>d</strong> = escalate on a DOWN state, and <strong><br>u</strong> = escalate on an UNREACHABLE state.</p>\r\n<p>Example: If you specify <strong>d</strong> in this field, the escalation will only be used if the host is in a DOWN state.</p>\r\n<p><em>Parameter name:</em> escalation_options<br> <em>Required:</em> no</p>'),(180,'hostescalation','first_notification','all','default','<p><strong>Hostescalation - </strong><strong>first notification</strong><strong></strong></p>\r\n<p>This directive is a number that identifies the <em>first</em> notification for which this escalation is effective. For instance, if you set this value to 3, this escalation will only be used if the host is down or unreachable long enough for a third notification to go out.</p>\r\n<p><em>Parameter name:</em> first_notification<br> <em>Required:</em> yes</p>'),(181,'hostescalation','last_notification','all','default','<p><strong>Hostescalation - </strong><strong>last notification</strong></p>\r\n<p>This directive is a number that identifies the <em>last</em> notification for which this escalation is effective. For instance, if you set this value to 5, this escalation will not be used if more than five notifications are sent out for the host. Setting this value to 0 means to keep using this escalation entry forever (no matter how many notifications go out).</p>\r\n<p><em>Parameter name:</em> last_notification<br> <em>Required:</em> yes</p>'),(182,'hostescalation','notification_intervall','all','default','<p><strong>Hostescalation - </strong><strong>notification interval</strong></p>\r\n<p>This directive is used to determine the interval at which notifications should be made while this escalation is valid. If you specify a value of 0 for the interval, Nagios will send the first notification when this escalation definition is valid, but will then prevent any more problem notifications from being sent out for the host. Notifications are sent out again until the host recovers.</p>\r\n<p>This is useful if you want to stop having notifications sent out after a certain amount of time. Note: If multiple escalation entries for a host overlap for one or more notification ranges, the smallest notification interval from all escalation entries is used.</p>\r\n<p><em>Parameter name:</em> notification_interval<br> <em>Required:</em> yes</p>'),(183,'hostextinfo','host_name','all','default','<p><strong>Hostextinfo - </strong><strong>host name</strong></p>\r\n<p>This variable is used to identify the <em>short name</em> of the host which the data is associated with.</p>\r\n<p><em>Parameter name:</em> host_name<br> <em>Required:</em> yes</p>'),(184,'hostextinfo','icon_image','all','default','<p><strong>Hostextinfo - </strong><strong>icon image</strong></p>\r\n<p>This variable is used to define the name of a GIF, PNG, or JPG image that should be associated with this host. This image will be displayed in the status and extended information CGIs.  The image will look best if it is 40x40 pixels in size.</p>\r\n<p>Images for hosts are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> icon_image<br> <em>Required:</em> no</p>'),(185,'hostextinfo','notes','all','default','<p><strong>Hostextinfo - </strong><strong>notes</strong><strong></strong></p>\r\n<p>This directive is used to define an optional string of notes pertaining to the host. If you specify a note here, you will see the it in the extended information CGI (when you are viewing information about the specified host).</p>\r\n<p><em>Parameter name:</em> notes<br> <em>Required:</em> no</p>'),(186,'hostextinfo','icon_image_alt_text','all','default','<p><strong>Hostextinfo - </strong><strong>icon image alt</strong><strong></strong></p>\r\n<p>This variable is used to define an optional string that is used in the ALT tag of the image specified by the <em>&lt;icon_image&gt;</em> argument.  The ALT tag is used in the status, extended information and statusmap CGIs.</p>\r\n<p><em>Parameter name:</em> icon_image_alt<br> <em>Required:</em> no</p>'),(187,'hostextinfo','notes_url','all','default','<p><strong>Hostextinfo - </strong><strong>notes url</strong></p>\r\n<p>This variable is used to define an optional URL that can be used to provide more information about the host. If you specify an URL, you will see a link that says \"Extra Host Notes\" in the extended information CGI (when you are viewing information about the specified host). Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>). This can be very useful if you want to make detailed information on the host, emergency contact methods, etc. available to other support staff.</p>\r\n<p><em>Parameter name:</em> notes_url<br> <em>Required:</em> no</p>'),(188,'hostextinfo','vrml_image','all','default','<p><strong>Hostextinfo - </strong><strong>vrml image</strong><strong></strong></p>\r\n<p>This variable is used to define the name of a GIF, PNG, or JPG image that should be associated with this host. This image will be used as the texture map for the specified host in the <a href=\"http://nagios.sourceforge.net/docs/3_0/cgis.html#statuswrl_cgi\">statuswrl</a> CGI.  Unlike the image you use for the <em>icon_image</em> variable, this one should probably <em>not</em> have any transparency.  If it does, the host object will look a bit wierd.</p>\r\n<p>Images for hosts are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> vrml_image<br> <em>Required:</em> no</p>'),(189,'hostextinfo','action_url','all','default','<p><strong>Hostextinfo - </strong><strong>action url</strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more actions to be performed on the host. If you specify an URL, you will see a link that says \"Extra Host Actions\" in the extended information CGI (when you are viewing information about the specified host). Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>).</p>\r\n<p><em>Parameter name:</em> action_url<br> <em>Required:</em> no</p>'),(190,'hostextinfo','status_image','all','default','<p><strong>Hostextinfo - </strong><strong>statusmap image</strong></p>\r\n<p>This variable is used to define the name of an image that should be associated with this host in the statusmap CGI. You can specify a JPEG, PNG, and GIF image if you want, although I would strongly suggest using a GD2 format image, as other image formats will result in a lot of wasted CPU time when the statusmap image is generated.</p>\r\n<p>GD2 images can be created from PNG images by using the <strong>pngtogd2</strong> utility supplied with Thomas Boutell\'s gd library.  The GD2 images should be created in <em>uncompressed</em> format in order to minimize CPU load when the statusmap CGI is generating the network map image.</p>\r\n<p>The image will look best if it is 40x40 pixels in size. You can leave these option blank if you are not using the statusmap CGI. Images for hosts are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> statusmap_image<br> <em>Required:</em> no</p>'),(191,'hostextinfo','2d_coords','all','default','<p><strong>Hostextinfo - </strong><strong>2d coords</strong></p>\r\n<p>This variable is used to define coordinates to use when drawing the host in the statusmap CGI. Coordinates should be given in positive integers, as they correspond to physical pixels in the generated image. The origin for drawing (0,0) is in the upper left hand corner of the image and extends in the positive x direction (to the right) along the top of the image and in the positive y direction (down) along the left hand side of the image. For reference, the size of the icons drawn is usually about 40x40 pixels (text takes a little extra space). The coordinates you specify here are for the upper left hand corner of the host icon that is drawn.</p>\r\n<p>Note: Don\'t worry about what the maximum x and y coordinates that you can use are. The CGI will automatically calculate the maximum dimensions of the image it creates based on the largest x and y coordinates you specify.</p>\r\n<p><em>Parameter name:</em> 2d_coords<br> <em>Required:</em> no</p>'),(192,'hostextinfo','3d_coords','all','default','<p><strong>Hostextinfo - </strong><strong>3d coords</strong></p>\r\n<p>This variable is used to define coordinates to use when drawing the host in the statuswrl CGI. Coordinates can be positive or negative real numbers. The origin for drawing is (0.0,0.0,0.0). For reference, the size of the host cubes drawn is 0.5 units on each side (text takes a little more space). The coordinates you specify here are used as the center of the host cube.</p>\r\n<p><em>Parameter name:</em> 3d_coords<br> <em>Required:</em> no</p>'),(193,'serviceescalation','host','all','default','<p><strong>Serviceescalation - </strong><strong>host name</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the host(s) that the service escalation should apply to or is associated with.</p>\r\n<p><em>Parameter name:</em> host_name<br> <em>Required:</em> yes (no, if a hostgroup name is defined)</p>'),(194,'serviceescalation','hostgroup','all','default','<p><strong>Serviceescalation - </strong><strong>hostgroup name</strong></p>\r\n<p>This directive is used to specify the <em>short name(s)</em> of the hostgroup(s) that the service escalation should apply to or is associated with. Multiple hostgroups should be separated by commas. The hostgroup_name may be used instead of, or in addition to, the host_name directive.</p>\r\n<p><em>Parameter name:</em> hostgroup_name<br> <em>Required:</em> yes (no, if a host name is defined)</p>'),(195,'serviceescalation','contact','all','default','<p><strong>Serviceescalation - </strong><strong>contacts</strong></p>\r\n<p>This is a list of the <em>short names</em> of the contacts that should be notified whenever there are problems (or recoveries) with this service. Multiple contacts should be separated by commas. Useful if you want notifications to go to just a few people and don\'t want to configure contact groups.  You must specify at least one contact or contact group in each service escalation definition.</p>\r\n<p><em>Parameter name:</em> contacts<br> <em>Required:</em> yes (no, if a contact group is defined)</p>'),(196,'serviceescalation','contactgroup','all','default','<p><strong>Serviceescalation - </strong><strong>contact groups</strong></p>\r\n<p>This directive is used to identify the <em>short name</em> of the contact group that should be notified when the service notification is escalated. Multiple contact groups should be separated by commas. You must specify at least one contact or contact group in each service escalation definition.</p>\r\n<p><em>Parameter name:</em> contact_groups<br> <em>Required:</em> yes (no, if a contact is defined)</p>'),(197,'serviceescalation','config_name','all','default','<p><strong>Serviceescalation - config name</strong></p>\r\n<p>This directive is used to specify a common config name for a serviceescalation configration. This is a NagiosQL parameter and it will not be written to the configuration file.</p>'),(198,'serviceescalation','service','all','default','<p><strong>Serviceescalation - </strong><strong>service description</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>description</em> of the service the escalation should apply to.</p>\r\n<p><em>Parameter name:</em> service_description<br> <em>Required:</em> yes</p>'),(199,'serviceescalation','first_notification','all','default','<p><strong>Serviceescalation - </strong><strong>first notification</strong></p>\r\n<p>This directive is a number that identifies the <em>first</em> notification for which this escalation is effective. For instance, if you set this value to 3, this escalation will only be used if the service is in a non-OK state long enough for a third notification to go out.</p>\r\n<p><em>Parameter name:</em> first_notification<br> <em>Required:</em> yes</p>'),(200,'serviceescalation','last_notification','all','default','<p><strong>Serviceescalation - </strong><strong>last notification</strong></p>\r\n<p>This directive is a number that identifies the <em>last</em> notification for which this escalation is effective. For instance, if you set this value to 5, this escalation will not be used if more than five notifications are sent out for the service. Setting this value to 0 means to keep using this escalation entry forever (no matter how many notifications go out).</p>\r\n<p><em>Parameter name:</em> last_notification<br> <em>Required:</em> yes</p>'),(201,'serviceescalation','notification_intervall','all','default','<p><strong>Serviceescalation - </strong><strong>notification interval</strong></p>\r\n<p>This directive is used to determine the interval at which notifications should be made while this escalation is valid. If you specify a value of 0 for the interval, Nagios will send the first notification when this escalation definition is valid, but will then prevent any more problem notifications from being sent out for the host. Notifications are sent out again until the host recovers.</p>\r\n<p>This is useful if you want to stop having notifications sent out after a certain amount of time. Note: If multiple escalation entries for a host overlap for one or more notification ranges, the smallest notification interval from all escalation entries is used.</p>\r\n<p><em>Parameter name:</em> notification_interval<br> <em>Required:</em> yes</p>'),(202,'serviceescalation','escalation_period','all','default','<p><strong>Serviceescalation - </strong><strong>escalation period</strong></p>\r\n<p>This directive is used to specify the short name of the time period during which this escalation is valid. If this directive is not specified, the escalation is considered to be valid during all times.</p>\r\n<p><em>Parameter name:</em> escalation_period<br> <em>Required:</em> no</p>'),(203,'serviceescalation','escalation_options','all','default','<p><strong>Serviceescalation - </strong><strong>escalation options</strong></p>\r\n<p>This directive is used to define the criteria that determine when this service escalation is used. The escalation is used only if the service is in one of the states specified in this directive. If this directive is not specified in a service escalation, the escalation is considered to be valid during all service states. Valid options are a combination of one or more of the following: <strong><br>r</strong> = escalate on an OK (recovery) state, <br><strong>w</strong> = escalate on a WARNING state, <strong><br>u</strong> = escalate on an UNKNOWN state, and <br><strong>c</strong> = escalate on a CRITICAL state.</p>\r\n<p>Example: If you specify <strong>w</strong> in this field, the escalation will only be used if the service is in a WARNING state.</p>\r\n<p><em>Parameter name:</em> escalation_options<br> <em>Required:</em> no</p>'),(204,'servicedependency','dependent_host','all','default','<p><strong>Servicedependency - </strong><strong>dependent host</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the host(s) that the <em>dependent</em> service \"runs\" on or is associated with. Multiple hosts should be separated by commas. Leaving this directive blank can be used to create \"same host\" dependencies.</p>\r\n<p><em>Parameter name:</em> dependent_host<br> <em>Required:</em> yes (no, if a dependent hostgroup is defined)</p>'),(205,'servicedependency','host','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>host name</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the host(s) that the service <em>that is being depended upon</em> (also referred to as the master service) \"runs\" on or is associated with.  Multiple hosts should be separated by commas.</p>\r\n<p><em>Parameter name:</em> host_name<br> <em>Required:</em> yes (no, if a hostgroup is defined)</p>'),(206,'servicedependency','dependent_hostgroup','all','default','<p><strong>Servicedependency - </strong><strong>dependent hostgroup</strong></p>\r\n<p>This directive is used to specify the <em>short name(s)</em> of the hostgroup(s) that the <em>dependent</em> service \"runs\" on or is associated with. Multiple hostgroups should be separated by commas. The dependent_hostgroup may be used instead of, or in addition to, the dependent_host directive.</p>\r\n<p><em>Parameter name:</em> dependent_hostgroup<br> <em>Required:</em> yes (no, if a dependent host is defined)</p>'),(207,'servicedependency','hostgroup','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>hostgroup name</strong></p>\r\n<p>This directive is used to identify the <em>short name(s)</em> of the hostgroup(s) that the service <em>that is being depended upon</em> (also referred to as the master service) \"runs\" on or is associated with. Multiple hostgroups should be separated by commas. The hostgroup_name may be used instead of, or in addition to, the host_name directive.</p>\r\n<p><em>Parameter name:</em> hostgroup_name<br> <em>Required:</em> yes (no, if a host is defined)</p>'),(208,'servicedependency','dependent_services','all','default','<p><strong>Servicedependency -</strong><strong> dependent service description</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>description</em> of the <em>dependent</em> service.</p>\r\n<p><em>Parameter name:</em> dependent_service_description<br> <em>Required:</em> yes</p>'),(209,'servicedependency','services','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>service description</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>description</em> of the service <em>that is being depended upon</em> (also referred to as the master service).</p>\r\n<p><em>Parameter name:</em> service_description<br> <em>Required:</em> yes</p>'),(210,'servicedependency','config_name','all','default','<p><strong>Servicedependency - config name</strong></p>\r\n<p>This directive is used to specify a common config name for a servicedependency configration. This is a NagiosQL parameter and it will not be written to the configuration file.</p>'),(211,'servicedependency','inherit_parents','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>inherits parent</strong></p>\r\n<p>This directive indicates whether or not the dependency inherits dependencies of the service <em>that is being depended upon</em> (also referred to as the master service). In other words, if the master service is dependent upon other services and any one of those dependencies fail, this dependency will also fail.</p>\r\n<p><em>Parameter name:</em> inherits_parent<br> <em>Required:</em> no</p>'),(212,'servicedependency','dependency_period','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>dependency period</strong><strong></strong></p>\r\n<p>This directive is used to specify the short name of the time period during which this dependency is valid. If this directive is not specified, the dependency is considered to be valid during all times.</p>\r\n<p><em>Parameter name:</em> dependency_period<br> <em>Required:</em> no</p>'),(213,'servicedependency','execution_failure_criteria','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>execution failure criteria</strong><strong></strong></p>\r\n<p>This directive is used to specify the criteria that determine when the dependent service should <em>not</em> be actively checked.  If the <em>master</em> service is in one of the failure states we specify, the <em>dependent</em> service will not be actively checked. Valid options are a combination of one or more of the following (multiple options are separated with commas): <br><strong>o</strong> = fail on an OK state, <br><strong>w</strong> = fail on a WARNING state, <strong><br>u</strong> = fail on an UNKNOWN state, <br><strong>c</strong> = fail on a CRITICAL state, and <br><strong>p</strong> = fail on a pending state (e.g. the service has not yet been checked).  <br>If you specify <strong>n</strong> (none) as an option, the execution dependency will never fail and checks of the dependent service will always be actively checked (if other conditions allow for it to be).</p>\r\n<p>Example: If you specify <strong>o,c,u</strong> in this field, the <em>dependent</em> service will not be actively checked if the <em>master</em> service is in either an OK, a CRITICAL, or an UNKNOWN state.</p>\r\n<p><em>Parameter name:</em> execution_failure_criteria<br> <em>Required:</em> no</p>'),(214,'servicedependency','notification_failure_criteria','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>notification failure criteria</strong><strong></strong></p>\r\n<p>This directive is used to define the criteria that determine when notifications for the dependent service should <em>not</em> be sent out.  If the <em>master</em> service is in one of the failure states we specify, notifications for the <em>dependent</em> service will not be sent to contacts.  Valid options are a combination of one or more of the following: <strong><br>o</strong> = fail on an OK state, <br><strong>w</strong> = fail on a WARNING state, <strong><br>u</strong> = fail on an UNKNOWN state, <br><strong>c</strong> = fail on a CRITICAL state, and <br><strong>p</strong> = fail on a pending state (e.g. the service has not yet been checked).  <br>If you specify <strong>n</strong> (none) as an option, the notification dependency will never fail and notifications for the dependent service will always be sent out.</p>\r\n<p>Example: If you specify <strong>w</strong> in this field, the notifications for the <em>dependent</em> service will not be sent out if the <em>master</em> service is in a WARNING state.</p>\r\n<p><em>Parameter name:</em> notification_failure_criteria<br> <em>Required:</em> no</p>'),(216,'serviceextinfo','host_name','all','default','<p><strong>Serviceextinfo -</strong><strong> </strong><strong>host name</strong></p>\r\n<p>This directive is used to identify the <em>short name</em> of the host that the service is associated with.</p>\r\n<p><em>Parameter name:</em> host_name<br> <em>Required:</em> yes</p>'),(217,'serviceextinfo','icon_image','all','default','<p><strong>Serviceextinfo -</strong><strong> </strong><strong>icon image</strong></p>\r\n<p>This variable is used to define the name of a GIF, PNG, or JPG image that should be associated with this host. This image will be displayed in the status and extended information CGIs.</p>\r\n<p>The image will look best if it is 40x40 pixels in size.  Images for hosts are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. <em>/usr/local/nagios/share/images/logos</em>).</p>\r\n<p><em>Parameter name:</em> icon_image<br> <em>Required:</em> no</p>'),(218,'serviceextinfo','service_description','all','default','<p><strong>Serviceextinfo -</strong><strong> </strong><strong>service description</strong></p>\r\n<p>This directive is description of the service which the data is associated with.</p>\r\n<p><em>Parameter name:</em> service_description<br> <em>Required:</em> yes</p>'),(219,'serviceextinfo','notes','all','default','<p><strong>Serviceextinfo -</strong><strong> </strong><strong>notes</strong></p>\r\n<p>This directive is used to define an optional string of notes pertaining to the service. If you specify a note here, you will see the it in the extended information CGI (when you are viewing information about the specified service).</p>\r\n<p><em>Parameter name:</em> notes<br> <em>Required:</em> no</p>'),(220,'serviceextinfo','action_url','all','default','<p><strong>Serviceextinfo -</strong><strong> </strong><strong>action url</strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more actions to be performed on the service. If you specify an URL, you will see a link that says \"Extra Service Actions\" in the extended information CGI (when you are viewing information about the specified service). Any valid URL can be used. If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>).</p>\r\n<p><em>Parameter name:</em> action_url<br> <em>Required:</em> no</p>'),(221,'serviceextinfo','notes_url','all','default','<p><strong>Serviceextinfo -</strong><strong> </strong><strong>notes url</strong></p>\r\n<p>This directive is used to define an optional URL that can be used to provide more information about the service. If you specify an URL, you will see a link that says \"Extra Service Notes\" in the extended information CGI (when you are viewing information about the specified service). Any valid URL can be used.</p>\r\n<p>If you plan on using relative paths, the base path will the the same as what is used to access the CGIs (i.e. <em>/cgi-bin/nagios/</em>). This can be very useful if you want to make detailed information on the service, emergency contact methods, etc. available to other support staff.</p>\r\n<p><em>Parameter name:</em> notes_url<br> <em>Required:</em> no</p>'),(222,'serviceextinfo','icon_image_alt','all','default','<p><strong>Serviceextinfo -</strong><strong> </strong><strong>icon image alt</strong><strong></strong></p>\r\n<p>This variable is used to define an optional string that is used in the ALT tag of the image specified by the <em>&lt;icon_image&gt;</em> argument.  The ALT tag is used in the status, extended information and statusmap CGIs.</p>\r\n<p><em>Parameter name:</em> icon_image_alt<br> <em>Required:</em> no</p>'),(223,'host','services','all','default','<p><strong>Host - service settings</strong></p>\r\n<p><span id=\"result_box\" lang=\"en\"><span>This box can be used to allocate already existing services to a host.&nbsp;</span></span></p>\r\n<p>This is an internal function of NagiosQL.</p>\r\n<p><span id=\"result_box\" lang=\"en\"><span><strong>Note:</strong> To activate the changes, the corresponding service definitions have to be rewritten!</span></span></p>'),(224,'timeperiod','name','all','default','<p><strong>Timeperiod - </strong><strong>name</strong></p>\r\n<p>Its just a \"template\" name that can be referenced in other object  definitions so they can inherit the objects properties/variables.   Template names must be unique amongst objects of the same type, so you  can\'t have two or more time definitions that have \"mytemplate\" as  their template name.</p>\r\n<p><em>Parameter name:</em> name<br /> <em>Required:</em> no</p>'),(225,'timeperiod','include','3','default','<p><strong>Timeperiod - </strong><strong>include</strong></p>\r\n<p>This directive is used to specify the short names (template names) of other timeperiod  definitions whose time ranges should be included to this timeperiod.  Multiple timeperiod names should be separated with a comma.</p>\r\n<p><em>Parameter name:</em> use<br /> <em>Required:</em> no</p>'),(226,'user','adminenable','all','default','<p><strong>User - enable group administration<br /></strong></p>\r\n<p>If this option is selected, the specified user is able to modify the access group for every object definition. This should be restricted only to administrators; otherwise a user might be able to lock himself out.<span id=\"result_box\" lang=\"en\"><span></span></span></p>'),(227,'group','userrights','all','default','<p><strong>Group - user rights</strong></p>\r\n<p>Define the object access rights for a user.</p>\r\n<p><strong>READ</strong> = The user can see the objects belong to this group<br /><strong>WRITE</strong> = The user can modify the objects belong to this group<br /><strong>LINK</strong> = The user can use the objects belong to this group to link them in other objects*<br /><br />* <em>Example:</em> If a time object belongs to this group - the user can add (link) this time object to his contact objects.</p>'),(228,'domain','conffile','all','default','<p>Absolute path to your Nagios config file.<br /><br />Examples:<br />/etc/nagios/nagios.cfg<br />/usr/local/nagios/etc/nagios.cfg<br /><br />This is used to verify your Nagios configuration directly from NagiosQL.</p>'),(229,'domain','enable_common','all','default','<p>This option is used to enable or disable the global common domain functionality.</p>\r\n<p>If this option is enabled, all objects from the global common domain will be added to this domains configuration files. The global common domain can be used to define objects like timeperiods or contacts that are used in all domains the same.</p>'),(230,'domain','utf8_decode','all','default','<p>This is an experimental option!</p>\r\n<p>If this option is enabled, UTF8 data from database will be translated to ISO in configuration file. So, the configuration files will be in ISO mode. This could be helpful, if nagios does not understand the UTF8 data from NagiosQL.</p>\r\n<p>Tested only with western european configurations!</p>'),(231,'domain','picturedir','all','default','<p><strong>Relative</strong> path to your nagios icon images.<br /><br />Example:<br />/my/own/images/</p>\r\n<p>This path is based on your nagios standard image path. Images are assumed to be in the <strong>logos/</strong> subdirectory in your HTML images directory (i.e. /usr/local/nagios/share/images/logos).</p>\r\n<p>So in the example above, the images are located in:</p>\r\n<p>/usr/local/nagios/share/images/logos<span style=\"color: #ff0000;\">/my/own/images/</span></p>'),(232,'common','accessgroup','all','default','<p><strong>Access group</strong></p>\r\n<p>Select an access group name to restrict this object to the group members.</p>'),(233,'common','registered','all','default','<p><strong>Register</strong></p>\r\n<p>This variable is used to indicate whether or not the object definition should be \"registered\" with Nagios. By default, all object definitions are registered. If you are using a partial object definition as a template, you would want to prevent it from being registered (an example of this is provided later). Values are as follows: 0 = do NOT register object definition, 1 = register object definition (this is the default). This variable is NOT inherited; every (partial) object definition used as a template must explicitly set the <em>register</em> directive to be <em>0</em>. This prevents the need to override an inherited <em>register</em> directive with a value of <em>1</em> for every object that should be registered.</p>\r\n<p><em>Parameter name:</em> register<br> <em>Required:</em> yes</p>'),(234,'servicedependency','dependent_servicegroup_name','all','default','<p><strong>Servicedependency -</strong><strong> dependent servicegroup name</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>name</em> of the <em>dependent</em> servicegroup.</p>\r\n<p><em>Parameter name:</em> dependent_servicegroup_name<br> <em>Required:</em> yes (no, if a dependent service is defined)</p>'),(235,'servicedependency','servicegroup_name','all','default','<p><strong>Servicedependency -</strong><strong> </strong><strong>servicegroup name</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>name</em> of the servicegroup <em>that is being depended upon</em> (also referred to as the master service).</p>\r\n<p><em>Parameter name:</em> servicegroup_name<br> <em>Required:</em> yes (no, if a service is defined)</p>'),(236,'serviceescalation','servicegroup','all','default','<p><strong>Serviceescalation - </strong><strong>servicegroup name</strong><strong></strong></p>\r\n<p>This directive is used to identify the <em>name</em> of the servicegroup the escalation should apply to.</p>\r\n<p><em>Parameter name:</em> servicegroup_name<br> <em>Required:</em> yes (no, if a service is defined)</p>'),(237,'user','language','all','default','<p><strong>User - language<br /></strong></p>\r\n<p>Defines a default UI language for the user.</p>'),(238,'user','standarddomain','all','default','<p><strong>User - standard domain<br /></strong></p>\r\n<p>Defines a standard domain for the user. After the user has logged in, the defined domain is pre-selected.</p>'),(239,'domain','targets','all','default','<p>Select a configuration domain which is assigned to this data domain</p>\r\n<p>The settings where to store the configuration files are defined in a configuration domain. Select here the desired target for your configuration files.</p>'),(240,'domain','ssh_host_key','all','default','Absolute path to the ssh key directory for the defined ssh user.<br><br>Examples:<br>/etc/nagiosql/ssh/ <br>/usr/local/nagios/etc/.ssh/<br><br>This directory includes the key file (id_rsa) for the user to connect to the remote system. Note, that the file name is set to id_rsa!');
/*!40000 ALTER TABLE `tbl_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_language`
--

LOCK TABLES `tbl_language` WRITE;
/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */;
INSERT INTO `tbl_language` VALUES (1,'English','en_GB','1','2017-04-06 16:53:34'),(2,'German','de_DE','1','2017-04-06 16:53:34'),(3,'Chinese (Simplified)','zh_CN','1','2017-04-06 16:53:34'),(5,'Italian','it_IT','1','2017-04-06 16:53:34'),(6,'French','fr_FR','1','2017-04-06 16:53:34'),(7,'Russian','ru_RU','1','2017-04-06 16:53:34'),(8,'Spanish','es_ES','1','2017-04-06 16:53:34'),(9,'Portuguese (Brazilian)','pt_BR','1','2017-04-06 16:53:34'),(11,'Dutch','nl_NL','1','2017-04-06 16:53:34'),(13,'Danish','da_DK','1','2017-04-06 16:53:34');
/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContactToCommandHost`
--

DROP TABLE IF EXISTS `tbl_lnkContactToCommandHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContactToCommandHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContactToCommandHost`
--

LOCK TABLES `tbl_lnkContactToCommandHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContactToCommandHost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContactToCommandHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContactToCommandService`
--

DROP TABLE IF EXISTS `tbl_lnkContactToCommandService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContactToCommandService` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContactToCommandService`
--

LOCK TABLES `tbl_lnkContactToCommandService` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContactToCommandService` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContactToCommandService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContactToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkContactToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContactToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContactToContactgroup`
--

LOCK TABLES `tbl_lnkContactToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContactToContactgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContactToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContactToContacttemplate`
--

DROP TABLE IF EXISTS `tbl_lnkContactToContacttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContactToContacttemplate` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `idSort` int(11) NOT NULL,
  `idTable` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`,`idTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContactToContacttemplate`
--

LOCK TABLES `tbl_lnkContactToContacttemplate` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContactToContacttemplate` DISABLE KEYS */;
INSERT INTO `tbl_lnkContactToContacttemplate` VALUES (3,1,1,1);
/*!40000 ALTER TABLE `tbl_lnkContactToContacttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContactToVariabledefinition`
--

DROP TABLE IF EXISTS `tbl_lnkContactToVariabledefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContactToVariabledefinition` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContactToVariabledefinition`
--

LOCK TABLES `tbl_lnkContactToVariabledefinition` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContactToVariabledefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContactToVariabledefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContactgroupToContact`
--

DROP TABLE IF EXISTS `tbl_lnkContactgroupToContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContactgroupToContact` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContactgroupToContact`
--

LOCK TABLES `tbl_lnkContactgroupToContact` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContactgroupToContact` DISABLE KEYS */;
INSERT INTO `tbl_lnkContactgroupToContact` VALUES (1,3,0);
/*!40000 ALTER TABLE `tbl_lnkContactgroupToContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContactgroupToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkContactgroupToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContactgroupToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContactgroupToContactgroup`
--

LOCK TABLES `tbl_lnkContactgroupToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContactgroupToContactgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContactgroupToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContacttemplateToCommandHost`
--

DROP TABLE IF EXISTS `tbl_lnkContacttemplateToCommandHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContacttemplateToCommandHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContacttemplateToCommandHost`
--

LOCK TABLES `tbl_lnkContacttemplateToCommandHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToCommandHost` DISABLE KEYS */;
INSERT INTO `tbl_lnkContacttemplateToCommandHost` VALUES (1,110,0);
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToCommandHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContacttemplateToCommandService`
--

DROP TABLE IF EXISTS `tbl_lnkContacttemplateToCommandService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContacttemplateToCommandService` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContacttemplateToCommandService`
--

LOCK TABLES `tbl_lnkContacttemplateToCommandService` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToCommandService` DISABLE KEYS */;
INSERT INTO `tbl_lnkContacttemplateToCommandService` VALUES (1,112,0);
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToCommandService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContacttemplateToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkContacttemplateToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContacttemplateToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContacttemplateToContactgroup`
--

LOCK TABLES `tbl_lnkContacttemplateToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToContactgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContacttemplateToContacttemplate`
--

DROP TABLE IF EXISTS `tbl_lnkContacttemplateToContacttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContacttemplateToContacttemplate` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `idSort` int(11) NOT NULL,
  `idTable` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`,`idTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContacttemplateToContacttemplate`
--

LOCK TABLES `tbl_lnkContacttemplateToContacttemplate` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToContacttemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToContacttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkContacttemplateToVariabledefinition`
--

DROP TABLE IF EXISTS `tbl_lnkContacttemplateToVariabledefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkContacttemplateToVariabledefinition` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkContacttemplateToVariabledefinition`
--

LOCK TABLES `tbl_lnkContacttemplateToVariabledefinition` WRITE;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToVariabledefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkContacttemplateToVariabledefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkGroupToUser`
--

DROP TABLE IF EXISTS `tbl_lnkGroupToUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkGroupToUser` (
  `idMaster` int(10) unsigned NOT NULL,
  `idSlave` int(10) unsigned NOT NULL,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `write` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `link` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkGroupToUser`
--

LOCK TABLES `tbl_lnkGroupToUser` WRITE;
/*!40000 ALTER TABLE `tbl_lnkGroupToUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkGroupToUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostToContact`
--

DROP TABLE IF EXISTS `tbl_lnkHostToContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostToContact` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostToContact`
--

LOCK TABLES `tbl_lnkHostToContact` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostToContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostToContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkHostToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostToContactgroup`
--

LOCK TABLES `tbl_lnkHostToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostToContactgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostToHost`
--

DROP TABLE IF EXISTS `tbl_lnkHostToHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostToHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostToHost`
--

LOCK TABLES `tbl_lnkHostToHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostToHost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostToHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostToHostgroup`
--

DROP TABLE IF EXISTS `tbl_lnkHostToHostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostToHostgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostToHostgroup`
--

LOCK TABLES `tbl_lnkHostToHostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostToHostgroup` DISABLE KEYS */;
INSERT INTO `tbl_lnkHostToHostgroup` VALUES (14,3,0),(14,4,0),(30,3,0),(30,8,0),(12,3,0),(12,1,0),(13,7,0);
/*!40000 ALTER TABLE `tbl_lnkHostToHostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostToHosttemplate`
--

DROP TABLE IF EXISTS `tbl_lnkHostToHosttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostToHosttemplate` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `idSort` int(11) NOT NULL,
  `idTable` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`,`idTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostToHosttemplate`
--

LOCK TABLES `tbl_lnkHostToHosttemplate` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostToHosttemplate` DISABLE KEYS */;
INSERT INTO `tbl_lnkHostToHosttemplate` VALUES (13,16,1,1),(30,13,1,1),(12,14,1,1),(14,16,1,1);
/*!40000 ALTER TABLE `tbl_lnkHostToHosttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostToVariabledefinition`
--

DROP TABLE IF EXISTS `tbl_lnkHostToVariabledefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostToVariabledefinition` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostToVariabledefinition`
--

LOCK TABLES `tbl_lnkHostToVariabledefinition` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostToVariabledefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostToVariabledefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostdependencyToHost_DH`
--

DROP TABLE IF EXISTS `tbl_lnkHostdependencyToHost_DH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostdependencyToHost_DH` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostdependencyToHost_DH`
--

LOCK TABLES `tbl_lnkHostdependencyToHost_DH` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHost_DH` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHost_DH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostdependencyToHost_H`
--

DROP TABLE IF EXISTS `tbl_lnkHostdependencyToHost_H`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostdependencyToHost_H` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostdependencyToHost_H`
--

LOCK TABLES `tbl_lnkHostdependencyToHost_H` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHost_H` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHost_H` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostdependencyToHostgroup_DH`
--

DROP TABLE IF EXISTS `tbl_lnkHostdependencyToHostgroup_DH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostdependencyToHostgroup_DH` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostdependencyToHostgroup_DH`
--

LOCK TABLES `tbl_lnkHostdependencyToHostgroup_DH` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHostgroup_DH` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHostgroup_DH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostdependencyToHostgroup_H`
--

DROP TABLE IF EXISTS `tbl_lnkHostdependencyToHostgroup_H`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostdependencyToHostgroup_H` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostdependencyToHostgroup_H`
--

LOCK TABLES `tbl_lnkHostdependencyToHostgroup_H` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHostgroup_H` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostdependencyToHostgroup_H` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostescalationToContact`
--

DROP TABLE IF EXISTS `tbl_lnkHostescalationToContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostescalationToContact` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostescalationToContact`
--

LOCK TABLES `tbl_lnkHostescalationToContact` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostescalationToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkHostescalationToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostescalationToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostescalationToContactgroup`
--

LOCK TABLES `tbl_lnkHostescalationToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToContactgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostescalationToHost`
--

DROP TABLE IF EXISTS `tbl_lnkHostescalationToHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostescalationToHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostescalationToHost`
--

LOCK TABLES `tbl_lnkHostescalationToHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToHost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostescalationToHostgroup`
--

DROP TABLE IF EXISTS `tbl_lnkHostescalationToHostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostescalationToHostgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostescalationToHostgroup`
--

LOCK TABLES `tbl_lnkHostescalationToHostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToHostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostescalationToHostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostgroupToHost`
--

DROP TABLE IF EXISTS `tbl_lnkHostgroupToHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostgroupToHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostgroupToHost`
--

LOCK TABLES `tbl_lnkHostgroupToHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostgroupToHost` DISABLE KEYS */;
INSERT INTO `tbl_lnkHostgroupToHost` VALUES (7,13,0);
/*!40000 ALTER TABLE `tbl_lnkHostgroupToHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHostgroupToHostgroup`
--

DROP TABLE IF EXISTS `tbl_lnkHostgroupToHostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHostgroupToHostgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHostgroupToHostgroup`
--

LOCK TABLES `tbl_lnkHostgroupToHostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHostgroupToHostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHostgroupToHostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHosttemplateToContact`
--

DROP TABLE IF EXISTS `tbl_lnkHosttemplateToContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHosttemplateToContact` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHosttemplateToContact`
--

LOCK TABLES `tbl_lnkHosttemplateToContact` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToContact` DISABLE KEYS */;
INSERT INTO `tbl_lnkHosttemplateToContact` VALUES (2,3,0);
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHosttemplateToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkHosttemplateToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHosttemplateToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHosttemplateToContactgroup`
--

LOCK TABLES `tbl_lnkHosttemplateToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToContactgroup` DISABLE KEYS */;
INSERT INTO `tbl_lnkHosttemplateToContactgroup` VALUES (13,1,0),(14,1,0),(16,1,0);
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHosttemplateToHost`
--

DROP TABLE IF EXISTS `tbl_lnkHosttemplateToHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHosttemplateToHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHosttemplateToHost`
--

LOCK TABLES `tbl_lnkHosttemplateToHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToHost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHosttemplateToHostgroup`
--

DROP TABLE IF EXISTS `tbl_lnkHosttemplateToHostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHosttemplateToHostgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHosttemplateToHostgroup`
--

LOCK TABLES `tbl_lnkHosttemplateToHostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToHostgroup` DISABLE KEYS */;
INSERT INTO `tbl_lnkHosttemplateToHostgroup` VALUES (14,1,0),(16,4,0);
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToHostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHosttemplateToHosttemplate`
--

DROP TABLE IF EXISTS `tbl_lnkHosttemplateToHosttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHosttemplateToHosttemplate` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `idSort` int(11) NOT NULL,
  `idTable` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`,`idTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHosttemplateToHosttemplate`
--

LOCK TABLES `tbl_lnkHosttemplateToHosttemplate` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToHosttemplate` DISABLE KEYS */;
INSERT INTO `tbl_lnkHosttemplateToHosttemplate` VALUES (13,2,1,1),(14,2,1,1),(16,2,1,1);
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToHosttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkHosttemplateToVariabledefinition`
--

DROP TABLE IF EXISTS `tbl_lnkHosttemplateToVariabledefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkHosttemplateToVariabledefinition` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkHosttemplateToVariabledefinition`
--

LOCK TABLES `tbl_lnkHosttemplateToVariabledefinition` WRITE;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToVariabledefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkHosttemplateToVariabledefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceToContact`
--

DROP TABLE IF EXISTS `tbl_lnkServiceToContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceToContact` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceToContact`
--

LOCK TABLES `tbl_lnkServiceToContact` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceToContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceToContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkServiceToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceToContactgroup`
--

LOCK TABLES `tbl_lnkServiceToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceToContactgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceToHost`
--

DROP TABLE IF EXISTS `tbl_lnkServiceToHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceToHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceToHost`
--

LOCK TABLES `tbl_lnkServiceToHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceToHost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceToHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceToHostgroup`
--

DROP TABLE IF EXISTS `tbl_lnkServiceToHostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceToHostgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceToHostgroup`
--

LOCK TABLES `tbl_lnkServiceToHostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceToHostgroup` DISABLE KEYS */;
INSERT INTO `tbl_lnkServiceToHostgroup` VALUES (39,4,0),(1,4,0),(120,4,0),(120,1,0),(118,8,0),(117,8,0),(116,8,0),(115,8,0),(114,8,0),(113,8,0),(112,8,0),(111,8,0),(110,8,0),(109,8,0),(23,7,0),(25,7,0),(30,4,0),(103,8,0),(31,4,0),(31,1,0),(32,4,0),(32,1,0),(33,4,0),(45,4,0),(34,4,0),(35,4,0),(36,1,0),(37,4,0),(38,4,0),(102,8,0),(106,8,0),(41,1,0),(42,4,0),(42,1,0),(43,1,0),(44,4,0),(44,1,0),(101,8,0),(46,4,0),(46,1,0),(47,4,0),(108,8,0),(105,8,0),(64,7,0),(65,7,0),(66,7,0),(100,8,0),(68,7,0),(69,7,0),(70,7,0),(71,7,0),(107,8,0),(30,1,0),(104,8,0);
/*!40000 ALTER TABLE `tbl_lnkServiceToHostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceToServicegroup`
--

DROP TABLE IF EXISTS `tbl_lnkServiceToServicegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceToServicegroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceToServicegroup`
--

LOCK TABLES `tbl_lnkServiceToServicegroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceToServicegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceToServicegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceToServicetemplate`
--

DROP TABLE IF EXISTS `tbl_lnkServiceToServicetemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceToServicetemplate` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `idSort` int(11) NOT NULL,
  `idTable` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`,`idTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceToServicetemplate`
--

LOCK TABLES `tbl_lnkServiceToServicetemplate` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceToServicetemplate` DISABLE KEYS */;
INSERT INTO `tbl_lnkServiceToServicetemplate` VALUES (1,3,1,1),(102,3,1,1),(120,3,1,1),(118,3,1,1),(117,3,1,1),(116,3,1,1),(115,3,1,1),(114,3,1,1),(113,3,1,1),(112,3,1,1),(111,3,1,1),(110,3,1,1),(109,3,1,1),(108,3,1,1),(107,3,1,1),(23,3,1,1),(25,3,1,1),(30,3,1,1),(31,3,1,1),(32,3,1,1),(33,3,1,1),(34,3,1,1),(35,3,1,1),(36,3,1,1),(37,3,1,1),(38,3,1,1),(39,3,1,1),(104,3,1,1),(41,3,1,1),(42,3,1,1),(43,3,1,1),(44,3,1,1),(45,3,1,1),(46,3,1,1),(47,3,1,1),(106,3,1,1),(103,3,1,1),(64,4,1,1),(65,4,1,1),(66,4,1,1),(100,3,1,1),(68,4,1,1),(69,4,1,1),(70,4,1,1),(71,4,1,1),(105,3,1,1),(101,3,1,1);
/*!40000 ALTER TABLE `tbl_lnkServiceToServicetemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceToVariabledefinition`
--

DROP TABLE IF EXISTS `tbl_lnkServiceToVariabledefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceToVariabledefinition` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceToVariabledefinition`
--

LOCK TABLES `tbl_lnkServiceToVariabledefinition` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceToVariabledefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceToVariabledefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToHost_DH`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToHost_DH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToHost_DH` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToHost_DH`
--

LOCK TABLES `tbl_lnkServicedependencyToHost_DH` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHost_DH` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHost_DH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToHost_H`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToHost_H`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToHost_H` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToHost_H`
--

LOCK TABLES `tbl_lnkServicedependencyToHost_H` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHost_H` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHost_H` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToHostgroup_DH`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToHostgroup_DH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToHostgroup_DH` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToHostgroup_DH`
--

LOCK TABLES `tbl_lnkServicedependencyToHostgroup_DH` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHostgroup_DH` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHostgroup_DH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToHostgroup_H`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToHostgroup_H`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToHostgroup_H` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToHostgroup_H`
--

LOCK TABLES `tbl_lnkServicedependencyToHostgroup_H` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHostgroup_H` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToHostgroup_H` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToService_DS`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToService_DS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToService_DS` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `strSlave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToService_DS`
--

LOCK TABLES `tbl_lnkServicedependencyToService_DS` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToService_DS` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToService_DS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToService_S`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToService_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToService_S` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `strSlave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToService_S`
--

LOCK TABLES `tbl_lnkServicedependencyToService_S` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToService_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToService_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToServicegroup_DS`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToServicegroup_DS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToServicegroup_DS` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToServicegroup_DS`
--

LOCK TABLES `tbl_lnkServicedependencyToServicegroup_DS` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToServicegroup_DS` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToServicegroup_DS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicedependencyToServicegroup_S`
--

DROP TABLE IF EXISTS `tbl_lnkServicedependencyToServicegroup_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicedependencyToServicegroup_S` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicedependencyToServicegroup_S`
--

LOCK TABLES `tbl_lnkServicedependencyToServicegroup_S` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToServicegroup_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicedependencyToServicegroup_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceescalationToContact`
--

DROP TABLE IF EXISTS `tbl_lnkServiceescalationToContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceescalationToContact` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceescalationToContact`
--

LOCK TABLES `tbl_lnkServiceescalationToContact` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceescalationToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkServiceescalationToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceescalationToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceescalationToContactgroup`
--

LOCK TABLES `tbl_lnkServiceescalationToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToContactgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceescalationToHost`
--

DROP TABLE IF EXISTS `tbl_lnkServiceescalationToHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceescalationToHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceescalationToHost`
--

LOCK TABLES `tbl_lnkServiceescalationToHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToHost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceescalationToHostgroup`
--

DROP TABLE IF EXISTS `tbl_lnkServiceescalationToHostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceescalationToHostgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceescalationToHostgroup`
--

LOCK TABLES `tbl_lnkServiceescalationToHostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToHostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToHostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceescalationToService`
--

DROP TABLE IF EXISTS `tbl_lnkServiceescalationToService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceescalationToService` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `strSlave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceescalationToService`
--

LOCK TABLES `tbl_lnkServiceescalationToService` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToService` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServiceescalationToServicegroup`
--

DROP TABLE IF EXISTS `tbl_lnkServiceescalationToServicegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServiceescalationToServicegroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServiceescalationToServicegroup`
--

LOCK TABLES `tbl_lnkServiceescalationToServicegroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToServicegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServiceescalationToServicegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicegroupToService`
--

DROP TABLE IF EXISTS `tbl_lnkServicegroupToService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicegroupToService` (
  `idMaster` int(11) NOT NULL,
  `idSlaveH` int(11) NOT NULL,
  `idSlaveHG` int(11) NOT NULL,
  `idSlaveS` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlaveH`,`idSlaveHG`,`idSlaveS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicegroupToService`
--

LOCK TABLES `tbl_lnkServicegroupToService` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicegroupToService` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicegroupToService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicegroupToServicegroup`
--

DROP TABLE IF EXISTS `tbl_lnkServicegroupToServicegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicegroupToServicegroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicegroupToServicegroup`
--

LOCK TABLES `tbl_lnkServicegroupToServicegroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicegroupToServicegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicegroupToServicegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicetemplateToContact`
--

DROP TABLE IF EXISTS `tbl_lnkServicetemplateToContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicetemplateToContact` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicetemplateToContact`
--

LOCK TABLES `tbl_lnkServicetemplateToContact` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicetemplateToContactgroup`
--

DROP TABLE IF EXISTS `tbl_lnkServicetemplateToContactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicetemplateToContactgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicetemplateToContactgroup`
--

LOCK TABLES `tbl_lnkServicetemplateToContactgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToContactgroup` DISABLE KEYS */;
INSERT INTO `tbl_lnkServicetemplateToContactgroup` VALUES (3,1,0);
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToContactgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicetemplateToHost`
--

DROP TABLE IF EXISTS `tbl_lnkServicetemplateToHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicetemplateToHost` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicetemplateToHost`
--

LOCK TABLES `tbl_lnkServicetemplateToHost` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToHost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicetemplateToHostgroup`
--

DROP TABLE IF EXISTS `tbl_lnkServicetemplateToHostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicetemplateToHostgroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicetemplateToHostgroup`
--

LOCK TABLES `tbl_lnkServicetemplateToHostgroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToHostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToHostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicetemplateToServicegroup`
--

DROP TABLE IF EXISTS `tbl_lnkServicetemplateToServicegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicetemplateToServicegroup` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicetemplateToServicegroup`
--

LOCK TABLES `tbl_lnkServicetemplateToServicegroup` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToServicegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToServicegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicetemplateToServicetemplate`
--

DROP TABLE IF EXISTS `tbl_lnkServicetemplateToServicetemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicetemplateToServicetemplate` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `idSort` int(11) NOT NULL,
  `idTable` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`,`idTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicetemplateToServicetemplate`
--

LOCK TABLES `tbl_lnkServicetemplateToServicetemplate` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToServicetemplate` DISABLE KEYS */;
INSERT INTO `tbl_lnkServicetemplateToServicetemplate` VALUES (4,3,1,1);
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToServicetemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkServicetemplateToVariabledefinition`
--

DROP TABLE IF EXISTS `tbl_lnkServicetemplateToVariabledefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkServicetemplateToVariabledefinition` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkServicetemplateToVariabledefinition`
--

LOCK TABLES `tbl_lnkServicetemplateToVariabledefinition` WRITE;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToVariabledefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkServicetemplateToVariabledefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkTimeperiodToTimeperiod`
--

DROP TABLE IF EXISTS `tbl_lnkTimeperiodToTimeperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkTimeperiodToTimeperiod` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkTimeperiodToTimeperiod`
--

LOCK TABLES `tbl_lnkTimeperiodToTimeperiod` WRITE;
/*!40000 ALTER TABLE `tbl_lnkTimeperiodToTimeperiod` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lnkTimeperiodToTimeperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lnkTimeperiodToTimeperiodUse`
--

DROP TABLE IF EXISTS `tbl_lnkTimeperiodToTimeperiodUse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lnkTimeperiodToTimeperiodUse` (
  `idMaster` int(11) NOT NULL,
  `idSlave` int(11) NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idMaster`,`idSlave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lnkTimeperiodToTimeperiodUse`
--

LOCK TABLES `tbl_lnkTimeperiodToTimeperiodUse` WRITE;
/*!40000 ALTER TABLE `tbl_lnkTimeperiodToTimeperiodUse` DISABLE KEYS */;
INSERT INTO `tbl_lnkTimeperiodToTimeperiodUse` VALUES (2,3,0);
/*!40000 ALTER TABLE `tbl_lnkTimeperiodToTimeperiodUse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logbook`
--

DROP TABLE IF EXISTS `tbl_logbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_logbook` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ipadress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry` tinytext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9837 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logbook`
--

LOCK TABLES `tbl_logbook` WRITE;
/*!40000 ALTER TABLE `tbl_logbook` DISABLE KEYS */;
INSERT INTO `tbl_logbook` VALUES (8301,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory.cfg_old_20171201231349'),(8302,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory.cfg_old_20171202143418'),(8303,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory.cfg_old_20171202154047'),(8304,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171201185909'),(8305,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171201230140'),(8306,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171201231047'),(8307,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171201231349'),(8308,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171202143418'),(8309,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171202154047'),(8310,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171201185909'),(8311,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171201230140'),(8312,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171201231047'),(8313,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171201231349'),(8314,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171202143418'),(8315,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171202154047'),(8316,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171201185909'),(8317,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171201230140'),(8318,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171201231047'),(8319,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171201231349'),(8320,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171202143418'),(8321,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171202154047'),(8322,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171201185909'),(8323,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171201230140'),(8324,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171201231047'),(8325,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171201231349'),(8326,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171202143418'),(8327,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171202154047'),(8328,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171201185909'),(8329,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171201230140'),(8330,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171201231047'),(8331,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171201231349'),(8332,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171202143418'),(8333,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171202154047'),(8334,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_swap.cfg_old_20171201185909'),(8335,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_swap.cfg_old_20171201230140'),(8336,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_swap.cfg_old_20171201231047'),(8337,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_swap.cfg_old_20171201231349'),(8338,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_swap.cfg_old_20171202143418'),(8339,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_swap.cfg_old_20171202154047'),(8340,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_info.cfg_old_20171201185909'),(8341,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_info.cfg_old_20171201230140'),(8342,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_info.cfg_old_20171201231047'),(8343,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_info.cfg_old_20171201231349'),(8344,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_info.cfg_old_20171202143418'),(8345,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_info.cfg_old_20171202154047'),(8346,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171201185909'),(8347,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171201230140'),(8348,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171201231047'),(8349,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171201231349'),(8350,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171202143418'),(8351,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171202154047'),(8352,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_uptime.cfg_old_20171201185909'),(8353,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_uptime.cfg_old_20171201230140'),(8354,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_uptime.cfg_old_20171201231047'),(8355,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_uptime.cfg_old_20171201231349'),(8356,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_uptime.cfg_old_20171202143418'),(8357,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_uptime.cfg_old_20171202154047'),(8358,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171201185909'),(8359,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171201230140'),(8360,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171201231047'),(8361,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171201231349'),(8362,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171202143418'),(8363,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171202154047'),(8364,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: localhost.cfg_old_20171201185909'),(8365,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: localhost.cfg_old_20171201230140'),(8366,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: localhost.cfg_old_20171201231047'),(8367,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: localhost.cfg_old_20171201231349'),(8368,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: localhost.cfg_old_20171202143418'),(8369,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: localhost.cfg_old_20171202154047'),(8370,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171201230615'),(8371,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171201231047'),(8372,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171201231349'),(8373,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171201231548'),(8374,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202015437'),(8375,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202020045'),(8376,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202143418'),(8377,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202143634'),(8378,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202144008'),(8379,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202144556'),(8380,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202144937'),(8381,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202150535'),(8382,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202150824'),(8383,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: vmware-esx-io-read.cfg_old_20171202154047'),(8384,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: servicetemplates.cfg_old_20171201185721'),(8385,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: servicetemplates.cfg_old_20171201185909'),(8386,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: servicetemplates.cfg_old_20171201231349'),(8387,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: timeperiods.cfg_old_20171201185853'),(8388,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: timeperiods.cfg_old_20171201185909'),(8389,'2017-12-02 15:40:56','admin','172.21.137.38','localhost','File deleted: timeperiods.cfg_old_20171201231349'),(8390,'2017-12-02 15:41:04','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8391,'2017-12-02 15:41:05','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8392,'2017-12-02 16:00:59','admin','172.21.137.38','common','Login successful'),(8393,'2017-12-02 16:01:43','admin','172.21.137.38','localhost','Command modified: VMware_check'),(8394,'2017-12-02 16:01:45','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8395,'2017-12-02 16:01:48','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8396,'2017-12-02 16:01:49','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8397,'2017-12-02 16:01:51','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8398,'2017-12-02 18:54:12','admin','172.21.137.38','localhost','Session timeout reached - Seconds: 10341 - User: admin'),(8399,'2017-12-02 18:54:16','admin','172.21.137.38','common','Login successful'),(8400,'2017-12-02 18:56:07','admin','172.21.137.38','localhost','Command modified: VMware_check'),(8401,'2017-12-02 18:56:09','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8402,'2017-12-02 18:56:12','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8403,'2017-12-02 18:56:13','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8404,'2017-12-02 18:57:14','admin','172.21.137.38','localhost','Command modified: VMware_check'),(8405,'2017-12-02 18:57:15','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8406,'2017-12-02 18:57:19','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8407,'2017-12-02 18:57:19','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8408,'2017-12-03 00:59:50','admin','172.21.137.38','localhost','Session timeout reached - Seconds: 21751 - User: admin'),(8409,'2017-12-03 00:59:54','admin','172.21.137.38','common','Login successful'),(8410,'2017-12-03 01:00:18','admin','172.21.137.38','localhost','New command inserted: VMware_test'),(8411,'2017-12-03 01:00:20','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8412,'2017-12-03 01:00:31','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8413,'2017-12-03 01:00:34','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8414,'2017-12-03 01:00:38','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8415,'2017-12-03 01:00:39','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8416,'2017-12-03 02:48:29','admin','172.21.137.38','common','Login successful'),(8417,'2017-12-03 02:49:00','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8418,'2017-12-03 02:49:04','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8419,'2017-12-03 02:49:38','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8420,'2017-12-03 02:49:40','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8421,'2017-12-03 02:49:52','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8422,'2017-12-03 02:49:55','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8423,'2017-12-03 02:49:58','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8424,'2017-12-03 02:49:59','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8425,'2017-12-03 02:51:59','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8426,'2017-12-03 02:52:01','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8427,'2017-12-03 02:52:05','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8428,'2017-12-03 02:52:05','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8429,'2017-12-03 02:54:10','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8430,'2017-12-03 02:54:12','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8431,'2017-12-03 02:54:18','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8432,'2017-12-03 02:54:18','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8433,'2017-12-03 02:55:22','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8434,'2017-12-03 02:55:24','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8435,'2017-12-03 02:55:43','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8436,'2017-12-03 02:55:46','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8437,'2017-12-03 02:55:48','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8438,'2017-12-03 02:55:50','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8439,'2017-12-03 02:58:52','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8440,'2017-12-03 02:58:53','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8441,'2017-12-03 02:58:57','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8442,'2017-12-03 02:58:57','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8443,'2017-12-03 03:00:14','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8444,'2017-12-03 03:00:17','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8445,'2017-12-03 03:00:19','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8446,'2017-12-03 03:00:20','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8447,'2017-12-03 03:02:12','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8448,'2017-12-03 03:02:14','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8449,'2017-12-03 03:02:19','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8450,'2017-12-03 03:02:20','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8451,'2017-12-03 03:09:06','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8452,'2017-12-03 03:09:08','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8453,'2017-12-03 03:09:12','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8454,'2017-12-03 03:09:12','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8455,'2017-12-03 03:18:16','admin','172.21.137.38','localhost','New command inserted: test'),(8456,'2017-12-03 03:18:18','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8457,'2017-12-03 03:18:46','admin','172.21.137.38','localhost','Command modified: test'),(8458,'2017-12-03 03:18:47','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8459,'2017-12-03 03:19:17','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8460,'2017-12-03 03:19:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8461,'2017-12-03 03:19:22','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8462,'2017-12-03 03:19:23','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8463,'2017-12-03 03:38:38','admin','172.21.137.38','localhost','Command modified: test'),(8464,'2017-12-03 03:38:40','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8465,'2017-12-03 03:38:43','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8466,'2017-12-03 03:38:44','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8467,'2017-12-03 05:17:22','admin','172.21.137.38','localhost','Session timeout reached - Seconds: 5918 - User: admin'),(8468,'2017-12-03 05:17:26','admin','172.21.137.38','common','Login successful'),(8469,'2017-12-03 05:18:18','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8470,'2017-12-03 05:18:20','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8471,'2017-12-03 05:18:28','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8472,'2017-12-03 05:18:29','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8473,'2017-12-03 05:20:03','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8474,'2017-12-03 05:20:05','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8475,'2017-12-03 05:20:08','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8476,'2017-12-03 05:20:09','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8477,'2017-12-03 06:54:25','admin','172.21.137.38','common','Login successful'),(8478,'2017-12-03 06:54:43','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8479,'2017-12-03 06:54:45','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8480,'2017-12-03 06:54:48','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8481,'2017-12-03 06:54:49','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8482,'2017-12-03 06:55:44','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8483,'2017-12-03 06:55:46','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8484,'2017-12-03 06:55:49','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8485,'2017-12-03 06:55:50','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8486,'2017-12-03 06:56:38','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8487,'2017-12-03 06:56:40','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8488,'2017-12-03 06:56:44','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8489,'2017-12-03 06:56:44','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8490,'2017-12-03 13:04:18','admin','172.21.137.38','common','Login successful'),(8491,'2017-12-03 13:04:51','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8492,'2017-12-03 13:04:52','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8493,'2017-12-03 13:04:55','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/1'),(8494,'2017-12-03 13:05:24','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8495,'2017-12-03 13:05:26','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8496,'2017-12-03 13:10:30','admin','172.21.137.38','common','Login successful'),(8497,'2017-12-03 13:11:32','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8498,'2017-12-03 13:11:33','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8499,'2017-12-03 13:11:36','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8500,'2017-12-03 13:11:39','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8501,'2017-12-03 13:12:32','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8502,'2017-12-03 13:12:33','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8503,'2017-12-03 13:12:37','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8504,'2017-12-03 13:12:37','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8505,'2017-12-03 13:13:23','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8506,'2017-12-03 13:13:24','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8507,'2017-12-03 13:13:27','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8508,'2017-12-03 13:13:27','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8509,'2017-12-03 13:19:52','admin','172.21.137.38','common','Login successful'),(8510,'2017-12-03 13:19:57','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-io-read (1)]'),(8511,'2017-12-03 13:20:21','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-write'),(8512,'2017-12-03 13:20:21','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-read (1).cfg'),(8513,'2017-12-03 13:20:21','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-read (1).cfg'),(8514,'2017-12-03 13:20:37','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-read'),(8515,'2017-12-03 13:20:49','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-write'),(8516,'2017-12-03 13:21:48','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8517,'2017-12-03 13:21:50','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8518,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8519,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8520,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8521,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8522,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8523,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8524,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8525,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8526,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8527,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8528,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8529,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8530,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8531,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8532,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8533,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8534,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8535,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8536,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8537,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8538,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8539,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8540,'2017-12-03 13:21:55','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8541,'2017-12-03 13:22:00','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8542,'2017-12-03 13:22:01','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8543,'2017-12-03 13:23:14','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8544,'2017-12-03 13:23:15','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8545,'2017-12-03 13:23:18','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8546,'2017-12-03 13:23:25','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8547,'2017-12-03 13:37:01','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-io-write (1)]'),(8548,'2017-12-03 13:38:28','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-cpu'),(8549,'2017-12-03 13:38:28','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-write (1).cfg'),(8550,'2017-12-03 13:38:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-cpu.cfg'),(8551,'2017-12-03 13:38:36','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8552,'2017-12-03 13:38:37','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8553,'2017-12-03 13:39:15','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-io-write (1)]'),(8554,'2017-12-03 13:39:38','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-device'),(8555,'2017-12-03 13:39:38','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-write (1).cfg'),(8556,'2017-12-03 13:39:54','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-io-device (1)]'),(8557,'2017-12-03 13:40:09','admin','172.21.137.38','localhost','Service modified: vmware-esx-cpu-usage'),(8558,'2017-12-03 13:40:09','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-cpu.cfg'),(8559,'2017-12-03 13:40:46','admin','172.21.137.38','localhost','Service modified: vmware-esx-mem-memctl'),(8560,'2017-12-03 13:40:46','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-device (1).cfg'),(8561,'2017-12-03 13:41:09','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-mem-memctl (1)]'),(8562,'2017-12-03 13:41:40','admin','172.21.137.38','localhost','Service modified: vmware-esx-mem-overhead'),(8563,'2017-12-03 13:41:40','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-mem-memctl (1).cfg'),(8564,'2017-12-03 13:41:57','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-mem-overhead (1)]'),(8565,'2017-12-03 13:42:32','admin','172.21.137.38','localhost','Service modified: vmware-esx-mem-usage'),(8566,'2017-12-03 13:42:32','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-mem-overhead (1).cfg'),(8567,'2017-12-03 13:42:32','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-mem-overhead (1).cfg'),(8568,'2017-12-03 13:42:39','admin','172.21.137.38','localhost','Service modified: vmware-esx-mem-usage'),(8569,'2017-12-03 13:43:25','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-mem-usage (1)]'),(8570,'2017-12-03 13:44:06','admin','172.21.137.38','localhost','Service modified: vmware-esx-network-cards'),(8571,'2017-12-03 13:44:06','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-mem-usage (1).cfg'),(8572,'2017-12-03 13:44:06','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-mem-usage (1).cfg'),(8573,'2017-12-03 13:44:10','admin','172.21.137.38','localhost','Service modified: vmware-esx-network-cards'),(8574,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8575,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8576,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8577,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8578,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8579,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8580,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8581,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8582,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8583,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8584,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8585,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8586,'2017-12-03 13:44:12','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8587,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8588,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8589,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8590,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8591,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8592,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8593,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8594,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8595,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8596,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8597,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8598,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8599,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8600,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8601,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8602,'2017-12-03 13:44:13','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8603,'2017-12-03 13:44:16','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8604,'2017-12-03 13:44:16','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8605,'2017-12-03 13:44:50','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-network-cards (1)]'),(8606,'2017-12-03 13:45:22','admin','172.21.137.38','localhost','Service modified: vmware-esx-network-usage'),(8607,'2017-12-03 13:45:22','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-network-cards (1).cfg'),(8608,'2017-12-03 13:45:41','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-network-usage (1)]'),(8609,'2017-12-03 13:46:07','admin','172.21.137.38','localhost','Service modified: vmware-esx-runtime-health'),(8610,'2017-12-03 13:46:07','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-network-usage (1).cfg'),(8611,'2017-12-03 13:46:18','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-runtime-health (1)]'),(8612,'2017-12-03 13:46:40','admin','172.21.137.38','localhost','Service modified: vmware-esx-runtime-issues'),(8613,'2017-12-03 13:46:40','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-runtime-health (1).cfg'),(8614,'2017-12-03 13:46:52','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-runtime-issues (1)]'),(8615,'2017-12-03 13:47:15','admin','172.21.137.38','localhost','Service modified: vmware-esx-runtime-maintenance'),(8616,'2017-12-03 13:47:15','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-runtime-issues (1).cfg'),(8617,'2017-12-03 13:47:57','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-runtime-maintenance (1)]'),(8618,'2017-12-03 13:48:17','admin','172.21.137.38','localhost','Service modified: vmware-esx-runtime-temperatue'),(8619,'2017-12-03 13:48:17','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-runtime-maintenance (1).cfg'),(8620,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8621,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8622,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8623,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8624,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8625,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8626,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8627,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8628,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8629,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8630,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8631,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8632,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8633,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8634,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8635,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8636,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8637,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8638,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8639,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8640,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8641,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8642,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8643,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8644,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8645,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8646,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8647,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8648,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8649,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(8650,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(8651,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(8652,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(8653,'2017-12-03 13:48:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-temperatue.cfg'),(8654,'2017-12-03 13:48:24','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8655,'2017-12-03 13:48:25','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8656,'2017-12-03 13:49:17','admin','172.21.137.38','localhost','Service modified: vmware-esx-runtime-temperature'),(8657,'2017-12-03 13:49:17','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-runtime-temperatue.cfg'),(8658,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8659,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8660,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8661,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8662,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8663,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8664,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8665,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8666,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8667,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8668,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8669,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8670,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8671,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8672,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8673,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8674,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8675,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8676,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8677,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8678,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8679,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8680,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8681,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8682,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8683,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8684,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8685,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8686,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8687,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(8688,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(8689,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(8690,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(8691,'2017-12-03 13:49:19','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(8692,'2017-12-03 13:49:22','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8693,'2017-12-03 13:49:22','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8694,'2017-12-03 13:57:33','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-runtime-temperature (1)]'),(8695,'2017-12-03 14:01:26','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-io-write (1)]'),(8696,'2017-12-03 14:02:00','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-queue'),(8697,'2017-12-03 14:02:00','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-write (1).cfg'),(8698,'2017-12-03 14:02:03','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-io-queue (1)]'),(8699,'2017-12-03 14:02:24','admin','172.21.137.38','localhost','Service modified: vmware-esx-io-kernel'),(8700,'2017-12-03 14:02:24','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-io-queue (1).cfg'),(8701,'2017-12-03 14:03:34','admin','172.21.137.38','localhost','Service modified: vmware-esx-storage-paths'),(8702,'2017-12-03 14:03:34','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-runtime-temperature (1).cfg'),(8703,'2017-12-03 14:03:37','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-storage-paths (1)]'),(8704,'2017-12-03 14:03:57','admin','172.21.137.38','localhost','Service modified: vmware-esx-storage-luns'),(8705,'2017-12-03 14:03:57','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-storage-paths (1).cfg'),(8706,'2017-12-03 14:04:00','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-storage-paths (1)]'),(8707,'2017-12-03 14:05:16','admin','172.21.137.38','localhost','Service modified: vmware-esx-uptime'),(8708,'2017-12-03 14:05:16','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-storage-paths (1).cfg'),(8709,'2017-12-03 14:05:17','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8710,'2017-12-03 14:05:17','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8711,'2017-12-03 14:05:17','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8712,'2017-12-03 14:05:17','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8713,'2017-12-03 14:05:17','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8714,'2017-12-03 14:05:17','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8715,'2017-12-03 14:05:17','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8716,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8717,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8718,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8719,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8720,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8721,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8722,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8723,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8724,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8725,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8726,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8727,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8728,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8729,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8730,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8731,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8732,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(8733,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(8734,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8735,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8736,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8737,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8738,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8739,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8740,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(8741,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(8742,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(8743,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(8744,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(8745,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(8746,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(8747,'2017-12-03 14:05:18','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(8748,'2017-12-03 14:05:21','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 2/0'),(8749,'2017-12-03 14:07:48','admin','172.21.137.38','localhost','Service modified: vmware-esx-storage-paths'),(8750,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8751,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8752,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8753,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8754,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8755,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8756,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8757,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8758,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8759,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8760,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8761,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8762,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8763,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8764,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8765,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8766,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8767,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8768,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8769,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8770,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8771,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8772,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8773,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(8774,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(8775,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8776,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8777,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8778,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8779,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8780,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8781,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(8782,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(8783,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(8784,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(8785,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(8786,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(8787,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(8788,'2017-12-03 14:07:49','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(8789,'2017-12-03 14:07:52','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8790,'2017-12-03 14:07:53','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8791,'2017-12-03 14:08:31','admin','172.21.137.38','localhost','Service modified: vmware-esx-storage-paths'),(8792,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8793,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8794,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8795,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8796,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8797,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8798,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8799,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8800,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8801,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8802,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8803,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8804,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8805,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8806,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8807,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8808,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8809,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8810,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8811,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8812,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8813,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8814,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8815,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(8816,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(8817,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8818,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8819,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8820,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8821,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8822,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8823,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(8824,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(8825,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(8826,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(8827,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(8828,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(8829,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(8830,'2017-12-03 14:08:32','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(8831,'2017-12-03 14:08:34','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8832,'2017-12-03 14:08:35','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8833,'2017-12-03 14:10:52','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-storage-paths (1)]'),(8834,'2017-12-03 14:11:13','admin','172.21.137.38','localhost','Service modified: vmware-esx-storage-usage'),(8835,'2017-12-03 14:11:13','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-storage-paths (1).cfg'),(8836,'2017-12-03 14:11:13','admin','172.21.137.38','localhost','Service file deleted: vmware-esx-storage-paths (1).cfg'),(8837,'2017-12-03 14:11:14','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8838,'2017-12-03 14:11:14','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8839,'2017-12-03 14:11:14','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8840,'2017-12-03 14:11:14','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8841,'2017-12-03 14:11:14','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8842,'2017-12-03 14:11:14','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8843,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8844,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8845,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8846,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8847,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8848,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8849,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8850,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8851,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8852,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8853,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8854,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8855,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8856,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8857,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8858,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8859,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8860,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(8861,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(8862,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8863,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8864,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8865,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8866,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8867,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8868,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(8869,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(8870,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(8871,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(8872,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(8873,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(8874,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(8875,'2017-12-03 14:11:15','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(8876,'2017-12-03 14:11:20','admin','172.21.137.38','localhost','Service modified: vmware-esx-storage-usage'),(8877,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(8878,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(8879,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(8880,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(8881,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_interface.cfg'),(8882,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(8883,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(8884,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(8885,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory.cfg'),(8886,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(8887,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(8888,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(8889,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(8890,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(8891,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_swap.cfg'),(8892,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(8893,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(8894,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(8895,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(8896,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: localhost.cfg'),(8897,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(8898,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(8899,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(8900,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(8901,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(8902,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(8903,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(8904,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(8905,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(8906,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(8907,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(8908,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(8909,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(8910,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(8911,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(8912,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(8913,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(8914,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(8915,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-storage-usage.cfg'),(8916,'2017-12-03 14:11:21','admin','172.21.137.38','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(8917,'2017-12-03 14:11:23','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8918,'2017-12-03 14:11:24','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8919,'2017-12-03 14:15:44','admin','172.21.137.38','localhost','Delete data from table: tbl_command - with affected rows: 1'),(8920,'2017-12-03 14:15:50','admin','172.21.137.38','localhost','Delete data from table: tbl_command - with affected rows: 1'),(8921,'2017-12-03 14:15:58','admin','172.21.137.38','localhost','Command modified: VMWare_check_api_wrapper'),(8922,'2017-12-03 14:16:03','admin','172.21.137.38','localhost','Configuration successfully written: commands.cfg'),(8923,'2017-12-03 14:16:06','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8924,'2017-12-03 14:16:07','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8925,'2017-12-03 14:16:55','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_host [ossmon01-esna (1)]'),(8926,'2017-12-03 14:16:58','admin','172.21.137.38','localhost','Host file deleted: ossmon01-esna (1).cfg'),(8927,'2017-12-03 14:16:58','admin','172.21.137.38','localhost','Delete data from table: tbl_host - with affected rows: 1'),(8928,'2017-12-03 14:17:05','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_host [ossc1to3-esx02 (1)]'),(8929,'2017-12-03 14:17:05','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_host [ossc1to3-esx02 (2)]'),(8930,'2017-12-03 14:17:06','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_host [ossc1to3-esx02 (3)]'),(8931,'2017-12-03 14:17:07','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_host [ossc1to3-esx02 (4)]'),(8932,'2017-12-03 14:17:07','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_host [ossc1to3-esx02 (5)]'),(8933,'2017-12-03 14:17:19','admin','172.21.137.38','localhost','Host modified: ossc1to3-esx01'),(8934,'2017-12-03 14:17:19','admin','172.21.137.38','localhost','Host file deleted: ossc1to3-esx02 (1).cfg'),(8935,'2017-12-03 14:17:36','admin','172.21.137.38','localhost','Host modified: ossc1to3-esx03'),(8936,'2017-12-03 14:17:36','admin','172.21.137.38','localhost','Host file deleted: ossc1to3-esx02 (2).cfg'),(8937,'2017-12-03 14:17:53','admin','172.21.137.38','localhost','Host modified: ossc1to3-esx04'),(8938,'2017-12-03 14:17:53','admin','172.21.137.38','localhost','Host file deleted: ossc1to3-esx02 (3).cfg'),(8939,'2017-12-03 14:18:05','admin','172.21.137.38','localhost','Host modified: ossc1to3-esx05'),(8940,'2017-12-03 14:18:05','admin','172.21.137.38','localhost','Host file deleted: ossc1to3-esx02 (4).cfg'),(8941,'2017-12-03 14:18:19','admin','172.21.137.38','localhost','Host modified: ossc1to3-esx06'),(8942,'2017-12-03 14:18:19','admin','172.21.137.38','localhost','Host file deleted: ossc1to3-esx02 (5).cfg'),(8943,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossc1to3-esx06.cfg'),(8944,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossmon01-esna.cfg'),(8945,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossc1to3-esx02.cfg'),(8946,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossmon01-esna-temp.cfg'),(8947,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossc1to3-esx01.cfg'),(8948,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossc1to3-esx03.cfg'),(8949,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossc1to3-esx05.cfg'),(8950,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: ossc1to3-esx04.cfg'),(8951,'2017-12-03 14:18:20','admin','172.21.137.38','localhost','Configuration successfully written: worker01.cfg'),(8952,'2017-12-03 14:18:23','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8953,'2017-12-03 14:18:24','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8954,'2017-12-04 05:07:01','admin','172.21.137.38','localhost','Session timeout reached - Seconds: 52633 - User: admin'),(8955,'2017-12-04 05:07:06','admin','172.21.137.38','common','Login successful'),(8956,'2017-12-04 05:07:16','admin','172.21.137.38','localhost','Data set copied - table [new name]: tbl_host [ossmon01-esna (1)]'),(8957,'2017-12-04 05:07:42','admin','172.21.137.38','localhost','Host modified: rhsat01-esna'),(8958,'2017-12-04 05:07:42','admin','172.21.137.38','localhost','Host file deleted: ossmon01-esna (1).cfg'),(8959,'2017-12-04 05:07:45','admin','172.21.137.38','localhost','Configuration successfully written: rhsat01-esna.cfg'),(8960,'2017-12-04 05:08:32','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 2/0'),(8961,'2017-12-04 05:08:33','admin','172.21.137.38','localhost','Nagios daemon successfully restarted'),(8962,'2017-12-04 05:08:34','admin','172.21.137.38','localhost','Nagios written configuration files checked - Warnings/Errors: 2/0'),(8963,'2018-01-30 00:09:12','admin','192.168.123.250','common','Login successful'),(8964,'2018-01-30 00:09:58','admin','192.168.123.250','localhost','Host file deleted: ossmon01-esna-temp.cfg'),(8965,'2018-01-30 00:09:58','admin','192.168.123.250','localhost','Delete data from table: tbl_host - with affected rows: 1'),(8966,'2018-01-30 00:10:08','admin','192.168.123.250','localhost','Host file deleted: ossc1to3-esx06.cfg'),(8967,'2018-01-30 00:10:08','admin','192.168.123.250','localhost','Host file deleted: ossmon01-esna.cfg'),(8968,'2018-01-30 00:10:08','admin','192.168.123.250','localhost','Host file deleted: ossc1to3-esx02.cfg'),(8969,'2018-01-30 00:10:08','admin','192.168.123.250','localhost','Host file deleted: ossc1to3-esx03.cfg'),(8970,'2018-01-30 00:10:08','admin','192.168.123.250','localhost','Host file deleted: ossc1to3-esx05.cfg'),(8971,'2018-01-30 00:10:09','admin','192.168.123.250','localhost','Host file deleted: ossc1to3-esx04.cfg'),(8972,'2018-01-30 00:10:09','admin','192.168.123.250','localhost','Delete data from table: tbl_host - with affected rows: 6'),(8973,'2018-01-30 00:10:35','admin','192.168.123.250','localhost','Host modified: sat6'),(8974,'2018-01-30 00:10:35','admin','192.168.123.250','localhost','Host file deleted: rhsat01-esna.cfg'),(8975,'2018-01-30 00:10:37','admin','192.168.123.250','localhost','Configuration successfully written: ossc1to3-esx01.cfg'),(8976,'2018-01-30 00:10:37','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(8977,'2018-01-30 00:10:37','admin','192.168.123.250','localhost','Configuration successfully written: sat6.cfg'),(8978,'2018-01-30 00:10:54','admin','192.168.123.250','localhost','Host modified: esx01'),(8979,'2018-01-30 00:10:54','admin','192.168.123.250','localhost','Host file deleted: ossc1to3-esx01.cfg'),(8980,'2018-01-30 00:10:56','admin','192.168.123.250','localhost','Configuration successfully written: esx01.cfg'),(8981,'2018-01-30 00:10:56','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(8982,'2018-01-30 00:10:56','admin','192.168.123.250','localhost','Configuration successfully written: sat6.cfg'),(8983,'2018-01-30 00:10:59','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 0/1'),(8984,'2018-01-30 00:11:27','admin','192.168.123.250','localhost','Data set copied - table [new name]: tbl_host [windows-host (1)]'),(8985,'2018-01-30 00:11:40','admin','192.168.123.250','localhost','Host modified: win7mgmt'),(8986,'2018-01-30 00:11:40','admin','192.168.123.250','localhost','Host file deleted: windows-host (1).cfg'),(8987,'2018-01-30 00:11:42','admin','192.168.123.250','localhost','Configuration successfully written: esx01.cfg'),(8988,'2018-01-30 00:11:42','admin','192.168.123.250','localhost','Configuration successfully written: win7mgmt.cfg'),(8989,'2018-01-30 00:11:42','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(8990,'2018-01-30 00:11:42','admin','192.168.123.250','localhost','Configuration successfully written: sat6.cfg'),(8991,'2018-01-30 00:11:43','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(8992,'2018-01-30 00:12:06','admin','192.168.123.250','localhost','Nagios daemon successfully restarted'),(8993,'2018-01-30 01:47:29','admin','192.168.123.250','localhost','Session timeout reached - Seconds: 5723 - User: admin'),(8994,'2018-01-30 01:47:30','admin','192.168.123.250','common','Login successful'),(8995,'2018-01-30 01:47:48','admin','192.168.123.250','localhost','Data set copied - table [new name]: tbl_service [vmware-esx-cpu-usage (1)]'),(8996,'2018-01-30 01:47:53','admin','192.168.123.250','localhost','Host file deleted: vmware-esx-cpu-usage (1).cfg'),(8997,'2018-01-30 01:47:53','admin','192.168.123.250','localhost','Delete data from table: tbl_service - with affected rows: 1'),(8998,'2018-01-30 01:48:06','admin','192.168.123.250','localhost','Service modified: vmware-esx-cpu-usage'),(8999,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(9000,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(9001,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(9002,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(9003,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_interface.cfg'),(9004,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(9005,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(9006,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(9007,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory.cfg'),(9008,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(9009,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(9010,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(9011,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(9012,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(9013,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_swap.cfg'),(9014,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(9015,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(9016,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(9017,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(9018,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: localhost.cfg'),(9019,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(9020,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(9021,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(9022,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(9023,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(9024,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(9025,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(9026,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(9027,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(9028,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(9029,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(9030,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(9031,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(9032,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(9033,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(9034,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(9035,'2018-01-30 01:48:09','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(9036,'2018-01-30 01:48:10','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(9037,'2018-01-30 01:48:10','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-usage.cfg'),(9038,'2018-01-30 01:48:10','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(9039,'2018-01-30 01:48:12','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(9040,'2018-01-30 01:48:13','admin','192.168.123.250','localhost','Nagios daemon successfully restarted'),(9041,'2018-01-30 01:49:15','admin','192.168.123.250','localhost','Service modified: vmware-esx-io-device'),(9042,'2018-01-30 01:49:21','admin','192.168.123.250','localhost','Service modified: vmware-esx-io-kernel'),(9043,'2018-01-30 01:49:26','admin','192.168.123.250','localhost','Service modified: vmware-esx-io-queue'),(9044,'2018-01-30 01:49:33','admin','192.168.123.250','localhost','Service modified: vmware-esx-io-read'),(9045,'2018-01-30 01:49:38','admin','192.168.123.250','localhost','Service modified: vmware-esx-io-write'),(9046,'2018-01-30 01:49:42','admin','192.168.123.250','localhost','Service modified: vmware-esx-mem-memctl'),(9047,'2018-01-30 01:49:49','admin','192.168.123.250','localhost','Service modified: vmware-esx-mem-overhead'),(9048,'2018-01-30 01:49:53','admin','192.168.123.250','localhost','Service modified: vmware-esx-mem-usage'),(9049,'2018-01-30 01:49:59','admin','192.168.123.250','localhost','Service modified: vmware-esx-network-cards'),(9050,'2018-01-30 01:50:09','admin','192.168.123.250','localhost','Service modified: vmware-esx-network-usage'),(9051,'2018-01-30 01:50:14','admin','192.168.123.250','localhost','Service modified: vmware-esx-runtime-health'),(9052,'2018-01-30 01:50:18','admin','192.168.123.250','localhost','Service modified: vmware-esx-runtime-issues'),(9053,'2018-01-30 01:50:23','admin','192.168.123.250','localhost','Service modified: vmware-esx-runtime-maintenance'),(9054,'2018-01-30 01:50:28','admin','192.168.123.250','localhost','Service modified: vmware-esx-runtime-temperature'),(9055,'2018-01-30 01:50:33','admin','192.168.123.250','localhost','Service modified: vmware-esx-storage-luns'),(9056,'2018-01-30 01:50:38','admin','192.168.123.250','localhost','Service modified: vmware-esx-storage-paths'),(9057,'2018-01-30 01:50:48','admin','192.168.123.250','localhost','Service modified: vmware-esx-storage-usage'),(9058,'2018-01-30 01:50:55','admin','192.168.123.250','localhost','Service modified: vmware-esx-uptime'),(9059,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(9060,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(9061,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(9062,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(9063,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(9064,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(9065,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(9066,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(9067,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(9068,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(9069,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(9070,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(9071,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(9072,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(9073,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(9074,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(9075,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(9076,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(9077,'2018-01-30 01:51:01','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-usage.cfg'),(9078,'2018-01-30 01:51:05','admin','192.168.123.250','localhost','Data set copied - table [new name]: tbl_host [esx01 (1)]'),(9079,'2018-01-30 01:51:23','admin','192.168.123.250','localhost','Host modified: esx02'),(9080,'2018-01-30 01:51:23','admin','192.168.123.250','localhost','Host file deleted: esx01 (1).cfg'),(9081,'2018-01-30 01:51:23','admin','192.168.123.250','localhost','Host file deleted: esx02.cfg'),(9082,'2018-01-30 01:51:25','admin','192.168.123.250','localhost','Configuration successfully written: esx01.cfg'),(9083,'2018-01-30 01:51:25','admin','192.168.123.250','localhost','Configuration successfully written: win7mgmt.cfg'),(9084,'2018-01-30 01:51:25','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(9085,'2018-01-30 01:51:25','admin','192.168.123.250','localhost','Configuration successfully written: sat6.cfg'),(9086,'2018-01-30 01:51:29','admin','192.168.123.250','localhost','Writing of the configuration failed - no dataset or not activated dataset found'),(9087,'2018-01-30 01:51:34','admin','192.168.123.250','localhost','Writing of the configuration failed - no dataset or not activated dataset found'),(9088,'2018-01-30 01:51:37','admin','192.168.123.250','localhost','Host modified: esx02'),(9089,'2018-01-30 01:51:43','admin','192.168.123.250','localhost','Configuration successfully written: esx01.cfg'),(9090,'2018-01-30 01:51:43','admin','192.168.123.250','localhost','Configuration successfully written: win7mgmt.cfg'),(9091,'2018-01-30 01:51:43','admin','192.168.123.250','localhost','Configuration successfully written: esx02.cfg'),(9092,'2018-01-30 01:51:43','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(9093,'2018-01-30 01:51:43','admin','192.168.123.250','localhost','Configuration successfully written: sat6.cfg'),(9094,'2018-01-30 01:51:46','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(9095,'2018-01-30 01:51:47','admin','192.168.123.250','localhost','Nagios daemon successfully restarted'),(9096,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171202160145'),(9097,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171202185609'),(9098,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171202185715'),(9099,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203010020'),(9100,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203024940'),(9101,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203025524'),(9102,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203025853'),(9103,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203030017'),(9104,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203030214'),(9105,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203030908'),(9106,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203031818'),(9107,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203031847'),(9108,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203033840'),(9109,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203051820'),(9110,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203052004'),(9111,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203065445'),(9112,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203065640'),(9113,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203130452'),(9114,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203131133'),(9115,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203131233'),(9116,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203131324'),(9117,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203132150'),(9118,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203132315'),(9119,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20171203141603'),(9120,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: esx01.cfg_old_20180130001142'),(9121,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: esx01.cfg_old_20180130015125'),(9122,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: esx01.cfg_old_20180130015143'),(9123,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx01.cfg_old_20180130001037'),(9124,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx01.cfg_old_20180130001054'),(9125,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx02.cfg_old_20171203141820'),(9126,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx02.cfg_old_20180130001008'),(9127,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx03.cfg_old_20180130001008'),(9128,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx04.cfg_old_20180130001008'),(9129,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx05.cfg_old_20180130001008'),(9130,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossc1to3-esx06.cfg_old_20180130001008'),(9131,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossmon01-esna-temp.cfg_old_20171203141820'),(9132,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossmon01-esna-temp.cfg_old_20180130000958'),(9133,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossmon01-esna.cfg_old_20171203141820'),(9134,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: ossmon01-esna.cfg_old_20180130001008'),(9135,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: rhsat01-esna.cfg_old_20180130001035'),(9136,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: sat6.cfg_old_20180130001056'),(9137,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: sat6.cfg_old_20180130001142'),(9138,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: sat6.cfg_old_20180130015125'),(9139,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: sat6.cfg_old_20180130015143'),(9140,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: win7mgmt.cfg_old_20180130015125'),(9141,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: win7mgmt.cfg_old_20180130015143'),(9142,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20171203141820'),(9143,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180130001037'),(9144,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180130001056'),(9145,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180130001142'),(9146,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180130015125'),(9147,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180130015143'),(9148,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203132155'),(9149,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203134413'),(9150,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203134819'),(9151,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203134919'),(9152,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203140518'),(9153,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203140749'),(9154,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203140832'),(9155,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203141115'),(9156,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20171203141121'),(9157,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20180130014809'),(9158,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203132155'),(9159,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203134412'),(9160,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203134819'),(9161,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203134919'),(9162,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203140517'),(9163,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203140749'),(9164,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203140832'),(9165,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203141114'),(9166,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20171203141121'),(9167,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20180130014809'),(9168,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203132155'),(9169,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203134412'),(9170,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203134819'),(9171,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203134919'),(9172,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203140517'),(9173,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203140749'),(9174,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203140832'),(9175,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203141114'),(9176,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20171203141121'),(9177,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20180130014809'),(9178,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203132155'),(9179,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203134412'),(9180,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203134819'),(9181,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203134919'),(9182,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203140517'),(9183,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203140749'),(9184,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203140832'),(9185,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203141114'),(9186,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20171203141121'),(9187,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20180130014809'),(9188,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203132155'),(9189,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203134412'),(9190,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203134819'),(9191,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203134919'),(9192,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203140517'),(9193,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203140749'),(9194,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203140832'),(9195,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203141114'),(9196,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20171203141121'),(9197,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20180130014809'),(9198,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203132155'),(9199,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203134412'),(9200,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203134819'),(9201,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203134919'),(9202,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203140517'),(9203,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203140749'),(9204,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203140832'),(9205,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203141114'),(9206,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20171203141121'),(9207,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20180130014809'),(9208,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203132155'),(9209,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203134412'),(9210,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203134819'),(9211,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203134919'),(9212,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203140517'),(9213,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203140749'),(9214,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203140832'),(9215,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203141114'),(9216,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20171203141121'),(9217,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20180130014809'),(9218,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203132155'),(9219,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203134412'),(9220,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203134819'),(9221,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203134919'),(9222,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203140517'),(9223,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203140749'),(9224,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203140832'),(9225,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203141114'),(9226,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20171203141121'),(9227,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20180130014809'),(9228,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203132155'),(9229,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203134412'),(9230,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203134819'),(9231,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203134919'),(9232,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203140517'),(9233,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203140749'),(9234,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203140832'),(9235,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203141115'),(9236,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20171203141121'),(9237,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20180130014809'),(9238,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203132155'),(9239,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203134412'),(9240,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203134819'),(9241,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203134919'),(9242,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203140518'),(9243,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203140749'),(9244,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203140832'),(9245,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203141115'),(9246,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20171203141121'),(9247,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20180130014809'),(9248,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203132155'),(9249,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203134412'),(9250,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203134819'),(9251,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203134919'),(9252,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203140518'),(9253,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203140749'),(9254,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203140832'),(9255,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203141115'),(9256,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20171203141121'),(9257,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20180130014809'),(9258,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203132155'),(9259,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203134412'),(9260,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203134819'),(9261,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203134919'),(9262,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203140518'),(9263,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203140749'),(9264,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203140832'),(9265,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203141115'),(9266,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20171203141121'),(9267,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20180130014809'),(9268,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203132155'),(9269,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203134412'),(9270,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203134819'),(9271,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203134919'),(9272,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203140518'),(9273,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203140749'),(9274,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203140832'),(9275,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203141115'),(9276,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20171203141121'),(9277,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20180130014809'),(9278,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203132155'),(9279,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203134412'),(9280,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203134819'),(9281,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203134919'),(9282,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203140518'),(9283,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203140749'),(9284,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203140832'),(9285,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203141115'),(9286,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20171203141121'),(9287,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20180130014809'),(9288,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203132155'),(9289,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203134412'),(9290,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203134819'),(9291,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203134919'),(9292,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203140518'),(9293,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203140749'),(9294,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203140832'),(9295,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203141115'),(9296,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20171203141121'),(9297,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20180130014809'),(9298,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203132155'),(9299,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203134413'),(9300,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203134819'),(9301,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203134919'),(9302,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203140518'),(9303,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203140749'),(9304,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203140832'),(9305,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203141115'),(9306,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20171203141121'),(9307,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20180130014809'),(9308,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203132155'),(9309,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203134413'),(9310,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203134819'),(9311,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203134919'),(9312,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203140518'),(9313,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203140749'),(9314,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203140832'),(9315,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203141115'),(9316,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20171203141121'),(9317,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20180130014809'),(9318,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203132155'),(9319,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203134413'),(9320,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203134819'),(9321,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203134919'),(9322,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203140518'),(9323,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203140749'),(9324,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203140832'),(9325,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203141115'),(9326,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20171203141121'),(9327,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20180130014809'),(9328,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203132155'),(9329,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203134413'),(9330,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203134819'),(9331,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203134919'),(9332,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203140518'),(9333,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203140749'),(9334,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203140832'),(9335,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203141115'),(9336,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20171203141121'),(9337,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20180130014809'),(9338,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203132155'),(9339,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203134413'),(9340,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203134819'),(9341,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203134919'),(9342,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203140518'),(9343,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203140749'),(9344,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203140832'),(9345,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203141115'),(9346,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20171203141121'),(9347,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20180130014809'),(9348,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203132155'),(9349,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203134413'),(9350,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203134819'),(9351,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203134919'),(9352,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203140518'),(9353,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203140749'),(9354,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203140832'),(9355,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203141115'),(9356,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20171203141121'),(9357,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20180130014809'),(9358,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20171203134819'),(9359,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20171203134919'),(9360,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20171203140518'),(9361,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20171203140749'),(9362,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20171203140832'),(9363,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20171203141115'),(9364,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20171203141121'),(9365,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20180130014809'),(9366,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20180130015101'),(9367,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-cpu.cfg_old_20171203134009'),(9368,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20171203134819'),(9369,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20171203134919'),(9370,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20171203140518'),(9371,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20171203140749'),(9372,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20171203140832'),(9373,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20171203141115'),(9374,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20171203141121'),(9375,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20180130014809'),(9376,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20180130015101'),(9377,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20171203140749'),(9378,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20171203140832'),(9379,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20171203141115'),(9380,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20171203141121'),(9381,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20180130014809'),(9382,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20180130015101'),(9383,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20171203140749'),(9384,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20171203140832'),(9385,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20171203141115'),(9386,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20171203141121'),(9387,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20180130014809'),(9388,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20180130015101'),(9389,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203010034'),(9390,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203024904'),(9391,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203024955'),(9392,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203025201'),(9393,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203025412'),(9394,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203025546'),(9395,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203031919'),(9396,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203065546'),(9397,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203132155'),(9398,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203134413'),(9399,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203134819'),(9400,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203134919'),(9401,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203140518'),(9402,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203140749'),(9403,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203140832'),(9404,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203141115'),(9405,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20171203141121'),(9406,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20180130014809'),(9407,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20180130015101'),(9408,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203134413'),(9409,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203134819'),(9410,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203134919'),(9411,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203140518'),(9412,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203140749'),(9413,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203140832'),(9414,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203141115'),(9415,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20171203141121'),(9416,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20180130014809'),(9417,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20180130015101'),(9418,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20171203134819'),(9419,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20171203134919'),(9420,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20171203140518'),(9421,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20171203140749'),(9422,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20171203140832'),(9423,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20171203141115'),(9424,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20171203141121'),(9425,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20180130014809'),(9426,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20180130015101'),(9427,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20171203134819'),(9428,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20171203134919'),(9429,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20171203140518'),(9430,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20171203140749'),(9431,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20171203140832'),(9432,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20171203141115'),(9433,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20171203141121'),(9434,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20180130014809'),(9435,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20180130015101'),(9436,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20171203134819'),(9437,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20171203134919'),(9438,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20171203140518'),(9439,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20171203140749'),(9440,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20171203140832'),(9441,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20171203141115'),(9442,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20171203141121'),(9443,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20180130014809'),(9444,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20180130015101'),(9445,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20171203134819'),(9446,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20171203134919'),(9447,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20171203140518'),(9448,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20171203140749'),(9449,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20171203140832'),(9450,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20171203141115'),(9451,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20171203141121'),(9452,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20180130014809'),(9453,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20180130015101'),(9454,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20171203134919'),(9455,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20171203140518'),(9456,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20171203140749'),(9457,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20171203140832'),(9458,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20171203141115'),(9459,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20171203141121'),(9460,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20180130014809'),(9461,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20180130015101'),(9462,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20171203134919'),(9463,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20171203140518'),(9464,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20171203140749'),(9465,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20171203140832'),(9466,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20171203141115'),(9467,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20171203141121'),(9468,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20180130014809'),(9469,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20180130015101'),(9470,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20171203134919'),(9471,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20171203140518'),(9472,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20171203140749'),(9473,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20171203140832'),(9474,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20171203141115'),(9475,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20171203141121'),(9476,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20180130014809'),(9477,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20180130015101'),(9478,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20171203134919'),(9479,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20171203140518'),(9480,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20171203140749'),(9481,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20171203140832'),(9482,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20171203141115'),(9483,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20171203141121'),(9484,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20180130014809'),(9485,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20180130015101'),(9486,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperatue.cfg_old_20171203134917'),(9487,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20171203140518'),(9488,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20171203140749'),(9489,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20171203140832'),(9490,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20171203141115'),(9491,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20171203141121'),(9492,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20180130014809'),(9493,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20180130015101'),(9494,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20171203140749'),(9495,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20171203140832'),(9496,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20171203141115'),(9497,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20171203141121'),(9498,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20180130014809'),(9499,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20180130015101'),(9500,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20171203140749'),(9501,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20171203140832'),(9502,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20171203141115'),(9503,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20171203141121'),(9504,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20180130014809'),(9505,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20180130015101'),(9506,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-usage.cfg_old_20180130014810'),(9507,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-usage.cfg_old_20180130015101'),(9508,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20171203140749'),(9509,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20171203140832'),(9510,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20171203141115'),(9511,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20171203141121'),(9512,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20180130014810'),(9513,'2018-01-30 02:15:42','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20180130015101'),(9514,'2018-01-31 17:08:51','admin','192.168.123.250','common','Login successful'),(9515,'2018-01-31 17:09:06','admin','192.168.123.250','localhost','Data set copied - table [new name]: tbl_service [check_snmp_cpu (1)]'),(9516,'2018-01-31 17:09:50','admin','192.168.123.250','localhost','Service modified: check_snmp_diskiops_linux'),(9517,'2018-01-31 17:09:50','admin','192.168.123.250','localhost','Service file deleted: check_snmp_cpu (1).cfg'),(9518,'2018-01-31 17:10:03','admin','192.168.123.250','localhost','Data set copied - table [new name]: tbl_command [check_snmp (1)]'),(9519,'2018-01-31 17:11:51','admin','192.168.123.250','localhost','Command modified: check_disk_iops'),(9520,'2018-01-31 17:11:54','admin','192.168.123.250','localhost','Configuration successfully written: commands.cfg'),(9521,'2018-01-31 17:12:20','admin','192.168.123.250','localhost','Service modified: check_snmp_diskiops_linux'),(9522,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(9523,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(9524,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(9525,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(9526,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_diskiops_linux.cfg'),(9527,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_interface.cfg'),(9528,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(9529,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(9530,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(9531,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory.cfg'),(9532,'2018-01-31 17:12:21','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(9533,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(9534,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(9535,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(9536,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(9537,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_swap.cfg'),(9538,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(9539,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(9540,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(9541,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(9542,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: localhost.cfg'),(9543,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(9544,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(9545,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(9546,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(9547,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(9548,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(9549,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(9550,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(9551,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(9552,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(9553,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(9554,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(9555,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(9556,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(9557,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(9558,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(9559,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(9560,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(9561,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-usage.cfg'),(9562,'2018-01-31 17:12:22','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(9563,'2018-01-31 17:12:25','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(9564,'2018-01-31 17:12:26','admin','192.168.123.250','localhost','Nagios daemon successfully restarted'),(9565,'2018-01-31 18:58:03','admin','192.168.123.250','localhost','Session timeout reached - Seconds: 6314 - User: admin'),(9566,'2018-01-31 18:58:05','admin','192.168.123.250','common','Login successful'),(9567,'2018-01-31 18:58:12','admin','192.168.123.250','localhost','Data set copied - table [new name]: tbl_host [sat6 (1)]'),(9568,'2018-01-31 18:58:50','admin','192.168.123.250','localhost','Host modified: dockerhost01'),(9569,'2018-01-31 18:58:50','admin','192.168.123.250','localhost','Host file deleted: sat6 (1).cfg'),(9570,'2018-01-31 18:58:53','admin','192.168.123.250','localhost','Configuration successfully written: esx01.cfg'),(9571,'2018-01-31 18:58:53','admin','192.168.123.250','localhost','Configuration successfully written: win7mgmt.cfg'),(9572,'2018-01-31 18:58:53','admin','192.168.123.250','localhost','Configuration successfully written: esx02.cfg'),(9573,'2018-01-31 18:58:53','admin','192.168.123.250','localhost','Configuration successfully written: dockerhost01.cfg'),(9574,'2018-01-31 18:58:53','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(9575,'2018-01-31 18:58:53','admin','192.168.123.250','localhost','Configuration successfully written: sat6.cfg'),(9576,'2018-01-31 18:58:57','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 2/0'),(9577,'2018-01-31 18:58:59','admin','192.168.123.250','localhost','Nagios daemon successfully restarted'),(9578,'2018-01-31 20:10:59','admin','192.168.123.250','localhost','Session timeout reached - Seconds: 4320 - User: admin'),(9579,'2018-01-31 20:11:01','admin','192.168.123.250','common','Login successful'),(9580,'2018-01-31 20:12:02','admin','192.168.123.250','localhost','Host file deleted: esx01.cfg'),(9581,'2018-01-31 20:12:02','admin','192.168.123.250','localhost','Host file deleted: win7mgmt.cfg'),(9582,'2018-01-31 20:12:02','admin','192.168.123.250','localhost','Host file deleted: esx02.cfg'),(9583,'2018-01-31 20:12:02','admin','192.168.123.250','localhost','Host file deleted: dockerhost01.cfg'),(9584,'2018-01-31 20:12:02','admin','192.168.123.250','localhost','Host file deleted: sat6.cfg'),(9585,'2018-01-31 20:12:02','admin','192.168.123.250','localhost','Delete data from table: tbl_host - with affected rows: 5'),(9586,'2018-01-31 20:12:06','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(9587,'2018-01-31 20:12:28','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 0/1'),(9588,'2018-01-31 20:12:36','admin','192.168.123.250','localhost','Data set copied - table [new name]: tbl_host [windows-host (1)]'),(9589,'2018-01-31 20:13:05','admin','192.168.123.250','localhost','Host modified: esx-host'),(9590,'2018-01-31 20:13:05','admin','192.168.123.250','localhost','Host file deleted: windows-host (1).cfg'),(9591,'2018-01-31 20:13:05','admin','192.168.123.250','localhost','Host file deleted: esx-host.cfg'),(9592,'2018-01-31 20:13:07','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(9593,'2018-01-31 20:13:10','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 0/1'),(9594,'2018-01-31 20:13:25','admin','192.168.123.250','localhost','Activate dataset from table: tbl_host - with affected rows: 1'),(9595,'2018-01-31 20:13:27','admin','192.168.123.250','localhost','Configuration successfully written: windows-host.cfg'),(9596,'2018-01-31 20:13:27','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(9597,'2018-01-31 20:13:27','admin','192.168.123.250','localhost','Configuration successfully written: linux-host.cfg'),(9598,'2018-01-31 20:13:27','admin','192.168.123.250','localhost','Configuration successfully written: esx-host.cfg'),(9599,'2018-01-31 20:13:31','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(9600,'2018-01-31 20:14:38','admin','192.168.123.250','localhost','Service modified: check_snmp_swap_linux'),(9601,'2018-01-31 20:14:38','admin','192.168.123.250','localhost','Service file deleted: check_snmp_swap.cfg'),(9602,'2018-01-31 20:14:40','admin','192.168.123.250','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(9603,'2018-01-31 20:14:40','admin','192.168.123.250','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(9604,'2018-01-31 20:14:40','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(9605,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(9606,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_diskiops_linux.cfg'),(9607,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_interface.cfg'),(9608,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(9609,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(9610,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(9611,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory.cfg'),(9612,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(9613,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(9614,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(9615,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(9616,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(9617,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_swap_linux.cfg'),(9618,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(9619,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(9620,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(9621,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(9622,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: localhost.cfg'),(9623,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(9624,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(9625,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(9626,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(9627,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(9628,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(9629,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(9630,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(9631,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(9632,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(9633,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(9634,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(9635,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(9636,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(9637,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(9638,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(9639,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(9640,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(9641,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-usage.cfg'),(9642,'2018-01-31 20:14:41','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(9643,'2018-01-31 20:14:47','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 1/0'),(9644,'2018-01-31 20:15:36','admin','192.168.123.250','localhost','Service modified: check_snmp_swap_linux'),(9645,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_gearman_ALL_queue.cfg'),(9646,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_linux_local_procstat.cfg'),(9647,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_cpu.cfg'),(9648,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_datetime.cfg'),(9649,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_diskiops_linux.cfg'),(9650,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_interface.cfg'),(9651,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_cpu.cfg'),(9652,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_load.cfg'),(9653,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_linux_memory_metrics.cfg'),(9654,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory.cfg'),(9655,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_swap.cfg'),(9656,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_memory_linux_user.cfg'),(9657,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_RHEL.cfg'),(9658,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_proc_check_WIN.cfg'),(9659,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_storage_disk.cfg'),(9660,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_swap_linux.cfg'),(9661,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_info.cfg'),(9662,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_system_metrics.cfg'),(9663,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_uptime.cfg'),(9664,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: check_snmp_users_logged_in.cfg'),(9665,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: localhost.cfg'),(9666,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: TCP_SSH_Info.cfg'),(9667,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-cpu-usage.cfg'),(9668,'2018-01-31 20:15:38','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-device.cfg'),(9669,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-kernel.cfg'),(9670,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-queue.cfg'),(9671,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-read.cfg'),(9672,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-io-write.cfg'),(9673,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-memctl.cfg'),(9674,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-overhead.cfg'),(9675,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-mem-usage.cfg'),(9676,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-cards.cfg'),(9677,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-network-usage.cfg'),(9678,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-health.cfg'),(9679,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-issues.cfg'),(9680,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-maintenance.cfg'),(9681,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-runtime-temperature.cfg'),(9682,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-luns.cfg'),(9683,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-paths.cfg'),(9684,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-storage-usage.cfg'),(9685,'2018-01-31 20:15:39','admin','192.168.123.250','localhost','Configuration successfully written: vmware-esx-uptime.cfg'),(9686,'2018-01-31 20:15:42','admin','192.168.123.250','localhost','Nagios written configuration files checked - Warnings/Errors: 0/0'),(9687,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: commands.cfg_old_20180131171154'),(9688,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: dockerhost01.cfg_old_20180131201202'),(9689,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: esx01.cfg_old_20180131185853'),(9690,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: esx01.cfg_old_20180131201202'),(9691,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: esx02.cfg_old_20180131185853'),(9692,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: esx02.cfg_old_20180131201202'),(9693,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: sat6.cfg_old_20180131185853'),(9694,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: sat6.cfg_old_20180131201202'),(9695,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: win7mgmt.cfg_old_20180131185853'),(9696,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: win7mgmt.cfg_old_20180131201202'),(9697,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180131185853'),(9698,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180131201206'),(9699,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180131201307'),(9700,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180131201327'),(9701,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20180131171222'),(9702,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20180131201441'),(9703,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: TCP_SSH_Info.cfg_old_20180131201538'),(9704,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20180131171221'),(9705,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20180131201440'),(9706,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_gearman_ALL_queue.cfg_old_20180131201538'),(9707,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20180131171221'),(9708,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20180131201440'),(9709,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_linux_local_procstat.cfg_old_20180131201538'),(9710,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20180131171221'),(9711,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20180131201440'),(9712,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_cpu.cfg_old_20180131201538'),(9713,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20180131171221'),(9714,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20180131201440'),(9715,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_datetime.cfg_old_20180131201538'),(9716,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_diskiops_linux.cfg_old_20180131201441'),(9717,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_diskiops_linux.cfg_old_20180131201538'),(9718,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20180131171221'),(9719,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20180131201441'),(9720,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_interface.cfg_old_20180131201538'),(9721,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20180131171221'),(9722,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20180131201441'),(9723,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_cpu.cfg_old_20180131201538'),(9724,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20180131171221'),(9725,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20180131201441'),(9726,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_load.cfg_old_20180131201538'),(9727,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20180131171221'),(9728,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20180131201441'),(9729,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_linux_memory_metrics.cfg_old_20180131201538'),(9730,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20180131171221'),(9731,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20180131201441'),(9732,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory.cfg_old_20180131201538'),(9733,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20180131171221'),(9734,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20180131201441'),(9735,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_swap.cfg_old_20180131201538'),(9736,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20180131171221'),(9737,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20180131201441'),(9738,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_memory_linux_user.cfg_old_20180131201538'),(9739,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20180131171222'),(9740,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20180131201441'),(9741,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_RHEL.cfg_old_20180131201538'),(9742,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20180131171222'),(9743,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20180131201441'),(9744,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_proc_check_WIN.cfg_old_20180131201538'),(9745,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20180131171222'),(9746,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20180131201441'),(9747,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_storage_disk.cfg_old_20180131201538'),(9748,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20180131171222'),(9749,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_swap.cfg_old_20180131201438'),(9750,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_swap_linux.cfg_old_20180131201538'),(9751,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20180131171222'),(9752,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20180131201441'),(9753,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_system_info.cfg_old_20180131201538'),(9754,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20180131171222'),(9755,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20180131201441'),(9756,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_system_metrics.cfg_old_20180131201538'),(9757,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20180131171222'),(9758,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20180131201441'),(9759,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_uptime.cfg_old_20180131201538'),(9760,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20180131171222'),(9761,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20180131201441'),(9762,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: check_snmp_users_logged_in.cfg_old_20180131201538'),(9763,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20180131171222'),(9764,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20180131201441'),(9765,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: localhost.cfg_old_20180131201538'),(9766,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20180131171222'),(9767,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20180131201441'),(9768,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-cpu-usage.cfg_old_20180131201538'),(9769,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20180131171222'),(9770,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20180131201441'),(9771,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-device.cfg_old_20180131201538'),(9772,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20180131171222'),(9773,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20180131201441'),(9774,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-kernel.cfg_old_20180131201538'),(9775,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20180131171222'),(9776,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20180131201441'),(9777,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-queue.cfg_old_20180131201539'),(9778,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20180131171222'),(9779,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20180131201441'),(9780,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-read.cfg_old_20180131201539'),(9781,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20180131171222'),(9782,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20180131201441'),(9783,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-io-write.cfg_old_20180131201539'),(9784,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20180131171222'),(9785,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20180131201441'),(9786,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-memctl.cfg_old_20180131201539'),(9787,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20180131171222'),(9788,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20180131201441'),(9789,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-overhead.cfg_old_20180131201539'),(9790,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20180131171222'),(9791,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20180131201441'),(9792,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-mem-usage.cfg_old_20180131201539'),(9793,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20180131171222'),(9794,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20180131201441'),(9795,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-cards.cfg_old_20180131201539'),(9796,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20180131171222'),(9797,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20180131201441'),(9798,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-network-usage.cfg_old_20180131201539'),(9799,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20180131171222'),(9800,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20180131201441'),(9801,'2018-01-31 20:19:17','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-health.cfg_old_20180131201539'),(9802,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20180131171222'),(9803,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20180131201441'),(9804,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-issues.cfg_old_20180131201539'),(9805,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20180131171222'),(9806,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20180131201441'),(9807,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-maintenance.cfg_old_20180131201539'),(9808,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20180131171222'),(9809,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20180131201441'),(9810,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-runtime-temperature.cfg_old_20180131201539'),(9811,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20180131171222'),(9812,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20180131201441'),(9813,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-luns.cfg_old_20180131201539'),(9814,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20180131171222'),(9815,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20180131201441'),(9816,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-paths.cfg_old_20180131201539'),(9817,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-usage.cfg_old_20180131171222'),(9818,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-usage.cfg_old_20180131201441'),(9819,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-storage-usage.cfg_old_20180131201539'),(9820,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20180131171222'),(9821,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20180131201441'),(9822,'2018-01-31 20:19:18','admin','192.168.123.250','localhost','File deleted: vmware-esx-uptime.cfg_old_20180131201539'),(9823,'2018-01-31 20:20:36','admin','192.168.123.250','localhost','Host modified: esx-example-host'),(9824,'2018-01-31 20:20:36','admin','192.168.123.250','localhost','Host file deleted: esx-host.cfg'),(9825,'2018-01-31 20:20:46','admin','192.168.123.250','localhost','Host modified: linux-example-host'),(9826,'2018-01-31 20:20:46','admin','192.168.123.250','localhost','Host file deleted: linux-host.cfg'),(9827,'2018-01-31 20:20:53','admin','192.168.123.250','localhost','Host modified: windows-example-host'),(9828,'2018-01-31 20:20:53','admin','192.168.123.250','localhost','Host file deleted: windows-host.cfg'),(9829,'2018-01-31 20:20:54','admin','192.168.123.250','localhost','Configuration successfully written: windows-example-host.cfg'),(9830,'2018-01-31 20:20:54','admin','192.168.123.250','localhost','Configuration successfully written: worker01.cfg'),(9831,'2018-01-31 20:20:54','admin','192.168.123.250','localhost','Configuration successfully written: linux-example-host.cfg'),(9832,'2018-01-31 20:20:54','admin','192.168.123.250','localhost','Configuration successfully written: esx-example-host.cfg'),(9833,'2018-01-31 20:21:00','admin','192.168.123.250','localhost','File deleted: esx-host.cfg_old_20180131202036'),(9834,'2018-01-31 20:21:00','admin','192.168.123.250','localhost','File deleted: linux-host.cfg_old_20180131202046'),(9835,'2018-01-31 20:21:00','admin','192.168.123.250','localhost','File deleted: windows-host.cfg_old_20180131202053'),(9836,'2018-01-31 20:21:00','admin','192.168.123.250','localhost','File deleted: worker01.cfg_old_20180131202054');
/*!40000 ALTER TABLE `tbl_logbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menu` (
  `mnuId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mnuTopId` int(10) unsigned NOT NULL,
  `mnuGrpId` int(10) unsigned NOT NULL DEFAULT 0,
  `mnuCntId` int(10) unsigned NOT NULL,
  `mnuName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mnuLink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mnuActive` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `mnuOrderId` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`mnuId`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (1,0,0,1,'Main page','admin.php',1,1),(2,0,0,1,'Supervision','admin/monitoring.php',1,2),(3,0,0,1,'Alarming','admin/alarming.php',1,3),(4,0,0,1,'Commands','admin/commands.php',1,4),(5,0,0,1,'Specialties','admin/specials.php',1,5),(6,0,0,1,'Tools','admin/tools.php',1,6),(7,0,0,1,'Administration','admin/administration.php',1,7),(8,2,0,1,'Host','admin/hosts.php',1,1),(9,2,0,1,'Services','admin/services.php',1,2),(10,2,0,1,'Host groups','admin/hostgroups.php',1,3),(11,2,0,1,'Service groups','admin/servicegroups.php',1,4),(12,2,0,1,'Host templates','admin/hosttemplates.php',1,5),(13,2,0,1,'Service templates','admin/servicetemplates.php',1,6),(14,3,0,1,'Contact data','admin/contacts.php',1,1),(15,3,0,1,'Contact groups','admin/contactgroups.php',1,2),(16,3,0,1,'Time periods','admin/timeperiods.php',1,3),(17,3,0,1,'Contact templates','admin/contacttemplates.php',1,4),(18,4,0,1,'Definitions','admin/checkcommands.php',1,1),(19,5,0,1,'Host dependency','admin/hostdependencies.php',1,1),(20,5,0,1,'Host escalation','admin/hostescalations.php',1,2),(21,5,0,1,'Extended Host','admin/hostextinfo.php',1,3),(22,5,0,1,'Service dependency','admin/servicedependencies.php',1,4),(23,5,0,1,'Service escalation','admin/serviceescalations.php',1,5),(24,5,0,1,'Extended Service','admin/serviceextinfo.php',1,6),(25,6,0,1,'Data import','admin/import.php',1,1),(26,6,0,1,'Delete backup files','admin/delbackup.php',1,2),(27,6,0,1,'Delete config files','admin/delconfig.php',1,3),(28,6,0,1,'Nagios config','admin/nagioscfg.php',1,4),(29,6,0,1,'CGI config','admin/cgicfg.php',1,5),(30,6,0,1,'Nagios control','admin/verify.php',1,6),(31,7,0,1,'New password','admin/password.php',1,1),(32,7,0,1,'User admin','admin/user.php',1,2),(33,7,0,1,'Group admin','admin/group.php',1,3),(34,7,0,1,'Menu access','admin/menuaccess.php',1,4),(35,7,0,1,'Data domains','admin/datadomain.php',1,5),(36,7,0,1,'Config targets','admin/configtargets.php',1,6),(37,7,0,1,'Logbook','admin/logbook.php',1,7),(38,7,0,1,'Settings','admin/settings.php',1,8),(39,7,0,1,'Help editor','admin/helpedit.php',1,9),(40,7,0,1,'Support','admin/support.php',1,10);
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_relationinformation`
--

DROP TABLE IF EXISTS `tbl_relationinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_relationinformation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tableName1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tableName2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkTable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `targetKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullRelation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `flags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_relationinformation`
--

LOCK TABLES `tbl_relationinformation` WRITE;
/*!40000 ALTER TABLE `tbl_relationinformation` DISABLE KEYS */;
INSERT INTO `tbl_relationinformation` VALUES (1,'tbl_timeperiod','tbl_timeperiod','','exclude','tbl_lnkTimeperiodToTimeperiod','timeperiod_name','','',0,'',2),(2,'tbl_contact','tbl_command','','host_notification_commands','tbl_lnkContactToCommandHost','command_name','','',0,'',2),(3,'tbl_contact','tbl_command','','service_notification_commands','tbl_lnkContactToCommandService','command_name','','',0,'',2),(4,'tbl_contact','tbl_contactgroup','','contactgroups','tbl_lnkContactToContactgroup','contactgroup_name','','',0,'',2),(5,'tbl_contact','tbl_timeperiod','','host_notification_period','','timeperiod_name','','',0,'',1),(6,'tbl_contact','tbl_timeperiod','','service_notification_period','','timeperiod_name','','',0,'',1),(7,'tbl_contact','tbl_contacttemplate','tbl_contact','use_template','tbl_lnkContactToContacttemplate','template_name','name','',0,'',3),(8,'tbl_contact','tbl_variabledefinition','','use_variables','tbl_lnkContactToVariabledefinition','name','','',0,'',4),(9,'tbl_contacttemplate','tbl_command','','host_notification_commands','tbl_lnkContacttemplateToCommandHost','command_name','','',0,'',2),(10,'tbl_contacttemplate','tbl_command','','service_notification_commands','tbl_lnkContacttemplateToCommandService','command_name','','',0,'',2),(11,'tbl_contacttemplate','tbl_contactgroup','','contactgroups','tbl_lnkContacttemplateToContactgroup','contactgroup_name','','',0,'',2),(12,'tbl_contacttemplate','tbl_timeperiod','','host_notification_period','','timeperiod_name','','',0,'',1),(13,'tbl_contacttemplate','tbl_timeperiod','','service_notification_period','','timeperiod_name','','',0,'',1),(14,'tbl_contacttemplate','tbl_contacttemplate','tbl_contact','use_template','tbl_lnkContacttemplateToContacttemplate','template_name','name','',0,'',3),(15,'tbl_contacttemplate','tbl_variabledefinition','','use_variables','tbl_lnkContacttemplateToVariabledefinition','name','','',0,'',4),(16,'tbl_contactgroup','tbl_contact','','members','tbl_lnkContactgroupToContact','contact_name','','',0,'',2),(17,'tbl_contactgroup','tbl_contactgroup','','contactgroup_members','tbl_lnkContactgroupToContactgroup','contactgroup_name','','',0,'',2),(18,'tbl_hosttemplate','tbl_host','','parents','tbl_lnkHosttemplateToHost','host_name','','',0,'',2),(19,'tbl_hosttemplate','tbl_hostgroup','','hostgroups','tbl_lnkHosttemplateToHostgroup','hostgroup_name','','',0,'',2),(20,'tbl_hosttemplate','tbl_contactgroup','','contact_groups','tbl_lnkHosttemplateToContactgroup','contactgroup_name','','',0,'',2),(21,'tbl_hosttemplate','tbl_contact','','contacts','tbl_lnkHosttemplateToContact','contact_name','','',0,'',2),(22,'tbl_hosttemplate','tbl_timeperiod','','check_period','','timeperiod_name','','',0,'',1),(23,'tbl_hosttemplate','tbl_command','','check_command','','command_name','','',0,'',1),(24,'tbl_hosttemplate','tbl_timeperiod','','notification_period','','timeperiod_name','','',0,'',1),(25,'tbl_hosttemplate','tbl_command','','event_handler','','command_name','','',0,'',1),(26,'tbl_hosttemplate','tbl_hosttemplate','tbl_host','use_template','tbl_lnkHosttemplateToHosttemplate','template_name','name','',0,'',3),(27,'tbl_hosttemplate','tbl_variabledefinition','','use_variables','tbl_lnkHosttemplateToVariabledefinition','name','','',0,'',4),(28,'tbl_host','tbl_host','','parents','tbl_lnkHostToHost','host_name','','',0,'',2),(29,'tbl_host','tbl_hostgroup','','hostgroups','tbl_lnkHostToHostgroup','hostgroup_name','','',0,'',2),(30,'tbl_host','tbl_contactgroup','','contact_groups','tbl_lnkHostToContactgroup','contactgroup_name','','',0,'',2),(31,'tbl_host','tbl_contact','','contacts','tbl_lnkHostToContact','contact_name','','',0,'',2),(32,'tbl_host','tbl_timeperiod','','check_period','','timeperiod_name','','',0,'',1),(33,'tbl_host','tbl_command','','check_command','','command_name','','',0,'',1),(34,'tbl_host','tbl_timeperiod','','notification_period','','timeperiod_name','','',0,'',1),(35,'tbl_host','tbl_command','','event_handler','','command_name','','',0,'',1),(36,'tbl_host','tbl_hosttemplate','tbl_host','use_template','tbl_lnkHostToHosttemplate','template_name','name','',0,'',3),(37,'tbl_host','tbl_variabledefinition','','use_variables','tbl_lnkHostToVariabledefinition','name','','',0,'',4),(38,'tbl_hostgroup','tbl_host','','members','tbl_lnkHostgroupToHost','host_name','','',0,'',2),(39,'tbl_hostgroup','tbl_hostgroup','','hostgroup_members','tbl_lnkHostgroupToHostgroup','hostgroup_name','','',0,'',2),(40,'tbl_servicetemplate','tbl_host','','host_name','tbl_lnkServicetemplateToHost','host_name','','',0,'',2),(41,'tbl_servicetemplate','tbl_hostgroup','','hostgroup_name','tbl_lnkServicetemplateToHostgroup','hostgroup_name','','',0,'',2),(42,'tbl_servicetemplate','tbl_servicegroup','','servicegroups','tbl_lnkServicetemplateToServicegroup','servicegroup_name','','',0,'',2),(43,'tbl_servicetemplate','tbl_contactgroup','','contact_groups','tbl_lnkServicetemplateToContactgroup','contactgroup_name','','',0,'',2),(44,'tbl_servicetemplate','tbl_contact','','contacts','tbl_lnkServicetemplateToContact','contact_name','','',0,'',2),(45,'tbl_servicetemplate','tbl_timeperiod','','check_period','','timeperiod_name','','',0,'',1),(46,'tbl_servicetemplate','tbl_command','','check_command','','command_name','','',0,'',1),(47,'tbl_servicetemplate','tbl_timeperiod','','notification_period','','timeperiod_name','','',0,'',1),(48,'tbl_servicetemplate','tbl_command','','event_handler','','command_name','','',0,'',1),(49,'tbl_servicetemplate','tbl_servicetemplate','tbl_service','use_template','tbl_lnkServicetemplateToServicetemplate','template_name','name','',0,'',3),(50,'tbl_servicetemplate','tbl_variabledefinition','','use_variables','tbl_lnkServicetemplateToVariabledefinition','name','','',0,'',4),(51,'tbl_service','tbl_host','','host_name','tbl_lnkServiceToHost','host_name','','',0,'',2),(52,'tbl_service','tbl_hostgroup','','hostgroup_name','tbl_lnkServiceToHostgroup','hostgroup_name','','',0,'',2),(53,'tbl_service','tbl_servicegroup','','servicegroups','tbl_lnkServiceToServicegroup','servicegroup_name','','',0,'',2),(54,'tbl_service','tbl_contactgroup','','contact_groups','tbl_lnkServiceToContactgroup','contactgroup_name','','',0,'',2),(55,'tbl_service','tbl_contact','','contacts','tbl_lnkServiceToContact','contact_name','','',0,'',2),(56,'tbl_service','tbl_timeperiod','','check_period','','timeperiod_name','','',0,'',1),(57,'tbl_service','tbl_command','','check_command','','command_name','','',0,'',1),(58,'tbl_service','tbl_timeperiod','','notification_period','','timeperiod_name','','',0,'',1),(59,'tbl_service','tbl_command','','event_handler','','command_name','','',0,'',1),(60,'tbl_service','tbl_servicetemplate','tbl_service','use_template','tbl_lnkServiceToServicetemplate','template_name','name','',0,'',3),(61,'tbl_service','tbl_variabledefinition','','use_variables','tbl_lnkServiceToVariabledefinition','name','','',0,'',4),(62,'tbl_servicegroup','tbl_host','tbl_service','members','tbl_lnkServicegroupToService','host_name','service_description','',0,'',5),(63,'tbl_servicegroup','tbl_servicegroup','','servicegroup_members','tbl_lnkServicegroupToServicegroup','servicegroup_name','','',0,'',2),(64,'tbl_hostdependency','tbl_host','','dependent_host_name','tbl_lnkHostdependencyToHost_DH','host_name','','',0,'',2),(65,'tbl_hostdependency','tbl_host','','host_name','tbl_lnkHostdependencyToHost_H','host_name','','',0,'',2),(66,'tbl_hostdependency','tbl_hostgroup','','dependent_hostgroup_name','tbl_lnkHostdependencyToHostgroup_DH','hostgroup_name','','',0,'',2),(67,'tbl_hostdependency','tbl_hostgroup','','hostgroup_name','tbl_lnkHostdependencyToHostgroup_H','hostgroup_name','','',0,'',2),(68,'tbl_hostdependency','tbl_timeperiod','','dependency_period','','timeperiod_name','','',0,'',1),(69,'tbl_hostescalation','tbl_host','','host_name','tbl_lnkHostescalationToHost','host_name','','',0,'',2),(70,'tbl_hostescalation','tbl_hostgroup','','hostgroup_name','tbl_lnkHostescalationToHostgroup','hostgroup_name','','',0,'',2),(71,'tbl_hostescalation','tbl_contact','','contacts','tbl_lnkHostescalationToContact','contact_name','','',0,'',2),(72,'tbl_hostescalation','tbl_contactgroup','','contact_groups','tbl_lnkHostescalationToContactgroup','contactgroup_name','','',0,'',2),(73,'tbl_hostescalation','tbl_timeperiod','','escalation_period','','timeperiod_name','','',0,'',1),(74,'tbl_hostextinfo','tbl_host','','host_name','','host_name','','',0,'',1),(75,'tbl_servicedependency','tbl_host','','dependent_host_name','tbl_lnkServicedependencyToHost_DH','host_name','','',0,'',2),(76,'tbl_servicedependency','tbl_host','','host_name','tbl_lnkServicedependencyToHost_H','host_name','','',0,'',2),(77,'tbl_servicedependency','tbl_hostgroup','','dependent_hostgroup_name','tbl_lnkServicedependencyToHostgroup_DH','hostgroup_name','','',0,'',2),(78,'tbl_servicedependency','tbl_hostgroup','','hostgroup_name','tbl_lnkServicedependencyToHostgroup_H','hostgroup_name','','',0,'',2),(79,'tbl_servicedependency','tbl_service','','dependent_service_description','tbl_lnkServicedependencyToService_DS','service_description','','',0,'',6),(80,'tbl_servicedependency','tbl_service','','service_description','tbl_lnkServicedependencyToService_S','service_description','','',0,'',6),(81,'tbl_servicedependency','tbl_timeperiod','','dependency_period','','timeperiod_name','','',0,'',1),(82,'tbl_serviceescalation','tbl_host','','host_name','tbl_lnkServiceescalationToHost','host_name','','',0,'',2),(83,'tbl_serviceescalation','tbl_hostgroup','','hostgroup_name','tbl_lnkServiceescalationToHostgroup','hostgroup_name','','',0,'',2),(84,'tbl_serviceescalation','tbl_service','','service_description','tbl_lnkServiceescalationToService','service_description','','',0,'',6),(85,'tbl_serviceescalation','tbl_contact','','contacts','tbl_lnkServiceescalationToContact','contact_name','','',0,'',2),(86,'tbl_serviceescalation','tbl_contactgroup','','contact_groups','tbl_lnkServiceescalationToContactgroup','contactgroup_name','','',0,'',2),(87,'tbl_serviceescalation','tbl_timeperiod','','escalation_period','','timeperiod_name','','',0,'',1),(88,'tbl_serviceextinfo','tbl_host','','host_name','','host_name','','',0,'',1),(89,'tbl_serviceextinfo','tbl_service','','service_description','','service_description','','',0,'',1),(90,'tbl_command','tbl_lnkContacttemplateToCommandHost','','idSlave','','tbl_contacttemplate','','template_name',1,'0,0,0,1',0),(91,'tbl_command','tbl_lnkContacttemplateToCommandService','','idSlave','','tbl_contacttemplate','','template_name',1,'0,0,0,1',0),(92,'tbl_command','tbl_lnkContactToCommandHost','','idSlave','','tbl_contact','','contact_name',1,'1,1,0,1',0),(93,'tbl_command','tbl_lnkContactToCommandService','','idSlave','','tbl_contact','','contact_name',1,'1,1,0,1',0),(94,'tbl_command','tbl_host','','check_command','','','','host_name',1,'0,2,2,0',0),(95,'tbl_command','tbl_host','','event_handler','','','','host_name',1,'0,2,2,0',0),(96,'tbl_command','tbl_service','','check_command','','','','config_name,service_description',1,'1,1,2,0',0),(97,'tbl_command','tbl_service','','event_handler','','','','config_name,service_description',1,'0,2,2,0',0),(98,'tbl_contact','tbl_lnkContactgroupToContact','','idSlave','','tbl_contactgroup','','contactgroup_name',1,'1,2,0,1',0),(99,'tbl_contact','tbl_lnkContactToCommandHost','','idMaster','','tbl_command','','command_name',1,'0,0,0,1',0),(100,'tbl_contact','tbl_lnkContactToCommandService','','idMaster','','tbl_command','','command_name',1,'0,0,0,1',0),(101,'tbl_contact','tbl_lnkContactToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(102,'tbl_contact','tbl_lnkContactToContacttemplate','','idMaster','','tbl_contacttemplate','','template_name',1,'0,0,0,1',0),(103,'tbl_contact','tbl_lnkContactToVariabledefinition','','idMaster','','tbl_variabledefinition','','name',1,'0,0,0,2',0),(104,'tbl_contact','tbl_lnkHostescalationToContact','','idSlave','','tbl_hostescalation','','config_name',1,'1,1,0,1',0),(105,'tbl_contact','tbl_lnkHosttemplateToContact','','idSlave','','tbl_hosttemplate','','template_name',1,'0,0,0,1',0),(106,'tbl_contact','tbl_lnkHostToContact','','idSlave','','tbl_host','','host_name',1,'1,1,0,1',0),(107,'tbl_contact','tbl_lnkServiceescalationToContact','','idSlave','','tbl_serviceescalation','','config_name',1,'1,1,0,1',0),(108,'tbl_contact','tbl_lnkServicetemplateToContact','','idSlave','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(109,'tbl_contact','tbl_lnkServiceToContact','','idSlave','','tbl_service','','config_name,service_description',1,'1,1,0,1',0),(110,'tbl_contactgroup','tbl_lnkContactgroupToContact','','idMaster','','tbl_contact','','contact_name',1,'0,0,0,1',0),(111,'tbl_contactgroup','tbl_lnkContactgroupToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(112,'tbl_contactgroup','tbl_lnkContactgroupToContactgroup','','idSlave','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(113,'tbl_contactgroup','tbl_lnkContacttemplateToContactgroup','','idSlave','','tbl_contacttemplate','','template_name',1,'0,0,0,1',0),(114,'tbl_contactgroup','tbl_lnkContactToContactgroup','','idSlave','','tbl_contact','','contact_name',1,'0,0,0,1',0),(115,'tbl_contactgroup','tbl_lnkHostescalationToContactgroup','','idSlave','','tbl_hostescalation','','config_name',1,'1,1,0,1',0),(116,'tbl_contactgroup','tbl_lnkHosttemplateToContactgroup','','idSlave','','tbl_hosttemplate','','template_name',1,'0,0,0,1',0),(117,'tbl_contactgroup','tbl_lnkHostToContactgroup','','idSlave','','tbl_host','','host_name',1,'1,1,0,1',0),(118,'tbl_contactgroup','tbl_lnkServiceescalationToContactgroup','','idSlave','','tbl_serviceescalation','','config_name',1,'1,1,0,1',0),(119,'tbl_contactgroup','tbl_lnkServicetemplateToContactgroup','','idSlave','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(120,'tbl_contactgroup','tbl_lnkServiceToContactgroup','','idSlave','','tbl_service','','config_name,service_description',1,'1,1,0,1',0),(121,'tbl_contacttemplate','tbl_lnkContacttemplateToCommandHost','','idMaster','','tbl_command','','command_name',1,'0,0,0,1',0),(122,'tbl_contacttemplate','tbl_lnkContacttemplateToCommandService','','idMaster','','tbl_command','','command_name',1,'0,0,0,1',0),(123,'tbl_contacttemplate','tbl_lnkContacttemplateToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(124,'tbl_contacttemplate','tbl_lnkContacttemplateToContacttemplate','','idMaster','','tbl_contacttemplate','','template_name',1,'0,0,0,1',0),(125,'tbl_contacttemplate','tbl_lnkContacttemplateToContacttemplate','','idSlave','','tbl_contacttemplate','','template_name',1,'0,0,0,1',0),(126,'tbl_contacttemplate','tbl_lnkContacttemplateToVariabledefinition','','idMaster','','tbl_variabledefinition','','name',1,'0,0,0,2',0),(127,'tbl_contacttemplate','tbl_lnkContactToContacttemplate','','idSlave','','tbl_contact','','contact_name',1,'0,0,0,1',0),(128,'tbl_host','tbl_lnkHostdependencyToHost_DH','','idSlave','','tbl_hostdependency','','config_name',1,'1,1,0,1',0),(129,'tbl_host','tbl_lnkHostdependencyToHost_H','','idSlave','','tbl_hostdependency','','config_name',1,'1,1,0,1',0),(130,'tbl_host','tbl_lnkHostescalationToHost','','idSlave','','tbl_hostescalation','','config_name',1,'1,1,0,1',0),(131,'tbl_host','tbl_lnkHosttemplateToHost','','idSlave','','tbl_hosttemplate','','template_name',1,'0,0,0,1',0),(132,'tbl_host','tbl_lnkHostToContact','','idMaster','','tbl_contact','','contact_name',1,'0,0,0,1',0),(133,'tbl_host','tbl_lnkHostToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(134,'tbl_host','tbl_lnkHostToHost','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(135,'tbl_host','tbl_lnkHostToHost','','idSlave','','tbl_host','','host_name',1,'0,0,0,1',0),(136,'tbl_host','tbl_lnkHostToHostgroup','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(137,'tbl_host','tbl_lnkHostgroupToHost','','idSlave','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(138,'tbl_host','tbl_lnkHostToHosttemplate','','idMaster','','tbl_hosttemplate','','template_name',1,'0,0,0,1',0),(139,'tbl_host','tbl_lnkHostToVariabledefinition','','idMaster','','tbl_variabledefinition','','name',1,'0,0,0,2',0),(140,'tbl_host','tbl_lnkServicedependencyToHost_DH','','idSlave','','tbl_servicedependency','','config_name',1,'1,1,0,1',0),(141,'tbl_host','tbl_lnkServicedependencyToHost_H','','idSlave','','tbl_servicedependency','','config_name',1,'1,1,0,1',0),(142,'tbl_host','tbl_lnkServiceescalationToHost','','idSlave','','tbl_serviceescalation','','config_name',1,'1,1,0,1',0),(143,'tbl_host','tbl_lnkServicetemplateToHost','','idSlave','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(144,'tbl_host','tbl_lnkServiceToHost','','idSlave','','tbl_service','','config_name,service_description',1,'1,1,0,1',0),(145,'tbl_host','tbl_lnkServicegroupToService','','idSlaveH','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(146,'tbl_host','tbl_hostextinfo','','host_name','','','','host_name',1,'0,0,0,0',0),(147,'tbl_host','tbl_serviceextinfo','','host_name','','','','host_name',1,'0,0,0,0',0),(148,'tbl_hostdependency','tbl_lnkHostdependencyToHostgroup_DH','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(149,'tbl_hostdependency','tbl_lnkHostdependencyToHostgroup_H','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(150,'tbl_hostdependency','tbl_lnkHostdependencyToHost_DH','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(151,'tbl_hostdependency','tbl_lnkHostdependencyToHost_H','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(152,'tbl_hostescalation','tbl_lnkHostescalationToContact','','idMaster','','tbl_contact','','contact_name',1,'0,0,0,1',0),(153,'tbl_hostescalation','tbl_lnkHostescalationToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(154,'tbl_hostescalation','tbl_lnkHostescalationToHost','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(155,'tbl_hostescalation','tbl_lnkHostescalationToHostgroup','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(156,'tbl_hostgroup','tbl_lnkHostdependencyToHostgroup_DH','','idSlave','','tbl_hostdependency','','config_name',1,'0,0,0,1',0),(157,'tbl_hostgroup','tbl_lnkHostdependencyToHostgroup_H','','idSlave','','tbl_hostdependency','','config_name',1,'0,0,0,1',0),(158,'tbl_hostgroup','tbl_lnkHostescalationToHostgroup','','idSlave','','tbl_hostescalation','','config_name',1,'0,0,0,1',0),(159,'tbl_hostgroup','tbl_lnkHostgroupToHost','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(160,'tbl_hostgroup','tbl_lnkHostgroupToHostgroup','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(161,'tbl_hostgroup','tbl_lnkHostgroupToHostgroup','','idSlave','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(162,'tbl_hostgroup','tbl_lnkHosttemplateToHostgroup','','idSlave','','tbl_hosttemplate','','template_name',1,'0,0,0,1',0),(163,'tbl_hostgroup','tbl_lnkHostToHostgroup','','idSlave','','tbl_host','','host_name',1,'0,0,0,1',0),(164,'tbl_hostgroup','tbl_lnkServicedependencyToHostgroup_DH','','idSlave','','tbl_servicedependency','','config_name',1,'0,0,0,1',0),(165,'tbl_hostgroup','tbl_lnkServicedependencyToHostgroup_H','','idSlave','','tbl_servicedependency','','config_name',1,'0,0,0,1',0),(166,'tbl_hostgroup','tbl_lnkServiceescalationToHostgroup','','idSlave','','tbl_serviceescalation','','config_name',1,'0,0,0,1',0),(167,'tbl_hostgroup','tbl_lnkServicetemplateToHostgroup','','idSlave','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(168,'tbl_hostgroup','tbl_lnkServiceToHostgroup','','idSlave','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(169,'tbl_hostgroup','tbl_lnkServicegroupToService','','idSlaveHG','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(170,'tbl_hosttemplate','tbl_lnkHosttemplateToContact','','idMaster','','tbl_contact','','contact_name',1,'0,0,0,1',0),(171,'tbl_hosttemplate','tbl_lnkHosttemplateToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(172,'tbl_hosttemplate','tbl_lnkHosttemplateToHost','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(173,'tbl_hosttemplate','tbl_lnkHosttemplateToHostgroup','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(174,'tbl_hosttemplate','tbl_lnkHosttemplateToHosttemplate','','idMaster','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(175,'tbl_hosttemplate','tbl_lnkHosttemplateToHosttemplate','','idSlave','','tbl_hosttemplate','','template_name',1,'0,0,0,1',0),(176,'tbl_hosttemplate','tbl_lnkHosttemplateToVariabledefinition','','idMaster','','tbl_variabledefinition','','name',1,'0,0,0,2',0),(177,'tbl_hosttemplate','tbl_lnkHostToHosttemplate','','idSlave','','tbl_host','','host_name',1,'0,0,0,1',0),(178,'tbl_service','tbl_lnkServicedependencyToService_DS','','idSlave','','tbl_servicedependency','','config_name',1,'1,1,0,1',0),(179,'tbl_service','tbl_lnkServicedependencyToService_S','','idSlave','','tbl_servicedependency','','config_name',1,'1,1,0,1',0),(180,'tbl_service','tbl_lnkServiceescalationToService','','idSlave','','tbl_serviceescalation','','config_name',1,'1,1,0,1',0),(181,'tbl_service','tbl_lnkServicegroupToService','','idSlaveS','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(182,'tbl_service','tbl_lnkServiceToContact','','idMaster','','tbl_contact','','contact_name',1,'0,0,0,1',0),(183,'tbl_service','tbl_lnkServiceToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(184,'tbl_service','tbl_lnkServiceToHost','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(185,'tbl_service','tbl_lnkServiceToHostgroup','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(186,'tbl_service','tbl_lnkServiceToServicegroup','','idMaster','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(187,'tbl_service','tbl_lnkServiceToServicetemplate','','idMaster','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(188,'tbl_service','tbl_lnkServiceToVariabledefinition','','idMaster','','tbl_variabledefinition','','name',1,'0,0,0,2',0),(189,'tbl_service','tbl_serviceextinfo','','service_description','','','','host_name',1,'0,0,0,0',0),(190,'tbl_servicedependency','tbl_lnkServicedependencyToHostgroup_DH','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(191,'tbl_servicedependency','tbl_lnkServicedependencyToHostgroup_H','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(192,'tbl_servicedependency','tbl_lnkServicedependencyToHost_DH','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(193,'tbl_servicedependency','tbl_lnkServicedependencyToHost_H','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(194,'tbl_servicedependency','tbl_lnkServicedependencyToService_DS','','idMaster','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(195,'tbl_servicedependency','tbl_lnkServicedependencyToService_S','','idMaster','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(196,'tbl_serviceescalation','tbl_lnkServiceescalationToContact','','idMaster','','tbl_contact','','contact_name',1,'0,0,0,1',0),(197,'tbl_serviceescalation','tbl_lnkServiceescalationToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(198,'tbl_serviceescalation','tbl_lnkServiceescalationToHost','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(199,'tbl_serviceescalation','tbl_lnkServiceescalationToHostgroup','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(200,'tbl_serviceescalation','tbl_lnkServiceescalationToService','','idMaster','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(201,'tbl_servicegroup','tbl_lnkServicegroupToService','','idMaster','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(202,'tbl_servicegroup','tbl_lnkServicegroupToServicegroup','','idMaster','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(203,'tbl_servicegroup','tbl_lnkServicegroupToServicegroup','','idSlave','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(204,'tbl_servicegroup','tbl_lnkServicetemplateToServicegroup','','idSlave','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(205,'tbl_servicegroup','tbl_lnkServiceToServicegroup','','idSlave','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(206,'tbl_servicetemplate','tbl_lnkServicetemplateToContact','','idMaster','','tbl_contact','','contact_name',1,'0,0,0,1',0),(207,'tbl_servicetemplate','tbl_lnkServicetemplateToContactgroup','','idMaster','','tbl_contactgroup','','contactgroup_name',1,'0,0,0,1',0),(208,'tbl_servicetemplate','tbl_lnkServicetemplateToHost','','idMaster','','tbl_host','','host_name',1,'0,0,0,1',0),(209,'tbl_servicetemplate','tbl_lnkServicetemplateToHostgroup','','idMaster','','tbl_hostgroup','','hostgroup_name',1,'0,0,0,1',0),(210,'tbl_servicetemplate','tbl_lnkServicetemplateToServicegroup','','idMaster','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(211,'tbl_servicetemplate','tbl_lnkServicetemplateToServicetemplate','','idMaster','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(212,'tbl_servicetemplate','tbl_lnkServicetemplateToServicetemplate','','idSlave','','tbl_servicetemplate','','template_name',1,'0,0,0,1',0),(213,'tbl_servicetemplate','tbl_lnkServicetemplateToVariabledefinition','','idMaster','','tbl_variabledefinition','','name',1,'0,0,0,2',0),(214,'tbl_servicetemplate','tbl_lnkServiceToServicetemplate','','idSlave','','tbl_service','','config_name,service_description',1,'0,0,0,1',0),(215,'tbl_timeperiod','tbl_lnkTimeperiodToTimeperiod','','idMaster','','tbl_timeperiod','','timeperiod_name',1,'0,0,0,1',0),(216,'tbl_timeperiod','tbl_lnkTimeperiodToTimeperiod','','idSlave','','tbl_timeperiod','','timeperiod_name',1,'0,0,0,1',0),(217,'tbl_timeperiod','tbl_contact','','host_notification_period','','','','contact_name',1,'1,1,2,0',0),(218,'tbl_timeperiod','tbl_contact','','service_notification_period','','','','contact_name',1,'1,1,2,0',0),(219,'tbl_timeperiod','tbl_contacttemplate','','host_notification_period','','','','template_name',1,'0,2,2,0',0),(220,'tbl_timeperiod','tbl_contacttemplate','','service_notification_period','','','','template_name',1,'0,2,2,0',0),(221,'tbl_timeperiod','tbl_host','','check_period','','','','host_name',1,'1,1,2,0',0),(222,'tbl_timeperiod','tbl_host','','notification_period','','','','host_name',1,'1,1,2,0',0),(223,'tbl_timeperiod','tbl_hosttemplate','','check_period','','','','template_name',1,'0,2,2,0',0),(224,'tbl_timeperiod','tbl_hosttemplate','','notification_period','','','','template_name',1,'0,2,2,0',0),(225,'tbl_timeperiod','tbl_hostdependency','','dependency_period','','','','config_name',1,'0,2,2,0',0),(226,'tbl_timeperiod','tbl_hostescalation','','escalation_period','','','','config_name',1,'0,2,2,0',0),(227,'tbl_timeperiod','tbl_service','','check_period','','','','config_name,service_description',1,'1,1,2,0',0),(228,'tbl_timeperiod','tbl_service','','notification_period','','','','config_name,service_description',1,'0,2,2,0',0),(229,'tbl_timeperiod','tbl_servicetemplate','','check_period','','','','template_name',1,'0,2,2,0',0),(230,'tbl_timeperiod','tbl_servicetemplate','','notification_period','','','','template_name',1,'1,1,2,0',0),(231,'tbl_timeperiod','tbl_servicedependency','','dependency_period','','','','config_name',1,'0,2,2,0',0),(232,'tbl_timeperiod','tbl_serviceescalation','','escalation_period','','','','config_name',1,'0,2,2,0',0),(233,'tbl_timeperiod','tbl_timedefinition','','tipId','','','','id',1,'0,0,0,3',0),(234,'tbl_timeperiod','tbl_timeperiod','','use_template','tbl_lnkTimeperiodToTimeperiodUse','timeperiod_name','','',0,'',2),(235,'tbl_timeperiod','tbl_lnkTimeperiodToTimeperiodUse','','idMaster','','tbl_timeperiod','','timeperiod_name',1,'0,0,0,1',0),(236,'tbl_timeperiod','tbl_lnkTimeperiodToTimeperiodUse','','idSlave','','tbl_timeperiod','','timeperiod_name',1,'0,0,0,1',0),(237,'tbl_group','tbl_user','','users','tbl_lnkGroupToUser','username','','',0,'',0),(238,'tbl_group','tbl_lnkGroupToUser','','idMaster','','tbl_user','','username',1,'0,0,0,1',0),(239,'tbl_servicedependency','tbl_servicegroup','','dependent_servicegroup_name','tbl_lnkServicedependencyToServicegroup_DS','servicegroup_name','','',0,'',2),(240,'tbl_servicedependency','tbl_servicegroup','','servicegroup_name','tbl_lnkServicedependencyToServicegroup_S','servicegroup_name','','',0,'',2),(241,'tbl_servicedependency','tbl_lnkServicedependencyToServicegroup_DS','','idMaster','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(242,'tbl_servicedependency','tbl_lnkServicedependencyToServicegroup_S','','idMaster','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0),(243,'tbl_serviceescalation','tbl_servicegroup','','servicegroup_name','tbl_lnkServiceescalationToServicegroup','servicegroup_name','','',0,'',2),(244,'tbl_serviceescalation','tbl_lnkServiceescalationToServicegroup','','idMaster','','tbl_servicegroup','','servicegroup_name',1,'0,0,0,1',0);
/*!40000 ALTER TABLE `tbl_relationinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_service`
--

DROP TABLE IF EXISTS `tbl_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `host_name_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroup_name_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `service_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `servicegroups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `servicegroups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `use_template` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_command` text COLLATE utf8_unicode_ci NOT NULL,
  `is_volatile` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `initial_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `max_check_attempts` int(11) DEFAULT NULL,
  `check_interval` int(11) DEFAULT NULL,
  `retry_interval` int(11) DEFAULT NULL,
  `active_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `passive_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_period` int(11) NOT NULL DEFAULT 0,
  `parallelize_check` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `obsess_over_service` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_freshness` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `freshness_threshold` int(11) DEFAULT NULL,
  `event_handler` int(11) NOT NULL DEFAULT 0,
  `event_handler_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `low_flap_threshold` int(11) DEFAULT NULL,
  `high_flap_threshold` int(11) DEFAULT NULL,
  `flap_detection_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `flap_detection_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `process_perf_data` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_status_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_nonstatus_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `notification_interval` int(11) DEFAULT NULL,
  `first_notification_delay` int(11) DEFAULT NULL,
  `notification_period` int(11) NOT NULL DEFAULT 0,
  `notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contacts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contacts_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contact_groups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contact_groups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `stalking_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_variables` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `import_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_service`
--

LOCK TABLES `tbl_service` WRITE;
/*!40000 ALTER TABLE `tbl_service` DISABLE KEYS */;
INSERT INTO `tbl_service` VALUES (1,'TCP_SSH_Info',0,2,1,2,'ssh Info','ssh Info',0,2,1,2,'91!-p 22',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:42',0,1,'74885b5332a589075e26dc2c915511530a83f236'),(111,'vmware-esx-runtime-maintenance',0,2,1,2,'vmware-esx-runtime-maintenance','vmware-esx-runtime-maintenance',0,2,1,2,'120!vcenter.ons.lab!-l runtime!-s maintenance',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:23',0,1,'ef2745c778a861539367ed42b5bc7975234a01b8'),(108,'vmware-esx-network-usage',0,2,1,2,'vmware-esx-network-usage','vmware-esx-network-usage',0,2,1,2,'120!vcenter.ons.lab!-l net!-s usage!-w 8000!-c 120000',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:09',0,1,'936640804128cb16d17cbc65ebb37b812fffdf52'),(109,'vmware-esx-runtime-health',0,2,1,2,'vmware-esx-runtime-health','vmware-esx-runtime-health',0,2,1,2,'120!vcenter.ons.lab!-l runtime!-s health',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:14',0,1,'ad22203d3c7b27eb203cc11d1d1e3f2ea8a681cc'),(110,'vmware-esx-runtime-issues',0,2,1,2,'vmware-esx-runtime-issues','vmware-esx-runtime-issues',0,2,1,2,'120!vcenter.ons.lab!-l runtime!-s issues',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:18',0,1,'6fe3c25913ab1dcaac5802c936d001d30b458fe4'),(118,'vmware-esx-storage-usage',0,2,1,2,'vmware-esx-storage-usage','vmware-esx-storage-usage',0,2,1,2,'120!vcenter.ons.lab!-l vmfs',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:48',0,1,'373acaa79b030f2899ed748f6a50c7d7fd279e52'),(117,'vmware-esx-uptime',0,2,1,2,'vmware-esx-uptime','vmware-esx-uptime',0,2,1,2,'120!vcenter.ons.lab!-l uptime',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:55',0,1,'83efb46b9b1ffa7e90e87d643941181fd85d2a75'),(23,'check_gearman_ALL_queue',0,2,1,2,'check_gearman_server','gearman_ALL_queue',0,2,1,2,'14!hostgroup_ZONE_ALL!-w 200 -c 250 -W 600 -C 601',2,'',5,2,1,1,2,1,2,2,2,NULL,0,2,NULL,NULL,0,'',2,2,2,NULL,NULL,1,'w,u,c,r,f,s',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 16:32:42',0,1,'54d22069f11ef7187e6830c76e81f234b787e636'),(101,'vmware-esx-io-write',0,2,1,2,'vmware-esx-io-write','vmware-esx-io-write',0,2,1,2,'120!vcenter.ons.lab!-l io !-s write !-w 200!-c 300',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:38',0,1,'7dade456a1845bbc6bf4628aa29b3371bc120d33'),(25,'check_linux_local_procstat',0,2,1,2,'Process Stats','Process Stats',0,2,1,2,'28',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 20:57:01',0,1,'66b752f6741be69b836961b0d320ca901e8e0fab'),(30,'check_snmp_cpu',0,2,1,2,'check_snmp_cpu','check_snmp_cpu',0,2,1,2,'67!WDB-NA-NET-RO',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 18:09:20',0,1,'422819dc6266d23dd055cc90dce5690dd5a7b7fc'),(31,'check_snmp_datetime',0,2,1,2,'check_snmp_datetime','check_snmp_datetime',0,2,1,2,'58!WDB-NA-NET-RO!2!5',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:42',0,1,'3abde6e22d50ec3ec49f06f7d0f9ac52162f648c'),(32,'check_snmp_interface',0,2,1,2,'check_snmp_interface','check_snmp_interface',0,2,1,2,'62! WDB-NA-NET-RO',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 15:34:57',0,1,'f7fb455ec271b0c485f4c24421a25dbd1b3203c7'),(33,'check_snmp_linux_cpu',0,2,1,2,'check_snmp_cpu_details','check_snmp_cpu_details',0,2,1,2,'57!WDB-NA-NET-RO!2c!-1!-1',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:42',0,1,'cce6492244dd1ed3661df56da00bf0c99ad79fa7'),(34,'check_snmp_linux_load',0,2,1,2,'check_snmp_linux_load','check_snmp_linux_load',0,2,1,2,'71!WDB-NA-NET-RO',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 15:34:37',0,1,'7ae8aff9ef559344997e7091654d2cc7d13d7020'),(35,'check_snmp_linux_memory_metrics',0,2,1,2,'check_snmp_linux_memory_details','check_snmp_linux_memory_details',0,2,1,2,'73!WDB-NA-NET-RO',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 16:34:09',0,1,'b006bf82e8d11b063ae8201265a03e12cc8cf9b2'),(36,'check_snmp_memory',0,2,1,2,'check_snmp_memory_ram','check_snmp_memory_ram',0,2,1,2,'77!WDB-NA-NET-RO!2c!101%!105%!Memory',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:43',0,1,'9bed60f14541a6ad041e278b7a0823d028c1fd46'),(37,'check_snmp_memory_linux_swap',0,2,1,2,'check_snmp_memory_swap','check_snmp_memory_swap',0,2,1,2,'74!WDB-NA-NET-RO!\'80,,\'!\'90,,\'',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:43',0,1,'ea388749c6f611eb3eb4272322dc3bd38f23aa88'),(38,'check_snmp_memory_linux_user',0,2,1,2,'check_snmp_memory_ram','check_snmp_memory_ram',0,2,1,2,'75!WDB-NA-NET-RO!\'80,,\'!\'90,,\'',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:43',0,1,'8c4c3bd18168ce1bfb07c4d5b4718143bdf24987'),(39,'check_snmp_proc_check_RHEL',0,2,1,2,'check_snmp_process_check_RHEL','check_snmp_process_check_RHEL',0,2,1,2,'79!WDB-NA-NET-RO!snmpd init crond ntpd sshd udevd auditd ^mcstransd ^iscsid rsyslogd rhnsd osad ^yum-updatesd!Swap',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 16:10:01',0,1,'5a52588120a26a96bd8007c8a6e1ee5eca24426a'),(113,'vmware-esx-storage-paths',0,2,1,2,'vmware-esx-storage-paths','vmware-esx-storage-paths',0,2,1,2,'120!vcenter.ons.lab!-l storage!-s path',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:38',0,1,'d75481b5cd60bcc86472a9ee6a1147931f606598'),(112,'vmware-esx-runtime-temperature',0,2,1,2,'vmware-esx-runtime-temperature','vmware-esx-runtime-temperature',0,2,1,2,'120!vcenter.ons.lab!-l runtime!-s temperature',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:28',0,1,'ff577eb9a4225072cb55c8237d114b9b657d2c49'),(41,'check_snmp_proc_check_WIN',0,2,1,2,'check_snmp_process_check_WIN','check_snmp_process_check_WIN',0,2,1,2,'79!WDB-NA-NET-RO! snmp.exe services.exe lsass.exe csrss.exe winlogon.exe smss.exe svchost.exe',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:43',0,1,'21a4c5c389ae53cabc4e2b77697329a26dbf0f85'),(42,'check_snmp_storage_disk',0,2,1,2,'check_snmp_disk','check_snmp_disk',0,2,1,2,'82!WDB-NA-NET-RO !2c!85%!95%',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:43',0,1,'3d2292c5bb09dcc0bda2eccbadf2103d7775b791'),(43,'check_snmp_swap_linux',0,2,1,2,'check_snmp_memory_swap','check_snmp_memory_swap',0,2,1,2,'77!WDB-NA-NET-RO!2c!85%!95%!Swap',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-31 20:15:36',0,1,'0a839b3c9e3058dc8fe70e170b15ecd6499a1066'),(44,'check_snmp_system_info',0,2,1,2,'check_snmp_system_info','check_snmp_system_info',0,2,1,2,'45!-C WDB-NA-NET-RO -o \'.1.3.6.1.2.1.1.1.0\' -r \'No Such\' --invert-search 2>&1',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 18:26:56',0,1,'b933625167caad7b9b472ea3d8a94716d91b50f2'),(45,'check_snmp_system_metrics',0,2,1,2,'check_snmp_system_metrics','check_snmp_system_metrics',0,2,1,2,'83!WDB-NA-NET-RO',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 16:33:58',0,1,'bb0b7dc98c3d61f81bc6a946bf3d942f9d8e96a4'),(46,'check_snmp_uptime',0,2,1,2,'check_snmp_uptime','check_snmp_uptime',0,2,1,2,'45!-t 10 -C WDB-NA-NET-RO -P 2c -o \'DISMAN-EVENT-MIB::sysUpTimeInstance\'',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:43',0,1,'35257a0f35e4374b3fac65bd15a676e0f115f11d'),(47,'check_snmp_users_logged_in',0,2,1,2,'users logged in','users logged in',0,2,1,2,'45!-C WDB-NA-NET-RO -o \'.1.3.6.1.2.1.25.1.5.0\' -w \'10\' -c \'15\' 2>&1',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-06 16:57:43',0,1,'0921281923dc7b9d08e31168123380121e5cf466'),(116,'vmware-esx-storage-luns',0,2,1,2,'vmware-esx-storage-luns','vmware-esx-storage-luns',0,2,1,2,'120!vcenter.ons.lab!-l storage!-s lun',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:50:33',0,1,'2feb78bb551f222b7e986145c80d640db03776c9'),(115,'vmware-esx-io-kernel',0,2,1,2,'vmware-esx-io-kernel','vmware-esx-io-kernel',0,2,1,2,'120!vcenter.ons.lab!-l io !-s kernel !-w 200!-c 300',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:21',0,1,'6250e113ff7ff4d81ea101138f3df22a1a91a255'),(64,'localhost',0,2,1,2,'Current Load','',0,2,1,2,'30!5.0,4.0,3.0!10.0,6.0,4.0',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-05-25 14:47:48',0,1,'1c1c59261f025d93e97e303bc5a22887bfb5c8bd'),(65,'localhost',1,2,1,2,'Current Users','',0,2,1,2,'34!20!50',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 20:57:01',0,1,'3ce920e915a3af31b46df941824d062c490f2685'),(66,'localhost',1,2,1,2,'PING','',0,2,1,2,'39!100.0,20%!500.0,60%',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 20:57:01',0,1,'286f59d5ea2470f385ae69cfe3dbce72b53c748a'),(100,'vmware-esx-io-read',0,2,1,2,'vmware-esx-io-read','vmware-esx-io-read',0,2,1,2,'120!vcenter.ons.lab!-l io !-s read!-w 200!-c 300',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:33',0,1,'f12559d6bbe04dfacb6f40a3011f9d3bed1b451b'),(68,'localhost',1,2,1,2,'Root Partition','',0,2,1,2,'29!20%!10%!/',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 20:57:01',0,1,'5f510c0cd19def11f673fc5b01b1b2c382491952'),(69,'localhost',0,2,1,2,'SSH','',0,2,1,2,'91',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',0,0,2,0,2,'','','','','','',0,'','1','0','2017-04-25 21:00:04',0,1,'0393d6b3bea0c17c00016297da1f8852899cebe8'),(70,'localhost',1,2,1,2,'Swap Usage','',0,2,1,2,'33!20!10',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 20:57:01',0,1,'f1c819014b2bf14d4158dda76c7d462caa7edec4'),(71,'localhost',1,2,1,2,'Total Processes','',0,2,1,2,'32!250!400!RSZDT',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2017-04-25 20:57:01',0,1,'5e33602055f7466b83bb600d68c925dfceb0f450'),(114,'vmware-esx-io-queue',0,2,1,2,'vmware-esx-io-queue','vmware-esx-io-queue',0,2,1,2,'120!vcenter.ons.lab!-l io !-s queue !-w 200!-c 300',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:26',0,1,'648d5811177ae5c9506f8b51ad69fa825c133939'),(120,'check_snmp_diskiops_linux',0,2,1,2,'check_snmp_diskiops','check_snmp_diskiops',0,2,1,2,'135!WDB-NA-NET-RO!sda!80!90',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-31 17:12:20',0,1,'c98753aa7da5fa810826d3f0978a214f50dbf28d'),(102,'vmware-esx-cpu-usage',0,2,1,2,'vmware-esx-cpu-usage','vmware-esx-cpu-usage',0,2,1,2,'120!vcenter.ons.lab!-l cpu!-s usage!-w 85!-c 90',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:48:06',0,1,'edf42bc811fcfd340845f5ea5dc1bacec3d978c9'),(103,'vmware-esx-io-device',0,2,1,2,'vmware-esx-io-device','vmware-esx-io-device',0,2,1,2,'120!vcenter.ons.lab!-l io !-s device!-w 200!-c 300',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:15',0,1,'d322521d46f558089a72b3391275eef42458c8a8'),(104,'vmware-esx-mem-memctl',0,2,1,2,'vmware-esx-mem-memctl','vmware-esx-mem-memctl',0,2,1,2,'120!vcenter.ons.lab!-l mem!-s memctl!-w 100!-c 200',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:42',0,1,'fc334a62d6f87cf29f029165b7e87c859b3e0e8b'),(105,'vmware-esx-mem-overhead',0,2,1,2,'vmware-esx-mem-overhead','vmware-esx-mem-overhead',0,2,1,2,'120!vcenter.ons.lab!-l mem!-s overhead!-w 5000!-c 10000',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:49',0,1,'e8c49e5769e3e63a961789dd6fa3d6f1c80d436e'),(106,'vmware-esx-mem-usage',0,2,1,2,'vmware-esx-mem-usage','vmware-esx-mem-usage',0,2,1,2,'120!vcenter.ons.lab!-l mem!-s usage!-w 75!-c 90',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:53',0,1,'a6fc7c6b1d25dac1cbc41335068a6147b04b4b61'),(107,'vmware-esx-network-cards',0,2,1,2,'vmware-esx-network-cards','vmware-esx-network-cards',0,2,1,2,'120!vcenter.ons.lab!-l net!-s nic',2,'',NULL,NULL,NULL,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',1,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'','1','1','2018-01-30 01:49:59',0,1,'cf5b2a5755894a3571d1737a4f2b4d827e5d1502');
/*!40000 ALTER TABLE `tbl_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicedependency`
--

DROP TABLE IF EXISTS `tbl_servicedependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_servicedependency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dependent_host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dependent_hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dependent_service_description` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dependent_servicegroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `service_description` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `servicegroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `inherits_parent` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `execution_failure_criteria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notification_failure_criteria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dependency_period` int(11) NOT NULL DEFAULT 0,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `import_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`config_name`,`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicedependency`
--

LOCK TABLES `tbl_servicedependency` WRITE;
/*!40000 ALTER TABLE `tbl_servicedependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicedependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_serviceescalation`
--

DROP TABLE IF EXISTS `tbl_serviceescalation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_serviceescalation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `service_description` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `servicegroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contacts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contact_groups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `first_notification` int(11) DEFAULT NULL,
  `last_notification` int(11) DEFAULT NULL,
  `notification_interval` int(11) DEFAULT NULL,
  `escalation_period` int(11) NOT NULL DEFAULT 0,
  `escalation_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `import_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_name` (`config_name`,`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_serviceescalation`
--

LOCK TABLES `tbl_serviceescalation` WRITE;
/*!40000 ALTER TABLE `tbl_serviceescalation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_serviceescalation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_serviceextinfo`
--

DROP TABLE IF EXISTS `tbl_serviceextinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_serviceextinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_name` int(11) NOT NULL,
  `service_description` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statistic_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `import_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`host_name`,`service_description`,`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_serviceextinfo`
--

LOCK TABLES `tbl_serviceextinfo` WRITE;
/*!40000 ALTER TABLE `tbl_serviceextinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_serviceextinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicegroup`
--

DROP TABLE IF EXISTS `tbl_servicegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_servicegroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `servicegroup_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `members` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `servicegroup_members` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`servicegroup_name`,`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicegroup`
--

LOCK TABLES `tbl_servicegroup` WRITE;
/*!40000 ALTER TABLE `tbl_servicegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicetemplate`
--

DROP TABLE IF EXISTS `tbl_servicetemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_servicetemplate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `host_name_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `hostgroup_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hostgroup_name_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `service_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `servicegroups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `servicegroups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `use_template` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_command` text COLLATE utf8_unicode_ci NOT NULL,
  `is_volatile` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `initial_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `max_check_attempts` int(11) DEFAULT NULL,
  `check_interval` int(11) DEFAULT NULL,
  `retry_interval` int(11) DEFAULT NULL,
  `active_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `passive_checks_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_period` int(11) NOT NULL DEFAULT 0,
  `parallelize_check` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `obsess_over_service` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `check_freshness` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `freshness_threshold` int(11) DEFAULT NULL,
  `event_handler` int(11) NOT NULL DEFAULT 0,
  `event_handler_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `low_flap_threshold` int(11) DEFAULT NULL,
  `high_flap_threshold` int(11) DEFAULT NULL,
  `flap_detection_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `flap_detection_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `process_perf_data` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_status_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `retain_nonstatus_information` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `notification_interval` int(11) DEFAULT NULL,
  `first_notification_delay` int(11) DEFAULT NULL,
  `notification_period` int(11) NOT NULL DEFAULT 0,
  `notification_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notifications_enabled` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contacts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contacts_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `contact_groups` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contact_groups_tploptions` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `stalking_options` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_variables` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `import_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`template_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicetemplate`
--

LOCK TABLES `tbl_servicetemplate` WRITE;
/*!40000 ALTER TABLE `tbl_servicetemplate` DISABLE KEYS */;
INSERT INTO `tbl_servicetemplate` VALUES (3,'generic-service',0,2,0,2,'generic-service','',0,2,0,2,'0',2,'',3,2,2,1,2,1,1,1,0,NULL,0,1,NULL,NULL,1,'',1,1,1,0,NULL,1,'w,u,c,r',1,0,2,1,2,'','','','http://172.21.137.38:3000/dashboard/script/histou.js?host=$HOSTNAME$&service=$SERVICEDESC$&theme=light','','',0,'0','1','2017-12-01 18:57:19',0,1,''),(4,'local-service',0,2,0,2,'local-service','',0,2,1,2,'',2,'',4,5,1,2,2,0,2,2,2,NULL,0,2,NULL,NULL,2,'',2,2,2,NULL,NULL,0,'',2,0,2,0,2,'','','','','','',0,'0','1','2017-04-06 16:57:24',0,1,'');
/*!40000 ALTER TABLE `tbl_servicetemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` VALUES (1,'db','version','3.2.0'),(2,'db','type','mysql'),(3,'path','protocol','http'),(4,'path','tempdir','/tmp'),(5,'path','base_url','/nagiosql/'),(6,'path','base_path','/var/www/html/nagiosql/'),(7,'data','locale','en_GB'),(8,'data','encoding','utf-8'),(9,'security','logofftime','3600'),(10,'security','wsauth','0'),(11,'common','pagelines','50'),(12,'common','seldisable','1'),(13,'common','tplcheck','0'),(14,'common','updcheck','1'),(15,'network','proxy','0'),(16,'network','proxyserver',''),(17,'network','proxyuser',''),(18,'network','proxypasswd',''),(19,'network','onlineupdate','0');
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tablestatus`
--

DROP TABLE IF EXISTS `tbl_tablestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tablestatus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tableName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domainId` int(11) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tablestatus`
--

LOCK TABLES `tbl_tablestatus` WRITE;
/*!40000 ALTER TABLE `tbl_tablestatus` DISABLE KEYS */;
INSERT INTO `tbl_tablestatus` VALUES (1,'tbl_command',1,'2018-01-31 17:11:51'),(2,'tbl_timeperiod',1,'2017-04-25 17:27:13'),(3,'tbl_contacttemplate',1,'2017-04-06 16:55:46'),(4,'tbl_contact',1,'2017-12-01 18:58:36'),(5,'tbl_contactgroup',1,'2017-04-25 16:15:06'),(6,'tbl_hosttemplate',1,'2017-12-01 20:33:35'),(7,'tbl_host',1,'2018-01-31 20:13:25'),(8,'tbl_servicetemplate',1,'2017-12-01 18:57:19'),(9,'tbl_service',1,'2018-01-31 17:09:06'),(10,'tbl_hostgroup',1,'2017-12-01 20:34:15');
/*!40000 ALTER TABLE `tbl_tablestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timedefinition`
--

DROP TABLE IF EXISTS `tbl_timedefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_timedefinition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipId` int(10) unsigned NOT NULL,
  `definition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `range` text COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timedefinition`
--

LOCK TABLES `tbl_timedefinition` WRITE;
/*!40000 ALTER TABLE `tbl_timedefinition` DISABLE KEYS */;
INSERT INTO `tbl_timedefinition` VALUES (1,1,'wednesday','00:00-24:00','0000-00-00 00:00:00'),(2,1,'tuesday','00:00-24:00','0000-00-00 00:00:00'),(3,1,'thursday','00:00-24:00','0000-00-00 00:00:00'),(4,1,'friday','00:00-24:00','0000-00-00 00:00:00'),(5,1,'monday','00:00-24:00','0000-00-00 00:00:00'),(6,1,'saturday','00:00-24:00','0000-00-00 00:00:00'),(7,1,'sunday','00:00-24:00','0000-00-00 00:00:00'),(8,2,'wednesday','00:00-24:00','0000-00-00 00:00:00'),(9,2,'tuesday','00:00-24:00','0000-00-00 00:00:00'),(10,2,'thursday','00:00-24:00','0000-00-00 00:00:00'),(11,2,'friday','00:00-24:00','0000-00-00 00:00:00'),(12,2,'monday','00:00-24:00','0000-00-00 00:00:00'),(13,2,'saturday','00:00-24:00','0000-00-00 00:00:00'),(14,2,'sunday','00:00-24:00','0000-00-00 00:00:00'),(20,5,'friday','18:30-08:00','0000-00-00 00:00:00'),(21,5,'monday','18:30-08:00','0000-00-00 00:00:00'),(22,5,'thursday','18:30-08:00','0000-00-00 00:00:00'),(23,5,'tuesday','18:30-08:00','0000-00-00 00:00:00'),(24,5,'wednesday','18:30-08:00','0000-00-00 00:00:00'),(38,3,'monday 1 september','00:00-00:00','0000-00-00 00:00:00'),(39,3,'december 25','00:00-00:00','0000-00-00 00:00:00'),(40,3,'january 1','00:00-00:00','0000-00-00 00:00:00'),(41,3,'july 4','00:00-00:00','0000-00-00 00:00:00'),(42,3,'thursday -1 november','00:00-00:00','0000-00-00 00:00:00'),(43,8,'tuesday','06:30-20:30','0000-00-00 00:00:00'),(44,8,'thursday','06:30-20:30','0000-00-00 00:00:00'),(45,8,'monday','06:30-20:30','0000-00-00 00:00:00'),(46,8,'friday','06:30-20:30','0000-00-00 00:00:00'),(47,8,'wednesday','06:30-20:30','0000-00-00 00:00:00'),(48,9,'wednesday','06:30-20:00','0000-00-00 00:00:00'),(49,9,'tuesday','06:30-20:00','0000-00-00 00:00:00'),(50,9,'thursday','06:30-20:00','0000-00-00 00:00:00'),(51,9,'monday','06:30-20:00','0000-00-00 00:00:00'),(52,9,'friday','06:30-20:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbl_timedefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timeperiod`
--

DROP TABLE IF EXISTS `tbl_timeperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_timeperiod` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeperiod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_template` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `last_modified` datetime NOT NULL,
  `access_group` int(8) unsigned NOT NULL DEFAULT 0,
  `config_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `timeperiod_name` (`timeperiod_name`,`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timeperiod`
--

LOCK TABLES `tbl_timeperiod` WRITE;
/*!40000 ALTER TABLE `tbl_timeperiod` DISABLE KEYS */;
INSERT INTO `tbl_timeperiod` VALUES (1,'24x7','24 Hours A Day, 7 Days A Week',0,0,'','1','1','2017-04-06 16:54:49',0,1),(2,'24x7_sans_holidays','24x7 Sans Holidays',0,1,'','1','1','2017-04-06 16:54:49',0,1),(3,'us-holidays','U.S. Holidays',0,0,'us-holidays','1','1','2017-04-06 16:54:49',0,1),(5,'after_work','After 6:30pm up to 8:00am',0,0,'','1','1','2017-04-06 16:54:49',0,1),(7,'none','No Time Is A Good Time',0,0,'','1','1','2017-04-06 16:54:49',0,1),(8,'workhours','Normal Work Hours',0,0,'','1','1','2017-04-06 16:54:49',0,1),(9,'workhours_extended','Extended Work Hours 6:30am to 8pm, Monday to Friday',0,0,'workhours_extended','1','1','2017-04-06 16:54:49',0,1);
/*!40000 ALTER TABLE `tbl_timeperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_enable` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `wsauth` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `nodelete` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `domain` int(10) unsigned NOT NULL DEFAULT 1,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'admin','Administrator','21232f297a57a5a743894a0e4a801fc3','1','0','1','1','1',1,'2018-01-31 20:11:01','2017-04-25 21:06:36');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_variabledefinition`
--

DROP TABLE IF EXISTS `tbl_variabledefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_variabledefinition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_variabledefinition`
--

LOCK TABLES `tbl_variabledefinition` WRITE;
/*!40000 ALTER TABLE `tbl_variabledefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_variabledefinition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 21:06:51