Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6129389F204
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 14:26:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A36F860904;
	Wed, 10 Apr 2024 12:26:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yMJDnJmEhSQc; Wed, 10 Apr 2024 12:26:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0BEF60903
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712751996;
	bh=5a4wTdvsJICfDiUSYEFWVnIdBEB1AZfOo2oe8/tKze8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RpOjwZseinajnIjTAlkcc7qGG/pdlz0SxLKwtZSMLocQ+Gjf9en8OhU7p/vYNatwM
	 RBpEiAMsB6blDl6nPnrvPlB6VC5uRN4QKmfuAEJMtbzQIfn0zfGxaWYWRXjz+NWv+S
	 /3FNYQWrLc6F1aMq4GQJ8GIRypzNuR6qz5MdCmFEa/8St1nVz1NVvHY89VDg1haxh+
	 2UBaOLYpKKoskkYjddLED1MtHRQTcpN/mZrT9u43VD+ImtC6ow4CX5F5nfqJEP3WAI
	 oibTExrQ/pDkj8fG9L3LhJQx/PuwzY/uOW/5FdEyIhxKfwnF7b4w5VeUH8vOy7I6Zt
	 wcJf9uiUNJRKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0BEF60903;
	Wed, 10 Apr 2024 12:26:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99D2E1BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8698081C46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aMcEU7Gk4H4p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 12:26:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 107AB81C21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 107AB81C21
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 107AB81C21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:31 +0000 (UTC)
X-CSE-ConnectionGUID: vtNCA4b1Spu2TIaZwg5AfQ==
X-CSE-MsgGUID: lJY/0WfLQTe5i36UNAp+NA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7982200"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7982200"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 05:26:31 -0700
X-CSE-ConnectionGUID: e6fkB9b8QVm949g6FVu3xQ==
X-CSE-MsgGUID: lzT+Nf+kS4yBAH1q5XrMEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="51760049"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2024 05:26:29 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4C6782879D;
 Wed, 10 Apr 2024 13:26:28 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 08:16:57 -0400
Message-Id: <20240410121706.6223-4-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240410121706.6223-1-mateusz.polchlopek@intel.com>
References: <20240410121706.6223-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712751992; x=1744287992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8eBltkLPrUD5FeW/5LPAKmS+1EwfhuKIBx90nJafOv4=;
 b=a4HlMJSRR5sD4kpgX/I7mzIJANeii7qkV8G3nZ3WlXmaJNLj5I9WvZCc
 AR7M0qt+wrP+q8ZcH/25ZyP+4TT6D7T9xZuEfTPZ2qmF6r1hTNYp0zj+o
 aTeV4vP5cPsuqL35QF/IB2HjbteahLqZ1jnEmI/XajKFrSbCKo0A58WfE
 fVyQzPrHsxJHHNcJE4z1titVZmEPDrOVZCcmywb7nqoP2GMK+XX5GTMoN
 AilVTx6g8iKQME5u5nwhHJ5XB8Y3bGAMS++wzD3uLfnZgCsiYAHk3sOi/
 vehZBT4Zdjj6fZHLXGUKqSdepzF9OVuHOlmJ/Yq3omY3Or9Y+C1ztfMe+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a4HlMJSR
Subject: [Intel-wired-lan] [PATCH iwl-next v4 03/12] virtchnl: add
 enumeration for the rxdid format
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
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

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 include/linux/avf/virtchnl.h | 46 ++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 91974c06f3d2..31cddf2b7228 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -303,6 +303,46 @@ struct virtchnl_txq_info {
 
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
+/* RX descriptor ID bitmasks */
+enum virtchnl_rx_desc_id_bitmasks {
+	VIRTCHNL_RXDID_0_16B_BASE_M		= BIT(VIRTCHNL_RXDID_0_16B_BASE),
+	VIRTCHNL_RXDID_1_32B_BASE_M		= BIT(VIRTCHNL_RXDID_1_32B_BASE),
+	VIRTCHNL_RXDID_2_FLEX_SQ_NIC_M		= BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC),
+	VIRTCHNL_RXDID_3_FLEX_SQ_SW_M		= BIT(VIRTCHNL_RXDID_3_FLEX_SQ_SW),
+	VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB_M	= BIT(VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB),
+	VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL_M	= BIT(VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL),
+	VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2_M	= BIT(VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2),
+	VIRTCHNL_RXDID_7_HW_RSVD_M		= BIT(VIRTCHNL_RXDID_7_HW_RSVD),
+	/* 8 through 15 are reserved */
+	VIRTCHNL_RXDID_16_COMMS_GENERIC_M	= BIT(VIRTCHNL_RXDID_16_COMMS_GENERIC),
+	VIRTCHNL_RXDID_17_COMMS_AUX_VLAN_M	= BIT(VIRTCHNL_RXDID_17_COMMS_AUX_VLAN),
+	VIRTCHNL_RXDID_18_COMMS_AUX_IPV4_M	= BIT(VIRTCHNL_RXDID_18_COMMS_AUX_IPV4),
+	VIRTCHNL_RXDID_19_COMMS_AUX_IPV6_M	= BIT(VIRTCHNL_RXDID_19_COMMS_AUX_IPV6),
+	VIRTCHNL_RXDID_20_COMMS_AUX_FLOW_M	= BIT(VIRTCHNL_RXDID_20_COMMS_AUX_FLOW),
+	VIRTCHNL_RXDID_21_COMMS_AUX_TCP_M	= BIT(VIRTCHNL_RXDID_21_COMMS_AUX_TCP),
+	/* 22 through 63 are reserved */
+};
+
 /* virtchnl_rxq_info_flags
  *
  * Definition of bits in the flags field of the virtchnl_rxq_info structure.
@@ -337,6 +377,11 @@ struct virtchnl_rxq_info {
 	u32 databuffer_size;
 	u32 max_pkt_size;
 	u8 crc_disable;
+	/* see enum virtchnl_rx_desc_ids;
+	 * only used when VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is supported. Note
+	 * that when the offload is not supported, the descriptor format aligns
+	 * with VIRTCHNL_RXDID_1_32B_BASE.
+	 */
 	u8 rxdid;
 	u8 flags; /* see virtchnl_rxq_info_flags */
 	u8 pad1;
@@ -1040,6 +1085,7 @@ struct virtchnl_filter {
 VIRTCHNL_CHECK_STRUCT_LEN(272, virtchnl_filter);
 
 struct virtchnl_supported_rxdids {
+	/* see enum virtchnl_rx_desc_id_bitmasks */
 	u64 supported_rxdids;
 };
 
-- 
2.38.1

