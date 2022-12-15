Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D3164D5A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 04:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FC1C81FC2;
	Thu, 15 Dec 2022 03:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FC1C81FC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671075728;
	bh=DpQk4IjUxrtiW4slocjzfeWQnCY8+KvaGR4LDHRuxFg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ykm+XxMzIQiZ48U/4Zyk9/7Wc0pC0Pb0Jbz1HcWOoZkS+ofXRejeO+ttnQPA+PHLJ
	 ZhxG7jcOVAhgQqyDqvJ/b84u1oRmEC4PEyTr4/2xHKCb9ci4cS+73ihs9/4EjPhdX9
	 xzXjDTowf+eZB31RCHl7AAH85p9Md9/DhGkrimWP43TPOOHu6fwZv0EIIY+l9Bgcjr
	 XazTgSmDlx9S2tnYcJ2ssEA98CFDnRberlpR2B6LUujSiaaG351K+1Ts50l/L7xh1Z
	 4WlaQfVii7euAcmdq1ywj0wamx5qR/wIBDSAa42EbXkA/TkcsC+4Mu4x9IE/bdL2Q8
	 ysmx5nF42ocsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9poIv4_LTxmM; Thu, 15 Dec 2022 03:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2296E81FAD;
	Thu, 15 Dec 2022 03:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2296E81FAD
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBB1C1BF350
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 03:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A2A281FAD
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 03:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A2A281FAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fy9qzQfCke4R for <intel-wired-lan@osuosl.org>;
 Thu, 15 Dec 2022 03:42:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0EFB81F94
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0EFB81F94
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 03:42:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="320432307"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="320432307"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 19:42:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="649242017"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="649242017"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga002.jf.intel.com with ESMTP; 14 Dec 2022 19:41:58 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Thu, 15 Dec 2022 11:39:11 +0800
Message-Id: <20221215033911.18152-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671075720; x=1702611720;
 h=from:to:cc:subject:date:message-id;
 bh=jOR9MEZhojbKJQChagCPME67JjMQbiZZkjEkkKFzOGw=;
 b=j766yfmYI+UiRHMjYdHpoez9kP1R3zj/8ep1E/pl153LKn9J/q8+Tn7u
 qWiJnuJ7QiNeKmHQoLycP3Mq3h7Nfkgq6UMjtbcjUZdcBh5jxUWomRQKm
 86FvpyKsn8utfckHGWUroG2GidoUU6OBgYop0r4iqBP9NlZhnqHww9x+k
 ssIX/XXTQwZPARc/M3oNjJiS2Y4tYgNmSGNrGK/cKvLuaZyFlRz1pW1bK
 UHzW98mOnpGBs+u4wX5tjQZhK/7lazKcDYdgsUPMRGGE9IGQ+oCvWQ4h0
 33PCDMAXLnwqoNL+nST6MfkGbSWipCVPs+v0h/4XX1fm9O+lO7lEas49N
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j766yfmY
Subject: [Intel-wired-lan] [PATCH net-next v1] igc: Add
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
---
 drivers/net/ethernet/intel/igc/igc.h         | 1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 1 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 6 ++++++
 4 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1f3f83013125..5b191798504c 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -196,6 +196,7 @@ struct igc_adapter {
 	bool frame_preemption_active;
 	u32 add_frag_size;
 	bool qbv_enable;
+	u32 qbv_config_change_errors;
 
 	/* OS defined structs */
 	struct pci_dev *pdev;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index d72a51f6fec2..165dbcda600d 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -68,6 +68,7 @@ static const struct igc_stats igc_gstrings_stats[] = {
 	IGC_STAT("rx_hwtstamp_cleared", rx_hwtstamp_cleared),
 	IGC_STAT("tx_lpi_counter", stats.tlpic),
 	IGC_STAT("rx_lpi_counter", stats.rlpic),
+	IGC_STAT("qbv_config_change_errors", qbv_config_change_errors),
 };
 
 #define IGC_NETDEV_STAT(_net_stat) { \
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fbc81b8a0b50..c83fbabe98fc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6194,6 +6194,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 
 	adapter->base_time = 0;
 	adapter->cycle_time = NSEC_PER_SEC;
+	adapter->qbv_config_change_errors = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 1de93d07ea24..3eb7fd7fb0a8 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -239,6 +239,12 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		s64 n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
 
 		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
+
+		/* Increase the counter if scheduling into the past while
+		 * Gate Control List (GCL) is running.
+		 */
+		if (rd32(IGC_BASET_H) || rd32(IGC_BASET_L))
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
