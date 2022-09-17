Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F16E5BB653
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Sep 2022 06:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 174D04018B;
	Sat, 17 Sep 2022 04:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 174D04018B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663390720;
	bh=2pM/q/oH4gVLdb8AUvZX0d2LKnFoBXw6sPiFSLYv0BQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eSUMV5EMmygLa120cqiJqSG96wldsDYB4VD/Rs/Xv9AuxfIpAtZA/ijWjgwXnOIXj
	 Z55JmUPTgwVVPSmk4VGlYqBUNJeUy7OBULHVqiTffa3iHU5WQC9MvAbipdvSb0ZvuE
	 Pit1pjXYHSRDJOcK0HTgeFIGLlE8tO9Zws3yVQtTb7f6JY8smaHVoT0aEPmzQjCNw8
	 yAcY2nd/btvhCV9LzaNkvRtv1zc95BOoyQbtwhSVyQKvINITrKuv4A3AdxH5wdANXM
	 eCjvB+L8m8rZGVS1hfbxayh2eWMNpsHouhto3BHrJEew5pSYYgUkUUllWkV0G3iRz/
	 WaPga3Rz6CBBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WmqSewGewhyu; Sat, 17 Sep 2022 04:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C95AA4018D;
	Sat, 17 Sep 2022 04:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C95AA4018D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC2DB1BF27A
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 04:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB3E960B45
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 04:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB3E960B45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KatEcOCYD8pJ for <intel-wired-lan@osuosl.org>;
 Sat, 17 Sep 2022 04:58:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6DCD60B24
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E6DCD60B24
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 04:58:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="325403400"
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="325403400"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 21:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="721663158"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga002.fm.intel.com with ESMTP; 16 Sep 2022 21:58:29 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat, 17 Sep 2022 12:58:01 +0800
Message-Id: <20220917045801.15555-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663390710; x=1694926710;
 h=from:to:cc:subject:date:message-id;
 bh=/GeOifkith/EBZkMw8C0vjtGRqDtNwCmH6a21Yc9Xno=;
 b=SPTA44RPGY6GT14NbVVyNBaQrY1qxCMjAzvZ39D4r11+xPkDsrEhhuPE
 rrQOIkxw5fjxdk9tOIyA2trjOjhzThbFt3s8a+IOcH3CgrECQ0kLcH4Up
 9JKZAvni8Ldm0a8z2Z7C4ZQkQJmu+Ecwp/D82z4KNzNKNSTg3yjs1tgi5
 TLTj/2dcWI0PFk+nou7/NUx4x89zOuZXIreWPEV1seNcCP8e/z93cduXU
 65Cqp6j4hb+MOnmDEkd+rGCqpgWvrXAlzI41dWejOGmhwOP7PQXB1zAwN
 kemCfCtaDkhcY7XE+UdTdRl+F6rqskpNzvCRuZQnDDJOE4Z6u/vzB0Jyo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SPTA44RP
Subject: [Intel-wired-lan] [PATCH v2] igc: Correct the launchtime offset
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

This patch help to reduce the latency for each of the link speed.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  6 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 30 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  1 +
 5 files changed, 44 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 4f9d7f013a95..46de1dc26ef0 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -400,6 +400,12 @@
 #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
 #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
 
+/* Transmit Scheduling Latency */
+#define IGC_TXOFFSET_SPEED_10	0x000034BC
+#define IGC_TXOFFSET_SPEED_100	0x00000578
+#define IGC_TXOFFSET_SPEED_1000	0x0000012C
+#define IGC_TXOFFSET_SPEED_2500	0x00000578
+
 /* Time Sync Interrupt Causes */
 #define IGC_TSICR_SYS_WRAP	BIT(0) /* SYSTIM Wrap around. */
 #define IGC_TSICR_TXTS		BIT(1) /* Transmit Timestamp. */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bf6c461e1a2a..70e0ae7f99d9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5382,6 +5382,12 @@ static void igc_watchdog_task(struct work_struct *work)
 				break;
 			}
 
+			/* Once the launch time has been set on the wire, there is a delay
+			 * before the link speed can be determined based on link up activity.
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
