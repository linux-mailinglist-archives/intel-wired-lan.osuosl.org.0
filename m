Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9276DCEEC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 03:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D928417A6;
	Tue, 11 Apr 2023 01:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D928417A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681175683;
	bh=vrfyQzEzsSDT4nOHU4x2FvNRI3HvtIzwdRrrENf4qBo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FmnGrkqdxXhOBFv3Zxn5xzH7jouh043YSDPOFmW8L049z+w0lEpsY0M3i90QDvnsa
	 pSrXYyfLSZHgcwmrGNKsimK4bUMFvS2Ef10qv0dNR+/LPU8prf1EG56oYE3gULUtXb
	 TIl5kVPGwMoKpnSnHI0IULyNgBRIZum0wPcKdspp9PUe/OeVB6vgAwHu0faDw4rnSw
	 QpadFytLN2ZV22YLmJwxPZs1zshkHjU8VDGrnoFBDAg915J90IyNVXIACkLri8H4Fw
	 yf6SUCFcQJZl+KZb2ICu8JWi8qKAgeE4uIQJ7jU3iSDnWLIfRxAOaakxW1xNSlY/Fz
	 PSc99NqkQi+3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQag4VNtMYmW; Tue, 11 Apr 2023 01:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DAA641788;
	Tue, 11 Apr 2023 01:14:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DAA641788
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 321D91C3BA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 01:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B99541780
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 01:14:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B99541780
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0jX6fa_2Xp3Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 01:14:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8611441776
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8611441776
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 01:14:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="371339558"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="371339558"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 18:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="688431887"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="688431887"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga002.jf.intel.com with ESMTP; 10 Apr 2023 18:14:14 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Apr 2023 18:13:40 -0700
Message-Id: <20230411011354.2619359-2-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681175656; x=1712711656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eAvRf3pyIU71+1h+i9dgsZszb3hqOWLa3/61f/gHQFY=;
 b=Sk8edHHnlzZS8WucJeSsFQCkIeoLLVd7zmCnYEqkz9M62Ze7ObjEsxY0
 ZI88ivYWpAGXSLPdbzPnLRp8ILuz56ZdYh93SLlCGBdvg/b5mQTg7chr0
 7FG4aZwJ7JmTvHK/9LTsxFzpbix3ymi+xHNo3oxFAVTqA7Q0Q+Vg6WZAL
 +KAmEJY7Koq2oaNrYcCllICCNGenyd7wXUFK7MXbKHDuX3iKaM1XWx1De
 ALLjt5eyy0q5uZZUglTiXwn9089JxEin4q2tcoruc9MxbL8W6gvZUyUHS
 bl8x3bsBnoAb7yHYi/U2y5wKP7BN3ceOpjQpOqG0Zv5L/4F3bqjU0zfVW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sk8edHHn
Subject: [Intel-wired-lan] [PATCH net-next v2 01/15] virtchnl: add virtchnl
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1201 +++++++++++++++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  666 +++++++++
 2 files changed, 1867 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2.h
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
new file mode 100644
index 000000000000..748ba522734d
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -0,0 +1,1201 @@
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
+ */
+
+#include "virtchnl2_lan_desc.h"
+
+/* VIRTCHNL2_ERROR_CODES */
+/* Success */
+#define VIRTCHNL2_STATUS_SUCCESS	0
+/* Operation not permitted, used in case of command not permitted for sender */
+#define VIRTCHNL2_STATUS_ERR_EPERM	1
+/* Bad opcode - virtchnl interface problem */
+#define VIRTCHNL2_STATUS_ERR_ESRCH	3
+/* I/O error - HW access error */
+#define VIRTCHNL2_STATUS_ERR_EIO	5
+/* No such resource - Referenced resource is not allacated */
+#define VIRTCHNL2_STATUS_ERR_ENXIO	6
+/* Permission denied - Resource is not permitted to caller */
+#define VIRTCHNL2_STATUS_ERR_EACCES	13
+/* Device or resource busy - In case shared resource is in use by others */
+#define VIRTCHNL2_STATUS_ERR_EBUSY	16
+/* Object already exists and not free */
+#define VIRTCHNL2_STATUS_ERR_EEXIST	17
+/* Invalid input argument in command */
+#define VIRTCHNL2_STATUS_ERR_EINVAL	22
+/* No space left or allocation failure */
+#define VIRTCHNL2_STATUS_ERR_ENOSPC	28
+/* Parameter out of range */
+#define VIRTCHNL2_STATUS_ERR_ERANGE	34
+
+/* Op not allowed in current dev mode */
+#define VIRTCHNL2_STATUS_ERR_EMODE	200
+/* State Machine error - Command sequence problem */
+#define VIRTCHNL2_STATUS_ERR_ESM	201
+
+/**
+ * This macro is used to generate compilation errors if a structure
+ * is not exactly the correct length.
+ */
+#define VIRTCHNL2_CHECK_STRUCT_LEN(n, X)	\
+	static_assert((n) == sizeof(struct X))
+
+/**
+ * New major set of opcodes introduced and so leaving room for
+ * old misc opcodes to be added in future. Also these opcodes may only
+ * be used if both the PF and VF have successfully negotiated the
+ * VIRTCHNL version as 2.0 during VIRTCHNL2_OP_VERSION exchange.
+ */
+#define VIRTCHNL2_OP_UNKNOWN			0
+#define VIRTCHNL2_OP_VERSION			1
+#define VIRTCHNL2_OP_GET_CAPS			500
+#define VIRTCHNL2_OP_CREATE_VPORT		501
+#define VIRTCHNL2_OP_DESTROY_VPORT		502
+#define VIRTCHNL2_OP_ENABLE_VPORT		503
+#define VIRTCHNL2_OP_DISABLE_VPORT		504
+#define VIRTCHNL2_OP_CONFIG_TX_QUEUES		505
+#define VIRTCHNL2_OP_CONFIG_RX_QUEUES		506
+#define VIRTCHNL2_OP_ENABLE_QUEUES		507
+#define VIRTCHNL2_OP_DISABLE_QUEUES		508
+#define VIRTCHNL2_OP_ADD_QUEUES			509
+#define VIRTCHNL2_OP_DEL_QUEUES			510
+#define VIRTCHNL2_OP_MAP_QUEUE_VECTOR		511
+#define VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR		512
+#define VIRTCHNL2_OP_GET_RSS_KEY		513
+#define VIRTCHNL2_OP_SET_RSS_KEY		514
+#define VIRTCHNL2_OP_GET_RSS_LUT		515
+#define VIRTCHNL2_OP_SET_RSS_LUT		516
+#define VIRTCHNL2_OP_GET_RSS_HASH		517
+#define VIRTCHNL2_OP_SET_RSS_HASH		518
+#define VIRTCHNL2_OP_SET_SRIOV_VFS		519
+#define VIRTCHNL2_OP_ALLOC_VECTORS		520
+#define VIRTCHNL2_OP_DEALLOC_VECTORS		521
+#define VIRTCHNL2_OP_EVENT			522
+#define VIRTCHNL2_OP_GET_STATS			523
+#define VIRTCHNL2_OP_RESET_VF			524
+#define VIRTCHNL2_OP_GET_EDT_CAPS		525
+#define VIRTCHNL2_OP_GET_PTYPE_INFO		526
+/**
+ * Opcode 527 and 528 are reserved for VIRTCHNL2_OP_GET_PTYPE_ID and
+ * VIRTCHNL2_OP_GET_PTYPE_INFO_RAW.
+ * Opcodes 529, 530, 531, 532 and 533 are reserved.
+ */
+#define VIRTCHNL2_OP_LOOPBACK			534
+#define VIRTCHNL2_OP_ADD_MAC_ADDR		535
+#define VIRTCHNL2_OP_DEL_MAC_ADDR		536
+#define VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE	537
+
+/**
+ * VIRTCHNL2_VPORT_TYPE
+ * Type of virtual port
+ */
+#define VIRTCHNL2_VPORT_TYPE_DEFAULT		0
+
+/**
+ * VIRTCHNL2_QUEUE_MODEL
+ * Type of queue model
+ *
+ * In the single queue model, the same transmit descriptor queue is used by
+ * software to post descriptors to hardware and by hardware to post completed
+ * descriptors to software.
+ * Likewise, the same receive descriptor queue is used by hardware to post
+ * completions to software and by software to post buffers to hardware.
+ */
+#define VIRTCHNL2_QUEUE_MODEL_SINGLE		0
+/**
+ * In the split queue model, hardware uses transmit completion queues to post
+ * descriptor/buffer completions to software, while software uses transmit
+ * descriptor queues to post descriptors to hardware.
+ * Likewise, hardware posts descriptor completions to the receive descriptor
+ * queue, while software uses receive buffer queues to post buffers to hardware.
+ */
+#define VIRTCHNL2_QUEUE_MODEL_SPLIT		1
+
+/**
+ * VIRTCHNL2_CHECKSUM_OFFLOAD_CAPS
+ * Checksum offload capability flags
+ */
+#define VIRTCHNL2_CAP_TX_CSUM_L3_IPV4		BIT(0)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_TCP	BIT(1)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_UDP	BIT(2)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	BIT(3)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_TCP	BIT(4)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_UDP	BIT(5)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	BIT(6)
+#define VIRTCHNL2_CAP_TX_CSUM_GENERIC		BIT(7)
+#define VIRTCHNL2_CAP_RX_CSUM_L3_IPV4		BIT(8)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	BIT(9)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	BIT(10)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	BIT(11)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	BIT(12)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	BIT(13)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP	BIT(14)
+#define VIRTCHNL2_CAP_RX_CSUM_GENERIC		BIT(15)
+#define VIRTCHNL2_CAP_TX_CSUM_L3_SINGLE_TUNNEL	BIT(16)
+#define VIRTCHNL2_CAP_TX_CSUM_L3_DOUBLE_TUNNEL	BIT(17)
+#define VIRTCHNL2_CAP_RX_CSUM_L3_SINGLE_TUNNEL	BIT(18)
+#define VIRTCHNL2_CAP_RX_CSUM_L3_DOUBLE_TUNNEL	BIT(19)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_SINGLE_TUNNEL	BIT(20)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_DOUBLE_TUNNEL	BIT(21)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_SINGLE_TUNNEL	BIT(22)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_DOUBLE_TUNNEL	BIT(23)
+
+/**
+ * VIRTCHNL2_SEGMENTATION_OFFLOAD_CAPS
+ * Segmentation offload capability flags
+ */
+#define VIRTCHNL2_CAP_SEG_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_SEG_IPV4_UDP		BIT(1)
+#define VIRTCHNL2_CAP_SEG_IPV4_SCTP		BIT(2)
+#define VIRTCHNL2_CAP_SEG_IPV6_TCP		BIT(3)
+#define VIRTCHNL2_CAP_SEG_IPV6_UDP		BIT(4)
+#define VIRTCHNL2_CAP_SEG_IPV6_SCTP		BIT(5)
+#define VIRTCHNL2_CAP_SEG_GENERIC		BIT(6)
+#define VIRTCHNL2_CAP_SEG_TX_SINGLE_TUNNEL	BIT(7)
+#define VIRTCHNL2_CAP_SEG_TX_DOUBLE_TUNNEL	BIT(8)
+
+/**
+ * VIRTCHNL2_RSS_FLOW_TYPE_CAPS
+ * Receive Side Scaling Flow type capability flags
+ */
+#define VIRTCHNL2_CAP_RSS_IPV4_TCP		BIT_ULL(0)
+#define VIRTCHNL2_CAP_RSS_IPV4_UDP		BIT_ULL(1)
+#define VIRTCHNL2_CAP_RSS_IPV4_SCTP		BIT_ULL(2)
+#define VIRTCHNL2_CAP_RSS_IPV4_OTHER		BIT_ULL(3)
+#define VIRTCHNL2_CAP_RSS_IPV6_TCP		BIT_ULL(4)
+#define VIRTCHNL2_CAP_RSS_IPV6_UDP		BIT_ULL(5)
+#define VIRTCHNL2_CAP_RSS_IPV6_SCTP		BIT_ULL(6)
+#define VIRTCHNL2_CAP_RSS_IPV6_OTHER		BIT_ULL(7)
+#define VIRTCHNL2_CAP_RSS_IPV4_AH		BIT_ULL(8)
+#define VIRTCHNL2_CAP_RSS_IPV4_ESP		BIT_ULL(9)
+#define VIRTCHNL2_CAP_RSS_IPV4_AH_ESP		BIT_ULL(10)
+#define VIRTCHNL2_CAP_RSS_IPV6_AH		BIT_ULL(11)
+#define VIRTCHNL2_CAP_RSS_IPV6_ESP		BIT_ULL(12)
+#define VIRTCHNL2_CAP_RSS_IPV6_AH_ESP		BIT_ULL(13)
+
+/**
+ * VIRTCHNL2_HEADER_SPLIT_CAPS
+ * Header split capability flags
+ */
+/* For prepended metadata  */
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L2		BIT(0)
+/* All VLANs go into header buffer */
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L3		BIT(1)
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4		BIT(2)
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6		BIT(3)
+
+/**
+ * VIRTCHNL2_RSC_OFFLOAD_CAPS
+ * Receive Side Coalescing offload capability flags
+ */
+#define VIRTCHNL2_CAP_RSC_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_RSC_IPV4_SCTP		BIT(1)
+#define VIRTCHNL2_CAP_RSC_IPV6_TCP		BIT(2)
+#define VIRTCHNL2_CAP_RSC_IPV6_SCTP		BIT(3)
+
+/**
+ * VIRTCHNL2_OTHER_CAPS
+ * Other capability flags
+ * SPLITQ_QSCHED: Queue based scheduling using split queue model
+ * TX_VLAN: VLAN tag insertion
+ * RX_VLAN: VLAN tag stripping
+ */
+#define VIRTCHNL2_CAP_RDMA			BIT_ULL(0)
+#define VIRTCHNL2_CAP_SRIOV			BIT_ULL(1)
+#define VIRTCHNL2_CAP_MACFILTER			BIT_ULL(2)
+#define VIRTCHNL2_CAP_FLOW_DIRECTOR		BIT_ULL(3)
+#define VIRTCHNL2_CAP_SPLITQ_QSCHED		BIT_ULL(4)
+#define VIRTCHNL2_CAP_CRC			BIT_ULL(5)
+#define VIRTCHNL2_CAP_ADQ			BIT_ULL(6)
+#define VIRTCHNL2_CAP_WB_ON_ITR			BIT_ULL(7)
+#define VIRTCHNL2_CAP_PROMISC			BIT_ULL(8)
+#define VIRTCHNL2_CAP_LINK_SPEED		BIT_ULL(9)
+#define VIRTCHNL2_CAP_INLINE_IPSEC		BIT_ULL(10)
+#define VIRTCHNL2_CAP_LARGE_NUM_QUEUES		BIT_ULL(11)
+/* Require additional info */
+#define VIRTCHNL2_CAP_VLAN			BIT_ULL(12)
+#define VIRTCHNL2_CAP_PTP			BIT_ULL(13)
+/* EDT: Earliest Departure Time capability used for Timing Wheel */
+#define VIRTCHNL2_CAP_EDT			BIT_ULL(14)
+#define VIRTCHNL2_CAP_ADV_RSS			BIT_ULL(15)
+#define VIRTCHNL2_CAP_FDIR			BIT_ULL(16)
+#define VIRTCHNL2_CAP_RX_FLEX_DESC		BIT_ULL(17)
+#define VIRTCHNL2_CAP_PTYPE			BIT_ULL(18)
+#define VIRTCHNL2_CAP_LOOPBACK			BIT_ULL(19)
+/**
+ * Enable miss completion types plus ability to detect a miss completion if a
+ * reserved bit is set in a standared completion's tag.
+ */
+#define VIRTCHNL2_CAP_MISS_COMPL_TAG		BIT_ULL(20)
+/* This must be the last capability */
+#define VIRTCHNL2_CAP_OEM			BIT_ULL(63)
+
+/* VIRTCHNL2_DEVICE_TYPE */
+/* Underlying device type */
+#define VIRTCHNL2_MEV_DEVICE			0
+
+/**
+ * VIRTCHNL2_TXQ_SCHED_MODE
+ * Transmit Queue Scheduling Modes - Queue mode is the legacy mode i.e. inorder
+ * completions where descriptors and buffers are completed at the same time.
+ * Flow scheduling mode allows for out of order packet processing where
+ * descriptors are cleaned in order, but buffers can be completed out of order.
+ */
+#define VIRTCHNL2_TXQ_SCHED_MODE_QUEUE		0
+#define VIRTCHNL2_TXQ_SCHED_MODE_FLOW		1
+
+/**
+ * VIRTCHNL2_TXQ_FLAGS
+ * Transmit Queue feature flags
+ *
+ * Enable rule miss completion type; packet completion for a packet
+ * sent on exception path; only relevant in flow scheduling mode.
+ */
+#define VIRTCHNL2_TXQ_ENABLE_MISS_COMPL		BIT(0)
+
+/**
+ * VIRTCHNL2_PEER_TYPE
+ * Transmit mailbox peer type
+ */
+#define VIRTCHNL2_RDMA_CPF			0
+#define VIRTCHNL2_NVME_CPF			1
+#define VIRTCHNL2_ATE_CPF			2
+#define VIRTCHNL2_LCE_CPF			3
+
+/**
+ * VIRTCHNL2_RXQ_FLAGS
+ * Receive Queue Feature flags
+ */
+#define VIRTCHNL2_RXQ_RSC			BIT(0)
+#define VIRTCHNL2_RXQ_HDR_SPLIT			BIT(1)
+/**
+ * When set, packet descriptors are flushed by hardware immediately after
+ * processing each packet.
+ */
+#define VIRTCHNL2_RXQ_IMMEDIATE_WRITE_BACK	BIT(2)
+#define VIRTCHNL2_RX_DESC_SIZE_16BYTE		BIT(3)
+#define VIRTCHNL2_RX_DESC_SIZE_32BYTE		BIT(4)
+
+/**
+ * VIRTCHNL2_RSS_ALGORITHM
+ * Type of RSS algorithm
+ */
+#define VIRTCHNL2_RSS_ALG_TOEPLITZ_ASYMMETRIC		0
+#define VIRTCHNL2_RSS_ALG_R_ASYMMETRIC			1
+#define VIRTCHNL2_RSS_ALG_TOEPLITZ_SYMMETRIC		2
+#define VIRTCHNL2_RSS_ALG_XOR_SYMMETRIC			3
+
+/**
+ * VIRTCHNL2_EVENT_CODES
+ * Type of event
+ */
+#define VIRTCHNL2_EVENT_UNKNOWN			0
+#define VIRTCHNL2_EVENT_LINK_CHANGE		1
+/* Event type 2, 3 are reserved */
+
+/**
+ * VIRTCHNL2_QUEUE_TYPE
+ * Transmit and Receive queue types are valid in legacy as well as split queue
+ * models. With Split Queue model, 2 additional types are introduced -
+ * TX_COMPLETION and RX_BUFFER. In split queue model, receive  corresponds to
+ * the queue where hardware posts completions.
+ */
+#define VIRTCHNL2_QUEUE_TYPE_TX			0
+#define VIRTCHNL2_QUEUE_TYPE_RX			1
+#define VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION	2
+#define VIRTCHNL2_QUEUE_TYPE_RX_BUFFER		3
+#define VIRTCHNL2_QUEUE_TYPE_CONFIG_TX		4
+#define VIRTCHNL2_QUEUE_TYPE_CONFIG_RX		5
+/* Queue types 6, 7, 8, 9 are reserved */
+#define VIRTCHNL2_QUEUE_TYPE_MBX_TX		10
+#define VIRTCHNL2_QUEUE_TYPE_MBX_RX		11
+
+/**
+ * VIRTCHNL2_ITR_IDX
+ * Virtchannel interrupt throttling rate index
+ */
+#define VIRTCHNL2_ITR_IDX_0			0
+#define VIRTCHNL2_ITR_IDX_1			1
+
+/**
+ * VIRTCHNL2_MAC_TYPE
+ * VIRTCHNL2_MAC_ADDR_PRIMARY
+ * PF/VF driver should set @type to VIRTCHNL2_MAC_ADDR_PRIMARY for the
+ * primary/device unicast MAC address filter for VIRTCHNL2_OP_ADD_MAC_ADDR and
+ * VIRTCHNL2_OP_DEL_MAC_ADDR. This allows for the underlying control plane
+ * function to accurately track the MAC address and for VM/function reset.
+ *
+ * VIRTCHNL2_MAC_ADDR_EXTRA
+ * PF/VF driver should set @type to VIRTCHNL2_MAC_ADDR_EXTRA for any extra
+ * unicast and/or multicast filters that are being added/deleted via
+ * VIRTCHNL2_OP_ADD_MAC_ADDR/VIRTCHNL2_OP_DEL_MAC_ADDR respectively.
+ */
+#define VIRTCHNL2_MAC_ADDR_PRIMARY		1
+#define VIRTCHNL2_MAC_ADDR_EXTRA		2
+
+/**
+ * VIRTCHNL2_PROMISC_FLAGS
+ * Flags used for promiscuous mode
+ */
+#define VIRTCHNL2_UNICAST_PROMISC		BIT(0)
+#define VIRTCHNL2_MULTICAST_PROMISC		BIT(1)
+
+/**
+ * VIRTCHNL2_PROTO_HDR_TYPE
+ * Protocol header type within a packet segment. A segment consists of one or
+ * more protocol headers that make up a logical group of protocol headers. Each
+ * logical group of protocol headers encapsulates or is encapsulated using/by
+ * tunneling or encapsulation protocols for network virtualization.
+ */
+/* VIRTCHNL2_PROTO_HDR_ANY is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ANY			0
+#define VIRTCHNL2_PROTO_HDR_PRE_MAC		1
+/* VIRTCHNL2_PROTO_HDR_MAC is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_MAC			2
+#define VIRTCHNL2_PROTO_HDR_POST_MAC		3
+#define VIRTCHNL2_PROTO_HDR_ETHERTYPE		4
+#define VIRTCHNL2_PROTO_HDR_VLAN		5
+#define VIRTCHNL2_PROTO_HDR_SVLAN		6
+#define VIRTCHNL2_PROTO_HDR_CVLAN		7
+#define VIRTCHNL2_PROTO_HDR_MPLS		8
+#define VIRTCHNL2_PROTO_HDR_UMPLS		9
+#define VIRTCHNL2_PROTO_HDR_MMPLS		10
+#define VIRTCHNL2_PROTO_HDR_PTP			11
+#define VIRTCHNL2_PROTO_HDR_CTRL		12
+#define VIRTCHNL2_PROTO_HDR_LLDP		13
+#define VIRTCHNL2_PROTO_HDR_ARP			14
+#define VIRTCHNL2_PROTO_HDR_ECP			15
+#define VIRTCHNL2_PROTO_HDR_EAPOL		16
+#define VIRTCHNL2_PROTO_HDR_PPPOD		17
+#define VIRTCHNL2_PROTO_HDR_PPPOE		18
+/* VIRTCHNL2_PROTO_HDR_IPV4 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV4		19
+/**
+ * IPv4 and IPv6 Fragment header types are only associated to
+ * VIRTCHNL2_PROTO_HDR_IPV4 and VIRTCHNL2_PROTO_HDR_IPV6 respectively,
+ * cannot be used independently.
+ */
+/* VIRTCHNL2_PROTO_HDR_IPV4_FRAG is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV4_FRAG		20
+/* VIRTCHNL2_PROTO_HDR_IPV6 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV6		21
+/* VIRTCHNL2_PROTO_HDR_IPV6_FRAG is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV6_FRAG		22
+#define VIRTCHNL2_PROTO_HDR_IPV6_EH		23
+/* VIRTCHNL2_PROTO_HDR_UDP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_UDP			24
+/* VIRTCHNL2_PROTO_HDR_TCP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_TCP			25
+/* VIRTCHNL2_PROTO_HDR_SCTP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_SCTP		26
+/* VIRTCHNL2_PROTO_HDR_ICMP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ICMP		27
+/* VIRTCHNL2_PROTO_HDR_ICMPV6 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ICMPV6		28
+#define VIRTCHNL2_PROTO_HDR_IGMP		29
+#define VIRTCHNL2_PROTO_HDR_AH			30
+#define VIRTCHNL2_PROTO_HDR_ESP			31
+#define VIRTCHNL2_PROTO_HDR_IKE			32
+#define VIRTCHNL2_PROTO_HDR_NATT_KEEP		33
+/* VIRTCHNL2_PROTO_HDR_PAY is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_PAY			34
+#define VIRTCHNL2_PROTO_HDR_L2TPV2		35
+#define VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL	36
+#define VIRTCHNL2_PROTO_HDR_L2TPV3		37
+#define VIRTCHNL2_PROTO_HDR_GTP			38
+#define VIRTCHNL2_PROTO_HDR_GTP_EH		39
+#define VIRTCHNL2_PROTO_HDR_GTPCV2		40
+#define VIRTCHNL2_PROTO_HDR_GTPC_TEID		41
+#define VIRTCHNL2_PROTO_HDR_GTPU		42
+#define VIRTCHNL2_PROTO_HDR_GTPU_UL		43
+#define VIRTCHNL2_PROTO_HDR_GTPU_DL		44
+#define VIRTCHNL2_PROTO_HDR_ECPRI		45
+#define VIRTCHNL2_PROTO_HDR_VRRP		46
+#define VIRTCHNL2_PROTO_HDR_OSPF		47
+/* VIRTCHNL2_PROTO_HDR_TUN is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_TUN			48
+#define VIRTCHNL2_PROTO_HDR_GRE			49
+#define VIRTCHNL2_PROTO_HDR_NVGRE		50
+#define VIRTCHNL2_PROTO_HDR_VXLAN		51
+#define VIRTCHNL2_PROTO_HDR_VXLAN_GPE		52
+#define VIRTCHNL2_PROTO_HDR_GENEVE		53
+#define VIRTCHNL2_PROTO_HDR_NSH			54
+#define VIRTCHNL2_PROTO_HDR_QUIC		55
+#define VIRTCHNL2_PROTO_HDR_PFCP		56
+#define VIRTCHNL2_PROTO_HDR_PFCP_NODE		57
+#define VIRTCHNL2_PROTO_HDR_PFCP_SESSION	58
+#define VIRTCHNL2_PROTO_HDR_RTP			59
+#define VIRTCHNL2_PROTO_HDR_ROCE		60
+#define VIRTCHNL2_PROTO_HDR_ROCEV1		61
+#define VIRTCHNL2_PROTO_HDR_ROCEV2		62
+/* Protocol ids up to 32767 are reserved */
+/* 32768 - 65534 are used for user defined protocol ids */
+/* VIRTCHNL2_PROTO_HDR_NO_PROTO is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_NO_PROTO		65535
+
+#define VIRTCHNL2_VERSION_MAJOR_2        2
+#define VIRTCHNL2_VERSION_MINOR_0        0
+
+/**
+ * VIRTCHNL2_OP_GET_EDT_CAPS
+ * Get EDT granularity and time horizon
+ */
+struct virtchnl2_edt_caps {
+	/* Timestamp granularity in nanoseconds */
+	__le64 tstamp_granularity_ns;
+	/* Total time window in nanoseconds */
+	__le64 time_horizon_ns;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_edt_caps);
+
+/**
+ * VIRTCHNL2_OP_VERSION
+ * PF/VF posts its version number to the CP. CP responds with its version number
+ * in the same format, along with a return code.
+ * If there is a major version mismatch, then the PF/VF cannot operate.
+ * If there is a minor version mismatch, then the PF/VF can operate but should
+ * add a warning to the system log.
+ *
+ * This version opcode MUST always be specified as == 1, regardless of other
+ * changes in the API. The CP must always respond to this message without
+ * error regardless of version mismatch.
+ */
+struct virtchnl2_version_info {
+	__le32 major;
+	__le32 minor;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
+
+/**
+ * VIRTCHNL2_OP_GET_CAPS
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
+ */
+struct virtchnl2_get_capabilities {
+	/* See VIRTCHNL2_CHECKSUM_OFFLOAD_CAPS definitions */
+	__le32 csum_caps;
+	/* See VIRTCHNL2_SEGMENTATION_OFFLOAD_CAPS definitions */
+	__le32 seg_caps;
+	/* See VIRTCHNL2_HEADER_SPLIT_CAPS definitions */
+	__le32 hsplit_caps;
+	/* See VIRTCHNL2_RSC_OFFLOAD_CAPS definitions */
+	__le32 rsc_caps;
+	/* See VIRTCHNL2_RSS_FLOW_TYPE_CAPS definitions  */
+	__le64 rss_caps;
+	/* See VIRTCHNL2_OTHER_CAPS definitions  */
+	__le64 other_caps;
+
+	/* DYN_CTL register offset and vector id for mailbox provided by CP */
+	__le32 mailbox_dyn_ctl;
+	__le16 mailbox_vector_id;
+	/* Maximum number of allocated vectors for the device */
+	__le16 num_allocated_vectors;
+
+	/* Maximum number of queues that can be supported */
+	__le16 max_rx_q;
+	__le16 max_tx_q;
+	__le16 max_rx_bufq;
+	__le16 max_tx_complq;
+
+	/* The PF sends the maximum VFs it is requesting. The CP responds with
+	 * the maximum VFs granted.
+	 */
+	__le16 max_sriov_vfs;
+
+	/* Maximum number of vports that can be supported */
+	__le16 max_vports;
+	/* Default number of vports driver should allocate on load */
+	__le16 default_num_vports;
+
+	/* Max header length hardware can parse/checksum, in bytes */
+	__le16 max_tx_hdr_size;
+
+	/* Max number of scatter gather buffers that can be sent per transmit
+	 * packet without needing to be linearized.
+	 */
+	u8 max_sg_bufs_per_tx_pkt;
+
+	u8 pad[3];
+
+	u8 reserved[4];
+	/* See VIRTCHNL2_DEVICE_TYPE definitions */
+	__le32 device_type;
+
+	/* Min packet length supported by device for single segment offload */
+	u8 min_sso_packet_len;
+	/* Max number of header buffers that can be used for an LSO */
+	u8 max_hdr_buf_per_lso;
+
+	u8 pad1[10];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(80, virtchnl2_get_capabilities);
+
+struct virtchnl2_queue_reg_chunk {
+	/* See VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	__le32 pad;
+
+	/* Queue tail register offset and spacing provided by CP */
+	__le64 qtail_reg_start;
+	__le32 qtail_reg_spacing;
+
+	u8 pad1[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_queue_reg_chunk);
+
+/* Structure to specify several chunks of contiguous queues */
+struct virtchnl2_queue_reg_chunks {
+	__le16 num_chunks;
+	u8 pad[6];
+
+	struct virtchnl2_queue_reg_chunk chunks[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
+
+/**
+ * VIRTCHNL2_OP_CREATE_VPORT
+ * PF sends this message to CP to create a vport by filling in required
+ * fields of virtchnl2_create_vport structure.
+ * CP responds with the updated virtchnl2_create_vport structure containing the
+ * necessary fields followed by chunks which in turn will have an array of
+ * num_chunks entries of virtchnl2_queue_chunk structures.
+ */
+struct virtchnl2_create_vport {
+	/* PF/VF populates the following fields on request */
+	/* See VIRTCHNL2_VPORT_TYPE definitions */
+	__le16 vport_type;
+
+	/* See VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 txq_model;
+
+	/* See VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 rxq_model;
+	__le16 num_tx_q;
+	/* Valid only if txq_model is split queue */
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	/* Valid only if rxq_model is split queue */
+	__le16 num_rx_bufq;
+	/* Relative receive queue index to be used as default */
+	__le16 default_rx_q;
+	/* Used to align PF and CP in case of default multiple vports, it is
+	 * filled by the PF and CP returns the same value, to enable the driver
+	 * to support multiple asynchronous parallel CREATE_VPORT requests and
+	 * associate a response to a specific request.
+	 */
+	__le16 vport_index;
+
+	/* CP populates the following fields on response */
+	__le16 max_mtu;
+	__le32 vport_id;
+	u8 default_mac_addr[ETH_ALEN];
+	__le16 pad;
+	/* See VIRTCHNL2_RX_DESC_IDS definitions */
+	__le64 rx_desc_ids;
+	/* See VIRTCHNL2_TX_DESC_IDS definitions */
+	__le64 tx_desc_ids;
+
+	u8 pad1[72];
+
+	/* See VIRTCHNL2_RSS_ALGORITHM definitions */
+	__le32 rss_algorithm;
+	__le16 rss_key_size;
+	__le16 rss_lut_size;
+
+	/* See VIRTCHNL2_HEADER_SPLIT_CAPS definitions */
+	__le32 rx_split_pos;
+
+	u8 pad2[20];
+
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(160, virtchnl2_create_vport);
+
+/**
+ * VIRTCHNL2_OP_DESTROY_VPORT
+ * VIRTCHNL2_OP_ENABLE_VPORT
+ * VIRTCHNL2_OP_DISABLE_VPORT
+ * PF sends this message to CP to destroy, enable or disable a vport by filling
+ * in the vport_id in virtchnl2_vport structure.
+ * CP responds with the status of the requested operation.
+ */
+struct virtchnl2_vport {
+	__le32 vport_id;
+	u8 pad[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_vport);
+
+/* Transmit queue config info */
+struct virtchnl2_txq_info {
+	__le64 dma_ring_addr;
+
+	/* See VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+
+	__le32 queue_id;
+	/* Valid only if queue model is split and type is transmit queue. Used
+	 * in many to one mapping of transmit queues to completion queue.
+	 */
+	__le16 relative_queue_id;
+
+	/* See VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 model;
+
+	/* See VIRTCHNL2_TXQ_SCHED_MODE definitions */
+	__le16 sched_mode;
+
+	/* See VIRTCHNL2_TXQ_FLAGS definitions */
+	__le16 qflags;
+	__le16 ring_len;
+
+	/* Valid only if queue model is split and type is transmit queue */
+	__le16 tx_compl_queue_id;
+	/* Valid only if queue type is VIRTCHNL2_QUEUE_TYPE_MAILBOX_TX */
+	/* See VIRTCHNL2_PEER_TYPE definitions */
+	__le16 peer_type;
+	/* Valid only if queue type is CONFIG_TX and used to deliver messages
+	 * for the respective CONFIG_TX queue.
+	 */
+	__le16 peer_rx_queue_id;
+
+	u8 pad[4];
+
+	/* Egress pasid is used for SIOV use case */
+	__le32 egress_pasid;
+	__le32 egress_hdr_pasid;
+	__le32 egress_buf_pasid;
+
+	u8 pad1[8];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(56, virtchnl2_txq_info);
+
+/**
+ * VIRTCHNL2_OP_CONFIG_TX_QUEUES
+ * PF sends this message to set up parameters for one or more transmit queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_txq_info
+ * structures. CP configures requested queues and returns a status code. If
+ * num_qinfo specified is greater than the number of queues associated with the
+ * vport, an error is returned and no queues are configured.
+ */
+struct virtchnl2_config_tx_queues {
+	__le32 vport_id;
+
+	__le16 num_qinfo;
+	u8 pad[10];
+
+	struct virtchnl2_txq_info qinfo[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_config_tx_queues);
+
+/* Receive queue config info */
+struct virtchnl2_rxq_info {
+	/* See VIRTCHNL2_RX_DESC_IDS definitions */
+	__le64 desc_ids;
+	__le64 dma_ring_addr;
+
+	/* See VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 queue_id;
+
+	/* See QUEUE_MODEL definitions */
+	__le16 model;
+
+	__le16 hdr_buffer_size;
+	__le32 data_buffer_size;
+	__le32 max_pkt_size;
+
+	__le16 ring_len;
+	u8 buffer_notif_stride;
+	u8 pad;
+
+	/* Applicable only for receive buffer queues */
+	__le64 dma_head_wb_addr;
+
+	/* Applicable only for receive completion queues */
+	/* See VIRTCHNL2_RXQ_FLAGS definitions */
+	__le16 qflags;
+
+	__le16 rx_buffer_low_watermark;
+
+	/* Valid only in split queue model */
+	__le16 rx_bufq1_id;
+	/* Valid only in split queue model */
+	__le16 rx_bufq2_id;
+	/* It indicates if there is a second buffer, rx_bufq2_id is valid only
+	 * if this field is set.
+	 */
+	u8 bufq2_ena;
+	u8 pad1[3];
+
+	/* Ingress pasid is used for SIOV use case */
+	__le32 ingress_pasid;
+	__le32 ingress_hdr_pasid;
+	__le32 ingress_buf_pasid;
+
+	u8 pad2[16];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(88, virtchnl2_rxq_info);
+
+/**
+ * VIRTCHNL2_OP_CONFIG_RX_QUEUES
+ * PF sends this message to set up parameters for one or more receive queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_rxq_info
+ * structures. CP configures requested queues and returns a status code.
+ * If the number of queues specified is greater than the number of queues
+ * associated with the vport, an error is returned and no queues are configured.
+ */
+struct virtchnl2_config_rx_queues {
+	__le32 vport_id;
+
+	__le16 num_qinfo;
+	u8 pad[18];
+
+	struct virtchnl2_rxq_info qinfo[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_config_rx_queues);
+
+/**
+ * VIRTCHNL2_OP_ADD_QUEUES
+ * PF sends this message to request additional transmit/receive queues beyond
+ * the ones that were assigned via CREATE_VPORT request. virtchnl2_add_queues
+ * structure is used to specify the number of each type of queues.
+ * CP responds with the same structure with the actual number of queues assigned
+ * followed by num_chunks of virtchnl2_queue_chunk structures.
+ */
+struct virtchnl2_add_queues {
+	__le32 vport_id;
+
+	__le16 num_tx_q;
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	__le16 num_rx_bufq;
+	u8 pad[4];
+
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_add_queues);
+
+/* Structure to specify a chunk of contiguous interrupt vectors */
+struct virtchnl2_vector_chunk {
+	__le16 start_vector_id;
+	__le16 start_evv_id;
+	__le16 num_vectors;
+	__le16 pad;
+
+	/* Register offsets and spacing provided by CP.
+	 * Dynamic control registers are used for enabling/disabling/re-enabling
+	 * interrupts and updating interrupt rates in the hotpath. Any changes
+	 * to interrupt rates in the dynamic control registers will be reflected
+	 * in the interrupt throttling rate registers.
+	 * itrn registers are used to update interrupt rates for specific
+	 * interrupt indices without modifying the state of the interrupt.
+	 */
+	__le32 dynctl_reg_start;
+	/* Register spacing between dynctl registers of 2 consecutive vectors */
+	__le32 dynctl_reg_spacing;
+
+	__le32 itrn_reg_start;
+	/* Register spacing between itrn registers of 2 consecutive vectors */
+	__le32 itrn_reg_spacing;
+	/* Register spacing between itrn registers of the same vector
+	 * where n=0..2.
+	 */
+	__le32 itrn_index_spacing;
+	u8 pad1[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_vector_chunk);
+
+/**
+ * VIRTCHNL2_OP_DEALLOC_VECTORS
+ * PF sends virtchnl2_vector_chunks struct to specify the vectors it is giving
+ * away. CP performs requested action and returns status.
+ */
+struct virtchnl2_vector_chunks {
+	__le16 num_vchunks;
+	u8 pad[14];
+
+	struct virtchnl2_vector_chunk vchunks[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_vector_chunks);
+
+/**
+ * VIRTCHNL2_OP_ALLOC_VECTORS
+ * PF sends this message to request additional interrupt vectors beyond the
+ * ones that were assigned via GET_CAPS request. virtchnl2_alloc_vectors
+ * structure is used to specify the number of vectors requested. CP responds
+ * with the same structure with the actual number of vectors assigned followed
+ * by virtchnl2_vector_chunks structure identifying the vector ids.
+ */
+struct virtchnl2_alloc_vectors {
+	__le16 num_vectors;
+	u8 pad[14];
+
+	struct virtchnl2_vector_chunks vchunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_alloc_vectors);
+
+/**
+ * VIRTCHNL2_OP_GET_RSS_LUT
+ * VIRTCHNL2_OP_SET_RSS_LUT
+ * PF sends this message to get or set RSS lookup table. Only supported if
+ * both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation. Uses the virtchnl2_rss_lut structure.
+ */
+struct virtchnl2_rss_lut {
+	__le32 vport_id;
+
+	__le16 lut_entries_start;
+	__le16 lut_entries;
+	u8 pad[4];
+
+	/* RSS lookup table */
+	__le32 lut[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(12, virtchnl2_rss_lut);
+
+/**
+ * VIRTCHNL2_OP_GET_RSS_HASH
+ * VIRTCHNL2_OP_SET_RSS_HASH
+ * PF sends these messages to get and set the hash filter enable bits for RSS.
+ * By default, the CP sets these to all possible traffic types that the
+ * hardware supports. The PF can query this value if it wants to change the
+ * traffic types that are hashed by the hardware.
+ * Only supported if both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit
+ * during configuration negotiation.
+ */
+struct virtchnl2_rss_hash {
+	/* Packet Type Groups bitmap */
+	__le64 ptype_groups;
+
+	__le32 vport_id;
+	u8 pad[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_rss_hash);
+
+/**
+ * VIRTCHNL2_OP_SET_SRIOV_VFS
+ * This message is used to set number of SRIOV VFs to be created. The actual
+ * allocation of resources for the VFs in terms of vport, queues and interrupts
+ * is done by CP. When this call completes, the IDPF driver calls
+ * pci_enable_sriov to let the OS instantiate the SRIOV PCIE devices.
+ * The number of VFs set to 0 will destroy all the VFs of this function.
+ */
+struct virtchnl2_sriov_vfs_info {
+	__le16 num_vfs;
+	__le16 pad;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(4, virtchnl2_sriov_vfs_info);
+
+/**
+ * Based on the descriptor type the PF supports, CP fills ptype_id_10 or
+ * ptype_id_8 for flex and base descriptor respectively. If ptype_id_10 value
+ * is set to 0xFFFF, PF should consider this ptype as dummy one and it is the
+ * last ptype.
+ */
+struct virtchnl2_ptype {
+	__le16 ptype_id_10;
+	u8 ptype_id_8;
+
+	/* Number of protocol ids the packet supports, maximum of 32
+	 * protocol ids are supported.
+	 */
+	u8 proto_id_count;
+	__le16 pad;
+
+	/* Proto_id_count decides the allocation of protocol id array */
+	/* See VIRTCHNL2_PROTO_HDR_TYPE */
+	__le16 proto_id[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
+
+/**
+ * VIRTCHNL2_OP_GET_PTYPE_INFO
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
+ */
+struct virtchnl2_get_ptype_info {
+	__le16 start_ptype_id;
+	__le16 num_ptypes;
+	__le32 pad;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_get_ptype_info);
+
+/**
+ * VIRTCHNL2_OP_GET_STATS
+ * PF/VF sends this message to CP to get the update stats by specifying the
+ * vport_id. CP responds with stats in struct virtchnl2_vport_stats.
+ */
+struct virtchnl2_vport_stats {
+	__le32 vport_id;
+	u8 pad[4];
+
+	__le64 rx_bytes;		/* received bytes */
+	__le64 rx_unicast;		/* received unicast pkts */
+	__le64 rx_multicast;		/* received multicast pkts */
+	__le64 rx_broadcast;		/* received broadcast pkts */
+	__le64 rx_discards;
+	__le64 rx_errors;
+	__le64 rx_unknown_protocol;
+	__le64 tx_bytes;		/* transmitted bytes */
+	__le64 tx_unicast;		/* transmitted unicast pkts */
+	__le64 tx_multicast;		/* transmitted multicast pkts */
+	__le64 tx_broadcast;		/* transmitted broadcast pkts */
+	__le64 tx_discards;
+	__le64 tx_errors;
+	__le64 rx_invalid_frame_length;
+	__le64 rx_overflow_drop;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(128, virtchnl2_vport_stats);
+
+/**
+ * VIRTCHNL2_OP_EVENT
+ * CP sends this message to inform the PF/VF driver of events that may affect
+ * it. No direct response is expected from the driver, though it may generate
+ * other messages in response to this one.
+ */
+struct virtchnl2_event {
+	/* See VIRTCHNL2_EVENT_CODES definitions */
+	__le32 event;
+
+	/* Link_speed provided in Mbps */
+	__le32 link_speed;
+
+	__le32 vport_id;
+
+	u8 link_status;
+	u8 pad;
+
+	__le16 reserved;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_event);
+
+/**
+ * VIRTCHNL2_OP_GET_RSS_KEY
+ * VIRTCHNL2_OP_SET_RSS_KEY
+ * PF/VF sends this message to get or set RSS key. Only supported if both
+ * PF/VF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation. Uses the virtchnl2_rss_key structure
+ */
+struct virtchnl2_rss_key {
+	__le32 vport_id;
+
+	__le16 key_len;
+	u8 pad;
+
+	/* RSS hash key, packed bytes */
+	__DECLARE_FLEX_ARRAY(u8, key_flex);
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_rss_key);
+
+/* structure to specify a chunk of contiguous queues */
+struct virtchnl2_queue_chunk {
+	/* See VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	u8 pad[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_chunk);
+
+/* Structure to specify several chunks of contiguous queues */
+struct virtchnl2_queue_chunks {
+	__le16 num_chunks;
+	u8 pad[6];
+
+	struct virtchnl2_queue_chunk chunks[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_chunks);
+
+/**
+ * VIRTCHNL2_OP_ENABLE_QUEUES
+ * VIRTCHNL2_OP_DISABLE_QUEUES
+ * VIRTCHNL2_OP_DEL_QUEUES
+ *
+ * PF sends these messages to enable, disable or delete queues specified in
+ * chunks. PF sends virtchnl2_del_ena_dis_queues struct to specify the queues
+ * to be enabled/disabled/deleted. Also applicable to single queue receive or
+ * transmit. CP performs requested action and returns status.
+ */
+struct virtchnl2_del_ena_dis_queues {
+	__le32 vport_id;
+	u8 pad[4];
+
+	struct virtchnl2_queue_chunks chunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_del_ena_dis_queues);
+
+/* Queue to vector mapping */
+struct virtchnl2_queue_vector {
+	__le32 queue_id;
+	__le16 vector_id;
+	u8 pad[2];
+
+	/* See VIRTCHNL2_ITR_IDX definitions */
+	__le32 itr_idx;
+
+	/* See VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 queue_type;
+	u8 pad1[8];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_queue_vector);
+
+/**
+ * VIRTCHNL2_OP_MAP_QUEUE_VECTOR
+ * VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR
+ *
+ * PF sends this message to map or unmap queues to vectors and interrupt
+ * throttling rate index registers. External data buffer contains
+ * virtchnl2_queue_vector_maps structure that contains num_qv_maps of
+ * virtchnl2_queue_vector structures. CP maps the requested queue vector maps
+ * after validating the queue and vector ids and returns a status code.
+ */
+struct virtchnl2_queue_vector_maps {
+	__le32 vport_id;
+
+	__le16 num_qv_maps;
+	u8 pad[10];
+
+	struct virtchnl2_queue_vector qv_maps[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_vector_maps);
+
+/**
+ * VIRTCHNL2_OP_LOOPBACK
+ *
+ * PF/VF sends this message to transition to/from the loopback state. Setting
+ * the 'enable' to 1 enables the loopback state and setting 'enable' to 0
+ * disables it. CP configures the state to loopback and returns status.
+ */
+struct virtchnl2_loopback {
+	__le32 vport_id;
+
+	u8 enable;
+	u8 pad[3];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_loopback);
+
+/* Structure to specify each MAC address */
+struct virtchnl2_mac_addr {
+	u8 addr[ETH_ALEN];
+	/* See VIRTCHNL2_MAC_TYPE definitions */
+	u8 type;
+	u8 pad;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_mac_addr);
+
+/**
+ * VIRTCHNL2_OP_ADD_MAC_ADDR
+ * VIRTCHNL2_OP_DEL_MAC_ADDR
+ *
+ * PF/VF driver uses this structure to send list of MAC addresses to be
+ * added/deleted to the CP where as CP performs the action and returns the
+ * status.
+ */
+struct virtchnl2_mac_addr_list {
+	__le32 vport_id;
+
+	__le16 num_mac_addr;
+	u8 pad[2];
+
+	struct virtchnl2_mac_addr mac_addr_list[];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_mac_addr_list);
+
+/**
+ * VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE
+ *
+ * PF/VF sends vport id and flags to the CP where as CP performs the action
+ * and returns the status.
+ */
+struct virtchnl2_promisc_info {
+	__le32 vport_id;
+
+	/* See VIRTCHNL2_PROMISC_FLAGS definitions */
+	__le16 flags;
+	u8 pad[2];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_promisc_info);
+
+#endif /* _VIRTCHNL_2_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h b/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
new file mode 100644
index 000000000000..ca62553144ef
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
@@ -0,0 +1,666 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _VIRTCHNL2_LAN_DESC_H_
+#define _VIRTCHNL2_LAN_DESC_H_
+
+#include <linux/bits.h>
+
+/**
+ * VIRTCHNL2_TX_DESC_IDS
+ * Transmit descriptor ID flags
+ */
+#define VIRTCHNL2_TXDID_DATA				BIT(0)
+#define VIRTCHNL2_TXDID_CTX				BIT(1)
+/**
+ * TXDID 2 is reserved
+ * TXDID 3 is free for future use
+ * TXDID 4 is reserved
+ */
+#define VIRTCHNL2_TXDID_FLEX_TSO_CTX			BIT(5)
+/* TXDID 6 is reserved */
+#define VIRTCHNL2_TXDID_FLEX_L2TAG1_L2TAG2		BIT(7)
+/**
+ * TXDID 8, 9 are free for future use
+ * TXDID 10 is reserved
+ * TXDID 11 is free for future use
+ */
+#define VIRTCHNL2_TXDID_FLEX_FLOW_SCHED			BIT(12)
+/* TXDID 13, 14 are free for future use */
+#define VIRTCHNL2_TXDID_DESC_DONE			BIT(15)
+
+/**
+ * VIRTCHNL2_RX_DESC_IDS
+ * Receive descriptor IDs (range from 0 to 63)
+ */
+#define VIRTCHNL2_RXDID_0_16B_BASE			0
+#define VIRTCHNL2_RXDID_1_32B_BASE			1
+/**
+ * FLEX_SQ_NIC and FLEX_SPLITQ share desc ids because they can be
+ * differentiated based on queue model; e.g. single queue model can
+ * only use FLEX_SQ_NIC and split queue model can only use FLEX_SPLITQ
+ * for DID 2.
+ */
+#define VIRTCHNL2_RXDID_2_FLEX_SPLITQ			2
+#define VIRTCHNL2_RXDID_2_FLEX_SQ_NIC			\
+	VIRTCHNL2_RXDID_2_FLEX_SPLITQ
+#define VIRTCHNL2_RXDID_3_FLEX_SQ_SW			3
+#define VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB		4
+#define VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL		5
+#define VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2			6
+#define VIRTCHNL2_RXDID_7_HW_RSVD			7
+/* 9 through 15 are reserved */
+#define VIRTCHNL2_RXDID_16_COMMS_GENERIC		16
+#define VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN		17
+#define VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4		18
+#define VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6		19
+#define VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW		20
+#define VIRTCHNL2_RXDID_21_COMMS_AUX_TCP		21
+/* 22 through 63 are reserved */
+
+/**
+ * VIRTCHNL2_RX_DESC_ID_BITMASKS
+ * Receive descriptor ID bitmasks
+ */
+#define VIRTCHNL2_RXDID_M(bit)			BIT_ULL(VIRTCHNL2_RXDID_##bit)
+#define VIRTCHNL2_RXDID_0_16B_BASE_M		VIRTCHNL2_RXDID_M(0_16B_BASE)
+#define VIRTCHNL2_RXDID_1_32B_BASE_M		VIRTCHNL2_RXDID_M(1_32B_BASE)
+#define VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M		VIRTCHNL2_RXDID_M(2_FLEX_SPLITQ)
+#define VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M		VIRTCHNL2_RXDID_M(2_FLEX_SQ_NIC)
+#define VIRTCHNL2_RXDID_3_FLEX_SQ_SW_M		VIRTCHNL2_RXDID_M(3_FLEX_SQ_SW)
+#define VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB_M	VIRTCHNL2_RXDID_M(4_FLEX_SQ_NIC_VEB)
+#define VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL_M	VIRTCHNL2_RXDID_M(5_FLEX_SQ_NIC_ACL)
+#define VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2_M	VIRTCHNL2_RXDID_M(6_FLEX_SQ_NIC_2)
+#define VIRTCHNL2_RXDID_7_HW_RSVD_M		VIRTCHNL2_RXDID_M(7_HW_RSVD)
+/* 9 through 15 are reserved */
+#define VIRTCHNL2_RXDID_16_COMMS_GENERIC_M	VIRTCHNL2_RXDID_M(16_COMMS_GENERIC)
+#define VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN_M	VIRTCHNL2_RXDID_M(17_COMMS_AUX_VLAN)
+#define VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4_M	VIRTCHNL2_RXDID_M(18_COMMS_AUX_IPV4)
+#define VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6_M	VIRTCHNL2_RXDID_M(19_COMMS_AUX_IPV6)
+#define VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW_M	VIRTCHNL2_RXDID_M(20_COMMS_AUX_FLOW)
+#define VIRTCHNL2_RXDID_21_COMMS_AUX_TCP_M	VIRTCHNL2_RXDID_M(21_COMMS_AUX_TCP)
+/* 22 through 63 are reserved */
+
+/* Rx */
+/* For splitq virtchnl2_rx_flex_desc_adv desc members */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M		GENMASK(3, 0)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_S		6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_M		GENMASK(7, 6)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M		GENMASK(9, 0)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_M		GENMASK(15, 13)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M		GENMASK(13, 0)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_S		0
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
+/**
+ * VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_0_QW1_BITS
+ * For splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_DD_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_S		1
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_S		6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EUDPE_S		7
+
+/**
+ * VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_0_QW0_BITS
+ * For splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_LPBK_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_S		1
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RXE_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_CRCP_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RSS_VALID_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L2TAG1P_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD0_VALID_S	6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD1_VALID_S	7
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_LAST			8
+
+/**
+ * VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_1_BITS
+ * For splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_RSVD_S		0 /* 2 bits */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_ATRAEFAIL_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_L2TAG2P_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD2_VALID_S	4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD3_VALID_S	5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD4_VALID_S	6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD5_VALID_S	7
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_LAST			8
+
+/* For singleq (flex) virtchnl2_rx_flex_desc fields */
+/* For virtchnl2_rx_flex_desc.ptype_flex_flags0 member */
+#define VIRTCHNL2_RX_FLEX_DESC_PTYPE_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_PTYPE_M			GENMASK(9, 0)
+
+/* For virtchnl2_rx_flex_desc.pkt_len member */
+#define VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M			GENMASK(13, 0)
+
+/**
+ * VIRTCHNL2_RX_FLEX_DESC_STATUS_ERROR_0_BITS
+ * For singleq (flex) virtchnl2_rx_flex_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_DD_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_EOF_S			1
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_HBO_S			2
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_L3L4P_S			3
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_IPE_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_L4E_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S		6
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S		7
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_LPBK_S			8
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_IPV6EXADD_S		9
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_RXE_S			10
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_CRCP_S			11
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_L2TAG1P_S		13
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD0_VALID_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD1_VALID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_LAST			16
+
+/**
+ * VIRTCHNL2_RX_FLEX_DESC_STATUS_ERROR_1_BITS
+ * For singleq (flex) virtchnl2_rx_flex_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_CPM_S			0 /* 4 bits */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_NAT_S			4
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_CRYPTO_S			5
+/* [10:6] reserved */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_L2TAG2P_S		11
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD2_VALID_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD3_VALID_S		13
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD4_VALID_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD5_VALID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_LAST			16
+
+/* For virtchnl2_rx_flex_desc.ts_low member */
+#define VIRTCHNL2_RX_FLEX_TSTAMP_VALID				BIT(0)
+
+/* For singleq (non flex) virtchnl2_singleq_base_rx_desc legacy desc members */
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_S	63
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_M	\
+	BIT_ULL(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_S	52
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_M	GENMASK_ULL(62, 52)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_S	38
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M	GENMASK_ULL(51, 38)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_S	30
+#define VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M	GENMASK_ULL(37, 30)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_S	19
+#define VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M	GENMASK_ULL(26, 19)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_S	0
+#define VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_M	GENMASK_ULL(18, 0)
+
+/**
+ * VIRTCHNL2_RX_BASE_DESC_STATUS_BITS
+ * For singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_DD_S		0
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_S		1
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_L2TAG1P_S		2
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_L3L4P_S		3
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_CRCP_S		4
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD_S		5 /* 3 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_EXT_UDP_0_S	8
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_UMBCAST_S		9 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_FLM_S		11
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_FLTSTAT_S		12 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_LPBK_S		14
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_IPV6EXADD_S	15
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD1_S		16 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_INT_UDP_0_S	18
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_LAST		19
+
+/**
+ * VIRTCHNL2_RX_BASE_DESC_EXT_STATUS_BITS
+ * For singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_EXT_STATUS_L2TAG2P_S	0
+
+/**
+ * VIRTCHNL2_RX_BASE_DESC_ERROR_BITS
+ * For singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_S		0
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_ATRAEFAIL_S	1
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_HBO_S		2
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_L3L4E_S		3 /* 3 bits */
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_IPE_S		3
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_L4E_S		4
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_EIPE_S		5
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_OVERSIZE_S		6
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_PPRS_S		7
+
+/**
+ * VIRTCHNL2_RX_BASE_DESC_FLTSTAT_VALUES
+ * For singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_NO_DATA		0
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_FD_ID		1
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSV		2
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH		3
+
+/**
+ * Receive Descriptors
+ * Splitq buf
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
+		/* Buffer Identifier */
+		__le16  buf_id;
+		__le16  rsvd0;
+		__le32  rsvd1;
+	} qword0;
+
+	/* Packet buffer address */
+	__le64  pkt_addr;
+	/* Header buffer address */
+	__le64  hdr_addr;
+	__le64  rsvd2;
+}; /* RX buffer descriptor format */
+
+/**
+ * Singleq buf
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
+	/* Packet buffer address */
+	__le64  pkt_addr;
+	/* Header buffer address */
+	__le64  hdr_addr;
+	__le64  rsvd1;
+	__le64  rsvd2;
+}; /* RX buffer descriptor format */
+
+union virtchnl2_rx_buf_desc {
+	struct virtchnl2_singleq_rx_buf_desc		read;
+	struct virtchnl2_splitq_rx_buf_desc		split_rd;
+};
+
+/* (0x00) singleq wb(compl) */
+struct virtchnl2_singleq_base_rx_desc {
+	struct {
+		struct {
+			__le16 mirroring_status;
+			__le16 l2tag1;
+		} lo_dword;
+		union {
+			/* RSS Hash */
+			__le32 rss;
+			/* Flow Director filter id */
+			__le32 fd_id;
+		} hi_dword;
+	} qword0;
+
+	struct {
+		/* status/error/PTYPE/length */
+		__le64 status_error_ptype_len;
+	} qword1;
+
+	struct {
+		/* Extended status */
+		__le16 ext_status;
+		__le16 rsvd;
+		__le16 l2tag2_1;
+		__le16 l2tag2_2;
+	} qword2;
+
+	struct {
+		__le32 reserved;
+		__le32 fd_id;
+	} qword3;
+}; /* RX descriptor writeback format */
+
+/* (0x01) singleq flex compl */
+struct virtchnl2_rx_flex_desc {
+	/* Qword 0 */
+	/* Descriptor builder profile id */
+	u8 rxdid;
+
+	/* mirror=[5:0], umb=[7:6] */
+	u8 mir_id_umb_cast;
+
+	/* ptype=[9:0], ff0=[15:10] */
+	__le16 ptype_flex_flags0;
+
+	/* [15:14] are reserved */
+	__le16 pkt_len;
+
+	/* header=[10:0]
+	 * sph=[11]
+	 * ff1/ext=[15:12]
+	 */
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le16 flex_meta0;
+	__le16 flex_meta1;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flex_flags2;
+	u8 time_stamp_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le16 flex_meta2;
+	__le16 flex_meta3;
+	union {
+		struct {
+			__le16 flex_meta4;
+			__le16 flex_meta5;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+}; /* RX descriptor writeback format */
+
+/* (0x02) */
+struct virtchnl2_rx_flex_desc_nic {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le32 flow_id;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+}; /* RX descriptor writeback format */
+
+/**
+ * Rx Flex Descriptor Switch Profile
+ * RxDID Profile Id 3
+ * Flex-field 0: Source Vsi
+ */
+struct virtchnl2_rx_flex_desc_sw {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	/* [10:15] are reserved */
+	__le16 src_vsi;
+	__le16 flex_md1_rsvd;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flex_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	/* Flex words 2-3 are reserved */
+	__le32 rsvd;
+	__le32 ts_high;
+}; /* RX descriptor writeback format */
+
+/**
+ * Rx Flex Descriptor NIC Profile
+ * RxDID Profile Id 6
+ * Flex-field 0: RSS hash lower 16-bits
+ * Flex-field 1: RSS hash upper 16-bits
+ * Flex-field 2: Flow Id lower 16-bits
+ * Flex-field 3: Source Vsi
+ * Flex-field 4: reserved, Vlan id taken from L2Tag
+ */
+struct virtchnl2_rx_flex_desc_nic_2 {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le16 flow_id;
+	__le16 src_vsi;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+}; /* RX descriptor writeback format */
+
+/**
+ * Rx Flex Descriptor Advanced (Split Queue Model)
+ * RxDID Profile Id 7
+ */
+struct virtchnl2_rx_flex_desc_adv {
+	/* Qword 0 */
+	/* profile_id=[3:0]
+	 * rsvd=[5:4]
+	 * ucast=[7:6]
+	 */
+	u8 rxdid_ucast;
+
+	u8 status_err0_qw0;
+
+	/* ptype=[9:0]
+	 * ip_hdr_err=[10]
+	 * udp_len_err=[11]
+	 * ff0=[15:12]
+	 */
+	__le16 ptype_err_fflags0;
+
+	/* plen=[13:0]
+	 * gen=[14] only in splitq
+	 * bufq_id=[15] only in splitq
+	 */
+	__le16 pktlen_gen_bufq_id;
+
+	/* header=[9:0]
+	 * rsc=[10] only in splitq
+	 * sph=[11] only in splitq
+	 * ext_udp_0=[12]
+	 * int_udp_0=[13]
+	 * trunc_mirr=[14]
+	 * miss_prepend=[15]
+	 */
+	__le16 hdrlen_flags;
+
+	/* Qword 1 */
+	u8 status_err0_qw1;
+	u8 status_err1;
+	u8 fflags1;
+	u8 ts_low;
+	__le16 fmd0;
+	__le16 fmd1;
+
+	/* Qword 2 */
+	__le16 fmd2;
+	u8 fflags2;
+	u8 hash3;
+	__le16 fmd3;
+	__le16 fmd4;
+
+	/* Qword 3 */
+	__le16 fmd5;
+	__le16 fmd6;
+	__le16 fmd7_0;
+	__le16 fmd7_1;
+}; /* RX descriptor writeback format */
+
+/**
+ * Rx Flex Descriptor Advanced (Split Queue Model) NIC Profile
+ * RxDID Profile Id 8
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
+	/* profile_id=[3:0]
+	 * rsvd=[5:4]
+	 * ucast=[7:6]
+	 */
+	u8 rxdid_ucast;
+
+	u8 status_err0_qw0;
+
+	/* ptype=[9:0]
+	 * ip_hdr_err=[10]
+	 * udp_len_err=[11]
+	 * ff0=[15:12]
+	 */
+	__le16 ptype_err_fflags0;
+
+	/* plen=[13:0]
+	 * gen=[14] only in splitq
+	 * bufq_id=[15] only in splitq
+	 */
+	__le16 pktlen_gen_bufq_id;
+
+	/* header=[9:0]
+	 * rsc=[10] only in splitq
+	 * sph=[11] only in splitq
+	 * ext_udp_0=[12]
+	 * int_udp_0=[13]
+	 * trunc_mirr=[14]
+	 * miss_prepend=[15]
+	 */
+	__le16 hdrlen_flags;
+
+	/* Qword 1 */
+	u8 status_err0_qw1;
+	u8 status_err1;
+	u8 fflags1;
+	u8 ts_low;
+	/* Only in splitq */
+	__le16 buf_id;
+	union {
+		__le16 raw_cs;
+		__le16 l2tag1;
+		__le16 rscseglen;
+	} misc;
+
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
+
+	/* Qword 3 */
+	__le16 l2tag1;
+	__le16 fmd6;
+	__le32 ts_high;
+}; /* RX descriptor writeback format */
+
+union virtchnl2_rx_desc {
+	struct virtchnl2_singleq_rx_buf_desc		read;
+	struct virtchnl2_singleq_base_rx_desc		base_wb;
+	struct virtchnl2_rx_flex_desc			flex_wb;
+	struct virtchnl2_rx_flex_desc_nic		flex_nic_wb;
+	struct virtchnl2_rx_flex_desc_sw		flex_sw_wb;
+	struct virtchnl2_rx_flex_desc_nic_2		flex_nic_2_wb;
+	struct virtchnl2_rx_flex_desc_adv		flex_adv_wb;
+	struct virtchnl2_rx_flex_desc_adv_nic_3		flex_adv_nic_3_wb;
+};
+
+#endif /* _VIRTCHNL_LAN_DESC_H_ */
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
