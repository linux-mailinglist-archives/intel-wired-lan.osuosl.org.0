Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD74217BE2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 01:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D0A9894D7;
	Tue,  7 Jul 2020 23:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1PXQR9HXiXW; Tue,  7 Jul 2020 23:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C559894D6;
	Tue,  7 Jul 2020 23:48:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69F601BF97A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 65B458895B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qgMll3mNZq15 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AB3D389494
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
IronPort-SDR: B47lKfkIHfe3gpwcV7Wy1Q9TOU0YQHMBRWAz6WgeBbROtD8pzwm91yPjjxNvJuUDjQPH89TZLW
 CgIxpOXoyygQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="146778434"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="146778434"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 16:48:11 -0700
IronPort-SDR: 2BLrbMYMrN2XU1vBf/zl78CliZqYmYrShYOlrBfH/0HX4H//uRPDSqSCZUxN89yQnnCkqf4PDl
 sfAxLJI6NuAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="483684036"
Received: from vapadgao-mobl.amr.corp.intel.com ([10.251.143.88])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2020 16:48:11 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Jul 2020 16:48:00 -0700
Message-Id: <20200707234800.39119-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200707234800.39119-1-andre.guedes@intel.com>
References: <20200707234800.39119-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ethtool 4/4] igc: Parse ETQF registers
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

This patch adds support for parsing the EType Queue Filter (ETQF)
registers fields.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 igc.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/igc.c b/igc.c
index 6a2e06d..9c0a750 100644
--- a/igc.c
+++ b/igc.c
@@ -59,6 +59,14 @@
 #define VLANPQF_VP7QSEL				0x30000000
 #define VLANPQF_VP7PBSEL			0x40000000
 #define VLANPQF_VLANP7V				0x80000000
+#define ETQF_ETYPE				0x0000FFFF
+#define ETQF_QUEUE				0x00070000
+#define ETQF_ETYPE_LEN				0x01F00000
+#define ETQF_ETYPE_LEN_EN			0x02000000
+#define ETQF_FILTER_EN				0x04000000
+#define ETQF_IMMEDIATE_INTR			0x20000000
+#define ETQF_1588_TIMESTAMP			0x40000000
+#define ETQF_QUEUE_EN				0x80000000
 
 #define RAH_QSEL_SHIFT				18
 #define VLANPQF_VP1QSEL_SHIFT			4
@@ -68,6 +76,8 @@
 #define VLANPQF_VP5QSEL_SHIFT			20
 #define VLANPQF_VP6QSEL_SHIFT			24
 #define VLANPQF_VP7QSEL_SHIFT			28
+#define ETQF_QUEUE_SHIFT			16
+#define ETQF_ETYPE_LEN_SHIFT			20
 
 static const char *bit_to_boolean(u32 val)
 {
@@ -245,5 +255,29 @@ int igc_dump_regs(struct ethtool_drvinfo *info, struct ethtool_regs *regs)
 	       bit_to_prio(reg & VLANPQF_VP7PBSEL),
 	       bit_to_boolean(reg & VLANPQF_VLANP7V));
 
+	offset = 205;
+
+	for (i = 0; i < 8; i++) {
+		reg = regs_buff[offset + i];
+		printf("%04d: ETQF (EType Queue Filter %d)                 \n"
+		       "    EType:                                     %04X\n"
+		       "    EType Length:                              %d\n"
+		       "    EType Length Enable:                       %s\n"
+		       "    Queue:                                     %d\n"
+		       "    Queue Enable:                              %s\n"
+		       "    Immediate Interrupt:                       %s\n"
+		       "    1588 Time Stamp:                           %s\n"
+		       "    Filter Enable:                             %s\n",
+		       offset + i, i,
+		       reg & ETQF_ETYPE,
+		       (reg & ETQF_ETYPE_LEN) >> ETQF_ETYPE_LEN_SHIFT,
+		       bit_to_boolean(reg & ETQF_ETYPE_LEN_EN),
+		       (reg & ETQF_QUEUE) >> ETQF_QUEUE_SHIFT,
+		       bit_to_boolean(reg & ETQF_QUEUE_EN),
+		       bit_to_enable(reg & ETQF_IMMEDIATE_INTR),
+		       bit_to_enable(reg & ETQF_1588_TIMESTAMP),
+		       bit_to_boolean(reg & ETQF_FILTER_EN));
+	}
+
 	return 0;
 }
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
