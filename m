Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ECF996210
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 10:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEB1F40B53;
	Wed,  9 Oct 2024 08:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IrNcWBwv1z69; Wed,  9 Oct 2024 08:12:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B287C40B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728461547;
	bh=3eaBXKdBf567zArxEJrZFp+3zckfSZ9Zm1KSUoZIVI8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nkHBJf+hoFlrEmnc5tPZ4avdQ4lVRlP3Bsq0LsolKphZeuUGgeApLmtOslALYN6xh
	 HDFGQ1TTBTyM6EHn+LqF8t61gakrU0mdSOldN4o1k7MhCRnyhC0SJ7vYwCDWhNMioX
	 2b17hcBTtjuWoWsw1uktMB3hAOR38T/0ptUJ2kfjzji0jQ3mevOipHe9LUoX6hJ3ep
	 lA75NhxXqh6NzVDFdL+n9BSyqwlLOCv+FF5/1rE6hfJ3deIrYaMQGubSNZSrAl9v3W
	 cs8cNTHJIGw0edfgnF7079/CynbQT1BsZ/H0NkmFVkpLe4KnWX/Bf/RVQ8thm4QHVd
	 hAaID+QOQ++oQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B287C40B30;
	Wed,  9 Oct 2024 08:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 228E61BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 107BE40B49
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id didB-dL2mZQK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 08:12:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D510740B47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D510740B47
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D510740B47
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:22 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-681-1BEGuxUcPCWpEBwtntoS3g-1; Wed,
 09 Oct 2024 04:12:16 -0400
X-MC-Unique: 1BEGuxUcPCWpEBwtntoS3g-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5F1F51943CE0; Wed,  9 Oct 2024 08:11:29 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.249])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 9883019560A3; Wed,  9 Oct 2024 08:11:23 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Oct 2024 10:09:58 +0200
Message-ID: <839002f7bd6f63b985a060a51b079f6e6dbbe237.1728460186.git.pabeni@redhat.com>
In-Reply-To: <cover.1728460186.git.pabeni@redhat.com>
References: <cover.1728460186.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728461541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3eaBXKdBf567zArxEJrZFp+3zckfSZ9Zm1KSUoZIVI8=;
 b=i1ACb0h8cXmidZUhw+SHBF/QhqsW4o7kgGdQaUWg3n0q8DhzFe0B7GRLJm+lPqJjsrvg8j
 bW4aXH54G3SBv0xOhc0io+bown1CFcn6Xnh5sL+MeDvPUeubL3K8Mt+cflO7tV1KGBI1NY
 Yb8+SAAB7M747Q1fEpqKuARH6oNLAq0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=i1ACb0h8
Subject: [Intel-wired-lan] [PATCH v9 net-next 12/15] virtchnl: support queue
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wenjun Wu <wenjun1.wu@intel.com>

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

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v8 -> v9:
 - fixed SoB chain
---
 include/linux/avf/virtchnl.h | 119 +++++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index f41395264dca..223e433c39fe 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -89,6 +89,9 @@ enum virtchnl_rx_hsplit {
 	VIRTCHNL_RX_HSPLIT_SPLIT_SCTP    = 8,
 };
 
+enum virtchnl_bw_limit_type {
+	VIRTCHNL_BW_SHAPER = 0,
+};
 /* END GENERIC DEFINES */
 
 /* Opcodes for VF-PF communication. These are placed in the v_opcode field
@@ -151,6 +154,11 @@ enum virtchnl_ops {
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
 
@@ -261,6 +269,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
+#define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
 
 #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
 			       VIRTCHNL_VF_OFFLOAD_VLAN | \
@@ -1416,6 +1425,85 @@ struct virtchnl_fdir_del {
 
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
 
@@ -1438,6 +1526,8 @@ VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
 		 __vss(virtchnl_vlan_filter_list_v2, __vss_byelem, p, m, c),  \
 		 __vss(virtchnl_tc_info, __vss_byelem, p, m, c),	      \
 		 __vss(virtchnl_rdma_qvlist_info, __vss_byelem, p, m, c),     \
+		 __vss(virtchnl_qos_cap_list, __vss_byelem, p, m, c),	      \
+		 __vss(virtchnl_queues_bw_cfg, __vss_byelem, p, m, c),	      \
 		 __vss(virtchnl_rss_key, __vss_byone, p, m, c),		      \
 		 __vss(virtchnl_rss_lut, __vss_byone, p, m, c))
 
@@ -1637,6 +1727,35 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
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
2.45.2

