Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E76054666C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jun 2022 14:18:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0243484347;
	Fri, 10 Jun 2022 12:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVLRN2Y8UqwY; Fri, 10 Jun 2022 12:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC75F84345;
	Fri, 10 Jun 2022 12:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 745D31BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 12:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62443419C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 12:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XyLrw-xU2-fD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jun 2022 12:18:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98C2941D28
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 12:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654863488; x=1686399488;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xDBQC/NG2iOldGGR011jyN5c16yPJ0M7bnBsvugmv+o=;
 b=HjlENcZtkat5AV8LoyLou+HtPtn4xHfLJpZV6kB+JMgkgNiLUXxzOyKX
 6Jn/2hFfV0Uh01wkDKoqFjE14BZe2FRqsJoynkL+9WNLEuwBkzhI3D6nB
 p0XR5U1Sy+u/DHoGjIWigFcwLkY51RURp8dbtyW1orkFfA9kY8sAOVt4J
 zp57K7LqJUq8iuOa8P6sp2XwMGUik29t87TOVXbC6gtTFIAD+OLCIleQh
 0nIk0f0vjH7vl/Ow/eb5/Z94HVZSdSDwnP3b7FvpRzpShJtjhka2YsQUP
 n8cgBjFk3XCAqDwRoKw4zeR8HUiBPRsNAyhLo8PfavqiVbFG9C6HcZles Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="266380063"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="266380063"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 05:18:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="671821968"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jun 2022 05:18:05 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Jun 2022 14:15:54 +0200
Message-Id: <20220610121554.3047245-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix VLAN_V2
 addition/rejection
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix VLAN addition, so that PF driver does not reject whole VLAN batch.
Add VLAN reject handling, so rejected VLANs, won't litter VLAN filter
list. Fix handling of active_(c/s)vlans, so it will be possible to
re-add VLAN filters for user.
Without this patch, after changing trust to off, with VLAN filters
saturated, no VLAN is added, due to PF rejecting addition.

Fixes: 92fc50859872 ("iavf: Restrict maximum VLAN filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  9 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 10 ++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 65 ++++++++++++++++++-
 3 files changed, 74 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 49aed3e506a6..86bc61c300a7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -159,8 +159,12 @@ struct iavf_vlan {
 struct iavf_vlan_filter {
 	struct list_head list;
 	struct iavf_vlan vlan;
-	bool remove;		/* filter needs to be removed */
-	bool add;		/* filter needs to be added */
+	struct {
+		u8 is_new_vlan:1;	/* filter is new, wait for PF answer */
+		u8 remove:1;		/* filter needs to be removed */
+		u8 add:1;		/* filter needs to be added */
+		u8 padding:5;
+	};
 };
 
 #define IAVF_MAX_TRAFFIC_CLASS	4
@@ -520,6 +524,7 @@ int iavf_get_vf_config(struct iavf_adapter *adapter);
 int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter);
 int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter);
 void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
+u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
 void iavf_configure_queues(struct iavf_adapter *adapter);
 void iavf_deconfigure_queues(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f3ecb3bca33d..2a8643e66331 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -843,7 +843,7 @@ static void iavf_restore_filters(struct iavf_adapter *adapter)
  * iavf_get_num_vlans_added - get number of VLANs added
  * @adapter: board private structure
  */
-static u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter)
+u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter)
 {
 	return bitmap_weight(adapter->vsi.active_cvlans, VLAN_N_VID) +
 		bitmap_weight(adapter->vsi.active_svlans, VLAN_N_VID);
@@ -906,11 +906,6 @@ static int iavf_vlan_rx_add_vid(struct net_device *netdev,
 	if (!iavf_add_vlan(adapter, IAVF_VLAN(vid, be16_to_cpu(proto))))
 		return -ENOMEM;
 
-	if (proto == cpu_to_be16(ETH_P_8021Q))
-		set_bit(vid, adapter->vsi.active_cvlans);
-	else
-		set_bit(vid, adapter->vsi.active_svlans);
-
 	return 0;
 }
 
@@ -2956,6 +2951,9 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
 	iavf_misc_irq_enable(adapter);
 
+	bitmap_clear(adapter->vsi.active_cvlans, 0, VLAN_N_VID);
+	bitmap_clear(adapter->vsi.active_svlans, 0, VLAN_N_VID);
+
 	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 2);
 
 	/* We were running when the reset started, so we need to restore some
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 782450d5c12f..1603e99bae4a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -626,6 +626,33 @@ static void iavf_mac_add_reject(struct iavf_adapter *adapter)
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 }
 
+/**
+ * iavf_vlan_add_reject
+ * @adapter: adapter structure
+ *
+ * Remove VLAN filters from list based on PF response.
+ **/
+static void iavf_vlan_add_reject(struct iavf_adapter *adapter)
+{
+	struct iavf_vlan_filter *f, *ftmp;
+
+	spin_lock_bh(&adapter->mac_vlan_list_lock);
+	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
+		if (f->is_new_vlan) {
+			if (f->vlan.tpid == ETH_P_8021Q)
+				clear_bit(f->vlan.vid,
+					  adapter->vsi.active_cvlans);
+			else
+				clear_bit(f->vlan.vid,
+					  adapter->vsi.active_svlans);
+
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
@@ -683,6 +710,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 				vvfl->vlan_id[i] = f->vlan.vid;
 				i++;
 				f->add = false;
+				f->is_new_vlan = true;
 				if (i == count)
 					break;
 			}
@@ -695,10 +723,18 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 		iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_VLAN, (u8 *)vvfl, len);
 		kfree(vvfl);
 	} else {
+		u16 max_vlans = adapter->vlan_v2_caps.filtering.max_filters;
+		u16 current_vlans = iavf_get_num_vlans_added(adapter);
 		struct virtchnl_vlan_filter_list_v2 *vvfl_v2;
 
 		adapter->current_op = VIRTCHNL_OP_ADD_VLAN_V2;
 
+		if ((count + current_vlans) > max_vlans &&
+		    current_vlans < max_vlans) {
+			count = max_vlans - iavf_get_num_vlans_added(adapter);
+			more = true;
+		}
+
 		len = sizeof(*vvfl_v2) + ((count - 1) *
 					  sizeof(struct virtchnl_vlan_filter));
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
@@ -725,6 +761,9 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 					&adapter->vlan_v2_caps.filtering.filtering_support;
 				struct virtchnl_vlan *vlan;
 
+				if (i == count)
+					break;
+
 				/* give priority over outer if it's enabled */
 				if (filtering_support->outer)
 					vlan = &vvfl_v2->filters[i].outer;
@@ -736,8 +775,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 
 				i++;
 				f->add = false;
-				if (i == count)
-					break;
+				f->is_new_vlan = true;
 			}
 		}
 
@@ -2080,6 +2118,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			 */
 			iavf_netdev_features_vlan_strip_set(netdev, true);
 			break;
+		case VIRTCHNL_OP_ADD_VLAN_V2:
+			iavf_vlan_add_reject(adapter);
+			dev_warn(&adapter->pdev->dev, "Failed to add VLAN filter, error %s\n",
+				 iavf_stat_str(&adapter->hw, v_retval));
+			break;
 		default:
 			dev_err(&adapter->pdev->dev, "PF returned error %d (%s) to our request %d\n",
 				v_retval, iavf_stat_str(&adapter->hw, v_retval),
@@ -2332,6 +2375,24 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		spin_unlock_bh(&adapter->adv_rss_lock);
 		}
 		break;
+	case VIRTCHNL_OP_ADD_VLAN_V2: {
+		struct iavf_vlan_filter *f;
+
+		spin_lock_bh(&adapter->mac_vlan_list_lock);
+		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
+			if (f->is_new_vlan) {
+				f->is_new_vlan = false;
+				if (f->vlan.tpid == ETH_P_8021Q)
+					set_bit(f->vlan.vid,
+						adapter->vsi.active_cvlans);
+				else
+					set_bit(f->vlan.vid,
+						adapter->vsi.active_svlans);
+			}
+		}
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
+		}
+		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 		/* PF enabled vlan strip on this VF.
 		 * Update netdev->features if needed to be in sync with ethtool.
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
