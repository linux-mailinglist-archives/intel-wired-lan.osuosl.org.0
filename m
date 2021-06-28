Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7953B5DB5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jun 2021 14:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BEB840132;
	Mon, 28 Jun 2021 12:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUfUyCS4Zg18; Mon, 28 Jun 2021 12:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC217400CF;
	Mon, 28 Jun 2021 12:11:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 873721BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 12:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74AB2402F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 12:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4m8j1YNuk_T3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jun 2021 12:11:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99F2F402C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 12:11:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="195234279"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="195234279"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 05:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="625232575"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga005.jf.intel.com with ESMTP; 28 Jun 2021 05:11:07 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Jun 2021 12:11:05 +0000
Message-Id: <20210628121105.20640-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix ping is lost after
 untrusted VF had tried to change MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

Make changes to MAC address dependent on the response of PF.
Disallow changes to hw mac address and mac filter from untrusted
VF, thanks to that ping is not lost if VF tries to change MAC.
Add a new field in iavf_mac_filter, to indicate whether there
was response from PF for given filter. Based on this field pass
or discard the filter.
If untrusted VF tried to change it's address, it's not changed.
Still filter was changed, because of that ping couldn't go through.

Fixes: c5c922b3e09b ("iavf: fix MAC address setting for VFs when filter is rejected")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed function names in comments
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  1 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 47 ++++++++++++++++++-
 3 files changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9ccb88e..b79d02f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -137,6 +137,7 @@ struct iavf_q_vector {
 struct iavf_mac_filter {
 	struct list_head list;
 	u8 macaddr[ETH_ALEN];
+	bool is_new_mac;	/* filter is new, wait for PF decision */
 	bool remove;		/* filter needs to be removed */
 	bool add;		/* filter needs to be added */
 };
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d64e256..c9d9bf9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -797,6 +797,7 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 
 		list_add_tail(&f->list, &adapter->mac_filter_list);
 		f->add = true;
+		f->is_new_mac = true;
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
 	} else {
 		f->remove = false;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index bc403b7..9c12846 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -540,6 +540,47 @@ void iavf_del_ether_addrs(struct iavf_adapter *adapter)
 	kfree(veal);
 }
 
+/**
+ * iavf_mac_add_ok
+ * @adapter: adapter structure
+ *
+ * Submit list of filters based on PF response.
+ **/
+static void iavf_mac_add_ok(struct iavf_adapter *adapter)
+{
+	struct iavf_mac_filter *f, *ftmp;
+
+	spin_lock_bh(&adapter->mac_vlan_list_lock);
+	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list, list) {
+		f->is_new_mac = false;
+	}
+	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+}
+
+/**
+ * iavf_mac_add_reject
+ * @adapter: adapter structure
+ *
+ * Remove filters from list based on PF response.
+ **/
+static void iavf_mac_add_reject(struct iavf_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct iavf_mac_filter *f, *ftmp;
+
+	spin_lock_bh(&adapter->mac_vlan_list_lock);
+	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list, list) {
+		if (f->remove && ether_addr_equal(f->macaddr, netdev->dev_addr))
+			f->remove = false;
+
+		if (f->is_new_mac) {
+			list_del(&f->list);
+			kfree(f);
+		}
+	}
+	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+}
+
 /**
  * iavf_add_vlans
  * @adapter: adapter structure
@@ -1500,6 +1541,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		case VIRTCHNL_OP_ADD_ETH_ADDR:
 			dev_err(&adapter->pdev->dev, "Failed to add MAC filter, error %s\n",
 				iavf_stat_str(&adapter->hw, v_retval));
+			iavf_mac_add_reject(adapter);
 			/* restore administratively set MAC address */
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
 			break;
@@ -1647,10 +1689,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		}
 	}
 	switch (v_opcode) {
-	case VIRTCHNL_OP_ADD_ETH_ADDR: {
+	case VIRTCHNL_OP_ADD_ETH_ADDR:
+		if (!v_retval)
+			iavf_mac_add_ok(adapter);
 		if (!ether_addr_equal(netdev->dev_addr, adapter->hw.mac.addr))
 			ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
-		}
 		break;
 	case VIRTCHNL_OP_GET_STATS: {
 		struct iavf_eth_stats *stats =
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
