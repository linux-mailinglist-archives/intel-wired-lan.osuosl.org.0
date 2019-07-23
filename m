Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE97F71E1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:56:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A072F84CE1;
	Tue, 23 Jul 2019 17:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8WIs625y-KJ9; Tue, 23 Jul 2019 17:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75FDF81F48;
	Tue, 23 Jul 2019 17:56:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FBAA1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B85520444
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 917LAzYbMZqh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 07A0820133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="180816341"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 23 Jul 2019 10:56:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:27:48 -0700
Message-Id: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S24 01/12] ice: Allow egress control
 packets from PF_VSI
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

For control packets (i.e. LLDP packets) to be able to egress
from the main VSI, a bit has to be set in the TX_descriptor.
This should only be done for the main VSI and only if the
FW LLDP agent is disabled.  A bit to allow this also has to
be set in the VSI context.

Add the logic to add the necessary bits in the VSI context
for the PF_VSI and the TX_descriptors for control packets
egressing the PF_VSI.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  7 +++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c | 11 ++++++++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a62496a74a69..6b5882c49004 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1021,6 +1021,13 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 			ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
 	}
 
+	/* Allow control frames out of main VSI */
+	if (vsi->type == ICE_VSI_PF) {
+		ctxt->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
+		ctxt->info.valid_sections |=
+			cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
+	}
+
 	if (init_vsi) {
 		ret = ice_add_vsi(hw, vsi->idx, ctxt, NULL);
 		if (ret) {
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index f612f1f53c67..7714c16ae689 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2107,6 +2107,7 @@ static netdev_tx_t
 ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 {
 	struct ice_tx_offload_params offload = { 0 };
+	struct ice_vsi *vsi = tx_ring->vsi;
 	struct ice_tx_buf *first;
 	unsigned int count;
 	int tso, csum;
@@ -2154,7 +2155,15 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 	if (csum < 0)
 		goto out_drop;
 
-	if (tso || offload.cd_tunnel_params) {
+	/* allow CONTROL frames egress from main VSI if FW LLDP disabled */
+	if (unlikely(skb->priority == TC_PRIO_CONTROL &&
+		     vsi->type == ICE_VSI_PF &&
+		     vsi->port_info->is_sw_lldp))
+		offload.cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
+					ICE_TX_CTX_DESC_SWTCH_UPLINK <<
+					ICE_TXD_CTX_QW1_CMD_S);
+
+	if (offload.cd_qw1 & ICE_TX_DESC_DTYPE_CTX) {
 		struct ice_tx_ctx_desc *cdesc;
 		int i = tx_ring->next_to_use;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
