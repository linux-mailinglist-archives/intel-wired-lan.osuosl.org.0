Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0192B39D531
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jun 2021 08:43:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84FB640236;
	Mon,  7 Jun 2021 06:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6tOp9xr2WEA0; Mon,  7 Jun 2021 06:43:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 078B44019B;
	Mon,  7 Jun 2021 06:43:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56B791BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jun 2021 06:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4379740361
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jun 2021 06:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1O2Q0m194vLE for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jun 2021 06:43:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CD5E40368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jun 2021 06:43:16 +0000 (UTC)
IronPort-SDR: VU1JnEqZfWdoicTiNE1zzzwnVhQq/ZqdZCLAV3qaVYy91dOfuE8FJ7on7UOExl90p2lyW6pYJp
 QwDdEvWZ1m3Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="204541005"
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="204541005"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2021 23:43:15 -0700
IronPort-SDR: e69GvhjFpH4Ub6Mza5nYMRwBgvvZnYlymjENhVKKHhvUlLPOxBVafrclMiNmWuem09lrDWk48i
 iGVuz9AyMALw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="401593123"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2021 23:43:14 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Jun 2021 08:43:38 +0200
Message-Id: <20210607064338.252336-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for ndo
 set VLANs
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
 Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VLANs set by ndo, were not accounted.
Implement placeholder, by which driver can account VLANs set by
ndo. Ensure that once PF changes trunk, every guest filter
is removed from the list 'vm_vlan_list'.
Implement logic for deletion/addition of guest(from VM) filters.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 131 ++++++++++++++++--
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   9 ++
 2 files changed, 130 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index edfdce5f6..0fba4f1b4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -986,6 +986,81 @@ static void i40e_disable_vf_mappings(struct i40e_vf *vf)
 	i40e_flush(hw);
 }
 
+/**
+ * i40e_add_vmvlan_to_list
+ * @vf: pointer to the VF info
+ * @vfl:  pointer to the VF VLAN tag filters list
+ * @vlan_idx: vlan_id index in VLAN tag filters list
+ *
+ * add VLAN tag into the VLAN list for VM
+ **/
+static i40e_status
+i40e_add_vmvlan_to_list(struct i40e_vf *vf,
+			struct virtchnl_vlan_filter_list *vfl,
+			int vlan_idx)
+{
+	struct i40e_vm_vlan *vlan_elem;
+
+	vlan_elem = kzalloc(sizeof(*vlan_elem), GFP_KERNEL);
+	if (!vlan_elem)
+		return I40E_ERR_NO_MEMORY;
+	vlan_elem->vlan = vfl->vlan_id[vlan_idx];
+	vlan_elem->vsi_id = vfl->vsi_id;
+	INIT_LIST_HEAD(&vlan_elem->list);
+	vf->num_vlan++;
+	list_add(&vlan_elem->list, &vf->vm_vlan_list);
+	return I40E_SUCCESS;
+}
+
+/**
+ * i40e_del_vmvlan_from_list
+ * @vsi: pointer to the VSI structure
+ * @vf: pointer to the VF info
+ * @vlan: VLAN tag to be removed from the list
+ *
+ * delete VLAN tag from the VLAN list for VM
+ **/
+static void i40e_del_vmvlan_from_list(struct i40e_vsi *vsi,
+				      struct i40e_vf *vf, u16 vlan)
+{
+	struct i40e_vm_vlan *entry, *tmp;
+
+	list_for_each_entry_safe(entry, tmp,
+				 &vf->vm_vlan_list, list) {
+		if (vlan == entry->vlan) {
+			i40e_vsi_kill_vlan(vsi, vlan);
+			vf->num_vlan--;
+			list_del(&entry->list);
+			kfree(entry);
+			break;
+		}
+	}
+}
+
+/**
+ * i40e_free_vmvlan_list
+ * @vsi: pointer to the VSI structure
+ * @vf: pointer to the VF info
+ *
+ * remove whole list of VLAN tags for VM
+ **/
+static void i40e_free_vmvlan_list(struct i40e_vsi *vsi, struct i40e_vf *vf)
+{
+	struct i40e_vm_vlan *entry, *tmp;
+
+	if (list_empty(&vf->vm_vlan_list))
+		return;
+
+	list_for_each_entry_safe(entry, tmp,
+				 &vf->vm_vlan_list, list) {
+		if (vsi)
+			i40e_vsi_kill_vlan(vsi, entry->vlan);
+		list_del(&entry->list);
+		kfree(entry);
+	}
+	vf->num_vlan = 0;
+}
+
 /**
  * i40e_free_vf_res
  * @vf: pointer to the VF info
@@ -1061,6 +1136,10 @@ static void i40e_free_vf_res(struct i40e_vf *vf)
 		wr32(hw, reg_idx, reg);
 		i40e_flush(hw);
 	}
+
+	i40e_free_vmvlan_list(NULL, vf);
+
+
 	/* reset some of the state variables keeping track of the resources */
 	vf->num_queue_pairs = 0;
 	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
@@ -1766,6 +1845,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16 num_alloc_vfs)
 
 		set_bit(I40E_VF_STATE_PRE_ENABLE, &vfs[i].vf_states);
 
+		INIT_LIST_HEAD(&vfs[i].vm_vlan_list);
 	}
 	pf->num_alloc_vfs = num_alloc_vfs;
 
@@ -2787,6 +2867,28 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 	return 0;
 }
 
+/**
+ * i40e_check_vf_vlan_cap
+ * @vf: pointer to the VF info
+ *
+ * Check if VF can add another VLAN filter.
+ */
+static i40e_status
+i40e_check_vf_vlan_cap(struct i40e_vf *vf)
+{
+        struct i40e_pf *pf = vf->pf;
+
+        if ((vf->num_vlan + 1 > I40E_VC_MAX_VLAN_PER_VF) &&
+            !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
+                dev_err(&pf->pdev->dev,
+                        "VF is not trusted, switch the VF to trusted to add more VLAN addresses\n");
+
+                return I40E_ERR_CONFIG;
+        }
+
+        return I40E_SUCCESS;
+}
+
 /**
  * i40e_vc_add_mac_addr_msg
  * @vf: pointer to the VF info
@@ -2944,10 +3046,11 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
 {
 	struct virtchnl_vlan_filter_list *vfl =
 	    (struct virtchnl_vlan_filter_list *)msg;
+	i40e_status aq_ret = I40E_SUCCESS;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
-	int i;
+	int ret;
+	u16 i;
 
 	if ((vf->num_vlan >= I40E_VC_MAX_VLAN_PER_VF) &&
 	    !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
@@ -2976,12 +3079,19 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	i40e_vlan_stripping_enable(vsi);
+
 	for (i = 0; i < vfl->num_elements; i++) {
-		/* add new VLAN filter */
-		int ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
-		if (!ret)
-			vf->num_vlan++;
+		aq_ret = i40e_check_vf_vlan_cap(vf);
+		if (aq_ret)
+			goto error_param;
+
+		ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
 
+		if (!ret && vfl->vlan_id[i]) {
+			aq_ret = i40e_add_vmvlan_to_list(vf, vfl, i);
+			if (aq_ret)
+				goto error_param;
+		}
 		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
 			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw, vsi->seid,
 							   true,
@@ -3015,10 +3125,10 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 {
 	struct virtchnl_vlan_filter_list *vfl =
 	    (struct virtchnl_vlan_filter_list *)msg;
+	i40e_status aq_ret = I40E_SUCCESS;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
-	int i;
+	u16 i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) {
@@ -3041,8 +3151,7 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	for (i = 0; i < vfl->num_elements; i++) {
-		i40e_vsi_kill_vlan(vsi, vfl->vlan_id[i]);
-		vf->num_vlan--;
+		i40e_del_vmvlan_from_list(vsi, vf, vfl->vlan_id[i]);
 
 		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
 			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw, vsi->seid,
@@ -4200,6 +4309,8 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	}
 	ether_addr_copy(vf->default_lan_addr.addr, mac);
 
+	i40e_free_vmvlan_list(NULL, vf);
+
 	if (is_zero_ether_addr(mac)) {
 		vf->pf_set_mac = false;
 		dev_info(&pf->pdev->dev, "Removing MAC on VF %d\n", vf_id);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 49575a640..6ba48b398 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -62,6 +62,13 @@ struct i40evf_channel {
 	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
 };
 
+/* used for VLAN list 'vm_vlan_list' by VM for trusted and untrusted VF */
+struct i40e_vm_vlan {
+	struct list_head list;
+	s16 vlan;
+	u16 vsi_id;
+};
+
 /* VF information structure */
 struct i40e_vf {
 	struct i40e_pf *pf;
@@ -103,6 +110,8 @@ struct i40e_vf {
 	bool spoofchk;
 	u16 num_vlan;
 
+	/* VLAN list created by VM for trusted and untrusted VF */
+	struct list_head vm_vlan_list;
 	/* ADq related variables */
 	bool adq_enabled; /* flag to enable adq */
 	u8 num_tc;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
