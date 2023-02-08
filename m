Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BB168E73C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 05:49:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CC6361087;
	Wed,  8 Feb 2023 04:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CC6361087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675831773;
	bh=kRE1yyKrxicv0CSM7XDO/JnqOPB4MtOPyo3YO7izXdw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ykUZFyI75NZbWuZMETTfN6TcsUxQVpZgnuDjH/FazvWGHV1VOGRM+p6oHQ2XAh1Uw
	 Si671mGPQdJQUJVuERxegBNRTlWrieaGMI2qkL+qPkJMQysNL/oK/4/V7jS5myVDdw
	 P/Wl9LtBQtu7tNpjEum4iuA3yKy4pz0Ph87rYv4VnF4MaN94mj87qVHCCRS7JNsg3i
	 6YkDCdOiSUhfA96YHddV5AfZUHfOZvJLIC23jzAHr7buH0UFFj+ylESOzANuyON7fc
	 VG4wqZzrVB0jKZ1+z4AaEt9f0Ot8dsvSderaXHY6Bav4WhFWzblZPPgnKfvoIOKHES
	 e5lUkg28YnMyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0AJO5UEwk1JV; Wed,  8 Feb 2023 04:49:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 407C261071;
	Wed,  8 Feb 2023 04:49:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 407C261071
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AE991BF5DF
 for <intel-wired-lan@osuosl.org>; Wed,  8 Feb 2023 04:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 686CB61042
 for <intel-wired-lan@osuosl.org>; Wed,  8 Feb 2023 04:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 686CB61042
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wq_n9cJItaRR for <intel-wired-lan@osuosl.org>;
 Wed,  8 Feb 2023 04:49:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B493760EB3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B493760EB3
 for <intel-wired-lan@osuosl.org>; Wed,  8 Feb 2023 04:49:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="327405385"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="327405385"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 20:49:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644708402"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="644708402"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga006.jf.intel.com with ESMTP; 07 Feb 2023 20:49:21 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Wed,  8 Feb 2023 12:45:36 +0800
Message-Id: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675831764; x=1707367764;
 h=from:to:cc:subject:date:message-id;
 bh=ur8qBqF4FlnVtHIlKlgE23FWar6S3HyTFbxnklkCY8c=;
 b=UaCUtif0JflkGdOQYrEPG8pMocSt29NNELUXGYHPdGu5anEakYqr9zWJ
 gdDu5ElckwOhElBnm7NS91t8UlZ99KXrut4ko5d/Jkx4quM+ncVOEwTN1
 T42gL9mMGzDRRnAHBsKk3dWaQbgWsPSR5N/nb6WAtVuctlqva3exoSCUS
 xI/Lelrm+ymoZVCeCHdJX/s0AoSVUg7FrczfZpaIGG2XD8YjZJJp3LzTj
 n9DMxYMiwrjjK33YhdeJ6STa85toj5KoEpTjxtGcMXywOA4h51eMsxF4q
 vprigfN29alwLRQJxX0O0FfBoSE9lsKkO8Lxk4kkm4RUCCoEKpKEtFMhG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UaCUtif0
Subject: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission overrun
 counter
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
Cc: muhammad.husaini.zulkifli@intel.com, anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add transmission overrun counter as per defined by IEEE 802.1Q Bridges.
The Intel Discrete I225/6 does not have HW counters that can determine
whether a packet is still being transmitted after the gate has been closed.
But I225/I226 have a mechanism to not transmit a packets if the gate
open time is insufficient for the packet transmission by setting the
Strict_End bit. Software counters have been created for each queues in
response to the IEEE specification. Thus, we can assume that overrun
counter is always "0" when setting this bit.

User can get this counter by using below command:
"ethtool -S <interface> | grep qbv_tx_overrun"

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         | 1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++++
 drivers/net/ethernet/intel/igc/igc_hw.h      | 4 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    | 7 +++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 6 ++++++
 5 files changed, 22 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 9db93c1f97679..a8c7a978d4335 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -99,6 +99,7 @@ struct igc_ring {
 
 	u32 start_time;
 	u32 end_time;
+	u64 qbv_tx_overrun;
 
 	/* CBS parameters */
 	bool cbs_enable;                /* indicates if CBS is enabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 0e2cb00622d1a..34a893171b209 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -68,6 +68,10 @@ static const struct igc_stats igc_gstrings_stats[] = {
 	IGC_STAT("tx_lpi_counter", stats.tlpic),
 	IGC_STAT("rx_lpi_counter", stats.rlpic),
 	IGC_STAT("qbv_config_change_errors", qbv_config_change_errors),
+	IGC_STAT("qbv_tx_overrun_q0", stats.qbv_tx_overrun_q0),
+	IGC_STAT("qbv_tx_overrun_q1", stats.qbv_tx_overrun_q1),
+	IGC_STAT("qbv_tx_overrun_q2", stats.qbv_tx_overrun_q2),
+	IGC_STAT("qbv_tx_overrun_q3", stats.qbv_tx_overrun_q3),
 };
 
 #define IGC_NETDEV_STAT(_net_stat) { \
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 88680e3d613dd..ce3ba19eef601 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -273,6 +273,10 @@ struct igc_hw_stats {
 	u64 o2bspc;
 	u64 b2ospc;
 	u64 b2ogprc;
+	u64 qbv_tx_overrun_q0;
+	u64 qbv_tx_overrun_q1;
+	u64 qbv_tx_overrun_q2;
+	u64 qbv_tx_overrun_q3;
 };
 
 struct net_device *igc_get_hw_dev(struct igc_hw *hw);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0cc327294dfb5..8b6cdb7d4eff2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4926,6 +4926,12 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.mgptc += rd32(IGC_MGTPTC);
 	adapter->stats.mgprc += rd32(IGC_MGTPRC);
 	adapter->stats.mgpdc += rd32(IGC_MGTPDC);
+
+	/* SW overrun counter */
+	adapter->stats.qbv_tx_overrun_q0 = adapter->tx_ring[0]->qbv_tx_overrun;
+	adapter->stats.qbv_tx_overrun_q1 = adapter->tx_ring[1]->qbv_tx_overrun;
+	adapter->stats.qbv_tx_overrun_q2 = adapter->tx_ring[2]->qbv_tx_overrun;
+	adapter->stats.qbv_tx_overrun_q3 = adapter->tx_ring[3]->qbv_tx_overrun;
 }
 
 /**
@@ -6039,6 +6045,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
+		ring->qbv_tx_overrun = 0;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index b38c1c7569a0b..2593a1517af0a 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -135,6 +135,12 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
 			IGC_TXQCTL_STRICT_END;
 
+		/* Counters will always be zero if Strict_End bit is set.
+		 * Condition to check for the IGC_TXQCTL_STRICT_END must be add
+		 * in the future if Strict_End bit is not set.
+		 */
+		ring->qbv_tx_overrun = 0;
+
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
