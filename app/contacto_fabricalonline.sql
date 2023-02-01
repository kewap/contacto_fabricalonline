/*
SQLyog Community
MySQL - 5.7.33 : Database - contacto_fabricalonline
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`contacto_fabricalonline` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `tbl_form_1` */

CREATE TABLE `tbl_form_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `descripcion` text,
  `archivo` text,
  `contacto_opcion` text,
  `contacto_valor` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_form_1` */

insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (1,'nombre','descr','0','correo_electronico','correo','2023-02-01 14:15:09');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (2,'nombre','descr','0','correo_electronico','correo','2023-02-01 14:16:05');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (3,'test1','desc','storage/1675275527_Abu_Dhabi_Circuit.png','correo_electronico','correo','2023-02-01 15:18:47');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (4,'test2','desc','0','correo_electronico','correo','2023-02-01 15:19:46');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (5,'test2','desc','none','correo_electronico','correo','2023-02-01 15:29:35');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (6,'test2','desc','none','correo_electronico','correo','2023-02-01 15:30:02');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (7,'test2','desc','none','correo_electronico','correo','2023-02-01 15:31:35');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (8,'test2','desc','none','correo_electronico','correo','2023-02-01 15:32:00');
insert  into `tbl_form_1`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (9,'test2','desc','none','correo_electronico','correo','2023-02-01 15:40:04');

/*Table structure for table `tbl_form_2` */

CREATE TABLE `tbl_form_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `descripcion` text,
  `archivo` text,
  `contacto_opcion` text,
  `contacto_valor` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_form_2` */

insert  into `tbl_form_2`(`id`,`nombre`,`descripcion`,`archivo`,`contacto_opcion`,`contacto_valor`,`fecha`) values (1,'1','2','0','correo_electronico','3','2023-02-01 12:56:14');

/*Table structure for table `tbl_form_3` */

CREATE TABLE `tbl_form_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `archivo` text,
  `material` text,
  `relleno` text,
  `descripcion` text,
  `contacto_opcion` text,
  `contacto_valor` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_form_3` */

insert  into `tbl_form_3`(`id`,`nombre`,`archivo`,`material`,`relleno`,`descripcion`,`contacto_opcion`,`contacto_valor`,`fecha`) values (1,'nombre','0','ABS','67','comentario','llamada_telefonica','fono','2023-02-01 15:50:39');
insert  into `tbl_form_3`(`id`,`nombre`,`archivo`,`material`,`relleno`,`descripcion`,`contacto_opcion`,`contacto_valor`,`fecha`) values (2,'nombre','0','TPU','21','comentario','whatsapp','123','2023-02-01 12:54:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
