Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05663314ECF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 13:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B6A8873A1;
	Tue,  9 Feb 2021 12:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KVf2+2dGcZy; Tue,  9 Feb 2021 12:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7C4A87363;
	Tue,  9 Feb 2021 12:17:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E8791BF867
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 12:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 894EC6EEFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 12:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SIoXODrizF7X for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Feb 2021 12:17:56 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 777A16F484; Tue,  9 Feb 2021 12:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3D616EEFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 12:17:54 +0000 (UTC)
IronPort-SDR: RaB6it2TQyBXx16SpBw7YAUc2iODopDeRTnicjaFp2ilGZyDKW1vuMTIyC6ojT9Z9+TJPzsTC/
 XJV2kjwqhtiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="182014411"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="182014411"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 04:17:54 -0800
IronPort-SDR: CBXSzEFCdN6EXgl0+M+/O/5I9LHft2QZ7Tv7Ywo1l4XhrVZCxdP/aMt6jrEhoPV87VpTJ/SYxX
 8lJbea/+HncQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="398763391"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga007.jf.intel.com with ESMTP; 09 Feb 2021 04:17:53 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Feb 2021 12:17:45 +0000
Message-Id: <20210209121745.8840-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix not showing opcode msg
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
Reviewed-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 44 +++++++++++++++----
 1 file changed, 35 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index b40ce62..b47159a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1792,17 +1792,18 @@ sriov_configure_out:
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
@@ -1818,7 +1819,7 @@ static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
 	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
 	/* single place to detect unsuccessful return values */
-	if (v_retval) {
+	if (v_retval && !is_quiet) {
 		vf->num_invalid_msgs++;
 		dev_info(&pf->pdev->dev, "VF %d failed opcode %d, retval: %d\n",
 			 vf->vf_id, v_opcode, v_retval);
@@ -1848,6 +1849,23 @@ static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
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
@@ -2591,6 +2609,7 @@ error_param:
  * i40e_check_vf_permission
  * @vf: pointer to the VF info
  * @al: MAC address list from virtchnl
+ * @is_quiet: set true for printing msg without opcode info, false otherwise
  *
  * Check that the given list of MAC addresses is allowed. Will return -EPERM
  * if any address in the list is not valid. Checks the following conditions:
@@ -2605,13 +2624,18 @@ error_param:
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
@@ -2635,6 +2659,7 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 		    !ether_addr_equal(addr, vf->default_lan_addr.addr)) {
 			dev_err(&pf->pdev->dev,
 				"VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
+			*is_quiet = true;
 			return -EPERM;
 		}
 
@@ -2671,6 +2696,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	    (struct virtchnl_ether_addr_list *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
+	bool is_quiet = false;
 	i40e_status ret = 0;
 	int i;
 
@@ -2687,7 +2713,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	 */
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
 
-	ret = i40e_check_vf_permission(vf, al);
+	ret = i40e_check_vf_permission(vf, al, &is_quiet);
 	if (ret) {
 		spin_unlock_bh(&vsi->mac_filter_hash_lock);
 		goto error_param;
@@ -2725,8 +2751,8 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 
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
