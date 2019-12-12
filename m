Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B1C11D758
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11F6F888DE;
	Thu, 12 Dec 2019 19:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDOnGjfguRLc; Thu, 12 Dec 2019 19:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B527888CF;
	Thu, 12 Dec 2019 19:44:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CCB31BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 904F5888C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rdezXEY-tINQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6126888BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698848"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:12:53 -0800
Message-Id: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 01/15] ice: Support UDP segmentation
 offload
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

From: Brett Creeley <brett.creeley@intel.com>

Based on the work done by Alex Duyck on other Intel drivers, add code to
support UDP segmentation offload (USO) for the ice driver.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  3 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.c | 15 ++++++++++++---
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d8809a5c07d6..31cd816e7cfb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2336,7 +2336,8 @@ static void ice_set_netdev_features(struct net_device *netdev)
 			 NETIF_F_HW_VLAN_CTAG_TX     |
 			 NETIF_F_HW_VLAN_CTAG_RX;
 
-	tso_features = NETIF_F_TSO;
+	tso_features = NETIF_F_TSO		|
+		       NETIF_F_GSO_UDP_L4;
 
 	/* set features that user can change */
 	netdev->hw_features = dflt_features | csumo_features |
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 2c212f64d99f..b77514bbd7ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1925,6 +1925,7 @@ int ice_tso(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 	} ip;
 	union {
 		struct tcphdr *tcp;
+		struct udphdr *udp;
 		unsigned char *hdr;
 	} l4;
 	u64 cd_mss, cd_tso_len;
@@ -1958,10 +1959,18 @@ int ice_tso(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 
 	/* remove payload length from checksum */
 	paylen = skb->len - l4_start;
-	csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
 
-	/* compute length of segmentation header */
-	off->header_len = (l4.tcp->doff * 4) + l4_start;
+	if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) {
+		csum_replace_by_diff(&l4.udp->check,
+				     (__force __wsum)htonl(paylen));
+		/* compute length of UDP segmentation header */
+		off->header_len = sizeof(l4.udp) + l4_start;
+	} else {
+		csum_replace_by_diff(&l4.tcp->check,
+				     (__force __wsum)htonl(paylen));
+		/* compute length of TCP segmentation header */
+		off->header_len = (l4.tcp->doff * 4) + l4_start;
+	}
 
 	/* update gso_segs and bytecount */
 	first->gso_segs = skb_shinfo(skb)->gso_segs;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
