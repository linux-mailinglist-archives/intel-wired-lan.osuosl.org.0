Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2746764E412
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 23:55:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A47E41996;
	Thu, 15 Dec 2022 22:55:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A47E41996
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671144909;
	bh=UdoNh6z7t1XZG+isozregcpo1ORDZO2LnJygc0g66r0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T87CqzbGtt9StRILSCtPsMbAeWXkIk10IIOdKrSJQ4ZTBU5dbHN0zMkybswTtFCx8
	 kKvoT47/pxj5iwbto8Z8bvDZ+nsiQXaP8HFD7gbZemld6n7UdYceWp3rF3cbX5aEdT
	 xqanmDe94VKMcaOKyVn9vhe9JnMRC8YO41yuN0TAgaqzMzKPb8vs/1r5++uCe4IBPC
	 OcBXFdF8ndLjvDu6WbXEs48HyWupgbv0hb8pvmfwJRq8cgXquxZvAyi5pKQEc+87Qa
	 XMKafaqoek7ylX/N8R6g+HV8vVk/2wJJTJPq4VCKgxo2lcwYXJAim27AEmowEEaxMF
	 TVfMs8j6aoTgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5d69f1s4T2N; Thu, 15 Dec 2022 22:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17A84415A7;
	Thu, 15 Dec 2022 22:55:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17A84415A7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5B371BF335
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 22:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A61B840569
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 22:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A61B840569
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnmZitzhM90Y for <intel-wired-lan@osuosl.org>;
 Thu, 15 Dec 2022 22:55:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC4E54000B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC4E54000B
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 22:55:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="319993822"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="319993822"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 14:55:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="738325392"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="738325392"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Dec 2022 14:54:59 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Fri, 16 Dec 2022 06:52:11 +0800
Message-Id: <20221215225211.1071-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671144901; x=1702680901;
 h=from:to:cc:subject:date:message-id;
 bh=g8ftukLROYDjvCq0VLq+UuSB4SeUS7TmGFPhRmKUH1c=;
 b=HQUilGkx5zbwCcin3ljM1dnc6kIygglR+cZyK4Mn5ZvCUTa2ycsvNYli
 qbWIL9qaEtC4KMnB7ZRs0DnpgHsjTOqDGuLa6xPbQkaqR4dwJSm22GiWY
 /c0oRNVVXUx8V38C2G5g0ZdklpTeAas00ituyQ+Tk7UFCsvimZzfmubZb
 hLFg/X/tP8B2ljP4r7ehy08f56cXdqZxWAJidrAUVQvJyhkAbRIp/cvKV
 c5NacAAGtbDspfIXwNscYVPtap9xbwo+rwtZjZLHdD9XhSpshmpOYTjsO
 WA6jtcM2/tYe9CoRpAs5huezYTt6YFdzjxQnrqpQRUiHcKhU+gvXglZH5
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HQUilGkx
Subject: [Intel-wired-lan] [PATCH net-next v2] igc: Add
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
V1 -> V2: Fix wrong tree applied
---
---
 drivers/net/ethernet/intel/igc/igc.h         | 1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 1 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 6 ++++++
 4 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5da8d162cd38..9db93c1f9767 100644
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
index 5a26a7805ef8..0e2cb00622d1 100644
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
index fdb7f0b26ed0..4947b0f308cd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6012,6 +6012,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 
 	adapter->base_time = 0;
 	adapter->cycle_time = NSEC_PER_SEC;
+	adapter->qbv_config_change_errors = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index b03c6168bd23..a6b963839741 100644
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
