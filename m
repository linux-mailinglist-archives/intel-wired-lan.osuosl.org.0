Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A20239BE0C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA3F4415B7;
	Fri,  4 Jun 2021 17:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ox8d5R0LlXj8; Fri,  4 Jun 2021 17:05:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70E76415E0;
	Fri,  4 Jun 2021 17:05:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B9F61BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10A57415B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eF3rrmUr9Lnv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4580415BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: njQIleJL4HC9dYeBGkojw9p+Fg42GPU6wGjAv3mYM2MmdisAQk5150EyOJExDE/VzoywosOphe
 rRJd71Ae/5pg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666476"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666476"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:03 -0700
IronPort-SDR: U2rrtiK8u0ujD7WAlQ4kefWItcAvgzA/1AAnFkvjiP+AgXKXlTf8uRyJIzhvZ6LNbf7kJof8OR
 fJ+/ItGXL8Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086384"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:27 -0700
Message-Id: <20210604165335.33329-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 07/15] iavf: Restore non MAC
 filters after link down
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

Restore VLAN filters after the link is brought down, and up - since all
filters are deleted from HW during the netdev link down routine.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 35 ++++++++++++++++++---
 2 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 1e996d9c1351..9ccb88e7fc65 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -39,6 +39,7 @@
 #include "iavf_txrx.h"
 #include "iavf_fdir.h"
 #include "iavf_adv_rss.h"
+#include <linux/bitmap.h>
 
 #define DEFAULT_DEBUG_LEVEL_SHIFT 3
 #define PFX "iavf: "
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1904000943dc..06db563a6190 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -666,6 +666,23 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, u16 vlan)
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 }
 
+/**
+ * iavf_restore_filters
+ * @adapter: board private structure
+ *
+ * Restore existing non MAC filters when VF netdev comes back up
+ **/
+static void iavf_restore_filters(struct iavf_adapter *adapter)
+{
+	/* re-add all VLAN filters */
+	if (VLAN_ALLOWED(adapter)) {
+		u16 vid;
+
+		for_each_set_bit(vid, adapter->vsi.active_vlans, VLAN_N_VID)
+			iavf_add_vlan(adapter, vid);
+	}
+}
+
 /**
  * iavf_vlan_rx_add_vid - Add a VLAN filter to a device
  * @netdev: network device struct
@@ -679,8 +696,11 @@ static int iavf_vlan_rx_add_vid(struct net_device *netdev,
 
 	if (!VLAN_ALLOWED(adapter))
 		return -EIO;
+
 	if (iavf_add_vlan(adapter, vid) == NULL)
 		return -ENOMEM;
+
+	set_bit(vid, adapter->vsi.active_vlans);
 	return 0;
 }
 
@@ -695,11 +715,13 @@ static int iavf_vlan_rx_kill_vid(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	if (VLAN_ALLOWED(adapter)) {
-		iavf_del_vlan(adapter, vid);
-		return 0;
-	}
-	return -EIO;
+	if (!VLAN_ALLOWED(adapter))
+		return -EIO;
+
+	iavf_del_vlan(adapter, vid);
+	clear_bit(vid, adapter->vsi.active_vlans);
+
+	return 0;
 }
 
 /**
@@ -3243,6 +3265,9 @@ static int iavf_open(struct net_device *netdev)
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
+	/* Restore VLAN filters that were removed with IFF_DOWN */
+	iavf_restore_filters(adapter);
+
 	iavf_configure(adapter);
 
 	iavf_up_complete(adapter);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
