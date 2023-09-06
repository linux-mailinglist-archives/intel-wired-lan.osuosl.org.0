Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C06879440D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 21:57:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCB56821C8;
	Wed,  6 Sep 2023 19:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCB56821C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694030255;
	bh=KYSxyF2EfdqLxj8XxZVTkYd+sM7Bv6R48RiOm7Kg/O4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LMVx6QgRz/10blLVsvhMTMbCqwGFnX4I+OwzMcrsZZgBxbH7UtLdt+6hRwW5tGWu7
	 ifs266yS0D7lU3BvSWdAFL80xVTZOvBpi4Jgdmivm12t5iKVyOxDzwuOGWHAzeVvu9
	 RFPazo8EVDBPn63FkLGe5bhE917ULOcPUkz00y+6BAoexroyQ6hs5HCAm42zsbb73/
	 DbX8HUHTU2ICBvRu9I0Oq02DaVCDjdXBOWa+7g5VC9swC/kVdLqEAhUBT2X8cd3TfS
	 AlaC33o0PZLO4pShtYafE/CuqWWejmq3Kfj3wFcgO0srZmuZi6YmF7D8ZNZnR1vB4g
	 qSdbASJ8fEm2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gc29SYzlvTRd; Wed,  6 Sep 2023 19:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EC1B80A8B;
	Wed,  6 Sep 2023 19:57:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EC1B80A8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3300C1BF334
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1835861062
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1835861062
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDIxU_DnxNEk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 19:57:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B80F607A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B80F607A1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="376070128"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="376070128"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 12:57:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="915413443"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="915413443"
Received: from nzandani-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.34.148])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 12:57:17 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Sep 2023 13:57:03 -0600
Message-Id: <20230906195704.3651720-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230906195704.3651720-1-ahmed.zaki@intel.com>
References: <20230906195704.3651720-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694030240; x=1725566240;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rN+3xT+ok5C+VDcgjOSO98jrUVtWDNgWVB4VzS3+hMo=;
 b=Q9MAg04SLsfaiYz7op/B+LZju3l+fjP0PxVIWPPMnU39y7lFAZ9pOHWx
 88Ig/QP+I1eszttr2013Hx0DRerNNzMuv7Elez0BjPJzzrUh1I+MI9Gcr
 DYniCspAKqh4ooXxHuzQo22uqbSUzRwPwFFQTGLbJTa1CIA2rrJwl45qL
 BjFixIu2uX0hpiDIjLU/5oVHqgtVli5HBfjYVyChk1hzSJKP+sbOHDIPl
 7nCinbO0A5vd1Lqcla7+MPeWSA3dX5/O7re6UL3Ig+baWJyNgWO/mg4D/
 YCpaRQwxtomv5GmXhEk5qcwG7FdeszrARvIJLoWQqqvFcTlwMsGPOajEx
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q9MAg04S
Subject: [Intel-wired-lan] [PATCH iwl-next v7 3/4] ice: Check CRC strip
 requirement for VLAN strip
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
Cc: Haiyue Wang <haiyue.wang@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Haiyue Wang <haiyue.wang@intel.com>

When VLAN strip is enabled, the CRC strip must not be disabled. And when
the CRC strip is disabled, the VLAN strip should not be enabled.

The driver needs to check CRC strip disable setting parameter before
configuring the Rx/Tx queues, otherwise, in current error handling,
the already set Tx queue context doesn't roll back correctly, it will
cause the Tx queue setup failure next time:
"Failed to set LAN Tx queue context"

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
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
index c0c3e524c523..cad237dd8894 100644
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
+	unsigned int i;
+
+	ice_for_each_alloc_rxq(vsi, i)
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
