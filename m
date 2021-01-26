Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D2230371D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 08:08:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7A18866AC;
	Tue, 26 Jan 2021 07:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fke2U9vjUGbi; Tue, 26 Jan 2021 07:08:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B5D4866F3;
	Tue, 26 Jan 2021 07:08:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 554AB1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 07:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 43F57203B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 07:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIwra1j97Sf9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 07:08:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id AA0C1203DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 07:08:34 +0000 (UTC)
IronPort-SDR: qsvaNbQsRE3PDu7/WzlLvPsewN1RyyjxgRDR7iI+2skzQnu/unQUe99vwQ1J3jaZYMr+TdC6Hl
 v70yIuXJ8QJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="176348244"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="176348244"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 23:08:34 -0800
IronPort-SDR: Xz1CxqH8YZqGGZc9ox+FmziME286m6jR8WHv6TV8km0AalxxpYOlN4EGPi+7jQXw8gkKeLLBJW
 Kqf3GVjXV9+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="472639137"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.189])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2021 23:08:32 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Jan 2021 14:51:53 +0800
Message-Id: <20210126065206.137422-8-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210126065206.137422-1-haiyue.wang@intel.com>
References: <20210126065206.137422-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v2 07/20] ice: Support RSS configure
 removal for AVF
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
Cc: Jia Guo <jia.guo@intel.com>, cunming.liang@intel.com,
 Vignesh Sridhar <vignesh.sridhar@intel.com>, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Add ice_add_rss_cfg's reverse operation ice_rem_rss_cfg.
It is invoked when handle VIRTCHNL_OP_DEL_RSS_CFG.

Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
Signed-off-by: Jia Guo <jia.guo@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c     | 90 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_flow.h     |  5 ++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 17 +++-
 3 files changed, 110 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 6260650ba809..6bf467e09307 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -2134,6 +2134,96 @@ ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 	return status;
 }
 
+#ifdef CONFIG_PCI_IOV
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
+ * removed. Calls are made to underlying flow apis which will in
+ * turn build or update buffers for RSS XLT1 section.
+ */
+enum ice_status
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
+#endif /* CONFIG_PCI_IOV */
+
 /* Mapping of AVF hash bit fields to an L3-L4 hash combination.
  * As the ice_flow_avf_hdr_field represent individual bit shifts in a hash,
  * convert its values to their appropriate flow L3, L4 values.
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 8e06a211aaba..d5e7f2dadd56 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -408,5 +408,10 @@ enum ice_status ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
 enum ice_status
 ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		u32 addl_hdrs);
+#ifdef CONFIG_PCI_IOV
+enum ice_status
+ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
+		u32 addl_hdrs);
+#endif /* CONFIG_PCI_IOV */
 u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs);
 #endif /* _ICE_FLOW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 2639428a2143..157dc414bce5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2565,8 +2565,21 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 					vsi->vsi_num, v_ret);
 			}
 		} else {
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-			dev_err(dev, "RSS removal not support\n");
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
+				dev_err(dev,
+					"ice_rem_rss_cfg failed for vsi = %d, v_ret = %d\n",
+					vsi->vsi_num, v_ret);
+			}
 		}
 	}
 
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
