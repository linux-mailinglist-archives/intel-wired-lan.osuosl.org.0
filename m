Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9769578F60F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 01:19:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F92441F8E;
	Thu, 31 Aug 2023 23:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F92441F8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693523971;
	bh=YwtqsnWP0JxkBexc3XGwqWthNxC+pcXqYc57g0AsLq0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k9UdFILjRsUPzs27YqBGoyYIPB8xQPkntbeZzDBtm8a2NV27uDsHvzrUjA8F2LmtR
	 4ihoOm/C4wk9Ad2n8lKMxGuFaGAndDjq2kom2aGT8aLva3sdUFdxYZgc5RrvcEf/Xt
	 /OpuAtECoX+CgOON/0W65uQG+NnyACM6y2NlIoRujEVyF9XoCmP0QqmC8HTH8IqRY4
	 m/Rd7noaWJ1o8Gh2m9t4TRBatZmoiTVF+eiH9Z70tdRbtKt/xtZEAfCM77AaDqIiSr
	 4z1LAkGbsPU6AEuoapjfOFgyBDCnMeQHBMVI9h/hCeukn61tM3OkuW0nefdlVZQ8r3
	 m86to6p4QoXSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0W-rV3FWBDoz; Thu, 31 Aug 2023 23:19:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7179841F40;
	Thu, 31 Aug 2023 23:19:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7179841F40
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DC4A1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 23:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBE3D4014E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 23:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBE3D4014E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vvnu7K4WQXDD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 23:19:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F88240122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 23:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F88240122
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="407086156"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="407086156"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 16:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="805212132"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="805212132"
Received: from mbeste-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.251.215.15])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 16:19:12 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 31 Aug 2023 17:18:58 -0600
Message-Id: <20230831231859.3480459-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230831231859.3480459-1-ahmed.zaki@intel.com>
References: <20230831231859.3480459-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693523954; x=1725059954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4pf+opjaZld3gu1xkBLZxixxaji0VfujikHEBta2bDE=;
 b=TmSL1RpIcZQtwKuaf9k7ucAW7IeobcW5yquYJUwcSMexWKDlImgmOJ8d
 THgV9jKiXp50U2+3mLn/ur+/WO97AD8zu3Kl47sWpHdnl1YK3VQNNyxSV
 b2Kjn8IU+k3mWab3ZBLeI4auAylJ/AxTrds9DD0sIDsSEBtjFP7+UuyQ3
 fQwRP3cZUjVnYVO7DBT/RO0vbYmSKsT3WhZj2WYPmjGhmFaCfvQMRgScJ
 R3W/p9/niEMXJY5VFQ/Cj0ivFk+XiaCZjUJ8Lduuo1sE0JjLK8HeHEttk
 LZ8XA5+36ZMMbvpj47fni6UOfrrB2/wmvcthHZusrzExEQsNQvJVgBWdq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TmSL1RpI
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: Fix VLAN and CRC
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
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 62 ++++++++++++++++---
 2 files changed, 56 insertions(+), 9 deletions(-)

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
index c0c3e524c523..602c18e823c0 100644
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
@@ -2425,6 +2429,19 @@ static int ice_vc_remove_vlan_msg(struct ice_vf *vf, u8 *msg)
 	return ice_vc_process_vlan_msg(vf, msg, false);
 }
 
+/**
+ * ice_vsi_is_rxq_crc_strip_dis - check if Rx queue CRC strip is disabled or not
+ * @vsi: pointer to the VF VSI info
+ */
+static bool ice_vsi_is_rxq_crc_strip_dis(struct ice_vsi *vsi)
+{
+	for (u16 i = 0; i < vsi->alloc_rxq; i++)
+		if (vsi->rx_rings[i]->flags & ICE_RX_FLAGS_CRC_STRIP_DIS)
+			return true;
+
+	return false;
+}
+
 /**
  * ice_vc_ena_vlan_stripping
  * @vf: pointer to the VF info
@@ -2454,6 +2471,8 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 
 	if (vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	else
+		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
 
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
@@ -2489,6 +2508,8 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 
 	if (vsi->inner_vlan_ops.dis_stripping(vsi))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	else
+		vf->vlan_strip_ena &= ~ICE_INNER_VLAN_STRIP_ENA;
 
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
@@ -2664,6 +2685,8 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
+	vf->vlan_strip_ena = 0;
+
 	if (!vsi)
 		return -EINVAL;
 
@@ -2673,10 +2696,16 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
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
@@ -3450,6 +3479,11 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
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
@@ -3470,6 +3504,8 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 			 * enabled, is extracted in L2TAG1.
 			 */
 			ice_vsi_update_l2tsel(vsi, l2tsel);
+
+			vf->vlan_strip_ena |= ICE_OUTER_VLAN_STRIP_ENA;
 		}
 	}
 
@@ -3481,6 +3517,9 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 		goto out;
 	}
 
+	if (ethertype_setting)
+		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
+
 out:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
 				     v_ret, NULL, 0);
@@ -3542,6 +3581,8 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 			 * in L2TAG1.
 			 */
 			ice_vsi_update_l2tsel(vsi, l2tsel);
+
+			vf->vlan_strip_ena &= ~ICE_OUTER_VLAN_STRIP_ENA;
 		}
 	}
 
@@ -3551,6 +3592,9 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
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
