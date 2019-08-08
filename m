Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F2085A4C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 08:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2421686E1D;
	Thu,  8 Aug 2019 06:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mg-EBVbuCxB0; Thu,  8 Aug 2019 06:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A15786C02;
	Thu,  8 Aug 2019 06:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A15391BF83A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 06:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 99DC785A96
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 06:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTzMDIOHjn3o for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 06:12:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2BC8851A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 06:12:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 23:12:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,360,1559545200"; d="scan'208";a="179741423"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga006.jf.intel.com with ESMTP; 07 Aug 2019 23:12:24 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 09:12:23 +0300
Message-Id: <20190808061223.42725-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Add tx_csum offload functionality
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

Add ip generic TX checksum offload functionality.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  4 ++
 drivers/net/ethernet/intel/igc/igc_base.h    |  8 +++
 drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++
 drivers/net/ethernet/intel/igc/igc_main.c    | 97 ++++++++++++++++++++++++++++
 4 files changed, 114 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 0f5534ce27b0..7e16345d836e 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -135,6 +135,9 @@ extern char igc_driver_version[];
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
 #define IGC_RX_BUFFER_WRITE	16 /* Must be power of 2 */
 
+/* VLAN info */
+#define IGC_TX_FLAGS_VLAN_MASK	0xffff0000
+
 /* igc_test_staterr - tests bits within Rx descriptor status and error fields */
 static inline __le32 igc_test_staterr(union igc_adv_rx_desc *rx_desc,
 				      const u32 stat_err_bits)
@@ -254,6 +257,7 @@ struct igc_ring {
 	u16 count;                      /* number of desc. in the ring */
 	u8 queue_index;                 /* logical index of the ring*/
 	u8 reg_idx;                     /* physical index of the ring */
+	bool launchtime_enable;		/* true if LaunchTime is enabled */
 
 	/* everything past this point are written often */
 	u16 next_to_clean;
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index 58d1109d7f3f..ea627ce52525 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -22,6 +22,14 @@ union igc_adv_tx_desc {
 	} wb;
 };
 
+/* Context descriptors */
+struct igc_adv_tx_context_desc {
+	__le32 vlan_macip_lens;
+	__le32 launch_time;
+	__le32 type_tucmd_mlhl;
+	__le32 mss_l4len_idx;
+};
+
 /* Adv Transmit Descriptor Config Masks */
 #define IGC_ADVTXD_MAC_TSTAMP	0x00080000 /* IEEE1588 Timestamp packet */
 #define IGC_ADVTXD_DTYP_CTXT	0x00200000 /* Advanced Context Descriptor */
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 549134ecd105..f3f2325fe567 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -397,4 +397,9 @@
 #define IGC_VLAPQF_P_VALID(_n)	(0x1 << (3 + (_n) * 4))
 #define IGC_VLAPQF_QUEUE_MASK	0x03
 
+#define IGC_ADVTXD_MACLEN_SHIFT		9  /* Adv ctxt desc mac len shift */
+#define IGC_ADVTXD_TUCMD_IPV4		0x00000400  /* IP Packet Type:1=IPv4 */
+#define IGC_ADVTXD_TUCMD_L4T_TCP	0x00000800  /* L4 Packet Type of TCP */
+#define IGC_ADVTXD_TUCMD_L4T_SCTP	0x00001000 /* L4 packet TYPE of SCTP */
+
 #endif /* _IGC_DEFINES_H_ */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c855d9cbe431..c5b62991284d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5,6 +5,11 @@
 #include <linux/types.h>
 #include <linux/if_vlan.h>
 #include <linux/aer.h>
+#include <linux/tcp.h>
+#include <linux/udp.h>
+#include <linux/ip.h>
+
+#include <net/ipv6.h>
 
 #include "igc.h"
 #include "igc_hw.h"
@@ -791,8 +796,96 @@ static int igc_set_mac(struct net_device *netdev, void *p)
 	return 0;
 }
 
+static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
+			    struct igc_tx_buffer *first,
+			    u32 vlan_macip_lens, u32 type_tucmd,
+			    u32 mss_l4len_idx)
+{
+	struct igc_adv_tx_context_desc *context_desc;
+	u16 i = tx_ring->next_to_use;
+	struct timespec64 ts;
+
+	context_desc = IGC_TX_CTXTDESC(tx_ring, i);
+
+	i++;
+	tx_ring->next_to_use = (i < tx_ring->count) ? i : 0;
+
+	/* set bits to identify this as an advanced context descriptor */
+	type_tucmd |= IGC_TXD_CMD_DEXT | IGC_ADVTXD_DTYP_CTXT;
+
+	/* For 82575, context index must be unique per ring. */
+	if (test_bit(IGC_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
+		mss_l4len_idx |= tx_ring->reg_idx << 4;
+
+	context_desc->vlan_macip_lens	= cpu_to_le32(vlan_macip_lens);
+	context_desc->type_tucmd_mlhl	= cpu_to_le32(type_tucmd);
+	context_desc->mss_l4len_idx	= cpu_to_le32(mss_l4len_idx);
+
+	/* We assume there is always a valid tx time available. Invalid times
+	 * should have been handled by the upper layers.
+	 */
+	if (tx_ring->launchtime_enable) {
+		ts = ns_to_timespec64(first->skb->tstamp);
+		first->skb->tstamp = 0;
+		context_desc->launch_time = cpu_to_le32(ts.tv_nsec / 32);
+	} else {
+		context_desc->launch_time = 0;
+	}
+}
+
+static inline bool igc_ipv6_csum_is_sctp(struct sk_buff *skb)
+{
+	unsigned int offset = 0;
+
+	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
+
+	return offset == skb_checksum_start_offset(skb);
+}
+
 static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first)
 {
+	struct sk_buff *skb = first->skb;
+	u32 vlan_macip_lens = 0;
+	u32 type_tucmd = 0;
+
+	if (skb->ip_summed != CHECKSUM_PARTIAL) {
+csum_failed:
+		if (!(first->tx_flags & IGC_TX_FLAGS_VLAN) &&
+		    !tx_ring->launchtime_enable)
+			return;
+		goto no_csum;
+	}
+
+	switch (skb->csum_offset) {
+	case offsetof(struct tcphdr, check):
+		type_tucmd = IGC_ADVTXD_TUCMD_L4T_TCP;
+		/* fall through */
+	case offsetof(struct udphdr, check):
+		break;
+	case offsetof(struct sctphdr, checksum):
+		/* validate that this is actually an SCTP request */
+		if ((first->protocol == htons(ETH_P_IP) &&
+		     (ip_hdr(skb)->protocol == IPPROTO_SCTP)) ||
+		    (first->protocol == htons(ETH_P_IPV6) &&
+		     igc_ipv6_csum_is_sctp(skb))) {
+			type_tucmd = IGC_ADVTXD_TUCMD_L4T_SCTP;
+			break;
+		}
+		/* fall through */
+	default:
+		skb_checksum_help(skb);
+		goto csum_failed;
+	}
+
+	/* update TX checksum flag */
+	first->tx_flags |= IGC_TX_FLAGS_CSUM;
+	vlan_macip_lens = skb_checksum_start_offset(skb) -
+			  skb_network_offset(skb);
+no_csum:
+	vlan_macip_lens |= skb_network_offset(skb) << IGC_ADVTXD_MACLEN_SHIFT;
+	vlan_macip_lens |= first->tx_flags & IGC_TX_FLAGS_VLAN_MASK;
+
+	igc_tx_ctxtdesc(tx_ring, first, vlan_macip_lens, type_tucmd, 0);
 }
 
 static int __igc_maybe_stop_tx(struct igc_ring *tx_ring, const u16 size)
@@ -4117,6 +4210,9 @@ static int igc_probe(struct pci_dev *pdev,
 	if (err)
 		goto err_sw_init;
 
+	/* Add supported features to the features list*/
+	netdev->features |= NETIF_F_HW_CSUM;
+
 	/* setup the private structure */
 	err = igc_sw_init(adapter);
 	if (err)
@@ -4124,6 +4220,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 	/* copy netdev features into list of user selectable features */
 	netdev->hw_features |= NETIF_F_NTUPLE;
+	netdev->hw_features |= netdev->features;
 
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
