Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 230BAB21183
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D986F415D6;
	Mon, 11 Aug 2025 16:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j4PpW3q9INmB; Mon, 11 Aug 2025 16:20:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D930D414BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754929205;
	bh=ajxm1q72XDojhzeF+9O4kOwWItKMeokztkDpR1P8iD0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j/KXckfl3l0CmmcMjEu414n4nyihz3fYA85AlFtehbzISIV565A/jPTDBqKYczZBU
	 S37Q6f2XPbfluM01VqEIfDtXBUSZPsHVwVIaEs2U5ENJaBiHfwrgXlh67OVhVfQcoV
	 gMeCZmAED6iFvifgBZmXIqj79ffp+x32ihNWWXfv211JMgVocd32zXBTxw4W5dowom
	 XIZJJejtvYBfHN/LaRsC6F4hh0KuT4G52t1KSCwwYtQu037OsTWI+B0YTknv0wWEuI
	 vdtJJhmtOFgDii8T309U4widgVd9shm2X42AQTScbmgBNDfN1w8wxVfYBVepasSXWt
	 WzzrF5zppxPIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D930D414BA;
	Mon, 11 Aug 2025 16:20:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 31010154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2319461068
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NPBCKricf0j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:20:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3A4CA61442
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A4CA61442
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A4CA61442
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:03 +0000 (UTC)
X-CSE-ConnectionGUID: L424S8AeT+SQeXOUQU1dgA==
X-CSE-MsgGUID: pHYUH4v8RBqK+j8ThHK2yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56899572"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56899572"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 09:12:58 -0700
X-CSE-ConnectionGUID: g/ORk++fQW+ungA0WjHuqA==
X-CSE-MsgGUID: xLcbOmokRN6x/t46kKl+gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165163177"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa006.jf.intel.com with ESMTP; 11 Aug 2025 09:12:53 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 11 Aug 2025 18:10:34 +0200
Message-ID: <20250811161044.32329-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250811161044.32329-1-aleksander.lobakin@intel.com>
References: <20250811161044.32329-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754929203; x=1786465203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CC9d7WC4+Te5ZfQXopBgOyRl9Lm7CEFBOkkDDZhPbEY=;
 b=TYQfp7EIcH634YX6EvB1cTHaPl/TOjCcxF3DmNbFYtPFCPWCo/MvOeww
 AadDyuVcrUdXGj53HmiI0d5V33ybevf7Fy+J7XzoyKSRKJgQke6UmBa7e
 UoXKoLP6uVijP73WWjDhKuDS/tuQxOFSdkoyGS/7mtT5yWWU4poWlnwxW
 22uMNHm4JxklKiFf4bbM7HYDAk64ERFY3jABNVC6OHSN79MnjVzRSARCe
 nmZnTg3pfBA9Vi457+t443pb8/7xu94T33dpVt3NwxmSV4U0JKXxp0PhI
 RraR6FboTJ3+DGIahf4LTJcfGtGN3XnXBtj1M/FBnpKJMf3nYRnblBJNC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TYQfp7EI
Subject: [Intel-wired-lan] [PATCH iwl-next v4 03/13] idpf: use a saner limit
 for default number of queues to allocate
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

Currently, the maximum number of queues available for one vport is 16.
This is hardcoded, but then the function calculating the optimal number
of queues takes min(16, num_online_cpus()).
In order to be able to allocate more queues, which will be then used for
XDP, stop hardcoding 16 and rely on what the device gives us[*]. Instead
of num_online_cpus(), which is considered suboptimal since at least 2013,
use netif_get_num_default_rss_queues() to still have free queues in the
pool.

[*] With the note:

Currently, idpf always allocates `IDPF_MAX_BUFQS_PER_RXQ_GRP` (== 2)
buffer queues for each Rx queue and one completion queue for each Tx for
best performance. But there was no check whether such number is availabe,
IOW the assumption was not backed by any "harmonizing" / actual checks.
Fix this while at it.

nr_cpu_ids number of Tx queues are needed only for lockless XDP sending,
the regular stack doesn't benefit from that anyhow.
On a 128-thread Xeon, this now gives me 32 regular Tx queues and leaves
224 free for XDP (128 of which will handle XDP_TX, .ndo_xdp_xmit(), and
XSk xmit when enabled).

Note 2:

Unfortunately, some CP/FW versions are not able to
reconfigure/enable/disable large amount of queues within the minimum
timeout (2 seconds). For now, fall back to the default timeout for
every operation until this is resolved.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  1 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  8 +--
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 62 +++++++++++--------
 3 files changed, 38 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 86f30f0db07a..d714ff0eaca0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -4,7 +4,6 @@
 #ifndef _IDPF_VIRTCHNL_H_
 #define _IDPF_VIRTCHNL_H_
 
-#define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
 #define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
 #define IDPF_VC_XN_SALT_M		GENMASK(15, 8)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 72459fc1af79..26dde653587d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1155,13 +1155,7 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 		num_req_tx_qs = vport_config->user_config.num_req_tx_qs;
 		num_req_rx_qs = vport_config->user_config.num_req_rx_qs;
 	} else {
-		int num_cpus;
-
-		/* Restrict num of queues to cpus online as a default
-		 * configuration to give best performance. User can always
-		 * override to a max number of queues via ethtool.
-		 */
-		num_cpus = num_online_cpus();
+		u32 num_cpus = netif_get_num_default_rss_queues();
 
 		dflt_splitq_txq_grps = min_t(int, max_q->max_txq, num_cpus);
 		dflt_singleq_txqs = min_t(int, max_q->max_txq, num_cpus);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index e60438633cc4..6164094c6ae5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1061,21 +1061,35 @@ int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 	struct idpf_avail_queue_info *avail_queues = &adapter->avail_queues;
 	struct virtchnl2_get_capabilities *caps = &adapter->caps;
 	u16 default_vports = idpf_get_default_vports(adapter);
-	int max_rx_q, max_tx_q;
+	u32 max_rx_q, max_tx_q, max_buf_q, max_compl_q;
 
 	mutex_lock(&adapter->queue_lock);
 
+	/* Caps are device-wide. Give each vport an equal piece */
 	max_rx_q = le16_to_cpu(caps->max_rx_q) / default_vports;
 	max_tx_q = le16_to_cpu(caps->max_tx_q) / default_vports;
-	if (adapter->num_alloc_vports < default_vports) {
-		max_q->max_rxq = min_t(u16, max_rx_q, IDPF_MAX_Q);
-		max_q->max_txq = min_t(u16, max_tx_q, IDPF_MAX_Q);
-	} else {
-		max_q->max_rxq = IDPF_MIN_Q;
-		max_q->max_txq = IDPF_MIN_Q;
+	max_buf_q = le16_to_cpu(caps->max_rx_bufq) / default_vports;
+	max_compl_q = le16_to_cpu(caps->max_tx_complq) / default_vports;
+
+	if (adapter->num_alloc_vports >= default_vports) {
+		max_rx_q = IDPF_MIN_Q;
+		max_tx_q = IDPF_MIN_Q;
 	}
-	max_q->max_bufq = max_q->max_rxq * IDPF_MAX_BUFQS_PER_RXQ_GRP;
-	max_q->max_complq = max_q->max_txq;
+
+	/*
+	 * Harmonize the numbers. The current implementation always creates
+	 * `IDPF_MAX_BUFQS_PER_RXQ_GRP` buffer queues for each Rx queue and
+	 * one completion queue for each Tx queue for best performance.
+	 * If less buffer or completion queues is available, cap the number
+	 * of the corresponding Rx/Tx queues.
+	 */
+	max_rx_q = min(max_rx_q, max_buf_q / IDPF_MAX_BUFQS_PER_RXQ_GRP);
+	max_tx_q = min(max_tx_q, max_compl_q);
+
+	max_q->max_rxq = max_rx_q;
+	max_q->max_txq = max_tx_q;
+	max_q->max_bufq = max_rx_q * IDPF_MAX_BUFQS_PER_RXQ_GRP;
+	max_q->max_complq = max_tx_q;
 
 	if (avail_queues->avail_rxq < max_q->max_rxq ||
 	    avail_queues->avail_txq < max_q->max_txq ||
@@ -1506,7 +1520,7 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
 	xn_params.vc_op = VIRTCHNL2_OP_DESTROY_VPORT;
 	xn_params.send_buf.iov_base = &v_id;
 	xn_params.send_buf.iov_len = sizeof(v_id);
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
@@ -1554,7 +1568,7 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
 	xn_params.vc_op = VIRTCHNL2_OP_DISABLE_VPORT;
 	xn_params.send_buf.iov_base = &v_id;
 	xn_params.send_buf.iov_len = sizeof(v_id);
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
@@ -1845,7 +1859,9 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
 	struct virtchnl2_queue_chunk *qc __free(kfree) = NULL;
 	u32 num_msgs, num_chunks, num_txq, num_rxq, num_q;
-	struct idpf_vc_xn_params xn_params = {};
+	struct idpf_vc_xn_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
 	struct virtchnl2_queue_chunks *qcs;
 	u32 config_sz, chunk_sz, buf_sz;
 	ssize_t reply_sz;
@@ -1946,13 +1962,10 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 	if (!eq)
 		return -ENOMEM;
 
-	if (ena) {
+	if (ena)
 		xn_params.vc_op = VIRTCHNL2_OP_ENABLE_QUEUES;
-		xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	} else {
+	else
 		xn_params.vc_op = VIRTCHNL2_OP_DISABLE_QUEUES;
-		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	}
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(eq, 0, buf_sz);
@@ -1990,7 +2003,9 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 {
 	struct virtchnl2_queue_vector_maps *vqvm __free(kfree) = NULL;
 	struct virtchnl2_queue_vector *vqv __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
+	struct idpf_vc_xn_params xn_params = {
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
 	u32 config_sz, chunk_sz, buf_sz;
 	u32 num_msgs, num_chunks, num_q;
 	ssize_t reply_sz;
@@ -2074,13 +2089,10 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 	if (!vqvm)
 		return -ENOMEM;
 
-	if (map) {
+	if (map)
 		xn_params.vc_op = VIRTCHNL2_OP_MAP_QUEUE_VECTOR;
-		xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	} else {
+	else
 		xn_params.vc_op = VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR;
-		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	}
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(vqvm, 0, buf_sz);
@@ -2207,7 +2219,7 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 					 num_chunks);
 
 	xn_params.vc_op = VIRTCHNL2_OP_DEL_QUEUES;
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	xn_params.send_buf.iov_base = eq;
 	xn_params.send_buf.iov_len = buf_size;
 	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
@@ -2371,7 +2383,7 @@ int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
 	xn_params.vc_op = VIRTCHNL2_OP_DEALLOC_VECTORS;
 	xn_params.send_buf.iov_base = vcs;
 	xn_params.send_buf.iov_len = buf_size;
-	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
-- 
2.50.1

