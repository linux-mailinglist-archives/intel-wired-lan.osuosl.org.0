Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B293B6CEC8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:15:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4FF23841D3;
	Wed, 29 Mar 2023 15:15:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FF23841D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680102915;
	bh=K9S4Gf9mqWbs9qLsXCjTf6PpjLicZaiU3YfJV/0qTZI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=napLBsZVJAbJvuTlKVXEBG83hgOpx5/B+dQ/tZ9evHQHvjG2dx62R6vk06cYlWcNw
	 Of2ZLJ4X1pTiJhH0Du6Xy3CZrSKmkR+Ms6oFiPE9r5cYSd3FcoeNPJIci7IKIw5Q0y
	 KrAzxDMXMAx8SuMSxlqwSAGblpmE0es/m8em+TDjeh90HfVXVhk62QPkZQ2+EWTt8q
	 GLAtMcuMNXaIKMCww7raRNpK8UUW0Kyr1Urxnq/a0EqYl+/4JcYjMJeS79gxfLTDMW
	 25K9u8HQH3wHI2TW16RU76mITxjDcDNSKMWWmA4G+Gm2rDZGNd9HTJvupf1BIVrXE/
	 fdl4H2sDc0ETQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id plbZbzzt4Mzp; Wed, 29 Mar 2023 15:15:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 742738416A;
	Wed, 29 Mar 2023 15:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 742738416A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9437E1BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69C8284199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69C8284199
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rW8u9wiLqfxi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 14:07:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 096CC84196
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 096CC84196
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="342480816"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="342480816"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 07:06:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748791439"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748791439"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by fmsmga008.fm.intel.com with ESMTP; 29 Mar 2023 07:06:29 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Mar 2023 07:03:59 -0700
Message-Id: <20230329140404.1647925-11-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Mar 2023 15:14:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680098835; x=1711634835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tb+adqF5LPCKMGIoQZCzHrjQ2RF+juqozNjASmBBCNU=;
 b=XWtQ1o8ZnbqDaU4Gdg7QWoEuKFy8LAb1EfXZYEXIHzosTUiTG56pAYKM
 ZcDJc9NJWTiTEsq8XIaLk91/i9JZhlQiKk963sjqu3BXOiJQilx5ZCXty
 FwPmHSjlfnuMXcvRqMS9oj2MW7FbzG7ADer+181TcmF+oK5rep7VLQhAi
 zeEFVmVfHpKsGQCuThRIcu7Z5Vcd5Tku77tg4DA+xPSYvJ8RD8tTYFoAi
 YRiWoShk/Qgf7ENoYyFFtB+M832zabnSTMygssBr9vOn9Gy3u5IbkKFhs
 RXhVq2M+c4lFm6UjYcvg3g/uF8APBm2QDihwTcjPBZdJu0PtLrhRZFuAM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XWtQ1o8Z
Subject: [Intel-wired-lan] [PATCH net-next 10/15] idpf: add splitq start_xmit
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
 netdev@vger.kernel.org, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Add start_xmit support for split queue model. To start with, add the
necessary checks to linearize the skb if it uses more number of
buffers than the hardware supported limit. Stop the transmit queue
if there are no enough descriptors available for the skb to use or
if there we're going to potentially overrun the completion queue.
Finally prepare the descriptor with all the required
information and update the tail.

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
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   3 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   | 143 ++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 802 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 167 +++-
 5 files changed, 1108 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 35c1d0dcbbe4..a3f4463005bb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -13,6 +13,7 @@ struct idpf_vport_max_q;
 #include <linux/aer.h>
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
+#include <linux/bitfield.h>
 
 #include "virtchnl2.h"
 #include "idpf_lan_txrx.h"
@@ -516,7 +517,7 @@ static inline u8 idpf_get_min_tx_pkt_len(struct idpf_adapter *adapter)
 {
 	u8 pkt_len = adapter->caps.min_sso_packet_len;
 
-	return pkt_len ? pkt_len : IDPF_TX_MIN_LEN;
+	return pkt_len ? pkt_len : IDPF_TX_MIN_PKT_LEN;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
index aac1e7c1a301..5dd7f5367aab 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -56,6 +56,64 @@ enum idpf_rss_hash {
 	BIT_ULL(IDPF_HASH_NONF_UNICAST_IPV6_UDP) |		\
 	BIT_ULL(IDPF_HASH_NONF_MULTICAST_IPV6_UDP))
 
+#define IDPF_TXD_CTX_QW1_MSS_S		50
+#define IDPF_TXD_CTX_QW1_MSS_M		GENMASK_ULL(63, 50)
+#define IDPF_TXD_CTX_QW1_TSO_LEN_S	30
+#define IDPF_TXD_CTX_QW1_TSO_LEN_M	GENMASK_ULL(47, 30)
+#define IDPF_TXD_CTX_QW1_CMD_S		4
+#define IDPF_TXD_CTX_QW1_CMD_M		GENMASK_ULL(15, 4)
+#define IDPF_TXD_CTX_QW1_DTYPE_S	0
+#define IDPF_TXD_CTX_QW1_DTYPE_M	GENMASK_ULL(3, 0)
+#define IDPF_TXD_QW1_L2TAG1_S		48
+#define IDPF_TXD_QW1_L2TAG1_M		GENMASK_ULL(63, 48)
+#define IDPF_TXD_QW1_TX_BUF_SZ_S	34
+#define IDPF_TXD_QW1_TX_BUF_SZ_M	GENMASK_ULL(47, 34)
+#define IDPF_TXD_QW1_OFFSET_S		16
+#define IDPF_TXD_QW1_OFFSET_M		GENMASK_ULL(33, 16)
+#define IDPF_TXD_QW1_CMD_S		4
+#define IDPF_TXD_QW1_CMD_M		GENMASK_ULL(15, 4)
+#define IDPF_TXD_QW1_DTYPE_S		0
+#define IDPF_TXD_QW1_DTYPE_M		GENMASK_ULL(3, 0)
+
+enum idpf_tx_desc_dtype_value {
+	IDPF_TX_DESC_DTYPE_DATA				= 0,
+	IDPF_TX_DESC_DTYPE_CTX				= 1,
+	/* DTYPE 2 is reserved
+	 * DTYPE 3 is free for future use
+	 * DTYPE 4 is reserved
+	 */
+	IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX			= 5,
+	/* DTYPE 6 is reserved */
+	IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2		= 7,
+	/* DTYPE 8, 9 are free for future use
+	 * DTYPE 10 is reserved
+	 * DTYPE 11 is free for future use
+	 */
+	IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE		= 12,
+	/* DTYPE 13, 14 are free for future use */
+
+	/* DESC_DONE - HW has completed write-back of descriptor */
+	IDPF_TX_DESC_DTYPE_DESC_DONE			= 15,
+};
+
+enum idpf_tx_base_desc_cmd_bits {
+	IDPF_TX_DESC_CMD_EOP			= BIT(0),
+	IDPF_TX_DESC_CMD_RS			= BIT(1),
+	 /* only on VFs else RSVD */
+	IDPF_TX_DESC_CMD_ICRC			= BIT(2),
+	IDPF_TX_DESC_CMD_IL2TAG1		= BIT(3),
+	IDPF_TX_DESC_CMD_RSVD1			= BIT(4),
+	IDPF_TX_DESC_CMD_IIPT_IPV6		= BIT(5),
+	IDPF_TX_DESC_CMD_IIPT_IPV4		= BIT(6),
+	IDPF_TX_DESC_CMD_IIPT_IPV4_CSUM		= GENMASK(6, 5),
+	IDPF_TX_DESC_CMD_RSVD2			= BIT(7),
+	IDPF_TX_DESC_CMD_L4T_EOFT_TCP		= BIT(8),
+	IDPF_TX_DESC_CMD_L4T_EOFT_SCTP		= BIT(9),
+	IDPF_TX_DESC_CMD_L4T_EOFT_UDP		= GENMASK(9, 8),
+	IDPF_TX_DESC_CMD_RSVD3			= BIT(10),
+	IDPF_TX_DESC_CMD_RSVD4			= BIT(11),
+};
+
 /* Transmit descriptors  */
 /* splitq tx buf, singleq tx buf and singleq compl desc */
 struct idpf_base_tx_desc {
@@ -74,4 +132,89 @@ struct idpf_splitq_tx_compl_desc {
 	u8 rsvd; /* Reserved */
 }; /* writeback used with completion queues */
 
+/* Common cmd field defines for all desc except Flex Flow Scheduler (0x0C) */
+enum idpf_tx_flex_desc_cmd_bits {
+	IDPF_TX_FLEX_DESC_CMD_EOP			= BIT(0),
+	IDPF_TX_FLEX_DESC_CMD_RS			= BIT(1),
+	IDPF_TX_FLEX_DESC_CMD_RE			= BIT(2),
+	IDPF_TX_FLEX_DESC_CMD_IL2TAG1			= BIT(3),
+	IDPF_TX_FLEX_DESC_CMD_DUMMY			= BIT(4),
+	IDPF_TX_FLEX_DESC_CMD_CS_EN			= BIT(5),
+	IDPF_TX_FLEX_DESC_CMD_FILT_AU_EN		= BIT(6),
+	IDPF_TX_FLEX_DESC_CMD_FILT_AU_EVICT		= BIT(7),
+};
+
+struct idpf_flex_tx_desc {
+	__le64 buf_addr;	/* Packet buffer address */
+	struct {
+#define IDPF_FLEX_TXD_QW1_DTYPE_S	0
+#define IDPF_FLEX_TXD_QW1_DTYPE_M	GENMASK(4, 0)
+#define IDPF_FLEX_TXD_QW1_CMD_S		5
+#define IDPF_FLEX_TXD_QW1_CMD_M		GENMASK(15, 5)
+		__le16 cmd_dtype;
+		/* DTYPE=IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2 (0x07) */
+		struct {
+			__le16 l2tag1;
+			__le16 l2tag2;
+		} l2tags;
+		__le16 buf_size;
+	} qw1;
+};
+
+struct idpf_flex_tx_sched_desc {
+	__le64 buf_addr;	/* Packet buffer address */
+
+	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE_16B (0x0C) */
+	struct {
+		u8 cmd_dtype;
+#define IDPF_TXD_FLEX_FLOW_DTYPE_M	GENMASK(4, 0)
+#define IDPF_TXD_FLEX_FLOW_CMD_EOP	BIT(5)
+#define IDPF_TXD_FLEX_FLOW_CMD_CS_EN	BIT(6)
+#define IDPF_TXD_FLEX_FLOW_CMD_RE	BIT(7)
+
+		/* [23:23] Horizon Overflow bit, [22:0] timestamp */
+		u8 ts[3];
+#define IDPF_TXD_FLOW_SCH_HORIZON_OVERFLOW_M	BIT(7)
+
+		__le16 compl_tag;
+		__le16 rxr_bufsize;
+#define IDPF_TXD_FLEX_FLOW_RXR		BIT(14)
+#define IDPF_TXD_FLEX_FLOW_BUFSIZE_M	GENMASK(13, 0)
+	} qw1;
+};
+
+/* Common cmd fields for all flex context descriptors
+ * Note: these defines already account for the 5 bit dtype in the cmd_dtype
+ * field
+ */
+enum idpf_tx_flex_ctx_desc_cmd_bits {
+	IDPF_TX_FLEX_CTX_DESC_CMD_TSO			= BIT(5),
+	IDPF_TX_FLEX_CTX_DESC_CMD_TSYN_EN		= BIT(6),
+	IDPF_TX_FLEX_CTX_DESC_CMD_L2TAG2		= BIT(7),
+	IDPF_TX_FLEX_CTX_DESC_CMD_SWTCH_UPLNK		= BIT(9),
+	IDPF_TX_FLEX_CTX_DESC_CMD_SWTCH_LOCAL		= BIT(10),
+	IDPF_TX_FLEX_CTX_DESC_CMD_SWTCH_TARGETVSI	= GENMASK(10, 9),
+};
+
+/* Standard flex descriptor TSO context quad word */
+struct idpf_flex_tx_tso_ctx_qw {
+	__le32 flex_tlen;
+#define IDPF_TXD_FLEX_CTX_TLEN_M	GENMASK(17, 0)
+#define IDPF_TXD_FLEX_TSO_CTX_FLEX_S	24
+	__le16 mss_rt;
+#define IDPF_TXD_FLEX_CTX_MSS_RT_M	GENMASK(13, 0)
+	u8 hdr_len;
+	u8 flex;
+};
+
+struct idpf_flex_tx_ctx_desc {
+	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX (0x05) */
+	struct {
+		struct idpf_flex_tx_tso_ctx_qw qw0;
+		struct {
+			__le16 cmd_dtype;
+			u8 flex[6];
+		} qw1;
+	} tso;
+};
 #endif /* _IDPF_LAN_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 71b50d0dc3bc..8d7a378be577 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1730,6 +1730,7 @@ void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
 static const struct net_device_ops idpf_netdev_ops_splitq = {
 	.ndo_open = idpf_open,
 	.ndo_stop = idpf_stop,
+	.ndo_start_xmit = idpf_tx_splitq_start,
 };
 
 static const struct net_device_ops idpf_netdev_ops_singleq = {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index da8f528d2304..61a21620fc59 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -10,7 +10,24 @@
  */
 static void idpf_tx_buf_rel(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf)
 {
+	if (tx_buf->skb) {
+		if (dma_unmap_len(tx_buf, len))
+			dma_unmap_single(tx_q->dev,
+					 dma_unmap_addr(tx_buf, dma),
+					 dma_unmap_len(tx_buf, len),
+					 DMA_TO_DEVICE);
+		dev_kfree_skb_any(tx_buf->skb);
+	} else if (dma_unmap_len(tx_buf, len)) {
+		dma_unmap_page(tx_q->dev,
+			       dma_unmap_addr(tx_buf, dma),
+			       dma_unmap_len(tx_buf, len),
+			       DMA_TO_DEVICE);
+	}
+
+	tx_buf->next_to_watch = NULL;
+	tx_buf->skb = NULL;
 	tx_buf->compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+	dma_unmap_len_set(tx_buf, len, 0);
 }
 
 /**
@@ -1450,6 +1467,791 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_tx_splitq_build_ctb - populate command tag and size for queue
+ * based scheduling descriptors
+ * @desc: descriptor to populate
+ * @params: pointer to tx params struct
+ * @td_cmd: command to be filled in desc
+ * @size: size of buffer
+ */
+void idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
+			      struct idpf_tx_splitq_params *params,
+			      u16 td_cmd, u16 size)
+{
+	desc->q.qw1.cmd_dtype =
+		cpu_to_le16(params->dtype & IDPF_FLEX_TXD_QW1_DTYPE_M);
+	desc->q.qw1.cmd_dtype |=
+		cpu_to_le16((td_cmd << IDPF_FLEX_TXD_QW1_CMD_S) &
+			    IDPF_FLEX_TXD_QW1_CMD_M);
+	desc->q.qw1.buf_size = cpu_to_le16((u16)size);
+	desc->q.qw1.l2tags.l2tag1 = cpu_to_le16(params->td_tag);
+}
+
+/**
+ * idpf_tx_splitq_build_flow_desc - populate command tag and size for flow
+ * scheduling descriptors
+ * @desc: descriptor to populate
+ * @params: pointer to tx params struct
+ * @td_cmd: command to be filled in desc
+ * @size: size of buffer
+ */
+void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
+				    struct idpf_tx_splitq_params *params,
+				    u16 td_cmd, u16 size)
+{
+	desc->flow.qw1.cmd_dtype = (u16)params->dtype | td_cmd;
+	desc->flow.qw1.rxr_bufsize = cpu_to_le16((u16)size);
+	desc->flow.qw1.compl_tag = cpu_to_le16(params->compl_tag);
+}
+
+/**
+ * __idpf_tx_maybe_stop_common - 2nd level check for common Tx stop conditions
+ * @tx_q: the queue to be checked
+ * @size: the size buffer we want to assure is available
+ *
+ * Returns -EBUSY if a stop is needed, else 0
+ */
+static int __idpf_tx_maybe_stop_common(struct idpf_queue *tx_q,
+				       unsigned int size)
+{
+	netif_stop_subqueue(tx_q->vport->netdev, tx_q->idx);
+
+	/* Memory barrier before checking head and tail */
+	smp_mb();
+
+	/* Check again in a case another CPU has just made room available. */
+	if (likely(IDPF_DESC_UNUSED(tx_q) < size))
+		return -EBUSY;
+
+	/* A reprieve! - use start_subqueue because it doesn't call schedule */
+	netif_start_subqueue(tx_q->vport->netdev, tx_q->idx);
+
+	return 0;
+}
+
+/**
+ * idpf_tx_maybe_stop_common - 1st level check for common Tx stop conditions
+ * @tx_q: the queue to be checked
+ * @size: number of descriptors we want to assure is available
+ *
+ * Returns 0 if stop is not needed
+ */
+static int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
+{
+	if (likely(IDPF_DESC_UNUSED(tx_q) >= size))
+		return 0;
+
+	u64_stats_update_begin(&tx_q->stats_sync);
+	u64_stats_inc(&tx_q->q_stats.tx.q_busy);
+	u64_stats_update_end(&tx_q->stats_sync);
+
+	return __idpf_tx_maybe_stop_common(tx_q, size);
+}
+
+/**
+ * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop conditions
+ * @tx_q: the queue to be checked
+ * @descs_needed: number of descriptors required for this packet
+ *
+ * Returns 0 if stop is not needed
+ */
+static int idpf_tx_maybe_stop_splitq(struct idpf_queue *tx_q,
+				     unsigned int descs_needed)
+{
+	if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
+		goto splitq_stop;
+
+	/* If there are too many outstanding completions expected on the
+	 * completion queue, stop the TX queue to give the device some time to
+	 * catch up
+	 */
+	if (unlikely(IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
+		     IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq)))
+		goto splitq_stop;
+
+	/* Also check for available book keeping buffers; if we are low, stop
+	 * the queue to wait for more completions
+	 */
+	if (unlikely(IDPF_TX_BUF_RSV_LOW(tx_q)))
+		goto splitq_stop;
+
+	return 0;
+
+splitq_stop:
+	u64_stats_update_begin(&tx_q->stats_sync);
+	u64_stats_inc(&tx_q->q_stats.tx.q_busy);
+	u64_stats_update_end(&tx_q->stats_sync);
+	netif_stop_subqueue(tx_q->vport->netdev, tx_q->idx);
+
+	return -EBUSY;
+}
+
+/**
+ * idpf_tx_buf_hw_update - Store the new tail value
+ * @tx_q: queue to bump
+ * @val: new tail index
+ * @xmit_more: more skb's pending
+ *
+ * The naming here is special in that 'hw' signals that this function is about
+ * to do a register write to update our queue status. We know this can only
+ * mean tail here as HW should be owning head for TX.
+ */
+static void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
+				  bool xmit_more)
+{
+	struct netdev_queue *nq;
+
+	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	tx_q->next_to_use = val;
+
+	idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED);
+
+	/* Force memory writes to complete before letting h/w
+	 * know there are new descriptors to fetch.  (Only
+	 * applicable for weak-ordered memory model archs,
+	 * such as IA-64).
+	 */
+	wmb();
+
+	/* notify HW of packet */
+	if (netif_xmit_stopped(nq) || !xmit_more)
+		writel(val, tx_q->tail);
+}
+
+/**
+ * idpf_tx_desc_count_required - calculate number of Tx descriptors needed
+ * @skb: send buffer
+ *
+ * Returns number of data descriptors needed for this skb.
+ */
+static unsigned int idpf_tx_desc_count_required(struct sk_buff *skb)
+{
+	const struct skb_shared_info *shinfo;
+	unsigned int count = 0, i;
+
+	count += !!skb_headlen(skb);
+
+	if (!skb_is_nonlinear(skb))
+		return count;
+
+	shinfo = skb_shinfo(skb);
+	for (i = 0; i < shinfo->nr_frags; i++) {
+		unsigned int size;
+
+		size = skb_frag_size(&shinfo->frags[i]);
+
+		/* We only need to use the idpf_size_to_txd_count check if the
+		 * fragment is going to span multiple descriptors,
+		 * i.e. size >= 16K.
+		 */
+		if (size >= SZ_16K)
+			count += idpf_size_to_txd_count(size);
+		else
+			count++;
+	}
+
+	return count;
+}
+
+/**
+ * idpf_tx_dma_map_error - handle TX DMA map errors
+ * @txq: queue to send buffer on
+ * @skb: send buffer
+ * @first: original first buffer info buffer for packet
+ * @idx: starting point on ring to unwind
+ */
+static void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
+				  struct idpf_tx_buf *first, u16 idx)
+{
+	u64_stats_update_begin(&txq->stats_sync);
+	u64_stats_inc(&txq->q_stats.tx.dma_map_errs);
+	u64_stats_update_end(&txq->stats_sync);
+
+	/* clear dma mappings for failed tx_buf map */
+	for (;;) {
+		struct idpf_tx_buf *tx_buf;
+
+		tx_buf = &txq->tx_buf[idx];
+		idpf_tx_buf_rel(txq, tx_buf);
+		if (tx_buf == first)
+			break;
+		if (idx == 0)
+			idx = txq->desc_count;
+		idx--;
+	}
+
+	if (skb_is_gso(skb)) {
+		union idpf_tx_flex_desc *tx_desc;
+
+		/* If we failed a DMA mapping for a TSO packet, we will have
+		 * used one additional descriptor for a context
+		 * descriptor. Reset that here.
+		 */
+		tx_desc = IDPF_FLEX_TX_DESC(txq, idx);
+		memset(tx_desc, 0, sizeof(struct idpf_flex_tx_ctx_desc));
+		if (idx == 0)
+			idx = txq->desc_count;
+		idx--;
+	}
+
+	/* Update tail in case netdev_xmit_more was previously true */
+	idpf_tx_buf_hw_update(txq, idx, false);
+}
+
+/**
+ * idpf_tx_splitq_bump_ntu - adjust NTU and generation
+ * @txq: the tx ring to wrap
+ * @ntu: ring index to bump
+ */
+static inline unsigned int idpf_tx_splitq_bump_ntu(struct idpf_queue *txq,
+						   u16 ntu)
+{
+	ntu++;
+
+	if (ntu == txq->desc_count) {
+		ntu = 0;
+		txq->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(txq);
+	}
+
+	return ntu;
+}
+
+/**
+ * idpf_tx_splitq_map - Build the Tx flex descriptor
+ * @tx_q: queue to send buffer on
+ * @params: pointer to splitq params struct
+ * @first: first buffer info buffer to use
+ *
+ * This function loops over the skb data pointed to by *first
+ * and gets a physical address for each memory location and programs
+ * it and the length into the transmit flex descriptor.
+ */
+static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
+			       struct idpf_tx_splitq_params *params,
+			       struct idpf_tx_buf *first)
+{
+	union idpf_tx_flex_desc *tx_desc;
+	unsigned int data_len, size;
+	struct idpf_tx_buf *tx_buf;
+	u16 i = tx_q->next_to_use;
+	struct netdev_queue *nq;
+	struct sk_buff *skb;
+	skb_frag_t *frag;
+	u16 td_cmd = 0;
+	dma_addr_t dma;
+
+	skb = first->skb;
+
+	td_cmd = params->offload.td_cmd;
+
+	data_len = skb->data_len;
+	size = skb_headlen(skb);
+
+	tx_desc = IDPF_FLEX_TX_DESC(tx_q, i);
+
+	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
+
+	tx_buf = first;
+
+	params->compl_tag =
+		(tx_q->compl_tag_cur_gen << tx_q->compl_tag_gen_s) | i;
+
+	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
+		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+
+		if (dma_mapping_error(tx_q->dev, dma))
+			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+
+		tx_buf->compl_tag = params->compl_tag;
+
+		/* record length, and DMA address */
+		dma_unmap_len_set(tx_buf, len, size);
+		dma_unmap_addr_set(tx_buf, dma, dma);
+
+		/* buf_addr is in same location for both desc types */
+		tx_desc->q.buf_addr = cpu_to_le64(dma);
+
+		/* The stack can send us fragments that are too large for a
+		 * single descriptor i.e. frag size > 16K-1. We will need to
+		 * split the fragment across multiple descriptors in this case.
+		 * To adhere to HW alignment restrictions, the fragment needs
+		 * to be split such that the first chunk ends on a 4K boundary
+		 * and all subsequent chunks start on a 4K boundary. We still
+		 * want to send as much data as possible though, so our
+		 * intermediate descriptor chunk size will be 12K.
+		 *
+		 * For example, consider a 32K fragment mapped to DMA addr 2600.
+		 * ------------------------------------------------------------
+		 * |                    frag_size = 32K                       |
+		 * ------------------------------------------------------------
+		 * |2600		  |16384	    |28672
+		 *
+		 * 3 descriptors will be used for this fragment. The HW expects
+		 * the descriptors to contain the following:
+		 * ------------------------------------------------------------
+		 * | size = 13784         | size = 12K      | size = 6696     |
+		 * | dma = 2600           | dma = 16384     | dma = 28672     |
+		 * ------------------------------------------------------------
+		 *
+		 * We need to first adjust the max_data for the first chunk so
+		 * that it ends on a 4K boundary. By negating the value of the
+		 * DMA address and taking only the low order bits, we're
+		 * effectively calculating
+		 *	4K - (DMA addr lower order bits) = bytes to next boundary.
+		 *
+		 * Add that to our base aligned max_data (12K) and we have
+		 * our first chunk size. In the example above,
+		 *	13784 = 12K + (4096-2600)
+		 *
+		 * After guaranteeing the first chunk ends on a 4K boundary, we
+		 * will give the intermediate descriptors 12K chunks and
+		 * whatever is left to the final descriptor. This ensures that
+		 * all descriptors used for the remaining chunks of the
+		 * fragment start on a 4K boundary and we use as few
+		 * descriptors as possible.
+		 */
+		max_data += -dma & (IDPF_TX_MAX_READ_REQ_SIZE - 1);
+		while (unlikely(size > IDPF_TX_MAX_DESC_DATA)) {
+			idpf_tx_splitq_build_desc(tx_desc, params, td_cmd,
+						  max_data);
+
+			tx_desc++;
+			i++;
+
+			if (i == tx_q->desc_count) {
+				tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+				i = 0;
+				tx_q->compl_tag_cur_gen =
+					IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
+			}
+
+			/* Since this packet has a buffer that is going to span
+			 * multiple descriptors, it's going to leave holes in
+			 * to the TX buffer ring. To ensure these holes do not
+			 * cause issues in the cleaning routines, we will clear
+			 * them of any stale data and assign them the same
+			 * completion tag as the current packet. Then when the
+			 * packet is being cleaned, the cleaning routines will
+			 * simply pass over these holes and finish cleaning the
+			 * rest of the packet.
+			 */
+			memset(&tx_q->tx_buf[i], 0, sizeof(struct idpf_tx_buf));
+			tx_q->tx_buf[i].compl_tag = params->compl_tag;
+
+			/* Adjust the DMA offset and the remaining size of the
+			 * fragment.  On the first iteration of this loop,
+			 * max_data will be >= 12K and <= 16K-1.  On any
+			 * subsequent iteration of this loop, max_data will
+			 * always be 12K.
+			 */
+			dma += max_data;
+			size -= max_data;
+
+			/* Reset max_data since remaining chunks will be 12K at most */
+			max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+
+			/* buf_addr is in same location for both desc types */
+			tx_desc->q.buf_addr = cpu_to_le64(dma);
+		}
+
+		if (!data_len)
+			break;
+
+		idpf_tx_splitq_build_desc(tx_desc, params, td_cmd, size);
+		tx_desc++;
+		i++;
+
+		if (i == tx_q->desc_count) {
+			tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+			i = 0;
+			tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
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
+	/* record SW timestamp if HW timestamp is not available */
+	skb_tx_timestamp(skb);
+
+	/* write last descriptor with RS and EOP bits */
+	td_cmd |= params->eop_cmd;
+	idpf_tx_splitq_build_desc(tx_desc, params, td_cmd, size);
+	i = idpf_tx_splitq_bump_ntu(tx_q, i);
+
+	/* set next_to_watch value indicating a packet is present */
+	first->next_to_watch = tx_desc;
+
+	tx_q->txq_grp->num_completions_pending++;
+
+	/* record bytecount for BQL */
+	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	netdev_tx_sent_queue(nq, first->bytecount);
+
+	idpf_tx_buf_hw_update(tx_q, i, netdev_xmit_more());
+}
+
+/**
+ * idpf_tso - computes mss and TSO length to prepare for TSO
+ * @skb: pointer to skb
+ * @off: pointer to struct that holds offload parameters
+ *
+ * Returns error (negative) if TSO was requested but cannot be applied to the given skb,
+ * 0 if TSO does not apply to the given skb, or 1 otherwise.
+ */
+static int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
+{
+	const struct skb_shared_info *shinfo = skb_shinfo(skb);
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
+	u32 paylen, l4_start;
+	int err;
+
+	if (!shinfo->gso_size)
+		return 0;
+
+	err = skb_cow_head(skb, 0);
+	if (err < 0)
+		return err;
+
+	ip.hdr = skb_network_header(skb);
+	l4.hdr = skb_transport_header(skb);
+
+	/* initialize outer IP header fields */
+	if (ip.v4->version == 4) {
+		ip.v4->tot_len = 0;
+		ip.v4->check = 0;
+	} else if (ip.v6->version == 6) {
+		ip.v6->payload_len = 0;
+	}
+
+	l4_start = skb_transport_offset(skb);
+
+	/* remove payload length from checksum */
+	paylen = skb->len - l4_start;
+
+	switch (shinfo->gso_type & ~SKB_GSO_DODGY) {
+	case SKB_GSO_TCPV4:
+	case SKB_GSO_TCPV6:
+		csum_replace_by_diff(&l4.tcp->check,
+				     (__force __wsum)htonl(paylen));
+		off->tso_hdr_len = __tcp_hdrlen(l4.tcp) + l4_start;
+		break;
+	case SKB_GSO_UDP_L4:
+		csum_replace_by_diff(&l4.udp->check,
+				     (__force __wsum)htonl(paylen));
+		/* compute length of segmentation header */
+		off->tso_hdr_len = sizeof(struct udphdr) + l4_start;
+		l4.udp->len = htons(shinfo->gso_size + sizeof(struct udphdr));
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	off->tso_len = skb->len - off->tso_hdr_len;
+	off->mss = shinfo->gso_size;
+	off->tso_segs = shinfo->gso_segs;
+
+	off->tx_flags |= IDPF_TX_FLAGS_TSO;
+
+	return 1;
+}
+
+/**
+ * __idpf_chk_linearize - Check skb is not using too many buffers
+ * @skb: send buffer
+ * @max_bufs: maximum number of buffers
+ *
+ * For TSO we need to count the TSO header and segment payload separately.  As
+ * such we need to check cases where we have max_bufs-1 fragments or more as we
+ * can potentially require max_bufs+1 DMA transactions, 1 for the TSO header, 1
+ * for the segment payload in the first descriptor, and another max_buf-1 for
+ * the fragments.
+ */
+static bool __idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs)
+{
+	const struct skb_shared_info *shinfo = skb_shinfo(skb);
+	const skb_frag_t *frag, *stale;
+	int nr_frags, sum;
+
+	/* no need to check if number of frags is less than max_bufs - 1 */
+	nr_frags = shinfo->nr_frags;
+	if (nr_frags < (max_bufs - 1))
+		return false;
+
+	/* We need to walk through the list and validate that each group
+	 * of max_bufs-2 fragments totals at least gso_size.
+	 */
+	nr_frags -= max_bufs - 2;
+	frag = &shinfo->frags[0];
+
+	/* Initialize size to the negative value of gso_size minus 1.  We use
+	 * this as the worst case scenario in which the frag ahead of us only
+	 * provides one byte which is why we are limited to max_bufs-2
+	 * descriptors for a single transmit as the header and previous
+	 * fragment are already consuming 2 descriptors.
+	 */
+	sum = 1 - shinfo->gso_size;
+
+	/* Add size of frags 0 through 4 to create our initial sum */
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+
+	/* Walk through fragments adding latest fragment, testing it, and
+	 * then removing stale fragments from the sum.
+	 */
+	for (stale = &shinfo->frags[0];; stale++) {
+		int stale_size = skb_frag_size(stale);
+
+		sum += skb_frag_size(frag++);
+
+		/* The stale fragment may present us with a smaller
+		 * descriptor than the actual fragment size. To account
+		 * for that we need to remove all the data on the front and
+		 * figure out what the remainder would be in the last
+		 * descriptor associated with the fragment.
+		 */
+		if (stale_size > IDPF_TX_MAX_DESC_DATA) {
+			int align_pad = -(skb_frag_off(stale)) &
+					(IDPF_TX_MAX_READ_REQ_SIZE - 1);
+
+			sum -= align_pad;
+			stale_size -= align_pad;
+
+			do {
+				sum -= IDPF_TX_MAX_DESC_DATA_ALIGNED;
+				stale_size -= IDPF_TX_MAX_DESC_DATA_ALIGNED;
+			} while (stale_size > IDPF_TX_MAX_DESC_DATA);
+		}
+
+		/* if sum is negative we failed to make sufficient progress */
+		if (sum < 0)
+			return true;
+
+		if (!nr_frags--)
+			break;
+
+		sum -= stale_size;
+	}
+
+	return false;
+}
+
+/**
+ * idpf_chk_linearize - Check if skb exceeds max descriptors per packet
+ * @skb: send buffer
+ * @max_bufs: maximum scatter gather buffers for single packet
+ * @count: number of buffers this packet needs
+ *
+ * Make sure we don't exceed maximum scatter gather buffers for a single
+ * packet. We have to do some special checking around the boundary (max_bufs-1)
+ * if TSO is on since we need count the TSO header and payload separately.
+ * E.g.: a packet with 7 fragments can require 9 DMA transactions; 1 for TSO
+ * header, 1 for segment payload, and then 7 for the fragments.
+ */
+static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
+			       unsigned int count)
+{
+	if (likely(count < max_bufs))
+		return false;
+	if (skb_is_gso(skb))
+		return __idpf_chk_linearize(skb, max_bufs);
+
+	return count > max_bufs;
+}
+
+/**
+ * idpf_tx_splitq_get_ctx_desc - grab next desc and update buffer ring
+ * @txq: queue to put context descriptor on
+ *
+ * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
+ * ring entry to reflect that this index is a context descriptor
+ */
+static struct idpf_flex_tx_ctx_desc *
+idpf_tx_splitq_get_ctx_desc(struct idpf_queue *txq)
+{
+	struct idpf_flex_tx_ctx_desc *desc;
+	int i = txq->next_to_use;
+
+	memset(&txq->tx_buf[i], 0, sizeof(struct idpf_tx_buf));
+	txq->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+
+	/* grab the next descriptor */
+	desc = IDPF_FLEX_TX_CTX_DESC(txq, i);
+	txq->next_to_use = idpf_tx_splitq_bump_ntu(txq, i);
+
+	return desc;
+}
+
+/**
+ * idpf_tx_drop_skb - free the SKB and bump tail if necessary
+ * @tx_q: queue to send buffer on
+ * @skb: pointer to skb
+ */
+static netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb)
+{
+	u64_stats_update_begin(&tx_q->stats_sync);
+	u64_stats_inc(&tx_q->q_stats.tx.skb_drops);
+	u64_stats_update_end(&tx_q->stats_sync);
+
+	idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+
+	dev_kfree_skb(skb);
+
+	return NETDEV_TX_OK;
+}
+
+/**
+ * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
+ * @skb: send buffer
+ * @tx_q: queue to send buffer on
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
+					struct idpf_queue *tx_q)
+{
+	struct idpf_tx_splitq_params tx_params = { };
+	struct idpf_tx_buf *first;
+	unsigned int count;
+	int tso;
+
+	count = idpf_tx_desc_count_required(skb);
+	if (idpf_chk_linearize(skb, tx_q->tx_max_bufs, count)) {
+		if (__skb_linearize(skb))
+			return idpf_tx_drop_skb(tx_q, skb);
+
+		count = idpf_size_to_txd_count(skb->len);
+		u64_stats_update_begin(&tx_q->stats_sync);
+		u64_stats_inc(&tx_q->q_stats.tx.linearize);
+		u64_stats_update_end(&tx_q->stats_sync);
+	}
+
+	tso = idpf_tso(skb, &tx_params.offload);
+	if (unlikely(tso < 0))
+		return idpf_tx_drop_skb(tx_q, skb);
+
+	/* Check for splitq specific TX resources */
+	count += (IDPF_TX_DESCS_PER_CACHE_LINE + tso);
+	if (idpf_tx_maybe_stop_splitq(tx_q, count)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+
+		return NETDEV_TX_BUSY;
+	}
+
+	if (tso) {
+		/* If tso is needed, set up context desc */
+		struct idpf_flex_tx_ctx_desc *ctx_desc =
+			idpf_tx_splitq_get_ctx_desc(tx_q);
+
+		ctx_desc->tso.qw1.cmd_dtype =
+				cpu_to_le16(IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX |
+					    IDPF_TX_FLEX_CTX_DESC_CMD_TSO);
+		ctx_desc->tso.qw0.flex_tlen =
+				cpu_to_le32(tx_params.offload.tso_len &
+					    IDPF_TXD_FLEX_CTX_TLEN_M);
+		ctx_desc->tso.qw0.mss_rt =
+				cpu_to_le16(tx_params.offload.mss &
+					    IDPF_TXD_FLEX_CTX_MSS_RT_M);
+		ctx_desc->tso.qw0.hdr_len = tx_params.offload.tso_hdr_len;
+
+		u64_stats_update_begin(&tx_q->stats_sync);
+		u64_stats_inc(&tx_q->q_stats.tx.lso_pkts);
+		u64_stats_update_end(&tx_q->stats_sync);
+	}
+
+	/* record the location of the first descriptor for this packet */
+	first = &tx_q->tx_buf[tx_q->next_to_use];
+	first->skb = skb;
+
+	if (tso) {
+		first->gso_segs = tx_params.offload.tso_segs;
+		first->bytecount = skb->len +
+			((first->gso_segs - 1) * tx_params.offload.tso_hdr_len);
+	} else {
+		first->gso_segs = 1;
+		first->bytecount = max_t(unsigned int, skb->len, ETH_ZLEN);
+	}
+
+	if (test_bit(__IDPF_Q_FLOW_SCH_EN, tx_q->flags)) {
+		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
+		tx_params.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;
+		/* Set the RE bit to catch any packets that may have not been
+		 * stashed during RS completion cleaning. MIN_GAP is set to
+		 * MIN_RING size to ensure it will be set at least once each
+		 * time around the ring.
+		 */
+		if (!(tx_q->next_to_use % IDPF_TX_SPLITQ_RE_MIN_GAP)) {
+			tx_params.eop_cmd |= IDPF_TXD_FLEX_FLOW_CMD_RE;
+			tx_q->txq_grp->num_completions_pending++;
+		}
+
+		if (skb->ip_summed == CHECKSUM_PARTIAL)
+			tx_params.offload.td_cmd |= IDPF_TXD_FLEX_FLOW_CMD_CS_EN;
+
+	} else {
+		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2;
+		tx_params.eop_cmd = IDPF_TXD_LAST_DESC_CMD;
+
+		if (skb->ip_summed == CHECKSUM_PARTIAL)
+			tx_params.offload.td_cmd |= IDPF_TX_FLEX_DESC_CMD_CS_EN;
+	}
+
+	idpf_tx_splitq_map(tx_q, &tx_params, first);
+
+	return NETDEV_TX_OK;
+}
+
+/**
+ * idpf_tx_splitq_start - Selects the right Tx queue to send buffer
+ * @skb: send buffer
+ * @netdev: network interface device structure
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
+				 struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_queue *tx_q;
+
+	if (unlikely(skb_get_queue_mapping(skb) >= vport->num_txq)) {
+		dev_kfree_skb_any(skb);
+
+		return NETDEV_TX_OK;
+	}
+
+	tx_q = vport->txqs[skb_get_queue_mapping(skb)];
+
+	/* hardware can't handle really short frames, hardware padding works
+	 * beyond this point
+	 */
+	if (skb_put_padto(skb, tx_q->tx_min_pkt_len)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+
+		return NETDEV_TX_OK;
+	}
+
+	return idpf_tx_splitq_frame(skb, tx_q);
+}
+
 /**
  * idpf_vport_intr_clean_queues - MSIX mode Interrupt Handler
  * @irq: interrupt number
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 6fdfd7e25e13..bb05f68afb40 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1,6 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /* Copyright (C) 2023 Intel Corporation */
 
+#include <net/tcp.h>
+
 #ifndef _IDPF_TXRX_H_
 #define _IDPF_TXRX_H_
 
@@ -54,7 +56,7 @@
  */
 #define IDPF_RX_BUFQ_DESC_COUNT(RXD, NUM_BUFQ)	((RXD) / (NUM_BUFQ))
 
-#define IDPF_RX_BUFQ_WORKING_SET(R)		((R)->desc_count - 1)
+#define IDPF_RX_BUFQ_WORKING_SET(rxq)		((rxq)->desc_count - 1)
 
 #define IDPF_RX_BUF_2048			2048
 #define IDPF_RX_BUF_4096			4096
@@ -64,16 +66,59 @@
 #define IDPF_PACKET_HDR_PAD	\
 	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
 
-#define IDPF_SINGLEQ_RX_BUF_DESC(R, i)	\
-	(&(((struct virtchnl2_singleq_rx_buf_desc *)((R)->desc_ring))[i]))
-#define IDPF_SPLITQ_RX_BUF_DESC(R, i)	\
-	(&(((struct virtchnl2_splitq_rx_buf_desc *)((R)->desc_ring))[i]))
+/* Minimum number of descriptors between 2 descriptors with the RE bit set;
+ * only relevant in flow scheduling mode
+ */
+#define IDPF_TX_SPLITQ_RE_MIN_GAP	64
+
+#define IDPF_SINGLEQ_RX_BUF_DESC(rxq, i)	\
+	(&(((struct virtchnl2_singleq_rx_buf_desc *)((rxq)->desc_ring))[i]))
+#define IDPF_SPLITQ_RX_BUF_DESC(rxq, i)	\
+	(&(((struct virtchnl2_splitq_rx_buf_desc *)((rxq)->desc_ring))[i]))
+
+#define IDPF_FLEX_TX_DESC(txq, i) \
+	(&(((union idpf_tx_flex_desc *)((txq)->desc_ring))[i]))
+#define IDPF_FLEX_TX_CTX_DESC(txq, i)	\
+	(&(((struct idpf_flex_tx_ctx_desc *)((txq)->desc_ring))[i]))
+
+#define IDPF_DESC_UNUSED(txq)     \
+	((((txq)->next_to_clean > (txq)->next_to_use) ? 0 : (txq)->desc_count) + \
+	(txq)->next_to_clean - (txq)->next_to_use - 1)
+
+#define IDPF_TX_BUF_RSV_UNUSED(txq)	((txq)->buf_stack.top)
+#define IDPF_TX_BUF_RSV_LOW(txq)	(IDPF_TX_BUF_RSV_UNUSED(txq) < \
+					 (txq)->desc_count >> 2)
+
+#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)	((txcq)->desc_count >> 1)
+/* Determine the absolute number of completions pending, i.e. the number of
+ * completions that are expected to arrive on the TX completion queue.
+ */
+#define IDPF_TX_COMPLQ_PENDING(txq)	\
+	(((txq)->num_completions_pending >= (txq)->complq->num_completions ? \
+	0 : U64_MAX) + \
+	(txq)->num_completions_pending - (txq)->complq->num_completions)
 
 #define IDPF_TX_SPLITQ_COMPL_TAG_WIDTH	16
+/* Adjust the generation for the completion tag and wrap if necessary */
+#define IDPF_TX_ADJ_COMPL_TAG_GEN(txq) \
+	((++(txq)->compl_tag_cur_gen) >= (txq)->compl_tag_gen_max ? \
+	0 : (txq)->compl_tag_cur_gen)
+
+#define IDPF_TXD_LAST_DESC_CMD (IDPF_TX_DESC_CMD_EOP | IDPF_TX_DESC_CMD_RS)
 
-#define IDPF_TX_MIN_LEN			17
+union idpf_tx_flex_desc {
+	struct idpf_flex_tx_desc q; /* queue based scheduling */
+	struct idpf_flex_tx_sched_desc flow; /* flow based scheduling */
+};
 
 struct idpf_tx_buf {
+	void *next_to_watch;
+	struct sk_buff *skb;
+	DEFINE_DMA_UNMAP_ADDR(dma);
+	DEFINE_DMA_UNMAP_LEN(len);
+	unsigned int bytecount;
+	unsigned short gso_segs;
+
 	union {
 		/* Splitq only: Unique identifier for a buffer; used to compare
 		 * with completion tag returned in buffer completion event.
@@ -107,6 +152,49 @@ struct idpf_buf_lifo {
 	struct idpf_tx_stash **bufs;
 };
 
+struct idpf_tx_offload_params {
+#define IDPF_TX_FLAGS_TSO			BIT(0)
+	u32 tx_flags;
+
+	u32 tso_len;	/* total length of payload to segment */
+	u16 mss;
+	u16 tso_segs;	/* Number of segments to be sent */
+	u16 tso_hdr_len;	/* length of headers to be duplicated */
+
+	u16 td_cmd;	/* command field to be inserted into descriptor */
+};
+
+struct idpf_tx_splitq_params {
+	/* General descriptor info */
+	enum idpf_tx_desc_dtype_value dtype;
+	u16 eop_cmd;
+	union {
+		u16 compl_tag; /* only relevant for flow scheduling */
+		u16 td_tag; /* only relevant for queue scheduling */
+	};
+
+	struct idpf_tx_offload_params offload;
+};
+
+#define IDPF_TX_MIN_PKT_LEN		17
+#define IDPF_TX_DESCS_FOR_SKB_DATA_PTR	1
+#define IDPF_TX_DESCS_PER_CACHE_LINE	(L1_CACHE_BYTES / \
+					 sizeof(struct idpf_flex_tx_desc))
+#define IDPF_TX_DESCS_FOR_CTX		1
+/* TX descriptors needed, worst case */
+#define IDPF_TX_DESC_NEEDED (MAX_SKB_FRAGS + IDPF_TX_DESCS_FOR_CTX + \
+			     IDPF_TX_DESCS_PER_CACHE_LINE + \
+			     IDPF_TX_DESCS_FOR_SKB_DATA_PTR)
+
+/* The size limit for a transmit buffer in a descriptor is (16K - 1).
+ * In order to align with the read requests we will align the value to
+ * the nearest 4K which represents our maximum read request size.
+ */
+#define IDPF_TX_MAX_READ_REQ_SIZE	SZ_4K
+#define IDPF_TX_MAX_DESC_DATA		(SZ_16K - 1)
+#define IDPF_TX_MAX_DESC_DATA_ALIGNED \
+	ALIGN_DOWN(IDPF_TX_MAX_DESC_DATA, IDPF_TX_MAX_READ_REQ_SIZE)
+
 #define IDPF_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
 
@@ -284,6 +372,23 @@ struct idpf_q_vector {
 	char name[IDPF_INT_NAME_STR_LEN];
 };
 
+struct idpf_rx_queue_stats {
+	/* stub */
+};
+
+struct idpf_tx_queue_stats {
+	u64_stats_t lso_pkts;
+	u64_stats_t linearize;
+	u64_stats_t q_busy;
+	u64_stats_t skb_drops;
+	u64_stats_t dma_map_errs;
+};
+
+union idpf_queue_stats {
+	struct idpf_rx_queue_stats rx;
+	struct idpf_tx_queue_stats tx;
+};
+
 #define IDPF_ITR_DYNAMIC	1
 #define IDPF_ITR_20K		0x0032
 #define IDPF_ITR_TX_DEF		IDPF_ITR_20K
@@ -336,6 +441,9 @@ struct idpf_queue {
 	/* Generation bit check stored, as HW flips the bit at Queue end */
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 
+	union idpf_queue_stats q_stats;
+	struct u64_stats_sync stats_sync;
+
 	bool rx_hsplit_en;
 	u16 rx_hbuf_size;	/* Header buffer size */
 	u16 rx_buf_size;
@@ -356,6 +464,13 @@ struct idpf_queue {
 					 */
 	u8 tx_min_pkt_len;		/* Min supported packet length */
 
+	u32 num_completions;		/* Only relevant for tx completion
+					 * queue; tracks the number of
+					 * completions received to compare
+					 * against the number of completions
+					 * pending, as accumulated by the TXQs
+					 */
+
 	/* Flow based scheduling related fields only */
 	struct idpf_buf_lifo buf_stack;	/* Stack of empty buffers to store
 					 * buffer info for out of order
@@ -475,9 +590,45 @@ struct idpf_txq_group {
 	/* Total number of completions pending for the completion queue,
 	 * acculumated for all txqs associated with that completion queue
 	 */
-	u64 num_completions_pending;
+	u32 num_completions_pending;
 };
 
+/**
+ * idpf_size_to_txd_count - Get number of descriptors needed for large Tx frag
+ * @size: transmit request size in bytes
+ *
+ * In the case where a large frag (>= 16K) needs to be split across multiple
+ * descriptors, we need to assume that we can have no more than 12K of data
+ * per descriptor due to hardware alignment restrictions (4K alignment).
+ */
+static inline u32 idpf_size_to_txd_count(unsigned int size)
+{
+	return DIV_ROUND_UP(size, IDPF_TX_MAX_DESC_DATA_ALIGNED);
+}
+
+void idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
+			      struct idpf_tx_splitq_params *parms,
+			      u16 td_cmd, u16 size);
+void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
+				    struct idpf_tx_splitq_params *parms,
+				    u16 td_cmd, u16 size);
+/**
+ * idpf_tx_splitq_build_desc - determine which type of data descriptor to build
+ * @desc: descriptor to populate
+ * @parms: pointer to tx params struct
+ * @td_cmd: command to be filled in desc
+ * @size: size of buffer
+ */
+static inline void idpf_tx_splitq_build_desc(union idpf_tx_flex_desc *desc,
+					     struct idpf_tx_splitq_params *parms,
+					     u16 td_cmd, u16 size)
+{
+	if (parms->dtype == IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2)
+		idpf_tx_splitq_build_ctb(desc, parms, td_cmd, size);
+	else
+		idpf_tx_splitq_build_flow_desc(desc, parms, td_cmd, size);
+}
+
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
@@ -497,6 +648,8 @@ int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
 bool idpf_init_rx_buf_hw_alloc(struct idpf_queue *rxq, struct idpf_rx_buf *buf);
 void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val);
+netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
+				 struct net_device *netdev);
 bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rxq,
 				      u16 cleaned_count);
 
-- 
2.37.3


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

