Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D4C168A30
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2020 00:01:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08011880C1;
	Fri, 21 Feb 2020 23:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ItZiqj5Q8EW4; Fri, 21 Feb 2020 23:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D6E088164;
	Fri, 21 Feb 2020 23:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29A2F1BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 223B0865E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97HKT8ACn-vn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2020 23:01:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C2F0865DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:01:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 15:01:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="270156751"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.76])
 by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2020 15:01:41 -0800
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Feb 2020 15:01:38 -0800
Message-Id: <20200221230138.486261-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4] igc: Add UDP segmentation offload
 support
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

Added support for NETIF_F_GSO_UDP_L4, giving us UDP segmentation offload
support for igc.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
v2: add SKB_GSO_UDP_L4 to features check and probe
v3: patch did not apply cleanly to next-queue tree, due to other igc
     patches that had been applied, so fixed up the patch to apply cleanly
v4: updated patch title and description to better reflect what is really
    going on in the patch

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
