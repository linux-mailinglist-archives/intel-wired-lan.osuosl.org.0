Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BCC699A90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:53:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE73341943;
	Thu, 16 Feb 2023 16:53:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE73341943
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676566381;
	bh=KHCSXLfTljCprzGNMuNb/TnW+6Y428awEMm8kssD0PY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aUWdEM5Z8QPIuJm9uCwcHafPxN3gNU+fhTPQgXvfQKxN7Gqng+D34+l8yqZ4oqeYp
	 ljIXEnGa11oW80MI1CPpOqASAIUtHZlanKLwLZGfeEOGim7y2EGXFuJCFx1YGGVbAG
	 f1qBOvElLK75AD/lx7H7coDI0sBOyEuU1wWdBI/lwsz5hUdLXjSFfRImnq38fvbC5p
	 ms1rJ0Hx+KIXmWaDqNjaSu+WSOKSKPgqtRdKrMTangDpivmGJ1efKS9hW2STYaTuWN
	 3BoscajeT8VQHtpS4t+LjkweqeI8JX2o41jf3yO3lvNavvs+5J2/6sfKagsZnzdQor
	 g0zSJN9fI2zhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HvnOn1oFgFl4; Thu, 16 Feb 2023 16:53:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 248DE4193A;
	Thu, 16 Feb 2023 16:53:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 248DE4193A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8EA91BF30D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D847820B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D847820B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PW_NqhzAeeHF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 16:52:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A605E820B6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A605E820B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:52:54 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-568-dRMZCS8iMK20REJCmAZBuQ-1; Thu, 16 Feb 2023 11:52:50 -0500
X-MC-Unique: dRMZCS8iMK20REJCmAZBuQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AD6629AA2D4;
 Thu, 16 Feb 2023 16:52:49 +0000 (UTC)
Received: from firesoul.localdomain (ovpn-208-25.brq.redhat.com [10.40.208.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 929671121314;
 Thu, 16 Feb 2023 16:52:48 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id F16F730000384;
 Thu, 16 Feb 2023 17:52:45 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Thu, 16 Feb 2023 17:52:45 +0100
Message-ID: <167656636587.1912541.8039324850101942090.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1676566373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=vASjga2QutVKZzWqkLElPZCFu3uZya2AS8H0L+dg4zE=;
 b=PyBiLfzPE44sCkwkxD3sYjRsN2jcrYbZbvbuka8RtlLP1iJfgc1yjCZ5dhq4jrmZsmwhBC
 BI8yNb1uP8NUE+blkiGjO9DmivtDkOaCPvXpTnZ1Td42mbjb8Ggi4DkeVgcnGSdEhXOnbJ
 2N2SIsaj7J+DpnjKJylC9ngHRKJLjNE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PyBiLfzP
Subject: [Intel-wired-lan] [PATCH bpf-next V2] igc: enable and fix RX hash
 usage by netstack
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
Cc: pmenzel@molgen.mpg.de, xdp-hints@xdp-project.net, martin.lau@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
("igc: Add transmit and receive fastpath and interrupt handlers"), the
hardware wasn't configured to provide RSS hash, thus it made sense to not
enable net_device NETIF_F_RXHASH feature bit.

The NIC hardware was configured to enable RSS hash info in v5.2 via commit
2121c2712f82 ("igc: Add multiple receive queues control supporting"), but
forgot to set the NETIF_F_RXHASH feature bit.

The original implementation of igc_rx_hash() didn't extract the associated
pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The largest portions of
this patch are about extracting the RSS Type from the hardware and mapping
this to enum pkt_hash_types. This was based on Foxville i225 software user
manual rev-1.3.1 and tested on Intel Ethernet Controller I225-LM (rev 03).

For UDP it's worth noting that RSS (type) hashing have been disabled both for
IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP + IGC_MRQC_RSS_FIELD_IPV6_UDP)
because hardware RSS doesn't handle fragmented pkts well when enabled (can
cause out-of-order). This results in PKT_HASH_TYPE_L3 for UDP packets, and
hash value doesn't include UDP port numbers. Not being PKT_HASH_TYPE_L4, have
the effect that netstack will do a software based hash calc calling into
flow_dissect, but only when code calls skb_get_hash(), which doesn't
necessary happen for local delivery.

Fixes: 2121c2712f82 ("igc: Add multiple receive queues control supporting")
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |   56 +++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c |   35 ++++++++++++++++--
 2 files changed, 87 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index df3e26c0cf01..97f629362d20 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -311,6 +311,62 @@ extern char igc_driver_name[];
 #define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
 #define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
 
+/* RX-desc Write-Back format RSS Type's */
+enum igc_rss_type_num {
+	IGC_RSS_TYPE_NO_HASH		= 0,
+	IGC_RSS_TYPE_HASH_TCP_IPV4	= 1,
+	IGC_RSS_TYPE_HASH_IPV4		= 2,
+	IGC_RSS_TYPE_HASH_TCP_IPV6	= 3,
+	IGC_RSS_TYPE_HASH_IPV6_EX	= 4,
+	IGC_RSS_TYPE_HASH_IPV6		= 5,
+	IGC_RSS_TYPE_HASH_TCP_IPV6_EX	= 6,
+	IGC_RSS_TYPE_HASH_UDP_IPV4	= 7,
+	IGC_RSS_TYPE_HASH_UDP_IPV6	= 8,
+	IGC_RSS_TYPE_HASH_UDP_IPV6_EX	= 9,
+	IGC_RSS_TYPE_MAX		= 10,
+};
+#define IGC_RSS_TYPE_MAX_TABLE		16
+#define IGC_RSS_TYPE_MASK		0xF
+
+/* igc_rss_type - Rx descriptor RSS type field */
+static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
+{
+	/* RSS Type 4-bit number: 0-9 (above 9 is reserved)
+	 * Accessing the same bits via u16 (wb.lower.lo_dword.hs_rss.pkt_info)
+	 * is slightly slower than via u32 (wb.lower.lo_dword.data)
+	 */
+	return le32_to_cpu(rx_desc->wb.lower.lo_dword.data) & IGC_RSS_TYPE_MASK;
+}
+
+/* Packet header type identified by hardware (when BIT(11) is zero).
+ * Even when UDP ports are not part of RSS hash HW still parse and mark UDP bits
+ */
+enum igc_pkt_type_bits {
+	IGC_PKT_TYPE_HDR_IPV4	=	BIT(0),
+	IGC_PKT_TYPE_HDR_IPV4_WITH_OPT=	BIT(1), /* IPv4 Hdr includes IP options */
+	IGC_PKT_TYPE_HDR_IPV6	=	BIT(2),
+	IGC_PKT_TYPE_HDR_IPV6_WITH_EXT=	BIT(3), /* IPv6 Hdr includes extensions */
+	IGC_PKT_TYPE_HDR_L4_TCP	=	BIT(4),
+	IGC_PKT_TYPE_HDR_L4_UDP	=	BIT(5),
+	IGC_PKT_TYPE_HDR_L4_SCTP=	BIT(6),
+	IGC_PKT_TYPE_HDR_NFS	=	BIT(7),
+	/* Above only valid when BIT(11) is zero */
+	IGC_PKT_TYPE_L2		=	BIT(11),
+	IGC_PKT_TYPE_VLAN	=	BIT(12),
+	IGC_PKT_TYPE_MASK	=	GENMASK(16,4), /* 13-bits (16:4) */
+	IGC_PKT_TYPE_SHIFT	=	4
+};
+
+/* igc_pkt_type - Rx descriptor Packet type field */
+static inline u32 igc_pkt_type(const union igc_adv_rx_desc *rx_desc)
+{
+	u32 data = le32_to_cpu(rx_desc->wb.lower.lo_dword.data);
+	/* Packet type is 13-bits - as bits (16:4) in lower.lo_dword*/
+	u32 pkt_type = (data & IGC_PKT_TYPE_MASK) >> IGC_PKT_TYPE_SHIFT;
+
+	return pkt_type;
+}
+
 /* Interrupt defines */
 #define IGC_START_ITR			648 /* ~6000 ints/sec */
 #define IGC_4K_ITR			980
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8b572cd2c350..27c028f86a9e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1677,14 +1677,40 @@ static void igc_rx_checksum(struct igc_ring *ring,
 		   le32_to_cpu(rx_desc->wb.upper.status_error));
 }
 
+/* Mapping HW RSS Type to enum pkt_hash_types */
+struct igc_rss_type {
+	u32 hash_type; /* can contain enum pkt_hash_types */
+} igc_rss_type_table[IGC_RSS_TYPE_MAX_TABLE] = {
+	[IGC_RSS_TYPE_NO_HASH].hash_type	  = PKT_HASH_TYPE_L2,
+	[IGC_RSS_TYPE_HASH_TCP_IPV4].hash_type	  = PKT_HASH_TYPE_L4,
+	[IGC_RSS_TYPE_HASH_IPV4].hash_type	  = PKT_HASH_TYPE_L3,
+	[IGC_RSS_TYPE_HASH_TCP_IPV6].hash_type	  = PKT_HASH_TYPE_L4,
+	[IGC_RSS_TYPE_HASH_IPV6_EX].hash_type	  = PKT_HASH_TYPE_L3,
+	[IGC_RSS_TYPE_HASH_IPV6].hash_type	  = PKT_HASH_TYPE_L3,
+	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX].hash_type = PKT_HASH_TYPE_L4,
+	[IGC_RSS_TYPE_HASH_UDP_IPV4].hash_type	  = PKT_HASH_TYPE_L4,
+	[IGC_RSS_TYPE_HASH_UDP_IPV6].hash_type	  = PKT_HASH_TYPE_L4,
+	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX].hash_type = PKT_HASH_TYPE_L4,
+	[10].hash_type = PKT_HASH_TYPE_L2, /* RSS Type above 9 "Reserved" by HW */
+	[11].hash_type = PKT_HASH_TYPE_L2,
+	[12].hash_type = PKT_HASH_TYPE_L2,
+	[13].hash_type = PKT_HASH_TYPE_L2,
+	[14].hash_type = PKT_HASH_TYPE_L2,
+	[15].hash_type = PKT_HASH_TYPE_L2,
+};
+
 static inline void igc_rx_hash(struct igc_ring *ring,
 			       union igc_adv_rx_desc *rx_desc,
 			       struct sk_buff *skb)
 {
-	if (ring->netdev->features & NETIF_F_RXHASH)
-		skb_set_hash(skb,
-			     le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
-			     PKT_HASH_TYPE_L3);
+	if (ring->netdev->features & NETIF_F_RXHASH) {
+		u32 rss_hash = le32_to_cpu(rx_desc->wb.lower.hi_dword.rss);
+		u32 rss_type = igc_rss_type(rx_desc);
+		enum pkt_hash_types hash_type;
+
+		hash_type = igc_rss_type_table[rss_type].hash_type;
+		skb_set_hash(skb, rss_hash, hash_type);
+	}
 }
 
 static void igc_rx_vlan(struct igc_ring *rx_ring,
@@ -6501,6 +6527,7 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->features |= NETIF_F_TSO;
 	netdev->features |= NETIF_F_TSO6;
 	netdev->features |= NETIF_F_TSO_ECN;
+	netdev->features |= NETIF_F_RXHASH;
 	netdev->features |= NETIF_F_RXCSUM;
 	netdev->features |= NETIF_F_HW_CSUM;
 	netdev->features |= NETIF_F_SCTP_CRC;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
