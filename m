Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 575B61307FC
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2020 13:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B42B85C1D;
	Sun,  5 Jan 2020 12:31:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FO5sM0vGs6pB; Sun,  5 Jan 2020 12:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88D2285C9D;
	Sun,  5 Jan 2020 12:31:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB0A51BF422
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 12:30:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A440785C1D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 12:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVcvwRSFilFb for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2020 12:30:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A200C851C0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 12:30:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jan 2020 04:30:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,398,1571727600"; d="scan'208";a="394766297"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2020 04:20:53 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  5 Jan 2020 14:20:53 +0200
Message-Id: <20200105122053.2512-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Add support for TSO
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TCP segmentation offload allows a device to segment a single frame
into multiple frames with a data payload size specified in socket buffer.
As a result we can now send data approximately up to seven percents fast
than was previously possible on my system.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |   4 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 113 ++++++++++++++++++++++++++-
 2 files changed, 116 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 2121fc34e300..9e34b0969322 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -282,6 +282,10 @@
 #define IGC_TXD_STAT_TC		0x00000004 /* Tx Underrun */
 #define IGC_TXD_EXTCMD_TSTAMP	0x00000010 /* IEEE1588 Timestamp packet */
 
+/* IPSec Encrypt Enable */
+#define IGC_ADVTXD_L4LEN_SHIFT	8  /* Adv ctxt L4LEN shift */
+#define IGC_ADVTXD_MSS_SHIFT	16 /* Adv ctxt MSS shift */
+
 /* Transmit Control */
 #define IGC_TCTL_EN		0x00000002 /* enable Tx */
 #define IGC_TCTL_PSP		0x00000008 /* pad short packets */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 37d2d242c3a6..607bf89ecd71 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1000,6 +1000,10 @@ static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
 		       IGC_ADVTXD_DCMD_DEXT |
 		       IGC_ADVTXD_DCMD_IFCS;
 
+	/* set segmentation bits for TSO */
+	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSO,
+				 (IGC_ADVTXD_DCMD_TSE));
+
 	/* set timestamp bit if present */
 	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP,
 				 (IGC_ADVTXD_MAC_TSTAMP));
@@ -1171,6 +1175,100 @@ static int igc_tx_map(struct igc_ring *tx_ring,
 	return -1;
 }
 
+static int igc_tso(struct igc_ring *tx_ring,
+		   struct igc_tx_buffer *first,
+		   u8 *hdr_len)
+{
+	u32 vlan_macip_lens, type_tucmd, mss_l4len_idx;
+	struct sk_buff *skb = first->skb;
+	union {
+		struct iphdr *v4;
+		struct ipv6hdr *v6;
+		unsigned char *hdr;
+	} ip;
+	union {
+		struct tcphdr *tcp;
+		struct udphdr *udp;
+		unsigned char *hdr;
+	} l4;
+	u32 paylen, l4_offset;
+	int err;
+
+	if (skb->ip_summed != CHECKSUM_PARTIAL)
+		return 0;
+
+	if (!skb_is_gso(skb))
+		return 0;
+
+	err = skb_cow_head(skb, 0);
+	if (err < 0)
+		return err;
+
+	ip.hdr = skb_network_header(skb);
+	l4.hdr = skb_checksum_start(skb);
+
+	/* ADV DTYP TUCMD MKRLOC/ISCSIHEDLEN */
+	type_tucmd = IGC_ADVTXD_TUCMD_L4T_TCP;
+
+	/* initialize outer IP header fields */
+	if (ip.v4->version == 4) {
+		unsigned char *csum_start = skb_checksum_start(skb);
+		unsigned char *trans_start = ip.hdr + (ip.v4->ihl * 4);
+
+		/* IP header will have to cancel out any data that
+		 * is not a part of the outer IP header
+		 */
+		ip.v4->check = csum_fold(csum_partial(trans_start,
+						      csum_start - trans_start,
+						      0));
+		type_tucmd |= IGC_ADVTXD_TUCMD_IPV4;
+
+		ip.v4->tot_len = 0;
+		first->tx_flags |= IGC_TX_FLAGS_TSO |
+				   IGC_TX_FLAGS_CSUM |
+				   IGC_TX_FLAGS_IPV4;
+	} else {
+		ip.v6->payload_len = 0;
+		first->tx_flags |= IGC_TX_FLAGS_TSO |
+				   IGC_TX_FLAGS_CSUM;
+	}
+
+	/* determine offset of inner transport header */
+	l4_offset = l4.hdr - skb->data;
+
+	/* remove payload length from inner checksum */
+	paylen = skb->len - l4_offset;
+	if (type_tucmd & IGC_ADVTXD_TUCMD_L4T_TCP) {
+		/* compute length of segmentation header */
+		*hdr_len = (l4.tcp->doff * 4) + l4_offset;
+		csum_replace_by_diff(&l4.tcp->check,
+				     (__force __wsum)htonl(paylen));
+	} else {
+		/* compute length of segmentation header */
+		*hdr_len = sizeof(*l4.udp) + l4_offset;
+		csum_replace_by_diff(&l4.udp->check,
+				     (__force __wsum)htonl(paylen));
+	}
+
+	/* update gso size and bytecount with header size */
+	first->gso_segs = skb_shinfo(skb)->gso_segs;
+	first->bytecount += (first->gso_segs - 1) * *hdr_len;
+
+	/* MSS L4LEN IDX */
+	mss_l4len_idx = (*hdr_len - l4_offset) << IGC_ADVTXD_L4LEN_SHIFT;
+	mss_l4len_idx |= skb_shinfo(skb)->gso_size << IGC_ADVTXD_MSS_SHIFT;
+
+	/* VLAN MACLEN IPLEN */
+	vlan_macip_lens = l4.hdr - ip.hdr;
+	vlan_macip_lens |= (ip.hdr - skb->data) << IGC_ADVTXD_MACLEN_SHIFT;
+	vlan_macip_lens |= first->tx_flags & IGC_TX_FLAGS_VLAN_MASK;
+
+	igc_tx_ctxtdesc(tx_ring, first, vlan_macip_lens,
+			type_tucmd, mss_l4len_idx);
+
+	return 1;
+}
+
 static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 				       struct igc_ring *tx_ring)
 {
@@ -1180,6 +1278,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	u32 tx_flags = 0;
 	unsigned short f;
 	u8 hdr_len = 0;
+	int tso = 0;
 
 	/* need: 1 descriptor per page * PAGE_SIZE/IGC_MAX_DATA_PER_TXD,
 	 *	+ 1 desc for skb_headlen/IGC_MAX_DATA_PER_TXD,
@@ -1226,11 +1325,21 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->tx_flags = tx_flags;
 	first->protocol = protocol;
 
-	igc_tx_csum(tx_ring, first);
+	tso = igc_tso(tx_ring, first, &hdr_len);
+	if (tso < 0)
+		goto out_drop;
+	else if (!tso)
+		igc_tx_csum(tx_ring, first);
 
 	igc_tx_map(tx_ring, first, hdr_len);
 
 	return NETDEV_TX_OK;
+
+out_drop:
+	dev_kfree_skb_any(first->skb);
+	first->skb = NULL;
+
+	return NETDEV_TX_OK;
 }
 
 static inline struct igc_ring *igc_tx_queue_mapping(struct igc_adapter *adapter,
@@ -4588,6 +4697,8 @@ static int igc_probe(struct pci_dev *pdev,
 
 	/* Add supported features to the features list*/
 	netdev->features |= NETIF_F_SG;
+	netdev->features |= NETIF_F_TSO;
+	netdev->features |= NETIF_F_TSO6;
 	netdev->features |= NETIF_F_RXCSUM;
 	netdev->features |= NETIF_F_HW_CSUM;
 	netdev->features |= NETIF_F_SCTP_CRC;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
