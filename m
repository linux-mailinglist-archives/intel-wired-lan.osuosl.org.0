Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2E475693
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D650881AB;
	Thu, 25 Jul 2019 18:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6+EJE7Zp+EV; Thu, 25 Jul 2019 18:08:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BF6088192;
	Thu, 25 Jul 2019 18:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 680911BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E190873B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hwbf5YEvVY+l for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:08:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8608E84854
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:08:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:08:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="369217378"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jul 2019 11:08:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 05:47:43 -0400
Message-Id: <20190725094743.20861-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH] iavf: allow permanent MAC address to
 change
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

Allow the VF to override the "permanent" MAC address set by the host.
This allows bonding to work in the case where the administrator has set
the VF MAC.

Note that the VF must still be set to Trusted on the host if this change
is to be accepted by the PF driver.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      | 1 -
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ----
 2 files changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9fc635d816d2..29de3ae96ef2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -253,7 +253,6 @@ struct iavf_adapter {
 #define IAVF_FLAG_RESET_PENDING		BIT(4)
 #define IAVF_FLAG_RESET_NEEDED		BIT(5)
 #define IAVF_FLAG_WB_ON_ITR_CAPABLE		BIT(6)
-#define IAVF_FLAG_ADDR_SET_BY_PF		BIT(8)
 #define IAVF_FLAG_SERVICE_CLIENT_REQUESTED	BIT(9)
 #define IAVF_FLAG_CLIENT_NEEDS_OPEN		BIT(10)
 #define IAVF_FLAG_CLIENT_NEEDS_CLOSE		BIT(11)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 554aa619ff02..07f5541a0f01 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -790,9 +790,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		return 0;
 
-	if (adapter->flags & IAVF_FLAG_ADDR_SET_BY_PF)
-		return -EPERM;
-
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
 	f = iavf_find_filter(adapter, hw->mac.addr);
@@ -1811,7 +1808,6 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 		eth_hw_addr_random(netdev);
 		ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
 	} else {
-		adapter->flags |= IAVF_FLAG_ADDR_SET_BY_PF;
 		ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
 		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
 	}
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
