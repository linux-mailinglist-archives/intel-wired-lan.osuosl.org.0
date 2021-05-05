Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 076A9374A26
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 May 2021 23:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E3B8845DD;
	Wed,  5 May 2021 21:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZ0WA6sbbNHn; Wed,  5 May 2021 21:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B1B4845E9;
	Wed,  5 May 2021 21:28:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA4C11BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87675845E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KeuPIS5UWOyK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 May 2021 21:28:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E5D6F845EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:30 +0000 (UTC)
IronPort-SDR: l7gh2YhCUfdrQrH6j9C+tzIc9drnYarneRtH4/hydn4fd/meTk+6Qp3+A7C29NXh5wZIsEaWT1
 PkWF5d1uUujA==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="283743044"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="283743044"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 14:28:28 -0700
IronPort-SDR: 3YJpTTmhJt0+k/thhzSK1+xrdJ3/dRIsKPq25G0h+4Y4FVTlnR/ahr/LOMMfJG7B1VYltDcc4p
 1XGSY2fA7w1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="622213117"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 05 May 2021 14:28:28 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 May 2021 14:17:59 -0700
Message-Id: <20210505211800.11908-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
References: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 3/4] ice: Allow all LLDP packets from
 PF to Tx
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

Currently in the ice driver, the check whether to
allow a LLDP packet to egress the interface from the
PF_VSI is being based on the SKB's priority field.
It checks to see if the packets priority is equal to
TC_PRIO_CONTROL.  Injected LLDP packets do not always
meet this condition.

SCAPY defaults to a sk_buff->protocol value of ETH_P_ALL
(0x0003) and does not set the priority field.  There will
be other injection methods (even ones used by end users)
that will not correctly configure the socket so that
SKB fields are correctly populated.

Then ethernet header has to have to correct value for
the protocol though.

Add a check to also allow packets whose ethhdr->h_proto
matches ETH_P_LLDP (0x88CC).

Fixes: 0c3a6101ff2d ("ice: Allow egress control packets from PF_VSI")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index e2b4b29ea207..dd06d25850aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2143,6 +2143,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 	struct ice_tx_offload_params offload = { 0 };
 	struct ice_vsi *vsi = tx_ring->vsi;
 	struct ice_tx_buf *first;
+	struct ethhdr *eth;
 	unsigned int count;
 	int tso, csum;
 
@@ -2189,7 +2190,9 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 		goto out_drop;
 
 	/* allow CONTROL frames egress from main VSI if FW LLDP disabled */
-	if (unlikely(skb->priority == TC_PRIO_CONTROL &&
+	eth = (struct ethhdr *)skb_mac_header(skb);
+	if (unlikely((skb->priority == TC_PRIO_CONTROL ||
+		      eth->h_proto == htons(ETH_P_LLDP)) &&
 		     vsi->type == ICE_VSI_PF &&
 		     vsi->port_info->qos_cfg.is_sw_lldp))
 		offload.cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
