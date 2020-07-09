Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FA021A49C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5508388257;
	Thu,  9 Jul 2020 16:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkQISK8wrZdc; Thu,  9 Jul 2020 16:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD3C687C23;
	Thu,  9 Jul 2020 16:20:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E0EC1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79DA2228F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pYo8INxDnia6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 583472CB5C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
IronPort-SDR: +ie/++TXYY++jwkH0y+k+GGItJDYOQVerJYCvlmNOl079uvjXzmLxEbIbDAxrKeRnUOfPXPI5S
 qKUuA6PM2JYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136252754"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136252754"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:10 -0700
IronPort-SDR: /k5/iPAwnzpOIcGmhOQOhCpE8pzzYGq1OU+RLb4UE11esHJE8Z0YfNtalSmQ/7xDEnR1KV+Cn3
 ZPwLJQRcmbvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352060"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:06 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:02 -0700
Message-Id: <20200709161614.61098-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 03/15] ice: split ice_discover_caps
 into two functions
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

From: Jacob Keller <jacob.e.keller@intel.com>

Using the new ice_aq_list_caps and ice_parse_(dev|func)_caps functions,
replace ice_discover_caps with two functions that each take a pointer to
the dev_caps and func_caps structures respectively.

This makes the side effect of updating the hw->dev_caps and
hw->func_caps obvious from reading the implementation of the function.
Additionally, it opens the way for enabling reading of device
capabilities outside of the initialization flow. By passing in
a pointer, another caller will be able to read the capabilities without
modifying the hw capabilities structures.

As there are no other callers, it is safe to now remove
ice_aq_discover_caps and ice_parse_caps.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 94 +++++++++------------
 1 file changed, 39 insertions(+), 55 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 11618b5e5453..cb9e6b8ef830 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -52,7 +52,8 @@ enum ice_status ice_clear_pf_cfg(struct ice_hw *hw)
  * is returned in user specified buffer. Please interpret user specified
  * buffer as "manage_mac_read" response.
  * Response such as various MAC addresses are stored in HW struct (port.mac)
- * ice_aq_discover_caps is expected to be called before this function is called.
+ * ice_discover_dev_caps is expected to be called before this function is
+ * called.
  */
 static enum ice_status
 ice_aq_manage_mac_read(struct ice_hw *hw, void *buf, u16 buf_size,
@@ -2001,30 +2002,6 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	ice_recalc_port_limited_caps(hw, &dev_p->common_cap);
 }
 
-/**
- * ice_parse_caps - parse function/device capabilities
- * @hw: pointer to the HW struct
- * @buf: pointer to a buffer containing function/device capability records
- * @cap_count: number of capability records in the list
- * @opc: type of capabilities list to parse
- *
- * Helper function to parse function(0x000a)/device(0x000b) capabilities list.
- */
-static void
-ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
-	       enum ice_adminq_opc opc)
-{
-	if (!buf)
-		return;
-
-	if (opc == ice_aqc_opc_list_dev_caps)
-		ice_parse_dev_caps(hw, &hw->dev_caps, buf, cap_count);
-	else if (opc == ice_aqc_opc_list_func_caps)
-		ice_parse_func_caps(hw, &hw->func_caps, buf, cap_count);
-	else
-		ice_debug(hw, ICE_DBG_INIT, "wrong opcode\n");
-}
-
 /**
  * ice_aq_list_caps - query function/device capabilities
  * @hw: pointer to the HW struct
@@ -2068,47 +2045,52 @@ ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 }
 
 /**
- * ice_aq_discover_caps - query function/device capabilities
- * @hw: pointer to the HW struct
- * @buf: a virtual buffer to hold the capabilities
- * @buf_size: Size of the virtual buffer
- * @cap_count: cap count needed if AQ err==ENOMEM
- * @opc: capabilities type to discover - pass in the command opcode
- * @cd: pointer to command details structure or NULL
- *
- * Get the function(0x000a)/device(0x000b) capabilities description from
- * the firmware.
+ * ice_discover_dev_caps - Read and extract device capabilities
+ * @hw: pointer to the hardware structure
+ * @dev_caps: pointer to device capabilities structure
  *
- * NOTE: this function has the side effect of updating the hw->dev_caps or
- * hw->func_caps by way of calling ice_parse_caps.
+ * Read the device capabilities and extract them into the dev_caps structure
+ * for later use.
  */
 static enum ice_status
-ice_aq_discover_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
-		     enum ice_adminq_opc opc, struct ice_sq_cd *cd)
+ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps)
 {
-	u32 local_cap_count = 0;
 	enum ice_status status;
+	u32 cap_count = 0;
+	void *cbuf;
 
-	status = ice_aq_list_caps(hw, buf, buf_size, &local_cap_count,
-				  opc, cd);
+	cbuf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!cbuf)
+		return ICE_ERR_NO_MEMORY;
+
+	/* Although the driver doesn't know the number of capabilities the
+	 * device will return, we can simply send a 4KB buffer, the maximum
+	 * possible size that firmware can return.
+	 */
+	cap_count = ICE_AQ_MAX_BUF_LEN / sizeof(struct ice_aqc_list_caps_elem);
+
+	status = ice_aq_list_caps(hw, cbuf, ICE_AQ_MAX_BUF_LEN, &cap_count,
+				  ice_aqc_opc_list_dev_caps, NULL);
 	if (!status)
-		ice_parse_caps(hw, buf, local_cap_count, opc);
-	else if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOMEM)
-		*cap_count = local_cap_count;
+		ice_parse_dev_caps(hw, dev_caps, cbuf, cap_count);
+	kfree(cbuf);
 
 	return status;
 }
 
 /**
- * ice_discover_caps - get info about the HW
+ * ice_discover_func_caps - Read and extract function capabilities
  * @hw: pointer to the hardware structure
- * @opc: capabilities type to discover - pass in the command opcode
+ * @func_caps: pointer to function capabilities structure
+ *
+ * Read the function capabilities and extract them into the func_caps structure
+ * for later use.
  */
 static enum ice_status
-ice_discover_caps(struct ice_hw *hw, enum ice_adminq_opc opc)
+ice_discover_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_caps)
 {
 	enum ice_status status;
-	u32 cap_count;
+	u32 cap_count = 0;
 	void *cbuf;
 
 	cbuf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
@@ -2121,8 +2103,10 @@ ice_discover_caps(struct ice_hw *hw, enum ice_adminq_opc opc)
 	 */
 	cap_count = ICE_AQ_MAX_BUF_LEN / sizeof(struct ice_aqc_list_caps_elem);
 
-	status = ice_aq_discover_caps(hw, cbuf, ICE_AQ_MAX_BUF_LEN, &cap_count,
-				      opc, NULL);
+	status = ice_aq_list_caps(hw, cbuf, ICE_AQ_MAX_BUF_LEN, &cap_count,
+				  ice_aqc_opc_list_func_caps, NULL);
+	if (!status)
+		ice_parse_func_caps(hw, func_caps, cbuf, cap_count);
 	kfree(cbuf);
 
 	return status;
@@ -2200,11 +2184,11 @@ enum ice_status ice_get_caps(struct ice_hw *hw)
 {
 	enum ice_status status;
 
-	status = ice_discover_caps(hw, ice_aqc_opc_list_dev_caps);
-	if (!status)
-		status = ice_discover_caps(hw, ice_aqc_opc_list_func_caps);
+	status = ice_discover_dev_caps(hw, &hw->dev_caps);
+	if (status)
+		return status;
 
-	return status;
+	return ice_discover_func_caps(hw, &hw->func_caps);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
