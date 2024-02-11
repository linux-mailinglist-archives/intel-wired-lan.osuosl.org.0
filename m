Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE2A850804
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Feb 2024 08:38:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1454440860;
	Sun, 11 Feb 2024 07:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ERqJP-bIznu; Sun, 11 Feb 2024 07:38:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF5D240806
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707637100;
	bh=i31sJafGmRbw0j22oPMfT6iMBF/n7RUOkJxz+6SSC/U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9aI4OG6S8Kfl8ANGWyPAw5pICKG3bsUyNLvT62tI5VYDkizhdlbJCQF4aBVScTIqL
	 7WqO8+aKh5nwvFwLrHjtqKMJnaFUG1eC8W91ccQ3l6Qu7NTeCB+hllXjXIf4tHgWht
	 UtNI8DDQhk+8Lur39oLP3hrv9gtEtqHCpWQBWI0RheutZPR4dW+VsU3nFes5BmwWZ4
	 RcvD8qr5UTSajfyL6sQ6dLqTXA2gSrxI+RZmAw9uXTnwrJ1IKMrzq4Ef2JgUBOJxzO
	 XkLFRPdSGTy57lUu3RbxKwYu7VuKT40Hm7iO8FNWZ1UiGNvznvFwPvW9Td9pfLHOs6
	 ncI3NRufRQEsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF5D240806;
	Sun, 11 Feb 2024 07:38:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 297BE1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 07:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D7E7407DE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 07:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h3pLzNZp1h76 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Feb 2024 07:38:16 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 11 Feb 2024 07:38:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B792407C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B792407C6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B792407C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 07:38:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10980"; a="1517909"
X-IronPort-AV: E=Sophos;i="6.05,260,1701158400"; 
   d="scan'208";a="1517909"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 23:31:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,260,1701158400"; 
   d="scan'208";a="2660472"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by orviesa006.jf.intel.com with ESMTP; 10 Feb 2024 23:31:04 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 11 Feb 2024 09:30:58 +0200
Message-Id: <20240211073058.2978195-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707637096; x=1739173096;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ld/Henb9OLqW0Sw7nmGZYRwFvCQg0nCW4+cUlv7uD3k=;
 b=PG1XtNvrDNmxt0wdnTdHw3QdB0XxPu5VRWpM0hkV2UwmflQgJjxxf+T2
 YC/3THQxq3Q+ZbtdH4ymc59lBxpfdpSz1XLv+m4kOnrZXo7cnq8PckJrM
 lirpTUyKXOuKOdZwdJvGtwIY5aggATb0d4SBvtL2QR7Ieye3XGNkt5P+z
 /hDqSiMP7sZ+a/N9aGsk+l3HyK3i0lKNdCUD928rczpHvTR8kEhCdnHyH
 07OVstVSgw5IxMBTPwpCz7wZB2gkYSt1fjEnZ2mEKjA2SgeorKhxRUpLQ
 KDyYyjJPq/R2xlXlkoCq/xykf1X0SSWgnfEmHy69p/ByD+My9uGvO8CvB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PG1XtNvr
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] igc: Refactor runtime
 power management flow
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Following the corresponding discussion [1] and [2] refactor the 'igc_open'
method and avoid taking the rtnl_lock() during the 'igc_resume' method.
The rtnl_lock is held by the upper layer and could lead to the deadlock
during resuming from a runtime power management flow. Notify the stack of
the actual queue counts 'netif_set_real_num_*_queues' outside the
'_igc_open' wrapper. This notification doesn't have to be called on each
resume.

Test:
1. Disconnect the ethernet cable
2. Enable the runtime power management via file system:
echo auto > /sys/devices/pci0000\.../power/control
3. Check the device state (lspci -s <device> -vvv | grep -i Status)

Link: https://lore.kernel.org/netdev/20231206113934.8d7819857574.I2deb5804
ef1739a2af307283d320ef7d82456494@changeid/#r [1]
Link: https://lore.kernel.org/netdev/20211125074949.5f897431@kicinski-fedo
ra-pc1c0hjn.dhcp.thefacebook.com/t/ [2]
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 32 +++++++++++------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba8d3fe186ae..7bd69a4d1ef0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5943,15 +5943,6 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	if (err)
 		goto err_req_irq;
 
-	/* Notify the stack of the actual queue counts. */
-	err = netif_set_real_num_tx_queues(netdev, adapter->num_tx_queues);
-	if (err)
-		goto err_set_queues;
-
-	err = netif_set_real_num_rx_queues(netdev, adapter->num_rx_queues);
-	if (err)
-		goto err_set_queues;
-
 	clear_bit(__IGC_DOWN, &adapter->state);
 
 	for (i = 0; i < adapter->num_q_vectors; i++)
@@ -5972,8 +5963,6 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 
 	return IGC_SUCCESS;
 
-err_set_queues:
-	igc_free_irq(adapter);
 err_req_irq:
 	igc_release_hw_control(adapter);
 	igc_power_down_phy_copper_base(&adapter->hw);
@@ -5990,6 +5979,17 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 
 int igc_open(struct net_device *netdev)
 {
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	int err;
+
+	/* Notify the stack of the actual queue counts. */
+	err = netif_set_real_num_queues(netdev, adapter->num_tx_queues,
+					adapter->num_rx_queues);
+	if (err) {
+		netdev_err(netdev, "error setting real queue count\n");
+		return err;
+	}
+
 	return __igc_open(netdev, false);
 }
 
@@ -7191,13 +7191,11 @@ static int __maybe_unused igc_resume(struct device *dev)
 
 	wr32(IGC_WUS, ~0);
 
-	rtnl_lock();
-	if (!err && netif_running(netdev))
+	if (netif_running(netdev)) {
 		err = __igc_open(netdev, true);
-
-	if (!err)
-		netif_device_attach(netdev);
-	rtnl_unlock();
+		if (!err)
+			netif_device_attach(netdev);
+	}
 
 	return err;
 }
-- 
2.34.1

