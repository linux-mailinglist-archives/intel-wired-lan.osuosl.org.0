Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86851786F8B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 14:51:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18FDD41532;
	Thu, 24 Aug 2023 12:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18FDD41532
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692881461;
	bh=2Tvh0x3TrrPJV4dRN8uCu+5qsAU194+rEvOJEaUO4Gg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UfHH1hL/uPeeJMIyGI16zH9s2gTT/+iycdqP+YYFx8/p37opTdVkQDbV6WgpjLj79
	 qj2AofBa2Ohubd0SnWy4ImHNXAKqYXPiyk58BEFUaENcQxTcbzmlPxgAMiWGH5MGdJ
	 Srr5z1HAl7ZLOCTz5tAQOyQP4puGDPT5UrZIOvNKuwXDjjRXychrX3+uagk3dpaOXw
	 PQbn7NcUdE4sML7bwLm5JL4voO1/FTU6eYvzcibcC9qmAmPe68eKHrZ3m19bfyjInF
	 wsDJyjz8IUHto6Ny4dd2BEMPzGyjgSx09c8ZvXImstL1lDnlEk+DzgsN+ZAl14PC+o
	 VEhWkSjHV/yOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QN2MxG-5SF3p; Thu, 24 Aug 2023 12:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C42514150B;
	Thu, 24 Aug 2023 12:50:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C42514150B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C15BC1BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A9AB6133F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A9AB6133F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tvw0JraocrnV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 12:50:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 478FB60D80
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 478FB60D80
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378183421"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378183421"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:50:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802528413"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802528413"
Received: from isergee-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.45.83])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:50:42 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 06:50:23 -0600
Message-Id: <20230824125023.3302949-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230824125023.3302949-1-ahmed.zaki@intel.com>
References: <20230824125023.3302949-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692881444; x=1724417444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QNtMK1UhBY4aZTjNiUu6z47kFbAqd/pO18U0znjheEQ=;
 b=GretOoYe3SQd+WZKWip+ieZrK1TuO3iXnZoI0IVan3SBhD2LRyt/QNC4
 u1yUDLIEJisjL6lvRC4QPvkdvUt5vEWuiS0MNcyY3oE3fvgkCtCqmNsua
 a+zIEHRkA/xh5nhuFDcZBrMjpZ27ockXuKKHnYQdjdtk7JTz6XUGJ7bO2
 BybLJaHDXs9Iy5YDernQhgH8MchtmyPQoNn6EbZIvVd/qW+V+wOcMsGt4
 z+2hcefHXz6OF0Nkodi62WLl9b5WVFhuAAzXJrOHtGwN+1VB0Py8uJn5b
 6eXe/1X9D+o/jtUogv+XQvWHyKGtaB4BCt8ZRwFL+C56pccQEGamKDDMD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GretOoYe
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: Fix VLAN and CRC strip
 co-existence
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
"Failed to set LAN Tx queue context, error: ICE_ERR_PARAM"

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
index c0c3e524c523..e1621aecd973 100644
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
+	for (i = 0; i < vsi->alloc_rxq; i++)
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
@@ -2663,6 +2686,9 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	int err;
+
+	vf->vlan_strip_ena = 0;
 
 	if (!vsi)
 		return -EINVAL;
@@ -2673,10 +2699,15 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 	if (ice_vf_is_port_vlan_ena(vf) && !ice_is_dvm_ena(&vsi->back->hw))
 		return 0;
 
-	if (ice_vf_vlan_offload_ena(vf->driver_caps))
-		return vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
-	else
-		return vsi->inner_vlan_ops.dis_stripping(vsi);
+	if (ice_vf_vlan_offload_ena(vf->driver_caps)) {
+		err = vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
+
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
