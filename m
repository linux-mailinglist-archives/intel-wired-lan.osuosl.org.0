Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E05F5B65
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 23:54:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 852B18650A;
	Fri,  8 Nov 2019 22:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X_8Gkz1RCvcy; Fri,  8 Nov 2019 22:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76047864EE;
	Fri,  8 Nov 2019 22:54:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 550661BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FAE92413D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MqMRIb-H9EgV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 22:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id EC65923DA9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 14:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="201478825"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 08 Nov 2019 14:54:16 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Nov 2019 06:23:17 -0800
Message-Id: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S33 01/15] ice: Store number of functions
 for the device
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

From: Bruce Allan <bruce.w.allan@intel.com>

Store the number of functions the device has and use this number when
setting safe mode capabilities instead of calculating it.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Co-developed-by: Kevin Scott <kevin.c.scott@intel.com>
Signed-off-by: Kevin Scott <kevin.c.scott@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 21 ++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_type.h   |  1 +
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 36be501ae623..e92eaec19c83 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1673,6 +1673,10 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 			ice_debug(hw, ICE_DBG_INIT,
 				  "%s: valid_functions (bitmap) = %d\n", prefix,
 				  caps->valid_functions);
+
+			/* store func count for resource management purposes */
+			if (dev_p)
+				dev_p->num_funcs = hweight32(number);
 			break;
 		case ICE_AQC_CAPS_SRIOV:
 			caps->sr_iov_1_1 = (number == 1);
@@ -1875,8 +1879,7 @@ void ice_set_safe_mode_caps(struct ice_hw *hw)
 	struct ice_hw_dev_caps *dev_caps = &hw->dev_caps;
 	u32 valid_func, rxq_first_id, txq_first_id;
 	u32 msix_vector_first_id, max_mtu;
-	u32 num_func = 0;
-	u8 i;
+	u32 num_funcs;
 
 	/* cache some func_caps values that should be restored after memset */
 	valid_func = func_caps->common_cap.valid_functions;
@@ -1909,6 +1912,7 @@ void ice_set_safe_mode_caps(struct ice_hw *hw)
 	rxq_first_id = dev_caps->common_cap.rxq_first_id;
 	msix_vector_first_id = dev_caps->common_cap.msix_vector_first_id;
 	max_mtu = dev_caps->common_cap.max_mtu;
+	num_funcs = dev_caps->num_funcs;
 
 	/* unset dev capabilities */
 	memset(dev_caps, 0, sizeof(*dev_caps));
@@ -1919,19 +1923,14 @@ void ice_set_safe_mode_caps(struct ice_hw *hw)
 	dev_caps->common_cap.rxq_first_id = rxq_first_id;
 	dev_caps->common_cap.msix_vector_first_id = msix_vector_first_id;
 	dev_caps->common_cap.max_mtu = max_mtu;
-
-	/* valid_func is a bitmap. get number of functions */
-#define ICE_MAX_FUNCS 8
-	for (i = 0; i < ICE_MAX_FUNCS; i++)
-		if (valid_func & BIT(i))
-			num_func++;
+	dev_caps->num_funcs = num_funcs;
 
 	/* one Tx and one Rx queue per function in safe mode */
-	dev_caps->common_cap.num_rxq = num_func;
-	dev_caps->common_cap.num_txq = num_func;
+	dev_caps->common_cap.num_rxq = num_funcs;
+	dev_caps->common_cap.num_txq = num_funcs;
 
 	/* two MSIX vectors per function */
-	dev_caps->common_cap.num_msix_vectors = 2 * num_func;
+	dev_caps->common_cap.num_msix_vectors = 2 * num_funcs;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index eba8b04b8cbd..c4854a987130 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -202,6 +202,7 @@ struct ice_hw_dev_caps {
 	struct ice_hw_common_caps common_cap;
 	u32 num_vfs_exposed;		/* Total number of VFs exposed */
 	u32 num_vsi_allocd_to_host;	/* Excluding EMP VSI */
+	u32 num_funcs;
 };
 
 /* MAC info */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
