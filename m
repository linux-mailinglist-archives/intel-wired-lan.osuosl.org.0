Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5410F959B8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 14:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFDC18136E;
	Wed, 21 Aug 2024 12:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TGDvaEEq1btz; Wed, 21 Aug 2024 12:18:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25A9F81332
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724242719;
	bh=7MA9y+67gvizIrf/1t5rQ5jrD9DyIzBXCLQ7u8W7PWQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hDZlsbwpWBXnqZ3/bY5N3wZY0DBDe0ylFpo06eeFOzF1o35ghMORNtCAGh5edNhpE
	 uWBQRTh83MZg+av8sp6Sqo20sHR1Kfqvft8lGsKM5xKw0YKQahJkqfRwsytyAEYCxP
	 AeKpk+4sbns3LcwC+K4NJdy9Upf12RpTAYCtyP22tW6eVoFc7Yc5o4tADps5/yeXRI
	 ROnYzhNQmEcAHncW42KoWsC6HBiNGMThd9y15oMnyXAYORavMtKTQY/wImUhXKa0xU
	 2coTMQb3Y/NnpKxE+w5c9MkC3PrKKwnsePduDEse6ahHpH1sWwinGD2XVETJPN+ULq
	 /U3VgvNpENgQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25A9F81332;
	Wed, 21 Aug 2024 12:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 053C71BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE9FE81340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHm7B4Bo0Q7n for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 12:18:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7FA378133A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FA378133A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FA378133A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:31 +0000 (UTC)
X-CSE-ConnectionGUID: OmQJ43HoTgySUxqkC4sqCw==
X-CSE-MsgGUID: h1jvdXetTTKlI26+H9Pv+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="34017083"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="34017083"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 05:18:18 -0700
X-CSE-ConnectionGUID: 4WaWdL0ERLiJdYbXMDmr/w==
X-CSE-MsgGUID: oM7RUeyZSJWbRvpMXc/7cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="60732476"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa006.fm.intel.com with ESMTP; 21 Aug 2024 05:18:15 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CDE0E2878C;
 Wed, 21 Aug 2024 13:18:13 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 21 Aug 2024 14:15:27 +0200
Message-Id: <20240821121539.374343-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240821121539.374343-1-wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724242711; x=1755778711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fIjpRmImRll32jnkBRqYwgQ1HLDH5ZtS4F/ePuU+KaI=;
 b=juGM7+VSd2KrfTChLulWVHmSLGlvJxwO8uSVSg0zKqGUEzXXCSmf65FA
 1jXZU/BsYi1SYvYvlf43xUULrLY4WZC/vnEsEFhKG6sJeoTdT2bF9I6l+
 KnXXzrDx0dks/4TUtkm1NPBYGLDbvLKx5MOy8dvWXCLYhPq0B4Rxr7G+x
 zs40ojnonLMrkxI1Z9H+BCFhfRdQnAI1us3Otg44YdjFchKhAT2oVXAWs
 Xfs8O/+QkQyKRwEin29qhqoG+xV7yTjOVZREktks6kj21DnrRjsV8knOp
 7RQtYAMs8E/4fIgrpKyNYmym7rH+VmwOwINVdU2h0earRWuirpMsAJJLY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=juGM7+VS
Subject: [Intel-wired-lan] [PATCH iwl-next v10 02/14] ice: support Rx
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
Cc: alexandr.lobakin@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, kuba@kernel.org
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

Signed-off-by: Simei Su <simei.su@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |  3 -
 drivers/net/ethernet/intel/ice/ice_lib.c      |  5 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  8 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 73 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  6 ++
 .../intel/ice/ice_virtchnl_allowlist.c        |  7 ++
 include/linux/avf/virtchnl.h                  | 15 +++-
 9 files changed, 112 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 3cf76ada261e..de8371ae574a 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -472,9 +472,6 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	 */
 	if (vsi->type != ICE_VSI_VF)
 		ice_write_qrxflxp_cntxt(hw, pf_q, rxdid, 0x3, true);
-	else
-		ice_write_qrxflxp_cntxt(hw, pf_q, ICE_RXDID_LEGACY_1, 0x3,
-					false);
 
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index fc5b87f51702..685739f0190c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1755,9 +1755,8 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
  * @prio: priority for the RXDID for this queue
  * @ena_ts: true to enable timestamp and false to disable timestamp
  */
-void
-ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio,
-			bool ena_ts)
+void ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio,
+			     bool ena_ts)
 {
 	int regval = rd32(hw, QRXFLXP_CNTXT(pf_q));
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 8ed6280af320..6144523179c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -286,8 +286,8 @@ void ice_ptp_restore_timestamp_mode(struct ice_pf *pf)
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
index b8ab162a5538..8fc1d9d823f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -323,6 +323,8 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx);
 void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx);
 enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 
+u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
+			     struct ptp_system_timestamp *sts);
 u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 			const struct ice_pkt_ctx *pkt_ctx);
 void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
@@ -360,6 +362,12 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 	return true;
 }
 
+static inline u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
+					   struct ptp_system_timestamp *sts)
+{
+	return 0;
+}
+
 static inline u64
 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 		    const struct ice_pkt_ctx *pkt_ctx)
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index be4266899690..b7c340bb7aa7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -136,6 +136,8 @@ struct ice_vf {
 	const struct ice_virtchnl_ops *virtchnl_ops;
 	const struct ice_vf_ops *vf_ops;
 
+	u32 ptp_caps;
+
 	/* devlink port data */
 	struct devlink_port devlink_port;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 59f62306b9cb..b60df6e9b3e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -495,6 +495,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
 
+	if (vf->driver_caps & VIRTCHNL_VF_CAP_PTP)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_PTP;
+
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
@@ -1652,6 +1655,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	struct ice_vsi *vsi;
 	u8 act_prt, pri_prt;
 	int i = -1, q_idx;
+	bool ena_ts;
 
 	lag = pf->lag;
 	mutex_lock(&pf->lag_mutex);
@@ -1783,9 +1787,14 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				rxdid = ICE_RXDID_LEGACY_1;
 			}
 
+			ena_ts = ((vf->driver_caps &
+				  VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC) &&
+				  (vf->driver_caps & VIRTCHNL_VF_CAP_PTP) &&
+				  (qpi->rxq.flags & VIRTCHNL_PTP_RX_TSTAMP));
+
 			ice_write_qrxflxp_cntxt(&vsi->back->hw,
-						vsi->rxq_map[q_idx],
-						rxdid, 0x03, false);
+						vsi->rxq_map[q_idx], rxdid,
+						ICE_RXDID_PRIO, ena_ts);
 		}
 	}
 
@@ -3788,6 +3797,56 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 				     v_ret, NULL, 0);
 }
 
+static int ice_vc_get_ptp_cap(struct ice_vf *vf,
+			      const struct virtchnl_ptp_caps *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	u32 caps = VIRTCHNL_1588_PTP_CAP_RX_TSTAMP |
+		   VIRTCHNL_1588_PTP_CAP_READ_PHC;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
+		goto err;
+
+	v_ret = VIRTCHNL_STATUS_SUCCESS;
+
+	if (msg->caps & caps)
+		vf->ptp_caps = caps;
+
+err:
+	/* send the response back to the VF */
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_1588_PTP_GET_CAPS, v_ret,
+				     (u8 *)&vf->ptp_caps,
+				     sizeof(struct virtchnl_ptp_caps));
+}
+
+static int ice_vc_get_phc_time(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	struct virtchnl_phc_time *phc_time __free(kfree) = NULL;
+	struct ice_pf *pf = vf->pf;
+	u32 len = 0;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
+		goto err;
+
+	v_ret = VIRTCHNL_STATUS_SUCCESS;
+
+	phc_time = kzalloc(sizeof(*phc_time), GFP_KERNEL);
+	if (!phc_time) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		goto err;
+	}
+
+	len = sizeof(*phc_time);
+
+	phc_time->time = ice_ptp_read_src_clk_reg(pf, NULL);
+
+err:
+	/* send the response back to the VF */
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_1588_PTP_GET_TIME, v_ret,
+				     (u8 *)phc_time, len);
+}
+
 static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.get_ver_msg = ice_vc_get_ver_msg,
 	.get_vf_res_msg = ice_vc_get_vf_res_msg,
@@ -3821,6 +3880,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
 	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
 	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
+	.get_ptp_cap = ice_vc_get_ptp_cap,
+	.get_phc_time = ice_vc_get_phc_time,
 };
 
 /**
@@ -3951,6 +4012,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
 	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
 	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
+	.get_ptp_cap = ice_vc_get_ptp_cap,
+	.get_phc_time = ice_vc_get_phc_time,
 };
 
 /**
@@ -4177,6 +4240,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
 		err = ops->dis_vlan_insertion_v2_msg(vf, msg);
 		break;
+	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
+		err = ops->get_ptp_cap(vf, (const void *)msg);
+		break;
+	case VIRTCHNL_OP_1588_PTP_GET_TIME:
+		err = ops->get_phc_time(vf);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 3a4115869153..849897bade4b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -19,6 +19,9 @@
 #define ICE_MAX_MACADDR_PER_VF		18
 #define ICE_FLEX_DESC_RXDID_MAX_NUM	64
 
+/* Priority to be compared against previous priority from the pipe */
+#define ICE_RXDID_PRIO			0x03
+
 /* VFs only get a single VSI. For ice hardware, the VF does not need to know
  * its VSI index. However, the virtchnl interface requires a VSI number,
  * mainly due to legacy hardware.
@@ -61,6 +64,9 @@ struct ice_virtchnl_ops {
 	int (*dis_vlan_stripping_v2_msg)(struct ice_vf *vf, u8 *msg);
 	int (*ena_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
 	int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*get_ptp_cap)(struct ice_vf *vf,
+			   const struct virtchnl_ptp_caps *msg);
+	int (*get_phc_time)(struct ice_vf *vf);
 };
 
 #ifdef CONFIG_PCI_IOV
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index d796dbd2a440..16b9b9ee42d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -84,6 +84,12 @@ static const u32 fdir_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
 };
 
+/* VIRTCHNL_VF_CAP_PTP */
+static const u32 ptp_allowlist_opcodes[] = {
+	VIRTCHNL_OP_1588_PTP_GET_CAPS,
+	VIRTCHNL_OP_1588_PTP_GET_TIME,
+};
+
 struct allowlist_opcode_info {
 	const u32 *opcodes;
 	size_t size;
@@ -104,6 +110,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_CAP_PTP, ptp_allowlist_opcodes),
 };
 
 /**
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 252fad21b04a..012ed2f5f9d0 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -304,6 +304,18 @@ struct virtchnl_txq_info {
 
 VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
 
+/* virtchnl_rxq_info_flags - definition of bits in the flags field of the
+ *			     virtchnl_rxq_info structure.
+ *
+ * @VIRTCHNL_PTP_RX_TSTAMP: request to enable Rx timestamping
+ *
+ * Other flag bits are currently * reserved and they may be extended in the
+ * future.
+ */
+enum virtchnl_rxq_info_flags {
+	VIRTCHNL_PTP_RX_TSTAMP = BIT(0),
+};
+
 /* VIRTCHNL_OP_CONFIG_RX_QUEUE
  * VF sends this message to set up parameters for one RX queue.
  * External data buffer contains one instance of virtchnl_rxq_info.
@@ -327,7 +339,8 @@ struct virtchnl_rxq_info {
 	u32 max_pkt_size;
 	u8 crc_disable;
 	u8 rxdid;
-	u8 pad1[2];
+	enum virtchnl_rxq_info_flags flags:8; /* see virtchnl_rxq_info_flags */
+	u8 pad1;
 	u64 dma_ring_addr;
 
 	/* see enum virtchnl_rx_hsplit; deprecated with AVF 1.0 */
-- 
2.40.1

