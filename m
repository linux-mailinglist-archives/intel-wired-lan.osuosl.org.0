Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EC244A77A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Nov 2021 08:22:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 092E740399;
	Tue,  9 Nov 2021 07:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EjA4NdD5rGI9; Tue,  9 Nov 2021 07:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEEFC4020A;
	Tue,  9 Nov 2021 07:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 204641BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 07:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02CEE401E2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 07:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32AFF_Zy-23F for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Nov 2021 07:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACAA240127
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 07:22:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="219594678"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="219594678"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 23:22:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="533591418"
Received: from amlin-019-051.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.51])
 by orsmga001.jf.intel.com with ESMTP; 08 Nov 2021 23:22:18 -0800
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Nov 2021 08:23:31 +0100
Message-Id: <20211109072331.56673-1-karen.sornek@intel.com>
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
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 102 ++++++++++++++++--
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  10 ++
 2 files changed, 102 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 5a488ce545..cf19e118ee 100644
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
+			u16 vlan_idx)
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
@@ -1061,6 +1136,9 @@ static void i40e_free_vf_res(struct i40e_vf *vf)
 		wr32(hw, reg_idx, reg);
 		i40e_flush(hw);
 	}
+
+	i40e_free_vmvlan_list(NULL, vf);
+
 	/* reset some of the state variables keeping track of the resources */
 	vf->num_queue_pairs = 0;
 	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
@@ -1766,6 +1844,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16 num_alloc_vfs)
 
 		set_bit(I40E_VF_STATE_PRE_ENABLE, &vfs[i].vf_states);
 
+		INIT_LIST_HEAD(&vfs[i].vm_vlan_list);
 	}
 	pf->num_alloc_vfs = num_alloc_vfs;
 
@@ -3027,15 +3106,16 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
 {
 	struct virtchnl_vlan_filter_list *vfl =
 	    (struct virtchnl_vlan_filter_list *)msg;
+	i40e_status aq_ret = I40E_SUCCESS;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
-	int i;
+	u16 i;
 
-	if ((vf->num_vlan >= I40E_VC_MAX_VLAN_PER_VF) &&
+	if ((vf->num_vlan + vfl->num_elements > I40E_VC_MAX_VLAN_PER_VF) &&
 	    !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
 		dev_err(&pf->pdev->dev,
 			"VF is not trusted, switch the VF to trusted to add more VLAN addresses\n");
+		aq_ret = I40E_ERR_CONFIG;
 		goto error_param;
 	}
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
@@ -3059,11 +3139,14 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	i40e_vlan_stripping_enable(vsi);
+
 	for (i = 0; i < vfl->num_elements; i++) {
-		/* add new VLAN filter */
 		int ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
-		if (!ret)
-			vf->num_vlan++;
+		if (!ret && vfl->vlan_id[i]) {
+			aq_ret = i40e_add_vmvlan_to_list(vf, vfl, i);
+			if (aq_ret)
+				goto error_param;
+		}
 
 		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
 			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw, vsi->seid,
@@ -3098,10 +3181,10 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
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
@@ -3124,8 +3207,7 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	for (i = 0; i < vfl->num_elements; i++) {
-		i40e_vsi_kill_vlan(vsi, vfl->vlan_id[i]);
-		vf->num_vlan--;
+		i40e_del_vmvlan_from_list(vsi, vf, vfl->vlan_id[i]);
 
 		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
 			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw, vsi->seid,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 49575a640a..182604bd9a 100644
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
@@ -103,6 +110,9 @@ struct i40e_vf {
 	bool spoofchk;
 	u16 num_vlan;
 
+	/* VLAN list created by VM for trusted and untrusted VF */
+	struct list_head vm_vlan_list;
+
 	/* ADq related variables */
 	bool adq_enabled; /* flag to enable adq */
 	u8 num_tc;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
