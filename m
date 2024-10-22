Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C56429A98AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:41:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E01560793;
	Tue, 22 Oct 2024 05:41:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x3kIYJM-JuVt; Tue, 22 Oct 2024 05:41:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F11C60794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729575679;
	bh=rUtGVkxRBIUNOrSaheZe6AnrZJ1uSjZcJoySzXSntEI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tPODTQ3rsmlq+8h9Hdb1B0hsW52B+wpCZ6kHz8KbwHxcFBVLwXi+tjqpzSVxPDXgb
	 jUD5AR7datc3aOFprqM/RdPbpJARGaC/yUdBImb3yOr0fbdE50Hy0vI5VaIcbsBW12
	 3+A6v4K7vDxqxpUeJQ/F2J/Dqk6/gQP80Le3yuLMW5v0mwxNgIzYKZkDSN1ItnSb25
	 M9QhgApBFN/XD+F//mQmFXAQjVweBQdrDrLGpqVKQ0dcWMiOnXQwWn8xGcB3PniMHb
	 WewiHnkob2qXuoM9mj0azjtF9twL6ngtcfYGCp2s1JIDrMTTMWY8p8VoheVS4SNtZc
	 bTYDVBAe1d6ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F11C60794;
	Tue, 22 Oct 2024 05:41:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 523B6963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A0216076D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZMZNd-J67Tuc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:41:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC4C760774
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC4C760774
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC4C760774
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:13 +0000 (UTC)
X-CSE-ConnectionGUID: ylt5eHIFTHeRCfQxRbTeyQ==
X-CSE-MsgGUID: 5CIpk/ehR8uSKu8bcJiNrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33015603"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33015603"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:41:13 -0700
X-CSE-ConnectionGUID: 9eRDtkYMQH2bPDYkzGJ+CA==
X-CSE-MsgGUID: mBggYXhlT32RAMLdv/rkSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84558087"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 22:41:11 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9FE7827BD1;
 Tue, 22 Oct 2024 06:41:09 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon Horman <horms@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 22 Oct 2024 07:41:10 -0400
Message-Id: <20241022114121.61284-4-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729575674; x=1761111674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jTPl9upRfUImE/xfk18lwOazazDdH7ySmOSvNzPCZng=;
 b=DszcBGJta6JCJ5lALzVyVg7v2ajStpRag7qtXAG8WaRhHHED6a7XPzFn
 Uo+TK+7J08+G/r0koqEdqbtctJENK37TiKytRVNP1nqm5RSD7D+YrTnEw
 KM0SrdR6ZZcMRfzF6xvaPvUkUmWk6YA++gQ4lzq/905tckEn4+nXNuOE/
 didTYYkODf4V2RmcMb5qXeukkeJ0YtPXs5yNiE4J8a9N63993feyAczDH
 BgePjIB0zaOBL7Kwo571cBJYAuZVyUZ/AHHA4qq/pVHwTqoidLQB3F49r
 uUmtxj8IoAptXBordMfcgIv9LhOJGEgeDfXgiDwQM4Z163aNhAunkZN9/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DszcBGJt
Subject: [Intel-wired-lan] [PATCH iwl-next v12 03/14] virtchnl: add
 enumeration for the rxdid format
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Support for allowing VF to negotiate the descriptor format requires that
the VF specify which descriptor format to use when requesting Rx queues.
The VF is supposed to request the set of supported formats via the new
VIRTCHNL_OP_GET_SUPPORTED_RXDIDS, and then set one of the supported
formats in the rxdid field of the virtchnl_rxq_info structure.

The virtchnl.h header does not provide an enumeration of the format
values. The existing implementations in the PF directly use the values
from the DDP package.

Make the formats explicit by defining an enumeration of the RXDIDs.
Provide an enumeration for the values as well as the bit positions as
returned by the supported_rxdids data from the
VIRTCHNL_OP_GET_SUPPORTED_RXDIDS.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 include/linux/avf/virtchnl.h | 50 +++++++++++++++++++++++++++++++++++-
 1 file changed, 49 insertions(+), 1 deletion(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 56baf97c44d0..bc10e6ffa50b 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -313,6 +313,48 @@ struct virtchnl_txq_info {
 
 VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
 
+/* RX descriptor IDs (range from 0 to 63) */
+enum virtchnl_rx_desc_ids {
+	VIRTCHNL_RXDID_0_16B_BASE		= 0,
+	VIRTCHNL_RXDID_1_32B_BASE		= 1,
+	VIRTCHNL_RXDID_2_FLEX_SQ_NIC		= 2,
+	VIRTCHNL_RXDID_3_FLEX_SQ_SW		= 3,
+	VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB	= 4,
+	VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL	= 5,
+	VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2		= 6,
+	VIRTCHNL_RXDID_7_HW_RSVD		= 7,
+	/* 8 through 15 are reserved */
+	VIRTCHNL_RXDID_16_COMMS_GENERIC		= 16,
+	VIRTCHNL_RXDID_17_COMMS_AUX_VLAN	= 17,
+	VIRTCHNL_RXDID_18_COMMS_AUX_IPV4	= 18,
+	VIRTCHNL_RXDID_19_COMMS_AUX_IPV6	= 19,
+	VIRTCHNL_RXDID_20_COMMS_AUX_FLOW	= 20,
+	VIRTCHNL_RXDID_21_COMMS_AUX_TCP		= 21,
+	/* 22 through 63 are reserved */
+};
+
+#define VIRTCHNL_RXDID_BIT(x)			BIT_ULL(VIRTCHNL_RXDID_##x)
+
+/* RX descriptor ID bitmasks */
+enum virtchnl_rx_desc_id_bitmasks {
+	VIRTCHNL_RXDID_0_16B_BASE_M		= VIRTCHNL_RXDID_BIT(0_16B_BASE),
+	VIRTCHNL_RXDID_1_32B_BASE_M		= VIRTCHNL_RXDID_BIT(1_32B_BASE),
+	VIRTCHNL_RXDID_2_FLEX_SQ_NIC_M		= VIRTCHNL_RXDID_BIT(2_FLEX_SQ_NIC),
+	VIRTCHNL_RXDID_3_FLEX_SQ_SW_M		= VIRTCHNL_RXDID_BIT(3_FLEX_SQ_SW),
+	VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB_M	= VIRTCHNL_RXDID_BIT(4_FLEX_SQ_NIC_VEB),
+	VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL_M	= VIRTCHNL_RXDID_BIT(5_FLEX_SQ_NIC_ACL),
+	VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2_M	= VIRTCHNL_RXDID_BIT(6_FLEX_SQ_NIC_2),
+	VIRTCHNL_RXDID_7_HW_RSVD_M		= VIRTCHNL_RXDID_BIT(7_HW_RSVD),
+	/* 8 through 15 are reserved */
+	VIRTCHNL_RXDID_16_COMMS_GENERIC_M	= VIRTCHNL_RXDID_BIT(16_COMMS_GENERIC),
+	VIRTCHNL_RXDID_17_COMMS_AUX_VLAN_M	= VIRTCHNL_RXDID_BIT(17_COMMS_AUX_VLAN),
+	VIRTCHNL_RXDID_18_COMMS_AUX_IPV4_M	= VIRTCHNL_RXDID_BIT(18_COMMS_AUX_IPV4),
+	VIRTCHNL_RXDID_19_COMMS_AUX_IPV6_M	= VIRTCHNL_RXDID_BIT(19_COMMS_AUX_IPV6),
+	VIRTCHNL_RXDID_20_COMMS_AUX_FLOW_M	= VIRTCHNL_RXDID_BIT(20_COMMS_AUX_FLOW),
+	VIRTCHNL_RXDID_21_COMMS_AUX_TCP_M	= VIRTCHNL_RXDID_BIT(21_COMMS_AUX_TCP),
+	/* 22 through 63 are reserved */
+};
+
 /* virtchnl_rxq_info_flags - definition of bits in the flags field of the
  *			     virtchnl_rxq_info structure.
  *
@@ -347,7 +389,12 @@ struct virtchnl_rxq_info {
 	u32 databuffer_size;
 	u32 max_pkt_size;
 	u8 crc_disable;
-	u8 rxdid;
+	/* see enum virtchnl_rx_desc_ids;
+	 * only used when VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is supported. Note
+	 * that when the offload is not supported, the descriptor format aligns
+	 * with VIRTCHNL_RXDID_1_32B_BASE.
+	 */
+	enum virtchnl_rx_desc_ids rxdid:8;
 	enum virtchnl_rxq_info_flags flags:8; /* see virtchnl_rxq_info_flags */
 	u8 pad1;
 	u64 dma_ring_addr;
@@ -1050,6 +1097,7 @@ struct virtchnl_filter {
 VIRTCHNL_CHECK_STRUCT_LEN(272, virtchnl_filter);
 
 struct virtchnl_supported_rxdids {
+	/* see enum virtchnl_rx_desc_id_bitmasks */
 	u64 supported_rxdids;
 };
 
-- 
2.38.1

