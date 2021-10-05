Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 593E54232E9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 23:34:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54A1040899;
	Tue,  5 Oct 2021 21:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tV8pz3VdjHqM; Tue,  5 Oct 2021 21:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36B704080E;
	Tue,  5 Oct 2021 21:34:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0B51BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 21:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C75F4080E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 21:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wdCCHfqOjgCc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 21:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3B3D40808
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 21:34:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="206671292"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="206671292"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 14:34:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="438884087"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 14:34:42 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Oct 2021 07:14:46 -0700
Message-Id: <20211005141446.33609-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next] ice: Simplify tracking status
 of RDMA support
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

The status of support for RDMA is currently being tracked with two
separate status flags.  This is unnecessary with the current state of
the driver.

Simplify status tracking down to a single flag.

Rename the helper function to denote the RDMA specific status and
universally use the helper function to test the status bit.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
----
v2: change helper function to ice_is_rdma_ena.
    universally use helper function.
---
 drivers/net/ethernet/intel/ice/ice.h      |  3 ---
 drivers/net/ethernet/intel/ice/ice_idc.c  |  6 +++---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_lib.h  |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 13 +++++--------
 5 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3c4f08d20414..453dbc6d2469 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -393,7 +393,6 @@ enum ice_pf_flags {
 	ICE_FLAG_FD_ENA,
 	ICE_FLAG_PTP_SUPPORTED,		/* PTP is supported by NVM */
 	ICE_FLAG_PTP,			/* PTP is enabled by software */
-	ICE_FLAG_AUX_ENA,
 	ICE_FLAG_ADV_FEATURES,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
 	ICE_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
@@ -695,7 +694,6 @@ static inline void ice_set_rdma_cap(struct ice_pf *pf)
 {
 	if (pf->hw.func_caps.common_cap.rdma && pf->num_rdma_msix) {
 		set_bit(ICE_FLAG_RDMA_ENA, pf->flags);
-		set_bit(ICE_FLAG_AUX_ENA, pf->flags);
 		ice_plug_aux_dev(pf);
 	}
 }
@@ -708,6 +706,5 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 {
 	ice_unplug_aux_dev(pf);
 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
-	clear_bit(ICE_FLAG_AUX_ENA, pf->flags);
 }
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index adcc9a251595..cbfdb0efc768 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -79,7 +79,7 @@ int ice_add_rdma_qset(struct ice_pf *pf, struct iidc_rdma_qset_params *qset)
 
 	dev = ice_pf_to_dev(pf);
 
-	if (!test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
+	if (!ice_is_rdma_ena(pf))
 		return -EINVAL;
 
 	vsi = ice_get_main_vsi(pf);
@@ -236,7 +236,7 @@ EXPORT_SYMBOL_GPL(ice_get_qos_params);
  */
 static int ice_reserve_rdma_qvector(struct ice_pf *pf)
 {
-	if (test_bit(ICE_FLAG_RDMA_ENA, pf->flags)) {
+	if (ice_is_rdma_ena(pf)) {
 		int index;
 
 		index = ice_get_res(pf, pf->irq_tracker, pf->num_rdma_msix,
@@ -274,7 +274,7 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 	/* if this PF doesn't support a technology that requires auxiliary
 	 * devices, then gracefully exit
 	 */
-	if (!ice_is_aux_ena(pf))
+	if (!ice_is_rdma_ena(pf))
 		return 0;
 
 	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index dde9802c6c72..1697b9c185d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -631,14 +631,14 @@ bool ice_is_safe_mode(struct ice_pf *pf)
 }
 
 /**
- * ice_is_aux_ena
+ * ice_is_rdma_ena
  * @pf: pointer to the PF struct
  *
- * returns true if AUX devices/drivers are supported, false otherwise
+ * returns true if RDMA is currently supported, false otherwise
  */
-bool ice_is_aux_ena(struct ice_pf *pf)
+bool ice_is_rdma_ena(struct ice_pf *pf)
 {
-	return test_bit(ICE_FLAG_AUX_ENA, pf->flags);
+	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index d5a28bf0fc2c..34fc35b46f50 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -108,7 +108,7 @@ enum ice_status
 ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
 bool ice_is_safe_mode(struct ice_pf *pf);
-bool ice_is_aux_ena(struct ice_pf *pf);
+bool ice_is_rdma_ena(struct ice_pf *pf);
 bool ice_is_dflt_vsi_in_use(struct ice_sw *sw);
 
 bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0d6c143f6653..ef975e180c6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3425,11 +3425,8 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	struct ice_hw_func_caps *func_caps = &pf->hw.func_caps;
 
 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
-	clear_bit(ICE_FLAG_AUX_ENA, pf->flags);
-	if (func_caps->common_cap.rdma) {
+	if (func_caps->common_cap.rdma)
 		set_bit(ICE_FLAG_RDMA_ENA, pf->flags);
-		set_bit(ICE_FLAG_AUX_ENA, pf->flags);
-	}
 	clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 	if (func_caps->common_cap.dcb)
 		set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
@@ -3550,7 +3547,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	v_left -= needed;
 
 	/* reserve vectors for RDMA auxiliary driver */
-	if (test_bit(ICE_FLAG_RDMA_ENA, pf->flags)) {
+	if (ice_is_rdma_ena(pf)) {
 		needed = num_cpus + ICE_RDMA_NUM_AEQ_MSIX;
 		if (v_left < needed)
 			goto no_hw_vecs_left_err;
@@ -3591,7 +3588,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 			int v_remain = v_actual - v_other;
 			int v_rdma = 0, v_min_rdma = 0;
 
-			if (test_bit(ICE_FLAG_RDMA_ENA, pf->flags)) {
+			if (ice_is_rdma_ena(pf)) {
 				/* Need at least 1 interrupt in addition to
 				 * AEQ MSIX
 				 */
@@ -3625,7 +3622,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 			dev_notice(dev, "Enabled %d MSI-X vectors for LAN traffic.\n",
 				   pf->num_lan_msix);
 
-			if (test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
+			if (ice_is_rdma_ena(pf))
 				dev_notice(dev, "Enabled %d MSI-X vectors for RDMA.\n",
 					   pf->num_rdma_msix);
 		}
@@ -4479,7 +4476,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	/* ready to go, so clear down state bit */
 	clear_bit(ICE_DOWN, pf->state);
-	if (ice_is_aux_ena(pf)) {
+	if (ice_is_rdma_ena(pf)) {
 		pf->aux_idx = ida_alloc(&ice_aux_ida, GFP_KERNEL);
 		if (pf->aux_idx < 0) {
 			dev_err(dev, "Failed to allocate device ID for AUX driver\n");
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
