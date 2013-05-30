-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: owumanagerd
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

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
-- Table structure for table `cpe_templates`
--

DROP TABLE IF EXISTS `cpe_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpe_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `template` text,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpe_templates`
--

LOCK TABLES `cpe_templates` WRITE;
/*!40000 ALTER TABLE `cpe_templates` DISABLE KEYS */;
INSERT INTO `cpe_templates` VALUES (3,'MOD01-b1','aaa.1.status=disabled\r\naaa.status=disabled\r\nbridge.1.devname=br0\r\nbridge.1.fd=1\r\nbridge.1.port.1.devname=eth0\r\nbridge.1.port.1.status=enabled\r\nbridge.1.port.2.devname=ath0\r\nbridge.1.port.2.status=enabled\r\nbridge.1.stp.status=disabled\r\nbridge.status=disabled\r\ndhcpc.1.devname=br0\r\ndhcpc.1.status=disabled\r\ndhcpc.status=disabled\r\ndhcpd.1.devname=eth0\r\ndhcpd.1.dnsproxy=disabled\r\ndhcpd.1.end=192.168.254.150\r\ndhcpd.1.lease_time=3600\r\ndhcpd.1.netmask=255.255.255.0\r\ndhcpd.1.start=192.168.254.100\r\ndhcpd.1.status=enabled\r\ndhcpd.status=enabled\r\ndnsmasq.1.devname=eth0\r\ndnsmasq.1.status=disabled\r\ndnsmasq.status=disabled\r\nebtables.1.cmd=-t nat -A PREROUTING --in-interface ath0 -j arpnat --arpnat-target ACCEPT\r\nebtables.1.status=enabled\r\nebtables.2.cmd=-t nat -A POSTROUTING --out-interface ath0 -j arpnat --arpnat-target ACCEPT\r\nebtables.2.status=enabled\r\nebtables.3.cmd=-t broute -A BROUTING --protocol 0x888e --in-interface ath0 -j DROP\r\nebtables.3.status=disabled\r\nebtables.50.status=disabled\r\nebtables.51.status=disabled\r\nebtables.52.status=disabled\r\nebtables.status=disabled\r\nhttpd.port=80\r\nhttpd.status=enabled\r\nigmpproxy.status=disabled\r\niptables.1.cmd=-t nat -I POSTROUTING -o ppp+ -j MASQUERADE\r\niptables.1.status=enabled\r\niptables.2.status=disabled\r\niptables.200.status=disabled\r\niptables.3.cmd=-A FORWARD -p tcp --tcp-flags SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu\r\niptables.3.status=enabled\r\niptables.4.status=disabled\r\niptables.5.status=disabled\r\niptables.50.status=disabled\r\niptables.51.status=disabled\r\niptables.52.status=disabled\r\niptables.status=enabled\r\nnetconf.1.alias.1.status=disabled\r\nnetconf.1.alias.2.status=disabled\r\nnetconf.1.alias.3.status=disabled\r\nnetconf.1.alias.4.status=disabled\r\nnetconf.1.alias.5.status=disabled\r\nnetconf.1.alias.6.status=disabled\r\nnetconf.1.alias.7.status=disabled\r\nnetconf.1.alias.8.status=disabled\r\nnetconf.1.autoip.status=enabled\r\nnetconf.1.devname=eth0\r\nnetconf.1.ip=192.168.254.254\r\nnetconf.1.netmask=255.255.255.0\r\nnetconf.1.promisc=enabled\r\nnetconf.1.status=enabled\r\nnetconf.1.up=enabled\r\nnetconf.2.alias.1.status=disabled\r\nnetconf.2.alias.2.status=disabled\r\nnetconf.2.alias.3.status=disabled\r\nnetconf.2.alias.4.status=disabled\r\nnetconf.2.alias.5.status=disabled\r\nnetconf.2.alias.6.status=disabled\r\nnetconf.2.alias.7.status=disabled\r\nnetconf.2.alias.8.status=disabled\r\nnetconf.2.allmulti=disabled\r\nnetconf.2.autoip.status=enabled\r\nnetconf.2.devname=ath0\r\nnetconf.2.ip=0.0.0.0\r\nnetconf.2.netmask=255.255.255.0\r\nnetconf.2.status=enabled\r\nnetconf.2.up=enabled\r\nnetconf.3.alias.1.status=disabled\r\nnetconf.3.alias.2.status=disabled\r\nnetconf.3.alias.3.status=disabled\r\nnetconf.3.alias.4.status=disabled\r\nnetconf.3.alias.5.status=disabled\r\nnetconf.3.alias.6.status=disabled\r\nnetconf.3.alias.7.status=disabled\r\nnetconf.3.alias.8.status=disabled\r\nnetconf.3.autoip.status=enabled\r\nnetconf.3.devname=br0\r\nnetconf.3.ip=192.168.1.20\r\nnetconf.3.netmask=255.255.255.0\r\nnetconf.3.status=disabled\r\nnetconf.3.up=enabled\r\nnetconf.status=enabled\r\nnetmode=router\r\nntpclient.1.server=192.168.2.1\r\nntpclient.1.status=enabled\r\nntpclient.status=enabled\r\nppp.1.devname=ath0\r\nppp.1.mru=1492\r\nppp.1.mtu=1492\r\nppp.1.name=<CPE_NAME>\r\nppp.1.password=<CPE_PASSWORD>\r\nppp.1.require.mppe128=disabled\r\nppp.1.status=enabled\r\nppp.status=enabled\r\nradio.1.ack.auto=enabled\r\nradio.1.ackdistance=0\r\nradio.1.acktimeout=21\r\nradio.1.ani.status=disabled\r\nradio.1.chanshift=0\r\nradio.1.clksel=0\r\nradio.1.countrycode=380\r\nradio.1.devname=ath0\r\nradio.1.dfs.status=\r\nradio.1.ext_antenna=enabled\r\nradio.1.frag=off\r\nradio.1.ieee_mode=g\r\nradio.1.mcastrate=1M\r\nradio.1.mode=managed\r\nradio.1.rate.auto=enabled\r\nradio.1.rate.max=54M\r\nradio.1.rts=off\r\nradio.1.rx_antenna=1\r\nradio.1.rx_antenna_diversity=disabled\r\nradio.1.status=enabled\r\nradio.1.thresh62a=28\r\nradio.1.thresh62b=28\r\nradio.1.thresh62g=28\r\nradio.1.tx_antenna=1\r\nradio.1.tx_antenna_diversity=disabled\r\nradio.1.txpower=20\r\nradio.countrycode=380\r\nradio.ratemodule=ath_rate_minstrel\r\nradio.status=enabled\r\nresolv.nameserver.1.status=disabled\r\nresolv.nameserver.2.status=disabled\r\nresolv.status=enabled\r\nroute.1.devname=br0\r\nroute.1.gateway=192.168.1.1\r\nroute.1.ip=0.0.0.0\r\nroute.1.netmask=0\r\nroute.1.status=disabled\r\nroute.status=enabled\r\nsshd.status=enabled\r\nsyslog.remote.status=\r\nsyslog.status=enabled\r\ntshaper.in.1.devname=eth0\r\ntshaper.in.burst=0\r\ntshaper.in.rate=2048\r\ntshaper.out.1.devname=ath0\r\ntshaper.out.burst=0\r\ntshaper.out.rate=2048\r\ntshaper.status=disabled\r\nusers.1.name=ubnt\r\nusers.1.password=VvpvCwhccFv6Q\r\nusers.1.status=enabled\r\nusers.status=enabled\r\nwireless.1.addmtikie=enabled\r\nwireless.1.ap=00:80:48:64:D3:21\r\nwireless.1.authmode=1\r\nwireless.1.compression=0\r\nwireless.1.devname=ath0\r\nwireless.1.fastframes=0\r\nwireless.1.frameburst=0\r\nwireless.1.hide_ssid=disabled\r\nwireless.1.l2_isolation=enabled\r\nwireless.1.macclone=disabled\r\nwireless.1.scan_list.channels=8\r\nwireless.1.scan_list.status=enabled\r\nwireless.1.security=none\r\nwireless.1.signal_led1=94\r\nwireless.1.signal_led2=80\r\nwireless.1.signal_led3=73\r\nwireless.1.signal_led4=65\r\nwireless.1.sper=disabled\r\nwireless.1.ssid=meshcom.it\r\nwireless.1.status=enabled\r\nwireless.1.wds=disabled\r\nwireless.1.wmm=disabled\r\nwireless.1.wmmlevel=-1\r\nwireless.status=enabled\r\nwpasupplicant.device.1.status=disabled\r\nwpasupplicant.status=disabled',1,'2011-05-04 14:42:52','2011-05-10 11:39:28'),(5,'provaConfAesys','aperta abdfbadfbdfbdm\r\npippo=<CPE_NAME>\r\npluto=<CPE_PASSWORD>',1,'2011-05-27 09:58:41','2011-05-27 10:00:43');
/*!40000 ALTER TABLE `cpe_templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


