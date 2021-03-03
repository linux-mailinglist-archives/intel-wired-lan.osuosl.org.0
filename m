Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 344FC32B791
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 12:45:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 496F14881A;
	Wed,  3 Mar 2021 11:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mK1cZmWBIpr6; Wed,  3 Mar 2021 11:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02B5947661;
	Wed,  3 Mar 2021 11:45:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98E3F1BF591
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 11:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 936D047661
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 11:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkKcsR5epAeM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 11:45:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C67940111
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 11:45:38 +0000 (UTC)
IronPort-SDR: ff9OW5nzQ7J54+oXphE0jZG47v3m2YxLC5sj+NaUoB/F9HU75xugt2zqtXYs2Zm90dbMQKbpW0
 i1Hpea7nvvvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="206863699"
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="206863699"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 03:45:37 -0800
IronPort-SDR: Un2/N+BpgbyM2VKlo7XuTeuqmYM/L3BV0JZ3nFbqio84sFnF4eFWEjl4EmdsJfMMOPJYwXfumS
 CBB+11Tr8fpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="406430922"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga007.jf.intel.com with ESMTP; 03 Mar 2021 03:45:36 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Mar 2021 11:45:33 +0000
Message-Id: <20210303114533.2893-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix to not show opcode msg
 on unsuccessful VF MAC change
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hide i40e opcode information sent during response to VF in case when
untrusted VF tried to change MAC on the VF interface.

This is implemented by adding an additional parameter 'hide' to the
response sent to VF function that hides the display of error
information, but forwards the error code to VF.

Previously it was not possible to send response with some error code
to VF without displaying opcode information.

Fixes: 5c3c48ac6bf5("i40e:implement virtual device interface")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2: Changed the patch title to make the patch more understandable
v3: Added change history and signed-off-by tag
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 44 +++++++++++++++----
 1 file changed, 35 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 0cb533c..05de5fe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1845,17 +1845,18 @@ sriov_configure_out:
 /***********************virtual channel routines******************/
 
 /**
- * i40e_vc_send_msg_to_vf
+ * i40e_vc_send_msg_to_vf_ex
  * @vf: pointer to the VF info
  * @v_opcode: virtual channel opcode
  * @v_retval: virtual channel return value
  * @msg: pointer to the msg buffer
  * @msglen: msg length
- *
+ * @is_quiet: true for not printing unsuccessful return values, false otherwise
  * send msg to VF
  **/
-static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
-				  u32 v_retval, u8 *msg, u16 msglen)
+static int i40e_vc_send_msg_to_vf_ex(struct i40e_vf *vf, u32 v_opcode,
+				     u32 v_retval, u8 *msg, u16 msglen,
+				     bool is_quiet)
 {
 	struct i40e_pf *pf;
 	struct i40e_hw *hw;
@@ -1871,7 +1872,7 @@ static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
 	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
 	/* single place to detect unsuccessful return values */
-	if (v_retval) {
+	if (v_retval && !is_quiet) {
 		vf->num_invalid_msgs++;
 		dev_info(&pf->pdev->dev, "VF %d failed opcode %d, retval: %d\n",
 			 vf->vf_id, v_opcode, v_retval);
@@ -1901,6 +1902,23 @@ static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
 	return 0;
 }
 
+/**
+ * i40e_vc_send_msg_to_vf
+ * @vf: pointer to the VF info
+ * @v_opcode: virtual channel opcode
+ * @v_retval: virtual channel return value
+ * @msg: pointer to the msg buffer
+ * @msglen: msg length
+ *
+ * send msg to VF
+ **/
+static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
+				  u32 v_retval, u8 *msg, u16 msglen)
+{
+	return i40e_vc_send_msg_to_vf_ex(vf, v_opcode, v_retval,
+					 msg, msglen, false);
+}
+
 /**
  * i40e_vc_send_resp_to_vf
  * @vf: pointer to the VF info
@@ -2645,6 +2663,7 @@ error_param:
  * i40e_check_vf_permission
  * @vf: pointer to the VF info
  * @al: MAC address list from virtchnl
+ * @is_quiet: set true for printing msg without opcode info, false otherwise
  *
  * Check that the given list of MAC addresses is allowed. Will return -EPERM
  * if any address in the list is not valid. Checks the following conditions:
@@ -2659,13 +2678,18 @@ error_param:
  * addresses might not be accurate.
  **/
 static inline int i40e_check_vf_permission(struct i40e_vf *vf,
-					   struct virtchnl_ether_addr_list *al)
+					   struct virtchnl_ether_addr_list *al,
+					   bool *is_quiet)
 {
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
 	int mac2add_cnt = 0;
 	int i;
 
+	if (!is_quiet)
+		return -EINVAL;
+
+	*is_quiet = false;
 	for (i = 0; i < al->num_elements; i++) {
 		struct i40e_mac_filter *f;
 		u8 *addr = al->list[i].addr;
@@ -2689,6 +2713,7 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 		    !ether_addr_equal(addr, vf->default_lan_addr.addr)) {
 			dev_err(&pf->pdev->dev,
 				"VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
+			*is_quiet = true;
 			return -EPERM;
 		}
 
@@ -2725,6 +2750,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	    (struct virtchnl_ether_addr_list *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
+	bool is_quiet = false;
 	i40e_status ret = 0;
 	int i;
 
@@ -2741,7 +2767,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	 */
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
 
-	ret = i40e_check_vf_permission(vf, al);
+	ret = i40e_check_vf_permission(vf, al, &is_quiet);
 	if (ret) {
 		spin_unlock_bh(&vsi->mac_filter_hash_lock);
 		goto error_param;
@@ -2779,8 +2805,8 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
-				       ret);
+	return i40e_vc_send_msg_to_vf_ex(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
+				       ret, NULL, 0, is_quiet);
 }
 
 /**
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
