Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELsPKlne/WmqkAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 048584F6B17
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4905828AA;
	Fri,  8 May 2026 13:00:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kCPl4YVoE90W; Fri,  8 May 2026 13:00:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB9A682F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245205;
	bh=6aio19pTKV7xJ3PU58xFMQ0yxviiqzOcerFJfK0kn7A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HPUADpwai5/8Nf79P4rfTlLPID5PnW+NPN6tG0len0Ov2dOJ6YSRSUmSqhPL8ckoK
	 1Nkns6WmvblItYF3qQVQ4Ny7+fH6QYv1Tyg1UQQskJY+SvfrnYRwannwftunEERC0s
	 T+b0e8r/M11SY4fXXA6sT5qmQT5n3qWL0y0Maixpwck5ZsKtAuOJ1xZgqk4Hkg2Fgn
	 Z3bB66/kaLwbO9hga/iGn7T+HikDmMi49OtHyVzanBowX1Y+ANiedQssJXbt1gp6yR
	 1IIcy/UMp2CIwHGkpoAU6dyj19dzTX6LaMDQnKYvYylxqx0gFD+iDNjn+8BcTETHXu
	 W9Y2fRKF+NzHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB9A682F11;
	Fri,  8 May 2026 13:00:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 30DE8317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22D27410AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id icnWIK-WzCAX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 13:00:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E0EE40F70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E0EE40F70
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E0EE40F70
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:00:01 +0000 (UTC)
X-CSE-ConnectionGUID: dBXOBHdQQNqQjP74BK4OVA==
X-CSE-MsgGUID: 0Jd/peijR7WXiH5NVKiqDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199981"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199981"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:00:02 -0700
X-CSE-ConnectionGUID: Sn7WXHuYTLulWvaeJXsD9A==
X-CSE-MsgGUID: seXKWwaIR8y59DnpgFRZMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730165"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:54 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3B6EB2FC42;
 Fri,  8 May 2026 13:59:52 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:42:04 +0200
Message-Id: <20260508124208.11622-12-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245202; x=1809781202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+6Fm5Nlok4KSB5kW9pnbyQfnuwTbhWexEntyNbjjdK0=;
 b=IgXHXR0A2mIuw0vVVM+dfQ9RNDc9byVwjRoVvYWZs1GtvCHJRGfq3mhp
 CBVnDQc3dwZBlQbU/THWUM6FI7MJDgnXJHkg1PhT7nsvCmsLHgDnNPp1J
 nzcu/rqgLiHBmP01PEUhUPNFpKUruTuSg7QNt9oNS/gvLGxiWbSlN+Qgc
 1z6Ip8SZBfQukZJkdRxcEjL2okILKuBwWFWWdvY2284kpZtUQWTYA9snE
 t+H3ShzpXlAmx+fEi3/yXVpL8sLZOwdOBflNqgUbPSNQ4xw9cPv6oJPTU
 QuCSDUOh/uuqwF+M9O88xB6oNHg/vkg2Em0tmzmQOWZPPf5YrQPxG9YAg
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IgXHXR0A
Subject: [Intel-wired-lan] [PATCH iwl-next v1 11/15] iavf: use new opcodes
 to request more than 16 queues
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
X-Rspamd-Queue-Id: 048584F6B17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.990];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

From: Ahmed Zaki <ahmed.zaki@intel.com>

The Virtchnl is using a bit wide filed to enable, disable or configure
the device queues. Define new OP codes in order to enable the VF to
request a variable number of queues.

First the new capability VIRTCHNL_VF_LARGE_NUM_QPAIRS is defined. Only
if this cap is negotiated, the VF is allowed to use the new OP codes.

The VIRTCHNL_OP_GET_MAX_RSS_QREGION is exchanged right after the VF
resource message is received. This is done similar to the PTP and other
extended cap exchanges.

Enabling and disabling queues, and mapping queues to vectors is done
through the new VIRTCHNL_OP_ENABLE_QUEUES_V2,
VIRTCHNL_OP_DISABLE_QUEUES_V2, and VIRTCHNL_OP_MAP_QUEUE_VECTOR messages.

Use the new iavf_request_queues() in the iavf_set_channels().
It's not only for elegance, but it enables our brittle handcoded state
machine to go through requesting the queues before PF driver reallocates
queue-related arrays.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  11 +
 include/linux/intel/virtchnl.h                | 136 +++++++++++-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 123 ++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 202 +++++++++++++++++-
 5 files changed, 460 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 569686d34ff4..541d602149d8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -345,6 +345,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS		BIT_ULL(42)
 #define IAVF_FLAG_AQ_GET_PTP_CAPS			BIT_ULL(43)
 #define IAVF_FLAG_AQ_SEND_PTP_CMD			BIT_ULL(44)
+#define IAVF_FLAG_AQ_GET_MAX_RSS_QREGION		BIT_ULL(45)
 
 	/* AQ messages that must be sent after IAVF_FLAG_AQ_GET_CONFIG, in
 	 * order to negotiated extended capabilities.
@@ -368,12 +369,16 @@ struct iavf_adapter {
 #define IAVF_EXTENDED_CAP_RECV_RXDID			BIT_ULL(3)
 #define IAVF_EXTENDED_CAP_SEND_PTP			BIT_ULL(4)
 #define IAVF_EXTENDED_CAP_RECV_PTP			BIT_ULL(5)
+#define IAVF_EXTENDED_CAP_SEND_RSS_QREGION		BIT_ULL(6)
+#define IAVF_EXTENDED_CAP_RECV_RSS_QREGION		BIT_ULL(7)
 
 #define IAVF_EXTENDED_CAPS				\
 	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
 	 IAVF_EXTENDED_CAP_RECV_VLAN_V2 |		\
 	 IAVF_EXTENDED_CAP_SEND_RXDID |			\
 	 IAVF_EXTENDED_CAP_RECV_RXDID |			\
+	 IAVF_EXTENDED_CAP_SEND_RSS_QREGION |		\
+	 IAVF_EXTENDED_CAP_RECV_RSS_QREGION |		\
 	 IAVF_EXTENDED_CAP_SEND_PTP |			\
 	 IAVF_EXTENDED_CAP_RECV_PTP)
 
@@ -413,6 +418,8 @@ struct iavf_adapter {
 #define RSS_REG(_a) (!((_a)->vf_res->vf_cap_flags & \
 		       (VIRTCHNL_VF_OFFLOAD_RSS_AQ | \
 			VIRTCHNL_VF_OFFLOAD_RSS_PF)))
+#define LARGE_NUM_QPAIRS_SUPPORT(_a) \
+	((_a)->vf_res->vf_cap_flags & VIRTCHNL_VF_LARGE_NUM_QPAIRS)
 #define VLAN_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
 			  VIRTCHNL_VF_OFFLOAD_VLAN)
 #define VLAN_V2_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
@@ -447,6 +454,7 @@ struct iavf_adapter {
 	struct virtchnl_vlan_caps vlan_v2_caps;
 	u64 supp_rxdids;
 	struct iavf_ptp ptp;
+	struct virtchnl_max_rss_qregion max_rss_qregion;
 	u16 msg_enable;
 	struct iavf_eth_stats current_stats;
 	struct virtchnl_qos_cap_list *qos_caps;
@@ -583,13 +591,16 @@ int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter);
 int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter);
+int iavf_send_max_rss_qregion(struct iavf_adapter *adapter);
+int iavf_get_max_rss_qregion(struct iavf_adapter *adapter);
 void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
 u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
 void iavf_configure_queues(struct iavf_adapter *adapter);
 void iavf_enable_queues(struct iavf_adapter *adapter);
 void iavf_disable_queues(struct iavf_adapter *adapter);
 void iavf_map_queues(struct iavf_adapter *adapter);
+int iavf_request_queues(struct iavf_adapter *adapter, int num);
 int iavf_add_ether_addrs(struct iavf_adapter *adapter);
 void iavf_del_ether_addrs(struct iavf_adapter *adapter);
 void iavf_mac_add_reject(struct iavf_adapter *adapter);
diff --git a/include/linux/intel/virtchnl.h b/include/linux/intel/virtchnl.h
index 511c8827c640..622e89847b21 100644
--- a/include/linux/intel/virtchnl.h
+++ b/include/linux/intel/virtchnl.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (c) 2013-2022, Intel Corporation. */
+/* Copyright (c) 2013-2026, Intel Corporation. */
 
 #ifndef _VIRTCHNL_H_
 #define _VIRTCHNL_H_
@@ -22,8 +22,7 @@
  * we must send all messages as "indirect", i.e. using an external buffer.
  *
  * All the VSI indexes are relative to the VF. Each VF can have maximum of
- * three VSIs. All the queue indexes are relative to the VSI.  Each VF can
- * have a maximum of sixteen queues for all of its VSIs.
+ * three VSIs. All the queue indexes are relative to the VSI.
  *
  * The PF is required to return a status code in v_retval for all messages
  * except RESET_VF, which does not require any response. The returned value
@@ -147,6 +146,7 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DEL_RSS_CFG = 46,
 	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
 	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
+	VIRTCHNL_OP_GET_MAX_RSS_QREGION = 50,
 	VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS = 51,
 	VIRTCHNL_OP_ADD_VLAN_V2 = 52,
 	VIRTCHNL_OP_DEL_VLAN_V2 = 53,
@@ -159,7 +159,11 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_1588_PTP_GET_TIME = 61,
 	/* opcode 62 - 65 are reserved */
 	VIRTCHNL_OP_GET_QOS_CAPS = 66,
-	/* opcode 68 through 111 are reserved */
+	/* opcodes 67 through 106 are reserved */
+	VIRTCHNL_OP_ENABLE_QUEUES_V2 = 107,
+	VIRTCHNL_OP_DISABLE_QUEUES_V2 = 108,
+	/* opcodes 109 and 110 are reserved */
+	VIRTCHNL_OP_MAP_QUEUE_VECTOR = 111,
 	VIRTCHNL_OP_CONFIG_QUEUE_BW = 112,
 	VIRTCHNL_OP_CONFIG_QUANTA = 113,
 	VIRTCHNL_OP_MAX,
@@ -257,6 +261,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_REQ_QUEUES		BIT(6)
 /* used to negotiate communicating link speeds in Mbps */
 #define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		BIT(7)
+#define VIRTCHNL_VF_LARGE_NUM_QPAIRS		BIT(9)
 #define  VIRTCHNL_VF_OFFLOAD_CRC		BIT(10)
 #define VIRTCHNL_VF_OFFLOAD_TC_U32		BIT(11)
 #define VIRTCHNL_VF_OFFLOAD_VLAN_V2		BIT(15)
@@ -500,6 +505,34 @@ struct virtchnl_queue_select {
 
 VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_select);
 
+/* VIRTCHNL_OP_GET_MAX_RSS_QREGION
+ *
+ * if VIRTCHNL_VF_LARGE_NUM_QPAIRS was negotiated in
+ * VIRTCHNL_OP_GET_VF_RESOURCES then this op must be supported.
+ *
+ * VF sends this message in order to query the max RSS queue region
+ * size supported by PF, when VIRTCHNL_VF_LARGE_NUM_QPAIRS is enabled.
+ * This information should be used when configuring the RSS LUT and/or
+ * configuring queue region based filters.
+ *
+ * The maximum RSS queue region is 2^qregion_width. So, a qregion_width of 6
+ * would inform the VF that the PF supports a maximum RSS queue region of 64.
+ *
+ * A queue region represents a range of queues that can be used to configure
+ * a RSS LUT. For example, if a VF is given 64 queues, but only a max queue
+ * region size of 16 (i.e. 2^qregion_width = 16) then it will only be able
+ * to configure the RSS LUT with queue indices from 0 to 15. However, other
+ * filters can be used to direct packets to queues >15 via specifying a queue
+ * base/offset and queue region width.
+ */
+struct virtchnl_max_rss_qregion {
+	u16 vport_id;
+	u16 qregion_width;
+	u8 pad[4];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_max_rss_qregion);
+
 /* VIRTCHNL_OP_ADD_ETH_ADDR
  * VF sends this message in order to add one or more unicast or multicast
  * address filters for the specified VSI.
@@ -1664,6 +1697,70 @@ struct virtchnl_queue_chunk {
 
 VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
 
+/* VIRTCHNL_OP_ENABLE_QUEUES_V2
+ * VIRTCHNL_OP_DISABLE_QUEUES_V2
+ *
+ * These opcodes can be used if VIRTCHNL_VF_LARGE_NUM_QPAIRS was negotiated in
+ * VIRTCHNL_OP_GET_VF_RESOURCES
+ *
+ * VF sends virtchnl_ena_dis_queues struct to specify the queues to be
+ * enabled/disabled in chunks. Also applicable to single queue RX or
+ * TX. PF performs requested action and returns status.
+ */
+struct virtchnl_del_ena_dis_queues {
+	u16 vport_id;
+	u16 pad;
+	u16 num_chunks;
+	u16 rsvd;
+	struct virtchnl_queue_chunk chunks[];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_del_ena_dis_queues);
+#define virtchnl_del_ena_dis_queues_LEGACY_SIZEOF	16
+
+/* Virtchannel interrupt throttling rate index */
+enum virtchnl_itr_idx {
+	VIRTCHNL_ITR_IDX_0	= 0,
+	VIRTCHNL_ITR_IDX_1	= 1,
+	VIRTCHNL_ITR_IDX_NO_ITR	= 3,
+};
+
+/* Queue to vector mapping */
+struct virtchnl_queue_vector {
+	u16 queue_id;
+	u16 vector_id;
+	u8 pad[4];
+
+	/* see enum virtchnl_itr_idx */
+	s32 itr_idx;
+
+	/* see enum virtchnl_queue_type */
+	s32 queue_type;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_queue_vector);
+
+/* VIRTCHNL_OP_MAP_QUEUE_VECTOR
+ *
+ * This opcode can be used only if VIRTCHNL_VF_LARGE_NUM_QPAIRS was negotiated
+ * in VIRTCHNL_OP_GET_VF_RESOURCES
+ *
+ * VF sends this message to map queues to vectors and ITR index registers.
+ * External data buffer contains virtchnl_queue_vector_maps structure
+ * that contains num_qv_maps of virtchnl_queue_vector structures.
+ * PF maps the requested queue vector maps after validating the queue and vector
+ * ids and returns a status code.
+ */
+struct virtchnl_queue_vector_maps {
+	u16 vport_id;
+	u16 num_qv_maps;
+	u8 pad[4];
+	struct virtchnl_queue_vector qv_maps[];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_vector_maps);
+#define virtchnl_queue_vector_maps_LEGACY_SIZEOF	24
+
 struct virtchnl_quanta_cfg {
 	u16 quanta_size;
 	u16 pad;
@@ -1696,6 +1793,8 @@ VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_quanta_cfg);
 		 __vss(virtchnl_rdma_qvlist_info, __vss_byelem, p, m, c),     \
 		 __vss(virtchnl_qos_cap_list, __vss_byelem, p, m, c),	      \
 		 __vss(virtchnl_queues_bw_cfg, __vss_byelem, p, m, c),	      \
+		 __vss(virtchnl_del_ena_dis_queues, __vss_byelem, p, m, c),   \
+		 __vss(virtchnl_queue_vector_maps, __vss_byelem, p, m, c),    \
 		 __vss(virtchnl_rss_key, __vss_byone, p, m, c),		      \
 		 __vss(virtchnl_rss_lut, __vss_byone, p, m, c))
 
@@ -1758,6 +1857,8 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DISABLE_QUEUES:
 		valid_len = sizeof(struct virtchnl_queue_select);
 		break;
+	case VIRTCHNL_OP_GET_MAX_RSS_QREGION:
+		break;
 	case VIRTCHNL_OP_ADD_ETH_ADDR:
 	case VIRTCHNL_OP_DEL_ETH_ADDR:
 		valid_len = virtchnl_ether_addr_list_LEGACY_SIZEOF;
@@ -1930,7 +2031,32 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_1588_PTP_GET_TIME:
 		valid_len = sizeof(struct virtchnl_phc_time);
 		break;
-	/* These are always errors coming from the VF. */
+	case VIRTCHNL_OP_ENABLE_QUEUES_V2:
+	case VIRTCHNL_OP_DISABLE_QUEUES_V2:
+		valid_len = sizeof(struct virtchnl_del_ena_dis_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl_del_ena_dis_queues *qs =
+				(struct virtchnl_del_ena_dis_queues *)msg;
+
+			if (!qs->num_chunks) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len = virtchnl_struct_size(qs, chunks,
+							 qs->num_chunks);
+		}
+		break;
+	case VIRTCHNL_OP_MAP_QUEUE_VECTOR:
+		valid_len = virtchnl_queue_vector_maps_LEGACY_SIZEOF;
+		if (msglen >= valid_len) {
+			struct virtchnl_queue_vector_maps *v_qp = (void *)msg;
+
+			err_msg_format = !v_qp->num_qv_maps;
+			valid_len = virtchnl_struct_size(v_qp, qv_maps,
+							 v_qp->num_qv_maps);
+		}
+		break;
+	/* These are always errors when coming from the VF. */
 	case VIRTCHNL_OP_EVENT:
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index dc2503e3c5ba..ff59d2dd5448 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1744,12 +1744,9 @@ static int iavf_set_channels(struct net_device *netdev,
 	if (ch->rx_count || ch->tx_count || ch->other_count != NONQ_VECS)
 		return -EINVAL;
 
-	adapter->num_req_queues = num_req;
-	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
-	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-	iavf_reset_step(adapter);
 
-	return 0;
+	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+	return iavf_request_queues(adapter, num_req);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index abc0fe070ee7..b7b4b857f384 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1758,10 +1758,14 @@ int iavf_config_rss(struct iavf_adapter *adapter)
  **/
 static void iavf_fill_rss_lut(struct iavf_adapter *adapter)
 {
-	u16 i;
+	struct virtchnl_max_rss_qregion *qregion = &adapter->max_rss_qregion;
+	int max = adapter->num_active_queues;
+
+	if (LARGE_NUM_QPAIRS_SUPPORT(adapter) && qregion->qregion_width)
+		max = min(max, (int)BIT(qregion->qregion_width));
 
-	for (i = 0; i < adapter->rss_lut_size; i++)
-		adapter->rss_lut[i] = i % adapter->num_active_queues;
+	for (int i = 0; i < adapter->rss_lut_size; i++)
+		adapter->rss_lut[i] = i % max;
 }
 
 /**
@@ -2246,6 +2250,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_virtchnl_send_ptp_cmd(adapter);
 		return IAVF_SUCCESS;
 	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_GET_MAX_RSS_QREGION) {
+		iavf_get_max_rss_qregion(adapter);
+		return 0;
+	}
 	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_STATS) {
 		iavf_request_stats(adapter);
 		return 0;
@@ -2441,8 +2449,9 @@ static void iavf_init_version_check(struct iavf_adapter *adapter)
  */
 int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
 {
-	int i, num_req_queues = adapter->num_req_queues;
+	int i, qnum, num_req_queues = adapter->num_req_queues;
 	struct iavf_vsi *vsi = &adapter->vsi;
+	bool reconfig_rss = false;
 
 	for (i = 0; i < adapter->vf_res->num_vsis; i++) {
 		if (adapter->vf_res->vsi_res[i].vsi_type == VIRTCHNL_VSI_SRIOV)
@@ -2469,21 +2478,58 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
 
 		return -EAGAIN;
 	}
+	if (!num_req_queues) {
+		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+		qnum = min(adapter->vsi_res->num_queue_pairs,
+			   num_online_cpus());
+
+		return iavf_request_queues(adapter, qnum);
+	}
 	adapter->num_req_queues = 0;
 	adapter->vsi.id = adapter->vsi_res->vsi_id;
 
 	adapter->vsi.back = adapter;
 	adapter->vsi.base_vector = 1;
 	vsi->netdev = adapter->netdev;
 	vsi->qs_handle = adapter->vsi_res->qset_handle;
 	if (adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
+		if ((adapter->rss_key &&
+		     adapter->rss_key_size != adapter->vf_res->rss_key_size) ||
+		    (adapter->rss_lut &&
+		     adapter->rss_lut_size != adapter->vf_res->rss_lut_size)) {
+			reconfig_rss = true;
+		}
 		adapter->rss_key_size = adapter->vf_res->rss_key_size;
 		adapter->rss_lut_size = adapter->vf_res->rss_lut_size;
 	} else {
 		adapter->rss_key_size = IAVF_HKEY_ARRAY_SIZE;
 		adapter->rss_lut_size = IAVF_HLUT_ARRAY_SIZE;
 	}
 
+	if (reconfig_rss) {
+		u8 *rss_key, *rss_lut;
+
+		rss_key = krealloc(adapter->rss_key, adapter->rss_key_size,
+				   GFP_KERNEL);
+		if (rss_key)
+			adapter->rss_key = rss_key;
+		rss_lut = krealloc(adapter->rss_lut, adapter->rss_lut_size,
+				   GFP_KERNEL);
+		if (rss_lut)
+			adapter->rss_lut = rss_lut;
+		if (!rss_lut || !rss_key)
+			return -ENOMEM;
+
+		iavf_init_rss(adapter);
+	}
+
+	qnum = min_t(int, IAVF_MAX_REQ_QUEUES, (int)(num_online_cpus()));
+	if (LARGE_NUM_QPAIRS_SUPPORT(adapter) &&
+	    adapter->vsi_res->num_queue_pairs < qnum) {
+		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+		return iavf_request_queues(adapter, qnum);
+	}
+
 	return 0;
 }
 
@@ -2609,6 +2655,65 @@ static void iavf_init_recv_offload_vlan_v2_caps(struct iavf_adapter *adapter)
 	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
+/*
+ * iavf_init_send_max_rss_qregion - part of querying for RSS max queue region
+ * @adapter: board private structure
+ *
+ * Function processes send of the VIRTCHNL_OP_GET_MAX_RSS_QREGION to the PF.
+ * Must clear IAVF_EXTENDED_CAP_RECV_RSS_QREGION if the message is not sent, e.g.
+ * due to the PF not negotiating VIRTCHNL_VF_LARGE_NUM_QPAIRS.
+ */
+static void iavf_init_send_max_rss_qregion(struct iavf_adapter *adapter)
+{
+	int ret;
+
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_RSS_QREGION));
+
+	ret = iavf_send_max_rss_qregion(adapter);
+	if (ret == -EOPNOTSUPP) {
+		/* PF does not support VIRTCHNL_VF_LARGE_NUM_QPAIRS. In this
+		 * case, we did not send the capability exchange message and do
+		 * not expect a response.
+		 */
+		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_RSS_QREGION;
+	}
+
+	/* We sent the message, so move on to the next step */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_RSS_QREGION;
+}
+
+/**
+ * iavf_init_recv_max_rss_qregion - part of querying for RSS max queue region
+ * @adapter: board private structure
+ *
+ * Function processes receipt of the RSS max qregion to be used for the LUT.
+ */
+static void iavf_init_recv_max_rss_qregion(struct iavf_adapter *adapter)
+{
+	int ret;
+
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_RSS_QREGION));
+
+	memset(&adapter->max_rss_qregion, 0, sizeof(adapter->max_rss_qregion));
+
+	ret = iavf_get_max_rss_qregion(adapter);
+	if (ret)
+		goto err;
+
+	/* We've processed the PF response to the VIRTCHNL_OP_GET_MAX_RSS_QREGION
+	 * message we sent previously.
+	 */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_RSS_QREGION;
+	return;
+
+err:
+	/* We didn't receive a reply. Make sure we try sending again when
+	 * __IAVF_INIT_FAILED attempts to recover.
+	 */
+	adapter->extended_caps |= IAVF_EXTENDED_CAP_RECV_RSS_QREGION;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+}
+
 /**
  * iavf_init_send_supported_rxdids - part of querying for supported RXDID
  * formats
@@ -2757,6 +2862,16 @@ static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
 		return;
 	}
 
+	/* Process capability exchange for RSS max qregion */
+	if (adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_RSS_QREGION) {
+		iavf_init_send_max_rss_qregion(adapter);
+		return;
+	}
+	if (adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_RSS_QREGION) {
+		iavf_init_recv_max_rss_qregion(adapter);
+		return;
+	}
+
 	/* When we reach here, no further extended capabilities exchanges are
 	 * necessary, so we finally transition into __IAVF_INIT_CONFIG_ADAPTER
 	 */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 9102bc4bddb0..ab1019a91ff7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -170,6 +170,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
 	       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC |
 	       VIRTCHNL_VF_OFFLOAD_CRC |
+	       VIRTCHNL_VF_LARGE_NUM_QPAIRS |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
 	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
 	       VIRTCHNL_VF_CAP_PTP |
@@ -251,28 +252,44 @@ int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
 				(u8 *)&hw_caps, sizeof(hw_caps));
 }
 
+int iavf_send_max_rss_qregion(struct iavf_adapter *adapter)
+{
+	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_MAX_RSS_QREGION;
+
+	if (!LARGE_NUM_QPAIRS_SUPPORT(adapter))
+		return -EOPNOTSUPP;
+
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_MAX_RSS_QREGION, NULL, 0);
+	return 0;
+}
+
 /**
  * iavf_validate_num_queues
  * @adapter: adapter structure
  *
  * Validate that the number of queues the PF has sent in
  * VIRTCHNL_OP_GET_VF_RESOURCES is not larger than the VF can handle.
  **/
 static void iavf_validate_num_queues(struct iavf_adapter *adapter)
 {
-	if (adapter->vf_res->num_queue_pairs > IAVF_MAX_REQ_QUEUES) {
+	u32 max_req_queues = IAVF_MAX_REQ_QUEUES;
+
+	if (!LARGE_NUM_QPAIRS_SUPPORT(adapter))
+		max_req_queues = IAVF_MAX_VSI_QP;
+
+	if (adapter->vf_res->num_queue_pairs > max_req_queues) {
 		struct virtchnl_vsi_resource *vsi_res;
 		int i;
 
 		dev_info(&adapter->pdev->dev, "Received %d queues, but can only have a max of %d\n",
 			 adapter->vf_res->num_queue_pairs,
-			 IAVF_MAX_REQ_QUEUES);
+			 max_req_queues);
 		dev_info(&adapter->pdev->dev, "Fixing by reducing queues to %d\n",
-			 IAVF_MAX_REQ_QUEUES);
-		adapter->vf_res->num_queue_pairs = IAVF_MAX_REQ_QUEUES;
+			 max_req_queues);
+		adapter->vf_res->num_queue_pairs = max_req_queues;
 		for (i = 0; i < adapter->vf_res->num_vsis; i++) {
 			vsi_res = &adapter->vf_res->vsi_res[i];
-			vsi_res->num_queue_pairs = IAVF_MAX_REQ_QUEUES;
+			vsi_res->num_queue_pairs = max_req_queues;
 		}
 	}
 }
@@ -371,6 +388,30 @@ int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter)
 	return err;
 }
 
+int iavf_get_max_rss_qregion(struct iavf_adapter *adapter)
+{
+	struct iavf_arq_event_info event;
+	int err;
+	u16 len;
+
+	len = sizeof(struct virtchnl_max_rss_qregion);
+	event.buf_len = len;
+	event.msg_buf = kzalloc(len, GFP_KERNEL);
+	if (!event.msg_buf)
+		return -ENOMEM;
+
+	err = iavf_poll_virtchnl_msg(&adapter->hw, &event,
+				     VIRTCHNL_OP_GET_MAX_RSS_QREGION);
+	if (!err)
+		memcpy(&adapter->max_rss_qregion, event.msg_buf,
+		       min(event.msg_len, len));
+
+	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+
+	kfree(event.msg_buf);
+	return err;
+}
+
 static bool iavf_match_vc_op_cb(struct iavf_adapter *adapter, const void *data,
 				enum virtchnl_ops recv_op)
 {
@@ -466,6 +507,50 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	kfree(vqci);
 }
 
+/**
+ * iavf_enable_disable_queues_v2 - send V2 messages of ENABLE/DISABLE queues ops
+ * @adapter: private adapter structure
+ * @enable: true to enable and false to disable the queues
+ */
+static void iavf_enable_disable_queues_v2(struct iavf_adapter *adapter, bool enable)
+{
+	enum virtchnl_ops op = VIRTCHNL_OP_ENABLE_QUEUES_V2;
+	struct virtchnl_del_ena_dis_queues *msg;
+	u64 flag = IAVF_FLAG_AQ_ENABLE_QUEUES;
+	struct virtchnl_queue_chunk *chunk;
+	int len;
+
+	if (!enable) {
+		op = VIRTCHNL_OP_DISABLE_QUEUES_V2;
+		flag = IAVF_FLAG_AQ_DISABLE_QUEUES;
+	}
+
+	adapter->current_op = op;
+
+	/* We need 2 chunks (one Tx and one Rx). */
+	len = virtchnl_struct_size(msg, chunks, 2);
+	msg = kzalloc(len, GFP_KERNEL);
+	if (!msg)
+		return;
+
+	msg->vport_id = adapter->vsi_res->vsi_id;
+	msg->num_chunks = 2;
+
+	chunk = &msg->chunks[0];
+	chunk->type = VIRTCHNL_QUEUE_TYPE_RX;
+	chunk->start_queue_id = 0;
+	chunk->num_queues = adapter->num_active_queues;
+
+	chunk++;
+	chunk->type = VIRTCHNL_QUEUE_TYPE_TX;
+	chunk->start_queue_id = 0;
+	chunk->num_queues = adapter->num_active_queues;
+
+	adapter->aq_required &= ~flag;
+	iavf_send_pf_msg(adapter, op, (u8 *)msg, len);
+	kfree(msg);
+}
+
 /**
  * iavf_enable_queues
  * @adapter: adapter structure
@@ -482,6 +567,12 @@ void iavf_enable_queues(struct iavf_adapter *adapter)
 			adapter->current_op);
 		return;
 	}
+
+	if (adapter->num_active_queues > IAVF_MAX_VSI_QP) {
+		iavf_enable_disable_queues_v2(adapter, true);
+		return;
+	}
+
 	adapter->current_op = VIRTCHNL_OP_ENABLE_QUEUES;
 	vqs.vsi_id = adapter->vsi_res->vsi_id;
 	vqs.tx_queues = BIT(adapter->num_active_queues) - 1;
@@ -507,15 +598,81 @@ void iavf_disable_queues(struct iavf_adapter *adapter)
 			adapter->current_op);
 		return;
 	}
+
+	if (LARGE_NUM_QPAIRS_SUPPORT(adapter)) {
+		iavf_enable_disable_queues_v2(adapter, false);
+		return;
+	}
+
 	adapter->current_op = VIRTCHNL_OP_DISABLE_QUEUES;
 	vqs.vsi_id = adapter->vsi_res->vsi_id;
 	vqs.tx_queues = BIT(adapter->num_active_queues) - 1;
 	vqs.rx_queues = vqs.tx_queues;
 	adapter->aq_required &= ~IAVF_FLAG_AQ_DISABLE_QUEUES;
 	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DISABLE_QUEUES,
 			 (u8 *)&vqs, sizeof(vqs));
 }
 
+static void iavf_map_queue_vector(struct iavf_adapter *adapter)
+{
+	struct virtchnl_queue_vector_maps *qvmaps;
+	int qnum = adapter->num_active_queues;
+	struct virtchnl_queue_vector *qv;
+	int len, max_pairs;
+	
+	max_pairs = iavf_max_vc_entries(qvmaps, qv_maps) / 2;
+	len = virtchnl_struct_size(qvmaps, qv_maps, 2 * min(qnum, max_pairs));
+	qvmaps = kzalloc(len, GFP_KERNEL);
+	if (!qvmaps)
+		return;
+
+	qvmaps->vport_id = adapter->vsi_res->vsi_id;
+	qv = qvmaps->qv_maps;
+	for (int qid = 0, in_msg = 0; qid < qnum; qid++) {
+		const bool last = qid + 1 == qnum;
+		struct iavf_q_vector *q_vector;
+
+		q_vector = adapter->tx_rings[qid].q_vector;
+		qv->queue_id = qid;
+		qv->vector_id = NONQ_VECS + q_vector->v_idx;
+		qv->itr_idx = IAVF_TX_ITR;
+		qv->queue_type = VIRTCHNL_QUEUE_TYPE_TX;
+		qv++;
+
+		q_vector = adapter->rx_rings[qid].q_vector;
+		qv->queue_id = qid;
+		qv->vector_id = NONQ_VECS + q_vector->v_idx;
+		qv->itr_idx = IAVF_RX_ITR;
+		qv->queue_type = VIRTCHNL_QUEUE_TYPE_RX;
+		qv++;
+
+		in_msg++;
+		if (last || in_msg == max_pairs) {
+			int err;
+
+			qvmaps->num_qv_maps = 2 * in_msg;
+			adapter->current_op = VIRTCHNL_OP_MAP_QUEUE_VECTOR;
+			iavf_send_pf_msg(adapter, VIRTCHNL_OP_MAP_QUEUE_VECTOR,
+					 (u8 *)qvmaps,
+					 virtchnl_struct_size(qvmaps, qv_maps,
+					 		      2 * in_msg));
+			err = iavf_poll_virtchnl_response(adapter,
+							  iavf_match_vc_op_cb,
+							  (void *)VIRTCHNL_OP_MAP_QUEUE_VECTOR,
+							  1000);
+			if (err)
+				dev_warn(&adapter->pdev->dev,
+					 "polling response of mapping queue vectors failed, err: %d\n",
+					 err);
+
+			in_msg = 0;
+			qv = qvmaps->qv_maps;
+		}
+	}
+	adapter->aq_required &= ~IAVF_FLAG_AQ_MAP_VECTORS;
+	kfree(qvmaps);
+}
+
 /**
  * iavf_map_queues
  * @adapter: adapter structure
@@ -537,6 +694,12 @@ void iavf_map_queues(struct iavf_adapter *adapter)
 			adapter->current_op);
 		return;
 	}
+
+	if (LARGE_NUM_QPAIRS_SUPPORT(adapter)) {
+		iavf_map_queue_vector(adapter);
+		return;
+	}
+
 	adapter->current_op = VIRTCHNL_OP_CONFIG_IRQ_MAP;
 
 	q_vectors = adapter->num_msix_vectors - NONQ_VECS;
@@ -573,6 +736,32 @@ void iavf_map_queues(struct iavf_adapter *adapter)
 	kfree(vimi);
 }
 
+/**
+ * iavf_request_queues - request queues via virtchnl
+ * @adapter: adapter structure
+ * @num: number of requested queues
+ *
+ * Return: 0 on success, negative on failure.
+ */
+int iavf_request_queues(struct iavf_adapter *adapter, int num)
+{
+	struct virtchnl_vf_res_request vfres = { num };
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev, "Cannot request queues, command %d pending\n",
+			adapter->current_op);
+		return -EBUSY;
+	}
+
+	adapter->current_op = VIRTCHNL_OP_REQUEST_QUEUES;
+	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
+	adapter->num_req_queues = num;
+
+	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_REQUEST_QUEUES,
+				(u8 *)&vfres, sizeof(vfres));
+}
+
 /**
  * iavf_set_mac_addr_type - Set the correct request type from the filter type
  * @virtchnl_ether_addr: pointer to requested list element
@@ -2749,20 +2938,23 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		iavf_virtchnl_ptp_get_time(adapter, msg, msglen);
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
+	case VIRTCHNL_OP_ENABLE_QUEUES_V2:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
 		adapter->flags &= ~IAVF_FLAG_QUEUES_DISABLED;
 		break;
 	case VIRTCHNL_OP_DISABLE_QUEUES:
+	case VIRTCHNL_OP_DISABLE_QUEUES_V2:
 		iavf_free_all_tx_resources(adapter);
 		iavf_free_all_rx_resources(adapter);
 		if (adapter->state == __IAVF_DOWN_PENDING) {
 			iavf_change_state(adapter, __IAVF_DOWN);
 			wake_up(&adapter->down_waitqueue);
 		}
 		break;
 	case VIRTCHNL_OP_VERSION:
 	case VIRTCHNL_OP_CONFIG_IRQ_MAP:
+	case VIRTCHNL_OP_MAP_QUEUE_VECTOR:
 		/* Don't display an error if we get these out of sequence.
 		 * If the firmware needed to get kicked, we'll get these and
 		 * it's no problem.
-- 
2.39.3

