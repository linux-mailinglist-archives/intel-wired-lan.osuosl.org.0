Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE45B6DA4C2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Apr 2023 23:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AD25844AC;
	Thu,  6 Apr 2023 21:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AD25844AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680816962;
	bh=ayvULA4IjJdB7s7glcCVpdt8XgsSjWo/2i/l2SNbdnY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oEquxAWYsuFBknpGWBsZQQF84XEYLo6BP36OBo2ysiQFQ3J7P28mHK12tTUQKrNax
	 L5CCCvxqUFfvQhWO9fH7RZPWBbzXD6EXFKX9ridGU8zG5sSHag05mEseUTUTPkdNTO
	 sA9iUztfRJIJzjpCGU2FcF1puM9H3HW3iTmEf+tfrESkmUZpGzn9A2OBgh2IenfvfA
	 yBq55DaINEVptxSx6jWkl7jFcAxsUTmkvyyACp9f4ZwujC2B/SLoBjXeHyhjYGQXkD
	 WgfAL3fxDyUWS6I0bw+0bI1RChNgdHDaoBTQaemL8aw+b4+i4FtYhPtC1L+eELnTL2
	 b2kPbvW1y1KnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQSOGDgj86lU; Thu,  6 Apr 2023 21:36:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 934B3844AA;
	Thu,  6 Apr 2023 21:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 934B3844AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 353AF1C2D97
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 21:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06DC841E96
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 21:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06DC841E96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubpGWRH7p9jW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Apr 2023 21:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6CBF41F5D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6CBF41F5D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 21:35:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="322496116"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="322496116"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 14:35:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="756476397"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="756476397"
Received: from unisar-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.43.240])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 14:35:43 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Apr 2023 15:35:28 -0600
Message-Id: <20230406213528.266368-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230406213528.266368-1-ahmed.zaki@intel.com>
References: <20230406213528.266368-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680816950; x=1712352950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4aVlY6McIwKsfE6jsQ3VaXsXNSG3y1rj7N8YzTXG6tU=;
 b=S4Nimx+45SjwApvQYzapiGO/UpPBVpG9bVavIOZBIxq3fAqdscR9/GnT
 VZmfO68Bn7pDPBJpUAdLEoahy8IvDgwstJ5J1e4cwffjeyZDmCPqSxK+Z
 JH+mMRW1DNIwwjizdklGlU2fVM+1DYWLigOaufqDiFEbKwSTZLsCEPjmC
 LZUnJ00ZKRuX1CL9WIUSJ/kDwnQiMQXuCWTHXrBADYIDDesnyw9h66J7P
 ki9D9n5hryPFfOI6Kr8fICUcH5WE2pa3u+m1uXSFqypROIJOwp3t4anBe
 TyrID7nzU9QYR+kH0CPyM5L4vog3WDQNxNIoiKiQWhXu6T/D6JgXHz7Xs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S4Nimx+4
Subject: [Intel-wired-lan] [PATCH net v2 2/2] iavf: remove active_cvlans and
 active_svlans bitmaps
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

The VLAN filters info is currently being held in a list and 2 bitmaps
(active_cvlans and active_svlans). We are experiencing some racing where
data is not in sync in the list and bitmaps. For example, the VLAN is
initially added to the list but only when the PF replies, it is added to
the bitmap. If a user adds many V2 VLANS before the PF responds:

    while [ $((i++)) ]
        ip l add l eth0 name eth0.$i type vlan id $i

we might end up with more VLAN list entries than the designated limit.
Also, The "ip link show" will show more links added than the PF limit.

On the other and, the bitmaps are only used to check the number of VLAN
filters and to re-enable the filters when the interface goes from DOWN to
UP.

This patch gets rid of the bitmaps and uses the list only. To do that,
the states of the VLAN filter are modified:
1 - IAVF_VLAN_REMOVE: the entry needs to be totally removed after informing
  the PF. This is the "ip link del eth0.$i" path.
2 - IAVF_VLAN_DISABLE: (new) the netdev went down. The filter needs to be
  removed from the PF and then marked INACTIVE.
3 - IAVF_VLAN_INACTIVE: (new) no PF filter exists, but the user did not
  delete the VLAN.

Fixes: 48ccc43ecf109 ("iavf: Add support VIRTCHNL_VF_OFFLOAD_VLAN_V2 during netdev config")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  7 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 40 +++++++----------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 45 ++++++++++---------
 3 files changed, 45 insertions(+), 47 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index baf6dd8dc93d..9abaff1f2aff 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -58,8 +58,6 @@ enum iavf_vsi_state_t {
 struct iavf_vsi {
 	struct iavf_adapter *back;
 	struct net_device *netdev;
-	unsigned long active_cvlans[BITS_TO_LONGS(VLAN_N_VID)];
-	unsigned long active_svlans[BITS_TO_LONGS(VLAN_N_VID)];
 	u16 seid;
 	u16 id;
 	DECLARE_BITMAP(state, __IAVF_VSI_STATE_SIZE__);
@@ -162,7 +160,9 @@ enum iavf_vlan_state_t {
 	IAVF_VLAN_ADD,		/* filter needs to be added */
 	IAVF_VLAN_IS_NEW,	/* filter is new, wait for PF answer */
 	IAVF_VLAN_ACTIVE,	/* filter is accepted by PF */
-	IAVF_VLAN_REMOVE,	/* filter needs to be removed */
+	IAVF_VLAN_DISABLE,	/* filter needs to be deleted by PF, then marked INACTIVE */
+	IAVF_VLAN_INACTIVE,	/* filter is inactive, we are in IFF_DOWN */
+	IAVF_VLAN_REMOVE,	/* filter needs to be removed from list */
 };
 
 struct iavf_vlan_filter {
@@ -260,6 +260,7 @@ struct iavf_adapter {
 	wait_queue_head_t vc_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
+	int num_vlan_filters;
 	struct list_head mac_filter_list;
 	struct mutex crit_lock;
 	struct mutex client_lock;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index fe9798e4b4ac..2de4baff4c20 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -792,6 +792,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
 
 		list_add_tail(&f->list, &adapter->vlan_filter_list);
 		f->state = IAVF_VLAN_ADD;
+		adapter->num_vlan_filters++;
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 	}
 
@@ -828,14 +829,18 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
  **/
 static void iavf_restore_filters(struct iavf_adapter *adapter)
 {
-	u16 vid;
+	struct iavf_vlan_filter *f;
 
 	/* re-add all VLAN filters */
-	for_each_set_bit(vid, adapter->vsi.active_cvlans, VLAN_N_VID)
-		iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021Q));
+	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
-	for_each_set_bit(vid, adapter->vsi.active_svlans, VLAN_N_VID)
-		iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021AD));
+	list_for_each_entry(f, &adapter->vlan_filter_list, list) {
+		if (f->state == IAVF_VLAN_INACTIVE)
+			f->state = IAVF_VLAN_ADD;
+	}
+
+	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+	adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 }
 
 /**
@@ -844,8 +849,7 @@ static void iavf_restore_filters(struct iavf_adapter *adapter)
  */
 u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter)
 {
-	return bitmap_weight(adapter->vsi.active_cvlans, VLAN_N_VID) +
-		bitmap_weight(adapter->vsi.active_svlans, VLAN_N_VID);
+	return adapter->num_vlan_filters;
 }
 
 /**
@@ -928,11 +932,6 @@ static int iavf_vlan_rx_kill_vid(struct net_device *netdev,
 		return 0;
 
 	iavf_del_vlan(adapter, IAVF_VLAN(vid, be16_to_cpu(proto)));
-	if (proto == cpu_to_be16(ETH_P_8021Q))
-		clear_bit(vid, adapter->vsi.active_cvlans);
-	else
-		clear_bit(vid, adapter->vsi.active_svlans);
-
 	return 0;
 }
 
@@ -1293,16 +1292,11 @@ static void iavf_clear_mac_vlan_filters(struct iavf_adapter *adapter)
 		}
 	}
 
-	/* remove all VLAN filters */
+	/* disable all VLAN filters */
 	list_for_each_entry_safe(vlf, vlftmp, &adapter->vlan_filter_list,
-				 list) {
-		if (vlf->state == IAVF_VLAN_ADD) {
-			list_del(&vlf->list);
-			kfree(vlf);
-		} else {
-			vlf->state = IAVF_VLAN_REMOVE;
-		}
-	}
+				 list)
+		vlf->state = IAVF_VLAN_DISABLE;
+
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 }
 
@@ -2914,6 +2908,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 		list_del(&fv->list);
 		kfree(fv);
 	}
+	adapter->num_vlan_filters = 0;
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
@@ -3131,9 +3126,6 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
 	iavf_misc_irq_enable(adapter);
 
-	bitmap_clear(adapter->vsi.active_cvlans, 0, VLAN_N_VID);
-	bitmap_clear(adapter->vsi.active_svlans, 0, VLAN_N_VID);
-
 	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 2);
 
 	/* We were running when the reset started, so we need to restore some
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 5047b4c83718..9afbbdac3590 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -643,15 +643,9 @@ static void iavf_vlan_add_reject(struct iavf_adapter *adapter)
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
 		if (f->state == IAVF_VLAN_IS_NEW) {
-			if (f->vlan.tpid == ETH_P_8021Q)
-				clear_bit(f->vlan.vid,
-					  adapter->vsi.active_cvlans);
-			else
-				clear_bit(f->vlan.vid,
-					  adapter->vsi.active_svlans);
-
 			list_del(&f->list);
 			kfree(f);
+			adapter->num_vlan_filters--;
 		}
 	}
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
@@ -824,7 +818,12 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		    !VLAN_FILTERING_ALLOWED(adapter)) {
 			list_del(&f->list);
 			kfree(f);
-		} else if (f->state == IAVF_VLAN_REMOVE) {
+			adapter->num_vlan_filters--;
+		} else if (f->state == IAVF_VLAN_DISABLE &&
+		    !VLAN_FILTERING_ALLOWED(adapter)) {
+			f->state = IAVF_VLAN_INACTIVE;
+		} else if (f->state == IAVF_VLAN_REMOVE ||
+			   f->state == IAVF_VLAN_DISABLE) {
 			count++;
 		}
 	}
@@ -856,11 +855,18 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		vvfl->vsi_id = adapter->vsi_res->vsi_id;
 		vvfl->num_elements = count;
 		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-			if (f->state == IAVF_VLAN_REMOVE) {
+			if (f->state == IAVF_VLAN_DISABLE) {
 				vvfl->vlan_id[i] = f->vlan.vid;
+				f->state = IAVF_VLAN_INACTIVE;
 				i++;
+				if (i == count)
+					break;
+			} else if (f->state == IAVF_VLAN_REMOVE) {
+				vvfl->vlan_id[i] = f->vlan.vid;
 				list_del(&f->list);
 				kfree(f);
+				adapter->num_vlan_filters--;
+				i++;
 				if (i == count)
 					break;
 			}
@@ -900,7 +906,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
 		vvfl_v2->num_elements = count;
 		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-			if (f->state == IAVF_VLAN_REMOVE) {
+			if (f->state == IAVF_VLAN_DISABLE ||
+			    f->state == IAVF_VLAN_REMOVE) {
 				struct virtchnl_vlan_supported_caps *filtering_support =
 					&adapter->vlan_v2_caps.filtering.filtering_support;
 				struct virtchnl_vlan *vlan;
@@ -914,8 +921,13 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 				vlan->tci = f->vlan.vid;
 				vlan->tpid = f->vlan.tpid;
 
-				list_del(&f->list);
-				kfree(f);
+				if (f->state == IAVF_VLAN_DISABLE) {
+					f->state = IAVF_VLAN_INACTIVE;
+				} else {
+					list_del(&f->list);
+					kfree(f);
+					adapter->num_vlan_filters--;
+				}
 				i++;
 				if (i == count)
 					break;
@@ -2443,15 +2455,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		spin_lock_bh(&adapter->mac_vlan_list_lock);
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-			if (f->state == IAVF_VLAN_IS_NEW) {
+			if (f->state == IAVF_VLAN_IS_NEW)
 				f->state = IAVF_VLAN_ACTIVE;
-				if (f->vlan.tpid == ETH_P_8021Q)
-					set_bit(f->vlan.vid,
-						adapter->vsi.active_cvlans);
-				else
-					set_bit(f->vlan.vid,
-						adapter->vsi.active_svlans);
-			}
 		}
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 		}
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
