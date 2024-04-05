Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42186899BB7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 13:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC3D040AFD;
	Fri,  5 Apr 2024 11:18:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KgeJr7eYlhBv; Fri,  5 Apr 2024 11:18:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BF0B40B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712315934;
	bh=y0LU6CIkPpNU6xA+PTZzNEpure5X6gej72qFqBV1D20=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vut2a03EXhEt2tuazyQXbZkXRwGBr0aeikbgd7ggiOmQ3bWWRChkfLjf8gCwcFjTW
	 qstD1lCX6RR7523r7Ex9i4DAV2orPDKDLu75CO9OM6qEGaFQ20qPd3T3E4Os9MKokF
	 XHlplrEaa8OKmjTpgLjh8i+47QvepizsdyNeuRWE+70QhA91EKpRqmIy60GwcpqyTf
	 16zb5zEgfGphwSaAOQfCyq03HcEXQZdAHHWZwd3bRDy9f+NnijPIDId9UmeYUlPY5a
	 KKxzoSIZfpW2sfHmEyC1cBBku+0lAGsXUmQZ8M9L8zcrw264+3sHpeOuUGbY7Hnb/x
	 99GpRocgkNdJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BF0B40B58;
	Fri,  5 Apr 2024 11:18:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E87F1BF333
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 11:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B02940AFD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 11:18:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rt8_OcMd_8ZG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 11:18:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=schnelle@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 41EF340188
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41EF340188
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41EF340188
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 11:18:45 +0000 (UTC)
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 435AVuWR000631; Fri, 5 Apr 2024 11:18:40 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xaeakr8dg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Apr 2024 11:18:39 +0000
Received: from m0353724.ppops.net (m0353724.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 435BFZP2029550;
 Fri, 5 Apr 2024 11:18:39 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xaeakr8db-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Apr 2024 11:18:39 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 4359r2Bi009100; Fri, 5 Apr 2024 11:18:38 GMT
Received: from smtprelay07.fra02v.mail.ibm.com ([9.218.2.229])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3x9epy22kd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Apr 2024 11:18:38 +0000
Received: from smtpav01.fra02v.mail.ibm.com (smtpav01.fra02v.mail.ibm.com
 [10.20.54.100])
 by smtprelay07.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 435BIWoG50266600
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 5 Apr 2024 11:18:34 GMT
Received: from smtpav01.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B0B692004F;
 Fri,  5 Apr 2024 11:18:32 +0000 (GMT)
Received: from smtpav01.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 56D212005A;
 Fri,  5 Apr 2024 11:18:32 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by smtpav01.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Fri,  5 Apr 2024 11:18:32 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>
Date: Fri,  5 Apr 2024 13:18:31 +0200
Message-Id: <20240405111831.3881080-2-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240405111831.3881080-1-schnelle@linux.ibm.com>
References: <20240405111831.3881080-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: RjhKE1gq53wuWnpSjOfs6S1Tu_sQCDJp
X-Proofpoint-GUID: CptBld5yXKFHbap5VtUybL33TKqLcOoH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-05_10,2024-04-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 mlxscore=0 impostorscore=0 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404050081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=y0LU6CIkPpNU6xA+PTZzNEpure5X6gej72qFqBV1D20=;
 b=MeKmT5pU6TT475aBEMiFdSZRMZDB2bfpJl6gv1Kgp1uu2pZevuhdhuONOn5o3eVIcw0U
 wQXza84urhA4aCoLNTnf1/L9YYD0jGDn5PGkVx0X/x9snQDu50iuv8jx4Uy/rD6O26OF
 0TbD9GgmwBV+uEn2bZC50055yokSSntABPEknWRnDEvOz5u1Tj3fBdvNYalbTb01/6Lb
 yKmHG35Kwc6bW/gxlSUl+EI8Ik8dG6O/ki2yWOwN3C/gK2B1Vo6uBmXItcFW/eDriNXK
 P2kSiQLc2mCpKe2nkOxewJsgEeoVbML9KvKsDG4zz/nM7YlZ+Io++RnICTzP078/2ybk bA== 
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=MeKmT5pU
Subject: [Intel-wired-lan] [PATCH net-next 1/1] net: handle HAS_IOPORT
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Niklas Schnelle <schnelle@linux.ibm.com>, netdev@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-hams@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In a future patch HAS_IOPORT=n will disable inb()/outb() and friends at
compile time. We thus need to add HAS_IOPORT as dependency for
those drivers requiring them. For the DEFXX driver the use of I/O
ports is optional and we only need to fence specific code paths. It also
turns out that with HAS_IOPORT handled explicitly HAMRADIO does not need
the !S390 dependency and successfully builds the bpqether driver.

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
Acked-by: Jakub Kicinski <kuba@kernel.org>
Acked-by: Maciej W. Rozycki <macro@orcam.me.uk>
Co-developed-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
Note: This patch does not depend any not-yet-mainline HAS_IOPORT changes
and may be merged via subsystem specific trees at your earliest
convenience.

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
 drivers/net/fddi/defxx.c             | 2 +-
 drivers/net/hamradio/Kconfig         | 6 +++---
 drivers/net/wan/Kconfig              | 2 +-
 net/ax25/Kconfig                     | 2 +-
 18 files changed, 25 insertions(+), 22 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 8ca0bc223b30..82a1e77ce57a 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -507,7 +507,7 @@ source "drivers/net/ipa/Kconfig"
 
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
index f8cc8925161c..b39c6f3e1eda 100644
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
index 639fbb12bd35..6e7901e12699 100644
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
index 1530d13984d4..cfe9bd6b1d62 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -167,7 +167,7 @@ config TI_KEYSTONE_NETCP_ETHSS
 
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
diff --git a/drivers/net/fddi/defxx.c b/drivers/net/fddi/defxx.c
index 1fef8a9b1a0f..0fbbb7286008 100644
--- a/drivers/net/fddi/defxx.c
+++ b/drivers/net/fddi/defxx.c
@@ -254,7 +254,7 @@ static const char version[] =
 #define DFX_BUS_TC(dev) 0
 #endif
 
-#if defined(CONFIG_EISA) || defined(CONFIG_PCI)
+#ifdef CONFIG_HAS_IOPORT
 #define dfx_use_mmio bp->mmio
 #else
 #define dfx_use_mmio true
diff --git a/drivers/net/hamradio/Kconfig b/drivers/net/hamradio/Kconfig
index 25b1f929c422..36a9aade9f33 100644
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
@@ -150,7 +150,7 @@ config BAYCOM_EPP
 
 config YAM
 	tristate "YAM driver for AX.25"
-	depends on AX25 && !S390
+	depends on AX25 && HAS_IOPORT
 	help
 	  The YAM is a modem for packet radio which connects to the serial
 	  port and includes some of the functions of a Terminal Node
diff --git a/drivers/net/wan/Kconfig b/drivers/net/wan/Kconfig
index 31ab2136cdf1..67be9857c86c 100644
--- a/drivers/net/wan/Kconfig
+++ b/drivers/net/wan/Kconfig
@@ -180,7 +180,7 @@ config C101
 
 config FARSYNC
 	tristate "FarSync T-Series support"
-	depends on HDLC && PCI
+	depends on HDLC && PCI && HAS_IOPORT
 	help
 	  Support for the FarSync T-Series X.21 (and V.35/V.24) cards by
 	  FarSite Communications Ltd.
diff --git a/net/ax25/Kconfig b/net/ax25/Kconfig
index fdb666607f10..e23a3dc14b93 100644
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
2.40.1

