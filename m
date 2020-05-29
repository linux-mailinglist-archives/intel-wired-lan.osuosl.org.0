Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB351E89A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 23:10:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26D2F88543;
	Fri, 29 May 2020 21:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CYYrtLMV8MgB; Fri, 29 May 2020 21:10:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91454883D6;
	Fri, 29 May 2020 21:10:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 476BA1BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2020 21:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7AA891FFFE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2020 21:10:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wqX0l+GS-cdj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2020 21:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 50CA422621
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2020 21:10:42 +0000 (UTC)
IronPort-SDR: X/qcMLKoVJ4TVdcHHLZ4xMjIl8ZUjCJXuNMtd8X1rw0ZxmyaW+QuekfxmcgvUnseD2EN2NiIU/
 1LX82Y4qbY8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 14:10:41 -0700
IronPort-SDR: FQatgYaPQBZ7jUOfQ1e9wLojtPOa97ubmfhwdbaC7QgR2qrUUnyqX9YP5nqjyTyqsEVwP9gbyO
 GGxFXBUFIXHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,450,1583222400"; d="scan'208";a="311371037"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by FMSMGA003.fm.intel.com with ESMTP; 29 May 2020 14:10:41 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 May 2020 14:10:39 -0700
Message-Id: <20200529211039.1673605-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2] i40e: Remove scheduling while
 atomic possibility
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

In some occasions task held spinlock, while being rescheduled due to
mutex_lock.  Moved function call outside of atomic context.  Without
this patch there is a race condition, which might result in scheduling
while atomic.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2: fixed trailing whitespace

 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 222 +++++++++++-------
 1 file changed, 135 insertions(+), 87 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 56b9e445732b..539fdb5f4c50 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1107,6 +1107,11 @@ static int i40e_quiesce_vf_pci(struct i40e_vf *vf)
 }
 
 static inline int i40e_getnum_vf_vsi_vlan_filters(struct i40e_vsi *vsi);
+static inline void i40e_get_vlan_list_sync(struct i40e_vsi *vsi, int *num_vlans,
+					   s16 **vlan_list);
+static inline i40e_status
+i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
+		     bool unicast_enable, s16 *vl, int num_vlans);
 
 /**
  * i40e_config_vf_promiscuous_mode
@@ -1123,108 +1128,35 @@ static i40e_status i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
 						   bool allmulti,
 						   bool alluni)
 {
+	i40e_status aq_ret = I40E_SUCCESS;
 	struct i40e_pf *pf = vf->pf;
-	struct i40e_hw *hw = &pf->hw;
-	struct i40e_mac_filter *f;
-	i40e_status aq_ret = 0;
 	struct i40e_vsi *vsi;
-	int bkt;
+	int num_vlans;
+	s16 *vl;
 
 	vsi = i40e_find_vsi_from_id(pf, vsi_id);
 	if (!i40e_vc_isvalid_vsi_id(vf, vsi_id) || !vsi)
 		return I40E_ERR_PARAM;
 
 	if (vf->port_vlan_id) {
-		aq_ret = i40e_aq_set_vsi_mc_promisc_on_vlan(hw, vsi->seid,
-							    allmulti,
-							    vf->port_vlan_id,
-							    NULL);
-		if (aq_ret) {
-			int aq_err = pf->hw.aq.asq_last_status;
-
-			dev_err(&pf->pdev->dev,
-				"VF %d failed to set multicast promiscuous mode err %s aq_err %s\n",
-				vf->vf_id,
-				i40e_stat_str(&pf->hw, aq_ret),
-				i40e_aq_str(&pf->hw, aq_err));
-			return aq_ret;
-		}
-
-		aq_ret = i40e_aq_set_vsi_uc_promisc_on_vlan(hw, vsi->seid,
-							    alluni,
-							    vf->port_vlan_id,
-							    NULL);
-		if (aq_ret) {
-			int aq_err = pf->hw.aq.asq_last_status;
-
-			dev_err(&pf->pdev->dev,
-				"VF %d failed to set unicast promiscuous mode err %s aq_err %s\n",
-				vf->vf_id,
-				i40e_stat_str(&pf->hw, aq_ret),
-				i40e_aq_str(&pf->hw, aq_err));
-		}
+		aq_ret = i40e_set_vsi_promisc(vf, vsi->seid, allmulti,
+					      alluni, &vf->port_vlan_id, 1);
 		return aq_ret;
 	} else if (i40e_getnum_vf_vsi_vlan_filters(vsi)) {
-		hash_for_each(vsi->mac_filter_hash, bkt, f, hlist) {
-			if (f->vlan < 0 || f->vlan > I40E_MAX_VLANID)
-				continue;
-			aq_ret = i40e_aq_set_vsi_mc_promisc_on_vlan(hw,
-								    vsi->seid,
-								    allmulti,
-								    f->vlan,
-								    NULL);
-			if (aq_ret) {
-				int aq_err = pf->hw.aq.asq_last_status;
+		i40e_get_vlan_list_sync(vsi, &num_vlans, &vl);
 
-				dev_err(&pf->pdev->dev,
-					"Could not add VLAN %d to multicast promiscuous domain err %s aq_err %s\n",
-					f->vlan,
-					i40e_stat_str(&pf->hw, aq_ret),
-					i40e_aq_str(&pf->hw, aq_err));
-			}
+		if (!vl)
+			return I40E_ERR_NO_MEMORY;
 
-			aq_ret = i40e_aq_set_vsi_uc_promisc_on_vlan(hw,
-								    vsi->seid,
-								    alluni,
-								    f->vlan,
-								    NULL);
-			if (aq_ret) {
-				int aq_err = pf->hw.aq.asq_last_status;
-
-				dev_err(&pf->pdev->dev,
-					"Could not add VLAN %d to Unicast promiscuous domain err %s aq_err %s\n",
-					f->vlan,
-					i40e_stat_str(&pf->hw, aq_ret),
-					i40e_aq_str(&pf->hw, aq_err));
-			}
-		}
-		return aq_ret;
-	}
-	aq_ret = i40e_aq_set_vsi_multicast_promiscuous(hw, vsi->seid, allmulti,
-						       NULL);
-	if (aq_ret) {
-		int aq_err = pf->hw.aq.asq_last_status;
-
-		dev_err(&pf->pdev->dev,
-			"VF %d failed to set multicast promiscuous mode err %s aq_err %s\n",
-			vf->vf_id,
-			i40e_stat_str(&pf->hw, aq_ret),
-			i40e_aq_str(&pf->hw, aq_err));
+		aq_ret = i40e_set_vsi_promisc(vf, vsi->seid, allmulti, alluni,
+					      vl, num_vlans);
+		kfree(vl);
 		return aq_ret;
 	}
 
-	aq_ret = i40e_aq_set_vsi_unicast_promiscuous(hw, vsi->seid, alluni,
-						     NULL, true);
-	if (aq_ret) {
-		int aq_err = pf->hw.aq.asq_last_status;
-
-		dev_err(&pf->pdev->dev,
-			"VF %d failed to set unicast promiscuous mode err %s aq_err %s\n",
-			vf->vf_id,
-			i40e_stat_str(&pf->hw, aq_ret),
-			i40e_aq_str(&pf->hw, aq_err));
-	}
-
+	/* no VLANs to set on, set on VSI */
+	aq_ret = i40e_set_vsi_promisc(vf, vsi->seid, allmulti, alluni,
+				      NULL, 0);
 	return aq_ret;
 }
 
@@ -1991,6 +1923,122 @@ static inline int i40e_getnum_vf_vsi_vlan_filters(struct i40e_vsi *vsi)
 	return num_vlans;
 }
 
+/**
+ * i40e_get_vlan_list_sync
+ * @vsi: pointer to the VSI
+ * @num_vlans: number of VLANs in mac_filter_hash, returned to caller
+ * @vlan_list: list of VLANs present in mac_filter_hash, returned to caller.
+ *             This array is allocated here, but has to be freed in caller.
+ *
+ * Called to get number of VLANs and VLAN list present in mac_filter_hash.
+ **/
+static inline void i40e_get_vlan_list_sync(struct i40e_vsi *vsi, int *num_vlans,
+					   s16 **vlan_list)
+{
+	struct i40e_mac_filter *f;
+	int bkt;
+	int i = 0;
+
+	spin_lock_bh(&vsi->mac_filter_hash_lock);
+	*num_vlans = i40e_getnum_vf_vsi_vlan_filters(vsi);
+	*vlan_list = kcalloc(*num_vlans, sizeof(**vlan_list),
+			     GFP_ATOMIC);
+	if (!(*vlan_list))
+		goto err;
+
+	hash_for_each(vsi->mac_filter_hash, bkt, f, hlist) {
+		if (f->vlan < 0 || f->vlan > I40E_MAX_VLANID)
+			continue;
+		(*vlan_list)[i++] = f->vlan;
+	}
+err:
+	spin_unlock_bh(&vsi->mac_filter_hash_lock);
+}
+
+/**
+ * i40e_set_vsi_promisc
+ * @vf: pointer to the VF struct
+ * @seid: VSI number
+ * @multi_enable: set MAC L2 layer multicast promiscuous enable/disable
+ *                for a given VLAN
+ * @unicast_enable: set MAC L2 layer unicast promiscuous enable/disable
+ *                  for a given VLAN
+ * @vl: List of VLANs - apply filter for given VLANs
+ * @num_vlans: Number of elements in @vl
+ **/
+static inline i40e_status
+i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
+		     bool unicast_enable, s16 *vl, int num_vlans)
+{
+	struct i40e_pf *pf = vf->pf;
+	struct i40e_hw *hw = &pf->hw;
+	i40e_status aq_ret;
+	int i;
+
+	/* No VLAN to set promisc on, set on VSI */
+	if (!num_vlans || !vl) {
+		aq_ret = i40e_aq_set_vsi_multicast_promiscuous(hw, seid,
+							       multi_enable,
+							       NULL);
+		if (aq_ret) {
+			int aq_err = pf->hw.aq.asq_last_status;
+
+			dev_err(&pf->pdev->dev,
+				"VF %d failed to set multicast promiscuous mode err %s aq_err %s\n",
+				vf->vf_id,
+				i40e_stat_str(&pf->hw, aq_ret),
+				i40e_aq_str(&pf->hw, aq_err));
+
+			return aq_ret;
+		}
+
+		aq_ret = i40e_aq_set_vsi_unicast_promiscuous(hw, seid,
+							     unicast_enable,
+							     NULL, true);
+
+		if (aq_ret) {
+			int aq_err = pf->hw.aq.asq_last_status;
+
+			dev_err(&pf->pdev->dev,
+				"VF %d failed to set unicast promiscuous mode err %s aq_err %s\n",
+				vf->vf_id,
+				i40e_stat_str(&pf->hw, aq_ret),
+				i40e_aq_str(&pf->hw, aq_err));
+		}
+
+		return aq_ret;
+	}
+
+	for (i = 0; i < num_vlans; i++) {
+		aq_ret = i40e_aq_set_vsi_mc_promisc_on_vlan(hw, seid,
+							    multi_enable,
+							    vl[i], NULL);
+		if (aq_ret) {
+			int aq_err = pf->hw.aq.asq_last_status;
+
+			dev_err(&pf->pdev->dev,
+				"VF %d failed to set multicast promiscuous mode err %s aq_err %s\n",
+				vf->vf_id,
+				i40e_stat_str(&pf->hw, aq_ret),
+				i40e_aq_str(&pf->hw, aq_err));
+		}
+
+		aq_ret = i40e_aq_set_vsi_uc_promisc_on_vlan(hw, seid,
+							    unicast_enable,
+							    vl[i], NULL);
+		if (aq_ret) {
+			int aq_err = pf->hw.aq.asq_last_status;
+
+			dev_err(&pf->pdev->dev,
+				"VF %d failed to set unicast promiscuous mode err %s aq_err %s\n",
+				vf->vf_id,
+				i40e_stat_str(&pf->hw, aq_ret),
+				i40e_aq_str(&pf->hw, aq_err));
+		}
+	}
+	return aq_ret;
+}
+
 /**
  * i40e_vc_config_promiscuous_mode_msg
  * @vf: pointer to the VF info
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
