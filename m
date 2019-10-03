Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E75C9C80
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2019 12:43:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 474B586F21;
	Thu,  3 Oct 2019 10:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P-vfqcF9khF5; Thu,  3 Oct 2019 10:43:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B25B861C1;
	Thu,  3 Oct 2019 10:43:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 657BC1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 10:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 61EBD84CEC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 10:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36j2uBgz3lXk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2019 10:43:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4598C85194
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 10:43:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 03:43:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="205589895"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2019 03:43:06 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2019 13:43:05 +0300
Message-Id: <20191003104305.42463-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Add rx checksum support
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

Extend the socket buffer field process and add rx checksum functionality
Minor: fix indentation with tab instead of spaces.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  5 +++-
 drivers/net/ethernet/intel/igc/igc_main.c    | 43 ++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 03f1aca3f57f..f3788f0b95b4 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -282,7 +282,10 @@
 #define IGC_RCTL_BAM		0x00008000 /* broadcast enable */
 
 /* Receive Descriptor bit definitions */
-#define IGC_RXD_STAT_EOP	0x02    /* End of Packet */
+#define IGC_RXD_STAT_EOP	0x02	/* End of Packet */
+#define IGC_RXD_STAT_IXSM	0x04	/* Ignore checksum */
+#define IGC_RXD_STAT_UDPCS	0x10	/* UDP xsum calculated */
+#define IGC_RXD_STAT_TCPCS	0x20	/* TCP xsum calculated */
 
 #define IGC_RXDEXT_STATERR_CE		0x01000000
 #define IGC_RXDEXT_STATERR_SE		0x02000000
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a861fc038721..52521a0bbf48 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1201,6 +1201,46 @@ static netdev_tx_t igc_xmit_frame(struct sk_buff *skb,
 	return igc_xmit_frame_ring(skb, igc_tx_queue_mapping(adapter, skb));
 }
 
+static inline void igc_rx_checksum(struct igc_ring *ring,
+				   union igc_adv_rx_desc *rx_desc,
+				   struct sk_buff *skb)
+{
+	skb_checksum_none_assert(skb);
+
+	/* Ignore Checksum bit is set */
+	if (igc_test_staterr(rx_desc, IGC_RXD_STAT_IXSM))
+		return;
+
+	/* Rx checksum disabled via ethtool */
+	if (!(ring->netdev->features & NETIF_F_RXCSUM))
+		return;
+
+	/* TCP/UDP checksum error bit is set */
+	if (igc_test_staterr(rx_desc,
+			     IGC_RXDEXT_STATERR_TCPE |
+			     IGC_RXDEXT_STATERR_IPE)) {
+		/* work around errata with sctp packets where the TCPE aka
+		 * L4E bit is set incorrectly on 64 byte (60 byte w/o crc)
+		 * packets, (aka let the stack check the crc32c)
+		 */
+		if (!(skb->len == 60 &&
+		      test_bit(IGC_RING_FLAG_RX_SCTP_CSUM, &ring->flags))) {
+			u64_stats_update_begin(&ring->rx_syncp);
+			ring->rx_stats.csum_err++;
+			u64_stats_update_end(&ring->rx_syncp);
+		}
+		/* let the stack verify checksum errors */
+		return;
+	}
+	/* It must be a TCP or UDP packet with a valid checksum */
+	if (igc_test_staterr(rx_desc, IGC_RXD_STAT_TCPCS |
+				      IGC_RXD_STAT_UDPCS))
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+
+	dev_dbg(ring->dev, "cksum success: bits %08X\n",
+		le32_to_cpu(rx_desc->wb.upper.status_error));
+}
+
 static inline void igc_rx_hash(struct igc_ring *ring,
 			       union igc_adv_rx_desc *rx_desc,
 			       struct sk_buff *skb)
@@ -1227,6 +1267,8 @@ static void igc_process_skb_fields(struct igc_ring *rx_ring,
 {
 	igc_rx_hash(rx_ring, rx_desc, skb);
 
+	igc_rx_checksum(rx_ring, rx_desc, skb);
+
 	skb_record_rx_queue(skb, rx_ring->queue_index);
 
 	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
@@ -4392,6 +4434,7 @@ static int igc_probe(struct pci_dev *pdev,
 		goto err_sw_init;
 
 	/* Add supported features to the features list*/
+	netdev->features |= NETIF_F_RXCSUM;
 	netdev->features |= NETIF_F_HW_CSUM;
 	netdev->features |= NETIF_F_SCTP_CRC;
 
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
