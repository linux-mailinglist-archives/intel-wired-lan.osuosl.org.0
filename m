Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BF14B9524
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 01:52:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92178416DC;
	Thu, 17 Feb 2022 00:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i1UOgh7RXW-1; Thu, 17 Feb 2022 00:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50722416D5;
	Thu, 17 Feb 2022 00:52:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 637A51C1135
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2841E61C5C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-uFP0FRPE-7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 00:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F14BB61C56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645059110; x=1676595110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/O212q21IofNtB7pnbY65z197syr7rPkmfWAkPWI/5g=;
 b=d0o58NXkMGBIssqT2MmPiN5Rhc7yh6yD7S3yXOhTslGxSiOscWAOtDGC
 fByeitFK/DrwyE1nvBDMH2qdl+MriXRaZBAmo8TwPS9ttf0GihrvkP14w
 NceBdlxNXZC6oW5C8CbvIiktbO3rO5wIs0EiALqrlVkaIjc3kQRWOWIop
 mMCbIv04ITCz4bFvJcuarKMk7DFddMqmKYBBz7Z7beavb7afHi8LohEZ5
 ko38GuheYjjEMEMykJR1ZoUFnxrcnmnPsVrENpNM1SisUK6Uiqd2xKhJe
 dPc1pn/UTznCe5Hn03bVBHDMAuhbP8fYIam+DpYX5lZr0kW359w+mwkQQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250955990"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250955990"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 16:51:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="588879566"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 16:51:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Feb 2022 16:51:35 -0800
Message-Id: <20220217005136.75627-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220217005136.75627-1-jacob.e.keller@intel.com>
References: <20220217005136.75627-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net PATCH 1/2] i40e: stop disabling VFs due to
 PF error responses
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

The i40e_vc_send_msg_to_vf_ex (and its wrapper i40e_vc_send_msg_to_vf)
function has logic to detect "failure" responses sent to the VF. If a VF
is sent more than I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED, then the VF is
marked as disabled. In either case, a dev_info message is printed
stating that a VF opcode failed.

This logic originates from the early implementation of VF support in
commit 5c3c48ac6bf5 ("i40e: implement virtual device interface").

That commit did not go far enough. The "logic" for this behavior seems
to be that error responses somehow indicate a malicious VF. This is not
really true. The PF might be sending an error for any number of reasons
such as lacking resources, an unsupported operation, etc. This does not
indicate a malicious VF. We already have a separate robust malicious VF
detection which relies on hardware logic to detect and prevent a variety
of behaviors.

There is no justification for this behavior in the original
implementation. In fact, a later commit 18b7af57d9c1 ("i40e: Lower some
message levels") reduced the opcode failure message from a dev_err to a
dev_info. In addition, recent commit 01cbf50877e6 ("i40e: Fix to not
show opcode msg on unsuccessful VF MAC change") changed the logic to
allow quieting it for expected failures.

That commit prevented this logic from kicking in for specific
circumstances. This change did not go far enough. The behavior is not
documented nor is it part of any requirement for our products. Other
operating systems such as the FreeBSD implementation of our driver do
not include this logic.

It is clear this check does not make sense, and causes problems which
led to ugly workarounds.

Fix this by just removing the entire logic and the need for the
i40e_vc_send_msg_to_vf_ex function.

Fixes: 01cbf50877e6 ("i40e: Fix to not show opcode msg on unsuccessful VF MAC change")
Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  6 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 57 +++----------------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  5 --
 3 files changed, 9 insertions(+), 59 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 1e57cc8c47d7..9db5001297c7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -742,10 +742,8 @@ static void i40e_dbg_dump_vf(struct i40e_pf *pf, int vf_id)
 		vsi = pf->vsi[vf->lan_vsi_idx];
 		dev_info(&pf->pdev->dev, "vf %2d: VSI id=%d, seid=%d, qps=%d\n",
 			 vf_id, vf->lan_vsi_id, vsi->seid, vf->num_queue_pairs);
-		dev_info(&pf->pdev->dev, "       num MDD=%lld, invalid msg=%lld, valid msg=%lld\n",
-			 vf->num_mdd_events,
-			 vf->num_invalid_msgs,
-			 vf->num_valid_msgs);
+		dev_info(&pf->pdev->dev, "       num MDD=%lld\n",
+			 vf->num_mdd_events);
 	} else {
 		dev_info(&pf->pdev->dev, "invalid VF id %d\n", vf_id);
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index dfdb6e786461..2606e8f0f19b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1917,19 +1917,17 @@ int i40e_pci_sriov_configure(struct pci_dev *pdev, int num_vfs)
 /***********************virtual channel routines******************/
 
 /**
- * i40e_vc_send_msg_to_vf_ex
+ * i40e_vc_send_msg_to_vf
  * @vf: pointer to the VF info
  * @v_opcode: virtual channel opcode
  * @v_retval: virtual channel return value
  * @msg: pointer to the msg buffer
  * @msglen: msg length
- * @is_quiet: true for not printing unsuccessful return values, false otherwise
  *
  * send msg to VF
  **/
-static int i40e_vc_send_msg_to_vf_ex(struct i40e_vf *vf, u32 v_opcode,
-				     u32 v_retval, u8 *msg, u16 msglen,
-				     bool is_quiet)
+static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
+				  u32 v_retval, u8 *msg, u16 msglen)
 {
 	struct i40e_pf *pf;
 	struct i40e_hw *hw;
@@ -1944,25 +1942,6 @@ static int i40e_vc_send_msg_to_vf_ex(struct i40e_vf *vf, u32 v_opcode,
 	hw = &pf->hw;
 	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
-	/* single place to detect unsuccessful return values */
-	if (v_retval && !is_quiet) {
-		vf->num_invalid_msgs++;
-		dev_info(&pf->pdev->dev, "VF %d failed opcode %d, retval: %d\n",
-			 vf->vf_id, v_opcode, v_retval);
-		if (vf->num_invalid_msgs >
-		    I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED) {
-			dev_err(&pf->pdev->dev,
-				"Number of invalid messages exceeded for VF %d\n",
-				vf->vf_id);
-			dev_err(&pf->pdev->dev, "Use PF Control I/F to enable the VF\n");
-			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
-		}
-	} else {
-		vf->num_valid_msgs++;
-		/* reset the invalid counter, if a valid message is received. */
-		vf->num_invalid_msgs = 0;
-	}
-
 	aq_ret = i40e_aq_send_msg_to_vf(hw, abs_vf_id,	v_opcode, v_retval,
 					msg, msglen, NULL);
 	if (aq_ret) {
@@ -1975,23 +1954,6 @@ static int i40e_vc_send_msg_to_vf_ex(struct i40e_vf *vf, u32 v_opcode,
 	return 0;
 }
 
-/**
- * i40e_vc_send_msg_to_vf
- * @vf: pointer to the VF info
- * @v_opcode: virtual channel opcode
- * @v_retval: virtual channel return value
- * @msg: pointer to the msg buffer
- * @msglen: msg length
- *
- * send msg to VF
- **/
-static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
-				  u32 v_retval, u8 *msg, u16 msglen)
-{
-	return i40e_vc_send_msg_to_vf_ex(vf, v_opcode, v_retval,
-					 msg, msglen, false);
-}
-
 /**
  * i40e_vc_send_resp_to_vf
  * @vf: pointer to the VF info
@@ -2822,7 +2784,6 @@ static int i40e_vc_get_stats_msg(struct i40e_vf *vf, u8 *msg)
  * i40e_check_vf_permission
  * @vf: pointer to the VF info
  * @al: MAC address list from virtchnl
- * @is_quiet: set true for printing msg without opcode info, false otherwise
  *
  * Check that the given list of MAC addresses is allowed. Will return -EPERM
  * if any address in the list is not valid. Checks the following conditions:
@@ -2837,8 +2798,7 @@ static int i40e_vc_get_stats_msg(struct i40e_vf *vf, u8 *msg)
  * addresses might not be accurate.
  **/
 static inline int i40e_check_vf_permission(struct i40e_vf *vf,
-					   struct virtchnl_ether_addr_list *al,
-					   bool *is_quiet)
+					   struct virtchnl_ether_addr_list *al)
 {
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
@@ -2846,7 +2806,6 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 	int mac2add_cnt = 0;
 	int i;
 
-	*is_quiet = false;
 	for (i = 0; i < al->num_elements; i++) {
 		struct i40e_mac_filter *f;
 		u8 *addr = al->list[i].addr;
@@ -2870,7 +2829,6 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 		    !ether_addr_equal(addr, vf->default_lan_addr.addr)) {
 			dev_err(&pf->pdev->dev,
 				"VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
-			*is_quiet = true;
 			return -EPERM;
 		}
 
@@ -2921,7 +2879,6 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	    (struct virtchnl_ether_addr_list *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	bool is_quiet = false;
 	i40e_status ret = 0;
 	int i;
 
@@ -2938,7 +2895,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	 */
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
 
-	ret = i40e_check_vf_permission(vf, al, &is_quiet);
+	ret = i40e_check_vf_permission(vf, al);
 	if (ret) {
 		spin_unlock_bh(&vsi->mac_filter_hash_lock);
 		goto error_param;
@@ -2976,8 +2933,8 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return i40e_vc_send_msg_to_vf_ex(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
-				       ret, NULL, 0, is_quiet);
+	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
+				      ret, NULL, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 03c42fd0fea1..a554d0a0b09b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -10,8 +10,6 @@
 
 #define I40E_VIRTCHNL_SUPPORTED_QTYPES 2
 
-#define I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED	10
-
 #define I40E_VLAN_PRIORITY_SHIFT	13
 #define I40E_VLAN_MASK			0xFFF
 #define I40E_PRIORITY_MASK		0xE000
@@ -92,9 +90,6 @@ struct i40e_vf {
 	u8 num_queue_pairs;	/* num of qps assigned to VF vsis */
 	u8 num_req_queues;	/* num of requested qps */
 	u64 num_mdd_events;	/* num of mdd events detected */
-	/* num of continuous malformed or invalid msgs detected */
-	u64 num_invalid_msgs;
-	u64 num_valid_msgs;	/* num of valid msgs detected */
 
 	unsigned long vf_caps;	/* vf's adv. capabilities */
 	unsigned long vf_states;	/* vf's runtime states */

base-commit: 35410c10918a84c9685cd644686ca637bb3c046b
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
