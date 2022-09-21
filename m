Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA845BF3C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 04:50:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C356240432;
	Wed, 21 Sep 2022 02:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C356240432
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663728625;
	bh=wfePesxQ5jPMyURyw81+yPLDTxQO64MI2p1eaOPtEQo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UgBiUsUNp4pQ4z/oafpptm3/yVfd/8h9X+z0G/zUUGzVfZNA0asX1HZzg9Pijp9us
	 DHcKGFvqTAU/PjdolSOIvA9uauI2LL8LPRn9+g1eKnIrWguNpYgne+dct2ovThGTgm
	 cjIBVGeGUl7OFz1hahRXBYk7jwhCiJ351uIZws1uCihfObaR6nvA4Ot9e2zyCkPmTn
	 K2uAQSsiKbeX+VDrjDj7+jmNJd1I+kYWPUg7T6LtxZzNm4nudR6EUrfpRkhMeZcNDz
	 J/enGoVbRqbuxfoNRRhOWDJUKKbDnY54FfX7M4+NWeu9bdGbocEiIPwHl69Z9SCJAr
	 cZnkTu/c6JnCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L5PdcJO1jO_m; Wed, 21 Sep 2022 02:50:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BFB240160;
	Wed, 21 Sep 2022 02:50:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BFB240160
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 226651BF5DA
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 02:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEE148284B
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 02:50:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEE148284B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmnAb1wk24oD for <intel-wired-lan@osuosl.org>;
 Wed, 21 Sep 2022 02:50:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1ACBB82681
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1ACBB82681
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 02:50:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="297477143"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="297477143"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 19:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="652348609"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga001.jf.intel.com with ESMTP; 20 Sep 2022 19:50:16 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 21 Sep 2022 10:49:40 +0800
Message-Id: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663728619; x=1695264619;
 h=from:to:cc:subject:date:message-id;
 bh=CSCSkwxzHAPECNestGiF/2FWNl25WRwyITwSK53V9E0=;
 b=JuMd6UncwLAzSCGQh9Q/3FJJo6kdzxaWg2JzIXBJtVsyDbfvXprLWUjP
 W/MSnneTgIsbC4T1rKT6n4p5VLnKoZg+3yE+V8jOCCn17XilQrOqkpbbF
 SuBg/Shxxc2fT6iXKrkHLAuxUJy5KMvij+OH4SsVRq2nmBBfGC1j+Tfhg
 P3qtqL+8wt96WUz4hOk+6QwWQCMqjci1PXy80hq6QwrQ7jxj+Z1Ic2k7L
 XTMvy/vSXADkIWcMbXjv0u+Xk9/rkjTOu0T8C/bfh1r+l/fMrjF1QHVgX
 jrhM4NlqBBcp2h0HmRG9WbKBVp2Lxy36aZZMKhcwHJqeCPZVs6PJXSXCG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JuMd6Unc
Subject: [Intel-wired-lan] [PATCH v3] igc: Correct the launchtime offset
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
Cc: pmenzel@molgen.mpg.de, muhammad.husaini.zulkifli@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The launchtime offset should be corrected according to sections 7.5.2.6
Transmit Scheduling Latency of the Intel Ethernet I225/I226 Software
User Manual.

Software can compensate the latency between the transmission scheduling
and the time that packet is transmitted to the network by setting this
GTxOffset register. Without setting this register, there may be a
significant delay between the packet scheduling and the network point.

This patch helps to reduce the latency for each of the link speed.

Before:

10Mbps   : 11000 - 13800 nanosecond
100Mbps  : 1300 - 1700 nanosecond
1000Mbps : 190 - 600 nanosecond
2500Mbps : 1400 - 1700 nanosecond

After:

10Mbps   : less than 750 nanosecond
100Mbps  : less than 192 nanosecond
1000Mbps : less than 128 nanosecond
2500Mbps : less than 128 nanosecond

Test Setup:

Talker : Use l2_tai.c to generate the launchtime into packet payload.
Listener: Use timedump.c to compute the delta between packet arrival and
LaunchTime packet payload.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  9 ++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 30 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  1 +
 5 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 4f9d7f013a95..f7311aeb293b 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -400,6 +400,15 @@
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
 
+/* Transmit Scheduling Latency */
+/* Latency between transmission scheduling (LaunchTime) and the time
+ * the packet is transmitted to the network in nanosecond.
+ */
+#define IGC_TXOFFSET_SPEED_10	0x000034BC
+#define IGC_TXOFFSET_SPEED_100	0x00000578
+#define IGC_TXOFFSET_SPEED_1000	0x0000012C
+#define IGC_TXOFFSET_SPEED_2500	0x00000578
+
 /* Time Sync Interrupt Causes */
 #define IGC_TSICR_SYS_WRAP	BIT(0) /* SYSTIM Wrap around. */
 #define IGC_TSICR_TXTS		BIT(1) /* Transmit Timestamp. */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bf6c461e1a2a..97b9edb5153e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5382,6 +5382,12 @@ static void igc_watchdog_task(struct work_struct *work)
 				break;
 			}
 
+			/* Once the launch time has been set on the wire, there is a delay
+			 * before the link speed can be determined based on link-up activity.
+			 * Write into the register as soon as we know the correct link speed.
+			 */
+			igc_tsn_adjust_txtime_offset(adapter);
+
 			if (adapter->link_speed != SPEED_1000)
 				goto no_wait;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index c0d8214148d1..01c86d36856d 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -224,6 +224,7 @@
 /* Transmit Scheduling Registers */
 #define IGC_TQAVCTRL		0x3570
 #define IGC_TXQCTL(_n)		(0x3344 + 0x4 * (_n))
+#define IGC_GTXOFFSET		0x3310
 #define IGC_BASET_L		0x3314
 #define IGC_BASET_H		0x3318
 #define IGC_QBVCYCLET		0x331C
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 0fce22de2ab8..f975ed807da1 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -48,6 +48,35 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 	return new_flags;
 }
 
+void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u16 txoffset;
+
+	if (!is_any_launchtime(adapter))
+		return;
+
+	switch (adapter->link_speed) {
+	case SPEED_10:
+		txoffset = IGC_TXOFFSET_SPEED_10;
+		break;
+	case SPEED_100:
+		txoffset = IGC_TXOFFSET_SPEED_100;
+		break;
+	case SPEED_1000:
+		txoffset = IGC_TXOFFSET_SPEED_1000;
+		break;
+	case SPEED_2500:
+		txoffset = IGC_TXOFFSET_SPEED_2500;
+		break;
+	default:
+		txoffset = 0;
+		break;
+	}
+
+	wr32(IGC_GTXOFFSET, txoffset);
+}
+
 /* Returns the TSN specific registers to their default values after
  * the adapter is reset.
  */
@@ -57,6 +86,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	u32 tqavctrl;
 	int i;
 
+	wr32(IGC_GTXOFFSET, 0);
 	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index 1512307f5a52..b53e6af560b7 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -6,5 +6,6 @@
 
 int igc_tsn_offload_apply(struct igc_adapter *adapter);
 int igc_tsn_reset(struct igc_adapter *adapter);
+void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
 
 #endif /* _IGC_BASE_H */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
