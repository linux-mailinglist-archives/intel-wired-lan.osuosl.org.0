Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0055D8C27B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EDEA845E3;
	Fri, 10 May 2024 15:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bofYwehUXlR3; Fri, 10 May 2024 15:27:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C4DF845AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354870;
	bh=K7iEZET5d9l/hmtK7uZ6N41yg2TxHCuqsl1OaruNqN8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JBOWzX0LBHAwqTrzbeNnmSGCxDZ5dRQGBvbU3GFF1yfiecqV8Bw0B0R1zS9HK52DQ
	 WEtQVndrdWsjGgKfK4mIebWvZZgYx+agVd6LpfUU8q541S4MaRXlfqOj2hsi4b3ffG
	 idqcZvk5kzr2wmeD25swShAJwaK4Wd7+WExKU4o9DNkQDiwKaOavMKH/C5Zu6fQnFp
	 KVqqLWK5FJFAVo4qOkT/uIENELjKOE+h0sbz1vtyAh3fU/8Q6lAI2tf6S9GqebRTj9
	 +75dZl2SO70Qv29ADyRWjAw+yo2WaWE7NFtBaUnp30AQP3OmOicA0GFWGilsJXdg75
	 wnFMMKfg0TUkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C4DF845AD;
	Fri, 10 May 2024 15:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 766391BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6208442048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eGeXzA6A3RQp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1BE7A42243
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BE7A42243
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1BE7A42243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:44 +0000 (UTC)
X-CSE-ConnectionGUID: m9QfNXUwQrq+GmfgwoH+Gw==
X-CSE-MsgGUID: 1RkniOOORa+ioFhwryMSOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152640"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152640"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:44 -0700
X-CSE-ConnectionGUID: 3Nnvlfc3Stmd5+25XfnDzw==
X-CSE-MsgGUID: HoUwbR7aSKWjzgUKH2yjZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208296"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:41 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:16 +0200
Message-ID: <20240510152620.2227312-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354864; x=1746890864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RYxFVVnotJRVVzQ8cRZ2krWAnl4jTk1qKuiLStw3LJc=;
 b=mJHz1WbAkT/5PhK6HwWkXBMh/K6j2yiwFfdPpcpikrv6jjo1PLoTwbMj
 859jFk2QKUG3r9gpxgs3CMnegCFij20eqDI/bAcvb58kXXuagIwZTy5wR
 ZVSiVIFsGC6ePz0beDp2u0c+V0fFcbQcfkUINbnIQrXGHDx0yy8jN/SK3
 MVcMdtA/eC5RW4/3qeOC9so85pE4UDzx8Zud2iq/TeBfm82B/5V0FNZF5
 PV9i4h2ttAGuMLswkj2G2wM/qSShPnjfOv8NMysA0h07Op8W3nJQfCIZD
 kjaPzzTs8vMcjlV0Gn172m9XYQsgM3VhZGV3lkPrOo7xVDRqo7MvRihuM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mJHz1WbA
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 08/12] idpf: reuse libeth's
 definitions of parsed ptype structures
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

idpf's in-kernel parsed ptype structure is almost identical to the one
used in the previous Intel drivers, which means it can be converted to
use libeth's definitions and even helpers. The only difference is that
it doesn't use a constant table (libie), rather than one obtained from
the device.
Remove the driver counterpart and use libeth's helpers for hashes and
checksums. This slightly optimizes skb fields processing due to faster
checks. Also don't define big static array of ptypes in &idpf_vport --
allocate them dynamically. The pointer to it is anyway cached in
&idpf_rx_queue.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |   2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  88 +-----------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   3 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 113 +++++++---------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 125 +++++++-----------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  69 ++++++----
 8 files changed, 151 insertions(+), 251 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index bee83a40f218..bd96ab923b07 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -5,6 +5,7 @@ config IDPF
 	tristate "Intel(R) Infrastructure Data Path Function Support"
 	depends on PCI_MSI
 	select DIMLIB
+	select LIBETH
 	select PAGE_POOL
 	select PAGE_POOL_STATS
 	help
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 5d9529f5b41b..078340a01757 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -312,7 +312,7 @@ struct idpf_vport {
 	u16 num_rxq_grp;
 	struct idpf_rxq_group *rxq_grps;
 	u32 rxq_model;
-	struct idpf_rx_ptype_decoded rx_ptype_lkup[IDPF_RX_MAX_PTYPE];
+	struct libeth_rx_pt *rx_ptype_lkup;
 
 	struct idpf_adapter *adapter;
 	struct net_device *netdev;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 015aba5abb3c..83e960a1549e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -331,72 +331,6 @@ struct idpf_rx_buf {
 #define IDPF_RX_MAX_BASE_PTYPE	256
 #define IDPF_INVALID_PTYPE_ID	0xFFFF
 
-/* Packet type non-ip values */
-enum idpf_rx_ptype_l2 {
-	IDPF_RX_PTYPE_L2_RESERVED	= 0,
-	IDPF_RX_PTYPE_L2_MAC_PAY2	= 1,
-	IDPF_RX_PTYPE_L2_TIMESYNC_PAY2	= 2,
-	IDPF_RX_PTYPE_L2_FIP_PAY2	= 3,
-	IDPF_RX_PTYPE_L2_OUI_PAY2	= 4,
-	IDPF_RX_PTYPE_L2_MACCNTRL_PAY2	= 5,
-	IDPF_RX_PTYPE_L2_LLDP_PAY2	= 6,
-	IDPF_RX_PTYPE_L2_ECP_PAY2	= 7,
-	IDPF_RX_PTYPE_L2_EVB_PAY2	= 8,
-	IDPF_RX_PTYPE_L2_QCN_PAY2	= 9,
-	IDPF_RX_PTYPE_L2_EAPOL_PAY2	= 10,
-	IDPF_RX_PTYPE_L2_ARP		= 11,
-};
-
-enum idpf_rx_ptype_outer_ip {
-	IDPF_RX_PTYPE_OUTER_L2	= 0,
-	IDPF_RX_PTYPE_OUTER_IP	= 1,
-};
-
-#define IDPF_RX_PTYPE_TO_IPV(ptype, ipv)			\
-	(((ptype)->outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&	\
-	 ((ptype)->outer_ip_ver == (ipv)))
-
-enum idpf_rx_ptype_outer_ip_ver {
-	IDPF_RX_PTYPE_OUTER_NONE	= 0,
-	IDPF_RX_PTYPE_OUTER_IPV4	= 1,
-	IDPF_RX_PTYPE_OUTER_IPV6	= 2,
-};
-
-enum idpf_rx_ptype_outer_fragmented {
-	IDPF_RX_PTYPE_NOT_FRAG	= 0,
-	IDPF_RX_PTYPE_FRAG	= 1,
-};
-
-enum idpf_rx_ptype_tunnel_type {
-	IDPF_RX_PTYPE_TUNNEL_NONE		= 0,
-	IDPF_RX_PTYPE_TUNNEL_IP_IP		= 1,
-	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT		= 2,
-	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC	= 3,
-	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN	= 4,
-};
-
-enum idpf_rx_ptype_tunnel_end_prot {
-	IDPF_RX_PTYPE_TUNNEL_END_NONE	= 0,
-	IDPF_RX_PTYPE_TUNNEL_END_IPV4	= 1,
-	IDPF_RX_PTYPE_TUNNEL_END_IPV6	= 2,
-};
-
-enum idpf_rx_ptype_inner_prot {
-	IDPF_RX_PTYPE_INNER_PROT_NONE		= 0,
-	IDPF_RX_PTYPE_INNER_PROT_UDP		= 1,
-	IDPF_RX_PTYPE_INNER_PROT_TCP		= 2,
-	IDPF_RX_PTYPE_INNER_PROT_SCTP		= 3,
-	IDPF_RX_PTYPE_INNER_PROT_ICMP		= 4,
-	IDPF_RX_PTYPE_INNER_PROT_TIMESYNC	= 5,
-};
-
-enum idpf_rx_ptype_payload_layer {
-	IDPF_RX_PTYPE_PAYLOAD_LAYER_NONE	= 0,
-	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2	= 1,
-	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY3	= 2,
-	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY4	= 3,
-};
-
 enum idpf_tunnel_state {
 	IDPF_PTYPE_TUNNEL_IP                    = BIT(0),
 	IDPF_PTYPE_TUNNEL_IP_GRENAT             = BIT(1),
@@ -404,22 +338,9 @@ enum idpf_tunnel_state {
 };
 
 struct idpf_ptype_state {
-	bool outer_ip;
-	bool outer_frag;
-	u8 tunnel_state;
-};
-
-struct idpf_rx_ptype_decoded {
-	u32 ptype:10;
-	u32 known:1;
-	u32 outer_ip:1;
-	u32 outer_ip_ver:2;
-	u32 outer_frag:1;
-	u32 tunnel_type:3;
-	u32 tunnel_end_prot:2;
-	u32 tunnel_end_frag:1;
-	u32 inner_prot:4;
-	u32 payload_layer:3;
+	bool outer_ip:1;
+	bool outer_frag:1;
+	u8 tunnel_state:6;
 };
 
 /**
@@ -675,7 +596,7 @@ struct idpf_rx_queue {
 		u16 desc_count;
 
 		u32 rxdids;
-		const struct idpf_rx_ptype_decoded *rx_ptype_lkup;
+		const struct libeth_rx_pt *rx_ptype_lkup;
 	);
 	libeth_cacheline_group(read_write,
 		u16 next_to_use;
@@ -1168,7 +1089,6 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector);
 void idpf_vport_intr_deinit(struct idpf_vport *vport);
 int idpf_vport_intr_init(struct idpf_vport *vport);
 void idpf_vport_intr_ena(struct idpf_vport *vport);
-enum pkt_hash_types idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *decoded);
 int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index fe91475c7b4c..f450f18248b3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -942,6 +942,9 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 
+	kfree(vport->rx_ptype_lkup);
+	vport->rx_ptype_lkup = NULL;
+
 	unregister_netdev(vport->netdev);
 	free_netdev(vport->netdev);
 	vport->netdev = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index f784eea044bd..db476b3314c8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -8,6 +8,7 @@
 #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
 
 MODULE_DESCRIPTION(DRV_SUMMARY);
+MODULE_IMPORT_NS(LIBETH);
 MODULE_LICENSE("GPL");
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index a3b60a2dfcaa..7c71c72b814f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
+#include <net/libeth/rx.h>
+
 #include "idpf.h"
 
 /**
@@ -602,75 +604,62 @@ static bool idpf_rx_singleq_is_non_eop(const union virtchnl2_rx_desc *rx_desc)
  * @rxq: Rx ring being processed
  * @skb: skb currently being received and modified
  * @csum_bits: checksum bits from descriptor
- * @ptype: the packet type decoded by hardware
+ * @decoded: the packet type decoded by hardware
  *
  * skb->protocol must be set before this function is called
  */
-static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
-				 struct idpf_rx_csum_decoded *csum_bits,
-				 u16 ptype)
+static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
+				 struct sk_buff *skb,
+				 struct idpf_rx_csum_decoded csum_bits,
+				 struct libeth_rx_pt decoded)
 {
-	struct idpf_rx_ptype_decoded decoded;
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
-	if (unlikely(!(rxq->netdev->features & NETIF_F_RXCSUM)))
+	if (!libeth_rx_pt_has_checksum(rxq->netdev, decoded))
 		return;
 
 	/* check if HW has decoded the packet and checksum */
-	if (unlikely(!(csum_bits->l3l4p)))
-		return;
-
-	decoded = rxq->rx_ptype_lkup[ptype];
-	if (unlikely(!(decoded.known && decoded.outer_ip)))
+	if (unlikely(!csum_bits.l3l4p))
 		return;
 
-	ipv4 = IDPF_RX_PTYPE_TO_IPV(&decoded, IDPF_RX_PTYPE_OUTER_IPV4);
-	ipv6 = IDPF_RX_PTYPE_TO_IPV(&decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
 	/* Check if there were any checksum errors */
-	if (unlikely(ipv4 && (csum_bits->ipe || csum_bits->eipe)))
+	if (unlikely(ipv4 && (csum_bits.ipe || csum_bits.eipe)))
 		goto checksum_fail;
 
 	/* Device could not do any checksum offload for certain extension
 	 * headers as indicated by setting IPV6EXADD bit
 	 */
-	if (unlikely(ipv6 && csum_bits->ipv6exadd))
+	if (unlikely(ipv6 && csum_bits.ipv6exadd))
 		return;
 
 	/* check for L4 errors and handle packets that were not able to be
 	 * checksummed due to arrival speed
 	 */
-	if (unlikely(csum_bits->l4e))
+	if (unlikely(csum_bits.l4e))
 		goto checksum_fail;
 
-	if (unlikely(csum_bits->nat && csum_bits->eudpe))
+	if (unlikely(csum_bits.nat && csum_bits.eudpe))
 		goto checksum_fail;
 
 	/* Handle packets that were not able to be checksummed due to arrival
 	 * speed, in this case the stack can compute the csum.
 	 */
-	if (unlikely(csum_bits->pprs))
+	if (unlikely(csum_bits.pprs))
 		return;
 
 	/* If there is an outer header present that might contain a checksum
 	 * we need to bump the checksum level by 1 to reflect the fact that
 	 * we are indicating we validated the inner checksum.
 	 */
-	if (decoded.tunnel_type >= IDPF_RX_PTYPE_TUNNEL_IP_GRENAT)
+	if (decoded.tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
 		skb->csum_level = 1;
 
-	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
-	switch (decoded.inner_prot) {
-	case IDPF_RX_PTYPE_INNER_PROT_ICMP:
-	case IDPF_RX_PTYPE_INNER_PROT_TCP:
-	case IDPF_RX_PTYPE_INNER_PROT_UDP:
-	case IDPF_RX_PTYPE_INNER_PROT_SCTP:
-		skb->ip_summed = CHECKSUM_UNNECESSARY;
-		return;
-	default:
-		return;
-	}
+	skb->ip_summed = CHECKSUM_UNNECESSARY;
+	return;
 
 checksum_fail:
 	u64_stats_update_begin(&rxq->stats_sync);
@@ -680,20 +669,17 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 
 /**
  * idpf_rx_singleq_base_csum - Indicate in skb if hw indicated a good cksum
- * @rx_q: Rx completion queue
- * @skb: skb currently being received and modified
  * @rx_desc: the receive descriptor
- * @ptype: Rx packet type
  *
  * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M base 32byte
  * descriptor writeback format.
+ *
+ * Return: parsed checksum status.
  **/
-static void idpf_rx_singleq_base_csum(struct idpf_rx_queue *rx_q,
-				      struct sk_buff *skb,
-				      const union virtchnl2_rx_desc *rx_desc,
-				      u16 ptype)
+static struct idpf_rx_csum_decoded
+idpf_rx_singleq_base_csum(const union virtchnl2_rx_desc *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits;
+	struct idpf_rx_csum_decoded csum_bits = { };
 	u32 rx_error, rx_status;
 	u64 qword;
 
@@ -712,28 +698,23 @@ static void idpf_rx_singleq_base_csum(struct idpf_rx_queue *rx_q,
 				    rx_status);
 	csum_bits.ipv6exadd = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_STATUS_IPV6EXADD_M,
 					rx_status);
-	csum_bits.nat = 0;
-	csum_bits.eudpe = 0;
 
-	idpf_rx_singleq_csum(rx_q, skb, &csum_bits, ptype);
+	return csum_bits;
 }
 
 /**
  * idpf_rx_singleq_flex_csum - Indicate in skb if hw indicated a good cksum
- * @rx_q: Rx completion queue
- * @skb: skb currently being received and modified
  * @rx_desc: the receive descriptor
- * @ptype: Rx packet type
  *
  * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
  * descriptor writeback format.
+ *
+ * Return: parsed checksum status.
  **/
-static void idpf_rx_singleq_flex_csum(struct idpf_rx_queue *rx_q,
-				      struct sk_buff *skb,
-				      const union virtchnl2_rx_desc *rx_desc,
-				      u16 ptype)
+static struct idpf_rx_csum_decoded
+idpf_rx_singleq_flex_csum(const union virtchnl2_rx_desc *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits;
+	struct idpf_rx_csum_decoded csum_bits = { };
 	u16 rx_status0, rx_status1;
 
 	rx_status0 = le16_to_cpu(rx_desc->flex_nic_wb.status_error0);
@@ -753,9 +734,8 @@ static void idpf_rx_singleq_flex_csum(struct idpf_rx_queue *rx_q,
 					rx_status0);
 	csum_bits.nat = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS1_NAT_M,
 				  rx_status1);
-	csum_bits.pprs = 0;
 
-	idpf_rx_singleq_csum(rx_q, skb, &csum_bits, ptype);
+	return csum_bits;
 }
 
 /**
@@ -771,11 +751,11 @@ static void idpf_rx_singleq_flex_csum(struct idpf_rx_queue *rx_q,
 static void idpf_rx_singleq_base_hash(struct idpf_rx_queue *rx_q,
 				      struct sk_buff *skb,
 				      const union virtchnl2_rx_desc *rx_desc,
-				      struct idpf_rx_ptype_decoded *decoded)
+				      struct libeth_rx_pt decoded)
 {
 	u64 mask, qw1;
 
-	if (unlikely(!(rx_q->netdev->features & NETIF_F_RXHASH)))
+	if (!libeth_rx_pt_has_hash(rx_q->netdev, decoded))
 		return;
 
 	mask = VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH_M;
@@ -784,7 +764,7 @@ static void idpf_rx_singleq_base_hash(struct idpf_rx_queue *rx_q,
 	if (FIELD_GET(mask, qw1) == mask) {
 		u32 hash = le32_to_cpu(rx_desc->base_wb.qword0.hi_dword.rss);
 
-		skb_set_hash(skb, hash, idpf_ptype_to_htype(decoded));
+		libeth_rx_pt_set_hash(skb, hash, decoded);
 	}
 }
 
@@ -801,15 +781,17 @@ static void idpf_rx_singleq_base_hash(struct idpf_rx_queue *rx_q,
 static void idpf_rx_singleq_flex_hash(struct idpf_rx_queue *rx_q,
 				      struct sk_buff *skb,
 				      const union virtchnl2_rx_desc *rx_desc,
-				      struct idpf_rx_ptype_decoded *decoded)
+				      struct libeth_rx_pt decoded)
 {
-	if (unlikely(!(rx_q->netdev->features & NETIF_F_RXHASH)))
+	if (!libeth_rx_pt_has_hash(rx_q->netdev, decoded))
 		return;
 
 	if (FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_M,
-		      le16_to_cpu(rx_desc->flex_nic_wb.status_error0)))
-		skb_set_hash(skb, le32_to_cpu(rx_desc->flex_nic_wb.rss_hash),
-			     idpf_ptype_to_htype(decoded));
+		      le16_to_cpu(rx_desc->flex_nic_wb.status_error0))) {
+		u32 hash = le32_to_cpu(rx_desc->flex_nic_wb.rss_hash);
+
+		libeth_rx_pt_set_hash(skb, hash, decoded);
+	}
 }
 
 /**
@@ -830,19 +812,22 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 				   const union virtchnl2_rx_desc *rx_desc,
 				   u16 ptype)
 {
-	struct idpf_rx_ptype_decoded decoded = rx_q->rx_ptype_lkup[ptype];
+	struct libeth_rx_pt decoded = rx_q->rx_ptype_lkup[ptype];
+	struct idpf_rx_csum_decoded csum_bits;
 
 	/* modifies the skb - consumes the enet header */
 	skb->protocol = eth_type_trans(skb, rx_q->netdev);
 
 	/* Check if we're using base mode descriptor IDs */
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M) {
-		idpf_rx_singleq_base_hash(rx_q, skb, rx_desc, &decoded);
-		idpf_rx_singleq_base_csum(rx_q, skb, rx_desc, ptype);
+		idpf_rx_singleq_base_hash(rx_q, skb, rx_desc, decoded);
+		csum_bits = idpf_rx_singleq_base_csum(rx_desc);
 	} else {
-		idpf_rx_singleq_flex_hash(rx_q, skb, rx_desc, &decoded);
-		idpf_rx_singleq_flex_csum(rx_q, skb, rx_desc, ptype);
+		idpf_rx_singleq_flex_hash(rx_q, skb, rx_desc, decoded);
+		csum_bits = idpf_rx_singleq_flex_csum(rx_desc);
 	}
+
+	idpf_rx_singleq_csum(rx_q, skb, csum_bits, decoded);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 2bc1a5a0b50f..44e6fa2c8afc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
+#include <net/libeth/rx.h>
+
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 
@@ -2883,30 +2885,6 @@ netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev)
 		return idpf_tx_singleq_frame(skb, tx_q);
 }
 
-/**
- * idpf_ptype_to_htype - get a hash type
- * @decoded: Decoded Rx packet type related fields
- *
- * Returns appropriate hash type (such as PKT_HASH_TYPE_L2/L3/L4) to be used by
- * skb_set_hash based on PTYPE as parsed by HW Rx pipeline and is part of
- * Rx desc.
- */
-enum pkt_hash_types idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *decoded)
-{
-	if (!decoded->known)
-		return PKT_HASH_TYPE_NONE;
-	if (decoded->payload_layer == IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2 &&
-	    decoded->inner_prot)
-		return PKT_HASH_TYPE_L4;
-	if (decoded->payload_layer == IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2 &&
-	    decoded->outer_ip)
-		return PKT_HASH_TYPE_L3;
-	if (decoded->outer_ip == IDPF_RX_PTYPE_OUTER_L2)
-		return PKT_HASH_TYPE_L2;
-
-	return PKT_HASH_TYPE_NONE;
-}
-
 /**
  * idpf_rx_hash - set the hash value in the skb
  * @rxq: Rx descriptor ring packet is being transacted on
@@ -2917,18 +2895,18 @@ enum pkt_hash_types idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *deco
 static void
 idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	     const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
-	     struct idpf_rx_ptype_decoded *decoded)
+	     struct libeth_rx_pt decoded)
 {
 	u32 hash;
 
-	if (unlikely(!(rxq->netdev->features & NETIF_F_RXHASH)))
+	if (!libeth_rx_pt_has_hash(rxq->netdev, decoded))
 		return;
 
 	hash = le16_to_cpu(rx_desc->hash1) |
 	       (rx_desc->ff2_mirrid_hash2.hash2 << 16) |
 	       (rx_desc->hash3 << 24);
 
-	skb_set_hash(skb, hash, idpf_ptype_to_htype(decoded));
+	libeth_rx_pt_set_hash(skb, hash, decoded);
 }
 
 /**
@@ -2941,55 +2919,43 @@ idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
  * skb->protocol must be set before this function is called
  */
 static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
-			 struct idpf_rx_csum_decoded *csum_bits,
-			 struct idpf_rx_ptype_decoded *decoded)
+			 struct idpf_rx_csum_decoded csum_bits,
+			 struct libeth_rx_pt decoded)
 {
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
-	if (unlikely(!(rxq->netdev->features & NETIF_F_RXCSUM)))
+	if (!libeth_rx_pt_has_checksum(rxq->netdev, decoded))
 		return;
 
 	/* check if HW has decoded the packet and checksum */
-	if (!(csum_bits->l3l4p))
+	if (!unlikely(csum_bits.l3l4p))
 		return;
 
-	ipv4 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
-	ipv6 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
-	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
+	if (unlikely(ipv4 && (csum_bits.ipe || csum_bits.eipe)))
 		goto checksum_fail;
 
-	if (ipv6 && csum_bits->ipv6exadd)
+	if (unlikely(ipv6 && csum_bits.ipv6exadd))
 		return;
 
 	/* check for L4 errors and handle packets that were not able to be
 	 * checksummed
 	 */
-	if (csum_bits->l4e)
+	if (unlikely(csum_bits.l4e))
 		goto checksum_fail;
 
-	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
-	switch (decoded->inner_prot) {
-	case IDPF_RX_PTYPE_INNER_PROT_ICMP:
-	case IDPF_RX_PTYPE_INNER_PROT_TCP:
-	case IDPF_RX_PTYPE_INNER_PROT_UDP:
-		if (!csum_bits->raw_csum_inv) {
-			u16 csum = csum_bits->raw_csum;
-
-			skb->csum = csum_unfold((__force __sum16)~swab16(csum));
-			skb->ip_summed = CHECKSUM_COMPLETE;
-		} else {
-			skb->ip_summed = CHECKSUM_UNNECESSARY;
-		}
-		break;
-	case IDPF_RX_PTYPE_INNER_PROT_SCTP:
+	if (csum_bits.raw_csum_inv ||
+	    decoded.inner_prot == LIBETH_RX_PT_INNER_SCTP) {
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
-		break;
-	default:
-		break;
+		return;
 	}
 
+	skb->csum = csum_unfold((__force __sum16)~swab16(csum_bits.raw_csum));
+	skb->ip_summed = CHECKSUM_COMPLETE;
+
 	return;
 
 checksum_fail:
@@ -3001,32 +2967,34 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 /**
  * idpf_rx_splitq_extract_csum_bits - Extract checksum bits from descriptor
  * @rx_desc: receive descriptor
- * @csum: structure to extract checksum fields
  *
+ * Return: parsed checksum status.
  **/
-static void
-idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
-				 struct idpf_rx_csum_decoded *csum)
+static struct idpf_rx_csum_decoded
+idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
+	struct idpf_rx_csum_decoded csum = { };
 	u8 qword0, qword1;
 
 	qword0 = rx_desc->status_err0_qw0;
 	qword1 = rx_desc->status_err0_qw1;
 
-	csum->ipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_M,
+	csum.ipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_M,
+			     qword1);
+	csum.eipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_M,
 			      qword1);
-	csum->eipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_M,
+	csum.l4e = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_M,
+			     qword1);
+	csum.l3l4p = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_M,
 			       qword1);
-	csum->l4e = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_M,
-			      qword1);
-	csum->l3l4p = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_M,
-				qword1);
-	csum->ipv6exadd = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_M,
-				    qword0);
-	csum->raw_csum_inv =
+	csum.ipv6exadd = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_M,
+				   qword0);
+	csum.raw_csum_inv =
 		le16_get_bits(rx_desc->ptype_err_fflags0,
 			      VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_M);
-	csum->raw_csum = le16_to_cpu(rx_desc->misc.raw_cs);
+	csum.raw_csum = le16_to_cpu(rx_desc->misc.raw_cs);
+
+	return csum;
 }
 
 /**
@@ -3043,21 +3011,22 @@ idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *
  */
 static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 		       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
-		       struct idpf_rx_ptype_decoded *decoded)
+		       struct libeth_rx_pt decoded)
 {
 	u16 rsc_segments, rsc_seg_len;
 	bool ipv4, ipv6;
 	int len;
 
-	if (unlikely(!decoded->outer_ip))
+	if (unlikely(libeth_rx_pt_get_ip_ver(decoded) ==
+		     LIBETH_RX_PT_OUTER_L2))
 		return -EINVAL;
 
 	rsc_seg_len = le16_to_cpu(rx_desc->misc.rscseglen);
 	if (unlikely(!rsc_seg_len))
 		return -EINVAL;
 
-	ipv4 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV4);
-	ipv6 = IDPF_RX_PTYPE_TO_IPV(decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
 	if (unlikely(!(ipv4 ^ ipv6)))
 		return -EINVAL;
@@ -3115,8 +3084,8 @@ static int
 idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits = { };
-	struct idpf_rx_ptype_decoded decoded;
+	struct idpf_rx_csum_decoded csum_bits;
+	struct libeth_rx_pt decoded;
 	u16 rx_ptype;
 
 	rx_ptype = le16_get_bits(rx_desc->ptype_err_fflags0,
@@ -3124,16 +3093,16 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	decoded = rxq->rx_ptype_lkup[rx_ptype];
 
 	/* process RSS/hash */
-	idpf_rx_hash(rxq, skb, rx_desc, &decoded);
+	idpf_rx_hash(rxq, skb, rx_desc, decoded);
 
 	skb->protocol = eth_type_trans(skb, rxq->netdev);
 
 	if (le16_get_bits(rx_desc->hdrlen_flags,
 			  VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M))
-		return idpf_rx_rsc(rxq, skb, rx_desc, &decoded);
+		return idpf_rx_rsc(rxq, skb, rx_desc, decoded);
 
-	idpf_rx_splitq_extract_csum_bits(rx_desc, &csum_bits);
-	idpf_rx_csum(rxq, skb, &csum_bits, &decoded);
+	csum_bits = idpf_rx_splitq_extract_csum_bits(rx_desc);
+	idpf_rx_csum(rxq, skb, csum_bits, decoded);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d1705fcb701a..476b34d21618 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
+#include <net/libeth/rx.h>
+
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 
@@ -2483,39 +2485,52 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
  * @frag: fragmentation allowed
  *
  */
-static void idpf_fill_ptype_lookup(struct idpf_rx_ptype_decoded *ptype,
+static void idpf_fill_ptype_lookup(struct libeth_rx_pt *ptype,
 				   struct idpf_ptype_state *pstate,
 				   bool ipv4, bool frag)
 {
 	if (!pstate->outer_ip || !pstate->outer_frag) {
-		ptype->outer_ip = IDPF_RX_PTYPE_OUTER_IP;
 		pstate->outer_ip = true;
 
 		if (ipv4)
-			ptype->outer_ip_ver = IDPF_RX_PTYPE_OUTER_IPV4;
+			ptype->outer_ip = LIBETH_RX_PT_OUTER_IPV4;
 		else
-			ptype->outer_ip_ver = IDPF_RX_PTYPE_OUTER_IPV6;
+			ptype->outer_ip = LIBETH_RX_PT_OUTER_IPV6;
 
 		if (frag) {
-			ptype->outer_frag = IDPF_RX_PTYPE_FRAG;
+			ptype->outer_frag = LIBETH_RX_PT_FRAG;
 			pstate->outer_frag = true;
 		}
 	} else {
-		ptype->tunnel_type = IDPF_RX_PTYPE_TUNNEL_IP_IP;
+		ptype->tunnel_type = LIBETH_RX_PT_TUNNEL_IP_IP;
 		pstate->tunnel_state = IDPF_PTYPE_TUNNEL_IP;
 
 		if (ipv4)
-			ptype->tunnel_end_prot =
-					IDPF_RX_PTYPE_TUNNEL_END_IPV4;
+			ptype->tunnel_end_prot = LIBETH_RX_PT_TUNNEL_END_IPV4;
 		else
-			ptype->tunnel_end_prot =
-					IDPF_RX_PTYPE_TUNNEL_END_IPV6;
+			ptype->tunnel_end_prot = LIBETH_RX_PT_TUNNEL_END_IPV6;
 
 		if (frag)
-			ptype->tunnel_end_frag = IDPF_RX_PTYPE_FRAG;
+			ptype->tunnel_end_frag = LIBETH_RX_PT_FRAG;
 	}
 }
 
+static void idpf_finalize_ptype_lookup(struct libeth_rx_pt *ptype)
+{
+	if (ptype->payload_layer == LIBETH_RX_PT_PAYLOAD_L2 &&
+	    ptype->inner_prot)
+		ptype->payload_layer = LIBETH_RX_PT_PAYLOAD_L4;
+	else if (ptype->payload_layer == LIBETH_RX_PT_PAYLOAD_L2 &&
+		 ptype->outer_ip)
+		ptype->payload_layer = LIBETH_RX_PT_PAYLOAD_L3;
+	else if (ptype->outer_ip == LIBETH_RX_PT_OUTER_L2)
+		ptype->payload_layer = LIBETH_RX_PT_PAYLOAD_L2;
+	else
+		ptype->payload_layer = LIBETH_RX_PT_PAYLOAD_NONE;
+
+	libeth_rx_pt_gen_hash_type(ptype);
+}
+
 /**
  * idpf_send_get_rx_ptype_msg - Send virtchnl for ptype info
  * @vport: virtual port data structure
@@ -2526,7 +2541,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 {
 	struct virtchnl2_get_ptype_info *get_ptype_info __free(kfree) = NULL;
 	struct virtchnl2_get_ptype_info *ptype_info __free(kfree) = NULL;
-	struct idpf_rx_ptype_decoded *ptype_lkup = vport->rx_ptype_lkup;
+	struct libeth_rx_pt *ptype_lkup __free(kfree) = NULL;
 	int max_ptype, ptypes_recvd = 0, ptype_offset;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vc_xn_params xn_params = {};
@@ -2534,12 +2549,17 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 	ssize_t reply_sz;
 	int i, j, k;
 
+	if (vport->rx_ptype_lkup)
+		return 0;
+
 	if (idpf_is_queue_model_split(vport->rxq_model))
 		max_ptype = IDPF_RX_MAX_PTYPE;
 	else
 		max_ptype = IDPF_RX_MAX_BASE_PTYPE;
 
-	memset(vport->rx_ptype_lkup, 0, sizeof(vport->rx_ptype_lkup));
+	ptype_lkup = kcalloc(max_ptype, sizeof(*ptype_lkup), GFP_KERNEL);
+	if (!ptype_lkup)
+		return -ENOMEM;
 
 	get_ptype_info = kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
 	if (!get_ptype_info)
@@ -2604,9 +2624,6 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 			else
 				k = ptype->ptype_id_8;
 
-			if (ptype->proto_id_count)
-				ptype_lkup[k].known = 1;
-
 			for (j = 0; j < ptype->proto_id_count; j++) {
 				id = le16_to_cpu(ptype->proto_id[j]);
 				switch (id) {
@@ -2614,18 +2631,18 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 					if (pstate.tunnel_state ==
 							IDPF_PTYPE_TUNNEL_IP) {
 						ptype_lkup[k].tunnel_type =
-						IDPF_RX_PTYPE_TUNNEL_IP_GRENAT;
+						LIBETH_RX_PT_TUNNEL_IP_GRENAT;
 						pstate.tunnel_state |=
 						IDPF_PTYPE_TUNNEL_IP_GRENAT;
 					}
 					break;
 				case VIRTCHNL2_PROTO_HDR_MAC:
 					ptype_lkup[k].outer_ip =
-						IDPF_RX_PTYPE_OUTER_L2;
+						LIBETH_RX_PT_OUTER_L2;
 					if (pstate.tunnel_state ==
 							IDPF_TUN_IP_GRE) {
 						ptype_lkup[k].tunnel_type =
-						IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC;
+						LIBETH_RX_PT_TUNNEL_IP_GRENAT_MAC;
 						pstate.tunnel_state |=
 						IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC;
 					}
@@ -2652,23 +2669,23 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 					break;
 				case VIRTCHNL2_PROTO_HDR_UDP:
 					ptype_lkup[k].inner_prot =
-					IDPF_RX_PTYPE_INNER_PROT_UDP;
+					LIBETH_RX_PT_INNER_UDP;
 					break;
 				case VIRTCHNL2_PROTO_HDR_TCP:
 					ptype_lkup[k].inner_prot =
-					IDPF_RX_PTYPE_INNER_PROT_TCP;
+					LIBETH_RX_PT_INNER_TCP;
 					break;
 				case VIRTCHNL2_PROTO_HDR_SCTP:
 					ptype_lkup[k].inner_prot =
-					IDPF_RX_PTYPE_INNER_PROT_SCTP;
+					LIBETH_RX_PT_INNER_SCTP;
 					break;
 				case VIRTCHNL2_PROTO_HDR_ICMP:
 					ptype_lkup[k].inner_prot =
-					IDPF_RX_PTYPE_INNER_PROT_ICMP;
+					LIBETH_RX_PT_INNER_ICMP;
 					break;
 				case VIRTCHNL2_PROTO_HDR_PAY:
 					ptype_lkup[k].payload_layer =
-						IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2;
+						LIBETH_RX_PT_PAYLOAD_L2;
 					break;
 				case VIRTCHNL2_PROTO_HDR_ICMPV6:
 				case VIRTCHNL2_PROTO_HDR_IPV6_EH:
@@ -2722,9 +2739,13 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 					break;
 				}
 			}
+
+			idpf_finalize_ptype_lookup(&ptype_lkup[k]);
 		}
 	}
 
+	vport->rx_ptype_lkup = no_free_ptr(ptype_lkup);
+
 	return 0;
 }
 
-- 
2.45.0

