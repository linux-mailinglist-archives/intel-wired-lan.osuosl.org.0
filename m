Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C01A4701AB0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 May 2023 00:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F60741893;
	Sat, 13 May 2023 22:58:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F60741893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684018724;
	bh=MpfkE9ee8jzLXdruLjNGitUdjOjIJl0I+THCjN823fs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B84mujfIMSHE89/hldrYlYUMhrSI4yrvPCBQxieXhSWMdCw4hiMQS2pYhRECBK9Qg
	 srnWECWUc9ruvr2k43RkfJHr6oP4T3eyYn2XB11IjtKsnoo3LKyj34MRUKQoy3qMYP
	 jja53QvvQSFmntef4fJvPRWuBMejTcEfgFTDfHPC/2emU0gffxe2B6yUPUWWGyeS10
	 n+wgSEzG7zX6zuXLYydiuKQRCsVoqj27UbgeWN3yAuUhoNAGIRH6kXqA9Rzkgjog8w
	 jwwgZ33Tme55wuVNVXD3I7X1CFaglWW/XoyNKJxHeLbqhfAD1yxXxImdxSkIVjzajg
	 DSNnZtDcAH8gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u81ynSeh7c8G; Sat, 13 May 2023 22:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4135C417BF;
	Sat, 13 May 2023 22:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4135C417BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A1121BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 22:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C72784095
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 22:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C72784095
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEBwI1M6f9WT for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 May 2023 22:57:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C1748409D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C1748409D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 22:57:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="348487623"
X-IronPort-AV: E=Sophos;i="5.99,273,1677571200"; d="scan'208";a="348487623"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2023 15:57:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="770171513"
X-IronPort-AV: E=Sophos;i="5.99,273,1677571200"; d="scan'208";a="770171513"
Received: from estantil-desk.jf.intel.com ([10.166.241.20])
 by fmsmga004.fm.intel.com with ESMTP; 13 May 2023 15:57:28 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 13 May 2023 15:57:08 -0700
Message-Id: <20230513225710.3898-14-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20230513225710.3898-1-emil.s.tantilov@intel.com>
References: <20230513225710.3898-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684018649; x=1715554649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=ctlOprNhrg1W1NB93Mjzy0n17efIm/qguPz1TRkLiaE=;
 b=JtCTHeSpqYa/u8d13/CQSh2ED+jus3UtTytHH6skuanQNAG3Bt0I3bpK
 R2pw/YjayqxOTSkjXX7ayqW5aXcS8E9v2y6e46ezSnYGkcCLRtWwul7iX
 zHkAHQ7dJy1lFIS2omj0r9++IRqpqx1pPQqxjm/+X5LFDXXONlw/CegM1
 dtiTNwK03+Jao0rSCiLg89gJQpMF/jTImhaTbg6HQ7sdpUKf9pk2aGuAe
 jDgjS7MmRZZimeUcDh0DkeEedFq1TOb0F/zHLhcdjSaqPbHmSJNpR1xLY
 9dim63IP8eXFcWcxbv/kiqLluA1VkrIhob2nEuxKH+Nfshm+cvBQVs7lQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JtCTHeSp
Subject: [Intel-wired-lan] [PATCH iwl-next v5 13/15] idpf: add singleq
 start_xmit and napi poll
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net,
 shannon.nelson@amd.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Add the start_xmit, TX and RX napi poll support for the single queue
model. Unlike split queue model, single queue uses same queue to post
buffer descriptors and completed descriptors.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |    8 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |   57 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |    1 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1184 ++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   67 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   74 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |    2 +
 8 files changed, 1359 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 2fd65828e531..9a69250f7002 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -14,6 +14,7 @@ struct idpf_vport_max_q;
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
 #include <linux/bitfield.h>
+#include <linux/sctp.h>
 #include <net/gro.h>
 #include <linux/dim.h>
 
@@ -244,6 +245,8 @@ struct idpf_vport {
 	u32 txq_model;
 	/* Used only in hotpath to get to the right queue very fast */
 	struct idpf_queue **txqs;
+	/* Enable CRC insertion offload */
+	bool crc_enable;
 
 	/* RX */
 	int num_rxq;
@@ -426,6 +429,9 @@ struct idpf_adapter {
 	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
 	char vc_msg[IDPF_DFLT_MBX_BUF_SIZE];
 	struct idpf_dev_ops dev_ops;
+	int num_vfs;
+	/* Enable CRC insertion offload */
+	bool crc_enable;
 
 	struct mutex reset_lock;	/* lock to protect reset flows */
 	struct mutex sw_mutex;		/* lock to protect vport alloc flow */
@@ -661,5 +667,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
 int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map);
+int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
+int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
index a734345c75db..c6aee43dd9c4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -64,6 +64,32 @@ enum idpf_rss_hash {
 #define IDPF_TXD_COMPLQ_QID_S		0
 #define IDPF_TXD_COMPLQ_QID_M		GENMASK_ULL(9, 0)
 
+/* For base mode TX descriptors */
+
+#define IDPF_TXD_CTX_QW0_TUNN_L4T_CS_S	23
+#define IDPF_TXD_CTX_QW0_TUNN_L4T_CS_M	BIT_ULL(IDPF_TXD_CTX_QW0_TUNN_L4T_CS_S)
+#define IDPF_TXD_CTX_QW0_TUNN_DECTTL_S	19
+#define IDPF_TXD_CTX_QW0_TUNN_DECTTL_M	\
+	(0xFULL << IDPF_TXD_CTX_QW0_TUNN_DECTTL_S)
+#define IDPF_TXD_CTX_QW0_TUNN_NATLEN_S	12
+#define IDPF_TXD_CTX_QW0_TUNN_NATLEN_M	\
+	(0X7FULL << IDPF_TXD_CTX_QW0_TUNN_NATLEN_S)
+#define IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_S	11
+#define IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_M    \
+	BIT_ULL(IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_S)
+#define IDPF_TXD_CTX_EIP_NOINC_IPID_CONST	\
+	IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_M
+#define IDPF_TXD_CTX_QW0_TUNN_NATT_S	        9
+#define IDPF_TXD_CTX_QW0_TUNN_NATT_M	(0x3ULL << IDPF_TXD_CTX_QW0_TUNN_NATT_S)
+#define IDPF_TXD_CTX_UDP_TUNNELING	BIT_ULL(IDPF_TXD_CTX_QW0_TUNN_NATT_S)
+#define IDPF_TXD_CTX_GRE_TUNNELING	(0x2ULL << IDPF_TXD_CTX_QW0_TUNN_NATT_S)
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_S	2
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_M	\
+	(0x3FULL << IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_S)
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IP_S	0
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IP_M	\
+	(0x3ULL << IDPF_TXD_CTX_QW0_TUNN_EXT_IP_S)
+
 #define IDPF_TXD_CTX_QW1_MSS_S		50
 #define IDPF_TXD_CTX_QW1_MSS_M		GENMASK_ULL(63, 50)
 #define IDPF_TXD_CTX_QW1_TSO_LEN_S	30
@@ -112,6 +138,27 @@ enum idpf_tx_desc_dtype_value {
 	IDPF_TX_DESC_DTYPE_DESC_DONE			= 15,
 };
 
+enum idpf_tx_ctx_desc_cmd_bits {
+	IDPF_TX_CTX_DESC_TSO		= 0x01,
+	IDPF_TX_CTX_DESC_TSYN		= 0x02,
+	IDPF_TX_CTX_DESC_IL2TAG2	= 0x04,
+	IDPF_TX_CTX_DESC_RSVD		= 0x08,
+	IDPF_TX_CTX_DESC_SWTCH_NOTAG	= 0x00,
+	IDPF_TX_CTX_DESC_SWTCH_UPLINK	= 0x10,
+	IDPF_TX_CTX_DESC_SWTCH_LOCAL	= 0x20,
+	IDPF_TX_CTX_DESC_SWTCH_VSI	= 0x30,
+	IDPF_TX_CTX_DESC_FILT_AU_EN	= 0x40,
+	IDPF_TX_CTX_DESC_FILT_AU_EVICT	= 0x80,
+	IDPF_TX_CTX_DESC_RSVD1		= 0xF00
+};
+
+enum idpf_tx_desc_len_fields {
+	/* Note: These are predefined bit offsets */
+	IDPF_TX_DESC_LEN_MACLEN_S	= 0, /* 7 BITS */
+	IDPF_TX_DESC_LEN_IPLEN_S	= 7, /* 7 BITS */
+	IDPF_TX_DESC_LEN_L4_LEN_S	= 14 /* 4 BITS */
+};
+
 enum idpf_tx_base_desc_cmd_bits {
 	IDPF_TX_DESC_CMD_EOP			= BIT(0),
 	IDPF_TX_DESC_CMD_RS			= BIT(1),
@@ -148,6 +195,16 @@ struct idpf_splitq_tx_compl_desc {
 	u8 rsvd; /* Reserved */
 }; /* writeback used with completion queues */
 
+/* Context descriptors */
+struct idpf_base_tx_ctx_desc {
+	struct {
+		__le32 tunneling_params;
+		__le16 l2tag2;
+		__le16 rsvd1;
+	} qw0;
+	__le64 qw1; /* type_cmd_tlen_mss/rt_hint */
+};
+
 /* Common cmd field defines for all desc except Flex Flow Scheduler (0x0C) */
 enum idpf_tx_flex_desc_cmd_bits {
 	IDPF_TX_FLEX_DESC_CMD_EOP			= BIT(0),
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 9accf667eaa6..126cd72af591 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1556,4 +1556,5 @@ static const struct net_device_ops idpf_netdev_ops_splitq = {
 static const struct net_device_ops idpf_netdev_ops_singleq = {
 	.ndo_open = idpf_open,
 	.ndo_stop = idpf_stop,
+	.ndo_start_xmit = idpf_tx_singleq_start,
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 74b179d6a5c2..22c8d49fa613 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -133,6 +133,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		break;
 	case IDPF_DEV_ID_VF:
 		idpf_vf_dev_ops_init(adapter);
+		adapter->crc_enable = true;
 		break;
 	default:
 		err = -ENODEV;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 538429af9f37..3499e9ffe2b9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -3,6 +3,887 @@
 
 #include "idpf.h"
 
+/**
+ * idpf_tx_singleq_csum - Enable tx checksum offloads
+ * @skb: pointer to skb
+ * @off: pointer to struct that holds offload parameters
+ *
+ * Returns 0 or error (negative) if checksum offload cannot be executed, 1
+ * otherwise.
+ */
+static int idpf_tx_singleq_csum(struct sk_buff *skb,
+				struct idpf_tx_offload_params *off)
+{
+	u32 l4_len, l3_len, l2_len;
+	union {
+		struct iphdr *v4;
+		struct ipv6hdr *v6;
+		unsigned char *hdr;
+	} ip;
+	union {
+		struct tcphdr *tcp;
+		unsigned char *hdr;
+	} l4;
+	u32 offset, cmd = 0;
+	u8 l4_proto = 0;
+	__be16 frag_off;
+	bool is_tso;
+
+	if (skb->ip_summed != CHECKSUM_PARTIAL)
+		return 0;
+
+	ip.hdr = skb_network_header(skb);
+	l4.hdr = skb_transport_header(skb);
+
+	/* compute outer L2 header size */
+	l2_len = ip.hdr - skb->data;
+	offset = FIELD_PREP(0x3F << IDPF_TX_DESC_LEN_MACLEN_S, l2_len / 2);
+	is_tso = !!(off->tx_flags & IDPF_TX_FLAGS_TSO);
+	if (skb->encapsulation) {
+		u32 tunnel = 0;
+
+		/* define outer network header type */
+		if (off->tx_flags & IDPF_TX_FLAGS_IPV4) {
+			/* The stack computes the IP header already, the only
+			 * time we need the hardware to recompute it is in the
+			 * case of TSO.
+			 */
+			tunnel |= is_tso ?
+				  IDPF_TX_CTX_EXT_IP_IPV4 :
+				  IDPF_TX_CTX_EXT_IP_IPV4_NO_CSUM;
+
+			l4_proto = ip.v4->protocol;
+		} else if (off->tx_flags & IDPF_TX_FLAGS_IPV6) {
+			tunnel |= IDPF_TX_CTX_EXT_IP_IPV6;
+
+			l4_proto = ip.v6->nexthdr;
+			if (ipv6_ext_hdr(l4_proto))
+				ipv6_skip_exthdr(skb, skb_network_offset(skb) +
+						 sizeof(*ip.v6),
+						 &l4_proto, &frag_off);
+		}
+
+		/* define outer transport */
+		switch (l4_proto) {
+		case IPPROTO_UDP:
+			tunnel |= IDPF_TXD_CTX_UDP_TUNNELING;
+			break;
+		case IPPROTO_GRE:
+			tunnel |= IDPF_TXD_CTX_GRE_TUNNELING;
+			break;
+		case IPPROTO_IPIP:
+		case IPPROTO_IPV6:
+			l4.hdr = skb_inner_network_header(skb);
+			break;
+		default:
+			if (is_tso)
+				return -1;
+
+			skb_checksum_help(skb);
+
+			return 0;
+		}
+		off->tx_flags |= IDPF_TX_FLAGS_TUNNEL;
+
+		/* compute outer L3 header size */
+		tunnel |= FIELD_PREP(IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_M,
+				     (l4.hdr - ip.hdr) / 4);
+
+		/* switch IP header pointer from outer to inner header */
+		ip.hdr = skb_inner_network_header(skb);
+
+		/* compute tunnel header size */
+		tunnel |= FIELD_PREP(IDPF_TXD_CTX_QW0_TUNN_NATLEN_M,
+				     (ip.hdr - l4.hdr) / 2);
+
+		/* indicate if we need to offload outer UDP header */
+		if (is_tso &&
+		    !(skb_shinfo(skb)->gso_type & SKB_GSO_PARTIAL) &&
+		    (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_TUNNEL_CSUM))
+			tunnel |= IDPF_TXD_CTX_QW0_TUNN_L4T_CS_M;
+
+		/* record tunnel offload values */
+		off->cd_tunneling |= tunnel;
+
+		/* switch L4 header pointer from outer to inner */
+		l4.hdr = skb_inner_transport_header(skb);
+		l4_proto = 0;
+
+		/* reset type as we transition from outer to inner headers */
+		off->tx_flags &= ~(IDPF_TX_FLAGS_IPV4 | IDPF_TX_FLAGS_IPV6);
+		if (ip.v4->version == 4)
+			off->tx_flags |= IDPF_TX_FLAGS_IPV4;
+		if (ip.v6->version == 6)
+			off->tx_flags |= IDPF_TX_FLAGS_IPV6;
+	}
+
+	/* Enable IP checksum offloads */
+	if (off->tx_flags & IDPF_TX_FLAGS_IPV4) {
+		l4_proto = ip.v4->protocol;
+		/* See comment above regarding need for HW to recompute IP
+		 * header checksum in the case of TSO.
+		 */
+		if (is_tso)
+			cmd |= IDPF_TX_DESC_CMD_IIPT_IPV4_CSUM;
+		else
+			cmd |= IDPF_TX_DESC_CMD_IIPT_IPV4;
+
+	} else if (off->tx_flags & IDPF_TX_FLAGS_IPV6) {
+		cmd |= IDPF_TX_DESC_CMD_IIPT_IPV6;
+		l4_proto = ip.v6->nexthdr;
+		if (ipv6_ext_hdr(l4_proto))
+			ipv6_skip_exthdr(skb, skb_network_offset(skb) +
+					 sizeof(*ip.v6), &l4_proto,
+					 &frag_off);
+	} else {
+		return -1;
+	}
+
+	/* compute inner L3 header size */
+	l3_len = l4.hdr - ip.hdr;
+	offset |= (l3_len / 4) << IDPF_TX_DESC_LEN_IPLEN_S;
+
+	/* Enable L4 checksum offloads */
+	switch (l4_proto) {
+	case IPPROTO_TCP:
+		/* enable checksum offloads */
+		cmd |= IDPF_TX_DESC_CMD_L4T_EOFT_TCP;
+		l4_len = l4.tcp->doff;
+		break;
+	case IPPROTO_UDP:
+		/* enable UDP checksum offload */
+		cmd |= IDPF_TX_DESC_CMD_L4T_EOFT_UDP;
+		l4_len = sizeof(struct udphdr) >> 2;
+		break;
+	case IPPROTO_SCTP:
+		/* enable SCTP checksum offload */
+		cmd |= IDPF_TX_DESC_CMD_L4T_EOFT_SCTP;
+		l4_len = sizeof(struct sctphdr) >> 2;
+		break;
+	default:
+		if (is_tso)
+			return -1;
+
+		skb_checksum_help(skb);
+
+		return 0;
+	}
+
+	offset |= l4_len << IDPF_TX_DESC_LEN_L4_LEN_S;
+	off->td_cmd |= cmd;
+	off->hdr_offsets |= offset;
+
+	return 1;
+}
+
+/**
+ * idpf_tx_singleq_map - Build the Tx base descriptor
+ * @tx_q: queue to send buffer on
+ * @first: first buffer info buffer to use
+ * @offloads: pointer to struct that holds offload parameters
+ *
+ * This function loops over the skb data pointed to by *first
+ * and gets a physical address for each memory location and programs
+ * it and the length into the transmit base mode descriptor.
+ */
+static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
+				struct idpf_tx_buf *first,
+				struct idpf_tx_offload_params *offloads)
+{
+	u32 offsets = offloads->hdr_offsets;
+	struct idpf_tx_buf *tx_buf = first;
+	struct idpf_base_tx_desc *tx_desc;
+	struct sk_buff *skb = first->skb;
+	u64 td_cmd = offloads->td_cmd;
+	unsigned int data_len, size;
+	u16 i = tx_q->next_to_use;
+	struct netdev_queue *nq;
+	skb_frag_t *frag;
+	dma_addr_t dma;
+	u64 td_tag = 0;
+
+	data_len = skb->data_len;
+	size = skb_headlen(skb);
+
+	tx_desc = IDPF_BASE_TX_DESC(tx_q, i);
+
+	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
+
+	/* write each descriptor with CRC bit */
+	if (tx_q->vport->crc_enable)
+		td_cmd |= IDPF_TX_DESC_CMD_ICRC;
+
+	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
+		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+
+		if (dma_mapping_error(tx_q->dev, dma))
+			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+
+		/* record length, and DMA address */
+		dma_unmap_len_set(tx_buf, len, size);
+		dma_unmap_addr_set(tx_buf, dma, dma);
+
+		/* align size to end of page */
+		max_data += -dma & (IDPF_TX_MAX_READ_REQ_SIZE - 1);
+		tx_desc->buf_addr = cpu_to_le64(dma);
+
+		/* account for data chunks larger than the hardware
+		 * can handle
+		 */
+		while (unlikely(size > IDPF_TX_MAX_DESC_DATA)) {
+			tx_desc->qw1 = idpf_tx_singleq_build_ctob(td_cmd,
+								  offsets,
+								  max_data,
+								  td_tag);
+			tx_desc++;
+			i++;
+
+			if (i == tx_q->desc_count) {
+				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+				i = 0;
+			}
+
+			dma += max_data;
+			size -= max_data;
+
+			max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+			tx_desc->buf_addr = cpu_to_le64(dma);
+		}
+
+		if (!data_len)
+			break;
+
+		tx_desc->qw1 = idpf_tx_singleq_build_ctob(td_cmd, offsets,
+							  size, td_tag);
+		tx_desc++;
+		i++;
+
+		if (i == tx_q->desc_count) {
+			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			i = 0;
+		}
+
+		size = skb_frag_size(frag);
+		data_len -= size;
+
+		dma = skb_frag_dma_map(tx_q->dev, frag, 0, size,
+				       DMA_TO_DEVICE);
+
+		tx_buf = &tx_q->tx_buf[i];
+	}
+
+	skb_tx_timestamp(first->skb);
+
+	/* write last descriptor with RS and EOP bits */
+	td_cmd |= (u64)(IDPF_TX_DESC_CMD_EOP | IDPF_TX_DESC_CMD_RS);
+
+	tx_desc->qw1 = idpf_tx_singleq_build_ctob(td_cmd, offsets, size, td_tag);
+
+	IDPF_SINGLEQ_BUMP_RING_IDX(tx_q, i);
+
+	/* set next_to_watch value indicating a packet is present */
+	first->next_to_watch = tx_desc;
+
+	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	netdev_tx_sent_queue(nq, first->bytecount);
+
+	idpf_tx_buf_hw_update(tx_q, i, netdev_xmit_more());
+}
+
+/**
+ * idpf_tx_singleq_get_ctx_desc - grab next desc and update buffer ring
+ * @txq: queue to put context descriptor on
+ *
+ * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
+ * ring entry to reflect that this index is a context descriptor
+ */
+static struct idpf_base_tx_ctx_desc *
+idpf_tx_singleq_get_ctx_desc(struct idpf_queue *txq)
+{
+	struct idpf_base_tx_ctx_desc *ctx_desc;
+	int ntu = txq->next_to_use;
+
+	memset(&txq->tx_buf[ntu], 0, sizeof(struct idpf_tx_buf));
+	txq->tx_buf[ntu].ctx_entry = true;
+
+	ctx_desc = IDPF_BASE_TX_CTX_DESC(txq, ntu);
+
+	IDPF_SINGLEQ_BUMP_RING_IDX(txq, ntu);
+	txq->next_to_use = ntu;
+
+	return ctx_desc;
+}
+
+/**
+ * idpf_tx_singleq_build_ctx_desc - populate context descriptor
+ * @txq: queue to send buffer on
+ * @offload: offload parameter structure
+ **/
+static void idpf_tx_singleq_build_ctx_desc(struct idpf_queue *txq,
+					   struct idpf_tx_offload_params *offload)
+{
+	struct idpf_base_tx_ctx_desc *desc = idpf_tx_singleq_get_ctx_desc(txq);
+	u64 qw1 = (u64)IDPF_TX_DESC_DTYPE_CTX;
+
+	if (offload->tso_segs) {
+		qw1 |= IDPF_TX_CTX_DESC_TSO << IDPF_TXD_CTX_QW1_CMD_S;
+		qw1 |= ((u64)offload->tso_len << IDPF_TXD_CTX_QW1_TSO_LEN_S) &
+			IDPF_TXD_CTX_QW1_TSO_LEN_M;
+		qw1 |= ((u64)offload->mss << IDPF_TXD_CTX_QW1_MSS_S) &
+			IDPF_TXD_CTX_QW1_MSS_M;
+
+		u64_stats_update_begin(&txq->stats_sync);
+		u64_stats_inc(&txq->q_stats.tx.lso_pkts);
+		u64_stats_update_end(&txq->stats_sync);
+	}
+
+	desc->qw0.tunneling_params = cpu_to_le32(offload->cd_tunneling);
+
+	desc->qw0.l2tag2 = 0;
+	desc->qw0.rsvd1 = 0;
+	desc->qw1 = cpu_to_le64(qw1);
+}
+
+/**
+ * idpf_tx_singleq_frame - Sends buffer on Tx ring using base descriptors
+ * @skb: send buffer
+ * @tx_q: queue to send buffer on
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+static netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
+					 struct idpf_queue *tx_q)
+{
+	struct idpf_tx_offload_params offload = { };
+	struct idpf_tx_buf *first;
+	unsigned int count;
+	__be16 protocol;
+	int csum, tso;
+
+	count = idpf_tx_desc_count_required(tx_q, skb);
+	if (unlikely(!count))
+		return idpf_tx_drop_skb(tx_q, skb);
+
+	if (idpf_tx_maybe_stop_common(tx_q,
+				      count + IDPF_TX_DESCS_PER_CACHE_LINE +
+				      IDPF_TX_DESCS_FOR_CTX)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+
+		return NETDEV_TX_BUSY;
+	}
+
+	protocol = vlan_get_protocol(skb);
+	if (protocol == htons(ETH_P_IP))
+		offload.tx_flags |= IDPF_TX_FLAGS_IPV4;
+	else if (protocol == htons(ETH_P_IPV6))
+		offload.tx_flags |= IDPF_TX_FLAGS_IPV6;
+
+	tso = idpf_tso(skb, &offload);
+	if (tso < 0)
+		goto out_drop;
+
+	csum = idpf_tx_singleq_csum(skb, &offload);
+	if (csum < 0)
+		goto out_drop;
+
+	if (tso || offload.cd_tunneling)
+		idpf_tx_singleq_build_ctx_desc(tx_q, &offload);
+
+	/* record the location of the first descriptor for this packet */
+	first = &tx_q->tx_buf[tx_q->next_to_use];
+	first->skb = skb;
+
+	if (tso) {
+		first->gso_segs = offload.tso_segs;
+		first->bytecount = skb->len + ((first->gso_segs - 1) * offload.tso_hdr_len);
+	} else {
+		first->bytecount = max_t(unsigned int, skb->len, ETH_ZLEN);
+		first->gso_segs = 1;
+	}
+	idpf_tx_singleq_map(tx_q, first, &offload);
+
+	return NETDEV_TX_OK;
+
+out_drop:
+	return idpf_tx_drop_skb(tx_q, skb);
+}
+
+/**
+ * idpf_tx_singleq_start - Selects the right Tx queue to send buffer
+ * @skb: send buffer
+ * @netdev: network interface device structure
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
+				  struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_queue *tx_q;
+
+	if (!vport || test_bit(IDPF_HR_RESET_IN_PROG, vport->adapter->flags))
+		return NETDEV_TX_BUSY;
+
+	tx_q = vport->txqs[skb_get_queue_mapping(skb)];
+
+	/* hardware can't handle really short frames, hardware padding works
+	 * beyond this point
+	 */
+	if (skb_put_padto(skb, IDPF_TX_MIN_PKT_LEN)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+
+		return NETDEV_TX_OK;
+	}
+
+	return idpf_tx_singleq_frame(skb, tx_q);
+}
+
+/**
+ * idpf_tx_singleq_clean - Reclaim resources from queue
+ * @tx_q: Tx queue to clean
+ * @napi_budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ */
+static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget, int *cleaned)
+{
+	unsigned int budget = tx_q->vport->compln_clean_budget;
+	unsigned int total_bytes = 0, total_pkts = 0;
+	struct idpf_base_tx_desc *tx_desc;
+	s16 ntc = tx_q->next_to_clean;
+	struct idpf_tx_buf *tx_buf;
+	struct idpf_vport *vport;
+	struct netdev_queue *nq;
+
+	tx_desc = IDPF_BASE_TX_DESC(tx_q, ntc);
+	tx_buf = &tx_q->tx_buf[ntc];
+	ntc -= tx_q->desc_count;
+
+	do {
+		struct idpf_base_tx_desc *eop_desc;
+
+		/* If this entry in the ring was used as a context descriptor,
+		 * it's corresponding entry in the buffer ring will indicate as
+		 * such. We can skip this descriptor since there is no buffer
+		 * to clean.
+		 */
+		if (tx_buf->ctx_entry) {
+			/* Clear this flag here to avoid stale flag values when this
+			 * buffer is used for actual data in the future. There are
+			 * cases where the tx_buf struct / the flags field will not
+			 * be cleared before being reused.
+			 */
+			tx_buf->ctx_entry = false;
+			goto fetch_next_txq_desc;
+		}
+
+		/* if next_to_watch is not set then no work pending */
+		eop_desc = (struct idpf_base_tx_desc *)tx_buf->next_to_watch;
+		if (!eop_desc)
+			break;
+
+		/* prevent any other reads prior to eop_desc */
+		smp_rmb();
+
+		/* if the descriptor isn't done, no work yet to do */
+		if (!(eop_desc->qw1 &
+		      cpu_to_le64(IDPF_TX_DESC_DTYPE_DESC_DONE)))
+			break;
+
+		/* clear next_to_watch to prevent false hangs */
+		tx_buf->next_to_watch = NULL;
+
+		/* update the statistics for this packet */
+		total_bytes += tx_buf->bytecount;
+		total_pkts += tx_buf->gso_segs;
+
+		napi_consume_skb(tx_buf->skb, napi_budget);
+
+		/* unmap skb header data */
+		dma_unmap_single(tx_q->dev,
+				 dma_unmap_addr(tx_buf, dma),
+				 dma_unmap_len(tx_buf, len),
+				 DMA_TO_DEVICE);
+
+		/* clear tx_buf data */
+		tx_buf->skb = NULL;
+		dma_unmap_len_set(tx_buf, len, 0);
+
+		/* unmap remaining buffers */
+		while (tx_desc != eop_desc) {
+			tx_buf++;
+			tx_desc++;
+			ntc++;
+			if (unlikely(!ntc)) {
+				ntc -= tx_q->desc_count;
+				tx_buf = tx_q->tx_buf;
+				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			}
+
+			/* unmap any remaining paged data */
+			if (dma_unmap_len(tx_buf, len)) {
+				dma_unmap_page(tx_q->dev,
+					       dma_unmap_addr(tx_buf, dma),
+					       dma_unmap_len(tx_buf, len),
+					       DMA_TO_DEVICE);
+				dma_unmap_len_set(tx_buf, len, 0);
+			}
+		}
+
+		/* update budget only if we did something */
+		budget--;
+
+fetch_next_txq_desc:
+		tx_buf++;
+		tx_desc++;
+		ntc++;
+		if (unlikely(!ntc)) {
+			ntc -= tx_q->desc_count;
+			tx_buf = tx_q->tx_buf;
+			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+		}
+	} while (likely(budget));
+
+	ntc += tx_q->desc_count;
+	tx_q->next_to_clean = ntc;
+
+	*cleaned += total_pkts;
+
+	u64_stats_update_begin(&tx_q->stats_sync);
+	u64_stats_add(&tx_q->q_stats.tx.packets, total_pkts);
+	u64_stats_add(&tx_q->q_stats.tx.bytes, total_bytes);
+	u64_stats_update_end(&tx_q->stats_sync);
+
+	vport = tx_q->vport;
+	nq = netdev_get_tx_queue(vport->netdev, tx_q->idx);
+	netdev_tx_completed_queue(nq, total_pkts, total_bytes);
+
+	if (unlikely(total_pkts && netif_carrier_ok(vport->netdev) &&
+		     IDPF_DESC_UNUSED(tx_q) >= IDPF_TX_WAKE_THRESH)) {
+		/* Make sure any other threads stopping queue after this see
+		 * new next_to_clean.
+		 */
+		smp_mb();
+		if (__netif_subqueue_stopped(vport->netdev, tx_q->idx) &&
+		    vport->state == __IDPF_VPORT_UP)
+			netif_wake_subqueue(tx_q->vport->netdev, tx_q->idx);
+	}
+
+	return !!budget;
+}
+
+/**
+ * idpf_tx_singleq_clean_all - Clean all Tx queues
+ * @q_vec: queue vector
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns false if clean is not complete else returns true
+ */
+static bool idpf_tx_singleq_clean_all(struct idpf_q_vector *q_vec, int budget,
+				      int *cleaned)
+{
+	int num_txq = q_vec->num_txq;
+	bool clean_complete = true;
+	int i, budget_per_q;
+
+	budget_per_q = num_txq ? max(budget / num_txq, 1) : 0;
+	for (i = 0; i < num_txq; i++) {
+		struct idpf_queue *q;
+
+		q = q_vec->tx[i];
+		clean_complete &= idpf_tx_singleq_clean(q, budget_per_q, cleaned);
+	}
+
+	return clean_complete;
+}
+
+/**
+ * idpf_rx_singleq_test_staterr - tests bits in Rx descriptor
+ * status and error fields
+ * @rx_desc: pointer to receive descriptor (in le64 format)
+ * @stat_err_bits: value to mask
+ *
+ * This function does some fast chicanery in order to return the
+ * value of the mask which is really only used for boolean tests.
+ * The status_error_ptype_len doesn't need to be shifted because it begins
+ * at offset zero.
+ */
+static bool idpf_rx_singleq_test_staterr(const union virtchnl2_rx_desc *rx_desc,
+					 const u64 stat_err_bits)
+{
+	return !!(rx_desc->base_wb.qword1.status_error_ptype_len &
+		  cpu_to_le64(stat_err_bits));
+}
+
+/**
+ * idpf_rx_singleq_is_non_eop - process handling of non-EOP buffers
+ * @rxq: Rx ring being processed
+ * @rx_desc: Rx descriptor for current buffer
+ * @skb: Current socket buffer containing buffer in progress
+ */
+static bool idpf_rx_singleq_is_non_eop(struct idpf_queue *rxq,
+				       union virtchnl2_rx_desc *rx_desc,
+				       struct sk_buff *skb)
+{
+	/* if we are the last buffer then there is nothing else to do */
+	if (likely(idpf_rx_singleq_test_staterr(rx_desc, IDPF_RXD_EOF_SINGLEQ)))
+		return false;
+
+	/* place skb in next buffer to be received */
+	rxq->rx_buf.buf[rxq->next_to_clean].skb = skb;
+
+	return true;
+}
+
+/**
+ * idpf_rx_singleq_csum - Indicate in skb if checksum is good
+ * @rxq: Rx ring being processed
+ * @skb: skb currently being received and modified
+ * @csum_bits: checksum bits from descriptor
+ * @ptype: the packet type decoded by hardware
+ *
+ * skb->protocol must be set before this function is called
+ */
+static void idpf_rx_singleq_csum(struct idpf_queue *rxq, struct sk_buff *skb,
+				 struct idpf_rx_csum_decoded *csum_bits,
+				 u16 ptype)
+{
+	struct idpf_rx_ptype_decoded decoded;
+	bool ipv4, ipv6;
+
+	/* check if Rx checksum is enabled */
+	if (unlikely(!(rxq->vport->netdev->features & NETIF_F_RXCSUM)))
+		return;
+
+	/* check if HW has decoded the packet and checksum */
+	if (unlikely(!(csum_bits->l3l4p)))
+		return;
+
+	decoded = rxq->vport->rx_ptype_lkup[ptype];
+	if (unlikely(!(decoded.known && decoded.outer_ip)))
+		return;
+
+	ipv4 = IDPF_RX_PTYPE_TO_IPV(&decoded, IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = IDPF_RX_PTYPE_TO_IPV(&decoded, IDPF_RX_PTYPE_OUTER_IPV6);
+
+	/* Check if there were any checksum errors */
+	if (unlikely(ipv4 && (csum_bits->ipe || csum_bits->eipe)))
+		goto checksum_fail;
+
+	/* Device could not do any checksum offload for certain extension
+	 * headers as indicated by setting IPV6EXADD bit
+	 */
+	if (unlikely(ipv6 && csum_bits->ipv6exadd))
+		return;
+
+	/* check for L4 errors and handle packets that were not able to be
+	 * checksummed due to arrival speed
+	 */
+	if (unlikely(csum_bits->l4e))
+		goto checksum_fail;
+
+	if (unlikely(csum_bits->nat && csum_bits->eudpe))
+		goto checksum_fail;
+
+	/* Handle packets that were not able to be checksummed due to arrival
+	 * speed, in this case the stack can compute the csum.
+	 */
+	if (unlikely(csum_bits->pprs))
+		return;
+
+	/* If there is an outer header present that might contain a checksum
+	 * we need to bump the checksum level by 1 to reflect the fact that
+	 * we are indicating we validated the inner checksum.
+	 */
+	if (decoded.tunnel_type >= IDPF_RX_PTYPE_TUNNEL_IP_GRENAT)
+		skb->csum_level = 1;
+
+	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
+	switch (decoded.inner_prot) {
+	case IDPF_RX_PTYPE_INNER_PROT_ICMP:
+	case IDPF_RX_PTYPE_INNER_PROT_TCP:
+	case IDPF_RX_PTYPE_INNER_PROT_UDP:
+	case IDPF_RX_PTYPE_INNER_PROT_SCTP:
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+		return;
+	default:
+		return;
+	}
+
+checksum_fail:
+	u64_stats_update_begin(&rxq->stats_sync);
+	u64_stats_inc(&rxq->q_stats.rx.hw_csum_err);
+	u64_stats_update_end(&rxq->stats_sync);
+}
+
+/**
+ * idpf_rx_singleq_base_csum - Indicate in skb if hw indicated a good cksum
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: the receive descriptor
+ * @ptype: Rx packet type
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M base 32byte
+ * descriptor writeback format.
+ **/
+static void idpf_rx_singleq_base_csum(struct idpf_queue *rx_q,
+				      struct sk_buff *skb,
+				      union virtchnl2_rx_desc *rx_desc,
+				      u16 ptype)
+{
+	struct idpf_rx_csum_decoded csum_bits;
+	u32 rx_error, rx_status;
+	u64 qword;
+
+	qword = le64_to_cpu(rx_desc->base_wb.qword1.status_error_ptype_len);
+
+	rx_status = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_M, qword);
+	rx_error = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M, qword);
+
+	csum_bits.ipe = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_ERROR_IPE_M, rx_error);
+	csum_bits.eipe = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_ERROR_EIPE_M,
+				   rx_error);
+	csum_bits.l4e = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_ERROR_L4E_M, rx_error);
+	csum_bits.pprs = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_ERROR_PPRS_M,
+				   rx_error);
+	csum_bits.l3l4p = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_STATUS_L3L4P_M,
+				    rx_status);
+	csum_bits.ipv6exadd = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_STATUS_IPV6EXADD_M,
+					rx_status);
+	csum_bits.nat = 0;
+	csum_bits.eudpe = 0;
+
+	idpf_rx_singleq_csum(rx_q, skb, &csum_bits, ptype);
+}
+
+/**
+ * idpf_rx_singleq_flex_csum - Indicate in skb if hw indicated a good cksum
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: the receive descriptor
+ * @ptype: Rx packet type
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ **/
+static void idpf_rx_singleq_flex_csum(struct idpf_queue *rx_q,
+				      struct sk_buff *skb,
+				      union virtchnl2_rx_desc *rx_desc,
+				      u16 ptype)
+{
+	struct idpf_rx_csum_decoded csum_bits;
+	u16 rx_status0, rx_status1;
+
+	rx_status0 = le16_to_cpu(rx_desc->flex_nic_wb.status_error0);
+	rx_status1 = le16_to_cpu(rx_desc->flex_nic_wb.status_error1);
+
+	csum_bits.ipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_IPE_M,
+				  rx_status0);
+	csum_bits.eipe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M,
+				   rx_status0);
+	csum_bits.l4e = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_L4E_M,
+				  rx_status0);
+	csum_bits.eudpe = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M,
+				    rx_status0);
+	csum_bits.l3l4p = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_L3L4P_M,
+				    rx_status0);
+	csum_bits.ipv6exadd = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_IPV6EXADD_M,
+					rx_status0);
+	csum_bits.nat = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS1_NAT_M,
+				  rx_status1);
+	csum_bits.pprs = 0;
+
+	idpf_rx_singleq_csum(rx_q, skb, &csum_bits, ptype);
+}
+
+/**
+ * idpf_rx_singleq_base_hash - set the hash value in the skb
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: specific descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M base 32byte
+ * descriptor writeback format.
+ **/
+static void idpf_rx_singleq_base_hash(struct idpf_queue *rx_q,
+				      struct sk_buff *skb,
+				      union virtchnl2_rx_desc *rx_desc,
+				      struct idpf_rx_ptype_decoded *decoded)
+{
+	u64 mask, qw1;
+
+	if (unlikely(!(rx_q->vport->netdev->features & NETIF_F_RXHASH)))
+		return;
+
+	mask = VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH_M;
+	qw1 = le64_to_cpu(rx_desc->base_wb.qword1.status_error_ptype_len);
+
+	if (FIELD_GET(mask, qw1) == mask) {
+		u32 hash = le32_to_cpu(rx_desc->base_wb.qword0.hi_dword.rss);
+
+		skb_set_hash(skb, hash, idpf_ptype_to_htype(decoded));
+	}
+}
+
+/**
+ * idpf_rx_singleq_flex_hash - set the hash value in the skb
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: specific descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ **/
+static void idpf_rx_singleq_flex_hash(struct idpf_queue *rx_q,
+				      struct sk_buff *skb,
+				      union virtchnl2_rx_desc *rx_desc,
+				      struct idpf_rx_ptype_decoded *decoded)
+{
+	if (unlikely(!(rx_q->vport->netdev->features & NETIF_F_RXHASH)))
+		return;
+
+	if (FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_M,
+		      le16_to_cpu(rx_desc->flex_nic_wb.status_error0)))
+		skb_set_hash(skb, le32_to_cpu(rx_desc->flex_nic_wb.rss_hash),
+			     idpf_ptype_to_htype(decoded));
+}
+
+/**
+ * idpf_rx_singleq_process_skb_fields - Populate skb header fields from Rx
+ * descriptor
+ * @rx_q: Rx ring being processed
+ * @skb: pointer to current skb being populated
+ * @rx_desc: descriptor for skb
+ * @ptype: packet type
+ *
+ * This function checks the ring, descriptor, and packet information in
+ * order to populate the hash, checksum, VLAN, protocol, and
+ * other fields within the skb.
+ */
+static void idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q,
+					       struct sk_buff *skb,
+					       union virtchnl2_rx_desc *rx_desc,
+					       u16 ptype)
+{
+	struct idpf_rx_ptype_decoded decoded =
+					rx_q->vport->rx_ptype_lkup[ptype];
+
+	/* modifies the skb - consumes the enet header */
+	skb->protocol = eth_type_trans(skb, rx_q->vport->netdev);
+
+	/* Check if we're using base mode descriptor IDs */
+	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M) {
+		idpf_rx_singleq_base_hash(rx_q, skb, rx_desc, &decoded);
+		idpf_rx_singleq_base_csum(rx_q, skb, rx_desc, ptype);
+	} else {
+		idpf_rx_singleq_flex_hash(rx_q, skb, rx_desc, &decoded);
+		idpf_rx_singleq_flex_csum(rx_q, skb, rx_desc, ptype);
+	}
+}
+
 /**
  * idpf_rx_singleq_buf_hw_alloc_all - Replace used receive buffers
  * @rx_q: queue for which the hw buffers are allocated
@@ -59,6 +940,278 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 	return !!cleaned_count;
 }
 
+/**
+ * idpf_rx_reuse_page - Put recycled buffer back onto ring
+ * @rxq: Rx descriptor ring to store buffers on
+ * @old_buf: donor buffer to have page reused
+ */
+static void idpf_rx_reuse_page(struct idpf_queue *rxq,
+			       struct idpf_rx_buf *old_buf)
+{
+	struct idpf_rx_buf *new_buf;
+	u16 ntu = rxq->next_to_use;
+
+	new_buf = &rxq->rx_buf.buf[ntu];
+
+	/* Transfer page from old buffer to new buffer.  Move each member
+	 * individually to avoid possible store forwarding stalls and
+	 * unnecessary copy of skb.
+	 */
+	new_buf->page_info[new_buf->page_indx].dma =
+				old_buf->page_info[old_buf->page_indx].dma;
+	new_buf->page_info[new_buf->page_indx].page =
+				old_buf->page_info[old_buf->page_indx].page;
+	new_buf->page_info[new_buf->page_indx].page_offset =
+			old_buf->page_info[old_buf->page_indx].page_offset;
+	new_buf->page_info[new_buf->page_indx].pagecnt_bias =
+			old_buf->page_info[old_buf->page_indx].pagecnt_bias;
+
+	IDPF_SINGLEQ_BUMP_RING_IDX(rxq, ntu);
+	rxq->next_to_use = ntu;
+}
+
+/**
+ * idpf_rx_singleq_recycle_buf - Clean up used buffer and either recycle or free
+ * @rxq: Rx ring being processed
+ * @rx_buf: Rx buffer to clear and test for recycling
+ *
+ * This function will clean up the contents of the rx_buf. It will either
+ * recycle the buffer or unmap it and free the associated resources.
+ *
+ * Returns true if the buffer is reused, false if the buffer is freed.
+ */
+static bool idpf_rx_singleq_recycle_buf(struct idpf_queue *rxq,
+					struct idpf_rx_buf *rx_buf)
+{
+	struct idpf_page_info *pinfo =	&rx_buf->page_info[rx_buf->page_indx];
+	bool recycled = false;
+
+	if (idpf_rx_can_reuse_page(rx_buf)) {
+		/* hand second half of page back to the queue */
+		idpf_rx_reuse_page(rxq, rx_buf);
+		recycled = true;
+	} else {
+		/* we are not reusing the buffer so unmap it */
+		dma_unmap_page_attrs(rxq->dev, pinfo->dma, PAGE_SIZE,
+				     DMA_FROM_DEVICE, IDPF_RX_DMA_ATTR);
+		__page_frag_cache_drain(pinfo->page, pinfo->pagecnt_bias);
+	}
+
+	/* clear contents of buffer_info */
+	pinfo->page = NULL;
+	rx_buf->skb = NULL;
+
+	return recycled;
+}
+
+/**
+ * idpf_rx_singleq_extract_base_fields - Extract fields from the Rx descriptor
+ * @rx_q: Rx descriptor queue
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size and Rx packet type.
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M base 32byte
+ * descriptor writeback format.
+ */
+static void idpf_rx_singleq_extract_base_fields(struct idpf_queue *rx_q,
+						union virtchnl2_rx_desc *rx_desc,
+						struct idpf_rx_extracted *fields)
+{
+	u64 qword;
+
+	qword = le64_to_cpu(rx_desc->base_wb.qword1.status_error_ptype_len);
+
+	fields->size = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M, qword);
+	fields->rx_ptype = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M, qword);
+}
+
+/**
+ * idpf_rx_singleq_extract_flex_fields - Extract fields from the Rx descriptor
+ * @rx_q: Rx descriptor queue
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size and Rx packet type.
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ */
+static void idpf_rx_singleq_extract_flex_fields(struct idpf_queue *rx_q,
+						union virtchnl2_rx_desc *rx_desc,
+						struct idpf_rx_extracted *fields)
+{
+	fields->size = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M,
+				 le16_to_cpu(rx_desc->flex_nic_wb.pkt_len));
+	fields->rx_ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PTYPE_M,
+				     le16_to_cpu(rx_desc->flex_nic_wb.ptype_flex_flags0));
+}
+
+/**
+ * idpf_rx_singleq_extract_fields - Extract fields from the Rx descriptor
+ * @rx_q: Rx descriptor queue
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ */
+static void idpf_rx_singleq_extract_fields(struct idpf_queue *rx_q,
+					   union virtchnl2_rx_desc *rx_desc,
+					   struct idpf_rx_extracted *fields)
+{
+	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M)
+		idpf_rx_singleq_extract_base_fields(rx_q, rx_desc, fields);
+	else
+		idpf_rx_singleq_extract_flex_fields(rx_q, rx_desc, fields);
+}
+
+/**
+ * idpf_rx_singleq_clean - Reclaim resources after receive completes
+ * @rx_q: rx queue to clean
+ * @budget: Total limit on number of packets to process
+ *
+ * Returns true if there's any budget left (e.g. the clean is finished)
+ */
+static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
+{
+	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
+	u16 ntc = rx_q->next_to_clean;
+	u16 cleaned_count = 0;
+	bool failure = false;
+
+	/* Process Rx packets bounded by budget */
+	while (likely(total_rx_pkts < (unsigned int)budget)) {
+		struct idpf_rx_extracted fields = { };
+		union virtchnl2_rx_desc *rx_desc;
+		struct sk_buff *skb = NULL;
+		struct idpf_rx_buf *rx_buf;
+
+		/* get the Rx desc from Rx queue based on 'next_to_clean' */
+		rx_desc = IDPF_RX_DESC(rx_q, ntc);
+
+		/* status_error_ptype_len will always be zero for unused
+		 * descriptors because it's cleared in cleanup, and overlaps
+		 * with hdr_addr which is always zero because packet split
+		 * isn't used, if the hardware wrote DD then the length will be
+		 * non-zero
+		 */
+#define IDPF_RXD_DD VIRTCHNL2_RX_BASE_DESC_STATUS_DD_M
+		if (!idpf_rx_singleq_test_staterr(rx_desc,
+						  IDPF_RXD_DD))
+			break;
+
+		/* This memory barrier is needed to keep us from reading
+		 * any other fields out of the rx_desc
+		 */
+		dma_rmb();
+
+		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
+
+		if (!fields.size)
+			break;
+
+		rx_buf = &rx_q->rx_buf.buf[ntc];
+		idpf_rx_get_buf_page(rx_q->dev, rx_buf, fields.size);
+		skb = rx_buf->skb;
+		if (skb)
+			idpf_rx_add_frag(rx_buf, skb, fields.size);
+		else
+			skb = idpf_rx_construct_skb(rx_q, rx_buf, fields.size);
+
+		/* exit if we failed to retrieve a buffer */
+		if (!skb) {
+			rx_buf->page_info[rx_buf->page_indx].pagecnt_bias++;
+			break;
+		}
+
+		idpf_rx_singleq_recycle_buf(rx_q, rx_buf);
+		IDPF_SINGLEQ_BUMP_RING_IDX(rx_q, ntc);
+
+		cleaned_count++;
+
+		/* skip if it is non EOP desc */
+		if (idpf_rx_singleq_is_non_eop(rx_q, rx_desc, skb))
+			continue;
+
+#define IDPF_RXD_ERR_S FIELD_PREP(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M, \
+				  VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_M)
+		if (unlikely(idpf_rx_singleq_test_staterr(rx_desc,
+							  IDPF_RXD_ERR_S))) {
+			dev_kfree_skb_any(skb);
+			skb = NULL;
+			continue;
+		}
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
+		idpf_rx_singleq_process_skb_fields(rx_q, skb,
+						   rx_desc, fields.rx_ptype);
+
+		/* send completed skb up the stack */
+		napi_gro_receive(&rx_q->q_vector->napi, skb);
+
+		/* update budget accounting */
+		total_rx_pkts++;
+	}
+
+	rx_q->next_to_clean = ntc;
+
+	if (cleaned_count)
+		failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
+
+	u64_stats_update_begin(&rx_q->stats_sync);
+	u64_stats_add(&rx_q->q_stats.rx.packets, total_rx_pkts);
+	u64_stats_add(&rx_q->q_stats.rx.bytes, total_rx_bytes);
+	u64_stats_update_end(&rx_q->stats_sync);
+
+	/* guarantee a trip back through this routine if there was a failure */
+	return failure ? budget : (int)total_rx_pkts;
+}
+
+/**
+ * idpf_rx_singleq_clean_all - Clean all Rx queues
+ * @q_vec: queue vector
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns false if clean is not complete else returns true
+ */
+static bool idpf_rx_singleq_clean_all(struct idpf_q_vector *q_vec, int budget,
+				      int *cleaned)
+{
+	int num_rxq = q_vec->num_rxq;
+	bool clean_complete = true;
+	int budget_per_q, i;
+
+	/* We attempt to distribute budget to each Rx queue fairly, but don't
+	 * allow the budget to go below 1 because that would exit polling early.
+	 */
+	budget_per_q = num_rxq ? max(budget / num_rxq, 1) : 0;
+	for (i = 0; i < num_rxq; i++) {
+		struct idpf_queue *rxq = q_vec->rx[i];
+		int pkts_cleaned_per_q;
+
+		pkts_cleaned_per_q = idpf_rx_singleq_clean(rxq, budget_per_q);
+
+		/* if we clean as many as budgeted, we must not be done */
+		if (pkts_cleaned_per_q >= budget_per_q)
+			clean_complete = false;
+		*cleaned += pkts_cleaned_per_q;
+	}
+
+	return clean_complete;
+}
+
 /**
  * idpf_vport_singleq_napi_poll - NAPI handler
  * @napi: struct from which you get q_vector
@@ -66,6 +1219,33 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
  */
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
 {
-	/* stub */
-	return 0;
+	struct idpf_q_vector *q_vector =
+				container_of(napi, struct idpf_q_vector, napi);
+	bool clean_complete;
+	int work_done = 0;
+
+	/* Handle case where we are called by netpoll with a budget of 0 */
+	if (budget <= 0) {
+		idpf_tx_singleq_clean_all(q_vector, budget, &work_done);
+
+		return budget;
+	}
+
+	clean_complete = idpf_rx_singleq_clean_all(q_vector, budget,
+						   &work_done);
+	clean_complete &= idpf_tx_singleq_clean_all(q_vector, budget, &work_done);
+
+	/* If work not completed, return budget and polling will return */
+	if (!clean_complete)
+		return budget;
+
+	work_done = min_t(int, work_done, budget - 1);
+
+	/* Exit the polling mode, but don't re-enable interrupts if stack might
+	 * poll us due to busy-polling
+	 */
+	if (likely(napi_complete_done(napi, work_done)))
+		idpf_vport_intr_update_itr_ena_irq(q_vector);
+
+	return work_done;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 78d43dce3d23..0064e91599f6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2334,7 +2334,7 @@ static int __idpf_tx_maybe_stop_common(struct idpf_queue *tx_q,
  *
  * Returns 0 if stop is not needed
  */
-static int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
+int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
 {
 	if (likely(IDPF_DESC_UNUSED(tx_q) >= size))
 		return 0;
@@ -2394,8 +2394,8 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_queue *tx_q,
  * to do a register write to update our queue status. We know this can only
  * mean tail here as HW should be owning head for TX.
  */
-static void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
-				  bool xmit_more)
+void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
+			   bool xmit_more)
 {
 	struct netdev_queue *nq;
 
@@ -2418,11 +2418,13 @@ static void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
 
 /**
  * idpf_tx_desc_count_required - calculate number of Tx descriptors needed
+ * @txq: queue to send buffer on
  * @skb: send buffer
  *
  * Returns number of data descriptors needed for this skb.
  */
-static unsigned int idpf_tx_desc_count_required(struct sk_buff *skb)
+unsigned int idpf_tx_desc_count_required(struct idpf_queue *txq,
+					 struct sk_buff *skb)
 {
 	const struct skb_shared_info *shinfo;
 	unsigned int count = 0, i;
@@ -2448,6 +2450,16 @@ static unsigned int idpf_tx_desc_count_required(struct sk_buff *skb)
 			count++;
 	}
 
+	if (idpf_chk_linearize(skb, txq->tx_max_bufs, count)) {
+		if (__skb_linearize(skb))
+			return 0;
+
+		count = idpf_size_to_txd_count(skb->len);
+		u64_stats_update_begin(&txq->stats_sync);
+		u64_stats_inc(&txq->q_stats.tx.linearize);
+		u64_stats_update_end(&txq->stats_sync);
+	}
+
 	return count;
 }
 
@@ -2458,8 +2470,8 @@ static unsigned int idpf_tx_desc_count_required(struct sk_buff *skb)
  * @first: original first buffer info buffer for packet
  * @idx: starting point on ring to unwind
  */
-static void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
-				  struct idpf_tx_buf *first, u16 idx)
+void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
+			   struct idpf_tx_buf *first, u16 idx)
 {
 	u64_stats_update_begin(&txq->stats_sync);
 	u64_stats_inc(&txq->q_stats.tx.dma_map_errs);
@@ -2701,7 +2713,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
  * Returns error (negative) if TSO was requested but cannot be applied to the given skb,
  * 0 if TSO does not apply to the given skb, or 1 otherwise.
  */
-static int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
+int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
 {
 	const struct skb_shared_info *shinfo = skb_shinfo(skb);
 	union {
@@ -2862,8 +2874,8 @@ static bool __idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs)
  * E.g.: a packet with 7 fragments can require 9 DMA transactions; 1 for TSO
  * header, 1 for segment payload, and then 7 for the fragments.
  */
-static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
-			       unsigned int count)
+bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
+			unsigned int count)
 {
 	if (likely(count < max_bufs))
 		return false;
@@ -2901,8 +2913,7 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_queue *txq)
  * @tx_q: queue to send buffer on
  * @skb: pointer to skb
  */
-static netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q,
-				    struct sk_buff *skb)
+netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb)
 {
 	u64_stats_update_begin(&tx_q->stats_sync);
 	u64_stats_inc(&tx_q->q_stats.tx.skb_drops);
@@ -2930,16 +2941,9 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 	unsigned int count;
 	int tso;
 
-	count = idpf_tx_desc_count_required(skb);
-	if (idpf_chk_linearize(skb, tx_q->tx_max_bufs, count)) {
-		if (__skb_linearize(skb))
-			return idpf_tx_drop_skb(tx_q, skb);
-
-		count = idpf_size_to_txd_count(skb->len);
-		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_inc(&tx_q->q_stats.tx.linearize);
-		u64_stats_update_end(&tx_q->stats_sync);
-	}
+	count = idpf_tx_desc_count_required(tx_q, skb);
+	if (unlikely(!count))
+		return idpf_tx_drop_skb(tx_q, skb);
 
 	tso = idpf_tso(skb, &tx_params.offload);
 	if (unlikely(tso < 0))
@@ -3057,8 +3061,7 @@ netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
  * skb_set_hash based on PTYPE as parsed by HW Rx pipeline and is part of
  * Rx desc.
  */
-static enum pkt_hash_types
-idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *decoded)
+enum pkt_hash_types idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *decoded)
 {
 	if (!decoded->known)
 		return PKT_HASH_TYPE_NONE;
@@ -3344,7 +3347,7 @@ static void idpf_rx_buf_adjust_pg(struct idpf_rx_buf *rx_buf, unsigned int size)
  * pointing to; otherwise, the dma mapping needs to be destroyed and
  * page freed
  */
-static bool idpf_rx_can_reuse_page(struct idpf_rx_buf *rx_buf)
+bool idpf_rx_can_reuse_page(struct idpf_rx_buf *rx_buf)
 {
 	unsigned int last_offset = PAGE_SIZE - rx_buf->buf_size;
 	struct idpf_page_info *pinfo;
@@ -3406,8 +3409,8 @@ static unsigned int idpf_rx_frame_truesize(struct idpf_rx_buf *buf,
  * It will just attach the page as a frag to the skb.
  * The function will then update the page offset.
  */
-static void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
-			     unsigned int size)
+void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
+		      unsigned int size)
 {
 	unsigned int truesize = idpf_rx_frame_truesize(rx_buf, size);
 	struct idpf_page_info *pinfo;
@@ -3428,8 +3431,8 @@ static void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
  * This function will pull an Rx buffer page from the ring and synchronize it
  * for use by the CPU.
  */
-static void idpf_rx_get_buf_page(struct device *dev, struct idpf_rx_buf *rx_buf,
-				 const unsigned int size)
+void idpf_rx_get_buf_page(struct device *dev, struct idpf_rx_buf *rx_buf,
+			  const unsigned int size)
 {
 	struct idpf_page_info *pinfo;
 
@@ -3454,9 +3457,9 @@ static void idpf_rx_get_buf_page(struct device *dev, struct idpf_rx_buf *rx_buf,
  * data from the current receive descriptor, taking care to set up the
  * skb correctly.
  */
-static struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
-					     struct idpf_rx_buf *rx_buf,
-					     unsigned int size)
+struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
+				      struct idpf_rx_buf *rx_buf,
+				      unsigned int size)
 {
 	unsigned int headlen, truesize;
 	struct idpf_page_info *pinfo;
@@ -4151,7 +4154,7 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
  * Update the net_dim() algorithm and re-enable the interrupt associated with
  * this vector.
  */
-static void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
+void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 {
 	u32 intval;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 66695642e27b..49e180380862 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -70,6 +70,12 @@ do {								\
 	}							\
 } while (0)
 
+#define IDPF_SINGLEQ_BUMP_RING_IDX(q, idx)			\
+do {								\
+	if (unlikely(++(idx) == (q)->desc_count))		\
+		idx = 0;					\
+} while (0)
+
 #define IDPF_RX_HDR_SIZE			256
 #define IDPF_RX_BUF_2048			2048
 #define IDPF_RX_BUF_4096			4096
@@ -91,7 +97,7 @@ do {								\
 #define IDPF_RX_BI_GEN_S		15
 #define IDPF_RX_BI_GEN_M		BIT(IDPF_RX_BI_GEN_S)
 #define IDPF_RXD_EOF_SPLITQ		VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_M
-#define IDPF_RXD_EOF_SINGLEQ		BIT(VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_S)
+#define IDPF_RXD_EOF_SINGLEQ		VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_M
 
 #define IDPF_SINGLEQ_RX_BUF_DESC(rxq, i)	\
 	(&(((struct virtchnl2_singleq_rx_buf_desc *)((rxq)->desc_ring))[i]))
@@ -99,6 +105,10 @@ do {								\
 	(&(((struct virtchnl2_splitq_rx_buf_desc *)((rxq)->desc_ring))[i]))
 #define IDPF_SPLITQ_RX_BI_DESC(rxq, i) ((((rxq)->ring))[i])
 
+#define IDPF_BASE_TX_DESC(txq, i)	\
+	(&(((struct idpf_base_tx_desc *)((txq)->desc_ring))[i]))
+#define IDPF_BASE_TX_CTX_DESC(txq, i) \
+	(&(((struct idpf_base_tx_ctx_desc *)((txq)->desc_ring))[i]))
 #define IDPF_SPLITQ_TX_COMPLQ_DESC(txcq, i)	\
 	(&(((struct idpf_splitq_tx_compl_desc *)((txcq)->desc_ring))[i]))
 
@@ -190,8 +200,15 @@ struct idpf_buf_lifo {
 
 struct idpf_tx_offload_params {
 #define IDPF_TX_FLAGS_TSO			BIT(0)
+#define IDPF_TX_FLAGS_IPV4			BIT(1)
+#define IDPF_TX_FLAGS_IPV6			BIT(2)
+#define IDPF_TX_FLAGS_TUNNEL			BIT(3)
 	u32 tx_flags;
 
+	/* For single queue model offloads */
+	u32 hdr_offsets;
+	u32 cd_tunneling;
+
 	u32 tso_len;	/* total length of payload to segment */
 	u16 mss;
 	u16 tso_segs;	/* Number of segments to be sent */
@@ -212,6 +229,13 @@ struct idpf_tx_splitq_params {
 	struct idpf_tx_offload_params offload;
 };
 
+enum idpf_tx_ctx_desc_eipt_offload {
+	IDPF_TX_CTX_EXT_IP_NONE         = 0x0,
+	IDPF_TX_CTX_EXT_IP_IPV6         = 0x1,
+	IDPF_TX_CTX_EXT_IP_IPV4_NO_CSUM = 0x2,
+	IDPF_TX_CTX_EXT_IP_IPV4         = 0x3
+};
+
 /* Checksum offload bits decoded from the receive descriptor. */
 struct idpf_rx_csum_decoded {
 	u32 l3l4p : 1;
@@ -226,6 +250,11 @@ struct idpf_rx_csum_decoded {
 	u32 raw_csum : 16;
 };
 
+struct idpf_rx_extracted {
+	unsigned int size;
+	u16 rx_ptype;
+};
+
 #define IDPF_TX_COMPLQ_CLEAN_BUDGET	256
 #define IDPF_TX_MIN_PKT_LEN		17
 #define IDPF_TX_DESCS_FOR_SKB_DATA_PTR	1
@@ -716,6 +745,25 @@ static inline u32 idpf_size_to_txd_count(unsigned int size)
 	return DIV_ROUND_UP(size, IDPF_TX_MAX_DESC_DATA_ALIGNED);
 }
 
+/**
+ * idpf_tx_singleq_build_ctob - populate command tag offset and size
+ * @td_cmd: Command to be filled in desc
+ * @td_offset: Offset to be filled in desc
+ * @size: Size of the buffer
+ * @td_tag: td tag to be filled
+ *
+ * Returns the 64 bit value populated with the input parameters
+ */
+static inline __le64 idpf_tx_singleq_build_ctob(u64 td_cmd, u64 td_offset,
+						unsigned int size, u64 td_tag)
+{
+	return cpu_to_le64(IDPF_TX_DESC_DTYPE_DATA |
+			   (td_cmd << IDPF_TXD_QW1_CMD_S) |
+			   (td_offset << IDPF_TXD_QW1_OFFSET_S) |
+			   ((u64)size << IDPF_TXD_QW1_TX_BUF_SZ_S) |
+			   (td_tag << IDPF_TXD_QW1_L2TAG1_S));
+}
+
 void idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
 			      struct idpf_tx_splitq_params *params,
 			      u16 td_cmd, u16 size);
@@ -751,16 +799,40 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport);
 void idpf_vport_queues_rel(struct idpf_vport *vport);
 void idpf_vport_intr_rel(struct idpf_vport *vport);
 int idpf_vport_intr_alloc(struct idpf_vport *vport);
+void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector);
 void idpf_vport_intr_deinit(struct idpf_vport *vport);
 int idpf_vport_intr_init(struct idpf_vport *vport);
+enum pkt_hash_types idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *decoded);
 int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
+bool idpf_rx_can_reuse_page(struct idpf_rx_buf *rx_buf);
+void idpf_rx_get_buf_page(struct device *dev, struct idpf_rx_buf *rx_buf,
+			  const unsigned int size);
+void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
+		      unsigned int size);
+struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
+				      struct idpf_rx_buf *rx_buf,
+				      unsigned int size);
 bool idpf_init_rx_buf_hw_alloc(struct idpf_queue *rxq, struct idpf_rx_buf *buf);
 void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val);
+void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
+			   bool xmit_more);
+unsigned int idpf_size_to_txd_count(unsigned int size);
+netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb);
+void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
+			   struct idpf_tx_buf *first, u16 ring_idx);
+unsigned int idpf_tx_desc_count_required(struct idpf_queue *txq,
+					 struct sk_buff *skb);
+bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
+			unsigned int count);
+int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size);
 netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
 				 struct net_device *netdev);
+netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
+				  struct net_device *netdev);
 bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rxq,
 				      u16 cleaned_count);
+int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
 
 #endif /* !_IDPF_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index bda0d1d598bb..7f899d07a03f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2940,6 +2940,8 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	idpf_vport_calc_num_q_groups(vport);
 	idpf_vport_alloc_vec_indexes(vport);
 
+	vport->crc_enable = adapter->crc_enable;
+
 	mutex_init(&vport->stop_mutex);
 }
 
-- 
2.17.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
