-- --------------------------------------------------------
-- SQL Commands to set up the boomi_ar_portal.
--
-- This file is meant for use with MySQL 5 and above!
-- --------------------------------------------------------

--
-- Database : `galacticdepot`
--
CREATE DATABASE IF NOT EXISTS heroku_64fe6b43309dc68;
USE heroku_64fe6b43309dc68;

--
-- Table structure for table `arp_address`
--
CREATE TABLE IF NOT EXISTS galatic_order (
  id CHAR(36) NOT NULL,
  description VARCHAR(255) NOT NULL DEFAULT '',
  account_number VARCHAR(32) NOT NULL,
  order_number VARCHAR(32) NOT NULL,
  contract_number VARCHAR(32) NOT NULL,
  currency VARCHAR(3) NOT NULL DEFAULT 'USD';
  PRIMARY KEY  (`id`)
)
  COMMENT='Orders Table';

  --
-- Table structure for table `galatic_items`
--
CREATE TABLE IF NOT EXISTS galatic_order_item (
  id CHAR(36) NOT NULL,
  order_id CHAR(36),
  description VARCHAR(255) NOT NULL DEFAULT '',
  product_name VARCHAR(255) NOT NULL DEFAULT '',
  code VARCHAR(36) NOT NULL DEFAULT '',,
  price DECIMAL(13,2) NOT NULL DEFAULT 0.00;
  tax DECIMAL(13,2) NOT NULL DEFAULT 0.00;
  PRIMARY KEY  (`id`)
)
  COMMENT='Item Table';

--
-- Table structure for table `galatic_address`
--
CREATE TABLE IF NOT EXISTS galatic_shipping_address (
  id CHAR(36) NOT NULL,
  price DECIMAL (13,2) NOT NULL DEFAULT 0.00;
  comments VARCHAR(255) NOT NULL DEFAULT '',
  tracking_vendor VARCHAR (36) NOT NULL DEFAULT 'FedEx',
  tracking_number VARCHAR (36), NOT NULL,
  street VARCHAR(255) NOT NULL DEFAULT '',
  street_two VARCHAR(255) NOT NULL DEFAULT '',,
  city VARCHAR(255) NOT NULL DEFAULT '',
  state VARCHAR(255) NOT NULL DEFAULT '',
  zip VARCHAR(255) NOT NULL DEFAULT '',
  shipping TINYINT(1) DEFAULT 0,
  PRIMARY KEY  (`id`)
)
  COMMENT='Shipping Table';

--
-- Table structure for table `galatic_location`
--
CREATE TABLE IF NOT EXISTS galatic_location (
  id CHAR(36) NOT NULL,
  address_id CHAR(36),
  name VARCHAR(255) NOT NULL DEFAULT '',
  description VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`id`)
)
  COMMENT='Locations';






