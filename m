Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B8A6EFF1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Apr 2023 04:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CF0241ED0;
	Thu, 27 Apr 2023 02:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CF0241ED0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682561454;
	bh=TObDkeDIZ1hI5GKVznTXciPgSaMlXME2C6/BI8r76Ww=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wdLdXjlWjEOL14xBqFlzq4fi982l99MrSvE7G8jMeU4HNkqCBbvv68PEpHMzcHLeu
	 dQgV6oCyhv8TNPJbuegxEbCqvOq2ImNnv6Pq8CT7HJCycYEAI3kNQwgELHf6Y3azT9
	 tuEXz8o96C//CrOEIzGnnWHkARdlT1pkQ9fqtEt4q40V97Rh3m+wesSgDfHcawMmJN
	 c8ZgSnNTIjk2zHZ972SwGGB9Lr5dquMBUYmWWLiTKgN/nYGl73BegFLuKAAy2Mc+y1
	 M35q1YF1xRtXvNbBnK9SrihWh6Tq/nCIEMQU49A+pNxx20RCIRODsSvG1KjnuNaFQL
	 NUHKP2oI1jKVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mzduh1vgaZP5; Thu, 27 Apr 2023 02:10:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9004741EC1;
	Thu, 27 Apr 2023 02:10:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9004741EC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57F211BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 02:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3ACDE83C8F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 02:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ACDE83C8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EValt9g56axG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 02:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6562883C8C
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6562883C8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 02:10:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="336234453"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="336234453"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 19:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="818326132"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="818326132"
Received: from estantil-desk.jf.intel.com ([10.166.241.20])
 by orsmga004.jf.intel.com with ESMTP; 26 Apr 2023 19:10:34 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Apr 2023 19:09:03 -0700
Message-Id: <20230427020917.12029-2-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20230427020917.12029-1-emil.s.tantilov@intel.com>
References: <20230427020917.12029-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682561436; x=1714097436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=TRwjEcZ+sVcace3NWoln0RF1itHc9PBScWsluxL15vo=;
 b=BgmlqLB1cStJhozewJDdiqg/ZJYqLbrrKjNJWUVlp/KoU0y8F1NG4nID
 TpQNyV/UFCIXkn7Qt9nJ6iyeO7LPyXnX0xx624sTX0EsfcIKJGjM6d6NT
 HpMjmbJCCfTlP2XHBFa/GiuxhERN+RfEICo/Dz88ar6DHq9ZQBxtMUgMX
 KlynG1D1Y5eGsaVjTmdzwp7JSxsKEgySIaAIm28RAGuzyPpzGcgMrdP1W
 JhyHO/IX3SAH40x8SohL4dFoU2SmdkoqZ5ODjwZ1OTSSH3VsExZqaEWHE
 dd1ks/X9I6DTFTR3iydYOcfJFMMRU9CmeaULN78jydWczh2Ka0os/SBbL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BgmlqLB1
Subject: [Intel-wired-lan] [net-next v3 01/15] virtchnl: add virtchnl
 version 2 ops
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
 shailendra.bhatnagar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 simon.horman@corigine.com, kuba@kernel.org, phani.r.burra@intel.com,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

Virtchnl version 1 is an interface used by the current generation of
foundational NICs to negotiate the capabilities and configure the
HW resources such as queues, vectors, RSS LUT, etc between the PF
and VF drivers. It is not extensible to enable new features supported
in the next generation of NICs/IPUs and to negotiate descriptor types,
packet types and register offsets.

To overcome the limitations of the existing interface, introduce
the virtchnl version 2 and add the necessary opcodes, structures,
definitions, and descriptor formats. The driver also learns the
data queue and other register offsets to use instead of hardcoding
them. The advantage of this approach is that it gives the flexibility
to modify the register offsets if needed, restrict the use of
certain descriptor types and negotiate the supported packet types.

Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1317 +++++++++++++++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  448 ++++++
 2 files changed, 1765 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2.h
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
new file mode 100644
index 000000000000..3a63c5136e83
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -0,0 +1,1317 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _VIRTCHNL2_H_
+#define _VIRTCHNL2_H_
+
+/* All opcodes associated with virtchnl 2 are prefixed with virtchnl2 or
+ * VIRTCHNL2. Any future opcodes, offloads/capabilities, structures,
+ * and defines must be prefixed with virtchnl2 or VIRTCHNL2 to avoid confusion.
+ *
+ * PF/VF uses the virtchnl interface defined in this header file to communicate
+ * with device Control Plane (CP). Driver and the CP may run on different
+ * platforms with different endianness. To avoid byte order discrepancies,
+ * struct members in this header follow little-endian format. Users of this
+ * virtchnl interface are expected to convert back to their native endian
+ * format.
+ *
+ * This is an interface definition file where existing enums and their values
+ * must remain unchanged over time, so we specify explicit values for all enums.
+ */
+
+#include "virtchnl2_lan_desc.h"
+
+/**
+ * enum virtchnl2_status - Error codes.
+ * @VIRTCHNL2_STATUS_SUCCESS: success
+ * @VIRTCHNL2_STATUS_ERR_EPERM: Operation not permitted, used in case of command
+ *				not permitted for sender.
+ * @VIRTCHNL2_STATUS_ERR_ESRCH: Bad opcode - virtchnl interface problem.
+ * @VIRTCHNL2_STATUS_ERR_EIO: I/O error - HW access error.
+ * @VIRTCHNL2_STATUS_ERR_ENXIO: No such resource - Referenced resource is not
+ *				allocated.
+ * @VIRTCHNL2_STATUS_ERR_EACCES: Permission denied - Resource is not permitted
+ *				to caller.
+ * @VIRTCHNL2_STATUS_ERR_EBUSY: Device or resource busy - In case shared
+ *				resource is in use by others.
+ * @VIRTCHNL2_STATUS_ERR_EEXIST: Object already exists and not free.
+ * @VIRTCHNL2_STATUS_ERR_EINVAL: Invalid input argument in command.
+ * @VIRTCHNL2_STATUS_ERR_ENOSPC: No space left or allocation failure.
+ * @VIRTCHNL2_STATUS_ERR_ERANGE: Parameter out of range.
+ * @VIRTCHNL2_STATUS_ERR_EMODE: Operation not allowed in current dev mode.
+ * @VIRTCHNL2_STATUS_ERR_ESM: State Machine error - Command sequence problem.
+ */
+enum virtchnl2_status {
+	VIRTCHNL2_STATUS_SUCCESS		= 0,
+	VIRTCHNL2_STATUS_ERR_EPERM		= 1,
+	VIRTCHNL2_STATUS_ERR_ESRCH		= 3,
+	VIRTCHNL2_STATUS_ERR_EIO		= 5,
+	VIRTCHNL2_STATUS_ERR_ENXIO		= 6,
+	VIRTCHNL2_STATUS_ERR_EACCES		= 13,
+	VIRTCHNL2_STATUS_ERR_EBUSY		= 16,
+	VIRTCHNL2_STATUS_ERR_EEXIST		= 17,
+	VIRTCHNL2_STATUS_ERR_EINVAL		= 22,
+	VIRTCHNL2_STATUS_ERR_ENOSPC		= 28,
+	VIRTCHNL2_STATUS_ERR_ERANGE		= 34,
+	VIRTCHNL2_STATUS_ERR_EMODE		= 200,
+	VIRTCHNL2_STATUS_ERR_ESM		= 201,
+};
+/* This macro is used to generate compilation errors if a structure
+ * is not exactly the correct length.
+ */
+#define VIRTCHNL2_CHECK_STRUCT_LEN(n, X)	\
+	static_assert((n) == sizeof(struct X))
+
+/* New major set of opcodes introduced and so leaving room for
+ * old misc opcodes to be added in future. Also these opcodes may only
+ * be used if both the PF and VF have successfully negotiated the
+ * VIRTCHNL version as 2.0 during VIRTCHNL2_OP_VERSION exchange.
+ */
+enum virtchnl2_op {
+	VIRTCHNL2_OP_UNKNOWN			= 0,
+	VIRTCHNL2_OP_VERSION			= 1,
+	VIRTCHNL2_OP_GET_CAPS			= 500,
+	VIRTCHNL2_OP_CREATE_VPORT		= 501,
+	VIRTCHNL2_OP_DESTROY_VPORT		= 502,
+	VIRTCHNL2_OP_ENABLE_VPORT		= 503,
+	VIRTCHNL2_OP_DISABLE_VPORT		= 504,
+	VIRTCHNL2_OP_CONFIG_TX_QUEUES		= 505,
+	VIRTCHNL2_OP_CONFIG_RX_QUEUES		= 506,
+	VIRTCHNL2_OP_ENABLE_QUEUES		= 507,
+	VIRTCHNL2_OP_DISABLE_QUEUES		= 508,
+	VIRTCHNL2_OP_ADD_QUEUES			= 509,
+	VIRTCHNL2_OP_DEL_QUEUES			= 510,
+	VIRTCHNL2_OP_MAP_QUEUE_VECTOR		= 511,
+	VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR		= 512,
+	VIRTCHNL2_OP_GET_RSS_KEY		= 513,
+	VIRTCHNL2_OP_SET_RSS_KEY		= 514,
+	VIRTCHNL2_OP_GET_RSS_LUT		= 515,
+	VIRTCHNL2_OP_SET_RSS_LUT		= 516,
+	VIRTCHNL2_OP_GET_RSS_HASH		= 517,
+	VIRTCHNL2_OP_SET_RSS_HASH		= 518,
+	VIRTCHNL2_OP_SET_SRIOV_VFS		= 519,
+	VIRTCHNL2_OP_ALLOC_VECTORS		= 520,
+	VIRTCHNL2_OP_DEALLOC_VECTORS		= 521,
+	VIRTCHNL2_OP_EVENT			= 522,
+	VIRTCHNL2_OP_GET_STATS			= 523,
+	VIRTCHNL2_OP_RESET_VF			= 524,
+	VIRTCHNL2_OP_GET_EDT_CAPS		= 525,
+	VIRTCHNL2_OP_GET_PTYPE_INFO		= 526,
+	/* Opcode 527 and 528 are reserved for VIRTCHNL2_OP_GET_PTYPE_ID and
+	 * VIRTCHNL2_OP_GET_PTYPE_INFO_RAW.
+	 * Opcodes 529, 530, 531, 532 and 533 are reserved.
+	 */
+	VIRTCHNL2_OP_LOOPBACK			= 534,
+	VIRTCHNL2_OP_ADD_MAC_ADDR		= 535,
+	VIRTCHNL2_OP_DEL_MAC_ADDR		= 536,
+	VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE	= 537,
+};
+
+/**
+ * enum virtchnl2_vport_type - Type of virtual port.
+ * @VIRTCHNL2_VPORT_TYPE_DEFAULT: Default virtual port type.
+ */
+enum virtchnl2_vport_type {
+	VIRTCHNL2_VPORT_TYPE_DEFAULT		= 0,
+};
+
+/**
+ * enum virtchnl2_queue_model - Type of queue model.
+ * @VIRTCHNL2_QUEUE_MODEL_SINGLE: Single queue model.
+ * @VIRTCHNL2_QUEUE_MODEL_SPLIT: Split queue model.
+ *
+ * In the single queue model, the same transmit descriptor queue is used by
+ * software to post descriptors to hardware and by hardware to post completed
+ * descriptors to software.
+ * Likewise, the same receive descriptor queue is used by hardware to post
+ * completions to software and by software to post buffers to hardware.
+ *
+ * In the split queue model, hardware uses transmit completion queues to post
+ * descriptor/buffer completions to software, while software uses transmit
+ * descriptor queues to post descriptors to hardware.
+ * Likewise, hardware posts descriptor completions to the receive descriptor
+ * queue, while software uses receive buffer queues to post buffers to hardware.
+ */
+enum virtchnl2_queue_model {
+	VIRTCHNL2_QUEUE_MODEL_SINGLE		= 0,
+	VIRTCHNL2_QUEUE_MODEL_SPLIT		= 1,
+};
+
+/* Checksum offload capability flags */
+enum virtchnl2_cap_txrx_csum {
+	VIRTCHNL2_CAP_TX_CSUM_L3_IPV4		= BIT(0),
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_TCP	= BIT(1),
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_UDP	= BIT(2),
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	= BIT(3),
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_TCP	= BIT(4),
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_UDP	= BIT(5),
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	= BIT(6),
+	VIRTCHNL2_CAP_TX_CSUM_GENERIC		= BIT(7),
+	VIRTCHNL2_CAP_RX_CSUM_L3_IPV4		= BIT(8),
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	= BIT(9),
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	= BIT(10),
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	= BIT(11),
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	= BIT(12),
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	= BIT(13),
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP	= BIT(14),
+	VIRTCHNL2_CAP_RX_CSUM_GENERIC		= BIT(15),
+	VIRTCHNL2_CAP_TX_CSUM_L3_SINGLE_TUNNEL	= BIT(16),
+	VIRTCHNL2_CAP_TX_CSUM_L3_DOUBLE_TUNNEL	= BIT(17),
+	VIRTCHNL2_CAP_RX_CSUM_L3_SINGLE_TUNNEL	= BIT(18),
+	VIRTCHNL2_CAP_RX_CSUM_L3_DOUBLE_TUNNEL	= BIT(19),
+	VIRTCHNL2_CAP_TX_CSUM_L4_SINGLE_TUNNEL	= BIT(20),
+	VIRTCHNL2_CAP_TX_CSUM_L4_DOUBLE_TUNNEL	= BIT(21),
+	VIRTCHNL2_CAP_RX_CSUM_L4_SINGLE_TUNNEL	= BIT(22),
+	VIRTCHNL2_CAP_RX_CSUM_L4_DOUBLE_TUNNEL	= BIT(23),
+};
+
+/* Segmentation offload capability flags */
+enum virtchnl2_cap_seg {
+	VIRTCHNL2_CAP_SEG_IPV4_TCP		= BIT(0),
+	VIRTCHNL2_CAP_SEG_IPV4_UDP		= BIT(1),
+	VIRTCHNL2_CAP_SEG_IPV4_SCTP		= BIT(2),
+	VIRTCHNL2_CAP_SEG_IPV6_TCP		= BIT(3),
+	VIRTCHNL2_CAP_SEG_IPV6_UDP		= BIT(4),
+	VIRTCHNL2_CAP_SEG_IPV6_SCTP		= BIT(5),
+	VIRTCHNL2_CAP_SEG_GENERIC		= BIT(6),
+	VIRTCHNL2_CAP_SEG_TX_SINGLE_TUNNEL	= BIT(7),
+	VIRTCHNL2_CAP_SEG_TX_DOUBLE_TUNNEL	= BIT(8),
+};
+
+/* Receive Side Scaling Flow type capability flags */
+enum virtcnl2_cap_rss {
+	VIRTCHNL2_CAP_RSS_IPV4_TCP		= BIT(0),
+	VIRTCHNL2_CAP_RSS_IPV4_UDP		= BIT(1),
+	VIRTCHNL2_CAP_RSS_IPV4_SCTP		= BIT(2),
+	VIRTCHNL2_CAP_RSS_IPV4_OTHER		= BIT(3),
+	VIRTCHNL2_CAP_RSS_IPV6_TCP		= BIT(4),
+	VIRTCHNL2_CAP_RSS_IPV6_UDP		= BIT(5),
+	VIRTCHNL2_CAP_RSS_IPV6_SCTP		= BIT(6),
+	VIRTCHNL2_CAP_RSS_IPV6_OTHER		= BIT(7),
+	VIRTCHNL2_CAP_RSS_IPV4_AH		= BIT(8),
+	VIRTCHNL2_CAP_RSS_IPV4_ESP		= BIT(9),
+	VIRTCHNL2_CAP_RSS_IPV4_AH_ESP		= BIT(10),
+	VIRTCHNL2_CAP_RSS_IPV6_AH		= BIT(11),
+	VIRTCHNL2_CAP_RSS_IPV6_ESP		= BIT(12),
+	VIRTCHNL2_CAP_RSS_IPV6_AH_ESP		= BIT(13),
+};
+
+/* Header split capability flags */
+enum virtchnl2_cap_rx_hsplit_at {
+	/* for prepended metadata  */
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L2		= BIT(0),
+	/* all VLANs go into header buffer */
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L3		= BIT(1),
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4		= BIT(2),
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6		= BIT(3),
+};
+
+/* Receive Side Coalescing offload capability flags */
+enum virtchnl2_cap_rsc {
+	VIRTCHNL2_CAP_RSC_IPV4_TCP		= BIT(0),
+	VIRTCHNL2_CAP_RSC_IPV4_SCTP		= BIT(1),
+	VIRTCHNL2_CAP_RSC_IPV6_TCP		= BIT(2),
+	VIRTCHNL2_CAP_RSC_IPV6_SCTP		= BIT(3),
+};
+
+/* Other capability flags */
+enum virtchnl2_cap_other {
+	VIRTCHNL2_CAP_RDMA			= BIT_ULL(0),
+	VIRTCHNL2_CAP_SRIOV			= BIT_ULL(1),
+	VIRTCHNL2_CAP_MACFILTER			= BIT_ULL(2),
+	VIRTCHNL2_CAP_FLOW_DIRECTOR		= BIT_ULL(3),
+	/* Queue based scheduling using split queue model */
+	VIRTCHNL2_CAP_SPLITQ_QSCHED		= BIT_ULL(4),
+	VIRTCHNL2_CAP_CRC			= BIT_ULL(5),
+	VIRTCHNL2_CAP_ADQ			= BIT_ULL(6),
+	VIRTCHNL2_CAP_WB_ON_ITR			= BIT_ULL(7),
+	VIRTCHNL2_CAP_PROMISC			= BIT_ULL(8),
+	VIRTCHNL2_CAP_LINK_SPEED		= BIT_ULL(9),
+	VIRTCHNL2_CAP_INLINE_IPSEC		= BIT_ULL(10),
+	VIRTCHNL2_CAP_LARGE_NUM_QUEUES		= BIT_ULL(11),
+	VIRTCHNL2_CAP_VLAN			= BIT_ULL(12),
+	VIRTCHNL2_CAP_PTP			= BIT_ULL(13),
+	/* EDT: Earliest Departure Time capability used for Timing Wheel */
+	VIRTCHNL2_CAP_EDT			= BIT_ULL(14),
+	VIRTCHNL2_CAP_ADV_RSS			= BIT_ULL(15),
+	VIRTCHNL2_CAP_FDIR			= BIT_ULL(16),
+	VIRTCHNL2_CAP_RX_FLEX_DESC		= BIT_ULL(17),
+	VIRTCHNL2_CAP_PTYPE			= BIT_ULL(18),
+	VIRTCHNL2_CAP_LOOPBACK			= BIT_ULL(19),
+	/* Enable miss completion types plus ability to detect a miss completion if a
+	 * reserved bit is set in a standared completion's tag.
+	 */
+	VIRTCHNL2_CAP_MISS_COMPL_TAG		= BIT_ULL(20),
+	/* this must be the last capability */
+	VIRTCHNL2_CAP_OEM			= BIT_ULL(63),
+};
+
+/* underlying device type */
+enum virtchl2_device_type {
+	VIRTCHNL2_MEV_DEVICE			= 0,
+};
+
+/**
+ * enum virtcnl2_txq_sched_mode - Transmit Queue Scheduling Modes.
+ * @VIRTCHNL2_TXQ_SCHED_MODE_QUEUE: Queue mode is the legacy mode i.e. inorder
+ *				    completions where descriptors and buffers
+ *				    are completed at the same time.
+ * @VIRTCHNL2_TXQ_SCHED_MODE_FLOW: Flow scheduling mode allows for out of order
+ *				   packet processing where descriptors are
+ *				   cleaned in order, but buffers can be
+ *				   completed out of order.
+ */
+enum virtcnl2_txq_sched_mode {
+	VIRTCHNL2_TXQ_SCHED_MODE_QUEUE		= 0,
+	VIRTCHNL2_TXQ_SCHED_MODE_FLOW		= 1,
+};
+
+/**
+ * enum virtchnl2_txq_flags - Tx Queue feature flags.
+ * @VIRTCHNL2_TXQ_ENABLE_MISS_COMPL: Enable rule miss completion type. Packet
+ *				     completion for a packet sent on exception
+ *				     path. Only relevant in flow scheduling mode.
+ */
+enum virtchnl2_txq_flags {
+	VIRTCHNL2_TXQ_ENABLE_MISS_COMPL		= BIT(0),
+};
+
+/**
+ * enum virtchnl2_rxq_flags - Receive Queue Feature flags.
+ * @VIRTCHNL2_RXQ_RSC: Rx queue RSC flag.
+ * @VIRTCHNL2_RXQ_HDR_SPLIT: Rx queue header split flag.
+ * @VIRTCHNL2_RXQ_IMMEDIATE_WRITE_BACK: When set, packet descriptors are flushed
+ *					by hardware immediately after processing
+ *					each packet.
+ * @VIRTCHNL2_RX_DESC_SIZE_16BYTE: Rx queue 16 byte descriptor size.
+ * @VIRTCHNL2_RX_DESC_SIZE_32BYTE: Rx queue 32 byte descriptor size.
+ */
+enum virtchnl2_rxq_flags {
+	VIRTCHNL2_RXQ_RSC			= BIT(0),
+	VIRTCHNL2_RXQ_HDR_SPLIT			= BIT(1),
+	VIRTCHNL2_RXQ_IMMEDIATE_WRITE_BACK	= BIT(2),
+	VIRTCHNL2_RX_DESC_SIZE_16BYTE		= BIT(3),
+	VIRTCHNL2_RX_DESC_SIZE_32BYTE		= BIT(4),
+};
+
+/* Type of RSS algorithm */
+enum virtcnl2_rss_alg {
+	VIRTCHNL2_RSS_ALG_TOEPLITZ_ASYMMETRIC	= 0,
+	VIRTCHNL2_RSS_ALG_R_ASYMMETRIC		= 1,
+	VIRTCHNL2_RSS_ALG_TOEPLITZ_SYMMETRIC	= 2,
+	VIRTCHNL2_RSS_ALG_XOR_SYMMETRIC		= 3,
+};
+
+/* Type of event */
+enum virtchnl2_event_codes {
+	VIRTCHNL2_EVENT_UNKNOWN			= 0,
+	VIRTCHNL2_EVENT_LINK_CHANGE		= 1,
+	/* Event type 2, 3 are reserved */
+};
+
+/* Transmit and Receive queue types are valid in legacy as well as split queue
+ * models. With Split Queue model, 2 additional types are introduced -
+ * TX_COMPLETION and RX_BUFFER. In split queue model, receive  corresponds to
+ * the queue where hardware posts completions.
+ */
+enum virtchnl2_queue_type {
+	VIRTCHNL2_QUEUE_TYPE_TX			= 0,
+	VIRTCHNL2_QUEUE_TYPE_RX			= 1,
+	VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION	= 2,
+	VIRTCHNL2_QUEUE_TYPE_RX_BUFFER		= 3,
+	VIRTCHNL2_QUEUE_TYPE_CONFIG_TX		= 4,
+	VIRTCHNL2_QUEUE_TYPE_CONFIG_RX		= 5,
+	/* Queue types 6, 7, 8, 9 are reserved */
+	VIRTCHNL2_QUEUE_TYPE_MBX_TX		= 10,
+	VIRTCHNL2_QUEUE_TYPE_MBX_RX		= 11,
+};
+
+/* Interrupt throttling rate index */
+enum virtchnl2_itr_idx {
+	VIRTCHNL2_ITR_IDX_0			= 0,
+	VIRTCHNL2_ITR_IDX_1			= 1,
+};
+
+/**
+ * enum virtchnl2_mac_addr_type - MAC address types.
+ * @VIRTCHNL2_MAC_ADDR_PRIMARY: PF/VF driver should set this type for the
+ *				primary/device unicast MAC address filter for
+ *				VIRTCHNL2_OP_ADD_MAC_ADDR and VIRTCHNL2_OP_DEL_MAC_ADDR.
+ *				This allows for the underlying control plane
+ *				function to accurately track the MAC address and for
+ *				VM/function reset.
+ *
+ * @VIRTCHNL2_MAC_ADDR_EXTRA: PF/VF driver should set this type for any extra unicast
+ *			      and/or multicast filters that are being added/deleted via
+ *			      VIRTCHNL2_OP_ADD_MAC_ADDR or VIRTCHNL2_OP_DEL_MAC_ADDR.
+ */
+enum virtchnl2_mac_addr_type {
+	VIRTCHNL2_MAC_ADDR_PRIMARY		= 1,
+	VIRTCHNL2_MAC_ADDR_EXTRA		= 2,
+};
+
+/* Flags used for promiscuous mode */
+enum virtchnl2_promisc_flags {
+	VIRTCHNL2_UNICAST_PROMISC		= BIT(0),
+	VIRTCHNL2_MULTICAST_PROMISC		= BIT(1),
+};
+
+/* Protocol header type within a packet segment. A segment consists of one or
+ * more protocol headers that make up a logical group of protocol headers. Each
+ * logical group of protocol headers encapsulates or is encapsulated using/by
+ * tunneling or encapsulation protocols for network virtualization.
+ */
+enum virtchnl2_proto_hdr_type {
+	/* VIRTCHNL2_PROTO_HDR_ANY is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_ANY			= 0,
+	VIRTCHNL2_PROTO_HDR_PRE_MAC		= 1,
+	/* VIRTCHNL2_PROTO_HDR_MAC is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_MAC			= 2,
+	VIRTCHNL2_PROTO_HDR_POST_MAC		= 3,
+	VIRTCHNL2_PROTO_HDR_ETHERTYPE		= 4,
+	VIRTCHNL2_PROTO_HDR_VLAN		= 5,
+	VIRTCHNL2_PROTO_HDR_SVLAN		= 6,
+	VIRTCHNL2_PROTO_HDR_CVLAN		= 7,
+	VIRTCHNL2_PROTO_HDR_MPLS		= 8,
+	VIRTCHNL2_PROTO_HDR_UMPLS		= 9,
+	VIRTCHNL2_PROTO_HDR_MMPLS		= 10,
+	VIRTCHNL2_PROTO_HDR_PTP			= 11,
+	VIRTCHNL2_PROTO_HDR_CTRL		= 12,
+	VIRTCHNL2_PROTO_HDR_LLDP		= 13,
+	VIRTCHNL2_PROTO_HDR_ARP			= 14,
+	VIRTCHNL2_PROTO_HDR_ECP			= 15,
+	VIRTCHNL2_PROTO_HDR_EAPOL		= 16,
+	VIRTCHNL2_PROTO_HDR_PPPOD		= 17,
+	VIRTCHNL2_PROTO_HDR_PPPOE		= 18,
+	/* VIRTCHNL2_PROTO_HDR_IPV4 is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_IPV4		= 19,
+	/* IPv4 and IPv6 Fragment header types are only associated to
+	 * VIRTCHNL2_PROTO_HDR_IPV4 and VIRTCHNL2_PROTO_HDR_IPV6 respectively,
+	 * cannot be used independently.
+	 */
+	/* VIRTCHNL2_PROTO_HDR_IPV4_FRAG is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_IPV4_FRAG		= 20,
+	/* VIRTCHNL2_PROTO_HDR_IPV6 is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_IPV6		= 21,
+	/* VIRTCHNL2_PROTO_HDR_IPV6_FRAG is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_IPV6_FRAG		= 22,
+	VIRTCHNL2_PROTO_HDR_IPV6_EH		= 23,
+	/* VIRTCHNL2_PROTO_HDR_UDP is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_UDP			= 24,
+	/* VIRTCHNL2_PROTO_HDR_TCP is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_TCP			= 25,
+	/* VIRTCHNL2_PROTO_HDR_SCTP is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_SCTP		= 26,
+	/* VIRTCHNL2_PROTO_HDR_ICMP is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_ICMP		= 27,
+	/* VIRTCHNL2_PROTO_HDR_ICMPV6 is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_ICMPV6		= 28,
+	VIRTCHNL2_PROTO_HDR_IGMP		= 29,
+	VIRTCHNL2_PROTO_HDR_AH			= 30,
+	VIRTCHNL2_PROTO_HDR_ESP			= 31,
+	VIRTCHNL2_PROTO_HDR_IKE			= 32,
+	VIRTCHNL2_PROTO_HDR_NATT_KEEP		= 33,
+	/* VIRTCHNL2_PROTO_HDR_PAY is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_PAY			= 34,
+	VIRTCHNL2_PROTO_HDR_L2TPV2		= 35,
+	VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL	= 36,
+	VIRTCHNL2_PROTO_HDR_L2TPV3		= 37,
+	VIRTCHNL2_PROTO_HDR_GTP			= 38,
+	VIRTCHNL2_PROTO_HDR_GTP_EH		= 39,
+	VIRTCHNL2_PROTO_HDR_GTPCV2		= 40,
+	VIRTCHNL2_PROTO_HDR_GTPC_TEID		= 41,
+	VIRTCHNL2_PROTO_HDR_GTPU		= 42,
+	VIRTCHNL2_PROTO_HDR_GTPU_UL		= 43,
+	VIRTCHNL2_PROTO_HDR_GTPU_DL		= 44,
+	VIRTCHNL2_PROTO_HDR_ECPRI		= 45,
+	VIRTCHNL2_PROTO_HDR_VRRP		= 46,
+	VIRTCHNL2_PROTO_HDR_OSPF		= 47,
+	/* VIRTCHNL2_PROTO_HDR_TUN is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_TUN			= 48,
+	VIRTCHNL2_PROTO_HDR_GRE			= 49,
+	VIRTCHNL2_PROTO_HDR_NVGRE		= 50,
+	VIRTCHNL2_PROTO_HDR_VXLAN		= 51,
+	VIRTCHNL2_PROTO_HDR_VXLAN_GPE		= 52,
+	VIRTCHNL2_PROTO_HDR_GENEVE		= 53,
+	VIRTCHNL2_PROTO_HDR_NSH			= 54,
+	VIRTCHNL2_PROTO_HDR_QUIC		= 55,
+	VIRTCHNL2_PROTO_HDR_PFCP		= 56,
+	VIRTCHNL2_PROTO_HDR_PFCP_NODE		= 57,
+	VIRTCHNL2_PROTO_HDR_PFCP_SESSION	= 58,
+	VIRTCHNL2_PROTO_HDR_RTP			= 59,
+	VIRTCHNL2_PROTO_HDR_ROCE		= 60,
+	VIRTCHNL2_PROTO_HDR_ROCEV1		= 61,
+	VIRTCHNL2_PROTO_HDR_ROCEV2		= 62,
+	/* protocol ids up to 32767 are reserved for AVF use */
+	/* 32768 - 65534 are used for user defined protocol ids */
+	/* VIRTCHNL2_PROTO_HDR_NO_PROTO is a mandatory protocol id */
+	VIRTCHNL2_PROTO_HDR_NO_PROTO		= 65535,
+};
+
+enum virtchl2_version {
+	VIRTCHNL2_VERSION_MINOR_0		= 0,
+	VIRTCHNL2_VERSION_MAJOR_2		= 2,
+};
+
+/**
+ * struct virtchnl2_edt_caps - Get EDT granularity and time horizon.
+ * @tstamp_granularity_ns: Timestamp granularity in nanoseconds.
+ * @time_horizon_ns: Total time window in nanoseconds.
+ *
+ * Associated with VIRTCHNL2_OP_GET_EDT_CAPS.
+ */
+struct virtchnl2_edt_caps {
+	__le64 tstamp_granularity_ns;
+	__le64 time_horizon_ns;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_edt_caps);
+
+/**
+ * struct virtchnl2_version_info - Version information.
+ * @major: Major version.
+ * @minor: Minor version.
+ *
+ * PF/VF posts its version number to the CP. CP responds with its version number
+ * in the same format, along with a return code.
+ * If there is a major version mismatch, then the PF/VF cannot operate.
+ * If there is a minor version mismatch, then the PF/VF can operate but should
+ * add a warning to the system log.
+ *
+ * This version opcode MUST always be specified as == 1, regardless of other
+ * changes in the API. The CP must always respond to this message without
+ * error regardless of version mismatch.
+ *
+ * Associated with VIRTCHNL2_OP_VERSION.
+ */
+struct virtchnl2_version_info {
+	__le32 major;
+	__le32 minor;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
+
+/**
+ * struct virtchnl2_get_capabilities - Capabilities info.
+ * @csum_caps: See enum virtchnl2_cap_txrx_csum.
+ * @seg_caps: See enum virtchnl2_cap_seg.
+ * @hsplit_caps: See enum virtchnl2_cap_rx_hsplit_at.
+ * @rsc_caps: See enum virtchnl2_cap_rsc.
+ * @rss_caps: See enum virtcnl2_cap_rss.
+ * @other_caps: See enum virtchnl2_cap_other.
+ * @mailbox_dyn_ctl: DYN_CTL register offset and vector id for mailbox provided by CP.
+ * @mailbox_vector_id: Mailbox vector id.
+ * @num_allocated_vectors: Maximum number of allocated vectors for the device.
+ * @max_rx_q: Maximum number of supported Rx queues.
+ * @max_tx_q: Maximum number of supported Tx queues.
+ * @max_rx_bufq: Maximum number of supported buffer queues.
+ * @max_tx_complq: Maximum number of supported completion queues.
+ * @max_sriov_vfs: The PF sends the maximum VFs it is requesting. The CP
+ *		   responds with the maximum VFs granted.
+ * @max_vports: Maximum number of vports that can be supported.
+ * @default_num_vports: Default number of vports driver should allocate on load.
+ * @max_tx_hdr_size: Max header length hardware can parse/checksum, in bytes.
+ * @max_sg_bufs_per_tx_pkt: Max number of scatter gather buffers that can be sent
+ *			    per transmit packet without needing to be linearized.
+ * @pad: Padding.
+ * @reserved: Reserved.
+ * @device_type: See enum virtchl2_device_type.
+ * @min_sso_packet_len: Min packet length supported by device for single
+ *			segment offload.
+ * @max_hdr_buf_per_lso: Max number of header buffers that can be used for an LSO.
+ * @pad1: Padding for future extensions.
+ *
+ * Dataplane driver sends this message to CP to negotiate capabilities and
+ * provides a virtchnl2_get_capabilities structure with its desired
+ * capabilities, max_sriov_vfs and num_allocated_vectors.
+ * CP responds with a virtchnl2_get_capabilities structure updated
+ * with allowed capabilities and the other fields as below.
+ * If PF sets max_sriov_vfs as 0, CP will respond with max number of VFs
+ * that can be created by this PF. For any other value 'n', CP responds
+ * with max_sriov_vfs set to min(n, x) where x is the max number of VFs
+ * allowed by CP's policy. max_sriov_vfs is not applicable for VFs.
+ * If dataplane driver sets num_allocated_vectors as 0, CP will respond with 1
+ * which is default vector associated with the default mailbox. For any other
+ * value 'n', CP responds with a value <= n based on the CP's policy of
+ * max number of vectors for a PF.
+ * CP will respond with the vector ID of mailbox allocated to the PF in
+ * mailbox_vector_id and the number of itr index registers in itr_idx_map.
+ * It also responds with default number of vports that the dataplane driver
+ * should comeup with in default_num_vports and maximum number of vports that
+ * can be supported in max_vports.
+ *
+ * Associated with VIRTCHNL2_OP_GET_CAPS.
+ */
+struct virtchnl2_get_capabilities {
+	__le32 csum_caps;
+	__le32 seg_caps;
+	__le32 hsplit_caps;
+	__le32 rsc_caps;
+	__le64 rss_caps;
+	__le64 other_caps;
+	__le32 mailbox_dyn_ctl;
+	__le16 mailbox_vector_id;
+	__le16 num_allocated_vectors;
+	__le16 max_rx_q;
+	__le16 max_tx_q;
+	__le16 max_rx_bufq;
+	__le16 max_tx_complq;
+	__le16 max_sriov_vfs;
+	__le16 max_vports;
+	__le16 default_num_vports;
+	__le16 max_tx_hdr_size;
+	u8 max_sg_bufs_per_tx_pkt;
+	u8 pad[3];
+	u8 reserved[4];
+	__le32 device_type;
+	u8 min_sso_packet_len;
+	u8 max_hdr_buf_per_lso;
+	u8 pad1[10];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(80, virtchnl2_get_capabilities);
+
+/**
+ * struct virtchnl2_queue_reg_chunk - Single queue chunk.
+ * @type: See enum virtchnl2_queue_type.
+ * @start_queue_id: Start Queue ID.
+ * @num_queues: Number of queues in the chunk.
+ * @pad: Padding.
+ * @qtail_reg_start: Queue tail register offset.
+ * @qtail_reg_spacing: Queue tail register spacing.
+ * @pad1: Padding for future extensions.
+ */
+struct virtchnl2_queue_reg_chunk {
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	__le32 pad;
+	__le64 qtail_reg_start;
+	__le32 qtail_reg_spacing;
+	u8 pad1[4];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_queue_reg_chunk);
+
+/**
+ *  struct virtchnl2_queue_reg_chunks - Specify several chunks of contiguous queues.
+ *  @num_chunks: Number of chunks.
+ *  @pad: Padding.
+ *  @chunks: Chunks of queue info.
+ */
+struct virtchnl2_queue_reg_chunks {
+	__le16 num_chunks;
+	u8 pad[6];
+	struct virtchnl2_queue_reg_chunk chunks[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
+
+/**
+ * struct virtchnl2_create_vport - Create vport config info.
+ * @vport_type: See enum virtchnl2_vport_type.
+ * @txq_model: See virtchnl2_queue_model.
+ * @rxq_model: See virtchnl2_queue_model.
+ * @num_tx_q: Number of Tx queues.
+ * @num_tx_complq: Valid only if txq_model is split queue.
+ * @num_rx_q: Number of Rx queues.
+ * @num_rx_bufq: Valid only if rxq_model is split queue.
+ * @default_rx_q: Relative receive queue index to be used as default.
+ * @vport_index: Used to align PF and CP in case of default multiple vports,
+ *		 it is filled by the PF and CP returns the same value, to
+ *		 enable the driver to support multiple asynchronous parallel
+ *		 CREATE_VPORT requests and associate a response to a specific
+ *		 request.
+ * @max_mtu: Max MTU. CP populates this field on response.
+ * @vport_id: Vport id. CP populates this field on response.
+ * @default_mac_addr: Default MAC address.
+ * @pad: Padding.
+ * @rx_desc_ids: See VIRTCHNL2_RX_DESC_IDS definitions.
+ * @tx_desc_ids: See VIRTCHNL2_TX_DESC_IDS definitions.
+ * @pad1: Padding.
+ * @rss_algorithm: RSS algorithm.
+ * @rss_key_size: RSS key size.
+ * @rss_lut_size: RSS LUT size.
+ * @rx_split_pos: See enum virtchnl2_cap_rx_hsplit_at.
+ * @pad2: Padding.
+ * @chunks: Chunks of contiguous queues.
+ *
+ * PF sends this message to CP to create a vport by filling in required
+ * fields of virtchnl2_create_vport structure.
+ * CP responds with the updated virtchnl2_create_vport structure containing the
+ * necessary fields followed by chunks which in turn will have an array of
+ * num_chunks entries of virtchnl2_queue_chunk structures.
+ *
+ * Associated with VIRTCHNL2_OP_CREATE_VPORT.
+ */
+struct virtchnl2_create_vport {
+	__le16 vport_type;
+	__le16 txq_model;
+	__le16 rxq_model;
+	__le16 num_tx_q;
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	__le16 num_rx_bufq;
+	__le16 default_rx_q;
+	__le16 vport_index;
+	/* CP populates the following fields on response */
+	__le16 max_mtu;
+	__le32 vport_id;
+	u8 default_mac_addr[ETH_ALEN];
+	__le16 pad;
+	__le64 rx_desc_ids;
+	__le64 tx_desc_ids;
+	u8 pad1[72];
+	__le32 rss_algorithm;
+	__le16 rss_key_size;
+	__le16 rss_lut_size;
+	__le32 rx_split_pos;
+	u8 pad2[20];
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(160, virtchnl2_create_vport);
+
+/**
+ * struct virtchnl2_vport - Vport ID info.
+ * @vport_id: Vport id.
+ * @pad: Padding for future extensions.
+ *
+ * PF sends this message to CP to destroy, enable or disable a vport by filling
+ * in the vport_id in virtchnl2_vport structure.
+ * CP responds with the status of the requested operation.
+ *
+ * Associated with VIRTCHNL2_OP_DESTROY_VPORT, VIRTCHNL2_OP_ENABLE_VPORT,
+ * VIRTCHNL2_OP_DISABLE_VPORT.
+ */
+struct virtchnl2_vport {
+	__le32 vport_id;
+	u8 pad[4];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_vport);
+
+/**
+ * struct virtchnl2_txq_info - Transmit queue config info
+ * @dma_ring_addr: DMA address.
+ * @type: See enum virtchnl2_queue_type.
+ * @queue_id: Queue ID.
+ * @relative_queue_id: Valid only if queue model is split and type is transmit
+ *		       queue. Used in many to one mapping of transmit queues to
+ *		       completion queue.
+ * @model: See enum virtchnl2_queue_model.
+ * @sched_mode: See enum virtcnl2_txq_sched_mode.
+ * @qflags: TX queue feature flags.
+ * @ring_len: Ring length.
+ * @tx_compl_queue_id: Valid only if queue model is split and type is transmit queue.
+ * @peer_type: Valid only if queue type is VIRTCHNL2_QUEUE_TYPE_MAILBOX_TX
+ *	       See enum virtchnl2_peer_type.
+ * @peer_rx_queue_id: Valid only if queue type is CONFIG_TX and used to deliver
+ *		      messages for the respective CONFIG_TX queue.
+ * @pad: Padding.
+ * @egress_pasid: Egress PASID info.
+ * @egress_hdr_pasid: Egress HDR passid.
+ * @egress_buf_pasid: Egress buf passid.
+ * @pad1: Padding for future extensions.
+ */
+struct virtchnl2_txq_info {
+	__le64 dma_ring_addr;
+	__le32 type;
+	__le32 queue_id;
+	__le16 relative_queue_id;
+	__le16 model;
+	__le16 sched_mode;
+	__le16 qflags;
+	__le16 ring_len;
+	__le16 tx_compl_queue_id;
+	__le16 peer_type;
+	__le16 peer_rx_queue_id;
+	u8 pad[4];
+	__le32 egress_pasid;
+	__le32 egress_hdr_pasid;
+	__le32 egress_buf_pasid;
+	u8 pad1[8];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(56, virtchnl2_txq_info);
+
+/**
+ * struct virtchnl2_config_tx_queues - TX queue config.
+ * @vport_id: Vport id.
+ * @num_qinfo: Number of virtchnl2_txq_info structs.
+ * @pad: Padding.
+ * @qinfo: Tx queues config info.
+ *
+ * PF sends this message to set up parameters for one or more transmit queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_txq_info
+ * structures. CP configures requested queues and returns a status code. If
+ * num_qinfo specified is greater than the number of queues associated with the
+ * vport, an error is returned and no queues are configured.
+ *
+ * Associated with VIRTCHNL2_OP_CONFIG_TX_QUEUES.
+ */
+struct virtchnl2_config_tx_queues {
+	__le32 vport_id;
+	__le16 num_qinfo;
+	u8 pad[10];
+	struct virtchnl2_txq_info qinfo[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_config_tx_queues);
+
+/**
+ * struct virtchnl2_rxq_info - Receive queue config info.
+ * @desc_ids: See VIRTCHNL2_RX_DESC_IDS definitions.
+ * @dma_ring_addr: See VIRTCHNL2_RX_DESC_IDS definitions.
+ * @type: See enum virtchnl2_queue_type.
+ * @queue_id: Queue id.
+ * @model: See enum virtchnl2_queue_model.
+ * @hdr_buffer_size: Header buffer size.
+ * @data_buffer_size: Data buffer size.
+ * @max_pkt_size: Max packet size.
+ * @ring_len: Ring length.
+ * @buffer_notif_stride: Buffer notification stride in units of 32-descriptors.
+ *			 This field must be a power of 2.
+ * @pad: Padding.
+ * @dma_head_wb_addr: Applicable only for receive buffer queues.
+ * @qflags: Applicable only for receive completion queues.
+ *	    See enum virtchnl2_rxq_flags.
+ * @rx_buffer_low_watermark: Rx buffer low watermark.
+ * @rx_bufq1_id: Buffer queue index of the first buffer queue associated with
+ *		 the Rx queue. Valid only in split queue model.
+ * @rx_bufq2_id: Buffer queue index of the second buffer queue associated with
+ *		 the Rx queue. Valid only in split queue model.
+ * @bufq2_ena: It indicates if there is a second buffer, rx_bufq2_id is valid
+ *	       only if this field is set.
+ * @pad1: Padding.
+ * @ingress_pasid: Ingress PASID.
+ * @ingress_hdr_pasid: Ingress PASID header.
+ * @ingress_buf_pasid: Ingress PASID buffer.
+ * @pad2: Padding for future extensions.
+ */
+struct virtchnl2_rxq_info {
+	__le64 desc_ids;
+	__le64 dma_ring_addr;
+	__le32 type;
+	__le32 queue_id;
+	__le16 model;
+	__le16 hdr_buffer_size;
+	__le32 data_buffer_size;
+	__le32 max_pkt_size;
+	__le16 ring_len;
+	u8 buffer_notif_stride;
+	u8 pad;
+	__le64 dma_head_wb_addr;
+	__le16 qflags;
+	__le16 rx_buffer_low_watermark;
+	__le16 rx_bufq1_id;
+	__le16 rx_bufq2_id;
+	u8 bufq2_ena;
+	u8 pad1[3];
+	__le32 ingress_pasid;
+	__le32 ingress_hdr_pasid;
+	__le32 ingress_buf_pasid;
+	u8 pad2[16];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(88, virtchnl2_rxq_info);
+
+/**
+ * struct virtchnl2_config_rx_queues - Rx queues config.
+ * @vport_id: Vport id.
+ * @num_qinfo: Number of instances.
+ * @pad: Padding.
+ * @qinfo: Rx queues config info.
+ *
+ * PF sends this message to set up parameters for one or more receive queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_rxq_info
+ * structures. CP configures requested queues and returns a status code.
+ * If the number of queues specified is greater than the number of queues
+ * associated with the vport, an error is returned and no queues are configured.
+ *
+ * Associated with VIRTCHNL2_OP_CONFIG_RX_QUEUES.
+ */
+struct virtchnl2_config_rx_queues {
+	__le32 vport_id;
+	__le16 num_qinfo;
+	u8 pad[18];
+	struct virtchnl2_rxq_info qinfo[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_config_rx_queues);
+
+/**
+ * struct virtchnl2_add_queues - data for VIRTCHNL2_OP_ADD_QUEUES.
+ * @vport_id: Vport id.
+ * @num_tx_q: Number of Tx qieues.
+ * @num_tx_complq: Number of Tx completion queues.
+ * @num_rx_q:  Number of Rx queues.
+ * @num_rx_bufq:  Number of Rx buffer queues.
+ * @pad: Padding.
+ * @chunks: Chunks of contiguous queues.
+ *
+ * PF sends this message to request additional transmit/receive queues beyond
+ * the ones that were assigned via CREATE_VPORT request. virtchnl2_add_queues
+ * structure is used to specify the number of each type of queues.
+ * CP responds with the same structure with the actual number of queues assigned
+ * followed by num_chunks of virtchnl2_queue_chunk structures.
+ *
+ * Associated with VIRTCHNL2_OP_ADD_QUEUES.
+ */
+struct virtchnl2_add_queues {
+	__le32 vport_id;
+	__le16 num_tx_q;
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	__le16 num_rx_bufq;
+	u8 pad[4];
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_add_queues);
+
+/**
+ * struct virtchnl2_vector_chunk - Structure to specify a chunk of contiguous
+ *				   interrupt vectors.
+ * @start_vector_id: Start vector id.
+ * @start_evv_id: Start EVV id.
+ * @num_vectors: Number of vectors.
+ * @pad: Padding.
+ * @dynctl_reg_start: DYN_CTL register offset.
+ * @dynctl_reg_spacing: register spacing between DYN_CTL registers of 2
+ *			consecutive vectors.
+ * @itrn_reg_start: ITRN register offset.
+ * @itrn_reg_spacing: Register spacing between dynctl registers of 2
+ *		      consecutive vectors.
+ * @itrn_index_spacing: Register spacing between itrn registers of the same
+ *			vector where n=0..2.
+ * @pad1: Padding for future extensions.
+ *
+ * Register offsets and spacing provided by CP.
+ * Dynamic control registers are used for enabling/disabling/re-enabling
+ * interrupts and updating interrupt rates in the hotpath. Any changes
+ * to interrupt rates in the dynamic control registers will be reflected
+ * in the interrupt throttling rate registers.
+ * itrn registers are used to update interrupt rates for specific
+ * interrupt indices without modifying the state of the interrupt.
+ */
+struct virtchnl2_vector_chunk {
+	__le16 start_vector_id;
+	__le16 start_evv_id;
+	__le16 num_vectors;
+	__le16 pad;
+	__le32 dynctl_reg_start;
+	__le32 dynctl_reg_spacing;
+	__le32 itrn_reg_start;
+	__le32 itrn_reg_spacing;
+	__le32 itrn_index_spacing;
+	u8 pad1[4];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_vector_chunk);
+
+/**
+ * struct virtchnl2_vector_chunks - chunks of contiguous interrupt vectors.
+ * @num_vchunks: number of vector chunks.
+ * @pad: Padding.
+ * @vchunks: Chunks of contiguous vector info.
+ *
+ * PF sends virtchnl2_vector_chunks struct to specify the vectors it is giving
+ * away. CP performs requested action and returns status.
+ *
+ * Associated with VIRTCHNL2_OP_DEALLOC_VECTORS.
+ */
+struct virtchnl2_vector_chunks {
+	__le16 num_vchunks;
+	u8 pad[14];
+	struct virtchnl2_vector_chunk vchunks[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_vector_chunks);
+
+/**
+ * struct virtchnl2_alloc_vectors - vector allocation info.
+ * @num_vectors: Number of vectors.
+ * @pad: Padding.
+ * @vchunks: Chunks of contiguous vector info.
+ *
+ * PF sends this message to request additional interrupt vectors beyond the
+ * ones that were assigned via GET_CAPS request. virtchnl2_alloc_vectors
+ * structure is used to specify the number of vectors requested. CP responds
+ * with the same structure with the actual number of vectors assigned followed
+ * by virtchnl2_vector_chunks structure identifying the vector ids.
+ *
+ * Associated with VIRTCHNL2_OP_ALLOC_VECTORS.
+ */
+struct virtchnl2_alloc_vectors {
+	__le16 num_vectors;
+	u8 pad[14];
+	struct virtchnl2_vector_chunks vchunks;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_alloc_vectors);
+
+/**
+ * struct virtchnl2_rss_lut - RSS LUT info.
+ * @vport_id: Vport id.
+ * @lut_entries_start: Start of LUT entries.
+ * @lut_entries: Number of LUT entrties.
+ * @pad: Padding.
+ * @lut: RSS lookup table.
+ *
+ * PF sends this message to get or set RSS lookup table. Only supported if
+ * both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation.
+ *
+ * Associated with VIRTCHNL2_OP_GET_RSS_LUT and VIRTCHNL2_OP_SET_RSS_LUT.
+ */
+struct virtchnl2_rss_lut {
+	__le32 vport_id;
+	__le16 lut_entries_start;
+	__le16 lut_entries;
+	u8 pad[4];
+	__le32 lut[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(12, virtchnl2_rss_lut);
+
+/**
+ * struct virtchnl2_rss_hash - RSS hash info.
+ * @ptype_groups: Packet type groups bitmap.
+ * @vport_id: Vport id.
+ * @pad: Padding for future extensions.
+ *
+ * PF sends these messages to get and set the hash filter enable bits for RSS.
+ * By default, the CP sets these to all possible traffic types that the
+ * hardware supports. The PF can query this value if it wants to change the
+ * traffic types that are hashed by the hardware.
+ * Only supported if both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit
+ * during configuration negotiation.
+ *
+ * Associated with VIRTCHNL2_OP_GET_RSS_HASH and VIRTCHNL2_OP_SET_RSS_HASH
+ */
+struct virtchnl2_rss_hash {
+	__le64 ptype_groups;
+	__le32 vport_id;
+	u8 pad[4];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_rss_hash);
+
+/**
+ * struct virtchnl2_sriov_vfs_info - VFs info.
+ * @num_vfs: Number of VFs.
+ * @pad: Padding for future extensions.
+ *
+ * This message is used to set number of SRIOV VFs to be created. The actual
+ * allocation of resources for the VFs in terms of vport, queues and interrupts
+ * is done by CP. When this call completes, the IDPF driver calls
+ * pci_enable_sriov to let the OS instantiate the SRIOV PCIE devices.
+ * The number of VFs set to 0 will destroy all the VFs of this function.
+ *
+ * Associated with VIRTCHNL2_OP_SET_SRIOV_VFS.
+ */
+struct virtchnl2_sriov_vfs_info {
+	__le16 num_vfs;
+	__le16 pad;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(4, virtchnl2_sriov_vfs_info);
+
+/**
+ * struct virtchnl2_ptype - Packet type info.
+ * @ptype_id_10: 10-bit packet type.
+ * @ptype_id_8: 8-bit packet type.
+ * @proto_id_count: Number of protocol ids the packet supports, maximum of 32
+ *		    protocol ids are supported.
+ * @pad: Padding.
+ * @proto_id: proto_id_count decides the allocation of protocol id array.
+ *	      See enum virtchnl2_proto_hdr_type.
+ *
+ * Based on the descriptor type the PF supports, CP fills ptype_id_10 or
+ * ptype_id_8 for flex and base descriptor respectively. If ptype_id_10 value
+ * is set to 0xFFFF, PF should consider this ptype as dummy one and it is the
+ * last ptype.
+ */
+struct virtchnl2_ptype {
+	__le16 ptype_id_10;
+	u8 ptype_id_8;
+	u8 proto_id_count;
+	__le16 pad;
+	__le16 proto_id[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
+
+/**
+ * struct virtchnl2_get_ptype_info - Packet type info.
+ * @start_ptype_id: Starting ptype ID.
+ * @num_ptypes: Number of packet types from start_ptype_id.
+ * @pad: Padding for future extensions.
+ *
+ * The total number of supported packet types is based on the descriptor type.
+ * For the flex descriptor, it is 1024 (10-bit ptype), and for the base
+ * descriptor, it is 256 (8-bit ptype). Send this message to the CP by
+ * populating the 'start_ptype_id' and the 'num_ptypes'. CP responds with the
+ * 'start_ptype_id', 'num_ptypes', and the array of ptype (virtchnl2_ptype) that
+ * are added at the end of the 'virtchnl2_get_ptype_info' message (Note: There
+ * is no specific field for the ptypes but are added at the end of the
+ * ptype info message. PF/VF is expected to extract the ptypes accordingly.
+ * Reason for doing this is because compiler doesn't allow nested flexible
+ * array fields).
+ *
+ * If all the ptypes don't fit into one mailbox buffer, CP splits the
+ * ptype info into multiple messages, where each message will have its own
+ * 'start_ptype_id', 'num_ptypes', and the ptype array itself. When CP is done
+ * updating all the ptype information extracted from the package (the number of
+ * ptypes extracted might be less than what PF/VF expects), it will append a
+ * dummy ptype (which has 'ptype_id_10' of 'struct virtchnl2_ptype' as 0xFFFF)
+ * to the ptype array.
+ *
+ * PF/VF is expected to receive multiple VIRTCHNL2_OP_GET_PTYPE_INFO messages.
+ *
+ * Associated with VIRTCHNL2_OP_GET_PTYPE_INFO.
+ */
+struct virtchnl2_get_ptype_info {
+	__le16 start_ptype_id;
+	__le16 num_ptypes;
+	__le32 pad;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_get_ptype_info);
+
+/**
+ * struct virtchnl2_vport_stats - Vport statistics.
+ * @vport_id: Vport id.
+ * @pad: Padding.
+ * @rx_bytes: Received bytes.
+ * @rx_unicast: Received unicast packets.
+ * @rx_multicast: Received multicast packets.
+ * @rx_broadcast: Received broadcast packets.
+ * @rx_discards: Discarded packets on receive.
+ * @rx_errors: Receive errors.
+ * @rx_unknown_protocol: Unlnown protocol.
+ * @tx_bytes: Transmitted bytes.
+ * @tx_unicast: Transmitted unicast packets.
+ * @tx_multicast: Transmitted multicast packets.
+ * @tx_broadcast: Transmitted broadcast packets.
+ * @tx_discards: Discarded packets on transmit.
+ * @tx_errors: Transmit errors.
+ * @rx_invalid_frame_length: Packets with invalid frame length.
+ * @rx_overflow_drop: Packets dropped on buffer overflow.
+ *
+ * PF/VF sends this message to CP to get the update stats by specifying the
+ * vport_id. CP responds with stats in struct virtchnl2_vport_stats.
+ *
+ * Associated with VIRTCHNL2_OP_GET_STATS.
+ */
+struct virtchnl2_vport_stats {
+	__le32 vport_id;
+	u8 pad[4];
+	__le64 rx_bytes;
+	__le64 rx_unicast;
+	__le64 rx_multicast;
+	__le64 rx_broadcast;
+	__le64 rx_discards;
+	__le64 rx_errors;
+	__le64 rx_unknown_protocol;
+	__le64 tx_bytes;
+	__le64 tx_unicast;
+	__le64 tx_multicast;
+	__le64 tx_broadcast;
+	__le64 tx_discards;
+	__le64 tx_errors;
+	__le64 rx_invalid_frame_length;
+	__le64 rx_overflow_drop;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(128, virtchnl2_vport_stats);
+
+/**
+ * struct virtchnl2_event - Event info.
+ * @event: Event opcode. See enum virtchnl2_event_codes.
+ * @link_speed: Link_speed provided in Mbps.
+ * @vport_id: Vport ID.
+ * @link_status: Link status.
+ * @pad: Padding.
+ * @reserved: Reserved.
+ *
+ * CP sends this message to inform the PF/VF driver of events that may affect
+ * it. No direct response is expected from the driver, though it may generate
+ * other messages in response to this one.
+ *
+ * Associated with VIRTCHNL2_OP_EVENT.
+ */
+struct virtchnl2_event {
+	__le32 event;
+	__le32 link_speed;
+	__le32 vport_id;
+	u8 link_status;
+	u8 pad;
+	__le16 reserved;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_event);
+
+/**
+ * struct virtchnl2_rss_key - RSS key info.
+ * @vport_id: Vport id.
+ * @key_len: Length of RSS key.
+ * @pad: Padding.
+ * @key_flex: RSS hash key, packed bytes.
+ * PF/VF sends this message to get or set RSS key. Only supported if both
+ * PF/VF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation.
+ *
+ * Associated with VIRTCHNL2_OP_GET_RSS_KEY and VIRTCHNL2_OP_SET_RSS_KEY.
+ */
+struct virtchnl2_rss_key {
+	__le32 vport_id;
+	__le16 key_len;
+	u8 pad;
+	__DECLARE_FLEX_ARRAY(u8, key_flex);
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_rss_key);
+
+/**
+ * struct virtchnl2_queue_chunk - chunk of contiguous queues
+ * @type: See enum virtchnl2_queue_type.
+ * @start_queue_id: Starting queue id.
+ * @num_queues: Number of queues.
+ * @pad: Padding for future extensions.
+ */
+struct virtchnl2_queue_chunk {
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	u8 pad[4];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_chunk);
+
+/* struct virtchnl2_queue_chunks - chunks of contiguous queues
+ * @num_chunks: Number of chunks.
+ * @pad: Padding.
+ * @chunks: Chunks of contiguous queues info.
+ */
+struct virtchnl2_queue_chunks {
+	__le16 num_chunks;
+	u8 pad[6];
+	struct virtchnl2_queue_chunk chunks[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_chunks);
+
+/**
+ * struct virtchnl2_del_ena_dis_queues - Enable/disable queues info.
+ * @vport_id: Vport id.
+ * @pad: Padding.
+ * @chunks: Chunks of contiguous queues info.
+ *
+ * PF sends these messages to enable, disable or delete queues specified in
+ * chunks. PF sends virtchnl2_del_ena_dis_queues struct to specify the queues
+ * to be enabled/disabled/deleted. Also applicable to single queue receive or
+ * transmit. CP performs requested action and returns status.
+ *
+ * Associated with VIRTCHNL2_OP_ENABLE_QUEUES, VIRTCHNL2_OP_DISABLE_QUEUES and
+ * VIRTCHNL2_OP_DISABLE_QUEUES.
+ */
+struct virtchnl2_del_ena_dis_queues {
+	__le32 vport_id;
+	u8 pad[4];
+	struct virtchnl2_queue_chunks chunks;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_del_ena_dis_queues);
+
+/**
+ * struct virtchnl2_queue_vector - Queue to vector mapping.
+ * @queue_id: Queue id.
+ * @vector_id: Vector id.
+ * @pad: Padding.
+ * @itr_idx: See enum virtchnl2_itr_idx.
+ * @queue_type: See enum virtchnl2_queue_type.
+ * @pad1: Padding for future extensions.
+ */
+struct virtchnl2_queue_vector {
+	__le32 queue_id;
+	__le16 vector_id;
+	u8 pad[2];
+	__le32 itr_idx;
+	__le32 queue_type;
+	u8 pad1[8];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_queue_vector);
+
+/**
+ * struct virtchnl2_queue_vector_maps - Map/unmap queues info.
+ * @vport_id: Vport id.
+ * @num_qv_maps: Number of queue vector maps.
+ * @pad: Padding.
+ * @qv_maps: Queue to vector maps.
+ *
+ * PF sends this message to map or unmap queues to vectors and interrupt
+ * throttling rate index registers. External data buffer contains
+ * virtchnl2_queue_vector_maps structure that contains num_qv_maps of
+ * virtchnl2_queue_vector structures. CP maps the requested queue vector maps
+ * after validating the queue and vector ids and returns a status code.
+ *
+ * Associated with VIRTCHNL2_OP_MAP_QUEUE_VECTOR and VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR.
+ */
+struct virtchnl2_queue_vector_maps {
+	__le32 vport_id;
+	__le16 num_qv_maps;
+	u8 pad[10];
+	struct virtchnl2_queue_vector qv_maps[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_vector_maps);
+
+/**
+ * struct virtchnl2_loopback - Loopback info.
+ * @vport_id: Vport id.
+ * @enable: Enable/disable.
+ * @pad: Padding for future extensions.
+ *
+ * PF/VF sends this message to transition to/from the loopback state. Setting
+ * the 'enable' to 1 enables the loopback state and setting 'enable' to 0
+ * disables it. CP configures the state to loopback and returns status.
+ *
+ * Associated with VIRTCHNL2_OP_LOOPBACK.
+ */
+struct virtchnl2_loopback {
+	__le32 vport_id;
+	u8 enable;
+	u8 pad[3];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_loopback);
+
+/* struct virtchnl2_mac_addr - MAC address info.
+ * @addr: MAC address.
+ * @type: MAC type. See enum virtchnl2_mac_addr_type.
+ * @pad: Padding for future extensions.
+ */
+struct virtchnl2_mac_addr {
+	u8 addr[ETH_ALEN];
+	u8 type;
+	u8 pad;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_mac_addr);
+
+/**
+ * struct virtchnl2_mac_addr_list - List of MAC addresses.
+ * @vport_id: Vport id.
+ * @num_mac_addr: Number of MAC addresses.
+ * @pad: Padding.
+ * @mac_addr_list: List with MAC address info.
+ *
+ * PF/VF driver uses this structure to send list of MAC addresses to be
+ * added/deleted to the CP where as CP performs the action and returns the
+ * status.
+ *
+ * Associated with VIRTCHNL2_OP_ADD_MAC_ADDR and VIRTCHNL2_OP_DEL_MAC_ADDR.
+ */
+
+struct virtchnl2_mac_addr_list {
+	__le32 vport_id;
+	__le16 num_mac_addr;
+	u8 pad[2];
+	struct virtchnl2_mac_addr mac_addr_list[];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_mac_addr_list);
+
+/**
+ * struct virtchnl2_promisc_info - Promisc type info.
+ * @vport_id: Vport id.
+ * @flags: See enum virtchnl2_promisc_flags.
+ * @pad: Padding for future extensions.
+ *
+ * PF/VF sends vport id and flags to the CP where as CP performs the action
+ * and returns the status.
+ *
+ * Associated with VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE.
+ */
+struct virtchnl2_promisc_info {
+	__le32 vport_id;
+	/* See VIRTCHNL2_PROMISC_FLAGS definitions */
+	__le16 flags;
+	u8 pad[2];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_promisc_info);
+
+#endif /* _VIRTCHNL_2_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h b/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
new file mode 100644
index 000000000000..e2a95e6053a9
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
@@ -0,0 +1,448 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _VIRTCHNL2_LAN_DESC_H_
+#define _VIRTCHNL2_LAN_DESC_H_
+
+#include <linux/bits.h>
+
+/* This is an interface definition file where existing enums and their values
+ * must remain unchanged over time, so we specify explicit values for all enums.
+ */
+
+/* Transmit descriptor ID flags
+ */
+enum virtchnl2_tx_desc_ids {
+	VIRTCHNL2_TXDID_DATA				= BIT(0),
+	VIRTCHNL2_TXDID_CTX				= BIT(1),
+	/* TXDID bit 2 is reserved
+	 * TXDID bit 3 is free for future use
+	 * TXDID bit 4 is reserved
+	 */
+	VIRTCHNL2_TXDID_FLEX_TSO_CTX			= BIT(5),
+	/* TXDID bit 6 is reserved */
+	VIRTCHNL2_TXDID_FLEX_L2TAG1_L2TAG2		= BIT(7),
+	/* TXDID bits 8 and 9 are free for future use
+	 * TXDID bit 10 is reserved
+	 * TXDID bit 11 is free for future use
+	 */
+	VIRTCHNL2_TXDID_FLEX_FLOW_SCHED			= BIT(12),
+	/* TXDID bits 13 and 14 are free for future use */
+	VIRTCHNL2_TXDID_DESC_DONE			= BIT(15),
+};
+
+/* Receive descriptor IDs */
+enum virtchnl2_rx_desc_ids {
+	VIRTCHNL2_RXDID_1_32B_BASE			= 1,
+	/* FLEX_SQ_NIC and FLEX_SPLITQ share desc ids because they can be
+	 * differentiated based on queue model; e.g. single queue model can
+	 * only use FLEX_SQ_NIC and split queue model can only use FLEX_SPLITQ
+	 * for DID 2.
+	 */
+	VIRTCHNL2_RXDID_2_FLEX_SPLITQ			= 2,
+	VIRTCHNL2_RXDID_2_FLEX_SQ_NIC			= VIRTCHNL2_RXDID_2_FLEX_SPLITQ,
+	/* 3 through 6 are reserved */
+	VIRTCHNL2_RXDID_7_HW_RSVD			= 7,
+	/* 8 through 15 are free */
+};
+
+/* Receive descriptor ID bitmasks */
+#define VIRTCHNL2_RXDID_M(bit)			BIT_ULL(VIRTCHNL2_RXDID_##bit)
+
+enum virtchnl2_rx_desc_id_bitmasks {
+	VIRTCHNL2_RXDID_1_32B_BASE_M			= VIRTCHNL2_RXDID_M(1_32B_BASE),
+	VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M			= VIRTCHNL2_RXDID_M(2_FLEX_SPLITQ),
+	VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M			= VIRTCHNL2_RXDID_M(2_FLEX_SQ_NIC),
+	VIRTCHNL2_RXDID_7_HW_RSVD_M			= VIRTCHNL2_RXDID_M(7_HW_RSVD),
+};
+
+/* For splitq virtchnl2_rx_flex_desc_adv_nic_3 desc members */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M		GENMASK(3, 0)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_M		GENMASK(7, 6)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M		GENMASK(9, 0)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_S	12
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_M	\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_M		GENMASK(15, 13)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M		GENMASK(13, 0)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M		GENMASK(9, 0)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_S		10
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_S		11
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_M		GENMASK(14, 12)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_S)
+
+/* Bitmasks for splitq virtchnl2_rx_flex_desc_adv_nic_3 */
+enum virtchl2_rx_flex_desc_adv_status_error_0_qw1_bits {
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_DD_M			= BIT(0),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_M		= BIT(1),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_M		= BIT(2),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_M		= BIT(3),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_M		= BIT(4),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_M		= BIT(5),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_M		= BIT(6),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EUDPE_M		= BIT(7),
+};
+
+/* Bitmasks for splitq virtchnl2_rx_flex_desc_adv_nic_3 */
+enum virtchnl2_rx_flex_desc_adv_status_error_0_qw0_bits {
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_LPBK_M		= BIT(0),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_M		= BIT(1),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RXE_M		= BIT(2),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_CRCP_M		= BIT(3),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RSS_VALID_M		= BIT(4),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L2TAG1P_M		= BIT(5),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD0_VALID_M	= BIT(6),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD1_VALID_M	= BIT(7),
+};
+
+/* Bitmasks for splitq virtchnl2_rx_flex_desc_adv_nic_3 */
+enum virtchnl2_rx_flex_desc_adv_status_error_1_bits {
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_RSVD_M		= GENMASK(1, 0),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_ATRAEFAIL_M		= BIT(2),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_L2TAG2P_M		= BIT(3),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD2_VALID_M	= BIT(4),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD3_VALID_M	= BIT(5),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD4_VALID_M	= BIT(6),
+	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD5_VALID_M	= BIT(7),
+};
+
+/* For singleq (flex) virtchnl2_rx_flex_desc fields
+ * For virtchnl2_rx_flex_desc.ptype_flex_flags0 member
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_PTYPE_M				GENMASK(9, 0)
+
+/* For virtchnl2_rx_flex_desc.pkt_len member */
+#define VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M			GENMASK(13, 0)
+
+/* Bitmasks for singleq (flex) virtchnl2_rx_flex_desc */
+enum virtchnl2_rx_flex_desc_status_error_0_bits {
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_DD_M			= BIT(0),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_EOF_M			= BIT(1),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_HBO_M			= BIT(2),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_L3L4P_M			= BIT(3),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_IPE_M		= BIT(4),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_L4E_M		= BIT(5),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M		= BIT(6),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M		= BIT(7),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_LPBK_M			= BIT(8),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_IPV6EXADD_M		= BIT(9),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_RXE_M			= BIT(10),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_CRCP_M			= BIT(11),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_M		= BIT(12),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_L2TAG1P_M		= BIT(13),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD0_VALID_M		= BIT(14),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD1_VALID_M		= BIT(15),
+};
+
+/* Bitmasks for singleq (flex) virtchnl2_rx_flex_desc */
+enum virtchnl2_rx_flex_desc_status_error_1_bits {
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_CPM_M			= GENMASK(3, 0),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_NAT_M			= BIT(4),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_CRYPTO_M			= BIT(5),
+	/* [10:6] reserved */
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_L2TAG2P_M		= BIT(11),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD2_VALID_M		= BIT(12),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD3_VALID_M		= BIT(13),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD4_VALID_M		= BIT(14),
+	VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD5_VALID_M		= BIT(15),
+};
+
+/* For virtchnl2_rx_flex_desc.ts_low member */
+#define VIRTCHNL2_RX_FLEX_TSTAMP_VALID				BIT(0)
+
+/* For singleq (non flex) virtchnl2_singleq_base_rx_desc legacy desc members */
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M		GENMASK_ULL(51, 38)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M		GENMASK_ULL(37, 30)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M		GENMASK_ULL(26, 19)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_M		GENMASK_ULL(18, 0)
+
+/* Bitmasks for singleq (base) virtchnl2_rx_base_desc */
+enum virtchnl2_rx_base_desc_status_bits {
+	VIRTCHNL2_RX_BASE_DESC_STATUS_DD_M		= BIT(0),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_M		= BIT(1),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_L2TAG1P_M		= BIT(2),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_L3L4P_M		= BIT(3),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_CRCP_M		= BIT(4),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD_M		= GENMASK(7, 5),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_EXT_UDP_0_M	= BIT(8),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_UMBCAST_M		= GENMASK(10, 9),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_FLM_M		= BIT(11),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_FLTSTAT_M		= GENMASK(13, 12),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_LPBK_M		= BIT(14),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_IPV6EXADD_M	= BIT(15),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD1_M		= GENMASK(17, 16),
+	VIRTCHNL2_RX_BASE_DESC_STATUS_INT_UDP_0_M	= BIT(18),
+};
+
+/* Bitmasks for singleq (base) virtchnl2_rx_base_desc */
+enum virtchnl2_rx_base_desc_error_bits {
+	VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_M		= BIT(0),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_ATRAEFAIL_M	= BIT(1),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_HBO_M		= BIT(2),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_L3L4E_M		= GENMASK(5, 3),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_IPE_M		= BIT(3),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_L4E_M		= BIT(4),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_EIPE_M		= BIT(5),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_OVERSIZE_M		= BIT(6),
+	VIRTCHNL2_RX_BASE_DESC_ERROR_PPRS_M		= BIT(7),
+};
+
+/* Bitmasks for singleq (base) virtchnl2_rx_base_desc */
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH_M	GENMASK(13, 12)
+
+/**
+ * struct virtchnl2_splitq_rx_buf_desc - SplitQ RX buffer descriptor format
+ * @qword0: RX buffer struct.
+ * @qword0.buf_id: Buffer identifier.
+ * @qword0.rsvd0: Reserved.
+ * @qword0.rsvd1: Reserved.
+ * @pkt_addr: Packet buffer address.
+ * @hdr_addr: Header buffer address.
+ * @rsvd2: Rerserved.
+ *
+ * Receive Descriptors
+ * SplitQ buffer
+ * |                                       16|                   0|
+ * ----------------------------------------------------------------
+ * | RSV                                     | Buffer ID          |
+ * ----------------------------------------------------------------
+ * | Rx packet buffer address                                     |
+ * ----------------------------------------------------------------
+ * | Rx header buffer address                                     |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * |                                                             0|
+ */
+struct virtchnl2_splitq_rx_buf_desc {
+	struct {
+		__le16  buf_id;
+		__le16  rsvd0;
+		__le32  rsvd1;
+	} qword0;
+	__le64  pkt_addr;
+	__le64  hdr_addr;
+	__le64  rsvd2;
+};
+
+/**
+ * struct virtchnl2_singleq_rx_buf_desc - SingleQ RX buffer descriptor format.
+ * @pkt_addr: Packet buffer address.
+ * @hdr_addr: Header buffer address.
+ * @rsvd1: Reserved.
+ * @rsvd2: Reserved.
+ *
+ * SingleQ buffer
+ * |                                                             0|
+ * ----------------------------------------------------------------
+ * | Rx packet buffer address                                     |
+ * ----------------------------------------------------------------
+ * | Rx header buffer address                                     |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * |                                                             0|
+ */
+struct virtchnl2_singleq_rx_buf_desc {
+	__le64  pkt_addr;
+	__le64  hdr_addr;
+	__le64  rsvd1;
+	__le64  rsvd2;
+};
+
+/**
+ * struct virtchnl2_singleq_base_rx_desc - RX descriptor writeback format.
+ * @qword0: First quad word struct.
+ * @qword0.lo_dword: Lower dual word struct.
+ * @qword0.lo_dword.mirroring_status: Mirrored packet status.
+ * @qword0.lo_dword.l2tag1: Stripped L2 tag from the received packet.
+ * @qword0.hi_dword: High dual word union.
+ * @qword0.hi_dword.rss: RSS hash.
+ * @qword0.hi_dword.fd_id: Flow director filter id.
+ * @qword1: Second quad word struct.
+ * @qword1.status_error_ptype_len: Status/error/PTYPE/length.
+ * @qword2: Third quad word struct.
+ * @qword2.ext_status: Extended status.
+ * @qword2.rsvd: Reserved.
+ * @qword2.l2tag2_1: Extracted L2 tag 2 from the packet.
+ * @qword2.l2tag2_2: Reserved.
+ * @qword3: Fourth quad word struct.
+ * @qword3.reserved: Reserved.
+ * @qword3.fd_id: Flow director filter id.
+ *
+ * Profile ID 0x1, SingleQ, base writeback format
+ */
+struct virtchnl2_singleq_base_rx_desc {
+	struct {
+		struct {
+			__le16 mirroring_status;
+			__le16 l2tag1;
+		} lo_dword;
+		union {
+			__le32 rss;
+			__le32 fd_id;
+		} hi_dword;
+	} qword0;
+	struct {
+		__le64 status_error_ptype_len;
+	} qword1;
+	struct {
+		__le16 ext_status;
+		__le16 rsvd;
+		__le16 l2tag2_1;
+		__le16 l2tag2_2;
+	} qword2;
+	struct {
+		__le32 reserved;
+		__le32 fd_id;
+	} qword3;
+};
+
+/**
+ * struct virtchnl2_rx_flex_desc_nic - RX descriptor writeback format.
+ *
+ * @rxdid: Descriptor builder profile id.
+ * @mir_id_umb_cast: umb_cast=[7:6], mirror=[5:0]
+ * @ptype_flex_flags0: ff0=[15:10], ptype=[9:0]
+ * @pkt_len: Packet length, [15:14] are reserved.
+ * @hdr_len_sph_flex_flags1: ff1/ext=[15:12], sph=[11], header=[10:0].
+ * @status_error0: Status/Error section 0.
+ * @l2tag1: Stripped L2 tag from the received packet
+ * @rss_hash: RSS hash.
+ * @status_error1: Status/Error section 1.
+ * @flexi_flags2: Flexible flags section 2.
+ * @ts_low: Lower word of timestamp value.
+ * @l2tag2_1st: First L2TAG2.
+ * @l2tag2_2nd: Second L2TAG2.
+ * @flow_id: Flow id.
+ * @flex_ts: Timestamp and flexible flow id union.
+ * @flex_ts.ts_high: Timestamp higher word of the timestamp value.
+ * @flex_ts.flex.rsvd: Reserved.
+ * @flex_ts.flex.flow_id_ipv6: IPv6 flow id.
+ *
+ * Profile ID 0x2, SingleQ, flex writeback format
+ */
+struct virtchnl2_rx_flex_desc_nic {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+	/* Qword 3 */
+	__le32 flow_id;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
+/**
+ * struct virtchnl2_rx_flex_desc_adv_nic_3 - RX descriptor writeback format.
+ * @rxdid_ucast: ucast=[7:6], rsvd=[5:4], profile_id=[3:0].
+ * @status_err0_qw0: Status/Error section 0 in quad word 0.
+ * @ptype_err_fflags0: ff0=[15:12], udp_len_err=[11], ip_hdr_err=[10], ptype=[9:0].
+ * @pktlen_gen_bufq_id: bufq_id=[15] only in splitq, gen=[14] only in splitq, plen=[13:0].
+ * @hdrlen_flags: miss_prepend=[15], trunc_mirr=[14], int_udp_0=[13], ext_udp0=[12],
+ *		  sph=[11] only in splitq, rsc=[10] only in splitq, header=[9:0].
+ * @status_err0_qw1: Status/Error section 0 in quad word 1.
+ * @status_err1: Status/Error section 1.
+ * @fflags1: Flexible flags section 1.
+ * @ts_low: Lower word of timestamp value.
+ * @buf_id: Buffer identifier. Only in splitq mode.
+ * @misc: Union.
+ * @misc.raw_cs: Raw checksum.
+ * @misc.l2tag1: Stripped L2 tag from the received packet
+ * @misc.rscseglen:
+ * @hash1: Lower bits of Rx hash value.
+ * @ff2_mirrid_hash2: Union.
+ * @ff2_mirrid_hash2.fflags2: Flexible flags section 2.
+ * @ff2_mirrid_hash2.mirrorid: Mirror id.
+ * @ff2_mirrid_hash2.rscseglen: RSC segment length.
+ * @hash3: Upper bits of Rx hash value.
+ * @l2tag2: Extracted L2 tag 2 from the packet.
+ * @fmd4: Flexible metadata container 4.
+ * @l2tag1: Stripped L2 tag from the received packet
+ * @fmd6: Flexible metadata container 6.
+ * @ts_high: Timestamp higher word of the timestamp value.
+ *
+ * Profile ID 0x2, SplitQ, flex writeback format
+ *
+ * Flex-field 0: BufferID
+ * Flex-field 1: Raw checksum/L2TAG1/RSC Seg Len (determined by HW)
+ * Flex-field 2: Hash[15:0]
+ * Flex-flags 2: Hash[23:16]
+ * Flex-field 3: L2TAG2
+ * Flex-field 5: L2TAG1
+ * Flex-field 7: Timestamp (upper 32 bits)
+ */
+struct virtchnl2_rx_flex_desc_adv_nic_3 {
+	/* Qword 0 */
+	u8 rxdid_ucast;
+	u8 status_err0_qw0;
+	__le16 ptype_err_fflags0;
+	__le16 pktlen_gen_bufq_id;
+	__le16 hdrlen_flags;
+	/* Qword 1 */
+	u8 status_err0_qw1;
+	u8 status_err1;
+	u8 fflags1;
+	u8 ts_low;
+	__le16 buf_id;
+	union {
+		__le16 raw_cs;
+		__le16 l2tag1;
+		__le16 rscseglen;
+	} misc;
+	/* Qword 2 */
+	__le16 hash1;
+	union {
+		u8 fflags2;
+		u8 mirrorid;
+		u8 hash2;
+	} ff2_mirrid_hash2;
+	u8 hash3;
+	__le16 l2tag2;
+	__le16 fmd4;
+	/* Qword 3 */
+	__le16 l2tag1;
+	__le16 fmd6;
+	__le32 ts_high;
+};
+
+/* Common union for accessing descriptor format structs */
+union virtchnl2_rx_desc {
+	struct virtchnl2_singleq_base_rx_desc		base_wb;
+	struct virtchnl2_rx_flex_desc_nic		flex_nic_wb;
+	struct virtchnl2_rx_flex_desc_adv_nic_3		flex_adv_nic_3_wb;
+};
+
+#endif /* _VIRTCHNL_LAN_DESC_H_ */
-- 
2.17.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
