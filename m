Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F01C479DA24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 22:34:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D74041BEB;
	Tue, 12 Sep 2023 20:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D74041BEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694550886;
	bh=fhQhOkz9iZpCE5CI3fz0j225rJxeJ1zp2EoiTs1rsZQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ydtufn+juBLxWOikJuI1Em+G8/DBaaw2AZ7h9Rh80P43Zl94eslYHGhUcf5b+JHWC
	 75iuUIHh3pBtkGltV4k2oWS1ScayWQl1pAmtsFjA/p0UZMcBIqkv5LZKilTzfEbfGk
	 baRl9LHIhse6VeuO59Fe0/8o5jr16ecnwo8c8DfvcZ6KS8sNbWCXK5rRiYWTCL+Ne/
	 pZwdQS3mEH9l1NGCrMBsU13L/+9jRiqLJer5kAXKytdNbgnpK+cl3KI7WpXjc8AwlW
	 6GUdkocge8xpgxt5lVQ2YLzAXU1DldK1ILdnToVeRYxgFfvsTiXRPszsq7qsiGkwHw
	 T1364Zxi6JDTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bfrpIejZV0-0; Tue, 12 Sep 2023 20:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3BBA41C24;
	Tue, 12 Sep 2023 20:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3BBA41C24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21A081BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 368C4809E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 368C4809E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLQbAnH_EBia for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 20:33:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D703D821CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D703D821CC
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368753742"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="368753742"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:33:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="778942116"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="778942116"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga001.jf.intel.com with ESMTP; 12 Sep 2023 13:33:23 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 13:31:46 -0700
Message-Id: <20230912203149.1728261-13-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
References: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694550807; x=1726086807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FFO55Zn7xZP6OC7pTZisKc8VNCd/02tnJqOZVsds3FQ=;
 b=NVDz2ew4tkHjD21l/tM0lm6sCy/BbqRSgpPELO7fvGdEuCLAiUBkAHA/
 DpGEe+MxvLrNtzMm4NmwIOE951tNu2Oz8Nu/sCU8gu7RIBPb0h6kcEohp
 ANLUHbvMKw1llIRFfp1uZABq3xobhEgsQ/8X70V1gX7ERYeVlDvf3z2ol
 tn3figXimnz+nIoo/ZisEE1AZ/IJsOBerkW1yI590IwpRFcPoWb/xHi1r
 ufy5np//lE4ZtqiRBCjpt0tJdn7Wwrxr6Br7+ttULneqWoPYlxiH4Rkdh
 JFEM9NBkns5tM7JOzyuABto8uFOmU1LKeSqxhPC3+wxruSBpEeRhdNB32
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NVDz2ew4
Subject: [Intel-wired-lan] [PATCH iwl-next v11 12/15] idpf: add RX splitq
 napi poll support
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
Cc: willemb@google.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>

Add support to handle interrupts for the RX completion queue and
RX buffer queue. When the interrupt fires on RX completion queue,
process the RX descriptors that are received. Allocate and prepare
the SKB with the RX packet info, for both data and header buffer.

IDPF uses software maintained refill queues to manage buffers between
RX queue producer and the buffer queue consumer. They are required in
order to maintain a lockless buffer management system and are strictly
software only constructs. Instead of updating the RX buffer queue tail
with available buffers right after the clean routine, it posts the
buffer ids to the refill queues, only to post them to the HW later.

If the generic receive offload (GRO) is enabled in the capabilities
and turned on by default or via ethtool, then HW performs the
packet coalescing if certain criteria are met by the incoming
packets and updates the RX descriptor. Similar to GRO, if generic
checksum is enabled, HW computes the checksum and updates the
respective fields in the descriptor. Add support to update the
SKB fields with the GRO and the generic checksum received.

Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   3 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 811 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  80 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   4 +-
 4 files changed, 892 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index da62ed197fdb..907fec7dbe62 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -14,6 +14,7 @@ struct idpf_vport_max_q;
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
 #include <linux/bitfield.h>
+#include <net/gro.h>
 #include <linux/dim.h>
 
 #include "virtchnl2.h"
@@ -306,6 +307,7 @@ enum idpf_vport_flags {
  * @q_vector_idxs: Starting index of queue vectors
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
+ * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
  * @link_up: True if link is up
  * @vc_msg: Virtchnl message buffer
@@ -350,6 +352,7 @@ struct idpf_vport {
 	u16 *q_vector_idxs;
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
+	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 	u16 tx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 
 	bool link_up;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 7f91347e0522..5489c44e72d2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -473,6 +473,28 @@ static int idpf_rx_hdr_buf_alloc_all(struct idpf_queue *rxq)
 	return 0;
 }
 
+/**
+ * idpf_rx_post_buf_refill - Post buffer id to refill queue
+ * @refillq: refill queue to post to
+ * @buf_id: buffer id to post
+ */
+static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
+{
+	u16 nta = refillq->next_to_alloc;
+
+	/* store the buffer ID and the SW maintained GEN bit to the refillq */
+	refillq->ring[nta] =
+		((buf_id << IDPF_RX_BI_BUFID_S) & IDPF_RX_BI_BUFID_M) |
+		(!!(test_bit(__IDPF_Q_GEN_CHK, refillq->flags)) <<
+		 IDPF_RX_BI_GEN_S);
+
+	if (unlikely(++nta == refillq->desc_count)) {
+		nta = 0;
+		change_bit(__IDPF_Q_GEN_CHK, refillq->flags);
+	}
+	refillq->next_to_alloc = nta;
+}
+
 /**
  * idpf_rx_post_buf_desc - Post buffer to bufq descriptor ring
  * @bufq: buffer queue to post to
@@ -2653,6 +2675,692 @@ netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
 	return idpf_tx_splitq_frame(skb, tx_q);
 }
 
+/**
+ * idpf_ptype_to_htype - get a hash type
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * Returns appropriate hash type (such as PKT_HASH_TYPE_L2/L3/L4) to be used by
+ * skb_set_hash based on PTYPE as parsed by HW Rx pipeline and is part of
+ * Rx desc.
+ */
+static enum pkt_hash_types
+idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *decoded)
+{
+	if (!decoded->known)
+		return PKT_HASH_TYPE_NONE;
+	if (decoded->payload_layer == IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2 &&
+	    decoded->inner_prot)
+		return PKT_HASH_TYPE_L4;
+	if (decoded->payload_layer == IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2 &&
+	    decoded->outer_ip)
+		return PKT_HASH_TYPE_L3;
+	if (decoded->outer_ip == IDPF_RX_PTYPE_OUTER_L2)
+		return PKT_HASH_TYPE_L2;
+
+	return PKT_HASH_TYPE_NONE;
+}
+
+/**
+ * idpf_rx_hash - set the hash value in the skb
+ * @rxq: Rx descriptor ring packet is being transacted on
+ * @skb: pointer to current skb being populated
+ * @rx_desc: Receive descriptor
+ * @decoded: Decoded Rx packet type related fields
+ */
+static void idpf_rx_hash(struct idpf_queue *rxq, struct sk_buff *skb,
+			 struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+			 struct idpf_rx_ptype_decoded *decoded)
+{
+	u32 hash;
+
+	if (unlikely(!idpf_is_feature_ena(rxq->vport, NETIF_F_RXHASH)))
+		return;
+
+	hash = le16_to_cpu(rx_desc->hash1) |
+	       (rx_desc->ff2_mirrid_hash2.hash2 << 16) |
+	       (rx_desc->hash3 << 24);
+
+	skb_set_hash(skb, hash, idpf_ptype_to_htype(decoded));
+}
+
+/**
+ * idpf_rx_csum - Indicate in skb if checksum is good
+ * @rxq: Rx descriptor ring packet is being transacted on
+ * @skb: pointer to current skb being populated
+ * @csum_bits: checksum fields extracted from the descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * skb->protocol must be set before this function is called
+ */
+static void idpf_rx_csum(struct idpf_queue *rxq, struct sk_buff *skb,
+			 struct idpf_rx_csum_decoded *csum_bits,
+			 struct idpf_rx_ptype_decoded *decoded)
+{
+	bool ipv4, ipv6;
+
+	/* check if Rx checksum is enabled */
+	if (unlikely(!idpf_is_feature_ena(rxq->vport, NETIF_F_RXCSUM)))
+		return;
+
+	/* check if HW has decoded the packet and checksum */
+	if (!(csum_bits->l3l4p))
+		return;
+
+	ipv4 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+
+	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
+		goto checksum_fail;
+
+	if (ipv6 && csum_bits->ipv6exadd)
+		return;
+
+	/* check for L4 errors and handle packets that were not able to be
+	 * checksummed
+	 */
+	if (csum_bits->l4e)
+		goto checksum_fail;
+
+	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
+	switch (decoded->inner_prot) {
+	case IDPF_RX_PTYPE_INNER_PROT_ICMP:
+	case IDPF_RX_PTYPE_INNER_PROT_TCP:
+	case IDPF_RX_PTYPE_INNER_PROT_UDP:
+		if (!csum_bits->raw_csum_inv) {
+			u16 csum = csum_bits->raw_csum;
+
+			skb->csum = csum_unfold((__force __sum16)~swab16(csum));
+			skb->ip_summed = CHECKSUM_COMPLETE;
+		} else {
+			skb->ip_summed = CHECKSUM_UNNECESSARY;
+		}
+		break;
+	case IDPF_RX_PTYPE_INNER_PROT_SCTP:
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+		break;
+	default:
+		break;
+	}
+
+	return;
+
+checksum_fail:
+	u64_stats_update_begin(&rxq->stats_sync);
+	u64_stats_inc(&rxq->q_stats.rx.hw_csum_err);
+	u64_stats_update_end(&rxq->stats_sync);
+}
+
+/**
+ * idpf_rx_splitq_extract_csum_bits - Extract checksum bits from descriptor
+ * @rx_desc: receive descriptor
+ * @csum: structure to extract checksum fields
+ *
+ **/
+static void idpf_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+					     struct idpf_rx_csum_decoded *csum)
+{
+	u8 qword0, qword1;
+
+	qword0 = rx_desc->status_err0_qw0;
+	qword1 = rx_desc->status_err0_qw1;
+
+	csum->ipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_M,
+			      qword1);
+	csum->eipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_M,
+			       qword1);
+	csum->l4e = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_M,
+			      qword1);
+	csum->l3l4p = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_M,
+				qword1);
+	csum->ipv6exadd = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_M,
+				    qword0);
+	csum->raw_csum_inv = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_M,
+				       le16_to_cpu(rx_desc->ptype_err_fflags0));
+	csum->raw_csum = le16_to_cpu(rx_desc->misc.raw_cs);
+}
+
+/**
+ * idpf_rx_rsc - Set the RSC fields in the skb
+ * @rxq : Rx descriptor ring packet is being transacted on
+ * @skb : pointer to current skb being populated
+ * @rx_desc: Receive descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * Return 0 on success and error code on failure
+ *
+ * Populate the skb fields with the total number of RSC segments, RSC payload
+ * length and packet type.
+ */
+static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
+		       struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+		       struct idpf_rx_ptype_decoded *decoded)
+{
+	u16 rsc_segments, rsc_seg_len;
+	bool ipv4, ipv6;
+	int len;
+
+	if (unlikely(!decoded->outer_ip))
+		return -EINVAL;
+
+	rsc_seg_len = le16_to_cpu(rx_desc->misc.rscseglen);
+	if (unlikely(!rsc_seg_len))
+		return -EINVAL;
+
+	ipv4 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+
+	if (unlikely(!(ipv4 ^ ipv6)))
+		return -EINVAL;
+
+	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_seg_len);
+	if (unlikely(rsc_segments == 1))
+		return 0;
+
+	NAPI_GRO_CB(skb)->count = rsc_segments;
+	skb_shinfo(skb)->gso_size = rsc_seg_len;
+
+	skb_reset_network_header(skb);
+	len = skb->len - skb_transport_offset(skb);
+
+	if (ipv4) {
+		struct iphdr *ipv4h = ip_hdr(skb);
+
+		skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
+
+		/* Reset and set transport header offset in skb */
+		skb_set_transport_header(skb, sizeof(struct iphdr));
+
+		/* Compute the TCP pseudo header checksum*/
+		tcp_hdr(skb)->check =
+			~tcp_v4_check(len, ipv4h->saddr, ipv4h->daddr, 0);
+	} else {
+		struct ipv6hdr *ipv6h = ipv6_hdr(skb);
+
+		skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
+		skb_set_transport_header(skb, sizeof(struct ipv6hdr));
+		tcp_hdr(skb)->check =
+			~tcp_v6_check(len, &ipv6h->saddr, &ipv6h->daddr, 0);
+	}
+
+	tcp_gro_complete(skb);
+
+	u64_stats_update_begin(&rxq->stats_sync);
+	u64_stats_inc(&rxq->q_stats.rx.rsc_pkts);
+	u64_stats_update_end(&rxq->stats_sync);
+
+	return 0;
+}
+
+/**
+ * idpf_rx_process_skb_fields - Populate skb header fields from Rx descriptor
+ * @rxq: Rx descriptor ring packet is being transacted on
+ * @skb: pointer to current skb being populated
+ * @rx_desc: Receive descriptor
+ *
+ * This function checks the ring, descriptor, and packet information in
+ * order to populate the hash, checksum, protocol, and
+ * other fields within the skb.
+ */
+static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
+				      struct sk_buff *skb,
+				      struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+{
+	struct idpf_rx_csum_decoded csum_bits = { };
+	struct idpf_rx_ptype_decoded decoded;
+	u16 rx_ptype;
+
+	rx_ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M,
+			     le16_to_cpu(rx_desc->ptype_err_fflags0));
+
+	decoded = rxq->vport->rx_ptype_lkup[rx_ptype];
+	/* If we don't know the ptype we can't do anything else with it. Just
+	 * pass it up the stack as-is.
+	 */
+	if (!decoded.known)
+		return 0;
+
+	/* process RSS/hash */
+	idpf_rx_hash(rxq, skb, rx_desc, &decoded);
+
+	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
+
+	if (FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M,
+		      le16_to_cpu(rx_desc->hdrlen_flags)))
+		return idpf_rx_rsc(rxq, skb, rx_desc, &decoded);
+
+	idpf_rx_splitq_extract_csum_bits(rx_desc, &csum_bits);
+	idpf_rx_csum(rxq, skb, &csum_bits, &decoded);
+
+	return 0;
+}
+
+/**
+ * idpf_rx_add_frag - Add contents of Rx buffer to sk_buff as a frag
+ * @rx_buf: buffer containing page to add
+ * @skb: sk_buff to place the data into
+ * @size: packet length from rx_desc
+ *
+ * This function will add the data contained in rx_buf->page to the skb.
+ * It will just attach the page as a frag to the skb.
+ * The function will then update the page offset.
+ */
+static void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
+			     unsigned int size)
+{
+	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
+			rx_buf->page_offset, size, rx_buf->truesize);
+
+	rx_buf->page = NULL;
+}
+
+/**
+ * idpf_rx_construct_skb - Allocate skb and populate it
+ * @rxq: Rx descriptor queue
+ * @rx_buf: Rx buffer to pull data from
+ * @size: the length of the packet
+ *
+ * This function allocates an skb. It then populates it with the page
+ * data from the current receive descriptor, taking care to set up the
+ * skb correctly.
+ */
+static struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
+					     struct idpf_rx_buf *rx_buf,
+					     unsigned int size)
+{
+	unsigned int headlen;
+	struct sk_buff *skb;
+	void *va;
+
+	va = page_address(rx_buf->page) + rx_buf->page_offset;
+
+	/* prefetch first cache line of first page */
+	net_prefetch(va);
+	/* allocate a skb to store the frags */
+	skb = __napi_alloc_skb(&rxq->q_vector->napi, IDPF_RX_HDR_SIZE,
+			       GFP_ATOMIC);
+	if (unlikely(!skb)) {
+		idpf_rx_put_page(rx_buf);
+
+		return NULL;
+	}
+
+	skb_record_rx_queue(skb, rxq->idx);
+	skb_mark_for_recycle(skb);
+
+	/* Determine available headroom for copy */
+	headlen = size;
+	if (headlen > IDPF_RX_HDR_SIZE)
+		headlen = eth_get_headlen(skb->dev, va, IDPF_RX_HDR_SIZE);
+
+	/* align pull length to size of long to optimize memcpy performance */
+	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
+
+	/* if we exhaust the linear part then add what is left as a frag */
+	size -= headlen;
+	if (!size) {
+		idpf_rx_put_page(rx_buf);
+
+		return skb;
+	}
+
+	skb_add_rx_frag(skb, 0, rx_buf->page, rx_buf->page_offset + headlen,
+			size, rx_buf->truesize);
+
+	/* Since we're giving the page to the stack, clear our reference to it.
+	 * We'll get a new one during buffer posting.
+	 */
+	rx_buf->page = NULL;
+
+	return skb;
+}
+
+/**
+ * idpf_rx_hdr_construct_skb - Allocate skb and populate it from header buffer
+ * @rxq: Rx descriptor queue
+ * @va: Rx buffer to pull data from
+ * @size: the length of the packet
+ *
+ * This function allocates an skb. It then populates it with the page data from
+ * the current receive descriptor, taking care to set up the skb correctly.
+ * This specifically uses a header buffer to start building the skb.
+ */
+static struct sk_buff *idpf_rx_hdr_construct_skb(struct idpf_queue *rxq,
+						 const void *va,
+						 unsigned int size)
+{
+	struct sk_buff *skb;
+
+	/* allocate a skb to store the frags */
+	skb = __napi_alloc_skb(&rxq->q_vector->napi, size, GFP_ATOMIC);
+	if (unlikely(!skb))
+		return NULL;
+
+	skb_record_rx_queue(skb, rxq->idx);
+
+	memcpy(__skb_put(skb, size), va, ALIGN(size, sizeof(long)));
+
+	/* More than likely, a payload fragment, which will use a page from
+	 * page_pool will be added to the SKB so mark it for recycle
+	 * preemptively. And if not, it's inconsequential.
+	 */
+	skb_mark_for_recycle(skb);
+
+	return skb;
+}
+
+/**
+ * idpf_rx_splitq_test_staterr - tests bits in Rx descriptor
+ * status and error fields
+ * @stat_err_field: field from descriptor to test bits in
+ * @stat_err_bits: value to mask
+ *
+ */
+static bool idpf_rx_splitq_test_staterr(const u8 stat_err_field,
+					const u8 stat_err_bits)
+{
+	return !!(stat_err_field & stat_err_bits);
+}
+
+/**
+ * idpf_rx_splitq_is_eop - process handling of EOP buffers
+ * @rx_desc: Rx descriptor for current buffer
+ *
+ * If the buffer is an EOP buffer, this function exits returning true,
+ * otherwise return false indicating that this is in fact a non-EOP buffer.
+ */
+static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+{
+	/* if we are the last buffer then there is nothing else to do */
+	return likely(idpf_rx_splitq_test_staterr(rx_desc->status_err0_qw1,
+						  IDPF_RXD_EOF_SPLITQ));
+}
+
+/**
+ * idpf_rx_splitq_clean - Clean completed descriptors from Rx queue
+ * @rxq: Rx descriptor queue to retrieve receive buffer queue
+ * @budget: Total limit on number of packets to process
+ *
+ * This function provides a "bounce buffer" approach to Rx interrupt
+ * processing. The advantage to this is that on systems that have
+ * expensive overhead for IOMMU access this provides a means of avoiding
+ * it by maintaining the mapping of the page to the system.
+ *
+ * Returns amount of work completed
+ */
+static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
+{
+	int total_rx_bytes = 0, total_rx_pkts = 0;
+	struct idpf_queue *rx_bufq = NULL;
+	struct sk_buff *skb = rxq->skb;
+	u16 ntc = rxq->next_to_clean;
+
+	/* Process Rx packets bounded by budget */
+	while (likely(total_rx_pkts < budget)) {
+		struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
+		struct idpf_sw_queue *refillq = NULL;
+		struct idpf_rxq_set *rxq_set = NULL;
+		struct idpf_rx_buf *rx_buf = NULL;
+		union virtchnl2_rx_desc *desc;
+		unsigned int pkt_len = 0;
+		unsigned int hdr_len = 0;
+		u16 gen_id, buf_id = 0;
+		 /* Header buffer overflow only valid for header split */
+		bool hbo = false;
+		int bufq_id;
+		u8 rxdid;
+
+		/* get the Rx desc from Rx queue based on 'next_to_clean' */
+		desc = IDPF_RX_DESC(rxq, ntc);
+		rx_desc = (struct virtchnl2_rx_flex_desc_adv_nic_3 *)desc;
+
+		/* This memory barrier is needed to keep us from reading
+		 * any other fields out of the rx_desc
+		 */
+		dma_rmb();
+
+		/* if the descriptor isn't done, no work yet to do */
+		gen_id = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
+		gen_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M, gen_id);
+
+		if (test_bit(__IDPF_Q_GEN_CHK, rxq->flags) != gen_id)
+			break;
+
+		rxdid = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M,
+				  rx_desc->rxdid_ucast);
+		if (rxdid != VIRTCHNL2_RXDID_2_FLEX_SPLITQ) {
+			IDPF_RX_BUMP_NTC(rxq, ntc);
+			u64_stats_update_begin(&rxq->stats_sync);
+			u64_stats_inc(&rxq->q_stats.rx.bad_descs);
+			u64_stats_update_end(&rxq->stats_sync);
+			continue;
+		}
+
+		pkt_len = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
+		pkt_len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M,
+				    pkt_len);
+
+		hbo = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_M,
+				rx_desc->status_err0_qw1);
+
+		if (unlikely(hbo)) {
+			/* If a header buffer overflow, occurs, i.e. header is
+			 * too large to fit in the header split buffer, HW will
+			 * put the entire packet, including headers, in the
+			 * data/payload buffer.
+			 */
+			u64_stats_update_begin(&rxq->stats_sync);
+			u64_stats_inc(&rxq->q_stats.rx.hsplit_buf_ovf);
+			u64_stats_update_end(&rxq->stats_sync);
+			goto bypass_hsplit;
+		}
+
+		hdr_len = le16_to_cpu(rx_desc->hdrlen_flags);
+		hdr_len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M,
+				    hdr_len);
+
+bypass_hsplit:
+		bufq_id = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
+		bufq_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M,
+				    bufq_id);
+
+		rxq_set = container_of(rxq, struct idpf_rxq_set, rxq);
+		if (!bufq_id)
+			refillq = rxq_set->refillq0;
+		else
+			refillq = rxq_set->refillq1;
+
+		/* retrieve buffer from the rxq */
+		rx_bufq = &rxq->rxq_grp->splitq.bufq_sets[bufq_id].bufq;
+
+		buf_id = le16_to_cpu(rx_desc->buf_id);
+
+		rx_buf = &rx_bufq->rx_buf.buf[buf_id];
+
+		if (hdr_len) {
+			const void *va = (u8 *)rx_bufq->rx_buf.hdr_buf_va +
+						(u32)buf_id * IDPF_HDR_BUF_SIZE;
+
+			skb = idpf_rx_hdr_construct_skb(rxq, va, hdr_len);
+			u64_stats_update_begin(&rxq->stats_sync);
+			u64_stats_inc(&rxq->q_stats.rx.hsplit_pkts);
+			u64_stats_update_end(&rxq->stats_sync);
+		}
+
+		if (pkt_len) {
+			idpf_rx_sync_for_cpu(rx_buf, pkt_len);
+			if (skb)
+				idpf_rx_add_frag(rx_buf, skb, pkt_len);
+			else
+				skb = idpf_rx_construct_skb(rxq, rx_buf,
+							    pkt_len);
+		} else {
+			idpf_rx_put_page(rx_buf);
+		}
+
+		/* exit if we failed to retrieve a buffer */
+		if (!skb)
+			break;
+
+		idpf_rx_post_buf_refill(refillq, buf_id);
+
+		IDPF_RX_BUMP_NTC(rxq, ntc);
+		/* skip if it is non EOP desc */
+		if (!idpf_rx_splitq_is_eop(rx_desc))
+			continue;
+
+		/* pad skb if needed (to make valid ethernet frame) */
+		if (eth_skb_pad(skb)) {
+			skb = NULL;
+			continue;
+		}
+
+		/* probably a little skewed due to removing CRC */
+		total_rx_bytes += skb->len;
+
+		/* protocol */
+		if (unlikely(idpf_rx_process_skb_fields(rxq, skb, rx_desc))) {
+			dev_kfree_skb_any(skb);
+			skb = NULL;
+			continue;
+		}
+
+		/* send completed skb up the stack */
+		napi_gro_receive(&rxq->q_vector->napi, skb);
+		skb = NULL;
+
+		/* update budget accounting */
+		total_rx_pkts++;
+	}
+
+	rxq->next_to_clean = ntc;
+
+	rxq->skb = skb;
+	u64_stats_update_begin(&rxq->stats_sync);
+	u64_stats_add(&rxq->q_stats.rx.packets, total_rx_pkts);
+	u64_stats_add(&rxq->q_stats.rx.bytes, total_rx_bytes);
+	u64_stats_update_end(&rxq->stats_sync);
+
+	/* guarantee a trip back through this routine if there was a failure */
+	return total_rx_pkts;
+}
+
+/**
+ * idpf_rx_update_bufq_desc - Update buffer queue descriptor
+ * @bufq: Pointer to the buffer queue
+ * @refill_desc: SW Refill queue descriptor containing buffer ID
+ * @buf_desc: Buffer queue descriptor
+ *
+ * Return 0 on success and negative on failure.
+ */
+static int idpf_rx_update_bufq_desc(struct idpf_queue *bufq, u16 refill_desc,
+				    struct virtchnl2_splitq_rx_buf_desc *buf_desc)
+{
+	struct idpf_rx_buf *buf;
+	dma_addr_t addr;
+	u16 buf_id;
+
+	buf_id = FIELD_GET(IDPF_RX_BI_BUFID_M, refill_desc);
+
+	buf = &bufq->rx_buf.buf[buf_id];
+
+	addr = idpf_alloc_page(bufq->pp, buf, bufq->rx_buf_size);
+	if (unlikely(addr == DMA_MAPPING_ERROR))
+		return -ENOMEM;
+
+	buf_desc->pkt_addr = cpu_to_le64(addr);
+	buf_desc->qword0.buf_id = cpu_to_le16(buf_id);
+
+	if (!bufq->rx_hsplit_en)
+		return 0;
+
+	buf_desc->hdr_addr = cpu_to_le64(bufq->rx_buf.hdr_buf_pa +
+					 (u32)buf_id * IDPF_HDR_BUF_SIZE);
+
+	return 0;
+}
+
+/**
+ * idpf_rx_clean_refillq - Clean refill queue buffers
+ * @bufq: buffer queue to post buffers back to
+ * @refillq: refill queue to clean
+ *
+ * This function takes care of the buffer refill management
+ */
+static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
+				  struct idpf_sw_queue *refillq)
+{
+	struct virtchnl2_splitq_rx_buf_desc *buf_desc;
+	u16 bufq_nta = bufq->next_to_alloc;
+	u16 ntc = refillq->next_to_clean;
+	int cleaned = 0;
+	u16 gen;
+
+	buf_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, bufq_nta);
+
+	/* make sure we stop at ring wrap in the unlikely case ring is full */
+	while (likely(cleaned < refillq->desc_count)) {
+		u16 refill_desc = IDPF_SPLITQ_RX_BI_DESC(refillq, ntc);
+		bool failure;
+
+		gen = FIELD_GET(IDPF_RX_BI_GEN_M, refill_desc);
+		if (test_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags) != gen)
+			break;
+
+		failure = idpf_rx_update_bufq_desc(bufq, refill_desc,
+						   buf_desc);
+		if (failure)
+			break;
+
+		if (unlikely(++ntc == refillq->desc_count)) {
+			change_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags);
+			ntc = 0;
+		}
+
+		if (unlikely(++bufq_nta == bufq->desc_count)) {
+			buf_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, 0);
+			bufq_nta = 0;
+		} else {
+			buf_desc++;
+		}
+
+		cleaned++;
+	}
+
+	if (!cleaned)
+		return;
+
+	/* We want to limit how many transactions on the bus we trigger with
+	 * tail writes so we only do it in strides. It's also important we
+	 * align the write to a multiple of 8 as required by HW.
+	 */
+	if (((bufq->next_to_use <= bufq_nta ? 0 : bufq->desc_count) +
+	    bufq_nta - bufq->next_to_use) >= IDPF_RX_BUF_POST_STRIDE)
+		idpf_rx_buf_hw_update(bufq, ALIGN_DOWN(bufq_nta,
+						       IDPF_RX_BUF_POST_STRIDE));
+
+	/* update next to alloc since we have filled the ring */
+	refillq->next_to_clean = ntc;
+	bufq->next_to_alloc = bufq_nta;
+}
+
+/**
+ * idpf_rx_clean_refillq_all - Clean all refill queues
+ * @bufq: buffer queue with refill queues
+ *
+ * Iterates through all refill queues assigned to the buffer queue assigned to
+ * this vector.  Returns true if clean is complete within budget, false
+ * otherwise.
+ */
+static void idpf_rx_clean_refillq_all(struct idpf_queue *bufq)
+{
+	struct idpf_bufq_set *bufq_set;
+	int i;
+
+	bufq_set = container_of(bufq, struct idpf_bufq_set, bufq);
+	for (i = 0; i < bufq_set->num_refillqs; i++)
+		idpf_rx_clean_refillq(bufq, &bufq_set->refillqs[i]);
+}
+
 /**
  * idpf_vport_intr_clean_queues - MSIX mode Interrupt Handler
  * @irq: interrupt number
@@ -2843,7 +3551,7 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 	u32 i;
 
 	if (!IDPF_ITR_IS_DYNAMIC(q_vector->tx_intr_mode))
-		return;
+		goto check_rx_itr;
 
 	for (i = 0, packets = 0, bytes = 0; i < q_vector->num_txq; i++) {
 		struct idpf_queue *txq = q_vector->tx[i];
@@ -2859,6 +3567,25 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->tx_dim,
 			       packets, bytes);
 	net_dim(&q_vector->tx_dim, dim_sample);
+
+check_rx_itr:
+	if (!IDPF_ITR_IS_DYNAMIC(q_vector->rx_intr_mode))
+		return;
+
+	for (i = 0, packets = 0, bytes = 0; i < q_vector->num_rxq; i++) {
+		struct idpf_queue *rxq = q_vector->rx[i];
+		unsigned int start;
+
+		do {
+			start = u64_stats_fetch_begin(&rxq->stats_sync);
+			packets += u64_stats_read(&rxq->q_stats.rx.packets);
+			bytes += u64_stats_read(&rxq->q_stats.rx.bytes);
+		} while (u64_stats_fetch_retry(&rxq->stats_sync, start));
+	}
+
+	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->rx_dim,
+			       packets, bytes);
+	net_dim(&q_vector->rx_dim, dim_sample);
 }
 
 /**
@@ -2976,7 +3703,15 @@ static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
 						  true);
 		}
 
-		if (qv->num_txq)
+		if (qv->num_rxq) {
+			dynamic = IDPF_ITR_IS_DYNAMIC(qv->rx_intr_mode);
+			itr = vport->rx_itr_profile[qv->rx_dim.profile_ix];
+			idpf_vport_intr_write_itr(qv, dynamic ?
+						  itr : qv->rx_itr_value,
+						  false);
+		}
+
+		if (qv->num_txq || qv->num_rxq)
 			idpf_vport_intr_update_itr_ena_irq(qv);
 	}
 }
@@ -3019,6 +3754,32 @@ static void idpf_tx_dim_work(struct work_struct *work)
 	dim->state = DIM_START_MEASURE;
 }
 
+/**
+ * idpf_rx_dim_work - Call back from the stack
+ * @work: work queue structure
+ */
+static void idpf_rx_dim_work(struct work_struct *work)
+{
+	struct idpf_q_vector *q_vector;
+	struct idpf_vport *vport;
+	struct dim *dim;
+	u16 itr;
+
+	dim = container_of(work, struct dim, work);
+	q_vector = container_of(dim, struct idpf_q_vector, rx_dim);
+	vport = q_vector->vport;
+
+	if (dim->profile_ix >= ARRAY_SIZE(vport->rx_itr_profile))
+		dim->profile_ix = ARRAY_SIZE(vport->rx_itr_profile) - 1;
+
+	/* look up the values in our local table */
+	itr = vport->rx_itr_profile[dim->profile_ix];
+
+	idpf_vport_intr_write_itr(q_vector, itr, false);
+
+	dim->state = DIM_START_MEASURE;
+}
+
 /**
  * idpf_init_dim - Set up dynamic interrupt moderation
  * @qv: q_vector structure
@@ -3028,6 +3789,10 @@ static void idpf_init_dim(struct idpf_q_vector *qv)
 	INIT_WORK(&qv->tx_dim.work, idpf_tx_dim_work);
 	qv->tx_dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 	qv->tx_dim.profile_ix = IDPF_DIM_DEFAULT_PROFILE_IX;
+
+	INIT_WORK(&qv->rx_dim.work, idpf_rx_dim_work);
+	qv->rx_dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+	qv->rx_dim.profile_ix = IDPF_DIM_DEFAULT_PROFILE_IX;
 }
 
 /**
@@ -3072,6 +3837,44 @@ static bool idpf_tx_splitq_clean_all(struct idpf_q_vector *q_vec,
 	return clean_complete;
 }
 
+/**
+ * idpf_rx_splitq_clean_all- Clean completion queues
+ * @q_vec: queue vector
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns false if clean is not complete else returns true
+ */
+static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
+				     int *cleaned)
+{
+	u16 num_rxq = q_vec->num_rxq;
+	bool clean_complete = true;
+	int pkts_cleaned = 0;
+	int i, budget_per_q;
+
+	/* We attempt to distribute budget to each Rx queue fairly, but don't
+	 * allow the budget to go below 1 because that would exit polling early.
+	 */
+	budget_per_q = num_rxq ? max(budget / num_rxq, 1) : 0;
+	for (i = 0; i < num_rxq; i++) {
+		struct idpf_queue *rxq = q_vec->rx[i];
+		int pkts_cleaned_per_q;
+
+		pkts_cleaned_per_q = idpf_rx_splitq_clean(rxq, budget_per_q);
+		/* if we clean as many as budgeted, we must not be done */
+		if (pkts_cleaned_per_q >= budget_per_q)
+			clean_complete = false;
+		pkts_cleaned += pkts_cleaned_per_q;
+	}
+	*cleaned = pkts_cleaned;
+
+	for (i = 0; i < q_vec->num_bufq; i++)
+		idpf_rx_clean_refillq_all(q_vec->bufq[i]);
+
+	return clean_complete;
+}
+
 /**
  * idpf_vport_splitq_napi_poll - NAPI handler
  * @napi: struct from which you get q_vector
@@ -3091,7 +3894,8 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 		return 0;
 	}
 
-	clean_complete = idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
+	clean_complete = idpf_rx_splitq_clean_all(q_vector, budget, &work_done);
+	clean_complete &= idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
 
 	/* If work not completed, return budget and polling will return */
 	if (!clean_complete)
@@ -3448,7 +4252,6 @@ int idpf_init_rss(struct idpf_vport *vport)
 /**
  * idpf_deinit_rss - Release RSS resources
  * @vport: virtual port
- *
  */
 void idpf_deinit_rss(struct idpf_vport *vport)
 {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index e2c18c5bc704..dc01b42f1e71 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -64,10 +64,21 @@
 
 #define IDPF_RX_BUFQ_WORKING_SET(rxq)		((rxq)->desc_count - 1)
 
+#define IDPF_RX_BUMP_NTC(rxq, ntc)				\
+do {								\
+	if (unlikely(++(ntc) == (rxq)->desc_count)) {		\
+		ntc = 0;					\
+		change_bit(__IDPF_Q_GEN_CHK, (rxq)->flags);	\
+	}							\
+} while (0)
+
+#define IDPF_RX_HDR_SIZE			256
 #define IDPF_RX_BUF_2048			2048
 #define IDPF_RX_BUF_4096			4096
 #define IDPF_RX_BUF_STRIDE			32
+#define IDPF_RX_BUF_POST_STRIDE			16
 #define IDPF_LOW_WATERMARK			64
+/* Size of header buffer specifically for header split */
 #define IDPF_HDR_BUF_SIZE			256
 #define IDPF_PACKET_HDR_PAD	\
 	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
@@ -77,10 +88,18 @@
  */
 #define IDPF_TX_SPLITQ_RE_MIN_GAP	64
 
+#define IDPF_RX_BI_BUFID_S		0
+#define IDPF_RX_BI_BUFID_M		GENMASK(14, 0)
+#define IDPF_RX_BI_GEN_S		15
+#define IDPF_RX_BI_GEN_M		BIT(IDPF_RX_BI_GEN_S)
+#define IDPF_RXD_EOF_SPLITQ		VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_M
+#define IDPF_RXD_EOF_SINGLEQ		VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_M
+
 #define IDPF_SINGLEQ_RX_BUF_DESC(rxq, i)	\
 	(&(((struct virtchnl2_singleq_rx_buf_desc *)((rxq)->desc_ring))[i]))
 #define IDPF_SPLITQ_RX_BUF_DESC(rxq, i)	\
 	(&(((struct virtchnl2_splitq_rx_buf_desc *)((rxq)->desc_ring))[i]))
+#define IDPF_SPLITQ_RX_BI_DESC(rxq, i) ((((rxq)->ring))[i])
 
 #define IDPF_SPLITQ_TX_COMPLQ_DESC(txcq, i)	\
 	(&(((struct idpf_splitq_tx_compl_desc *)((txcq)->desc_ring))[i]))
@@ -216,6 +235,20 @@ struct idpf_tx_splitq_params {
 	struct idpf_tx_offload_params offload;
 };
 
+/* Checksum offload bits decoded from the receive descriptor. */
+struct idpf_rx_csum_decoded {
+	u32 l3l4p : 1;
+	u32 ipe : 1;
+	u32 eipe : 1;
+	u32 eudpe : 1;
+	u32 ipv6exadd : 1;
+	u32 l4e : 1;
+	u32 pprs : 1;
+	u32 nat : 1;
+	u32 raw_csum_inv : 1;
+	u32 raw_csum : 16;
+};
+
 #define IDPF_TX_COMPLQ_CLEAN_BUDGET	256
 #define IDPF_TX_MIN_PKT_LEN		17
 #define IDPF_TX_DESCS_FOR_SKB_DATA_PTR	1
@@ -238,6 +271,8 @@ struct idpf_tx_splitq_params {
 
 #define IDPF_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
+#define IDPF_RX_DESC(rxq, i)	\
+	(&(((union virtchnl2_rx_desc *)((rxq)->desc_ring))[i]))
 
 struct idpf_rx_buf {
 	struct page *page;
@@ -290,6 +325,10 @@ enum idpf_rx_ptype_outer_ip {
 	IDPF_RX_PTYPE_OUTER_IP	= 1,
 };
 
+#define IDPF_RX_PTYPE_TO_IPV(ptype, ipv)			\
+	(((ptype)->outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&	\
+	 ((ptype)->outer_ip_ver == (ipv)))
+
 enum idpf_rx_ptype_outer_ip_ver {
 	IDPF_RX_PTYPE_OUTER_NONE	= 0,
 	IDPF_RX_PTYPE_OUTER_IPV4	= 1,
@@ -438,6 +477,7 @@ struct idpf_intr_reg {
  * @tx_itr_idx: TX ITR index
  * @num_rxq: Number of RX queues
  * @rx: Array of RX queues to service
+ * @rx_dim: Data for RX net_dim algorithm
  * @rx_itr_value: RX interrupt throttling rate
  * @rx_intr_mode: Dynamic ITR or not
  * @rx_itr_idx: RX ITR index
@@ -462,6 +502,7 @@ struct idpf_q_vector {
 
 	u16 num_rxq;
 	struct idpf_queue **rx;
+	struct dim rx_dim;
 	u16 rx_itr_value;
 	bool rx_intr_mode;
 	u32 rx_itr_idx;
@@ -474,7 +515,13 @@ struct idpf_q_vector {
 };
 
 struct idpf_rx_queue_stats {
-	/* stub */
+	u64_stats_t packets;
+	u64_stats_t bytes;
+	u64_stats_t rsc_pkts;
+	u64_stats_t hw_csum_err;
+	u64_stats_t hsplit_pkts;
+	u64_stats_t hsplit_buf_ovf;
+	u64_stats_t bad_descs;
 };
 
 struct idpf_tx_queue_stats {
@@ -661,6 +708,8 @@ struct idpf_queue {
 
 /**
  * struct idpf_sw_queue
+ * @next_to_clean: Next descriptor to clean
+ * @next_to_alloc: Buffer to allocate at
  * @flags: See enum idpf_queue_flags_t
  * @ring: Pointer to the ring
  * @desc_count: Descriptor count
@@ -671,6 +720,8 @@ struct idpf_queue {
  * lockless buffer management system and are strictly software only constructs.
  */
 struct idpf_sw_queue {
+	u16 next_to_clean;
+	u16 next_to_alloc;
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 	u16 *ring;
 	u16 desc_count;
@@ -833,6 +884,33 @@ static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
 	       pool->p.offset;
 }
 
+/**
+ * idpf_rx_put_page - Return RX buffer page to pool
+ * @rx_buf: RX buffer metadata struct
+ */
+static inline void idpf_rx_put_page(struct idpf_rx_buf *rx_buf)
+{
+	page_pool_put_page(rx_buf->page->pp, rx_buf->page,
+			   rx_buf->truesize, true);
+	rx_buf->page = NULL;
+}
+
+/**
+ * idpf_rx_sync_for_cpu - Synchronize DMA buffer
+ * @rx_buf: RX buffer metadata struct
+ * @len: frame length from descriptor
+ */
+static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
+{
+	struct page *page = rx_buf->page;
+	struct page_pool *pp = page->pp;
+
+	dma_sync_single_range_for_cpu(pp->p.dev,
+				      page_pool_get_dma_addr(page),
+				      rx_buf->page_offset + pp->p.offset, len,
+				      page_pool_get_dma_dir(pp));
+}
+
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d1f549fe7d6b..cdb71ca32dd2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2860,6 +2860,7 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	struct virtchnl2_create_vport *vport_msg;
 	struct idpf_vport_config *vport_config;
 	u16 tx_itr[] = {2, 8, 64, 128, 256};
+	u16 rx_itr[] = {2, 8, 32, 96, 128};
 	struct idpf_rss_data *rss_data;
 	u16 idx = vport->idx;
 
@@ -2884,7 +2885,8 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	ether_addr_copy(vport->default_mac_addr, vport_msg->default_mac_addr);
 	vport->max_mtu = le16_to_cpu(vport_msg->max_mtu) - IDPF_PACKET_HDR_PAD;
 
-	/* Initialize Tx profiles for Dynamic Interrupt Moderation */
+	/* Initialize Tx and Rx profiles for Dynamic Interrupt Moderation */
+	memcpy(vport->rx_itr_profile, rx_itr, IDPF_DIM_PROFILE_SLOTS);
 	memcpy(vport->tx_itr_profile, tx_itr, IDPF_DIM_PROFILE_SLOTS);
 
 	idpf_vport_init_num_qs(vport, vport_msg);
-- 
2.38.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

