Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F000D144924
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2020 01:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60E6087B0A;
	Wed, 22 Jan 2020 00:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uh+UYF9H6aiL; Wed, 22 Jan 2020 00:53:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38061861C1;
	Wed, 22 Jan 2020 00:53:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3DF71BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 00:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F09D586005
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 00:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJ3TvZT87ArV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 00:53:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73C8A8686D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 00:53:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 16:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="275463005"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jan 2020 16:53:05 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Jan 2020 08:20:21 -0800
Message-Id: <20200121162021.17107-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200121162021.17107-1-anthony.l.nguyen@intel.com>
References: <20200121162021.17107-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S34 v3 6/6] ice: Pass through
 communications to VF
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dave Ertman <david.m.ertman@intel.com>

Allow for forwarding of RDMA and VF virt channel messages. The driver will
forward messages from the RDMA driver to the VF via the vc_send operation
and invoke the peer's vc_receive() call when receiving a virt channel
message destined for the peer driver.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 drivers/net/ethernet/intel/ice/ice_idc.c      | 34 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 34 +++++++++++++++++++
 3 files changed, 69 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 24ec228b99d8..8b33fe62198f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -384,6 +384,7 @@ struct ice_pf {
 	u32 msg_enable;
 	u32 num_rdma_msix;	/* Total MSIX vectors for RDMA driver */
 	u32 rdma_base_vector;
+	struct iidc_peer_dev *rdma_peer;
 	u32 hw_csum_rx_error;
 	u32 oicr_idx;		/* Other interrupt cause MSIX vector index */
 	u32 num_avail_sw_msix;	/* remaining MSIX SW vectors left unclaimed */
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 6d625cc18a9d..0f884bf187f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -1095,6 +1095,38 @@ ice_peer_update_vsi_filter(struct iidc_peer_dev *peer_dev,
 	return ret;
 }
 
+/**
+ * ice_peer_vc_send - send a virt channel message from RDMA peer
+ * @peer_dev: pointer to RDMA peer dev
+ * @vf_id: the absolute VF ID of recipient of message
+ * @msg: pointer to message contents
+ * @len: len of message
+ */
+static int
+ice_peer_vc_send(struct iidc_peer_dev *peer_dev, u32 vf_id, u8 *msg, u16 len)
+{
+	struct ice_pf *pf;
+	int err;
+
+	if (!ice_validate_peer_dev(peer_dev))
+		return -EINVAL;
+	if (!msg || !len)
+		return -ENOMEM;
+
+	pf = pci_get_drvdata(peer_dev->pdev);
+	if (vf_id >= pf->num_alloc_vfs || len > ICE_AQ_MAX_BUF_LEN)
+		return -EINVAL;
+
+	/* VIRTCHNL_OP_IWARP is being used for RoCEv2 msg also */
+	err = ice_aq_send_msg_to_vf(&pf->hw, vf_id, VIRTCHNL_OP_IWARP, 0, msg,
+				    len, NULL);
+	if (err)
+		dev_err(ice_pf_to_dev(pf), "Unable to send RDMA msg to VF, error %d\n",
+			err);
+
+	return err;
+}
+
 /* Initialize the ice_ops struct, which is used in 'ice_init_peer_devices' */
 static const struct iidc_ops ops = {
 	.alloc_res			= ice_peer_alloc_res,
@@ -1107,6 +1139,7 @@ static const struct iidc_ops ops = {
 	.peer_register			= ice_peer_register,
 	.peer_unregister		= ice_peer_unregister,
 	.update_vsi_filter		= ice_peer_update_vsi_filter,
+	.vc_send			= ice_peer_vc_send,
 };
 
 /**
@@ -1286,6 +1319,7 @@ int ice_init_peer_devices(struct ice_pf *pf)
 		switch (ice_peers[i].id) {
 		case IIDC_PEER_RDMA_ID:
 			if (test_bit(ICE_FLAG_IWARP_ENA, pf->flags)) {
+				pf->rdma_peer = peer_dev;
 				peer_dev->msix_count = pf->num_rdma_msix;
 				entry = &pf->msix_entries[pf->rdma_base_vector];
 			}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c4f825650f30..d8016d104ca4 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3031,6 +3031,37 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 				     v_ret, NULL, 0);
 }
 
+/**
+ * ice_vc_rdma_msg - send msg to RDMA PF from VF
+ * @vf: pointer to VF info
+ * @msg: pointer to msg buffer
+ * @len: length of the message
+ *
+ * This function is called indirectly from the AQ clean function.
+ */
+static int ice_vc_rdma_msg(struct ice_vf *vf, u8 *msg, u16 len)
+{
+	struct iidc_peer_dev *rdma_peer;
+	int ret;
+
+	rdma_peer = vf->pf->rdma_peer;
+	if (!rdma_peer) {
+		pr_err("Invalid RDMA peer attempted to send message to peer\n");
+		return -EIO;
+	}
+
+	if (!rdma_peer->peer_ops || !rdma_peer->peer_ops->vc_receive) {
+		pr_err("Incomplete RMDA peer attempting to send msg\n");
+		return -EINVAL;
+	}
+
+	ret = rdma_peer->peer_ops->vc_receive(rdma_peer, vf->vf_id, msg, len);
+	if (ret)
+		pr_err("Failed to send message to RDMA peer, error %d\n", ret);
+
+	return ret;
+}
+
 /**
  * ice_vf_init_vlan_stripping - enable/disable VLAN stripping on initialization
  * @vf: VF to enable/disable VLAN stripping for on initialization
@@ -3166,6 +3197,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
 		err = ice_vc_dis_vlan_stripping(vf);
 		break;
+	case VIRTCHNL_OP_IWARP:
+		err = ice_vc_rdma_msg(vf, msg, msglen);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
