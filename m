Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6ED79012F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 19:09:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE0C942085;
	Fri,  1 Sep 2023 17:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE0C942085
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693588169;
	bh=9CWImMDrFn6f4d4sszt8EFEbbRITiV33P7kGAStAVS8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aytgrKkUXyheYZCvELm2DBzUzo+XzjZdvCu7t57oGnO2JE9dvVyGSWci+YdbpBNBS
	 emEA/j8xOO1NmsulFu8z/coAqpKOI0DxyTW3VsZAOQCNfXq1BFS6TliCP8jc4OSqZ5
	 ADpnLDFkhpMyBQYmhqPlmDAQQH4KeL6bzsZy5DabAH4ku7npS7DiGxFKzKgwPvm6YX
	 JpDWvt9qt4Qj7bX+BxohpsYH2yMEPkrgvkDoIuMxCFcTnV93oi9kkEL+RI+s06ukAl
	 4kTUTB0jzgcAvceBxpHfYdSGXGFx+eLgZtC6YFDYHagtdlXNQaAbvW4Pi490jj0uWt
	 VD84ogkO2nd5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJ2qQxOafCco; Fri,  1 Sep 2023 17:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D6C241FAC;
	Fri,  1 Sep 2023 17:09:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D6C241FAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A3581BF576
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B6CC8186A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B6CC8186A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RKhqbaG_LxJC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 17:09:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABC36818C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABC36818C4
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="366495588"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="366495588"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 10:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="854787624"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="854787624"
Received: from kgdowskx-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.251.215.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 10:09:08 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Sep 2023 11:08:49 -0600
Message-Id: <20230901170850.3493782-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901170850.3493782-1-ahmed.zaki@intel.com>
References: <20230901170850.3493782-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693588156; x=1725124156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rxevy582QQQEB4mNOrskFAjjfAt1a/5U03zOS5xlES4=;
 b=EoZCO7CZyyLm9BhOaE71wjV3nmMTiqgdGA15kt9ElijGroqN/ww6nUf6
 nTzKoJRHkK/g6viDIguRMk1XVQZjW32Iqn5fOCdR1jdbWxpbNLDSMGp2K
 bSTwb8h9/PjUcZ3ghq8jY58fZQZdwr8/Ixy0U8tMAzHH2MsZ0TytE2V6B
 K54/e2eRefCqQeldJqcEa12/5Czf0CIXamS2BpUztDrBjziWUBMHne3aM
 LSFqVFpEUjbChqishh12EZhVPLHWkneIcL90yeKN/y1oR9AyVhYGE+PXF
 1k6MTPVwsd0deg66yJTHIRkBGXLLaoIMQm3S9Dx6bNVmzzOKizLVOv5Ea
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EoZCO7CZ
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/4] ice: Fix VLAN and CRC
 strip co-existence
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
Cc: Haiyue Wang <haiyue.wang@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Haiyue Wang <haiyue.wang@intel.com>

When VLAN strip is enabled, the CRC strip should not be allowed to be
disabled. And when CRC strip is disabled, the VLAN strip should not be
allowed to be enabled.

It needs to check CRC strip disable setting parameter firstly before
configuring the Rx/Tx queues, otherwise, in current error handling,
the already set Tx queue context doesn't rollback correctly, it will
cause the Tx queue setup failure next time:
"Failed to set LAN Tx queue context"

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 64 ++++++++++++++++---
 2 files changed, 58 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 48fea6fa0362..31a082e8a827 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -123,6 +123,9 @@ struct ice_vf {
 	u8 num_req_qs;			/* num of queue pairs requested by VF */
 	u16 num_mac;
 	u16 num_vf_qs;			/* num of queue configured per VF */
+	u8 vlan_strip_ena;		/* Outer and Inner VLAN strip enable */
+#define ICE_INNER_VLAN_STRIP_ENA	BIT(0)
+#define ICE_OUTER_VLAN_STRIP_ENA	BIT(1)
 	struct ice_mdd_vf_events mdd_rx_events;
 	struct ice_mdd_vf_events mdd_tx_events;
 	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index c0c3e524c523..2fec5530d2ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1623,6 +1623,15 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
+	for (i = 0; i < qci->num_queue_pairs; i++) {
+		if (!qci->qpair[i].rxq.crc_disable)
+			continue;
+
+		if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC) ||
+		    vf->vlan_strip_ena)
+			goto error_param;
+	}
+
 	for (i = 0; i < qci->num_queue_pairs; i++) {
 		qpi = &qci->qpair[i];
 		if (qpi->txq.vsi_id != qci->vsi_id ||
@@ -1669,11 +1678,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			vsi->rx_rings[i]->dma = qpi->rxq.dma_ring_addr;
 			vsi->rx_rings[i]->count = qpi->rxq.ring_len;
 
-			if (qpi->rxq.crc_disable &&
-			    !(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC)) {
-				goto error_param;
-			}
-
 			if (qpi->rxq.crc_disable)
 				vsi->rx_rings[q_idx]->flags |=
 					ICE_RX_FLAGS_CRC_STRIP_DIS;
@@ -2425,6 +2429,21 @@ static int ice_vc_remove_vlan_msg(struct ice_vf *vf, u8 *msg)
 	return ice_vc_process_vlan_msg(vf, msg, false);
 }
 
+/**
+ * ice_vsi_is_rxq_crc_strip_dis - check if Rx queue CRC strip is disabled or not
+ * @vsi: pointer to the VF VSI info
+ */
+static bool ice_vsi_is_rxq_crc_strip_dis(struct ice_vsi *vsi)
+{
+	u16 i;
+
+	ice_for_each_alloc_rxq(vsi , i)
+		if (vsi->rx_rings[i]->flags & ICE_RX_FLAGS_CRC_STRIP_DIS)
+			return true;
+
+	return false;
+}
+
 /**
  * ice_vc_ena_vlan_stripping
  * @vf: pointer to the VF info
@@ -2454,6 +2473,8 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 
 	if (vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	else
+		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
 
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
@@ -2489,6 +2510,8 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 
 	if (vsi->inner_vlan_ops.dis_stripping(vsi))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	else
+		vf->vlan_strip_ena &= ~ICE_INNER_VLAN_STRIP_ENA;
 
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
@@ -2664,6 +2687,8 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
+	vf->vlan_strip_ena = 0;
+
 	if (!vsi)
 		return -EINVAL;
 
@@ -2673,10 +2698,16 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 	if (ice_vf_is_port_vlan_ena(vf) && !ice_is_dvm_ena(&vsi->back->hw))
 		return 0;
 
-	if (ice_vf_vlan_offload_ena(vf->driver_caps))
-		return vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
-	else
-		return vsi->inner_vlan_ops.dis_stripping(vsi);
+	if (ice_vf_vlan_offload_ena(vf->driver_caps)) {
+		int err;
+
+		err = vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
+		if (!err)
+			vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
+		return err;
+	}
+
+	return vsi->inner_vlan_ops.dis_stripping(vsi);
 }
 
 static u16 ice_vc_get_max_vlan_fltrs(struct ice_vf *vf)
@@ -3450,6 +3481,11 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 		goto out;
 	}
 
+	if (ice_vsi_is_rxq_crc_strip_dis(vsi)) {
+		v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
+		goto out;
+	}
+
 	ethertype_setting = strip_msg->outer_ethertype_setting;
 	if (ethertype_setting) {
 		if (ice_vc_ena_vlan_offload(vsi,
@@ -3470,6 +3506,8 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 			 * enabled, is extracted in L2TAG1.
 			 */
 			ice_vsi_update_l2tsel(vsi, l2tsel);
+
+			vf->vlan_strip_ena |= ICE_OUTER_VLAN_STRIP_ENA;
 		}
 	}
 
@@ -3481,6 +3519,9 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 		goto out;
 	}
 
+	if (ethertype_setting)
+		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
+
 out:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
 				     v_ret, NULL, 0);
@@ -3542,6 +3583,8 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 			 * in L2TAG1.
 			 */
 			ice_vsi_update_l2tsel(vsi, l2tsel);
+
+			vf->vlan_strip_ena &= ~ICE_OUTER_VLAN_STRIP_ENA;
 		}
 	}
 
@@ -3551,6 +3594,9 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 		goto out;
 	}
 
+	if (ethertype_setting)
+		vf->vlan_strip_ena &= ~ICE_INNER_VLAN_STRIP_ENA;
+
 out:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
 				     v_ret, NULL, 0);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
