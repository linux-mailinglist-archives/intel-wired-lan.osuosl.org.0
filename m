Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7C2A6DC04
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Mar 2025 14:50:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EA8F41137;
	Mon, 24 Mar 2025 13:49:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z3j8p9R3E8-h; Mon, 24 Mar 2025 13:49:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A92B2409D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742824195;
	bh=+XsDFNSgqKq+CjuHMjZjadN+NLRMPpuF8/jjAFq4iJE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=urRImXt6lykXD/FoV0bF4b6k7aOS7pqvKYnPETB0vc/2Bf2CwMicahrmP3CoZwFN0
	 vz2uab8FcjnNcQSrpjofmAj7N3riZ+G1Igniy2sfim7kQSbWmTvdFpRM6y3gK/ZoI4
	 u+vg++ljZJLrd0K/rD8wyBqKm9p8XtTYZDc91qOZ4X8mNNfg8Nyh1vevEWj2Wqp+eT
	 1d2EPM9bTmlzhosTE0Q3GvO+0BccQaU8fVaHxF+40GXSdlUg1Mn58iwpXXvXI3WNPe
	 Ez3ge0F+onk/2/CVReqV1A7EfZViNYB2dTySy13rO57PZ2nKj0GuQHQM0iWYG2Cd6V
	 KfAXSwB9FYtlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A92B2409D1;
	Mon, 24 Mar 2025 13:49:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 96F101B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 13:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94340821F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 13:49:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iz2ZmyecCtdu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Mar 2025 13:49:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E645821C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E645821C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E645821C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 13:49:53 +0000 (UTC)
X-CSE-ConnectionGUID: CoPsK4NhQBCZKZZwhdKY9g==
X-CSE-MsgGUID: 7b/O4K6xQRy1QLDpbzfYnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44042464"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="44042464"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:49:54 -0700
X-CSE-ConnectionGUID: KrNEZCFtT4eQezkKVHy3ZQ==
X-CSE-MsgGUID: 5plnqR74S22mLXD88Q4anw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124572068"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.77])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:49:49 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Dinesh Kumar <dinesh.kumar@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Mar 2025 07:49:37 -0600
Message-ID: <20250324134939.253647-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250324134939.253647-1-ahmed.zaki@intel.com>
References: <20250324134939.253647-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742824194; x=1774360194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R2Qf+On944jd9EcefVzcCedz17n8RY36JiHtlQR/jPs=;
 b=UWo2VanBNmZYBX7VSONOSNsgN//ed08hOlw8CQrY4Cc46ONTBlnftWo7
 vxqhnS8xA54eAbGUr1XiC1i2egxl/c5S5fwZe+PHOzUBscTTJT7LMSgaV
 GW5oqUrNC/5k7wSHuWjNufTBRfn9/TUeYVC/w/BSxt4iQi+EaCk2wDwGX
 bDrgOMBhDpmthUKx8kTb54fABEDMl3QvToApbabsmcnRJDqZ5TNp5H+4e
 eyrCn8o0XylNWUW+n0KniSpncKtoqJ0lq3c3F3Q2vdIUubTSJfasWP5YW
 F92RD4nUfzmknZaq3vy9bd43WyNsVl+B1hrwblhXIKFpNEmcP3m9BJDbh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UWo2VanB
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] virtchnl2: add flow steering
 support
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

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

Add opcodes and corresponding message structure to add and delete
flow steering rules. Flow steering enables configuration
of rules to take an action or subset of actions based on a match
criteria. Actions could be redirect to queue, redirect to queue
group, drop packet or mark.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Co-developed-by: Dinesh Kumar <dinesh.kumar@intel.com>
Signed-off-by: Dinesh Kumar <dinesh.kumar@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 233 +++++++++++++++++++-
 1 file changed, 228 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 07235f1b4c5c..3ed685968ee3 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -78,6 +78,11 @@ enum virtchnl2_op {
 	VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE		= 546,
 	VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_TIME		= 547,
 	VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP_CAPS	= 548,
+
+	/* Opcodes 549 - 550 are reserved */
+	VIRTCHNL2_OP_ADD_FLOW_RULE		= 551,
+	VIRTCHNL2_OP_GET_FLOW_RULE		= 552,
+	VIRTCHNL2_OP_DEL_FLOW_RULE		= 553,
 };
 
 /**
@@ -192,8 +197,9 @@ enum virtchnl2_cap_other {
 	VIRTCHNL2_CAP_RDMA			= BIT_ULL(0),
 	VIRTCHNL2_CAP_SRIOV			= BIT_ULL(1),
 	VIRTCHNL2_CAP_MACFILTER			= BIT_ULL(2),
-	VIRTCHNL2_CAP_FLOW_DIRECTOR		= BIT_ULL(3),
-	/* Queue based scheduling using split queue model */
+	/* BIT 3 is reserved and can be used for future caps.
+	 * Queue based scheduling using split queue model
+	 */
 	VIRTCHNL2_CAP_SPLITQ_QSCHED		= BIT_ULL(4),
 	VIRTCHNL2_CAP_CRC			= BIT_ULL(5),
 	VIRTCHNL2_CAP_ADQ			= BIT_ULL(6),
@@ -207,16 +213,54 @@ enum virtchnl2_cap_other {
 	/* EDT: Earliest Departure Time capability used for Timing Wheel */
 	VIRTCHNL2_CAP_EDT			= BIT_ULL(14),
 	VIRTCHNL2_CAP_ADV_RSS			= BIT_ULL(15),
-	VIRTCHNL2_CAP_FDIR			= BIT_ULL(16),
+	/* BIT 16 is reserved and can be used for future caps */
 	VIRTCHNL2_CAP_RX_FLEX_DESC		= BIT_ULL(17),
 	VIRTCHNL2_CAP_PTYPE			= BIT_ULL(18),
 	VIRTCHNL2_CAP_LOOPBACK			= BIT_ULL(19),
 	/* Other capability 20 is reserved */
+	VIRTCHNL2_CAP_FLOW_STEER		= BIT_ULL(21),
 
 	/* this must be the last capability */
 	VIRTCHNL2_CAP_OEM			= BIT_ULL(63),
 };
 
+/**
+ * enum virtchnl2_action_types - Available actions for sideband flow steering
+ * @VIRTCHNL2_ACTION_DROP: Drop the packet
+ * @VIRTCHNL2_ACTION_PASSTHRU: Forward the packet to the next classifier/stage
+ * @VIRTCHNL2_ACTION_QUEUE: Forward the packet to a receive queue
+ * @VIRTCHNL2_ACTION_Q_GROUP: Forward the packet to a receive queue group
+ * @VIRTCHNL2_ACTION_MARK: Mark the packet with specific marker value
+ * @VIRTCHNL2_ACTION_COUNT: Increment the corresponding counter
+ */
+
+enum virtchnl2_action_types {
+	VIRTCHNL2_ACTION_DROP		= BIT(0),
+	VIRTCHNL2_ACTION_PASSTHRU	= BIT(1),
+	VIRTCHNL2_ACTION_QUEUE		= BIT(2),
+	VIRTCHNL2_ACTION_Q_GROUP	= BIT(3),
+	VIRTCHNL2_ACTION_MARK		= BIT(4),
+	VIRTCHNL2_ACTION_COUNT		= BIT(5),
+};
+
+/* Flow type capabilities for Flow Steering and Receive-Side Scaling */
+enum virtchnl2_flow_types {
+	VIRTCHNL2_FLOW_IPV4_TCP		= BIT(0),
+	VIRTCHNL2_FLOW_IPV4_UDP		= BIT(1),
+	VIRTCHNL2_FLOW_IPV4_SCTP	= BIT(2),
+	VIRTCHNL2_FLOW_IPV4_OTHER	= BIT(3),
+	VIRTCHNL2_FLOW_IPV6_TCP		= BIT(4),
+	VIRTCHNL2_FLOW_IPV6_UDP		= BIT(5),
+	VIRTCHNL2_FLOW_IPV6_SCTP	= BIT(6),
+	VIRTCHNL2_FLOW_IPV6_OTHER	= BIT(7),
+	VIRTCHNL2_FLOW_IPV4_AH		= BIT(8),
+	VIRTCHNL2_FLOW_IPV4_ESP		= BIT(9),
+	VIRTCHNL2_FLOW_IPV4_AH_ESP	= BIT(10),
+	VIRTCHNL2_FLOW_IPV6_AH		= BIT(11),
+	VIRTCHNL2_FLOW_IPV6_ESP		= BIT(12),
+	VIRTCHNL2_FLOW_IPV6_AH_ESP	= BIT(13),
+};
+
 /* underlying device type */
 enum virtchl2_device_type {
 	VIRTCHNL2_MEV_DEVICE			= 0,
@@ -572,9 +616,16 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
 /**
  * enum virtchnl2_vport_flags - Vport flags that indicate vport capabilities.
  * @VIRTCHNL2_VPORT_UPLINK_PORT: Representatives of underlying physical ports
+ * @VIRTCHNL2_VPORT_INLINE_FLOW_STEER: Inline flow steering enabled
+ * @VIRTCHNL2_VPORT_INLINE_FLOW_STEER_RXQ: Inline flow steering enabled
+ * with explicit Rx queue action
+ * @VIRTCHNL2_VPORT_SIDEBAND_FLOW_STEER: Sideband flow steering enabled
  */
 enum virtchnl2_vport_flags {
-	VIRTCHNL2_VPORT_UPLINK_PORT	= BIT(0),
+	VIRTCHNL2_VPORT_UPLINK_PORT		= BIT(0),
+	VIRTCHNL2_VPORT_INLINE_FLOW_STEER	= BIT(1),
+	VIRTCHNL2_VPORT_INLINE_FLOW_STEER_RXQ	= BIT(2),
+	VIRTCHNL2_VPORT_SIDEBAND_FLOW_STEER	= BIT(3),
 };
 
 /**
@@ -599,6 +650,14 @@ enum virtchnl2_vport_flags {
  * @rx_desc_ids: See VIRTCHNL2_RX_DESC_IDS definitions.
  * @tx_desc_ids: See VIRTCHNL2_TX_DESC_IDS definitions.
  * @pad1: Padding.
+ * @inline_flow_types: Bit mask of supported inline-flow-steering
+ *  flow types (See enum virtchnl2_flow_types)
+ * @sideband_flow_types: Bit mask of supported sideband-flow-steering
+ *  flow types (See enum virtchnl2_flow_types)
+ * @sideband_flow_actions: Bit mask of supported action types
+ *  for sideband flow steering (See enum virtchnl2_action_types)
+ * @flow_steer_max_rules: Max rules allowed for inline and sideband
+ *  flow steering combined
  * @rss_algorithm: RSS algorithm.
  * @rss_key_size: RSS key size.
  * @rss_lut_size: RSS LUT size.
@@ -631,7 +690,11 @@ struct virtchnl2_create_vport {
 	__le16 vport_flags;
 	__le64 rx_desc_ids;
 	__le64 tx_desc_ids;
-	u8 pad1[72];
+	u8 pad1[48];
+	__le64 inline_flow_types;
+	__le64 sideband_flow_types;
+	__le32 sideband_flow_actions;
+	__le32 flow_steer_max_rules;
 	__le32 rss_algorithm;
 	__le16 rss_key_size;
 	__le16 rss_lut_size;
@@ -1580,4 +1643,164 @@ struct virtchnl2_ptp_adj_dev_clk_time {
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_adj_dev_clk_time);
 
+#define VIRTCHNL2_MAX_NUM_PROTO_HDRS	4
+#define VIRTCHNL2_MAX_SIZE_RAW_PACKET	256
+#define VIRTCHNL2_MAX_NUM_ACTIONS	8
+
+/**
+ * struct virtchnl2_proto_hdr
+ * @hdr_type : See enum virtchnl2_proto_hdr_type
+ * @pad  : padding
+ * @buffer_spec : binary buffer based on header type.
+ * @buffer_mask : mask applied on buffer_spec.
+ *
+ * Structure to hold protocol headers based on hdr_type
+ */
+struct virtchnl2_proto_hdr {
+	__le32 hdr_type;
+	u8 pad[4];
+	u8 buffer_spec[64];
+	u8 buffer_mask[64];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(136, virtchnl2_proto_hdr);
+
+/**
+ * struct virtchnl2_proto_hdrs - struct to represent match criteria
+ * @tunnel_level : specify where protocol header(s) start from.
+ *                 must be 0 when sending a raw packet request.
+ *                 0 - from the outer layer
+ *                 1 - from the first inner layer
+ *                 2 - from the second inner layer
+ * @pad : Padding bytes
+ * @count : total number of protocol headers in proto_hdr. 0 for raw packet.
+ * @proto_hdr : Array of protocol headers
+ * @raw   : struct holding raw packet buffer when count is 0
+ */
+struct virtchnl2_proto_hdrs {
+	u8 tunnel_level;
+	u8 pad[3];
+	__le32 count;
+	union {
+		struct virtchnl2_proto_hdr
+			proto_hdr[VIRTCHNL2_MAX_NUM_PROTO_HDRS];
+		struct {
+			__le16 pkt_len;
+			u8 spec[VIRTCHNL2_MAX_SIZE_RAW_PACKET];
+			u8 mask[VIRTCHNL2_MAX_SIZE_RAW_PACKET];
+		} raw;
+	};
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(552, virtchnl2_proto_hdrs);
+
+/**
+ * struct virtchnl2_rule_action - struct representing single action for a flow
+ * @action_type : see enum virtchnl2_action_types
+ * @act_conf : union representing action depending on action_type.
+ * @q_id : queue id to redirect the packets to.
+ * @q_grp_id : queue group id to redirect the packets to.
+ * ctr_id : used for count action. If input value 0xFFFFFFFF control plane
+ *          assigns a new counter and returns the counter ID to the driver. If
+ *          input value is not 0xFFFFFFFF then it must be an existing counter
+ *          given to the driver for an earlier flow. Then this flow will share
+ *          the counter.
+ * mark_id : Value used to mark the packets with. Used for mark action.
+ * reserved: Reserved for future use.
+ */
+struct virtchnl2_rule_action {
+	__le32 action_type;
+	union {
+		__le32 q_id;
+		__le32 q_grp_id;
+		__le32 ctr_id;
+		__le32 mark_id;
+		u8 reserved[8];
+	} act_conf;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(12, virtchnl2_rule_action);
+
+/**
+ * struct virtchnl2_rule_action_set - struct representing multiple actions
+ * @count : number of valid actions in the action set of a rule
+ * @actions : array of struct virtchnl2_rule_action
+ */
+struct virtchnl2_rule_action_set {
+	/* action count must be less than VIRTCHNL2_MAX_NUM_ACTIONS */
+	__le32 count;
+	struct virtchnl2_rule_action actions[VIRTCHNL2_MAX_NUM_ACTIONS];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(100, virtchnl2_rule_action_set);
+
+/**
+ * struct virtchnl2_flow_rule
+ * @proto_hdrs : array of protocol header buffers representing match criteria
+ * @action_set : series of actions to be applied for given rule
+ * @priority : rule priority.
+ * @pad : padding for future extensions.
+ */
+struct virtchnl2_flow_rule {
+	struct virtchnl2_proto_hdrs proto_hdrs;
+	struct virtchnl2_rule_action_set action_set;
+	__le32 priority;
+	u8 pad[8];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(664, virtchnl2_flow_rule);
+
+enum virtchnl2_flow_rule_status {
+	VIRTCHNL2_FLOW_RULE_SUCCESS			= 1,
+	VIRTCHNL2_FLOW_RULE_NORESOURCE			= 2,
+	VIRTCHNL2_FLOW_RULE_EXIST			= 3,
+	VIRTCHNL2_FLOW_RULE_TIMEOUT			= 4,
+	VIRTCHNL2_FLOW_RULE_FLOW_TYPE_NOT_SUPPORTED	= 5,
+	VIRTCHNL2_FLOW_RULE_MATCH_KEY_NOT_SUPPORTED	= 6,
+	VIRTCHNL2_FLOW_RULE_ACTION_NOT_SUPPORTED	= 7,
+	VIRTCHNL2_FLOW_RULE_ACTION_COMBINATION_INVALID	= 8,
+	VIRTCHNL2_FLOW_RULE_ACTION_DATA_INVALID		= 9,
+	VIRTCHNL2_FLOW_RULE_NOT_ADDED			= 10,
+};
+
+/**
+ * struct virtchnl2_flow_rule_info : structure representing single flow rule
+ * @rule_id : rule_id associated with the flow_rule.
+ * @rule_cfg : structure representing rule.
+ * @status : status of rule programming. See enum virtchnl2_flow_rule_status.
+ */
+
+struct virtchnl2_flow_rule_info {
+	__le32 rule_id;
+	struct virtchnl2_flow_rule rule_cfg;
+	__le32 status;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(672, virtchnl2_flow_rule_info);
+
+/**
+ * struct virtchnl2_flow_rule_add_del
+ * @vport_id : vport id for which the rule is to be added or deleted.
+ * @count : Indicates number of rules to be added or deleted.
+ * @rule_info: Array of flow rules to be added or deleted.
+ *
+ * For VIRTCHNL2_OP_FLOW_RULE_ADD, rule_info contains list of rules to be
+ * added. If rule_id is 0xFFFFFFFF, then the rule is programmed and not cached.
+ *
+ * For VIRTCHNL2_OP_FLOW_RULE_DEL, there are two possibilities. The structure
+ * can contain either array of rule_ids or array of match keys to be deleted.
+ * When match keys are used the corresponding rule_ids must be 0xFFFFFFFF.
+ *
+ * status member of each rule indicates the result. Maximum of 6 rules can be
+ * added or deleted using this method. Driver has to retry in case of any
+ * failure of ADD or DEL opcode. CP doesn't retry in case of failure.
+ */
+struct virtchnl2_flow_rule_add_del {
+	__le32 vport_id;
+	__le32 count;
+	struct virtchnl2_flow_rule_info rule_info[] __counted_by_le(count);
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_flow_rule_add_del);
+
 #endif /* _VIRTCHNL_2_H_ */
-- 
2.43.0

