Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5288DBF9353
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 01:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2135D82DD9;
	Tue, 21 Oct 2025 23:20:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UGl0kvbJO8nM; Tue, 21 Oct 2025 23:20:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFAC482E5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761088820;
	bh=hmlI/2T8XhGcxJYmYrqcCI4UQ1atY+5mn+TvNA0IOSg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PBHvhw80XcmZTjcsL64UYtYuNE5rrcEmWE7gjQszud2HMMWdZRMyOoPwgmja5R5CP
	 P1QyJUrNAP2uNARgFGh1Pp7pofcHrcL7/IgJPm5z5POMoW70DYibZ1bSUK6WhjmP4N
	 4PnQTDblt8qLjQdodtmvbzhba2v420QndsB6T0IHVq03UlVKzQ5MUtlVQPOc8K6vSO
	 2ZSkQSSc9qsuzjf9yoqzgXgeTlCXUHQSks0WEblK1MyVsb2HW15jdkaKPmG26t1l7o
	 qy5ddlOgsHuuGFmvi0WDNePaXdtleYs+addSz/P3U+SdQHmP/AxHKEVT3wy5HaytZY
	 psu8ATXq87tWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFAC482E5F;
	Tue, 21 Oct 2025 23:20:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 11F5B277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0153A40D6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fIPyKip7If17 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 23:20:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 91BC440D91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91BC440D91
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91BC440D91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:13 +0000 (UTC)
X-CSE-ConnectionGUID: ur/SvhYjStWvBB4CG7MvSA==
X-CSE-MsgGUID: 8r6tddEzSimI3DDWqk2qkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74665333"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74665333"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 16:20:12 -0700
X-CSE-ConnectionGUID: bA50Mk85SoeG8drm4qjjKg==
X-CSE-MsgGUID: A1E0XbsRRteXPue6DWkbbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214352311"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa002.jf.intel.com with ESMTP; 21 Oct 2025 16:20:12 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue, 21 Oct 2025 16:30:55 -0700
Message-Id: <20251021233056.1320108-10-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251021233056.1320108-1-joshua.a.hay@intel.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761088814; x=1792624814;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jxhpdnj84T7DNpjv1eQy3/DSrrSyX2we+KbWHOKap70=;
 b=LjOrMGDugan6ZQaJYnm7iZQIs9V/5oompoKyk7aOc+52rxZivP7vvCj/
 DZnBdKXn/5LY9RsNsPJwtP+QS+uEc65/bBeFVbehjDchcrnR064PtvO97
 GzoV4OLWHj4EDnjjL/n+919Im9BXJ8GzeXooZjEbNl2Q1RPmhEY8sKnY/
 Wau97pkx1o6TV1cClgX5JOmY5RNOihXBbnkOvA4o+ntpVVqoBeBdNkJyw
 wEHZCZ0kn38rjWUZQaYQWnGMHJBQHaexigGkbkftH7Q/uMBpoeqZNSvkh
 HAEqfRltzgy1XVrWuNVvG2UwcGQeYLNDMDnF+alf0/WWY41BqtvdS4ETl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LjOrMGDu
Subject: [Intel-wired-lan] [PATCH iwl-next v9 09/10] idpf: avoid calling
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

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

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
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
---
v8: rebase on AF_XDP series
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   7 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   9 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   4 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 312 ++++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   1 -
 5 files changed, 175 insertions(+), 158 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index e08147b9ce51..30d35358e8b7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -370,7 +370,6 @@ struct idpf_q_vec_rsrc {
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
- * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @port_stats: per port csum, header split, and other offload stats
  * @default_vport: Use this vport if one isn't specified
  * @crc_enable: Enable CRC insertion offload
@@ -403,7 +402,6 @@ struct idpf_vport {
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 	u16 tx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 
-	struct libeth_rx_pt *rx_ptype_lkup;
 	struct idpf_port_stats port_stats;
 	bool default_vport;
 	bool crc_enable;
@@ -645,6 +643,8 @@ struct idpf_vc_xn_manager;
  * @vport_params_reqd: Vport params requested
  * @vport_params_recvd: Vport params received
  * @vport_ids: Array of device given vport identifiers
+ * @singleq_pt_lkup: Lookup table for singleq RX ptypes
+ * @splitq_pt_lkup: Lookup table for splitq RX ptypes
  * @vport_config: Vport config parameters
  * @max_vports: Maximum vports that can be allocated
  * @num_alloc_vports: Current number of vports allocated
@@ -703,6 +703,9 @@ struct idpf_adapter {
 	struct virtchnl2_create_vport **vport_params_recvd;
 	u32 *vport_ids;
 
+	struct libeth_rx_pt *singleq_pt_lkup;
+	struct libeth_rx_pt *splitq_pt_lkup;
+
 	struct idpf_vport_config **vport_config;
 	u16 max_vports;
 	u16 num_alloc_vports;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 75676fe8d708..d9086be69af0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -999,9 +999,6 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 idx = vport->idx;
 
-	kfree(vport->rx_ptype_lkup);
-	vport->rx_ptype_lkup = NULL;
-
 	if (test_and_clear_bit(IDPF_VPORT_REG_NETDEV,
 			       adapter->vport_config[idx]->flags)) {
 		unregister_netdev(vport->netdev);
@@ -1649,10 +1646,6 @@ void idpf_init_task(struct work_struct *work)
 	if (idpf_cfg_netdev(vport))
 		goto cfg_netdev_err;
 
-	err = idpf_send_get_rx_ptype_msg(vport);
-	if (err)
-		goto handle_err;
-
 	/* Once state is put into DOWN, driver is ready for dev_open */
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
@@ -1698,8 +1691,6 @@ void idpf_init_task(struct work_struct *work)
 
 	return;
 
-handle_err:
-	idpf_decfg_netdev(vport);
 cfg_netdev_err:
 	idpf_vport_rel(vport);
 	adapter->vports[index] = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index e5feb0a99dec..49f26abab8c0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1801,6 +1801,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 				struct idpf_q_vec_rsrc *rsrc,
 				u16 num_rxq)
 {
+	struct idpf_adapter *adapter = vport->adapter;
 	bool hs, rsc;
 	int err = 0;
 
@@ -1894,6 +1895,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 
 			if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
 				q = rx_qgrp->singleq.rxqs[j];
+				q->rx_ptype_lkup = adapter->singleq_pt_lkup;
 				goto setup_rxq;
 			}
 			q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
@@ -1905,10 +1907,10 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
 			idpf_queue_assign(RSC_EN, q, rsc);
+			q->rx_ptype_lkup = adapter->splitq_pt_lkup;
 
 setup_rxq:
 			q->desc_count = rsrc->rxq_desc_count;
-			q->rx_ptype_lkup = vport->rx_ptype_lkup;
 			q->bufq_sets = rx_qgrp->splitq.bufq_sets;
 			q->idx = (i * num_rxq) + j;
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 00c77427aede..4f9e9a0ebe53 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3049,36 +3049,143 @@ static void idpf_finalize_ptype_lookup(struct libeth_rx_pt *ptype)
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
 
-	if (vport->rx_ptype_lkup)
-		return 0;
-
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
@@ -3119,154 +3226,59 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 
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
-
-			idpf_finalize_ptype_lookup(&ptype_lkup[k]);
+			idpf_parse_protocol_ids(ptype, &rx_pt);
+			idpf_finalize_ptype_lookup(&rx_pt);
+
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
@@ -3564,6 +3576,13 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
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
 		pci_err(adapter->pdev, "PTP init failed, err=%pe\n",
@@ -3581,6 +3600,8 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 
 	return 0;
 
+intr_rel:
+	idpf_intr_rel(adapter);
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
@@ -3634,6 +3655,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 	idpf_ptp_release(adapter);
 	idpf_deinit_task(adapter);
 	idpf_idc_deinit_core_aux_device(adapter->cdev_info);
+	idpf_rel_rx_pt_lkup(adapter);
 	idpf_intr_rel(adapter);
 
 	if (remove_in_prog)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index e7b9dbd2284d..b269986bcc64 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -195,7 +195,6 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 			 struct idpf_vport_user_config_data *config_data,
 			 u32 vport_id);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
-int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
 int idpf_send_ena_dis_loopback_msg(struct idpf_adapter *adapter, u32 vport_id,
 				   bool loopback_ena);
 int idpf_send_get_stats_msg(struct idpf_netdev_priv *np,
-- 
2.39.2

