Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B8588E2C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 14:34:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 507454088C;
	Wed, 27 Mar 2024 13:34:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XxCJ4y-E4OwJ; Wed, 27 Mar 2024 13:34:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12AE34058B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711546472;
	bh=nemxOuC51CHd5HjXxu2FvEkkWPElZ5JBJWOrxdisaw0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cORH5mhp7I2YB5bgLlFFBYf/GH9UPlNBjL+IFVH0WS01zJZARMbA5ihWHVeHw6VtF
	 wX3Pz+bSrW5Pv2Sd0UxaKsdNIMquz7VoUXsAGIs3T8OCFFbg9FRr4vnAQXvFISC8sm
	 6MM1JXNl/do/2ABi9AymphSsGBXJsi4Nu3iwg3OvONtUc7t3v67SjKLfi0brvFR6QB
	 BF9MQvwRXs1qNXXI6qIcDg4Jf6g7qV1oFeQHnH54MB/scV1sONMCPgy+46qptwSw+V
	 030YR8XmDdSzZVTBWeE1TY7l4Sf7hBp3yaS8ZLXz99iDEGurt2fc+9MLvPAYFVj85M
	 Dt1FhywPUl+uA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12AE34058B;
	Wed, 27 Mar 2024 13:34:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 645791BF41D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50B8B81279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sT6pWl6s25lj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 13:34:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2248780FB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2248780FB8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2248780FB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:26 +0000 (UTC)
X-CSE-ConnectionGUID: 52Gp3TnmRnq8qsOTtEjo5A==
X-CSE-MsgGUID: 0FPjzBtEQIaJmbjFni5aUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="9608508"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="9608508"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 06:34:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="16355716"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 27 Mar 2024 06:34:24 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4BF272819F;
 Wed, 27 Mar 2024 13:34:23 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 09:25:33 -0400
Message-Id: <20240327132543.15923-3-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711546467; x=1743082467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=atTywbXEbTXghHbYArzW7bMCDahirOmnsfHXJBg5RaI=;
 b=AINTJJlrASF0KufWHfosKefrUQ79exoWBFtodjT4/QtMkHtwMa4i9KAo
 uuBIb4jzYQy78HJ2XnyKOS2E+opUY3uQPpDtg4N8v3AMo4pgRL6DS1ynT
 QQxfl+wQkJN8uKeuWdZr7b12sZbr0w6nQ4CFyUcf9gjJ9C97xVnmY5VJM
 C0qk60evhUyoiEqmtMutL7CcjHoLVqnx++ADlH2fKB5MXlCfpIp3EOxLX
 K77Hs7jv2AO3OuMUFDKGXJ7/qlWKvuCK/azZ1CFo20jpHrvuqSaWDntjb
 VEiDG5WpeGjmtEQdGYGi6EeR6tKtADxBSR+zyF2LyQEe4JyTgf7Qfaf0x
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AINTJJlr
Subject: [Intel-wired-lan] [PATCH iwl-next v2 02/12] ice: support Rx
 timestamp on flex descriptor
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Simei Su <simei.su@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Simei Su <simei.su@intel.com>

To support Rx timestamp offload, VIRTCHNL_OP_1588_PTP_CAPS is sent by
the VF to request PTP capability and responded by the PF what capability
is enabled for that VF.

Hardware captures timestamps which contain only 32 bits of nominal
nanoseconds, as opposed to the 64bit timestamps that the stack expects.
To convert 32b to 64b, we need a current PHC time.
VIRTCHNL_OP_1588_PTP_GET_TIME is sent by the VF and responded by the
PF with the current PHC time.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Simei Su <simei.su@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |  3 -
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 86 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  2 +
 .../intel/ice/ice_virtchnl_allowlist.c        |  6 ++
 include/linux/avf/virtchnl.h                  | 15 +++-
 8 files changed, 111 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 5e1d5a76ee00..c6bfa5451dfe 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -469,9 +469,6 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	 */
 	if (vsi->type != ICE_VSI_VF)
 		ice_write_qrxflxp_cntxt(hw, pf_q, rxdid, 0x3, true);
-	else
-		ice_write_qrxflxp_cntxt(hw, pf_q, ICE_RXDID_LEGACY_1, 0x3,
-					false);
 
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..d7b71f7e0c7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -366,8 +366,8 @@ void ice_ptp_restore_timestamp_mode(struct ice_pf *pf)
  * @sts: Optional parameter for holding a pair of system timestamps from
  *       the system clock. Will be ignored if NULL is given.
  */
-static u64
-ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
+u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
+			     struct ptp_system_timestamp *sts)
 {
 	struct ice_hw *hw = &pf->hw;
 	u32 hi, lo, lo2;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 3af20025043a..8e41a4e3d96a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -314,6 +314,8 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx);
 void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx);
 enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 
+u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
+			     struct ptp_system_timestamp *sts);
 u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 			const struct ice_pkt_ctx *pkt_ctx);
 void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index fec16919ec19..979bfd64097b 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -128,6 +128,8 @@ struct ice_vf {
 	const struct ice_virtchnl_ops *virtchnl_ops;
 	const struct ice_vf_ops *vf_ops;
 
+	struct virtchnl_ptp_caps ptp_caps;
+
 	/* devlink port data */
 	struct devlink_port devlink_port;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 1c6ce0c4ed4e..3324c188aa31 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -491,6 +491,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
 
+	if (vf->driver_caps & VIRTCHNL_VF_CAP_PTP)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_PTP;
+
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
@@ -1779,9 +1782,17 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				rxdid = ICE_RXDID_LEGACY_1;
 			}
 
-			ice_write_qrxflxp_cntxt(&vsi->back->hw,
-						vsi->rxq_map[q_idx],
-						rxdid, 0x03, false);
+			if (vf->driver_caps &
+			    VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC &&
+			    vf->driver_caps & VIRTCHNL_VF_CAP_PTP &&
+			    qpi->rxq.flags & VIRTCHNL_PTP_RX_TSTAMP)
+				ice_write_qrxflxp_cntxt(&vsi->back->hw,
+							vsi->rxq_map[q_idx],
+							rxdid, 0x03, true);
+			else
+				ice_write_qrxflxp_cntxt(&vsi->back->hw,
+							vsi->rxq_map[q_idx],
+							rxdid, 0x03, false);
 		}
 	}
 
@@ -3784,6 +3795,65 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 				     v_ret, NULL, 0);
 }
 
+static int ice_vc_get_ptp_cap(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	u32 msg_caps;
+	int ret;
+
+	/* VF is not in active state */
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	msg_caps = ((struct virtchnl_ptp_caps *)msg)->caps;
+
+	/* Any VF asking for RX timestamping and reading PHC will get that */
+	if (msg_caps & (VIRTCHNL_1588_PTP_CAP_RX_TSTAMP |
+	    VIRTCHNL_1588_PTP_CAP_READ_PHC))
+		vf->ptp_caps.caps = VIRTCHNL_1588_PTP_CAP_RX_TSTAMP |
+				    VIRTCHNL_1588_PTP_CAP_READ_PHC;
+
+err:
+	/* send the response back to the VF */
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_1588_PTP_GET_CAPS, v_ret,
+				    (u8 *)&vf->ptp_caps,
+				    sizeof(struct virtchnl_ptp_caps));
+	return ret;
+}
+
+static int ice_vc_get_phc_time(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_phc_time *phc_time = NULL;
+	struct ice_pf *pf = vf->pf;
+	int len = 0;
+	int ret;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	len = sizeof(struct virtchnl_phc_time);
+	phc_time = kzalloc(len, GFP_KERNEL);
+	if (!phc_time) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		len = 0;
+		goto err;
+	}
+
+	phc_time->time = ice_ptp_read_src_clk_reg(pf, NULL);
+
+err:
+	/* send the response back to the VF */
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_1588_PTP_GET_TIME,
+				    v_ret, (u8 *)phc_time, len);
+	kfree(phc_time);
+	return ret;
+}
+
 static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.get_ver_msg = ice_vc_get_ver_msg,
 	.get_vf_res_msg = ice_vc_get_vf_res_msg,
@@ -3817,6 +3887,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
 	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
 	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
+	.get_ptp_cap = ice_vc_get_ptp_cap,
+	.get_phc_time = ice_vc_get_phc_time,
 };
 
 /**
@@ -3947,6 +4019,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
 	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
 	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
+	.get_ptp_cap = ice_vc_get_ptp_cap,
+	.get_phc_time = ice_vc_get_phc_time,
 };
 
 /**
@@ -4173,6 +4247,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
 		err = ops->dis_vlan_insertion_v2_msg(vf, msg);
 		break;
+	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
+		err = ops->get_ptp_cap(vf, msg);
+		break;
+	case VIRTCHNL_OP_1588_PTP_GET_TIME:
+		err = ops->get_phc_time(vf);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 3a4115869153..e1c32f0f2e7a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -61,6 +61,8 @@ struct ice_virtchnl_ops {
 	int (*dis_vlan_stripping_v2_msg)(struct ice_vf *vf, u8 *msg);
 	int (*ena_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
 	int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*get_ptp_cap)(struct ice_vf *vf, u8 *msg);
+	int (*get_phc_time)(struct ice_vf *vf);
 };
 
 #ifdef CONFIG_PCI_IOV
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index d796dbd2a440..7a442a53f4cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -84,6 +84,11 @@ static const u32 fdir_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
 };
 
+/* VIRTCHNL_VF_CAP_PTP */
+static const u32 ptp_allowlist_opcodes[] = {
+	VIRTCHNL_OP_1588_PTP_GET_CAPS, VIRTCHNL_OP_1588_PTP_GET_TIME,
+};
+
 struct allowlist_opcode_info {
 	const u32 *opcodes;
 	size_t size;
@@ -104,6 +109,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_CAP_PTP, ptp_allowlist_opcodes),
 };
 
 /**
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 5003d29e3f5b..91974c06f3d2 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -303,6 +303,18 @@ struct virtchnl_txq_info {
 
 VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
 
+/* virtchnl_rxq_info_flags
+ *
+ * Definition of bits in the flags field of the virtchnl_rxq_info structure.
+ */
+enum virtchnl_rxq_info_flags {
+	/* If the VIRTCHNL_PTP_RX_TSTAMP bit of the flag field is set, this is
+	 * a request to enable Rx timestamp. Other flag bits are currently
+	 * reserved and they may be extended in the future.
+	 */
+	VIRTCHNL_PTP_RX_TSTAMP = BIT(0),
+};
+
 /* VIRTCHNL_OP_CONFIG_RX_QUEUE
  * VF sends this message to set up parameters for one RX queue.
  * External data buffer contains one instance of virtchnl_rxq_info.
@@ -326,7 +338,8 @@ struct virtchnl_rxq_info {
 	u32 max_pkt_size;
 	u8 crc_disable;
 	u8 rxdid;
-	u8 pad1[2];
+	u8 flags; /* see virtchnl_rxq_info_flags */
+	u8 pad1;
 	u64 dma_ring_addr;
 
 	/* see enum virtchnl_rx_hsplit; deprecated with AVF 1.0 */
-- 
2.38.1

