Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A09380BCC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 16:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E45694026F;
	Fri, 14 May 2021 14:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GiLenXPlUwHQ; Fri, 14 May 2021 14:29:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4167640383;
	Fri, 14 May 2021 14:29:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B23851BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 09:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C6E060681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 09:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-DhpCDva1dx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 09:35:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73ED0606D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 09:35:08 +0000 (UTC)
IronPort-SDR: cKGWkfygI1s2BY3u1GuvAjEHzaBnAOtixNQpdWGm41NRAGheFA0emVEbxKL2Rkbktl1nxCueHB
 wjD1px7nN+/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="198191749"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="198191749"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 02:35:07 -0700
IronPort-SDR: zX6XHZgJQFaPNPNCXQ/vK3Rz85jrQCAx/VQlQ1atNUl+hmKW/622NRFj5ocad0wpOtfw0SRPKE
 x+xtnNxnn8rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="470440487"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2021 02:35:06 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 May 2021 11:43:13 +0200
Message-Id: <20210514094313.133485-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 May 2021 14:29:00 +0000
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix failed opcode appearing
 if handling messages from VF
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix failed operation code appearing if handling messages from VF.
Implemented by waiting for VF appropriate state if request starts
handle while VF reset.
Without this patch the message handling request while VF is in
a reset state ends with error -5 (I40E_ERR_PARAM).

Fixes: 6322e63c35d6 ("i40e: properly spell I40E_VF_STATE_* flags")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 70 +++++++++++++------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
 2 files changed, 50 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 139562aaf..5af16d209 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1960,6 +1960,32 @@ static int i40e_vc_send_resp_to_vf(struct i40e_vf *vf,
 	return i40e_vc_send_msg_to_vf(vf, opcode, retval, NULL, 0);
 }
 
+/**
+ * i40e_sync_vf_state
+ * @vf: pointer to the VF info
+ * @state: VF state
+ *
+ * Called from a VF message to synchronize the service with a potential
+ * VF reset state
+ **/
+static bool i40e_sync_vf_state(struct i40e_vf *vf, enum i40e_vf_states state)
+{
+	int i;
+
+	/* When handling some messages, it needs vf state to be set.
+	 * It is possible that this flag is cleared during vf reset,
+	 * so there is a need to wait until the end of the reset to
+	 * handle the request message correctly.
+	 */
+	for (i = 0; i < I40E_VF_STATE_WAIT_COUNT; i++) {
+		if (test_bit(state, &vf->vf_states))
+			return true;
+		usleep_range(10000, 20000);
+	}
+
+	return test_bit(state, &vf->vf_states);
+}
+
 /**
  * i40e_vc_get_version_msg
  * @vf: pointer to the VF info
@@ -2020,7 +2046,7 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 	size_t len = 0;
 	int ret;
 
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_INIT)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -2157,7 +2183,7 @@ static int i40e_vc_config_promiscuous_mode_msg(struct i40e_vf *vf, u8 *msg)
 	bool allmulti = false;
 	bool alluni = false;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err_out;
 	}
@@ -2244,7 +2270,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	int i, j = 0, idx = 0;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
@@ -2387,7 +2413,7 @@ static int i40e_vc_config_irq_map_msg(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	int i;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
@@ -2559,7 +2585,7 @@ static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct i40e_pf *pf = vf->pf;
 	i40e_status aq_ret = 0;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
@@ -2609,7 +2635,7 @@ static int i40e_vc_request_queues_msg(struct i40e_vf *vf, u8 *msg)
 	u8 cur_pairs = vf->num_queue_pairs;
 	struct i40e_pf *pf = vf->pf;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states))
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE))
 		return -EINVAL;
 
 	if (req_pairs > I40E_MAX_VF_QUEUES) {
@@ -2655,7 +2681,7 @@ static int i40e_vc_get_stats_msg(struct i40e_vf *vf, u8 *msg)
 
 	memset(&stats, 0, sizeof(struct i40e_eth_stats));
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
 	}
@@ -2780,7 +2806,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	i40e_status ret = 0;
 	int i;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
 		ret = I40E_ERR_PARAM;
 		goto error_param;
@@ -2852,7 +2878,7 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	i40e_status ret = 0;
 	int i;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
 		ret = I40E_ERR_PARAM;
 		goto error_param;
@@ -2996,7 +3022,7 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	int i;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
@@ -3116,9 +3142,9 @@ static int i40e_vc_config_rss_key(struct i40e_vf *vf, u8 *msg)
 	struct i40e_vsi *vsi = NULL;
 	i40e_status aq_ret = 0;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vrk->vsi_id) ||
-	    (vrk->key_len != I40E_HKEY_ARRAY_SIZE)) {
+	    vrk->key_len != I40E_HKEY_ARRAY_SIZE) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3147,9 +3173,9 @@ static int i40e_vc_config_rss_lut(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	u16 i;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vrl->vsi_id) ||
-	    (vrl->lut_entries != I40E_VF_HLUT_ARRAY_SIZE)) {
+	    vrl->lut_entries != I40E_VF_HLUT_ARRAY_SIZE) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3182,7 +3208,7 @@ static int i40e_vc_get_rss_hena(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	int len = 0;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3218,7 +3244,7 @@ static int i40e_vc_set_rss_hena(struct i40e_vf *vf, u8 *msg)
 	struct i40e_hw *hw = &pf->hw;
 	i40e_status aq_ret = 0;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3243,7 +3269,7 @@ static int i40e_vc_enable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	struct i40e_vsi *vsi;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3269,7 +3295,7 @@ static int i40e_vc_disable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	struct i40e_vsi *vsi;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3496,7 +3522,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	int i, ret;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3627,7 +3653,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	int i, ret;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err_out;
 	}
@@ -3736,7 +3762,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	u64 speed = 0;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
@@ -3853,7 +3879,7 @@ static int i40e_vc_del_qch_msg(struct i40e_vf *vf, u8 *msg)
 	struct i40e_pf *pf = vf->pf;
 	i40e_status aq_ret = 0;
 
-	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto err;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 091e32c1b..49575a640 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -18,6 +18,8 @@
 
 #define I40E_MAX_VF_PROMISC_FLAGS	3
 
+#define I40E_VF_STATE_WAIT_COUNT	20
+
 /* Various queue ctrls */
 enum i40e_queue_ctrl {
 	I40E_QUEUE_CTRL_UNKNOWN = 0,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
