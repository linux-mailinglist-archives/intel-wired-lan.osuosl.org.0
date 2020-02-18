Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CF3163541
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 22:42:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D616D87594;
	Tue, 18 Feb 2020 21:41:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a9DejOaQvRZb; Tue, 18 Feb 2020 21:41:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FAF685AC7;
	Tue, 18 Feb 2020 21:41:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 489DA1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 21:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4402085B97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 21:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRQSlMrQBH02 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 21:41:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3EDEB8545D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 21:41:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:41:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="268920275"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.76])
 by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2020 13:41:51 -0800
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Feb 2020 13:41:48 -0800
Message-Id: <20200218214148.1127641-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v3] igc: Complete to commit Add
 support for TSO
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

From: Sasha Neftin <sasha.neftin@intel.com>

commit f38b782dccab ("igc: Add support for TSO")
Add option to setting transmit command (TUCMD) of the context
descriptor based on skb_shinfo gso_type and SKB_GSO_UDP_L4 flag.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
v2: add SKB_GSO_UDP_L4 to features check and probe
v3: patch did not apply cleanly to next-queue tree, due to other igc
    patches that had been applied, so fixed up the patch to apply cleanly

 drivers/net/ethernet/intel/igc/igc_defines.h | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 6 +++++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 1b0fd2ffd08d..0746fa42ff3f 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -522,6 +522,7 @@
 #define IGC_VLAPQF_QUEUE_MASK	0x03
 
 #define IGC_ADVTXD_MACLEN_SHIFT		9  /* Adv ctxt desc mac len shift */
+#define IGC_ADVTXD_TUCMD_L4T_UDP	0x00000000  /* L4 Packet TYPE of UDP */
 #define IGC_ADVTXD_TUCMD_IPV4		0x00000400  /* IP Packet Type:1=IPv4 */
 #define IGC_ADVTXD_TUCMD_L4T_TCP	0x00000800  /* L4 Packet Type of TCP */
 #define IGC_ADVTXD_TUCMD_L4T_SCTP	0x00001000 /* L4 packet TYPE of SCTP */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 972c833a552b..d406aaea24af 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1232,7 +1232,8 @@ static int igc_tso(struct igc_ring *tx_ring,
 	l4.hdr = skb_checksum_start(skb);
 
 	/* ADV DTYP TUCMD MKRLOC/ISCSIHEDLEN */
-	type_tucmd = IGC_ADVTXD_TUCMD_L4T_TCP;
+	type_tucmd = (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) ?
+		      IGC_ADVTXD_TUCMD_L4T_UDP : IGC_ADVTXD_TUCMD_L4T_TCP;
 
 	/* initialize outer IP header fields */
 	if (ip.v4->version == 4) {
@@ -3693,6 +3694,7 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 	if (unlikely(mac_hdr_len > IGC_MAX_MAC_HDR_LEN))
 		return features & ~(NETIF_F_HW_CSUM |
 				    NETIF_F_SCTP_CRC |
+				    NETIF_F_GSO_UDP_L4 |
 				    NETIF_F_HW_VLAN_CTAG_TX |
 				    NETIF_F_TSO |
 				    NETIF_F_TSO6);
@@ -3701,6 +3703,7 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 	if (unlikely(network_hdr_len >  IGC_MAX_NETWORK_HDR_LEN))
 		return features & ~(NETIF_F_HW_CSUM |
 				    NETIF_F_SCTP_CRC |
+				    NETIF_F_GSO_UDP_L4 |
 				    NETIF_F_TSO |
 				    NETIF_F_TSO6);
 
@@ -4903,6 +4906,7 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->features |= NETIF_F_RXCSUM;
 	netdev->features |= NETIF_F_HW_CSUM;
 	netdev->features |= NETIF_F_SCTP_CRC;
+	netdev->features |= NETIF_F_GSO_UDP_L4;
 
 #define IGC_GSO_PARTIAL_FEATURES (NETIF_F_GSO_GRE | \
 				  NETIF_F_GSO_GRE_CSUM | \
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
