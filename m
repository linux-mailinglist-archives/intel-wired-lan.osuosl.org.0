Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 438C6176837
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Mar 2020 00:32:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D48B21FEF0;
	Mon,  2 Mar 2020 23:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoZmpjfnWx3v; Mon,  2 Mar 2020 23:32:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 51A75204DF;
	Mon,  2 Mar 2020 23:32:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 402D11BF25B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 23:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2AD5586303
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 23:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukeWXz50LOlu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2020 23:32:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DA2D85A67
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 23:32:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 15:32:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,509,1574150400"; d="scan'208";a="228655749"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 02 Mar 2020 15:32:01 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Mar 2020 15:31:07 -0800
Message-Id: <20200302233107.4691-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200302233107.4691-1-anthony.l.nguyen@intel.com>
References: <20200302233107.4691-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S34 v4 6/6] ice: Pass through
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
index 7b23050a8e52..f237df923ea1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -391,6 +391,7 @@ struct ice_pf {
 	u32 msg_enable;
 	u32 num_rdma_msix;	/* Total MSIX vectors for RDMA driver */
 	u32 rdma_base_vector;
+	struct iidc_peer_dev *rdma_peer;
 	u32 hw_csum_rx_error;
 	u32 oicr_idx;		/* Other interrupt cause MSIX vector index */
 	u32 num_avail_sw_msix;	/* remaining MSIX SW vectors left unclaimed */
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 5e1877772245..c8b6f0ea45fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -1070,6 +1070,38 @@ ice_peer_update_vsi_filter(struct iidc_peer_dev *peer_dev,
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
@@ -1082,6 +1114,7 @@ static const struct iidc_ops ops = {
 	.peer_register			= ice_peer_register,
 	.peer_unregister		= ice_peer_unregister,
 	.update_vsi_filter		= ice_peer_update_vsi_filter,
+	.vc_send			= ice_peer_vc_send,
 };
 
 /**
@@ -1263,6 +1296,7 @@ int ice_init_peer_devices(struct ice_pf *pf)
 		switch (ice_peers[i].id) {
 		case IIDC_PEER_RDMA_ID:
 			if (test_bit(ICE_FLAG_IWARP_ENA, pf->flags)) {
+				pf->rdma_peer = peer_dev;
 				peer_dev->msix_count = pf->num_rdma_msix;
 				entry = &pf->msix_entries[pf->rdma_base_vector];
 			}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 68c2717407f8..1aac440f199b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3169,6 +3169,37 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
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
@@ -3303,6 +3334,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
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
