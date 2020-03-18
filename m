Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8559F18A8D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D813186637;
	Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YbqUNgkXQ-Vx; Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 584768666C;
	Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7EFD1BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D125986644
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ecsf_B_XZGQg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4826A86610
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
IronPort-SDR: 6bp7yyd9pHsnTRb+WyoNEA1UZRmOr5iHv5Q/UDC46v1OEBwqJbwjexJOxrW7gb0MlZObE3+MOH
 yWaiWgevcDIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:08 -0700
IronPort-SDR: oePWs3m8KnhrO9oRKARC8uNYl4S1cJ3WoIbpT+nQuUAp4QTFXjvnXkais6dZZ6RYIpUIQgLqar
 7ozbccr0b1Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341771"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:07 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:00:53 -0700
Message-Id: <20200318230102.36952-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 03/12] igc: Change igc_add_mac_filter()
 returning value
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In case of success, igc_add_mac_filter() returns the index in
adapter->mac_table where the requested filter was added. This
information, however, is not used by any caller of that function.
In fact, callers have extra code just to handle this returning
index as 0 (success).

So this patch changes the function to return 0 on success instead,
and cleans up the extra code.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 --
 drivers/net/ethernet/intel/igc/igc_main.c    | 7 ++-----
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 925f0979506e..9ef133fe6e40 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1270,7 +1270,6 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 		err = igc_add_mac_steering_filter(adapter,
 						  input->filter.dst_addr,
 						  input->action, 0);
-		err = min_t(int, err, 0);
 		if (err)
 			return err;
 	}
@@ -1280,7 +1279,6 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 						  input->filter.src_addr,
 						  input->action,
 						  IGC_MAC_STATE_SRC_ADDR);
-		err = min_t(int, err, 0);
 		if (err)
 			return err;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5360d73d9c63..ed2648e0fbd8 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2218,7 +2218,7 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
 
 		igc_rar_set_index(adapter, i);
-		return i;
+		return 0;
 	}
 
 	return -ENOSPC;
@@ -2277,11 +2277,8 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
-	int ret;
-
-	ret = igc_add_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
 
-	return min_t(int, ret, 0);
+	return igc_add_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
 }
 
 static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
