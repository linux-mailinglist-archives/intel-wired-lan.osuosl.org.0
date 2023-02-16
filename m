Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B35698A5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 03:07:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1E87610F8;
	Thu, 16 Feb 2023 02:07:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1E87610F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676513271;
	bh=KuObWkmZeqeJ4N184QhGltP2xTcTpx1cICR5dUISjEA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ly+zjDjPxNSxykua7MQ+su6KQv5gZRupA2XR4z4cA5VMYyVT4+lsEiT1gg/UYLiA2
	 o6bWq9aMs6CP4n4fPcDx+8NjsK/t+WmuTsAjudGcxayRQ3RfW0dOybV2KbE+xYl2vM
	 udP9kCnZt1eefCMPjbpmqVOS7EZJpgS7/IOqGKa/BXc/XUlkND4mPN/lHe+dZiqpkd
	 470d/QfRdSjdLDj4eLAUANF5lanCmQjnHL69gLJq90u7qsWrYrPcXe7lMYTowldued
	 Ft8d9WbCKF3L4NVm5EvWtNsfd2lMcoX8jeJhrmpbXpS7q7rOlm++/xhHAFTJ8zdu2I
	 erkSRng7lejaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7Jb16eOfV0V; Thu, 16 Feb 2023 02:07:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EB4E60F37;
	Thu, 16 Feb 2023 02:07:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EB4E60F37
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 569171BF3A9
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 02:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27DF660F37
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 02:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27DF660F37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 25LjAL2mlqI0 for <intel-wired-lan@osuosl.org>;
 Thu, 16 Feb 2023 02:07:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C384600BA
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C384600BA
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 02:07:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="417822843"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="417822843"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 18:07:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="671981724"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="671981724"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 15 Feb 2023 18:07:40 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 16 Feb 2023 10:07:31 +0800
Message-Id: <20230216020731.31329-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676513263; x=1708049263;
 h=from:to:cc:subject:date:message-id;
 bh=f0TOShsFbjhroZUo99hI9gTT4Re/CFjnY/1pJGMq8nc=;
 b=cBKbTZiNmVZf9EDyxYEZJaFVxJytYa/ftEeeh/EsUmaTQbNGsqGHUuYH
 0VYZtwKOV19faji4bY1t/HeWoSQgwbWjKIvejIKv3TbDDVBUuDjCc3B58
 XWDerTBxKWUaCp7FO5otlwfoXjttnUCeys0iNmRaQi8VG1LRAwzgIyWJj
 r0YR2iyIWa4TVfIuWsyftRZIkiNxQegJS0ovvT+Zkw0iZRiYDeHDDvQAF
 9XcDfA9W7Uy6CBvpwRG0xLvzzTgq5zkAbiXmg2gYsGdD8wSDywugoiryI
 VlQXG0BYygVRgZso87cChBNr5dAgI2ASqTVBGjl5UxXW+zaBSMzdp88tB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cBKbTZiN
Subject: [Intel-wired-lan] [PATCH net-next v3] igc: Add
 qbv_config_change_errors counter
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

Add ConfigChangeError(qbv_config_change_errors) when user try to set the
AdminBaseTime to past value while the current GCL is still running.

The ConfigChangeError counter should not be increased when a gate control
list is scheduled into the future.

User can use "ethtool -S <interface> | grep qbv_config_change_errors"
command to check the counter values.

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Tested-by: Naama Meir <naamax.meir@linux.intel.com>

---
V2 -> V3: Squash patch as per requested by maintainer(Tony)
V1 -> V2: Fix wrong tree applied
---
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  1 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 12 ++++++++++++
 4 files changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5da8d162cd383..9db93c1f97679 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -185,6 +185,7 @@ struct igc_adapter {
 	ktime_t base_time;
 	ktime_t cycle_time;
 	bool qbv_enable;
+	u32 qbv_config_change_errors;
 
 	/* OS defined structs */
 	struct pci_dev *pdev;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 5a26a7805ef80..0e2cb00622d1a 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -67,6 +67,7 @@ static const struct igc_stats igc_gstrings_stats[] = {
 	IGC_STAT("rx_hwtstamp_cleared", rx_hwtstamp_cleared),
 	IGC_STAT("tx_lpi_counter", stats.tlpic),
 	IGC_STAT("rx_lpi_counter", stats.rlpic),
+	IGC_STAT("qbv_config_change_errors", qbv_config_change_errors),
 };
 
 #define IGC_NETDEV_STAT(_net_stat) { \
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 150a6e5f08628..0f31f0cfcc3e6 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6032,6 +6032,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 
 	adapter->base_time = 0;
 	adapter->cycle_time = NSEC_PER_SEC;
+	adapter->qbv_config_change_errors = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index a386c8d61dbf9..94a2b0dfb54d4 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -114,6 +114,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	bool tsn_mode_reconfig = false;
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle;
 	ktime_t base_time, systim;
@@ -226,6 +227,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	}
 
 	tqavctrl = rd32(IGC_TQAVCTRL) & ~IGC_TQAVCTRL_FUTSCDDIS;
+
+	if (tqavctrl & IGC_TQAVCTRL_TRANSMIT_MODE_TSN)
+		tsn_mode_reconfig = true;
+
 	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
 	cycle = adapter->cycle_time;
@@ -239,6 +244,13 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		s64 n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
 
 		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
+
+		/* Increase the counter if scheduling into the past while
+		 * Gate Control List (GCL) is running.
+		 */
+		if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
+		    tsn_mode_reconfig)
+			adapter->qbv_config_change_errors++;
 	} else {
 		/* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
 		 * has to be configured before the cycle time and base time.
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
