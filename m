Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DB9A90DAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 23:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED0056F7B4;
	Wed, 16 Apr 2025 21:19:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oD23CCydE_pO; Wed, 16 Apr 2025 21:19:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0CC46F727
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744838352;
	bh=widxNlUzyg4OMjg2UIGRKLvqEoqGfhxgdIsJd3n/ED8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0Wh/FnxVXwVdaIJpmMh0SoNepJz87C3Zw61aTTiXN9QhIm0DfZ3WJHKC+NpLNtTxA
	 5NtBqSfPcYRpQbolic067FvXu0M2afMgGp8VHh8rHQrDBocrul0iQymrYPFvG1SLui
	 V5onM0YxD5tSi4kGEmF5rUd9wxFoB3mk7heRxitZhIKJaVI4Ufjd01eFzjYsn45E+1
	 hfcQi1h3t2B7dQoCPH8cYn7tSmDtWVYAgiNz/oXY/AQK4qNLYn4YtAbSU6yubR63m1
	 9l6/JFtTFy+9gtOJ8J3A8IWkSezfAUi5uN/G0JtqjMUBHbS9UX8AshyPcQGRIo/jYi
	 Wu8TP42BlAMKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0CC46F727;
	Wed, 16 Apr 2025 21:19:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 23703444
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7522E60A55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0xV7wh1nVsU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7605160E11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7605160E11
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7605160E11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
X-CSE-ConnectionGUID: 3mQaKq7cR8CVb0X5didhew==
X-CSE-MsgGUID: g4GkZMBbT8avQjnMSkmpag==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46496247"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="46496247"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 14:19:02 -0700
X-CSE-ConnectionGUID: NztMp4vGRPKajLz5IQVUJg==
X-CSE-MsgGUID: Q+PqOMPoTQmMLz/ImhQR5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="130909770"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa008.fm.intel.com with ESMTP; 16 Apr 2025 14:19:02 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Wed, 16 Apr 2025 14:18:20 -0700
Message-ID: <20250416211821.444076-9-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
References: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744838342; x=1776374342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GcfN+Kbon7ZG/yJQb4ufDvJ71YhLmO9JA4ORRB6SSvo=;
 b=Qf+N7kil23JLziWkbRZxGFlL9qpGjK4jlLXky/C3fhaUigwkf8be9iuR
 TBXhpb7yNWJ5pdxc/Ds+kqW3K56q7nCpFxkz9cBorhaBkEm88JtgyRRsR
 zw5J7CpKDdRz5bhduMr4VCENN79vxQfTCbzUBi+yGhkM87xa1fjOHB/9N
 myvqy1HR87Qzkc5gMSZNHt1uFKcLeUoJFFVdqmX+EeeTyBrNWBUejPp9A
 +sRpAHcUhbgy7rCMlhOQXmFcMVe6K4D8s2C780gN2o8JrhM+NurMj9YRh
 yXEWG1gZw8mmu/lWIZFtlFE0wRod5f+zVUJa9Lrk2VoKrUvBheMtvAPp1
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qf+N7kil
Subject: [Intel-wired-lan] [PATCH iwl-next 8/9] idpf: avoid calling
 get_rx_ptypes for each vport
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

RX ptypes received from device control plane doesn't
depend on vport info, but might vary based on the queue model.
When the driver requests for ptypes, control plane fills both
ptype_id_10 (used for splitq) and ptype_id_8 (used for singleq)
fields of the virtchnl2_ptype response structure. This allows
to call get_rx_ptypes once at the adapter level instead of
each vport.

Parse and store the received ptypes of both splitq and singleq
in a separate lookup table. Respective lookup table is used based
on the queue model info. As part of the changes, pull the ptype
protocol parsing code into a separate function.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   7 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   9 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   4 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 310 ++++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   1 -
 5 files changed, 174 insertions(+), 157 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 274e580d0d1d..003fb61c7128 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -318,7 +318,6 @@ struct idpf_q_vec_rsrc {
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
- * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @port_stats: per port csum, header split, and other offload stats
  * @default_vport: Use this vport if one isn't specified
  * @crc_enable: Enable CRC insertion offload
@@ -343,7 +342,6 @@ struct idpf_vport {
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 	u16 tx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 
-	struct libeth_rx_pt *rx_ptype_lkup;
 	struct idpf_port_stats port_stats;
 	bool default_vport;
 	bool crc_enable;
@@ -547,6 +545,8 @@ struct idpf_vc_xn_manager;
  * @vport_params_reqd: Vport params requested
  * @vport_params_recvd: Vport params received
  * @vport_ids: Array of device given vport identifiers
+ * @singleq_pt_lkup: Lookup table for singleq RX ptypes
+ * @splitq_pt_lkup: Lookup table for splitq RX ptypes
  * @vport_config: Vport config parameters
  * @max_vports: Maximum vports that can be allocated
  * @num_alloc_vports: Current number of vports allocated
@@ -602,6 +602,9 @@ struct idpf_adapter {
 	struct virtchnl2_create_vport **vport_params_recvd;
 	u32 *vport_ids;
 
+	struct libeth_rx_pt *singleq_pt_lkup;
+	struct libeth_rx_pt *splitq_pt_lkup;
+
 	struct idpf_vport_config **vport_config;
 	u16 max_vports;
 	u16 num_alloc_vports;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index d676b2eb567b..af0f036c561d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -900,9 +900,6 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 idx = vport->idx;
 
-	kfree(vport->rx_ptype_lkup);
-	vport->rx_ptype_lkup = NULL;
-
 	if (test_and_clear_bit(IDPF_VPORT_REG_NETDEV,
 			       adapter->vport_config[idx]->flags)) {
 		unregister_netdev(vport->netdev);
@@ -1512,10 +1509,6 @@ void idpf_init_task(struct work_struct *work)
 	if (idpf_cfg_netdev(vport))
 		goto cfg_netdev_err;
 
-	err = idpf_send_get_rx_ptype_msg(vport);
-	if (err)
-		goto handle_err;
-
 	/* Once state is put into DOWN, driver is ready for dev_open */
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
@@ -1561,8 +1554,6 @@ void idpf_init_task(struct work_struct *work)
 
 	return;
 
-handle_err:
-	idpf_decfg_netdev(vport);
 cfg_netdev_err:
 	idpf_vport_rel(vport);
 	adapter->vports[index] = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 2dd614df97ce..a464be376284 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1449,6 +1449,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 				struct idpf_q_vec_rsrc *rsrc,
 				u16 num_rxq)
 {
+	struct idpf_adapter *adapter = vport->adapter;
 	int k, err = 0;
 	bool hs;
 
@@ -1539,6 +1540,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 
 			if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
 				q = rx_qgrp->singleq.rxqs[j];
+				q->rx_ptype_lkup = adapter->singleq_pt_lkup;
 				goto setup_rxq;
 			}
 			q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
@@ -1549,10 +1551,10 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
+			q->rx_ptype_lkup = adapter->splitq_pt_lkup;
 
 setup_rxq:
 			q->desc_count = rsrc->rxq_desc_count;
-			q->rx_ptype_lkup = vport->rx_ptype_lkup;
 			q->netdev = vport->netdev;
 			q->bufq_sets = rx_qgrp->splitq.bufq_sets;
 			q->idx = (i * num_rxq) + j;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d7775e517e98..c201fd08dcbf 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2486,36 +2486,143 @@ static void idpf_finalize_ptype_lookup(struct libeth_rx_pt *ptype)
 	libeth_rx_pt_gen_hash_type(ptype);
 }
 
+/**
+ * idpf_parse_protocol_ids - parse protocol IDs for a given packet type
+ * @ptype: packet type to parse
+ * @rx_pt: store the parsed packet type info into
+ */
+static void idpf_parse_protocol_ids(struct virtchnl2_ptype *ptype,
+				    struct libeth_rx_pt *rx_pt)
+{
+	struct idpf_ptype_state pstate = {};
+
+	for (u32 j = 0; j < ptype->proto_id_count; j++) {
+		u16 id = le16_to_cpu(ptype->proto_id[j]);
+
+		switch (id) {
+		case VIRTCHNL2_PROTO_HDR_GRE:
+			if (pstate.tunnel_state == IDPF_PTYPE_TUNNEL_IP) {
+				rx_pt->tunnel_type =
+					LIBETH_RX_PT_TUNNEL_IP_GRENAT;
+				pstate.tunnel_state |=
+					IDPF_PTYPE_TUNNEL_IP_GRENAT;
+			}
+			break;
+		case VIRTCHNL2_PROTO_HDR_MAC:
+			rx_pt->outer_ip = LIBETH_RX_PT_OUTER_L2;
+			if (pstate.tunnel_state == IDPF_TUN_IP_GRE) {
+				rx_pt->tunnel_type =
+					LIBETH_RX_PT_TUNNEL_IP_GRENAT_MAC;
+				pstate.tunnel_state |=
+					IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC;
+			}
+			break;
+		case VIRTCHNL2_PROTO_HDR_IPV4:
+			idpf_fill_ptype_lookup(rx_pt, &pstate, true, false);
+			break;
+		case VIRTCHNL2_PROTO_HDR_IPV6:
+			idpf_fill_ptype_lookup(rx_pt, &pstate, false, false);
+			break;
+		case VIRTCHNL2_PROTO_HDR_IPV4_FRAG:
+			idpf_fill_ptype_lookup(rx_pt, &pstate, true, true);
+			break;
+		case VIRTCHNL2_PROTO_HDR_IPV6_FRAG:
+			idpf_fill_ptype_lookup(rx_pt, &pstate, false, true);
+			break;
+		case VIRTCHNL2_PROTO_HDR_UDP:
+			rx_pt->inner_prot = LIBETH_RX_PT_INNER_UDP;
+			break;
+		case VIRTCHNL2_PROTO_HDR_TCP:
+			rx_pt->inner_prot = LIBETH_RX_PT_INNER_TCP;
+			break;
+		case VIRTCHNL2_PROTO_HDR_SCTP:
+			rx_pt->inner_prot = LIBETH_RX_PT_INNER_SCTP;
+			break;
+		case VIRTCHNL2_PROTO_HDR_ICMP:
+			rx_pt->inner_prot = LIBETH_RX_PT_INNER_ICMP;
+			break;
+		case VIRTCHNL2_PROTO_HDR_PAY:
+			rx_pt->payload_layer = LIBETH_RX_PT_PAYLOAD_L2;
+			break;
+		case VIRTCHNL2_PROTO_HDR_ICMPV6:
+		case VIRTCHNL2_PROTO_HDR_IPV6_EH:
+		case VIRTCHNL2_PROTO_HDR_PRE_MAC:
+		case VIRTCHNL2_PROTO_HDR_POST_MAC:
+		case VIRTCHNL2_PROTO_HDR_ETHERTYPE:
+		case VIRTCHNL2_PROTO_HDR_SVLAN:
+		case VIRTCHNL2_PROTO_HDR_CVLAN:
+		case VIRTCHNL2_PROTO_HDR_MPLS:
+		case VIRTCHNL2_PROTO_HDR_MMPLS:
+		case VIRTCHNL2_PROTO_HDR_PTP:
+		case VIRTCHNL2_PROTO_HDR_CTRL:
+		case VIRTCHNL2_PROTO_HDR_LLDP:
+		case VIRTCHNL2_PROTO_HDR_ARP:
+		case VIRTCHNL2_PROTO_HDR_ECP:
+		case VIRTCHNL2_PROTO_HDR_EAPOL:
+		case VIRTCHNL2_PROTO_HDR_PPPOD:
+		case VIRTCHNL2_PROTO_HDR_PPPOE:
+		case VIRTCHNL2_PROTO_HDR_IGMP:
+		case VIRTCHNL2_PROTO_HDR_AH:
+		case VIRTCHNL2_PROTO_HDR_ESP:
+		case VIRTCHNL2_PROTO_HDR_IKE:
+		case VIRTCHNL2_PROTO_HDR_NATT_KEEP:
+		case VIRTCHNL2_PROTO_HDR_L2TPV2:
+		case VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL:
+		case VIRTCHNL2_PROTO_HDR_L2TPV3:
+		case VIRTCHNL2_PROTO_HDR_GTP:
+		case VIRTCHNL2_PROTO_HDR_GTP_EH:
+		case VIRTCHNL2_PROTO_HDR_GTPCV2:
+		case VIRTCHNL2_PROTO_HDR_GTPC_TEID:
+		case VIRTCHNL2_PROTO_HDR_GTPU:
+		case VIRTCHNL2_PROTO_HDR_GTPU_UL:
+		case VIRTCHNL2_PROTO_HDR_GTPU_DL:
+		case VIRTCHNL2_PROTO_HDR_ECPRI:
+		case VIRTCHNL2_PROTO_HDR_VRRP:
+		case VIRTCHNL2_PROTO_HDR_OSPF:
+		case VIRTCHNL2_PROTO_HDR_TUN:
+		case VIRTCHNL2_PROTO_HDR_NVGRE:
+		case VIRTCHNL2_PROTO_HDR_VXLAN:
+		case VIRTCHNL2_PROTO_HDR_VXLAN_GPE:
+		case VIRTCHNL2_PROTO_HDR_GENEVE:
+		case VIRTCHNL2_PROTO_HDR_NSH:
+		case VIRTCHNL2_PROTO_HDR_QUIC:
+		case VIRTCHNL2_PROTO_HDR_PFCP:
+		case VIRTCHNL2_PROTO_HDR_PFCP_NODE:
+		case VIRTCHNL2_PROTO_HDR_PFCP_SESSION:
+		case VIRTCHNL2_PROTO_HDR_RTP:
+		case VIRTCHNL2_PROTO_HDR_NO_PROTO:
+			break;
+		default:
+			break;
+		}
+	}
+}
+
 /**
  * idpf_send_get_rx_ptype_msg - Send virtchnl for ptype info
- * @vport: virtual port data structure
+ * @adapter: driver specific private structure
  *
  * Returns 0 on success, negative on failure.
  */
-int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
+static int idpf_send_get_rx_ptype_msg(struct idpf_adapter *adapter)
 {
 	struct virtchnl2_get_ptype_info *get_ptype_info __free(kfree) = NULL;
 	struct virtchnl2_get_ptype_info *ptype_info __free(kfree) = NULL;
-	struct libeth_rx_pt *ptype_lkup __free(kfree) = NULL;
-	int max_ptype, ptypes_recvd = 0, ptype_offset;
-	struct idpf_adapter *adapter = vport->adapter;
+	struct libeth_rx_pt *singleq_pt_lkup __free(kfree) = NULL;
+	struct libeth_rx_pt *splitq_pt_lkup __free(kfree) = NULL;
 	struct idpf_vc_xn_params xn_params = {};
+	int ptypes_recvd = 0, ptype_offset;
+	u32 max_ptype = IDPF_RX_MAX_PTYPE;
 	u16 next_ptype_id = 0;
 	ssize_t reply_sz;
-	bool is_splitq;
-	int i, j, k;
-
-	if (vport->rx_ptype_lkup)
-		return 0;
 
-	is_splitq = idpf_is_queue_model_split(vport->dflt_qv_rsrc.rxq_model);
-	if (is_splitq)
-		max_ptype = IDPF_RX_MAX_PTYPE;
-	else
-		max_ptype = IDPF_RX_MAX_BASE_PTYPE;
+	singleq_pt_lkup = kcalloc(IDPF_RX_MAX_BASE_PTYPE,
+				  sizeof(*singleq_pt_lkup), GFP_KERNEL);
+	if (!singleq_pt_lkup)
+		return -ENOMEM;
 
-	ptype_lkup = kcalloc(max_ptype, sizeof(*ptype_lkup), GFP_KERNEL);
-	if (!ptype_lkup)
+	splitq_pt_lkup = kcalloc(max_ptype, sizeof(*splitq_pt_lkup), GFP_KERNEL);
+	if (!splitq_pt_lkup)
 		return -ENOMEM;
 
 	get_ptype_info = kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
@@ -2556,154 +2663,59 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 
 		ptype_offset = IDPF_RX_PTYPE_HDR_SZ;
 
-		for (i = 0; i < le16_to_cpu(ptype_info->num_ptypes); i++) {
-			struct idpf_ptype_state pstate = { };
+		for (u16 i = 0; i < le16_to_cpu(ptype_info->num_ptypes); i++) {
+			struct libeth_rx_pt rx_pt = {};
 			struct virtchnl2_ptype *ptype;
-			u16 id;
+			u16 pt_10, pt_8;
 
 			ptype = (struct virtchnl2_ptype *)
 					((u8 *)ptype_info + ptype_offset);
 
+			pt_10 = le16_to_cpu(ptype->ptype_id_10);
+			pt_8 = ptype->ptype_id_8;
+
 			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
 			if (ptype_offset > IDPF_CTLQ_MAX_BUF_LEN)
 				return -EINVAL;
 
 			/* 0xFFFF indicates end of ptypes */
-			if (le16_to_cpu(ptype->ptype_id_10) ==
-							IDPF_INVALID_PTYPE_ID)
+			if (pt_10 == IDPF_INVALID_PTYPE_ID)
 				goto out;
 
-			if (is_splitq)
-				k = le16_to_cpu(ptype->ptype_id_10);
-			else
-				k = ptype->ptype_id_8;
-
-			for (j = 0; j < ptype->proto_id_count; j++) {
-				id = le16_to_cpu(ptype->proto_id[j]);
-				switch (id) {
-				case VIRTCHNL2_PROTO_HDR_GRE:
-					if (pstate.tunnel_state ==
-							IDPF_PTYPE_TUNNEL_IP) {
-						ptype_lkup[k].tunnel_type =
-						LIBETH_RX_PT_TUNNEL_IP_GRENAT;
-						pstate.tunnel_state |=
-						IDPF_PTYPE_TUNNEL_IP_GRENAT;
-					}
-					break;
-				case VIRTCHNL2_PROTO_HDR_MAC:
-					ptype_lkup[k].outer_ip =
-						LIBETH_RX_PT_OUTER_L2;
-					if (pstate.tunnel_state ==
-							IDPF_TUN_IP_GRE) {
-						ptype_lkup[k].tunnel_type =
-						LIBETH_RX_PT_TUNNEL_IP_GRENAT_MAC;
-						pstate.tunnel_state |=
-						IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC;
-					}
-					break;
-				case VIRTCHNL2_PROTO_HDR_IPV4:
-					idpf_fill_ptype_lookup(&ptype_lkup[k],
-							       &pstate, true,
-							       false);
-					break;
-				case VIRTCHNL2_PROTO_HDR_IPV6:
-					idpf_fill_ptype_lookup(&ptype_lkup[k],
-							       &pstate, false,
-							       false);
-					break;
-				case VIRTCHNL2_PROTO_HDR_IPV4_FRAG:
-					idpf_fill_ptype_lookup(&ptype_lkup[k],
-							       &pstate, true,
-							       true);
-					break;
-				case VIRTCHNL2_PROTO_HDR_IPV6_FRAG:
-					idpf_fill_ptype_lookup(&ptype_lkup[k],
-							       &pstate, false,
-							       true);
-					break;
-				case VIRTCHNL2_PROTO_HDR_UDP:
-					ptype_lkup[k].inner_prot =
-					LIBETH_RX_PT_INNER_UDP;
-					break;
-				case VIRTCHNL2_PROTO_HDR_TCP:
-					ptype_lkup[k].inner_prot =
-					LIBETH_RX_PT_INNER_TCP;
-					break;
-				case VIRTCHNL2_PROTO_HDR_SCTP:
-					ptype_lkup[k].inner_prot =
-					LIBETH_RX_PT_INNER_SCTP;
-					break;
-				case VIRTCHNL2_PROTO_HDR_ICMP:
-					ptype_lkup[k].inner_prot =
-					LIBETH_RX_PT_INNER_ICMP;
-					break;
-				case VIRTCHNL2_PROTO_HDR_PAY:
-					ptype_lkup[k].payload_layer =
-						LIBETH_RX_PT_PAYLOAD_L2;
-					break;
-				case VIRTCHNL2_PROTO_HDR_ICMPV6:
-				case VIRTCHNL2_PROTO_HDR_IPV6_EH:
-				case VIRTCHNL2_PROTO_HDR_PRE_MAC:
-				case VIRTCHNL2_PROTO_HDR_POST_MAC:
-				case VIRTCHNL2_PROTO_HDR_ETHERTYPE:
-				case VIRTCHNL2_PROTO_HDR_SVLAN:
-				case VIRTCHNL2_PROTO_HDR_CVLAN:
-				case VIRTCHNL2_PROTO_HDR_MPLS:
-				case VIRTCHNL2_PROTO_HDR_MMPLS:
-				case VIRTCHNL2_PROTO_HDR_PTP:
-				case VIRTCHNL2_PROTO_HDR_CTRL:
-				case VIRTCHNL2_PROTO_HDR_LLDP:
-				case VIRTCHNL2_PROTO_HDR_ARP:
-				case VIRTCHNL2_PROTO_HDR_ECP:
-				case VIRTCHNL2_PROTO_HDR_EAPOL:
-				case VIRTCHNL2_PROTO_HDR_PPPOD:
-				case VIRTCHNL2_PROTO_HDR_PPPOE:
-				case VIRTCHNL2_PROTO_HDR_IGMP:
-				case VIRTCHNL2_PROTO_HDR_AH:
-				case VIRTCHNL2_PROTO_HDR_ESP:
-				case VIRTCHNL2_PROTO_HDR_IKE:
-				case VIRTCHNL2_PROTO_HDR_NATT_KEEP:
-				case VIRTCHNL2_PROTO_HDR_L2TPV2:
-				case VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL:
-				case VIRTCHNL2_PROTO_HDR_L2TPV3:
-				case VIRTCHNL2_PROTO_HDR_GTP:
-				case VIRTCHNL2_PROTO_HDR_GTP_EH:
-				case VIRTCHNL2_PROTO_HDR_GTPCV2:
-				case VIRTCHNL2_PROTO_HDR_GTPC_TEID:
-				case VIRTCHNL2_PROTO_HDR_GTPU:
-				case VIRTCHNL2_PROTO_HDR_GTPU_UL:
-				case VIRTCHNL2_PROTO_HDR_GTPU_DL:
-				case VIRTCHNL2_PROTO_HDR_ECPRI:
-				case VIRTCHNL2_PROTO_HDR_VRRP:
-				case VIRTCHNL2_PROTO_HDR_OSPF:
-				case VIRTCHNL2_PROTO_HDR_TUN:
-				case VIRTCHNL2_PROTO_HDR_NVGRE:
-				case VIRTCHNL2_PROTO_HDR_VXLAN:
-				case VIRTCHNL2_PROTO_HDR_VXLAN_GPE:
-				case VIRTCHNL2_PROTO_HDR_GENEVE:
-				case VIRTCHNL2_PROTO_HDR_NSH:
-				case VIRTCHNL2_PROTO_HDR_QUIC:
-				case VIRTCHNL2_PROTO_HDR_PFCP:
-				case VIRTCHNL2_PROTO_HDR_PFCP_NODE:
-				case VIRTCHNL2_PROTO_HDR_PFCP_SESSION:
-				case VIRTCHNL2_PROTO_HDR_RTP:
-				case VIRTCHNL2_PROTO_HDR_NO_PROTO:
-					break;
-				default:
-					break;
-				}
-			}
+			idpf_parse_protocol_ids(ptype, &rx_pt);
+			idpf_finalize_ptype_lookup(&rx_pt);
 
-			idpf_finalize_ptype_lookup(&ptype_lkup[k]);
+			/* For a given protocol ID stack, the ptype value might
+			 * vary between ptype_id_10 and ptype_id_8. So store
+			 * them separately for splitq and singleq. Also skip
+			 * the repeated ptypes in case of singleq.
+			 */
+			splitq_pt_lkup[pt_10] = rx_pt;
+			if (!singleq_pt_lkup[pt_8].outer_ip)
+				singleq_pt_lkup[pt_8] = rx_pt;
 		}
 	}
 
 out:
-	vport->rx_ptype_lkup = no_free_ptr(ptype_lkup);
+	adapter->splitq_pt_lkup = no_free_ptr(splitq_pt_lkup);
+	adapter->singleq_pt_lkup = no_free_ptr(singleq_pt_lkup);
 
 	return 0;
 }
 
+/**
+ * idpf_rel_rx_pt_lkup - release RX ptype lookup table
+ * @adapter: adapter pointer to get the lookup table
+ */
+static void idpf_rel_rx_pt_lkup(struct idpf_adapter *adapter)
+{
+	kfree(adapter->splitq_pt_lkup);
+	adapter->splitq_pt_lkup = NULL;
+
+	kfree(adapter->singleq_pt_lkup);
+	adapter->singleq_pt_lkup = NULL;
+}
+
 /**
  * idpf_send_ena_dis_loopback_msg - Send virtchnl enable/disable loopback
  *				    message
@@ -2977,6 +2989,13 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		goto err_intr_req;
 	}
 
+	err = idpf_send_get_rx_ptype_msg(adapter);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "failed to get RX ptypes: %d\n",
+			err);
+		goto intr_rel;
+	}
+
 	idpf_init_avail_queues(adapter);
 
 	/* Skew the delay for init tasks for each function based on fn number
@@ -2989,6 +3008,8 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 
 	return 0;
 
+intr_rel:
+	idpf_intr_rel(adapter);
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
@@ -3040,6 +3061,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 
 	idpf_deinit_task(adapter);
+	idpf_rel_rx_pt_lkup(adapter);
 	idpf_intr_rel(adapter);
 
 	if (remove_in_prog)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 1158faeb5701..169b06800878 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -78,7 +78,6 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 			 struct idpf_vport_user_config_data *config_data,
 			 u32 vport_id);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
-int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
 int idpf_send_ena_dis_loopback_msg(struct idpf_adapter *adapter, u32 vport_id,
 				   bool loopback_ena);
 int idpf_send_get_stats_msg(struct idpf_netdev_priv *np,
-- 
2.43.0

