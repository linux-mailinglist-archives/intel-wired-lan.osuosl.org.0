Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5548A35D4A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 03:08:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F234A60B4D;
	Tue, 13 Apr 2021 01:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K4_SiN0JmUoK; Tue, 13 Apr 2021 01:08:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C397B6070C;
	Tue, 13 Apr 2021 01:08:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C4C91BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7D0F83D6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2r4Cg5-Q78QH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 01:08:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 203E783D74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:01 +0000 (UTC)
IronPort-SDR: lNQLVMl2EgJ220/bPiUsq0Wv/rUYTv0N/akbqBwCbUu3rOV2mb+p+vSadFJq9hb5c8IbF5evP0
 LQ9ffwfKbtAg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="192181660"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="192181660"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 18:08:01 -0700
IronPort-SDR: Fm0C9+YLpH/5dheGQowMQi9qnSXDLLrn0mEBtk7I0aPwkBe4In4yxbPzQUulCXAPDAhcbDes3C
 BXTtZh97wsmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="521400313"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga001.fm.intel.com with ESMTP; 12 Apr 2021 18:07:59 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Apr 2021 08:48:40 +0800
Message-Id: <20210413004844.32462-3-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210413004844.32462-1-haiyue.wang@intel.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 2/6] ice: Support RSS
 configure removal for AVF
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
Cc: Jia Guo <jia.guo@intel.com>, Vignesh Sridhar <vignesh.sridhar@intel.com>,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Add the handler for virtchnl message VIRTCHNL_OP_DEL_RSS_CFG to remove
an existing RSS configuration with matching hashed fields.

Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
Co-developed-by: Jia Guo <jia.guo@intel.com>
Signed-off-by: Jia Guo <jia.guo@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c     | 88 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_flow.h     |  3 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 16 +++-
 3 files changed, 105 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 4d59eb96383b..f160672448a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -2149,6 +2149,94 @@ ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 	return status;
 }
 
+/**
+ * ice_rem_rss_cfg_sync - remove an existing RSS configuration
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: software VSI handle
+ * @hashed_flds: Packet hash types (ICE_FLOW_HASH_*) to remove
+ * @addl_hdrs: Protocol header fields within a packet segment
+ * @segs_cnt: packet segment count
+ *
+ * Assumption: lock has already been acquired for RSS list
+ */
+static enum ice_status
+ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
+		     u32 addl_hdrs, u8 segs_cnt)
+{
+	const enum ice_block blk = ICE_BLK_RSS;
+	struct ice_flow_seg_info *segs;
+	struct ice_flow_prof *prof;
+	enum ice_status status;
+
+	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
+	if (!segs)
+		return ICE_ERR_NO_MEMORY;
+
+	/* Construct the packet segment info from the hashed fields */
+	status = ice_flow_set_rss_seg_info(&segs[segs_cnt - 1], hashed_flds,
+					   addl_hdrs);
+	if (status)
+		goto out;
+
+	prof = ice_flow_find_prof_conds(hw, blk, ICE_FLOW_RX, segs, segs_cnt,
+					vsi_handle,
+					ICE_FLOW_FIND_PROF_CHK_FLDS);
+	if (!prof) {
+		status = ICE_ERR_DOES_NOT_EXIST;
+		goto out;
+	}
+
+	status = ice_flow_disassoc_prof(hw, blk, prof, vsi_handle);
+	if (status)
+		goto out;
+
+	/* Remove RSS configuration from VSI context before deleting
+	 * the flow profile.
+	 */
+	ice_rem_rss_list(hw, vsi_handle, prof);
+
+	if (bitmap_empty(prof->vsis, ICE_MAX_VSI))
+		status = ice_flow_rem_prof(hw, blk, prof->id);
+
+out:
+	kfree(segs);
+	return status;
+}
+
+/**
+ * ice_rem_rss_cfg - remove an existing RSS config with matching hashed fields
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: software VSI handle
+ * @hashed_flds: Packet hash types (ICE_FLOW_HASH_*) to remove
+ * @addl_hdrs: Protocol header fields within a packet segment
+ *
+ * This function will lookup the flow profile based on the input
+ * hash field bitmap, iterate through the profile entry list of
+ * that profile and find entry associated with input VSI to be
+ * removed. Calls are made to underlying flow s which will APIs
+ * turn build or update buffers for RSS XLT1 section.
+ */
+enum ice_status __maybe_unused
+ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
+		u32 addl_hdrs)
+{
+	enum ice_status status;
+
+	if (hashed_flds == ICE_HASH_INVALID ||
+	    !ice_is_vsi_valid(hw, vsi_handle))
+		return ICE_ERR_PARAM;
+
+	mutex_lock(&hw->rss_locks);
+	status = ice_rem_rss_cfg_sync(hw, vsi_handle, hashed_flds, addl_hdrs,
+				      ICE_RSS_OUTER_HEADERS);
+	if (!status)
+		status = ice_rem_rss_cfg_sync(hw, vsi_handle, hashed_flds,
+					      addl_hdrs, ICE_RSS_INNER_HEADERS);
+	mutex_unlock(&hw->rss_locks);
+
+	return status;
+}
+
 /* Mapping of AVF hash bit fields to an L3-L4 hash combination.
  * As the ice_flow_avf_hdr_field represent individual bit shifts in a hash,
  * convert its values to their appropriate flow L3, L4 values.
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 2f68b59ace7e..2a2d8c1536cb 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -409,5 +409,8 @@ enum ice_status ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
 enum ice_status
 ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		u32 addl_hdrs);
+enum ice_status
+ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
+		u32 addl_hdrs);
 u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs);
 #endif /* _ICE_FLOW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index f104326037fb..3bacd9d76347 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2651,8 +2651,20 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 					vsi->vsi_num, v_ret);
 			}
 		} else {
-			v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
-			dev_err(dev, "RSS removal not supported\n");
+			enum ice_status status;
+
+			status = ice_rem_rss_cfg(hw, vsi->idx, hash_flds,
+						 addl_hdrs);
+			/* We just ignore ICE_ERR_DOES_NOT_EXIST, because
+			 * if two configurations share the same profile remove
+			 * one of them actually removes both, since the
+			 * profile is deleted.
+			 */
+			if (status && status != ICE_ERR_DOES_NOT_EXIST) {
+				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				dev_err(dev, "ice_rem_rss_cfg failed for VF ID:%d, error:%s\n",
+					vf->vf_id, ice_stat_str(status));
+			}
 		}
 	}
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
