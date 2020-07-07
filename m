Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BEE217BE0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 01:48:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 591E287701;
	Tue,  7 Jul 2020 23:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K43-_hFk7DAy; Tue,  7 Jul 2020 23:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87A8587861;
	Tue,  7 Jul 2020 23:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F99D1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B67F8895B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vORGU+PrmIbZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E57A88B80
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
IronPort-SDR: LUwE02nViWOQfoby11r4q3qowaUY48YHcyri3EhmiWsqszBKxt/idzzoK4Tk/Owi3drRphC5cN
 jdTd9L8uMEtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="146778430"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="146778430"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 16:48:10 -0700
IronPort-SDR: pDs+cfnFDRI5S5B3cUZqr/gcmQXxp+tS8YaBCAplLRAKJgO2IvtgdUDQEmAju3uKsEr013v4zb
 1D9+IEjZo09A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="483684031"
Received: from vapadgao-mobl.amr.corp.intel.com ([10.251.143.88])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2020 16:48:10 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Jul 2020 16:47:57 -0700
Message-Id: <20200707234800.39119-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200707234800.39119-1-andre.guedes@intel.com>
References: <20200707234800.39119-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ethtool 1/4] Add IGC driver support
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds the initial support for parsing registers dumped by the
IGC driver. At this moment, only the Receive Address Low (RAL) and the
Receive Address High (RAH) registers are parsed. More registers will be
added on demand.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 Makefile.am |  3 ++-
 ethtool.c   |  1 +
 igc.c       | 62 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 internal.h  |  3 +++
 4 files changed, 68 insertions(+), 1 deletion(-)
 create mode 100644 igc.c

diff --git a/Makefile.am b/Makefile.am
index a736237..2abb274 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -16,7 +16,8 @@ ethtool_SOURCES += \
 		  pcnet32.c realtek.c tg3.c marvell.c vioc.c	\
 		  smsc911x.c at76c50x-usb.c sfc.c stmmac.c	\
 		  sff-common.c sff-common.h sfpid.c sfpdiag.c	\
-		  ixgbevf.c tse.c vmxnet3.c qsfp.c qsfp.h fjes.c lan78xx.c
+		  ixgbevf.c tse.c vmxnet3.c qsfp.c qsfp.h fjes.c lan78xx.c \
+		  igc.c
 endif
 
 if ENABLE_BASH_COMPLETION
diff --git a/ethtool.c b/ethtool.c
index 021f528..07006b0 100644
--- a/ethtool.c
+++ b/ethtool.c
@@ -1049,6 +1049,7 @@ static const struct {
 	{ "lan78xx", lan78xx_dump_regs },
 	{ "dsa", dsa_dump_regs },
 	{ "fec", fec_dump_regs },
+	{ "igc", igc_dump_regs },
 #endif
 };
 
diff --git a/igc.c b/igc.c
new file mode 100644
index 0000000..91ab64d
--- /dev/null
+++ b/igc.c
@@ -0,0 +1,62 @@
+/* Copyright (c) 2020 Intel Corporation */
+#include <stdio.h>
+#include "internal.h"
+
+#define RAH_RAH					0x0000FFFF
+#define RAH_ASEL				0x00010000
+#define RAH_QSEL				0x000C0000
+#define RAH_QSEL_EN				0x10000000
+#define RAH_AV					0x80000000
+
+#define RAH_QSEL_SHIFT				18
+
+static const char *bit_to_boolean(u32 val)
+{
+	return val ? "True" : "False";
+}
+
+int igc_dump_regs(struct ethtool_drvinfo *info, struct ethtool_regs *regs)
+{
+	u32 reg;
+	int offset, i;
+	u32 *regs_buff = (u32 *)regs->data;
+	u8 version = (u8)(regs->version >> 24);
+
+	if (version != 2)
+		return -1;
+
+	for (offset = 0; offset < 172; offset++) {
+		reg = regs_buff[offset];
+		printf("%04d: 0x%08X\n", offset, reg);
+	}
+
+	offset = 172;
+
+	for (i = 0; i < 16; i++) {
+		reg = regs_buff[offset + i];
+		printf("%04d: RAL (Receive Address Low %02d)               \n"
+		       "    Receive Address Low:                       %08X\n",
+		       offset + i, i,
+		       reg);
+	}
+
+	offset = 188;
+
+	for (i = 0; i < 16; i++) {
+		reg = regs_buff[offset + i];
+		printf("%04d: RAH (Receive Address High %02d)              \n"
+		       "    Receive Address High:                      %04X\n"
+		       "    Address Select:                            %s\n"
+		       "    Queue Select:                              %d\n"
+		       "    Queue Select Enable:                       %s\n"
+		       "    Address Valid:                             %s\n",
+		       offset + i, i,
+		       reg & RAH_RAH,
+		       reg & RAH_ASEL ? "Source" : "Destination",
+		       (reg & RAH_QSEL) >> RAH_QSEL_SHIFT,
+		       bit_to_boolean(reg & RAH_QSEL_EN),
+		       bit_to_boolean(reg & RAH_AV));
+	}
+
+	return 0;
+}
diff --git a/internal.h b/internal.h
index 45b63b7..1c6689a 100644
--- a/internal.h
+++ b/internal.h
@@ -393,4 +393,7 @@ int dsa_dump_regs(struct ethtool_drvinfo *info, struct ethtool_regs *regs);
 /* i.MX Fast Ethernet Controller */
 int fec_dump_regs(struct ethtool_drvinfo *info, struct ethtool_regs *regs);
 
+/* Intel(R) Ethernet Controller I225-LM/I225-V adapter family */
+int igc_dump_regs(struct ethtool_drvinfo *info, struct ethtool_regs *regs);
+
 #endif /* ETHTOOL_INTERNAL_H__ */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
