Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B94A017265A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2020 19:15:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5DB4E23109;
	Thu, 27 Feb 2020 18:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9ow-u2+ZZkv; Thu, 27 Feb 2020 18:15:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0AEFA230FD;
	Thu, 27 Feb 2020 18:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B8C41BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D16588020
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4CurABKz80mq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2020 18:15:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87D2685AA0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 10:15:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="285408837"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 10:15:51 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Feb 2020 10:14:51 -0800
Message-Id: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S40 01/15] iavf: Enable support for up to
 16 queues
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

From: Mitch Williams <mitch.a.williams@intel.com>

Previous devices could only allocate 4 MSI-X vectors per VF so there was a
limitation of 4 queues. 800-series hardware can allocate more than 4 MSI-X
vectors, so expand the limitation on the number of queues that the driver
can support to account for these capabilities.

Fix eththool channel operations to accommodate this change and adjust the
reporting of max number of queues to what is given to us by the PF. Since
we're not requesting queues above this value, just trigger reset to
activate the queues, which we already own.

Finally, fix a test condition that would display an incorrect error
message.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 20 +++++++-------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  2 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 27 -------------------
 4 files changed, 11 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index bd1b1ed323f4..bcd11b4b29df 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -81,7 +81,7 @@ struct iavf_vsi {
 #define IAVF_TX_DESC(R, i) (&(((struct iavf_tx_desc *)((R)->desc))[i]))
 #define IAVF_TX_CTXTDESC(R, i) \
 	(&(((struct iavf_tx_context_desc *)((R)->desc))[i]))
-#define IAVF_MAX_REQ_QUEUES 4
+#define IAVF_MAX_REQ_QUEUES 16
 
 #define IAVF_HKEY_ARRAY_SIZE ((IAVF_VFQF_HKEY_MAX_INDEX + 1) * 4)
 #define IAVF_HLUT_ARRAY_SIZE ((IAVF_VFQF_HLUT_MAX_INDEX + 1) * 4)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 84c3d8d97ef6..f807e2c7597f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -860,7 +860,7 @@ static void iavf_get_channels(struct net_device *netdev,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
 	/* Report maximum channels */
-	ch->max_combined = IAVF_MAX_REQ_QUEUES;
+	ch->max_combined = adapter->vsi_res->num_queue_pairs;
 
 	ch->max_other = NONQ_VECS;
 	ch->other_count = NONQ_VECS;
@@ -881,14 +881,7 @@ static int iavf_set_channels(struct net_device *netdev,
 			     struct ethtool_channels *ch)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
-	int num_req = ch->combined_count;
-
-	if (num_req != adapter->num_active_queues &&
-	    !(adapter->vf_res->vf_cap_flags &
-	      VIRTCHNL_VF_OFFLOAD_REQ_QUEUES)) {
-		dev_info(&adapter->pdev->dev, "PF is not capable of queue negotiation.\n");
-		return -EINVAL;
-	}
+	u32 num_req = ch->combined_count;
 
 	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
 	    adapter->num_tc) {
@@ -899,14 +892,19 @@ static int iavf_set_channels(struct net_device *netdev,
 	/* All of these should have already been checked by ethtool before this
 	 * even gets to us, but just to be sure.
 	 */
-	if (num_req <= 0 || num_req > IAVF_MAX_REQ_QUEUES)
+	if (num_req > adapter->vsi_res->num_queue_pairs)
 		return -EINVAL;
 
+	if (num_req == adapter->num_active_queues)
+		return 0;
+
 	if (ch->rx_count || ch->tx_count || ch->other_count != NONQ_VECS)
 		return -EINVAL;
 
 	adapter->num_req_queues = num_req;
-	return iavf_request_queues(adapter, num_req);
+	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
+	iavf_schedule_reset(adapter);
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 62fe56ddcb6e..be7b6ec9c7d5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3448,7 +3448,7 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	}
 
 	if (num_req_queues &&
-	    num_req_queues != adapter->vsi_res->num_queue_pairs) {
+	    num_req_queues > adapter->vsi_res->num_queue_pairs) {
 		/* Problem.  The PF gave us fewer queues than what we had
 		 * negotiated in our request.  Need a reset to see if we can't
 		 * get back to a working state.
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 1ab9cb339acb..d58374c2c33d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -396,33 +396,6 @@ void iavf_map_queues(struct iavf_adapter *adapter)
 	kfree(vimi);
 }
 
-/**
- * iavf_request_queues
- * @adapter: adapter structure
- * @num: number of requested queues
- *
- * We get a default number of queues from the PF.  This enables us to request a
- * different number.  Returns 0 on success, negative on failure
- **/
-int iavf_request_queues(struct iavf_adapter *adapter, int num)
-{
-	struct virtchnl_vf_res_request vfres;
-
-	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
-		/* bail because we already have a command pending */
-		dev_err(&adapter->pdev->dev, "Cannot request queues, command %d pending\n",
-			adapter->current_op);
-		return -EBUSY;
-	}
-
-	vfres.num_queue_pairs = min_t(int, num, num_online_cpus());
-
-	adapter->current_op = VIRTCHNL_OP_REQUEST_QUEUES;
-	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
-	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_REQUEST_QUEUES,
-				(u8 *)&vfres, sizeof(vfres));
-}
-
 /**
  * iavf_add_ether_addrs
  * @adapter: adapter structure
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
