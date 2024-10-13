Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F72399C629
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 11:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CE99607BE;
	Mon, 14 Oct 2024 09:44:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wTLds0c8r29W; Mon, 14 Oct 2024 09:44:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E9A760724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728899053;
	bh=/PkpRQU9c/FyAn/aPyIu7bzcFiwruSVNWxfOZzX0CDo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eU/xQdOS3pS3U7SsJF3syYhwX26OTdsPYjIFiIIeUEKhBrENJZw4KfRx+4Z3Tx7d+
	 IYmFgprkwqY1F24DnkTfymJazNhdL6VplJdg2TWKqYHQjQ8t0vFFQBjh4CYi7nZaGc
	 yLwsmECZ7G7KKZD4kt7XsRNJlJHe7pu/4c660QV1AoOlnsPze9GWah6GDO3eY0KK5k
	 4LXHF6t85m7HQ+XurfLWzTULv+xZ3SnFyfaLaIy6QpbDMDjDP300l9o/nUc5lJAe4V
	 210TgV8uFU656D6fa2LXzouPK4OA2ng9MZ+lVEZHGRWKijLWIWSG/xeuCIXJNd2CG6
	 ZEyAIBDNYv7Xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E9A760724;
	Mon, 14 Oct 2024 09:44:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 226001BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BFF1402A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46EAnlFj9bFz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 09:44:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EF77B404DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF77B404DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF77B404DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:04 +0000 (UTC)
X-CSE-ConnectionGUID: 4MokL/GkRfKMXjsRb5P89g==
X-CSE-MsgGUID: vqu679RsRImEF246SwvgEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45712149"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45712149"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:03 -0700
X-CSE-ConnectionGUID: lkN5bqAsTbO2sLdOz2dKsA==
X-CSE-MsgGUID: K8NV9t4JQJSfpLLOSw28nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77531795"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 14 Oct 2024 02:44:01 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C549327BCD;
 Mon, 14 Oct 2024 10:43:59 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Sun, 13 Oct 2024 11:44:03 -0400
Message-Id: <20241013154415.20262-3-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899045; x=1760435045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VQtBjGpAlDfXvRorVHA3kil1x+Nps2fU8fwfcS05OoU=;
 b=deTYh2bM+CNlpKzE/o8Oip/JqVK40yfs38QRA2wibyOqlsXx1dpCRp7X
 xc3Lk3o12hvmW9CHwnhwJ+jKiVrpEUoD0JzhImHVBsT+9kLk8VYxiJtqA
 Mz1wVoGIVJyzXPrkx0KyBsghFDQeraSaOQM6X+HuIJ6krxNkULlgEIwac
 LkNqPjwaBQsaUmjxDDTurbVoIfRfe+c1/vZAg3VTqS4H+m13bWE8HF4rR
 sfqlcUHAdpTryKekGRFBQ0aTWsVF5mec/jRt8wmx5Gw/jgCV0CaZFE4me
 1T6QqgGNbpTpFyhKLJH8AzLJuCJcP+Rw8LWaH+CpoRlhwxm6K9IGI+JTm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=deTYh2bM
Subject: [Intel-wired-lan] [PATCH iwl-next v11 02/14] ice: support Rx
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
 Simei Su <simei.su@intel.com>, Simon Horman <horms@kernel.org>,
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

Signed-off-by: Simei Su <simei.su@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |  3 -
 drivers/net/ethernet/intel/ice/ice_lib.c      |  5 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  8 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 73 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  6 ++
 .../intel/ice/ice_virtchnl_allowlist.c        |  7 ++
 include/linux/avf/virtchnl.h                  | 15 +++-
 9 files changed, 113 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 3a8e156d7d86..aafcd3d4e599 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 01220e21cc81..e135688edce7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1766,9 +1766,8 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
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
index 9bc22620f838..d8ed4240f225 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -298,8 +298,8 @@ void ice_ptp_restore_timestamp_mode(struct ice_pf *pf)
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
index 5af474285780..99d48cf15ddc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -302,6 +302,8 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx);
 void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx);
 enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf);
+u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
+			     struct ptp_system_timestamp *sts);
 
 u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 			const struct ice_pkt_ctx *pkt_ctx);
@@ -345,6 +347,12 @@ static inline irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
 	return IRQ_HANDLED;
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
index 4261fe1c2bcd..799b2c1f1184 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -124,6 +124,9 @@ struct ice_vf {
 	u8 spoofchk:1;
 	u8 link_forced:1;
 	u8 link_up:1;			/* only valid if VF link is forced */
+
+	u32 ptp_caps;
+
 	unsigned int min_tx_rate;	/* Minimum Tx bandwidth limit in Mbps */
 	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in Mbps */
 	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 69fa257ffd92..6ebfeec3950c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -498,6 +498,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_QOS)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_QOS;
 
+	if (vf->driver_caps & VIRTCHNL_VF_CAP_PTP)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_PTP;
+
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
@@ -1975,6 +1978,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	struct ice_vsi *vsi;
 	u8 act_prt, pri_prt;
 	int i = -1, q_idx;
+	bool ena_ts;
 
 	lag = pf->lag;
 	mutex_lock(&pf->lag_mutex);
@@ -2104,9 +2108,14 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
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
 
@@ -4081,6 +4090,56 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
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
@@ -4117,6 +4176,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.get_qos_caps = ice_vc_get_qos_caps,
 	.cfg_q_bw = ice_vc_cfg_q_bw,
 	.cfg_q_quanta = ice_vc_cfg_q_quanta,
+	.get_ptp_cap = ice_vc_get_ptp_cap,
+	.get_phc_time = ice_vc_get_phc_time,
 };
 
 /**
@@ -4247,6 +4308,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
 	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
 	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
+	.get_ptp_cap = ice_vc_get_ptp_cap,
+	.get_phc_time = ice_vc_get_phc_time,
 };
 
 /**
@@ -4484,6 +4547,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_CONFIG_QUANTA:
 		err = ops->cfg_q_quanta(vf, msg);
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
index 0c629aef9baf..222990f229d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -26,6 +26,9 @@
 #define ICE_MAX_MACADDR_PER_VF		18
 #define ICE_FLEX_DESC_RXDID_MAX_NUM	64
 
+/* Priority to be compared against previous priority from the pipe */
+#define ICE_RXDID_PRIO			0x03
+
 /* VFs only get a single VSI. For ice hardware, the VF does not need to know
  * its VSI index. However, the virtchnl interface requires a VSI number,
  * mainly due to legacy hardware.
@@ -72,6 +75,9 @@ struct ice_virtchnl_ops {
 	int (*cfg_q_tc_map)(struct ice_vf *vf, u8 *msg);
 	int (*cfg_q_bw)(struct ice_vf *vf, u8 *msg);
 	int (*cfg_q_quanta)(struct ice_vf *vf, u8 *msg);
+	int (*get_ptp_cap)(struct ice_vf *vf,
+			   const struct virtchnl_ptp_caps *msg);
+	int (*get_phc_time)(struct ice_vf *vf);
 };
 
 #ifdef CONFIG_PCI_IOV
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index c105a82ee136..a3d1579a619a 100644
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
 static const u32 tc_allowlist_opcodes[] = {
 	VIRTCHNL_OP_GET_QOS_CAPS, VIRTCHNL_OP_CONFIG_QUEUE_BW,
 	VIRTCHNL_OP_CONFIG_QUANTA,
@@ -110,6 +116,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_QOS, tc_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_CAP_PTP, ptp_allowlist_opcodes),
 };
 
 /**
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 2b874986fe5c..2ae9b9ba2f1b 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -313,6 +313,18 @@ struct virtchnl_txq_info {
 
 VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
 
+/* virtchnl_rxq_info_flags - definition of bits in the flags field of the
+ *			     virtchnl_rxq_info structure.
+ *
+ * @VIRTCHNL_PTP_RX_TSTAMP: request to enable Rx timestamping
+ *
+ * Other flag bits are currently reserved and they may be extended in the
+ * future.
+ */
+enum virtchnl_rxq_info_flags {
+	VIRTCHNL_PTP_RX_TSTAMP = BIT(0),
+};
+
 /* VIRTCHNL_OP_CONFIG_RX_QUEUE
  * VF sends this message to set up parameters for one RX queue.
  * External data buffer contains one instance of virtchnl_rxq_info.
@@ -336,7 +348,8 @@ struct virtchnl_rxq_info {
 	u32 max_pkt_size;
 	u8 crc_disable;
 	u8 rxdid;
-	u8 pad1[2];
+	enum virtchnl_rxq_info_flags flags:8; /* see virtchnl_rxq_info_flags */
+	u8 pad1;
 	u64 dma_ring_addr;
 
 	/* see enum virtchnl_rx_hsplit; deprecated with AVF 1.0 */
-- 
2.38.1

