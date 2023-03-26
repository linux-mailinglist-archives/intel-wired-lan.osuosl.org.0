Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD406C9624
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 17:27:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B2A7410C6;
	Sun, 26 Mar 2023 15:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B2A7410C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679844432;
	bh=JO3HQvaHiiKLudG9jvObJJT9iymaCF158dGxI3dmR2Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fbUG/RUNBFNrwjXIbrt9JMzAcEBg3xY9d5taQMpAUWvK3PEZ7ExF++nl5ZycguoWp
	 XWrInmkNIIm9enxzaacwO/xNzTa2iDxj3/a96RXLA4uTW6ylHB5JSBt8IhRc2pVIzN
	 JzAPxXTOiomGcj5qn7xMNuhi6hZgeT/qCpimbyLtZ4nukXRIiL0kUhDED6u6aCmTFV
	 VMwuWzvDt+ShZYGruT7ur9yZFA9BCIckIsgshT8QbisJWw72A06e0Cv9SrsFfib9ls
	 fEE9Wj5oQU8c3sXQ4tcullvZs9tHX3GWgmZ17TQARCpOoWuYXR1dZ+maBDXk898tIo
	 uSr92PnWNYd5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0yfq41pwy70m; Sun, 26 Mar 2023 15:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1B8A410C5;
	Sun, 26 Mar 2023 15:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1B8A410C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8B301BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD63160DE5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD63160DE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1AY-uZy5TQ1i for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 15:26:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7BBF60E78
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7BBF60E78
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="402697699"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="402697699"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 08:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="794033884"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="794033884"
Received: from jsanche3-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.37.83])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 08:26:55 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 26 Mar 2023 09:26:36 -0600
Message-Id: <20230326152636.2168751-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326152636.2168751-1-ahmed.zaki@intel.com>
References: <20230326152636.2168751-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679844417; x=1711380417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DIAIfS/Pc4AjiRlO8cGTgBuImskSdI12ICHDDHAU2lQ=;
 b=dSx1oeOtL4m3XgRsjK61/1WLF6+ZlcEaGws8zUpqMjlT9YfzPtDjLQqQ
 6Rd94xJIQc8/vNr9klGbQI1MznU+oYkDkGhq3A7a9djQ5kZKJHnOQLpHq
 J9N+kFuScspSTrhLphrlNMmbGGpv0qbyBY95tIq24KFRuP8lXQ3S14dLZ
 tA/ug5Th5Pu5uUh6tOPInw3kWnoVXlRPd90tDrSpHXo4xp7RcKrjpqPkt
 sDSepcI8Q4ilJLOs2SnmywuT68sqzeMOz0z51azmkgnu336QfW2iz04gX
 WWat6GlTT/+IJ3HE64LvVpOFEMi3v4nV0FZXPSd3JMoi9Kgm5Fk37kWhQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dSx1oeOt
Subject: [Intel-wired-lan] [PATCH net 2/2] iavf: remove active_cvlans and
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
index 00262f721761..7ff9e6210772 100644
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
 	__IAVF_VLAN_ADD,	/* filter needs to be added */
 	__IAVF_VLAN_IS_NEW,	/* filter is new, wait for PF answer */
 	__IAVF_VLAN_ACTIVE,	/* filter is accepted by PF */
-	__IAVF_VLAN_REMOVE,	/* filter needs to be removed */
+	__IAVF_VLAN_DISABLE,	/* filter needs to be deleted by PF, then marked INACTIVE */
+	__IAVF_VLAN_INACTIVE,	/* filter is inactive, we are in IFF_DOWN */
+	__IAVF_VLAN_REMOVE,	/* filter needs to be removed from list */
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
index 5e3429677daa..6627099c081b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -792,6 +792,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
 
 		list_add_tail(&f->list, &adapter->vlan_filter_list);
 		f->state = __IAVF_VLAN_ADD;
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
+		if (f->state == __IAVF_VLAN_INACTIVE)
+			f->state = __IAVF_VLAN_ADD;
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
-		if (vlf->state == __IAVF_VLAN_ADD) {
-			list_del(&vlf->list);
-			kfree(vlf);
-		} else {
-			vlf->state = __IAVF_VLAN_REMOVE;
-		}
-	}
+				 list)
+		vlf->state = __IAVF_VLAN_DISABLE;
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
index 9ba83f0d212e..59c1e39e2d23 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -643,15 +643,9 @@ static void iavf_vlan_add_reject(struct iavf_adapter *adapter)
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
 		if (f->state == __IAVF_VLAN_IS_NEW) {
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
-		} else if (f->state == __IAVF_VLAN_REMOVE) {
+			adapter->num_vlan_filters--;
+		} else if (f->state == __IAVF_VLAN_DISABLE &&
+		    !VLAN_FILTERING_ALLOWED(adapter)) {
+			f->state = __IAVF_VLAN_INACTIVE;
+		} else if (f->state == __IAVF_VLAN_REMOVE ||
+			   f->state == __IAVF_VLAN_DISABLE) {
 			count++;
 		}
 	}
@@ -856,11 +855,18 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		vvfl->vsi_id = adapter->vsi_res->vsi_id;
 		vvfl->num_elements = count;
 		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-			if (f->state == __IAVF_VLAN_REMOVE) {
+			if (f->state == __IAVF_VLAN_DISABLE) {
 				vvfl->vlan_id[i] = f->vlan.vid;
+				f->state = __IAVF_VLAN_INACTIVE;
 				i++;
+				if (i == count)
+					break;
+			} else if (f->state == __IAVF_VLAN_REMOVE) {
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
-			if (f->state == __IAVF_VLAN_REMOVE) {
+			if (f->state == __IAVF_VLAN_DISABLE ||
+			    f->state == __IAVF_VLAN_REMOVE) {
 				struct virtchnl_vlan_supported_caps *filtering_support =
 					&adapter->vlan_v2_caps.filtering.filtering_support;
 				struct virtchnl_vlan *vlan;
@@ -914,8 +921,13 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 				vlan->tci = f->vlan.vid;
 				vlan->tpid = f->vlan.tpid;
 
-				list_del(&f->list);
-				kfree(f);
+				if (f->state == __IAVF_VLAN_DISABLE) {
+					f->state = __IAVF_VLAN_INACTIVE;
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
-			if (f->state == __IAVF_VLAN_IS_NEW) {
+			if (f->state == __IAVF_VLAN_IS_NEW)
 				f->state = __IAVF_VLAN_ACTIVE;
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
