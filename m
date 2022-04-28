Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DED7513205
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Apr 2022 13:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3A4283104;
	Thu, 28 Apr 2022 11:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YTspi3yvxERS; Thu, 28 Apr 2022 11:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C73FA826EA;
	Thu, 28 Apr 2022 11:04:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17A2C1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 11:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2A7B40B22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 11:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNMjNI3jDFTt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Apr 2022 11:04:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DED8340B1B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 11:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651143841; x=1682679841;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WFYX1sxuBQhK/MB5Y/61rA1PeEE3XMpxbE8m50fHy0E=;
 b=TFSJu/R4kao7hx1O7BHUz0UdUzBCJY5vtHTcx943O3yqEkVdEbp99eZy
 dcNy39MHGO2LwxQOICHFmv4H4lQ0cpkkrkhcdyTTVw2DC4K26fziRB0EN
 UNmvlyEYaxd98MJiJh1j+v3F/0I0EzVRgs7XPA5mVThHQ9BgELoyBD0bn
 Tca8C1r6s1z/DooBEM02joWEjGP6qvluX+40nc4Hxa8BOw2821UUm6Dfb
 shLD4PcK0cQssWEUvD+Cx5Hb8PZ5Lw8KKk3Ohk465zwwNIvBlrOl8T6QC
 cAtsc9AB5GtfSUfpuQGTwXcgGblRTnYBjpMWbhUTUbXIgaHDAh/e+H8Jt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="246811563"
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="246811563"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 04:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="541128572"
Received: from propan.igk.intel.com ([10.211.8.82])
 by orsmga002.jf.intel.com with ESMTP; 28 Apr 2022 04:03:59 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Apr 2022 12:01:00 +0000
Message-Id: <20220428120100.81269-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: clear stale Tx queue settings
 before configuring
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The iAVF driver uses 3 virtchnl op codes to communicate with the PF
regarding the VF Tx queues:

* VIRTCHNL_OP_CONFIG_VSI_QUEUES configures the hardware and firmware
logic for the Tx queues

* VIRTCHNL_OP_ENABLE_QUEUES configures the queue interrupts

* VIRTCHNL_OP_DISABLE_QUEUES disables the queue interrupts and Tx rings.

There is a bug in the iAVF driver due to the race condition between VF reset
request and shutdown being executed in parallel. This leads to a break in
logic and VIRTCHNL_OP_DISABLE_QUEUES is not being sent.

If this occurs, the PF driver never cleans up the Tx queues. This results in
leaving behind stale Tx queue settings in the hardware and firmware.

The most obvious outcome is that upon the next
VIRTCHNL_OP_CONFIG_VSI_QUEUES, the PF will fail to program the Tx
scheduler node due to a lack of space.

We need to protect ICE driver against such situation.

To fix this, make sure we clear existing stale settings out when
handling VIRTCHNL_OP_CONFIG_VSI_QUEUES. This ensures we remove the
previous settings.

Calling ice_vf_vsi_dis_single_txq should be safe as it will do nothing if the
queue is not configured. The function already handles the case when the
Tx queue is not currently configured and exits with a 0 return in that case.

Fixes: 7ad15440acf8 ("ice: Refactor VIRTCHNL_OP_CONFIG_VSI_QUEUES handling")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 68 ++++++++++++++-----
 1 file changed, 50 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 69ff4b929772..e1982940150a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1307,13 +1307,52 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+/**
+ * ice_vf_vsi_dis_single_txq - disable a single Tx queue
+ * @vf: VF to disable queue for
+ * @vsi: VSI for the VF
+ * @q_id: VF relative (0-based) queue ID
+ *
+ * Attempt to disable the Tx queue passed in. If the Tx queue was successfully
+ * disabled then clear q_id bit in the enabled queues bitmap and return
+ * success. Otherwise return error.
+ */
+static int
+ice_vf_vsi_dis_single_txq(struct ice_vf *vf, struct ice_vsi *vsi, u16 q_id)
+{
+	struct ice_txq_meta txq_meta = { 0 };
+	struct ice_tx_ring *ring;
+	int err;
+
+	if (!test_bit(q_id, vf->txq_ena))
+		dev_dbg(ice_pf_to_dev(vsi->back), "Queue %u on VSI %u is not enabled, but stopping it anyway\n",
+			q_id, vsi->vsi_num);
+
+	ring = vsi->tx_rings[q_id];
+	if (!ring)
+		return -EINVAL;
+
+	ice_fill_txq_meta(vsi, ring, &txq_meta);
+
+	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, vf->vf_id, ring, &txq_meta);
+	if (err) {
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to stop Tx ring %d on VSI %d\n",
+			q_id, vsi->vsi_num);
+		return err;
+	}
+
+	/* Clear enabled queues flag */
+	clear_bit(q_id, vf->txq_ena);
+
+	return 0;
+}
+
 /**
  * ice_vc_dis_qs_msg
  * @vf: pointer to the VF info
  * @msg: pointer to the msg buffer
  *
- * called from the VF to disable all or specific
- * queue(s)
+ * called from the VF to disable all or specific queue(s)
  */
 static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 {
@@ -1350,30 +1389,15 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 		q_map = vqs->tx_queues;
 
 		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF) {
-			struct ice_tx_ring *ring = vsi->tx_rings[vf_q_id];
-			struct ice_txq_meta txq_meta = { 0 };
-
 			if (!ice_vc_isvalid_q_id(vf, vqs->vsi_id, vf_q_id)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
 			}
 
-			if (!test_bit(vf_q_id, vf->txq_ena))
-				dev_dbg(ice_pf_to_dev(vsi->back), "Queue %u on VSI %u is not enabled, but stopping it anyway\n",
-					vf_q_id, vsi->vsi_num);
-
-			ice_fill_txq_meta(vsi, ring, &txq_meta);
-
-			if (ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, vf->vf_id,
-						 ring, &txq_meta)) {
-				dev_err(ice_pf_to_dev(vsi->back), "Failed to stop Tx ring %d on VSI %d\n",
-					vf_q_id, vsi->vsi_num);
+			if (ice_vf_vsi_dis_single_txq(vf, vsi, vf_q_id)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
 			}
-
-			/* Clear enabled queues flag */
-			clear_bit(vf_q_id, vf->txq_ena);
 		}
 	}
 
@@ -1622,6 +1646,14 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		if (qpi->txq.ring_len > 0) {
 			vsi->tx_rings[i]->dma = qpi->txq.dma_ring_addr;
 			vsi->tx_rings[i]->count = qpi->txq.ring_len;
+
+			/* Disable any existing queue first */
+			if (ice_vf_vsi_dis_single_txq(vf, vsi, q_idx)) {
+				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				goto error_param;
+			}
+
+			/* Configure a queue with the requested settings */
 			if (ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
