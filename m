Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C04036B92DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 13:13:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6004941882;
	Tue, 14 Mar 2023 12:13:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6004941882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678796018;
	bh=unfkVfIAldTQA4NBWbP4kuEjxjf7T2biySzg2MdwTYQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RaA7X7WG2QKq0eFNHiKVZ0lULwsJUdBOvrKqXDV7Syx8jrEGXxRCJPYlL5BNTzUPg
	 kNwyYkNWVRlVMYui1n1mEUQVOTsQjpyjNXVuQeUM7x3IzEkT48Tbbz3P2XgWLOCM0i
	 HLdhE7FUnh8tgoyw/BkhQiAvZM3ipI+I4sMaHP7rTpmat5JFUjEljcYoUwu+OxTMkC
	 aetLKtu2vhX2P8yNuWgqqi8Q81vqI6fUhmd/krwVq2k/aIAHuxD5zToraugzyXqtxr
	 j12/5FoO1AETIlZRptR7n6yvjkjn1lZhrpaExa1DpLgdBxU6EQsu0rL64Ic84liun8
	 2bGDN7d5csssg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GvMi2v54eoxV; Tue, 14 Mar 2023 12:13:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 895514187B;
	Tue, 14 Mar 2023 12:13:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 895514187B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 252971BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 12:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF1B341877
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 12:13:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF1B341877
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WiNwiIX6VwvE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 12:13:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF9BA4187B
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF9BA4187B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 12:13:28 +0000 (UTC)
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 32EBC7WD013154; Tue, 14 Mar 2023 12:12:46 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3paqu91m2a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Mar 2023 12:12:45 +0000
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 32EBC0rq012223;
 Tue, 14 Mar 2023 12:12:45 GMT
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.107])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3paqu91m0t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Mar 2023 12:12:44 +0000
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
 by ppma03fra.de.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 32E8vTca013644;
 Tue, 14 Mar 2023 12:12:42 GMT
Received: from smtprelay03.fra02v.mail.ibm.com ([9.218.2.224])
 by ppma03fra.de.ibm.com (PPS) with ESMTPS id 3p8h96bsgh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Mar 2023 12:12:42 +0000
Received: from smtpav05.fra02v.mail.ibm.com (smtpav05.fra02v.mail.ibm.com
 [10.20.54.104])
 by smtprelay03.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 32ECCdKD29950664
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Mar 2023 12:12:39 GMT
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 92B6720080;
 Tue, 14 Mar 2023 12:12:39 +0000 (GMT)
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D2C5D2007A;
 Tue, 14 Mar 2023 12:12:38 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by smtpav05.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 14 Mar 2023 12:12:38 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>, Ralf Baechle <ralf@linux-mips.org>
Date: Tue, 14 Mar 2023 13:11:58 +0100
Message-Id: <20230314121216.413434-21-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230314121216.413434-1-schnelle@linux.ibm.com>
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: RDcYd4HdLr-RCELWHZr1DfNkznTBDiOs
X-Proofpoint-GUID: wvwDSIeVayuWTRUNyzgYqIly_xoGuCKW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-14_04,2023-03-14_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 mlxlogscore=999
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303140103
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=Rdo7qHjLu7RlQxuSnXnEeLTmgkFNbRweTxvYtXJOPjw=;
 b=hHa50onhAcSsoGzqY5BQwUrt6BUiy+h5EVNf9kF8FhpptC7qQwovg5w6VIOw0455YGcU
 sW6pNTlICcg5cmk4fChXbLT+mmGWZ0WIFXjU7DlIK/kLNTkiiaAkLKAYpd2pkYalQdnu
 /wafBQlFqlpW1DXX92hGRlpUBU+3gK+rRaSlJi1D90MBbgASSAHYVWYc9TWMIHoD4zft
 EyB0i15kChFQL1TfuQIcYMvzkXQIE5W/NGELxcaFg3w5UZGJQam7WEzN6L75soxxYyXI
 H0EX6tlWQGqAi1wQR3BEoSkLStFRriRzthx1/b9PjJr/GUFd5XEjHp5g94mPrifLGGon pA== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=hHa50onh
Subject: [Intel-wired-lan] [PATCH v3 20/38] net: handle HAS_IOPORT
 dependencies
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, linux-hams@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
not being declared. We thus need to add HAS_IOPORT as dependency for
those drivers requiring them. For the DEFXX driver there use of I/O
ports is optional and we only need to fence those paths.can It also
turns out that with HAS_IOPORT handled explicitly HAMRADIO does not need
the !S390 dependency and successfully builds the bpqether driver.

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
Co-developed-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 drivers/net/Kconfig                  | 2 +-
 drivers/net/arcnet/Kconfig           | 2 +-
 drivers/net/can/cc770/Kconfig        | 1 +
 drivers/net/can/sja1000/Kconfig      | 1 +
 drivers/net/ethernet/3com/Kconfig    | 4 ++--
 drivers/net/ethernet/8390/Kconfig    | 6 +++---
 drivers/net/ethernet/amd/Kconfig     | 4 ++--
 drivers/net/ethernet/fujitsu/Kconfig | 2 +-
 drivers/net/ethernet/intel/Kconfig   | 2 +-
 drivers/net/ethernet/sis/Kconfig     | 4 ++--
 drivers/net/ethernet/smsc/Kconfig    | 2 +-
 drivers/net/ethernet/ti/Kconfig      | 2 +-
 drivers/net/ethernet/via/Kconfig     | 1 +
 drivers/net/ethernet/xircom/Kconfig  | 2 +-
 drivers/net/fddi/Kconfig             | 2 +-
 drivers/net/fddi/defxx.c             | 2 +-
 drivers/net/hamradio/Kconfig         | 6 +++---
 drivers/net/wan/Kconfig              | 2 +-
 net/ax25/Kconfig                     | 2 +-
 19 files changed, 26 insertions(+), 23 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index c34bd432da27..170387314f1b 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -474,7 +474,7 @@ source "drivers/net/ipa/Kconfig"
 
 config NET_SB1000
 	tristate "General Instruments Surfboard 1000"
-	depends on PNP
+	depends on ISA && PNP
 	help
 	  This is a driver for the General Instrument (also known as
 	  NextLevel) SURFboard 1000 internal
diff --git a/drivers/net/arcnet/Kconfig b/drivers/net/arcnet/Kconfig
index a51b9dab6d3a..d1d07a1d4fbc 100644
--- a/drivers/net/arcnet/Kconfig
+++ b/drivers/net/arcnet/Kconfig
@@ -4,7 +4,7 @@
 #
 
 menuconfig ARCNET
-	depends on NETDEVICES && (ISA || PCI || PCMCIA)
+	depends on NETDEVICES && (ISA || PCI || PCMCIA) && HAS_IOPORT
 	tristate "ARCnet support"
 	help
 	  If you have a network card of this type, say Y and check out the
diff --git a/drivers/net/can/cc770/Kconfig b/drivers/net/can/cc770/Kconfig
index 9ef1359319f0..467ef19de1c1 100644
--- a/drivers/net/can/cc770/Kconfig
+++ b/drivers/net/can/cc770/Kconfig
@@ -7,6 +7,7 @@ if CAN_CC770
 
 config CAN_CC770_ISA
 	tristate "ISA Bus based legacy CC770 driver"
+	depends on ISA
 	help
 	  This driver adds legacy support for CC770 and AN82527 chips
 	  connected to the ISA bus using I/O port, memory mapped or
diff --git a/drivers/net/can/sja1000/Kconfig b/drivers/net/can/sja1000/Kconfig
index 4b2f9cb17fc3..01168db4c106 100644
--- a/drivers/net/can/sja1000/Kconfig
+++ b/drivers/net/can/sja1000/Kconfig
@@ -87,6 +87,7 @@ config CAN_PLX_PCI
 
 config CAN_SJA1000_ISA
 	tristate "ISA Bus based legacy SJA1000 driver"
+	depends on ISA
 	help
 	  This driver adds legacy support for SJA1000 chips connected to
 	  the ISA bus using I/O port, memory mapped or indirect access.
diff --git a/drivers/net/ethernet/3com/Kconfig b/drivers/net/ethernet/3com/Kconfig
index 706bd59bf645..1fbab79e2be4 100644
--- a/drivers/net/ethernet/3com/Kconfig
+++ b/drivers/net/ethernet/3com/Kconfig
@@ -44,7 +44,7 @@ config 3C515
 
 config PCMCIA_3C574
 	tristate "3Com 3c574 PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	help
 	  Say Y here if you intend to attach a 3Com 3c574 or compatible PCMCIA
 	  (PC-card) Fast Ethernet card to your computer.
@@ -54,7 +54,7 @@ config PCMCIA_3C574
 
 config PCMCIA_3C589
 	tristate "3Com 3c589 PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	help
 	  Say Y here if you intend to attach a 3Com 3c589 or compatible PCMCIA
 	  (PC-card) Ethernet card to your computer.
diff --git a/drivers/net/ethernet/8390/Kconfig b/drivers/net/ethernet/8390/Kconfig
index a4130e643342..345f250781c6 100644
--- a/drivers/net/ethernet/8390/Kconfig
+++ b/drivers/net/ethernet/8390/Kconfig
@@ -19,7 +19,7 @@ if NET_VENDOR_8390
 
 config PCMCIA_AXNET
 	tristate "Asix AX88190 PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	help
 	  Say Y here if you intend to attach an Asix AX88190-based PCMCIA
 	  (PC-card) Fast Ethernet card to your computer.  These cards are
@@ -117,7 +117,7 @@ config NE2000
 
 config NE2K_PCI
 	tristate "PCI NE2000 and clones support (see help)"
-	depends on PCI
+	depends on PCI && HAS_IOPORT
 	select CRC32
 	help
 	  This driver is for NE2000 compatible PCI cards. It will not work
@@ -146,7 +146,7 @@ config APNE
 
 config PCMCIA_PCNET
 	tristate "NE2000 compatible PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	select CRC32
 	help
 	  Say Y here if you intend to attach an NE2000 compatible PCMCIA
diff --git a/drivers/net/ethernet/amd/Kconfig b/drivers/net/ethernet/amd/Kconfig
index ab42f75b9413..2f19b4a24d53 100644
--- a/drivers/net/ethernet/amd/Kconfig
+++ b/drivers/net/ethernet/amd/Kconfig
@@ -56,7 +56,7 @@ config LANCE
 
 config PCNET32
 	tristate "AMD PCnet32 PCI support"
-	depends on PCI
+	depends on PCI && HAS_IOPORT
 	select CRC32
 	select MII
 	help
@@ -122,7 +122,7 @@ config MVME147_NET
 
 config PCMCIA_NMCLAN
 	tristate "New Media PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	help
 	  Say Y here if you intend to attach a New Media Ethernet or LiveWire
 	  PCMCIA (PC-card) Ethernet card to your computer.
diff --git a/drivers/net/ethernet/fujitsu/Kconfig b/drivers/net/ethernet/fujitsu/Kconfig
index 0a1400cb410a..06a28bce5d27 100644
--- a/drivers/net/ethernet/fujitsu/Kconfig
+++ b/drivers/net/ethernet/fujitsu/Kconfig
@@ -18,7 +18,7 @@ if NET_VENDOR_FUJITSU
 
 config PCMCIA_FMVJ18X
 	tristate "Fujitsu FMV-J18x PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	select CRC32
 	help
 	  Say Y here if you intend to attach a Fujitsu FMV-J18x or compatible
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index c18c3b373846..bfb182310135 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -41,7 +41,7 @@ config E100
 
 config E1000
 	tristate "Intel(R) PRO/1000 Gigabit Ethernet support"
-	depends on PCI
+	depends on PCI && HAS_IOPORT
 	help
 	  This driver supports Intel(R) PRO/1000 gigabit ethernet family of
 	  adapters.  For more information on how to identify your adapter, go
diff --git a/drivers/net/ethernet/sis/Kconfig b/drivers/net/ethernet/sis/Kconfig
index 775d76d9890e..7e498bdbca73 100644
--- a/drivers/net/ethernet/sis/Kconfig
+++ b/drivers/net/ethernet/sis/Kconfig
@@ -19,7 +19,7 @@ if NET_VENDOR_SIS
 
 config SIS900
 	tristate "SiS 900/7016 PCI Fast Ethernet Adapter support"
-	depends on PCI
+	depends on PCI && HAS_IOPORT
 	select CRC32
 	select MII
 	help
@@ -35,7 +35,7 @@ config SIS900
 
 config SIS190
 	tristate "SiS190/SiS191 gigabit ethernet support"
-	depends on PCI
+	depends on PCI && HAS_IOPORT
 	select CRC32
 	select MII
 	help
diff --git a/drivers/net/ethernet/smsc/Kconfig b/drivers/net/ethernet/smsc/Kconfig
index 5f22a8a4d27b..13ce9086a9ca 100644
--- a/drivers/net/ethernet/smsc/Kconfig
+++ b/drivers/net/ethernet/smsc/Kconfig
@@ -54,7 +54,7 @@ config SMC91X
 
 config PCMCIA_SMC91C92
 	tristate "SMC 91Cxx PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	select CRC32
 	select MII
 	help
diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index fce06663e1e1..20068acce9fe 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -161,7 +161,7 @@ config TI_KEYSTONE_NETCP_ETHSS
 
 config TLAN
 	tristate "TI ThunderLAN support"
-	depends on (PCI || EISA)
+	depends on (PCI || EISA) && HAS_IOPORT
 	help
 	  If you have a PCI Ethernet network card based on the ThunderLAN chip
 	  which is supported by this driver, say Y here.
diff --git a/drivers/net/ethernet/via/Kconfig b/drivers/net/ethernet/via/Kconfig
index da287ef65be7..00773f5e4d7e 100644
--- a/drivers/net/ethernet/via/Kconfig
+++ b/drivers/net/ethernet/via/Kconfig
@@ -20,6 +20,7 @@ config VIA_RHINE
 	tristate "VIA Rhine support"
 	depends on PCI || (OF_IRQ && GENERIC_PCI_IOMAP)
 	depends on PCI || ARCH_VT8500 || COMPILE_TEST
+	depends on HAS_IOPORT
 	depends on HAS_DMA
 	select CRC32
 	select MII
diff --git a/drivers/net/ethernet/xircom/Kconfig b/drivers/net/ethernet/xircom/Kconfig
index 7497b9bea511..bfbdcf758afb 100644
--- a/drivers/net/ethernet/xircom/Kconfig
+++ b/drivers/net/ethernet/xircom/Kconfig
@@ -19,7 +19,7 @@ if NET_VENDOR_XIRCOM
 
 config PCMCIA_XIRC2PS
 	tristate "Xircom 16-bit PCMCIA support"
-	depends on PCMCIA
+	depends on PCMCIA && HAS_IOPORT
 	help
 	  Say Y here if you intend to attach a Xircom 16-bit PCMCIA (PC-card)
 	  Ethernet or Fast Ethernet card to your computer.
diff --git a/drivers/net/fddi/Kconfig b/drivers/net/fddi/Kconfig
index 846bf41c2717..fa3f1e0fe143 100644
--- a/drivers/net/fddi/Kconfig
+++ b/drivers/net/fddi/Kconfig
@@ -29,7 +29,7 @@ config DEFZA
 
 config DEFXX
 	tristate "Digital DEFTA/DEFEA/DEFPA adapter support"
-	depends on FDDI && (PCI || EISA || TC)
+	depends on FDDI && (PCI || EISA || TC) && HAS_IOPORT
 	help
 	  This is support for the DIGITAL series of TURBOchannel (DEFTA),
 	  EISA (DEFEA) and PCI (DEFPA) controllers which can connect you
diff --git a/drivers/net/fddi/defxx.c b/drivers/net/fddi/defxx.c
index 1fef8a9b1a0f..5f386eba9618 100644
--- a/drivers/net/fddi/defxx.c
+++ b/drivers/net/fddi/defxx.c
@@ -254,7 +254,7 @@ static const char version[] =
 #define DFX_BUS_TC(dev) 0
 #endif
 
-#if defined(CONFIG_EISA) || defined(CONFIG_PCI)
+#ifdef HAS_IOPORT
 #define dfx_use_mmio bp->mmio
 #else
 #define dfx_use_mmio true
diff --git a/drivers/net/hamradio/Kconfig b/drivers/net/hamradio/Kconfig
index a9c44f08199d..0ac87b90b01e 100644
--- a/drivers/net/hamradio/Kconfig
+++ b/drivers/net/hamradio/Kconfig
@@ -83,7 +83,7 @@ config SCC_TRXECHO
 
 config BAYCOM_SER_FDX
 	tristate "BAYCOM ser12 fullduplex driver for AX.25"
-	depends on AX25 && !S390
+	depends on AX25 && HAS_IOPORT
 	select CRC_CCITT
 	help
 	  This is one of two drivers for Baycom style simple amateur radio
@@ -103,7 +103,7 @@ config BAYCOM_SER_FDX
 
 config BAYCOM_SER_HDX
 	tristate "BAYCOM ser12 halfduplex driver for AX.25"
-	depends on AX25 && !S390
+	depends on AX25 && HAS_IOPORT
 	select CRC_CCITT
 	help
 	  This is one of two drivers for Baycom style simple amateur radio
@@ -151,7 +151,7 @@ config BAYCOM_EPP
 
 config YAM
 	tristate "YAM driver for AX.25"
-	depends on AX25 && !S390
+	depends on AX25 && HAS_IOPORT
 	help
 	  The YAM is a modem for packet radio which connects to the serial
 	  port and includes some of the functions of a Terminal Node
diff --git a/drivers/net/wan/Kconfig b/drivers/net/wan/Kconfig
index dcb069dde66b..417e2c2d349d 100644
--- a/drivers/net/wan/Kconfig
+++ b/drivers/net/wan/Kconfig
@@ -178,7 +178,7 @@ config C101
 
 config FARSYNC
 	tristate "FarSync T-Series support"
-	depends on HDLC && PCI
+	depends on HDLC && PCI && HAS_IOPORT
 	help
 	  Support for the FarSync T-Series X.21 (and V.35/V.24) cards by
 	  FarSite Communications Ltd.
diff --git a/net/ax25/Kconfig b/net/ax25/Kconfig
index d3a9843a043d..f769e8f4bd02 100644
--- a/net/ax25/Kconfig
+++ b/net/ax25/Kconfig
@@ -4,7 +4,7 @@
 #
 
 menuconfig HAMRADIO
-	depends on NET && !S390
+	depends on NET
 	bool "Amateur Radio support"
 	help
 	  If you want to connect your Linux box to an amateur radio, answer Y
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
