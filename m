Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5663FAB058D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 23:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F9F683CA6;
	Thu,  8 May 2025 21:50:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QV56-Id9Vxf8; Thu,  8 May 2025 21:50:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D9D783CB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746741058;
	bh=cq7mzSviWhNE+C8Ra3iqR0zi1cxVMSHjelu6KzcLhJA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WUEUmRnIgmvY853F6VZCDQL6nxERiITbUca92UAsdtE+mRc5lAzZWQWyCBoKHBZqp
	 m0O7LPNPiRugJwoT0DPsK7lqwc/w8YlEuhtcksKs6xfIssMHKjqMPnb9XyPjRB7qWP
	 47lMN4Ihr4kRG1N5UWp+XLHuj1mLbxy7oOnijt00h074fhwujRma///uP3VYTtVJuJ
	 la0nmRxITCJmF6J3stdSwN2hTcDWU/o+Owlz6pSa0t2fHH6/iJWiyRcf7fTqAu+peG
	 nhYaDYgHga/T8JV7d8hu7x5WjM+HvRxthnTYZBUXbs7H3ZyYmbImB4O0qcw0leiNin
	 DsxnqdrCiZIIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D9D783CB6;
	Thu,  8 May 2025 21:50:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1904C439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D94A5422E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nTmExfO6pNlJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 21:50:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C9BA1400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9BA1400BB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C9BA1400BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:51 +0000 (UTC)
X-CSE-ConnectionGUID: aPSEDpCpR8GG1qukcPkx+g==
X-CSE-MsgGUID: 1tWPpTutTUGaKAWif2ImTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47808330"
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="47808330"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 14:50:50 -0700
X-CSE-ConnectionGUID: S82MqrzQSGWWD6shZ4Ze5g==
X-CSE-MsgGUID: TmDx2aAFR4S840/fxX68VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="141534290"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa005.jf.intel.com with ESMTP; 08 May 2025 14:50:50 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Thu,  8 May 2025 14:50:12 -0700
Message-ID: <20250508215013.32668-9-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746741052; x=1778277052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YFKGK2X8faF92fKJFAZDZ0UkORfrazIYAX2DLS1CFZc=;
 b=fSs8p8Skntjg6Xsuw01H1tL6E4FSh6hr7Pl4PNt7AmmzzqC27ihIJyNx
 FJzCrCjFse6T4jScH0284blFU/XUsh5pdeW0hlU912dhGi097uWTMV/tI
 g9p3zm02NdkO7dMcfz9Y5tD5448FAJk9zdP/O83fXHqVmO78CAhu3P86b
 T+9NiQQ1FpmveaNWROmjPKUgOo6yxIKkBsIxaVBEUGm1E4gQKf4++fU2d
 zQcL2z2KvmsatMEco1DoyGPAhY5CZ1K6e37H2HnwLKanCeZrWF/QVCuTz
 9wZ79mFRS+14BfptSK8J+HgywNf/TguM5+wX32vN6SGPPCV62zHqfA1Ik
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fSs8p8Sk
Subject: [Intel-wired-lan] [PATCH iwl-next v4 8/9] idpf: avoid calling
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

RX ptypes received from device control plane doesn't depend on vport
info, but might vary based on the queue model. When the driver requests
for ptypes, control plane fills both ptype_id_10 (used for splitq) and
ptype_id_8 (used for singleq) fields of the virtchnl2_ptype response
structure. This allows to call get_rx_ptypes once at the adapter level
instead of each vport.

Parse and store the received ptypes of both splitq and singleq in a
separate lookup table. Respective lookup table is used based on the
queue model info. As part of the changes, pull the ptype protocol
parsing code into a separate function.

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
index e53a43d5c867..627010dac3aa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -340,7 +340,6 @@ struct idpf_q_vec_rsrc {
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
- * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @port_stats: per port csum, header split, and other offload stats
  * @default_vport: Use this vport if one isn't specified
  * @crc_enable: Enable CRC insertion offload
@@ -369,7 +368,6 @@ struct idpf_vport {
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 	u16 tx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 
-	struct libeth_rx_pt *rx_ptype_lkup;
 	struct idpf_port_stats port_stats;
 	bool default_vport;
 	bool crc_enable;
@@ -589,6 +587,8 @@ struct idpf_vc_xn_manager;
  * @vport_params_reqd: Vport params requested
  * @vport_params_recvd: Vport params received
  * @vport_ids: Array of device given vport identifiers
+ * @singleq_pt_lkup: Lookup table for singleq RX ptypes
+ * @splitq_pt_lkup: Lookup table for splitq RX ptypes
  * @vport_config: Vport config parameters
  * @max_vports: Maximum vports that can be allocated
  * @num_alloc_vports: Current number of vports allocated
@@ -645,6 +645,9 @@ struct idpf_adapter {
 	struct virtchnl2_create_vport **vport_params_recvd;
 	u32 *vport_ids;
 
+	struct libeth_rx_pt *singleq_pt_lkup;
+	struct libeth_rx_pt *splitq_pt_lkup;
+
 	struct idpf_vport_config **vport_config;
 	u16 max_vports;
 	u16 num_alloc_vports;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 6f295abdc6c1..7dabf5ddbf16 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -905,9 +905,6 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 idx = vport->idx;
 
-	kfree(vport->rx_ptype_lkup);
-	vport->rx_ptype_lkup = NULL;
-
 	if (test_and_clear_bit(IDPF_VPORT_REG_NETDEV,
 			       adapter->vport_config[idx]->flags)) {
 		unregister_netdev(vport->netdev);
@@ -1518,10 +1515,6 @@ void idpf_init_task(struct work_struct *work)
 	if (idpf_cfg_netdev(vport))
 		goto cfg_netdev_err;
 
-	err = idpf_send_get_rx_ptype_msg(vport);
-	if (err)
-		goto handle_err;
-
 	/* Once state is put into DOWN, driver is ready for dev_open */
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
@@ -1567,8 +1560,6 @@ void idpf_init_task(struct work_struct *work)
 
 	return;
 
-handle_err:
-	idpf_decfg_netdev(vport);
 cfg_netdev_err:
 	idpf_vport_rel(vport);
 	adapter->vports[index] = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index f6c263c82e97..26e8270d44f8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1458,6 +1458,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 				struct idpf_q_vec_rsrc *rsrc,
 				u16 num_rxq)
 {
+	struct idpf_adapter *adapter = vport->adapter;
 	int k, err = 0;
 	bool hs;
 
@@ -1548,6 +1549,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 
 			if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
 				q = rx_qgrp->singleq.rxqs[j];
+				q->rx_ptype_lkup = adapter->singleq_pt_lkup;
 				goto setup_rxq;
 			}
 			q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
@@ -1558,10 +1560,10 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
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
index ebf60ab7b2df..c2d4caa4408d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2493,36 +2493,143 @@ static void idpf_finalize_ptype_lookup(struct libeth_rx_pt *ptype)
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
@@ -2563,154 +2670,59 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 
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
@@ -2984,6 +2996,13 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		goto err_intr_req;
 	}
 
+	err = idpf_send_get_rx_ptype_msg(adapter);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "failed to get RX ptypes: %d\n",
+			err);
+		goto intr_rel;
+	}
+
 	err = idpf_ptp_init(adapter);
 	if (err)
 		pci_err(adapter->pdev, "PTP init failed, err=%pe\n", ERR_PTR(err));
@@ -3000,6 +3019,8 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 
 	return 0;
 
+intr_rel:
+	idpf_intr_rel(adapter);
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
@@ -3052,6 +3073,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	idpf_ptp_release(adapter);
 	idpf_deinit_task(adapter);
+	idpf_rel_rx_pt_lkup(adapter);
 	idpf_intr_rel(adapter);
 
 	if (remove_in_prog)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 9df90ba83309..f29536eed707 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -168,7 +168,6 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 			 struct idpf_vport_user_config_data *config_data,
 			 u32 vport_id);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
-int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
 int idpf_send_ena_dis_loopback_msg(struct idpf_adapter *adapter, u32 vport_id,
 				   bool loopback_ena);
 int idpf_send_get_stats_msg(struct idpf_netdev_priv *np,
-- 
2.43.0

