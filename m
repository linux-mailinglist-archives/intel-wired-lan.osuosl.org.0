Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0996B64CE17
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 17:32:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96C2460D60;
	Wed, 14 Dec 2022 16:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96C2460D60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671035538;
	bh=6v7uKQpZS4tJ3axay5vzih9Gx4UJFpPf2C1pkBqjvqc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UmuwpqqO/2uLxq/1RbmlpK2gROmCbyMGGlqA7AEfVHnBXVvJgEqjgNx1R81Vo7hIs
	 EQUCgCFeUtoVPfWoZReoFebKw7Hrd9vzuDjIaWuw+4Ao2qRZoef7SX94boGnq6ebJ3
	 jiWoea14j7NnFro1fmlozXOyAFlffM5/dm2cpDO5+JlWm9HT0gpILDwUjuE17XP0Ls
	 3UELawcuxOzzUofRWB43vm+HGqyqydIf6UgRQk9fFzGCFp1yD8LAk4pr7syagOwMS+
	 eIiT2hjmMmrnLzODHdpKMk2iJiDFAjJ1f1+RCYDGr20MbcLk1xnZWGejqSfUhaZXf4
	 VeKEa2JVFrM+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GozwUOrwyFje; Wed, 14 Dec 2022 16:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F1CE60C19;
	Wed, 14 Dec 2022 16:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F1CE60C19
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA0931BF344
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3E704184E
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3E704184E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f2MFIDbLow83 for <intel-wired-lan@osuosl.org>;
 Wed, 14 Dec 2022 16:32:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8410241864
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8410241864
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="298795308"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="298795308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 08:31:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681557439"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681557439"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 08:31:57 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Thu, 15 Dec 2022 00:29:07 +0800
Message-Id: <20221214162909.22856-2-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
References: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671035527; x=1702571527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=GihgfX6jsPVvkEh/CB8DfXdZXFiVareFn7nb8M23Q3s=;
 b=E7MsN3ezXZMYj1zo9ZVYdAqKothFJyqMF+PH89trCUbsQMT+hCj4zdqG
 Z3VEga4ZP1L1uXhSxfHuN3Pvdzwgk+JkFUPqPgI67TrHks+FTt2rCFmvD
 eOx1ZW1UR1Gx+syLjcJPqWYowNF7QGSoRTG4VLSdEg3H0Aepd6eWeDX13
 FbCslhusKAEiGI8DZ6+n1Y+TKW0WRAKyMSTSdBr8x3AYw19EgNMXawOhi
 9fkVXigEYHyHE0toWlDOJUp6BzY61jJUY//BTK+sCvpz+zIIf0POOnLxF
 IRmEZITS6uso9pEOMBbbYv21gbboRhg6RDsYyaNnO8ozIYWvD1FkqHtSs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E7MsN3ez
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] igc: remove I226 Qbv
 BaseTime restriction
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
Cc: muhammad.husaini.zulkifli@intel.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the Qbv BaseTime restriction for I226 so that the BaseTime can be
scheduled to the future time. A new register bit of Tx Qav Control
(Bit-7: FutScdDis) was introduced to allow I226 scheduling future time as
Qbv BaseTime and not having the Tx hang timeout issue.

Besides, according to datasheet section 7.5.2.9.3.3, FutScdDis bit has to
be configured first before the cycle time and base time.

Indeed the FutScdDis bit is only active on re-configuration, thus we have
to set the BASET_L to zero and then only set it to the desired value.

Please also note that the Qbv configuration flow is moved around based on
the Qbv programming guideline that is documented in the latest datasheet.

Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c    | 29 +++++++++++++
 drivers/net/ethernet/intel/igc/igc_base.h    |  2 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  5 ++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 44 +++++++++++++-------
 5 files changed, 65 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index a15927e77272..a1d815af507d 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -396,6 +396,35 @@ void igc_rx_fifo_flush_base(struct igc_hw *hw)
 	rd32(IGC_MPC);
 }
 
+bool igc_is_device_id_i225(struct igc_hw *hw)
+{
+	switch (hw->device_id) {
+	case IGC_DEV_ID_I225_LM:
+	case IGC_DEV_ID_I225_V:
+	case IGC_DEV_ID_I225_I:
+	case IGC_DEV_ID_I225_K:
+	case IGC_DEV_ID_I225_K2:
+	case IGC_DEV_ID_I225_LMVP:
+	case IGC_DEV_ID_I225_IT:
+		return true;
+	default:
+		return false;
+	}
+}
+
+bool igc_is_device_id_i226(struct igc_hw *hw)
+{
+	switch (hw->device_id) {
+	case IGC_DEV_ID_I226_LM:
+	case IGC_DEV_ID_I226_V:
+	case IGC_DEV_ID_I226_K:
+	case IGC_DEV_ID_I226_IT:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static struct igc_mac_operations igc_mac_ops_base = {
 	.init_hw		= igc_init_hw_base,
 	.check_for_link		= igc_check_for_copper_link,
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index ce530f5fd7bd..7a992befca24 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -7,6 +7,8 @@
 /* forward declaration */
 void igc_rx_fifo_flush_base(struct igc_hw *hw);
 void igc_power_down_phy_copper_base(struct igc_hw *hw);
+bool igc_is_device_id_i225(struct igc_hw *hw);
+bool igc_is_device_id_i226(struct igc_hw *hw);
 
 /* Transmit Descriptor - Advanced */
 union igc_adv_tx_desc {
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index a7b22639cfcd..0e23f6244ffb 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -522,6 +522,7 @@
 /* Transmit Scheduling */
 #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
+#define IGC_TQAVCTRL_FUTSCDDIS		0x00000080
 
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e07287e05862..37221c99b899 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5941,6 +5941,7 @@ static bool validate_schedule(struct igc_adapter *adapter,
 			      const struct tc_taprio_qopt_offload *qopt)
 {
 	int queue_uses[IGC_MAX_TX_QUEUES] = { };
+	struct igc_hw *hw = &adapter->hw;
 	struct timespec64 now;
 	size_t n;
 
@@ -5953,8 +5954,10 @@ static bool validate_schedule(struct igc_adapter *adapter,
 	 * in the future, it will hold all the packets until that
 	 * time, causing a lot of TX Hangs, so to avoid that, we
 	 * reject schedules that would start in the future.
+	 * Note: Limitation above is no longer in i226.
 	 */
-	if (!is_base_time_past(qopt->base_time, &now))
+	if (!is_base_time_past(qopt->base_time, &now) &&
+	    igc_is_device_id_i225(hw))
 		return false;
 
 	for (n = 0; n < qopt->num_entries; n++) {
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index bb10d7b65232..28325dc4fc5b 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -2,6 +2,7 @@
 /* Copyright (c)  2019 Intel Corporation */
 
 #include "igc.h"
+#include "igc_hw.h"
 #include "igc_tsn.h"
 
 static bool is_any_launchtime(struct igc_adapter *adapter)
@@ -92,7 +93,8 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 
 	tqavctrl = rd32(IGC_TQAVCTRL);
 	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
-		      IGC_TQAVCTRL_ENHANCED_QAV);
+		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS);
+
 	wr32(IGC_TQAVCTRL, tqavctrl);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
@@ -117,20 +119,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	ktime_t base_time, systim;
 	int i;
 
-	cycle = adapter->cycle_time;
-	base_time = adapter->base_time;
-
 	wr32(IGC_TSAUXC, 0);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
 
-	tqavctrl = rd32(IGC_TQAVCTRL);
-	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
-	wr32(IGC_TQAVCTRL, tqavctrl);
-
-	wr32(IGC_QBVCYCLET_S, cycle);
-	wr32(IGC_QBVCYCLET, cycle);
-
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
 		u32 txqctl = 0;
@@ -233,21 +225,43 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		wr32(IGC_TXQCTL(i), txqctl);
 	}
 
+	tqavctrl = rd32(IGC_TQAVCTRL);
+	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
+
+	cycle = adapter->cycle_time;
+	base_time = adapter->base_time;
+
 	nsec = rd32(IGC_SYSTIML);
 	sec = rd32(IGC_SYSTIMH);
 
 	systim = ktime_set(sec, nsec);
-
 	if (ktime_compare(systim, base_time) > 0) {
-		s64 n;
+		s64 n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
 
-		n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
 		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
+	} else {
+		/* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
+		 * has to be configured before the cycle time and base time.
+		 */
+		if (igc_is_device_id_i226(hw))
+			tqavctrl |= IGC_TQAVCTRL_FUTSCDDIS;
 	}
 
-	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
+	wr32(IGC_TQAVCTRL, tqavctrl);
+
+	wr32(IGC_QBVCYCLET_S, cycle);
+	wr32(IGC_QBVCYCLET, cycle);
 
+	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
 	wr32(IGC_BASET_H, baset_h);
+
+	/* In i226, Future base time is only supported when FutScdDis bit
+	 * is enabled and only active for re-configuration.
+	 * In this case, initialize the base time with zero to create
+	 * "re-configuration" scenario then only set the desired base time.
+	 */
+	if (tqavctrl & IGC_TQAVCTRL_FUTSCDDIS)
+		wr32(IGC_BASET_L, 0);
 	wr32(IGC_BASET_L, baset_l);
 
 	return 0;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
