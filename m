Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E81477E46B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D162542065;
	Wed, 16 Aug 2023 14:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D162542065
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692197949;
	bh=8suNryhHIPORZ3Wv3OZ/r/nRxfSJNTyDlVU3wTHUkrI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cHvSh9TVsfWkxU++pwMWPLD8PvNzCXxxSoLByNUwmi+UP+nVx3Ir44EPl54JUtu6b
	 ei/HtgwZktzmSbYxAxpxVFiY9TJsZZWyfuoLZJGXZrr7mV4i8UZfAWyqYASrTkt4Di
	 YW8E/mjA4IwMEXA1bmEUK2EbwvUTrvBqP5xgDgBtDTggAQST0ZSjNjLtLc9zxM3OK2
	 qD+Mpf1J7ihu24wJd98F15FdPLJWU5tj7lub2BjaNyO2G8ViuARWEaQNyEg2C80QSx
	 hXwFsryBRDIRfaV0u/HW2HcGSSgy/AiSzgRoGL+1eHmyY/8cbt/W7wZLTDETTdthKv
	 jXKT9ZX5YkK+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d08shy2zExxi; Wed, 16 Aug 2023 14:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 606EA41888;
	Wed, 16 Aug 2023 14:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 606EA41888
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49C091BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22D00611B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22D00611B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qWH4tU8n5sr7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 03:29:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DC2E60B12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DC2E60B12
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372427757"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372427757"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 20:29:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710958636"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710958636"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.152])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2023 20:29:31 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Wed, 16 Aug 2023 11:33:49 +0800
Message-Id: <20230816033353.94565-2-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230816033353.94565-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230816033353.94565-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Aug 2023 14:58:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692156573; x=1723692573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gmAmptHxzIwdrunMmjawOfnsESEc3HYM2fJ6sgUa1Z4=;
 b=WCChz5zh+TiON8AP/hofW0lhYuP66WcGgDC6Qdbz0jmYJCjII2IUdfO7
 0hJfI/N+1KL7dFY0E7GtQJy/3zBDOCGICw6KfR52OnKW9COK9S7HFoeRL
 qfgd10hdgji/Rknta2x+6+YHYeZnU7d3iASuMpe/VGysSFUv0yjtLVCTK
 xkHFiiGkXff33+CioOtslBtjtuZewvTneuZFDPa9J2MDALO1qUxKlpbpo
 AbQVzOR7EFiRUBuhxgz4Dx4laDtCmV43nHflZppfL49nHuiIc9Y9yQ3wF
 VWYivGShF3yefkhuROpVAUMn8CiV3B2q2ZmkbG4giXGyyAcPQLiEkdzwN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WCChz5zh
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/5] virtchnl: support queue
 rate limit and quanta size configuration
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
Cc: anthony.l.nguyen@intel.com, Wenjun Wu <wenjun1.wu@intel.com>,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds new virtchnl opcodes and structures for rate limit
and quanta size configuration, which include:
1. VIRTCHNL_OP_CONFIG_QUEUE_BW, to configure max bandwidth for each
VF per queue.
2. VIRTCHNL_OP_CONFIG_QUANTA, to configure quanta size per queue.
3. VIRTCHNL_OP_GET_QOS_CAPS, VF queries current QoS configuration, such
as enabled TCs, arbiter type, up2tc and bandwidth of VSI node. The
configuration is previously set by DCB and PF, and now is the potential
QoS capability of VF. VF can take it as reference to configure queue TC
mapping.

Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
---
 include/linux/avf/virtchnl.h | 119 +++++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index d0807ad43f93..0132c002ca06 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -84,6 +84,9 @@ enum virtchnl_rx_hsplit {
 	VIRTCHNL_RX_HSPLIT_SPLIT_SCTP    = 8,
 };
 
+enum virtchnl_bw_limit_type {
+	VIRTCHNL_BW_SHAPER = 0,
+};
 /* END GENERIC DEFINES */
 
 /* Opcodes for VF-PF communication. These are placed in the v_opcode field
@@ -145,6 +148,11 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
 	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
 	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
+	/* opcode 57 - 65 are reserved */
+	VIRTCHNL_OP_GET_QOS_CAPS = 66,
+	/* opcode 68 through 111 are reserved */
+	VIRTCHNL_OP_CONFIG_QUEUE_BW = 112,
+	VIRTCHNL_OP_CONFIG_QUANTA = 113,
 	VIRTCHNL_OP_MAX,
 };
 
@@ -253,6 +261,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
+#define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
 
 #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
 			       VIRTCHNL_VF_OFFLOAD_VLAN | \
@@ -1377,6 +1386,85 @@ struct virtchnl_fdir_del {
 
 VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
 
+struct virtchnl_shaper_bw {
+	/* Unit is Kbps */
+	u32 committed;
+	u32 peak;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_shaper_bw);
+
+/* VIRTCHNL_OP_GET_QOS_CAPS
+ * VF sends this message to get its QoS Caps, such as
+ * TC number, Arbiter and Bandwidth.
+ */
+struct virtchnl_qos_cap_elem {
+	u8 tc_num;
+	u8 tc_prio;
+#define VIRTCHNL_ABITER_STRICT      0
+#define VIRTCHNL_ABITER_ETS         2
+	u8 arbiter;
+#define VIRTCHNL_STRICT_WEIGHT      1
+	u8 weight;
+	enum virtchnl_bw_limit_type type;
+	union {
+		struct virtchnl_shaper_bw shaper;
+		u8 pad2[32];
+	};
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_qos_cap_elem);
+
+struct virtchnl_qos_cap_list {
+	u16 vsi_id;
+	u16 num_elem;
+	struct virtchnl_qos_cap_elem cap[];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl_qos_cap_list);
+#define virtchnl_qos_cap_list_LEGACY_SIZEOF	44
+
+/* VIRTCHNL_OP_CONFIG_QUEUE_BW */
+struct virtchnl_queue_bw {
+	u16 queue_id;
+	u8 tc;
+	u8 pad;
+	struct virtchnl_shaper_bw shaper;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_bw);
+
+struct virtchnl_queues_bw_cfg {
+	u16 vsi_id;
+	u16 num_queues;
+	struct virtchnl_queue_bw cfg[];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl_queues_bw_cfg);
+#define virtchnl_queues_bw_cfg_LEGACY_SIZEOF	16
+
+enum virtchnl_queue_type {
+	VIRTCHNL_QUEUE_TYPE_TX			= 0,
+	VIRTCHNL_QUEUE_TYPE_RX			= 1,
+};
+
+/* structure to specify a chunk of contiguous queues */
+struct virtchnl_queue_chunk {
+	/* see enum virtchnl_queue_type */
+	s32 type;
+	u16 start_queue_id;
+	u16 num_queues;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
+
+struct virtchnl_quanta_cfg {
+	u16 quanta_size;
+	struct virtchnl_queue_chunk queue_select;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_quanta_cfg);
+
 #define __vss_byone(p, member, count, old)				      \
 	(struct_size(p, member, count) + (old - 1 - struct_size(p, member, 0)))
 
@@ -1399,6 +1487,8 @@ VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
 		 __vss(virtchnl_vlan_filter_list_v2, __vss_byelem, p, m, c),  \
 		 __vss(virtchnl_tc_info, __vss_byelem, p, m, c),	      \
 		 __vss(virtchnl_rdma_qvlist_info, __vss_byelem, p, m, c),     \
+		 __vss(virtchnl_qos_cap_list, __vss_byelem, p, m, c),	      \
+		 __vss(virtchnl_queues_bw_cfg, __vss_byelem, p, m, c),	      \
 		 __vss(virtchnl_rss_key, __vss_byone, p, m, c),		      \
 		 __vss(virtchnl_rss_lut, __vss_byone, p, m, c))
 
@@ -1595,6 +1685,35 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
 		valid_len = sizeof(struct virtchnl_vlan_setting);
 		break;
+	case VIRTCHNL_OP_GET_QOS_CAPS:
+		break;
+	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
+		valid_len = virtchnl_queues_bw_cfg_LEGACY_SIZEOF;
+		if (msglen >= valid_len) {
+			struct virtchnl_queues_bw_cfg *q_bw =
+				(struct virtchnl_queues_bw_cfg *)msg;
+
+			valid_len = virtchnl_struct_size(q_bw, cfg,
+							 q_bw->num_queues);
+			if (q_bw->num_queues == 0) {
+				err_msg_format = true;
+				break;
+			}
+		}
+		break;
+	case VIRTCHNL_OP_CONFIG_QUANTA:
+		valid_len = sizeof(struct virtchnl_quanta_cfg);
+		if (msglen >= valid_len) {
+			struct virtchnl_quanta_cfg *q_quanta =
+				(struct virtchnl_quanta_cfg *)msg;
+
+			if (q_quanta->quanta_size == 0 ||
+			    q_quanta->queue_select.num_queues == 0) {
+				err_msg_format = true;
+				break;
+			}
+		}
+		break;
 	/* These are always errors coming from the VF. */
 	case VIRTCHNL_OP_EVENT:
 	case VIRTCHNL_OP_UNKNOWN:
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
