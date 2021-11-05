Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EC74466EC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 17:23:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4FDD8827CE;
	Fri,  5 Nov 2021 16:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7yoHikk47cU; Fri,  5 Nov 2021 16:23:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D2DA80CC0;
	Fri,  5 Nov 2021 16:23:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 038291C1148
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 16:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F372B82690
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 16:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id va2jXo1zVJqo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 16:23:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F09C880CC0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 16:23:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10159"; a="231777555"
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="231777555"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 09:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="490383351"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.129])
 by orsmga007.jf.intel.com with ESMTP; 05 Nov 2021 09:23:14 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Nov 2021 09:20:25 -0700
Message-Id: <20211105162025.23912-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] iavf: Fix VLAN feature flags after VFR
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

When a VF goes through a reset, it's possible for the VF's feature set
to change. For example it may lose the VIRTCHNL_VF_OFFLOAD_VLAN
capability after VF reset. Unfortunately, the driver doesn't correctly
deal with this situation and errors are seen from downing/upping the
interface and/or moving the interface in/out of a network namespace.

When setting the interface down/up we see the following errors after the
VIRTCHNL_VF_OFFLOAD_VLAN capability was taken away from the VF:

ice 0000:51:00.1: VF 1 failed opcode 12, retval: -64 iavf 0000:51:09.1:
Failed to add VLAN filter, error IAVF_NOT_SUPPORTED ice 0000:51:00.1: VF
1 failed opcode 13, retval: -64 iavf 0000:51:09.1: Failed to delete VLAN
filter, error IAVF_NOT_SUPPORTED

These add/delete errors are happening because the VLAN filters are
tracked internally to the driver and regardless of the VLAN_ALLOWED()
setting the driver tries to delete/re-add them over virtchnl.

Fix the delete failure by making sure to delete any VLAN filter tracking
in the driver when a removal request is made, while preventing the
virtchnl request.  This makes it so the driver's VLAN list is up to date
and the errors are

Fix the add failure by making sure the check for VLAN_ALLOWED() during
reset is done after the VF receives its capability list from the PF via
VIRTCHNL_OP_GET_VF_RESOURCES. If VLAN functionality is not allowed, then
prevent requesting re-adding the filters over virtchnl.

When moving the interface into a network namespace we see the following
errors after the VIRTCHNL_VF_OFFLOAD_VLAN capability was taken away from
the VF:

iavf 0000:51:09.1 enp81s0f1v1: NIC Link is Up Speed is 25 Gbps Full Duplex
iavf 0000:51:09.1 temp_27: renamed from enp81s0f1v1
iavf 0000:51:09.1 mgmt: renamed from temp_27
iavf 0000:51:09.1 dev27: set_features() failed (-22); wanted 0x020190001fd54833, left 0x020190001fd54bb3

These errors are happening because we aren't correctly updating the
netdev capabilities and dealing with ndo_fix_features() and
ndo_set_features() correctly.

Fix this by only reporting errors in the driver's ndo_set_features()
callback when VIRTCHNL_VF_OFFLOAD_VLAN is not allowed and any attempt to
enable the VLAN features is made. Also, make sure to disable VLAN
insertion, filtering, and stripping since the VIRTCHNL_VF_OFFLOAD_VLAN
flag applies to all of them and not just VLAN stripping.

Also, after we process the capabilities in the VF reset path, make sure
to call netdev_update_features() in case the capabilities have changed
in order to update the netdev's feature set to match the VF's actual
capabilities.

Lastly, make sure to always report success on VLAN filter delete when
VIRTCHNL_VF_OFFLOAD_VLAN is not supported. The changed flow in
iavf_del_vlans() allows the stack to delete previosly existing VLAN
filters even if VLAN filtering is not allowed. This makes it so the VLAN
filter list is up to date.

Fixes: 8774370d268f ("i40e/i40evf: support for VF VLAN tag stripping control")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 33 ++++++--------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 45 +++++++++++++++++--
 3 files changed, 56 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e66a7e455ce1..4d62231ec6b5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -505,4 +505,5 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
 void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
 struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 					const u8 *macaddr);
+int iavf_lock_timeout(struct mutex *lock, unsigned int msecs);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 814c87715f68..a655073af6c7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -147,7 +147,7 @@ enum iavf_status iavf_free_virt_mem_d(struct iavf_hw *hw,
  *
  * Returns 0 on success, negative on failure
  **/
-static int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
+int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
 {
 	unsigned int wait, delay = 10;
 
@@ -717,13 +717,11 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, u16 vlan)
  **/
 static void iavf_restore_filters(struct iavf_adapter *adapter)
 {
-	/* re-add all VLAN filters */
-	if (VLAN_ALLOWED(adapter)) {
-		u16 vid;
+	u16 vid;
 
-		for_each_set_bit(vid, adapter->vsi.active_vlans, VLAN_N_VID)
-			iavf_add_vlan(adapter, vid);
-	}
+	/* re-add all VLAN filters */
+	for_each_set_bit(vid, adapter->vsi.active_vlans, VLAN_N_VID)
+		iavf_add_vlan(adapter, vid);
 }
 
 /**
@@ -758,9 +756,6 @@ static int iavf_vlan_rx_kill_vid(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	if (!VLAN_ALLOWED(adapter))
-		return -EIO;
-
 	iavf_del_vlan(adapter, vid);
 	clear_bit(vid, adapter->vsi.active_vlans);
 
@@ -2191,7 +2186,6 @@ static void iavf_reset_task(struct work_struct *work)
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
 	struct iavf_mac_filter *f, *ftmp;
-	struct iavf_vlan_filter *vlf;
 	struct iavf_cloud_filter *cf;
 	u32 reg_val;
 	int i = 0, err;
@@ -2332,11 +2326,6 @@ static void iavf_reset_task(struct work_struct *work)
 	list_for_each_entry(f, &adapter->mac_filter_list, list) {
 		f->add = true;
 	}
-	/* re-add all VLAN filters */
-	list_for_each_entry(vlf, &adapter->vlan_filter_list, list) {
-		vlf->add = true;
-	}
-
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
 	/* check if TCs are running and re-add all cloud filters */
@@ -2350,7 +2339,6 @@ static void iavf_reset_task(struct work_struct *work)
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
 
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
-	adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
 	iavf_misc_irq_enable(adapter);
 
@@ -3465,11 +3453,16 @@ static int iavf_set_features(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	/* Don't allow changing VLAN_RX flag when adapter is not capable
-	 * of VLAN offload
+	/* Don't allow enabling VLAN features when adapter is not capable
+	 * of VLAN offload/filtering
 	 */
 	if (!VLAN_ALLOWED(adapter)) {
-		if ((netdev->features ^ features) & NETIF_F_HW_VLAN_CTAG_RX)
+		netdev->hw_features &= ~(NETIF_F_HW_VLAN_CTAG_RX |
+					 NETIF_F_HW_VLAN_CTAG_TX |
+					 NETIF_F_HW_VLAN_CTAG_FILTER);
+		if (features & (NETIF_F_HW_VLAN_CTAG_RX |
+				NETIF_F_HW_VLAN_CTAG_TX |
+				NETIF_F_HW_VLAN_CTAG_FILTER))
 			return -EINVAL;
 	} else if ((netdev->features ^ features) & NETIF_F_HW_VLAN_CTAG_RX) {
 		if (features & NETIF_F_HW_VLAN_CTAG_RX)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 8c3f0f77cb57..26ae289a0524 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -607,7 +607,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 		if (f->add)
 			count++;
 	}
-	if (!count) {
+	if (!count || !VLAN_ALLOWED(adapter)) {
 		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 		return;
@@ -673,9 +673,19 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
-	list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-		if (f->remove)
+	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
+		/* since VLAN capabilities are not allowed, we dont want to send
+		 * a VLAN delete request because it will most likely fail and
+		 * create unnecessary errors/noise, so just free the VLAN
+		 * filters marked for removal to enable bailing out before
+		 * sending a virtchnl message
+		 */
+		if (f->remove && !VLAN_ALLOWED(adapter)) {
+			list_del(&f->list);
+			kfree(f);
+		} else if (f->remove) {
 			count++;
+		}
 	}
 	if (!count) {
 		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
@@ -1722,8 +1732,37 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		}
 		spin_lock_bh(&adapter->mac_vlan_list_lock);
 		iavf_add_filter(adapter, adapter->hw.mac.addr);
+
+		if (VLAN_ALLOWED(adapter)) {
+			if (!list_empty(&adapter->vlan_filter_list)) {
+				struct iavf_vlan_filter *vlf;
+
+				/* re-add all VLAN filters over virtchnl */
+				list_for_each_entry(vlf,
+						    &adapter->vlan_filter_list,
+						    list)
+					vlf->add = true;
+
+				adapter->aq_required |=
+					IAVF_FLAG_AQ_ADD_VLAN_FILTER;
+			}
+		}
+
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 		iavf_process_config(adapter);
+
+		/* unlock crit_lock before acquiring rtnl_lock as other
+		 * processes holding rtnl_lock could be waiting for the same
+		 * crit_lock
+		 */
+		mutex_unlock(&adapter->crit_lock);
+		rtnl_lock();
+		netdev_update_features(adapter->netdev);
+		rtnl_unlock();
+		if (iavf_lock_timeout(&adapter->crit_lock, 10000))
+			dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n",
+				 __FUNCTION__);
+
 		}
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
