Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 517DC32A92E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:21:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF437606AE;
	Tue,  2 Mar 2021 18:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 20POrJ6KsVES; Tue,  2 Mar 2021 18:21:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAEF0606B6;
	Tue,  2 Mar 2021 18:21:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 743071BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6081E606D6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7eH4qXx4cA2o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:21:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C010606AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:48 +0000 (UTC)
IronPort-SDR: mrA+O+KTvHSDii0Np+msMEBD6vm4EadM9dbohXt4KcRa2pkH6tXcdSOR2T/9bYYPc0P337XCHJ
 HOQXNC5jfqOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="166813965"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="166813965"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:47 -0800
IronPort-SDR: gmC51E6guvgLNQ1MDfviern5plUbYw3FDuxvKISkaoQ7ApGT8VRgnIQ3S6cM7NTPzlU9jZxFgo
 iWZ/2d8lRrcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051167"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:02 -0800
Message-Id: <20210302181213.51718-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 03/14] ice: Add Support for XPS
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

From: Benita Bose <benita.bose@intel.com>

Enable and configure XPS. The driver code implemented sets up the Transmit
Packet Steering Map, which in turn will be used by the kernel in queue
selection during Tx.

Signed-off-by: Benita Bose <benita.bose@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
Note: Emails to Benita will bounce as she has since left Intel
---
 drivers/net/ethernet/intel/ice/ice_base.c | 23 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h |  6 ++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index a99658462e29..c28cfd85587f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -214,6 +214,26 @@ static u16 ice_calc_q_handle(struct ice_vsi *vsi, struct ice_ring *ring, u8 tc)
 	return ring->q_index - vsi->tc_cfg.tc_info[tc].qoffset;
 }
 
+/**
+ * ice_cfg_xps_tx_ring - Configure XPS for a Tx ring
+ * @ring: The Tx ring to configure
+ *
+ * This enables/disables XPS for a given Tx descriptor ring
+ * based on the TCs enabled for the VSI that ring belongs to.
+ */
+static void ice_cfg_xps_tx_ring(struct ice_ring *ring)
+{
+	if (!ring->q_vector || !ring->netdev)
+		return;
+
+	/* We only initialize XPS once, so as not to overwrite user settings */
+	if (test_and_set_bit(ICE_TX_XPS_INIT_DONE, ring->xps_state))
+		return;
+
+	netif_set_xps_queue(ring->netdev, &ring->q_vector->affinity_mask,
+			    ring->q_index);
+}
+
 /**
  * ice_setup_tx_ctx - setup a struct ice_tlan_ctx instance
  * @ring: The Tx ring to configure
@@ -672,6 +692,9 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring,
 	u16 pf_q;
 	u8 tc;
 
+	/* Configure XPS */
+	ice_cfg_xps_tx_ring(ring);
+
 	pf_q = ring->reg_idx;
 	ice_setup_tx_ctx(ring, &tlan_ctx, pf_q);
 	/* copy context contents into the qg_buf */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 9d14bac658df..f72b154b03c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -195,6 +195,11 @@ struct ice_rxq_stats {
 	u64 gro_dropped; /* GRO returned dropped */
 };
 
+enum ice_ring_state_t {
+	ICE_TX_XPS_INIT_DONE,
+	ICE_TX_NBITS,
+};
+
 /* this enum matches hardware bits and is meant to be used by DYN_CTLN
  * registers and QINT registers or more generally anywhere in the manual
  * mentioning ITR_INDX, ITR_NONE cannot be used as an index 'n' into any
@@ -294,6 +299,7 @@ struct ice_ring {
 	};
 
 	struct rcu_head rcu;		/* to avoid race on free */
+	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
 	struct bpf_prog *xdp_prog;
 	struct xsk_buff_pool *xsk_pool;
 	u16 rx_offset;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
