Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A46F9023
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2019 14:03:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 147962035E;
	Tue, 12 Nov 2019 13:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2WB037g2SdUn; Tue, 12 Nov 2019 13:03:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 95FB720397;
	Tue, 12 Nov 2019 13:03:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7E981BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 13:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9C3ED860ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 13:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e2hGfI+n79Un for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2019 13:03:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C18586072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 13:03:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 05:03:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="198071057"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga008.jf.intel.com with ESMTP; 12 Nov 2019 05:03:42 -0800
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 12 Nov 2019 13:03:41 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.40]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.227]) with mapi id 14.03.0439.000;
 Tue, 12 Nov 2019 13:03:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Michael, Alice" <alice.michael@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [e1000-patches] [PATCH] igb: read flash with iomem=strict
Thread-Index: AdWZWSjrQqOLFIcHSR+WSfDHQRCkZg==
Date: Tue, 12 Nov 2019 13:03:40 +0000
Message-ID: <0EF347314CF65544BA015993979A29CDB4ED9024@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjA0ZjYxMWUtZjRiNy00YTQ5LWExM2EtNDcyMmM1ZmFlYTFmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaXIzKzNSUEhNbFU1QTdjUklxeEhMV0tzY3RcL1Y1VkZYWmlTcmFWV2lzcndqaFdNeGZseTh3YTBsNVlIajZ6K1AifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: [Intel-wired-lan] [e1000-patches] [PATCH] igb: read flash with
 iomem=strict
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
Cc: "Ludkiewicz, Adam" <adam.ludkiewicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When Secure Boot is enabled access to the /dev/mem is forbidden for user-space applications and clients are reporting inability to use tools in Secure Boot Mode. The way to perform NVM update is to use igb driver.
Currently 1G Linux Base Driver has API which allows only EEPROM access.
There is a need to extend IOCTL API to allow NVM and registers access.
These defines are necessary for NVM access functions.

Signed-off-by: Adam Ludkiewicz <adam.ludkiewicz@intel.com>
---

diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
index d2e2c50..68dee6a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
@@ -481,6 +481,7 @@
 #define E1000_RAH_POOL_1 0x00040000
 
 /* Error Codes */
+#define E1000_SUCCESS      0
 #define E1000_ERR_NVM      1
 #define E1000_ERR_PHY      2
 #define E1000_ERR_CONFIG   3
@@ -800,6 +801,37 @@
 #define NVM_ETS_DATA_INDEX_SHIFT	8
 #define NVM_ETS_DATA_HTHRESH_MASK	0x00FF
 
+#define E1000_REGISTER_SET_SIZE		0x20000 /* CSR Size */
+#define E1000_FLA	0x0001C  /* Flash Access - RW */
+#define E1000_FLOP	0x0103C  /* FLASH Opcode Register */
+#define E1000_I350_BARCTRL		0x5BFC /* BAR ctrl reg */
+#define E1000_I350_DTXMXPKTSZ		0x355C /* Maximum sent packet size reg*/
+
+#define E1000_SRWR		0x12018
+#define E1000_EEC_REG		0x12010
+
+#define E1000_SHADOWINF		0x12068
+#define E1000_FLFWUPDATE	0x12108
+
+/* os dep */
+#define E1000_READ_FLASH_REG(a, reg) (readl((a)->flash_address + 
+(reg)))
+
+#define E1000_READ_FLASH_REG8(a, reg) ( \
+	readb(READ_ONCE((a)->flash_address) + (reg)))
+
+#define E1000_WRITE_FLASH_REG(a, reg, value) ( \
+	writel((value), ((a)->flash_address + (reg))))
+
+#define E1000_READ_REG(x, y) igb_rd32(x, y) #define E1000_READ_REG8(h, 
+r) readb(READ_ONCE((h)->hw_addr) + (r))
+
+#define E1000_WRITE_REG(hw, reg, val) \ do { \
+	u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
+	if (!E1000_REMOVED(hw_addr)) \
+		writel((val), &hw_addr[(reg)]); \
+} while (0)
+
 #define E1000_NVM_CFG_DONE_PORT_0  0x040000 /* MNG config cycle done */  #define E1000_NVM_CFG_DONE_PORT_1  0x080000 /* ...for second port */  #define E1000_NVM_CFG_DONE_PORT_2  0x100000 /* ...for third port */
--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by
others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
