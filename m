Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9799B79DA21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 22:34:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A63541BAA;
	Tue, 12 Sep 2023 20:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A63541BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694550870;
	bh=oiu0KHEJVjR+Vep6R+7yhurveYdALaHDpJE+La+asEE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=73obQ49LR7ihe1ZnlZycmVsRjmUY4KnXZNHCrM1Cyt8aTk5Txzr676/f9hwBPr+F8
	 7u9YQgdaU+jww3oajN+5ZbrqNha9NHoTQ0o+OiakiIaMmj/dMbD7VWJZhTgVSY6+lk
	 rcF8Q1qsIoxRkFqQleExXfmBGy7zorHvG87m+iGsSpdu7cvVVQse+d+0y6pnzkufTu
	 AjhbdZMwWf78b2qbzfRRNlRlDeIZThC79Is8Twwa0+585xtGJ2IRQNstW3QAVCol8z
	 enMaHZ76ErzXF44g0ito5ES53GalYZI29R/S+Wo/dIFyHrRVgFuP1GByETQUZLPld0
	 8pBbLUPIIFdSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x52-Ht-Juca9; Tue, 12 Sep 2023 20:34:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 863E740554;
	Tue, 12 Sep 2023 20:34:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 863E740554
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D07F1BF964
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB2848088F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB2848088F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PhkSo0ADM3HB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 20:33:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9CEAF821B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CEAF821B4
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368753728"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="368753728"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:33:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="778942095"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="778942095"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga001.jf.intel.com with ESMTP; 12 Sep 2023 13:33:18 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 13:31:42 -0700
Message-Id: <20230912203149.1728261-9-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
References: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694550807; x=1726086807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U6Sv+oJz/0LpB47r2oXiY0eQnjdDXpmQWiTk8w4wki8=;
 b=mupcCajXbdu2VK/nBATqCDATQCFeJs0ue/qQsXjT2EjUO/XYjlp0A/O0
 6aSyaxGGB+kfg5pa4gD2MJzvJKB/rdzO/NKHBnOH8uayeqLk44wTBGFha
 1UavPymnepV/92I7wevENfQOTC6xvT40ZgV0835X5kyNjeRDBEF8Hx4Up
 5reRHwGiMO5RBA9Rby2lfWdJOdQqPfyZNujxmw5j95Ld3wojyTz2xjQ1j
 /E6Sga4oxYKnK0/Jb2jzY45+su/ghIgn+cQfAbKJlBu5Jea3jT6cJ9vwt
 9MJ+pEKdciY6dWOz1vpL8MHewdWk+hTP0IorBLplDxP2sTJPojgXOkj8L
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mupcCajX
Subject: [Intel-wired-lan] [PATCH iwl-next v11 08/15] idpf: configure
 resources for RX queues
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
Cc: willemb@google.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>

Similar to the TX, RX also supports both single and split queue models.
In single queue model, the same descriptor queue is used by SW to post
buffer descriptors to HW and by HW to post completed descriptors
to SW. In split queue model, "RX buffer queues" are used to pass
descriptor buffers from SW to HW whereas "RX queues" are used to
post the descriptor completions i.e. descriptors that point to
completed buffers, from HW to SW. "RX queue group" is a set of
RX queues grouped together and will be serviced by a "RX buffer queue
group". IDPF supports 2 buffer queues i.e. large buffer (4KB) queue
and small buffer (2KB) queue per buffer queue group. HW uses large
buffers for 'hardware gro' feature and also if the packet size is
more than 2KB, if not 2KB buffers are used.

Add all the resources required for the RX queues initialization.
Allocate memory for the RX queue and RX buffer queue groups. Initialize
the software maintained refill queues for buffer management algorithm.

Same like the TX queues, initialize the queue parameters for the RX
queues and send the config RX queue virtchnl message to the device
Control Plane.

Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Alice Michael <alice.michael@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/Makefile      |   1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  48 +-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  52 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  42 +-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  57 ++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 821 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 203 ++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 493 ++++++++++-
 8 files changed, 1705 insertions(+), 12 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c

diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index f70ffef9b11c..ee86ba2fe74e 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -11,6 +11,7 @@ idpf-y := \
 	idpf_dev.o		\
 	idpf_lib.o		\
 	idpf_main.o		\
+	idpf_singleq_txrx.o	\
 	idpf_txrx.o		\
 	idpf_virtchnl.o 	\
 	idpf_vf_dev.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index d98a2ae0903c..39263d8a096f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -208,10 +208,20 @@ struct idpf_dev_ops {
 	STATE(IDPF_VC_DESTROY_VPORT_ERR)	\
 	STATE(IDPF_VC_CONFIG_TXQ)		\
 	STATE(IDPF_VC_CONFIG_TXQ_ERR)		\
+	STATE(IDPF_VC_CONFIG_RXQ)		\
+	STATE(IDPF_VC_CONFIG_RXQ_ERR)		\
 	STATE(IDPF_VC_ALLOC_VECTORS)		\
 	STATE(IDPF_VC_ALLOC_VECTORS_ERR)	\
 	STATE(IDPF_VC_DEALLOC_VECTORS)		\
 	STATE(IDPF_VC_DEALLOC_VECTORS_ERR)	\
+	STATE(IDPF_VC_GET_RSS_LUT)		\
+	STATE(IDPF_VC_GET_RSS_LUT_ERR)		\
+	STATE(IDPF_VC_SET_RSS_LUT)		\
+	STATE(IDPF_VC_SET_RSS_LUT_ERR)		\
+	STATE(IDPF_VC_GET_RSS_KEY)		\
+	STATE(IDPF_VC_GET_RSS_KEY_ERR)		\
+	STATE(IDPF_VC_SET_RSS_KEY)		\
+	STATE(IDPF_VC_SET_RSS_KEY_ERR)		\
 	STATE(IDPF_VC_ADD_MAC_ADDR)		\
 	STATE(IDPF_VC_ADD_MAC_ADDR_ERR)		\
 	STATE(IDPF_VC_DEL_MAC_ADDR)		\
@@ -248,6 +258,8 @@ extern const char * const idpf_vport_vc_state_str[];
  * @bufq_desc_count: Buffer queue descriptor count
  * @bufq_size: Size of buffers in ring (e.g. 2K, 4K, etc)
  * @num_rxq_grp: Number of RX queues in a group
+ * @rxq_grps: Total number of RX groups. Number of groups * number of RX per
+ *	      group will yield total number of RX queues.
  * @rxq_model: Splitq queue or single queue queuing model
  * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @adapter: back pointer to associated adapter
@@ -284,6 +296,7 @@ struct idpf_vport {
 	u32 bufq_desc_count[IDPF_MAX_BUFQS_PER_RXQ_GRP];
 	u32 bufq_size[IDPF_MAX_BUFQS_PER_RXQ_GRP];
 	u16 num_rxq_grp;
+	struct idpf_rxq_group *rxq_grps;
 	u32 rxq_model;
 	struct idpf_rx_ptype_decoded rx_ptype_lkup[IDPF_RX_MAX_PTYPE];
 
@@ -307,9 +320,26 @@ struct idpf_vport {
 	struct mutex vc_buf_lock;
 };
 
+/**
+ * struct idpf_rss_data - Associated RSS data
+ * @rss_key_size: Size of RSS hash key
+ * @rss_key: RSS hash key
+ * @rss_lut_size: Size of RSS lookup table
+ * @rss_lut: RSS lookup table
+ * @cached_lut: Used to restore previously init RSS lut
+ */
+struct idpf_rss_data {
+	u16 rss_key_size;
+	u8 *rss_key;
+	u16 rss_lut_size;
+	u32 *rss_lut;
+	u32 *cached_lut;
+};
+
 /**
  * struct idpf_vport_user_config_data - User defined configuration values for
  *					each vport.
+ * @rss_data: See struct idpf_rss_data
  * @num_req_tx_qs: Number of user requested TX queues through ethtool
  * @num_req_rx_qs: Number of user requested RX queues through ethtool
  * @num_req_txq_desc: Number of user requested TX queue descriptors through
@@ -321,6 +351,7 @@ struct idpf_vport {
  * Used to restore configuration after a reset as the vport will get wiped.
  */
 struct idpf_vport_user_config_data {
+	struct idpf_rss_data rss_data;
 	u16 num_req_tx_qs;
 	u16 num_req_rx_qs;
 	u32 num_req_txq_desc;
@@ -667,6 +698,19 @@ static inline struct idpf_vport *idpf_netdev_to_vport(struct net_device *netdev)
 	return np->vport;
 }
 
+/**
+ * idpf_is_feature_ena - Determine if a particular feature is enabled
+ * @vport: Vport to check
+ * @feature: Netdev flag to check
+ *
+ * Returns true or false if a particular feature is enabled.
+ */
+static inline bool idpf_is_feature_ena(const struct idpf_vport *vport,
+				       netdev_features_t feature)
+{
+	return vport->netdev->features & feature;
+}
+
 /**
  * idpf_vport_ctrl_lock - Acquire the vport control lock
  * @netdev: Network interface device structure
@@ -706,6 +750,8 @@ int idpf_intr_req(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
 int idpf_send_destroy_vport_msg(struct idpf_vport *vport);
 int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
+int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
+int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
 int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter);
 int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors);
 void idpf_deinit_task(struct idpf_adapter *adapter);
@@ -727,7 +773,7 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
 int idpf_vport_queue_ids_init(struct idpf_vport *vport);
 int idpf_queue_reg_init(struct idpf_vport *vport);
-int idpf_send_config_tx_queues_msg(struct idpf_vport *vport);
+int idpf_send_config_queues_msg(struct idpf_vport *vport);
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
index 314f3afb2181..aac1e7c1a301 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -4,6 +4,58 @@
 #ifndef _IDPF_LAN_TXRX_H_
 #define _IDPF_LAN_TXRX_H_
 
+enum idpf_rss_hash {
+	IDPF_HASH_INVALID			= 0,
+	/* Values 1 - 28 are reserved for future use */
+	IDPF_HASH_NONF_UNICAST_IPV4_UDP		= 29,
+	IDPF_HASH_NONF_MULTICAST_IPV4_UDP,
+	IDPF_HASH_NONF_IPV4_UDP,
+	IDPF_HASH_NONF_IPV4_TCP_SYN_NO_ACK,
+	IDPF_HASH_NONF_IPV4_TCP,
+	IDPF_HASH_NONF_IPV4_SCTP,
+	IDPF_HASH_NONF_IPV4_OTHER,
+	IDPF_HASH_FRAG_IPV4,
+	/* Values 37-38 are reserved */
+	IDPF_HASH_NONF_UNICAST_IPV6_UDP		= 39,
+	IDPF_HASH_NONF_MULTICAST_IPV6_UDP,
+	IDPF_HASH_NONF_IPV6_UDP,
+	IDPF_HASH_NONF_IPV6_TCP_SYN_NO_ACK,
+	IDPF_HASH_NONF_IPV6_TCP,
+	IDPF_HASH_NONF_IPV6_SCTP,
+	IDPF_HASH_NONF_IPV6_OTHER,
+	IDPF_HASH_FRAG_IPV6,
+	IDPF_HASH_NONF_RSVD47,
+	IDPF_HASH_NONF_FCOE_OX,
+	IDPF_HASH_NONF_FCOE_RX,
+	IDPF_HASH_NONF_FCOE_OTHER,
+	/* Values 51-62 are reserved */
+	IDPF_HASH_L2_PAYLOAD			= 63,
+
+	IDPF_HASH_MAX
+};
+
+/* Supported RSS offloads */
+#define IDPF_DEFAULT_RSS_HASH			\
+	(BIT_ULL(IDPF_HASH_NONF_IPV4_UDP) |	\
+	BIT_ULL(IDPF_HASH_NONF_IPV4_SCTP) |	\
+	BIT_ULL(IDPF_HASH_NONF_IPV4_TCP) |	\
+	BIT_ULL(IDPF_HASH_NONF_IPV4_OTHER) |	\
+	BIT_ULL(IDPF_HASH_FRAG_IPV4) |		\
+	BIT_ULL(IDPF_HASH_NONF_IPV6_UDP) |	\
+	BIT_ULL(IDPF_HASH_NONF_IPV6_TCP) |	\
+	BIT_ULL(IDPF_HASH_NONF_IPV6_SCTP) |	\
+	BIT_ULL(IDPF_HASH_NONF_IPV6_OTHER) |	\
+	BIT_ULL(IDPF_HASH_FRAG_IPV6) |		\
+	BIT_ULL(IDPF_HASH_L2_PAYLOAD))
+
+#define IDPF_DEFAULT_RSS_HASH_EXPANDED (IDPF_DEFAULT_RSS_HASH | \
+	BIT_ULL(IDPF_HASH_NONF_IPV4_TCP_SYN_NO_ACK) |		\
+	BIT_ULL(IDPF_HASH_NONF_UNICAST_IPV4_UDP) |		\
+	BIT_ULL(IDPF_HASH_NONF_MULTICAST_IPV4_UDP) |		\
+	BIT_ULL(IDPF_HASH_NONF_IPV6_TCP_SYN_NO_ACK) |		\
+	BIT_ULL(IDPF_HASH_NONF_UNICAST_IPV6_UDP) |		\
+	BIT_ULL(IDPF_HASH_NONF_MULTICAST_IPV6_UDP))
+
 /* Transmit descriptors  */
 /* splitq tx buf, singleq tx buf and singleq compl desc */
 struct idpf_base_tx_desc {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index bcefce354732..249818676704 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -668,11 +668,16 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
+	struct idpf_rss_data *rss_data;
 	struct idpf_vport_max_q max_q;
 	u16 idx = vport->idx;
 	int i;
 
 	vport_config = adapter->vport_config[vport->idx];
+	idpf_deinit_rss(vport);
+	rss_data = &vport_config->user_config.rss_data;
+	kfree(rss_data->rss_key);
+	rss_data->rss_key = NULL;
 
 	idpf_send_destroy_vport_msg(vport);
 
@@ -743,6 +748,7 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 					   struct idpf_vport_max_q *max_q)
 {
+	struct idpf_rss_data *rss_data;
 	u16 idx = adapter->next_vport;
 	struct idpf_vport *vport;
 
@@ -773,6 +779,21 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 
 	idpf_vport_init(vport, max_q);
 
+	/* This alloc is done separate from the LUT because it's not strictly
+	 * dependent on how many queues we have. If we change number of queues
+	 * and soft reset we'll need a new LUT but the key can remain the same
+	 * for as long as the vport exists.
+	 */
+	rss_data = &adapter->vport_config[idx]->user_config.rss_data;
+	rss_data->rss_key = kzalloc(rss_data->rss_key_size, GFP_KERNEL);
+	if (!rss_data->rss_key) {
+		kfree(vport);
+
+		return NULL;
+	}
+	/* Initialize default rss key */
+	netdev_rss_key_fill((void *)rss_data->rss_key, rss_data->rss_key_size);
+
 	/* fill vport slot in the adapter struct */
 	adapter->vports[idx] = vport;
 	adapter->vport_ids[idx] = idpf_get_vport_id(vport);
@@ -837,6 +858,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
 	int err;
 
 	if (np->state != __IDPF_VPORT_DOWN)
@@ -865,6 +887,13 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 		goto intr_rel;
 	}
 
+	err = idpf_rx_bufs_init_all(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to initialize RX buffers for vport %u: %d\n",
+			vport->vport_id, err);
+		goto intr_rel;
+	}
+
 	err = idpf_queue_reg_init(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue registers for vport %u: %d\n",
@@ -872,13 +901,24 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 		goto intr_rel;
 	}
 
-	err = idpf_send_config_tx_queues_msg(vport);
+	err = idpf_send_config_queues_msg(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to configure queues for vport %u, %d\n",
 			vport->vport_id, err);
 		goto intr_rel;
 	}
 
+	vport_config = adapter->vport_config[vport->idx];
+	if (vport_config->user_config.rss_data.rss_lut)
+		err = idpf_config_rss(vport);
+	else
+		err = idpf_init_rss(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to initialize RSS for vport %u: %d\n",
+			vport->vport_id, err);
+		goto intr_rel;
+	}
+
 	return 0;
 
 intr_rel:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
new file mode 100644
index 000000000000..138ceb31f556
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+
+/**
+ * idpf_rx_singleq_buf_hw_alloc_all - Replace used receive buffers
+ * @rx_q: queue for which the hw buffers are allocated
+ * @cleaned_count: number of buffers to replace
+ *
+ * Returns false if all allocations were successful, true if any fail
+ */
+bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
+				      u16 cleaned_count)
+{
+	struct virtchnl2_singleq_rx_buf_desc *desc;
+	u16 nta = rx_q->next_to_alloc;
+	struct idpf_rx_buf *buf;
+
+	if (!cleaned_count)
+		return false;
+
+	desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, nta);
+	buf = &rx_q->rx_buf.buf[nta];
+
+	do {
+		dma_addr_t addr;
+
+		addr = idpf_alloc_page(rx_q->pp, buf, rx_q->rx_buf_size);
+		if (unlikely(addr == DMA_MAPPING_ERROR))
+			break;
+
+		/* Refresh the desc even if buffer_addrs didn't change
+		 * because each write-back erases this info.
+		 */
+		desc->pkt_addr = cpu_to_le64(addr);
+		desc->hdr_addr = 0;
+		desc++;
+
+		buf++;
+		nta++;
+		if (unlikely(nta == rx_q->desc_count)) {
+			desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, 0);
+			buf = rx_q->rx_buf.buf;
+			nta = 0;
+		}
+
+		cleaned_count--;
+	} while (cleaned_count);
+
+	if (rx_q->next_to_alloc != nta) {
+		idpf_rx_buf_hw_update(rx_q, nta);
+		rx_q->next_to_alloc = nta;
+	}
+
+	return !!cleaned_count;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6e2b34cd9a9f..617ff137ae1f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -258,6 +258,456 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_rx_page_rel - Release an rx buffer page
+ * @rxq: the queue that owns the buffer
+ * @rx_buf: the buffer to free
+ */
+static void idpf_rx_page_rel(struct idpf_queue *rxq, struct idpf_rx_buf *rx_buf)
+{
+	if (unlikely(!rx_buf->page))
+		return;
+
+	page_pool_put_full_page(rxq->pp, rx_buf->page, false);
+
+	rx_buf->page = NULL;
+	rx_buf->page_offset = 0;
+}
+
+/**
+ * idpf_rx_hdr_buf_rel_all - Release header buffer memory
+ * @rxq: queue to use
+ */
+static void idpf_rx_hdr_buf_rel_all(struct idpf_queue *rxq)
+{
+	struct idpf_adapter *adapter = rxq->vport->adapter;
+
+	dma_free_coherent(&adapter->pdev->dev,
+			  rxq->desc_count * IDPF_HDR_BUF_SIZE,
+			  rxq->rx_buf.hdr_buf_va,
+			  rxq->rx_buf.hdr_buf_pa);
+	rxq->rx_buf.hdr_buf_va = NULL;
+}
+
+/**
+ * idpf_rx_buf_rel_all - Free all Rx buffer resources for a queue
+ * @rxq: queue to be cleaned
+ */
+static void idpf_rx_buf_rel_all(struct idpf_queue *rxq)
+{
+	u16 i;
+
+	/* queue already cleared, nothing to do */
+	if (!rxq->rx_buf.buf)
+		return;
+
+	/* Free all the bufs allocated and given to hw on Rx queue */
+	for (i = 0; i < rxq->desc_count; i++)
+		idpf_rx_page_rel(rxq, &rxq->rx_buf.buf[i]);
+
+	if (rxq->rx_hsplit_en)
+		idpf_rx_hdr_buf_rel_all(rxq);
+
+	page_pool_destroy(rxq->pp);
+	rxq->pp = NULL;
+
+	kfree(rxq->rx_buf.buf);
+	rxq->rx_buf.buf = NULL;
+}
+
+/**
+ * idpf_rx_desc_rel - Free a specific Rx q resources
+ * @rxq: queue to clean the resources from
+ * @bufq: buffer q or completion q
+ * @q_model: single or split q model
+ *
+ * Free a specific rx queue resources
+ */
+static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
+{
+	if (!rxq)
+		return;
+
+	if (!bufq && idpf_is_queue_model_split(q_model) && rxq->skb) {
+		dev_kfree_skb_any(rxq->skb);
+		rxq->skb = NULL;
+	}
+
+	if (bufq || !idpf_is_queue_model_split(q_model))
+		idpf_rx_buf_rel_all(rxq);
+
+	rxq->next_to_alloc = 0;
+	rxq->next_to_clean = 0;
+	rxq->next_to_use = 0;
+	if (!rxq->desc_ring)
+		return;
+
+	dmam_free_coherent(rxq->dev, rxq->size, rxq->desc_ring, rxq->dma);
+	rxq->desc_ring = NULL;
+}
+
+/**
+ * idpf_rx_desc_rel_all - Free Rx Resources for All Queues
+ * @vport: virtual port structure
+ *
+ * Free all rx queues resources
+ */
+static void idpf_rx_desc_rel_all(struct idpf_vport *vport)
+{
+	struct idpf_rxq_group *rx_qgrp;
+	u16 num_rxq;
+	int i, j;
+
+	if (!vport->rxq_grps)
+		return;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		rx_qgrp = &vport->rxq_grps[i];
+
+		if (!idpf_is_queue_model_split(vport->rxq_model)) {
+			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
+				idpf_rx_desc_rel(rx_qgrp->singleq.rxqs[j],
+						 false, vport->rxq_model);
+			continue;
+		}
+
+		num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		for (j = 0; j < num_rxq; j++)
+			idpf_rx_desc_rel(&rx_qgrp->splitq.rxq_sets[j]->rxq,
+					 false, vport->rxq_model);
+
+		if (!rx_qgrp->splitq.bufq_sets)
+			continue;
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			struct idpf_bufq_set *bufq_set =
+				&rx_qgrp->splitq.bufq_sets[j];
+
+			idpf_rx_desc_rel(&bufq_set->bufq, true,
+					 vport->rxq_model);
+		}
+	}
+}
+
+/**
+ * idpf_rx_buf_hw_update - Store the new tail and head values
+ * @rxq: queue to bump
+ * @val: new head index
+ */
+void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val)
+{
+	rxq->next_to_use = val;
+
+	if (unlikely(!rxq->tail))
+		return;
+
+	/* writel has an implicit memory barrier */
+	writel(val, rxq->tail);
+}
+
+/**
+ * idpf_rx_hdr_buf_alloc_all - Allocate memory for header buffers
+ * @rxq: ring to use
+ *
+ * Returns 0 on success, negative on failure.
+ */
+static int idpf_rx_hdr_buf_alloc_all(struct idpf_queue *rxq)
+{
+	struct idpf_adapter *adapter = rxq->vport->adapter;
+
+	rxq->rx_buf.hdr_buf_va =
+		dma_alloc_coherent(&adapter->pdev->dev,
+				   IDPF_HDR_BUF_SIZE * rxq->desc_count,
+				   &rxq->rx_buf.hdr_buf_pa,
+				   GFP_KERNEL);
+	if (!rxq->rx_buf.hdr_buf_va)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/**
+ * idpf_rx_post_buf_desc - Post buffer to bufq descriptor ring
+ * @bufq: buffer queue to post to
+ * @buf_id: buffer id to post
+ *
+ * Returns false if buffer could not be allocated, true otherwise.
+ */
+static bool idpf_rx_post_buf_desc(struct idpf_queue *bufq, u16 buf_id)
+{
+	struct virtchnl2_splitq_rx_buf_desc *splitq_rx_desc = NULL;
+	u16 nta = bufq->next_to_alloc;
+	struct idpf_rx_buf *buf;
+	dma_addr_t addr;
+
+	splitq_rx_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, nta);
+	buf = &bufq->rx_buf.buf[buf_id];
+
+	if (bufq->rx_hsplit_en) {
+		splitq_rx_desc->hdr_addr =
+			cpu_to_le64(bufq->rx_buf.hdr_buf_pa +
+				    (u32)buf_id * IDPF_HDR_BUF_SIZE);
+	}
+
+	addr = idpf_alloc_page(bufq->pp, buf, bufq->rx_buf_size);
+	if (unlikely(addr == DMA_MAPPING_ERROR))
+		return false;
+
+	splitq_rx_desc->pkt_addr = cpu_to_le64(addr);
+	splitq_rx_desc->qword0.buf_id = cpu_to_le16(buf_id);
+
+	nta++;
+	if (unlikely(nta == bufq->desc_count))
+		nta = 0;
+	bufq->next_to_alloc = nta;
+
+	return true;
+}
+
+/**
+ * idpf_rx_post_init_bufs - Post initial buffers to bufq
+ * @bufq: buffer queue to post working set to
+ * @working_set: number of buffers to put in working set
+ *
+ * Returns true if @working_set bufs were posted successfully, false otherwise.
+ */
+static bool idpf_rx_post_init_bufs(struct idpf_queue *bufq, u16 working_set)
+{
+	int i;
+
+	for (i = 0; i < working_set; i++) {
+		if (!idpf_rx_post_buf_desc(bufq, i))
+			return false;
+	}
+
+	idpf_rx_buf_hw_update(bufq,
+			      bufq->next_to_alloc & ~(bufq->rx_buf_stride - 1));
+
+	return true;
+}
+
+/**
+ * idpf_rx_create_page_pool - Create a page pool
+ * @rxbufq: RX queue to create page pool for
+ *
+ * Returns &page_pool on success, casted -errno on failure
+ */
+static struct page_pool *idpf_rx_create_page_pool(struct idpf_queue *rxbufq)
+{
+	struct page_pool_params pp = {
+		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
+		.order		= 0,
+		.pool_size	= rxbufq->desc_count,
+		.nid		= NUMA_NO_NODE,
+		.dev		= rxbufq->vport->netdev->dev.parent,
+		.max_len	= PAGE_SIZE,
+		.dma_dir	= DMA_FROM_DEVICE,
+		.offset		= 0,
+	};
+
+	if (rxbufq->rx_buf_size == IDPF_RX_BUF_2048)
+		pp.flags |= PP_FLAG_PAGE_FRAG;
+
+	return page_pool_create(&pp);
+}
+
+/**
+ * idpf_rx_buf_alloc_all - Allocate memory for all buffer resources
+ * @rxbufq: queue for which the buffers are allocated; equivalent to
+ * rxq when operating in singleq mode
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rx_buf_alloc_all(struct idpf_queue *rxbufq)
+{
+	int err = 0;
+
+	/* Allocate book keeping buffers */
+	rxbufq->rx_buf.buf = kcalloc(rxbufq->desc_count,
+				     sizeof(struct idpf_rx_buf), GFP_KERNEL);
+	if (!rxbufq->rx_buf.buf) {
+		err = -ENOMEM;
+		goto rx_buf_alloc_all_out;
+	}
+
+	if (rxbufq->rx_hsplit_en) {
+		err = idpf_rx_hdr_buf_alloc_all(rxbufq);
+		if (err)
+			goto rx_buf_alloc_all_out;
+	}
+
+	/* Allocate buffers to be given to HW.	 */
+	if (idpf_is_queue_model_split(rxbufq->vport->rxq_model)) {
+		int working_set = IDPF_RX_BUFQ_WORKING_SET(rxbufq);
+
+		if (!idpf_rx_post_init_bufs(rxbufq, working_set))
+			err = -ENOMEM;
+	} else {
+		if (idpf_rx_singleq_buf_hw_alloc_all(rxbufq,
+						     rxbufq->desc_count - 1))
+			err = -ENOMEM;
+	}
+
+rx_buf_alloc_all_out:
+	if (err)
+		idpf_rx_buf_rel_all(rxbufq);
+
+	return err;
+}
+
+/**
+ * idpf_rx_bufs_init - Initialize page pool, allocate rx bufs, and post to HW
+ * @rxbufq: RX queue to create page pool for
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rx_bufs_init(struct idpf_queue *rxbufq)
+{
+	struct page_pool *pool;
+
+	pool = idpf_rx_create_page_pool(rxbufq);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+
+	rxbufq->pp = pool;
+
+	return idpf_rx_buf_alloc_all(rxbufq);
+}
+
+/**
+ * idpf_rx_bufs_init_all - Initialize all RX bufs
+ * @vport: virtual port struct
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_rx_bufs_init_all(struct idpf_vport *vport)
+{
+	struct idpf_rxq_group *rx_qgrp;
+	struct idpf_queue *q;
+	int i, j, err;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		rx_qgrp = &vport->rxq_grps[i];
+
+		/* Allocate bufs for the rxq itself in singleq */
+		if (!idpf_is_queue_model_split(vport->rxq_model)) {
+			int num_rxq = rx_qgrp->singleq.num_rxq;
+
+			for (j = 0; j < num_rxq; j++) {
+				q = rx_qgrp->singleq.rxqs[j];
+				err = idpf_rx_bufs_init(q);
+				if (err)
+					return err;
+			}
+
+			continue;
+		}
+
+		/* Otherwise, allocate bufs for the buffer queues */
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			err = idpf_rx_bufs_init(q);
+			if (err)
+				return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_rx_desc_alloc - Allocate queue Rx resources
+ * @rxq: Rx queue for which the resources are setup
+ * @bufq: buffer or completion queue
+ * @q_model: single or split queue model
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model)
+{
+	struct device *dev = rxq->dev;
+
+	if (bufq)
+		rxq->size = rxq->desc_count *
+			sizeof(struct virtchnl2_splitq_rx_buf_desc);
+	else
+		rxq->size = rxq->desc_count *
+			sizeof(union virtchnl2_rx_desc);
+
+	/* Allocate descriptors and also round up to nearest 4K */
+	rxq->size = ALIGN(rxq->size, 4096);
+	rxq->desc_ring = dmam_alloc_coherent(dev, rxq->size,
+					     &rxq->dma, GFP_KERNEL);
+	if (!rxq->desc_ring) {
+		dev_err(dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
+			rxq->size);
+		return -ENOMEM;
+	}
+
+	rxq->next_to_alloc = 0;
+	rxq->next_to_clean = 0;
+	rxq->next_to_use = 0;
+	set_bit(__IDPF_Q_GEN_CHK, rxq->flags);
+
+	return 0;
+}
+
+/**
+ * idpf_rx_desc_alloc_all - allocate all RX queues resources
+ * @vport: virtual port structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
+{
+	struct device *dev = &vport->adapter->pdev->dev;
+	struct idpf_rxq_group *rx_qgrp;
+	struct idpf_queue *q;
+	int i, j, err;
+	u16 num_rxq;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		rx_qgrp = &vport->rxq_grps[i];
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				q = rx_qgrp->singleq.rxqs[j];
+			err = idpf_rx_desc_alloc(q, false, vport->rxq_model);
+			if (err) {
+				dev_err(dev, "Memory allocation for Rx Queue %u failed\n",
+					i);
+				goto err_out;
+			}
+		}
+
+		if (!idpf_is_queue_model_split(vport->rxq_model))
+			continue;
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			err = idpf_rx_desc_alloc(q, true, vport->rxq_model);
+			if (err) {
+				dev_err(dev, "Memory allocation for Rx Buffer Queue %u failed\n",
+					i);
+				goto err_out;
+			}
+		}
+	}
+
+	return 0;
+
+err_out:
+	idpf_rx_desc_rel_all(vport);
+
+	return err;
+}
+
 /**
  * idpf_txq_group_rel - Release all resources for txq groups
  * @vport: vport to release txq groups on
@@ -283,6 +733,74 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 	vport->txq_grps = NULL;
 }
 
+/**
+ * idpf_rxq_sw_queue_rel - Release software queue resources
+ * @rx_qgrp: rx queue group with software queues
+ */
+static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
+{
+	int i, j;
+
+	for (i = 0; i < rx_qgrp->vport->num_bufqs_per_qgrp; i++) {
+		struct idpf_bufq_set *bufq_set = &rx_qgrp->splitq.bufq_sets[i];
+
+		for (j = 0; j < bufq_set->num_refillqs; j++) {
+			kfree(bufq_set->refillqs[j].ring);
+			bufq_set->refillqs[j].ring = NULL;
+		}
+		kfree(bufq_set->refillqs);
+		bufq_set->refillqs = NULL;
+	}
+}
+
+/**
+ * idpf_rxq_group_rel - Release all resources for rxq groups
+ * @vport: vport to release rxq groups on
+ */
+static void idpf_rxq_group_rel(struct idpf_vport *vport)
+{
+	int i;
+
+	if (!vport->rxq_grps)
+		return;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u16 num_rxq;
+		int j;
+
+		if (idpf_is_queue_model_split(vport->rxq_model)) {
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+			for (j = 0; j < num_rxq; j++) {
+				kfree(rx_qgrp->splitq.rxq_sets[j]);
+				rx_qgrp->splitq.rxq_sets[j] = NULL;
+			}
+
+			idpf_rxq_sw_queue_rel(rx_qgrp);
+			kfree(rx_qgrp->splitq.bufq_sets);
+			rx_qgrp->splitq.bufq_sets = NULL;
+		} else {
+			num_rxq = rx_qgrp->singleq.num_rxq;
+			for (j = 0; j < num_rxq; j++) {
+				kfree(rx_qgrp->singleq.rxqs[j]);
+				rx_qgrp->singleq.rxqs[j] = NULL;
+			}
+		}
+	}
+	kfree(vport->rxq_grps);
+	vport->rxq_grps = NULL;
+}
+
+/**
+ * idpf_vport_queue_grp_rel_all - Release all queue groups
+ * @vport: vport to release queue groups for
+ */
+static void idpf_vport_queue_grp_rel_all(struct idpf_vport *vport)
+{
+	idpf_txq_group_rel(vport);
+	idpf_rxq_group_rel(vport);
+}
+
 /**
  * idpf_vport_queues_rel - Free memory for all queues
  * @vport: virtual port
@@ -292,7 +810,8 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 void idpf_vport_queues_rel(struct idpf_vport *vport)
 {
 	idpf_tx_desc_rel_all(vport);
-	idpf_txq_group_rel(vport);
+	idpf_rx_desc_rel_all(vport);
+	idpf_vport_queue_grp_rel_all(vport);
 
 	kfree(vport->txqs);
 	vport->txqs = NULL;
@@ -517,6 +1036,29 @@ static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
 		*num_txq = IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
 	else
 		*num_txq = vport->num_txq;
+
+	if (idpf_is_queue_model_split(vport->rxq_model))
+		*num_rxq = IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
+	else
+		*num_rxq = vport->num_rxq;
+}
+
+/**
+ * idpf_rxq_set_descids - set the descids supported by this queue
+ * @vport: virtual port data structure
+ * @q: rx queue for which descids are set
+ *
+ */
+static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
+{
+	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
+		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
+	} else {
+		if (vport->base_rxd)
+			q->rxdids = VIRTCHNL2_RXDID_1_32B_BASE_M;
+		else
+			q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M;
+	}
 }
 
 /**
@@ -593,6 +1135,154 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 	return err;
 }
 
+/**
+ * idpf_rxq_group_alloc - Allocate all rxq group resources
+ * @vport: vport to allocate rxq groups for
+ * @num_rxq: number of rxqs to allocate for each group
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_queue *q;
+	int i, k, err = 0;
+
+	vport->rxq_grps = kcalloc(vport->num_rxq_grp,
+				  sizeof(struct idpf_rxq_group), GFP_KERNEL);
+	if (!vport->rxq_grps)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		int j;
+
+		rx_qgrp->vport = vport;
+		if (!idpf_is_queue_model_split(vport->rxq_model)) {
+			rx_qgrp->singleq.num_rxq = num_rxq;
+			for (j = 0; j < num_rxq; j++) {
+				rx_qgrp->singleq.rxqs[j] =
+						kzalloc(sizeof(*rx_qgrp->singleq.rxqs[j]),
+							GFP_KERNEL);
+				if (!rx_qgrp->singleq.rxqs[j]) {
+					err = -ENOMEM;
+					goto err_alloc;
+				}
+			}
+			goto skip_splitq_rx_init;
+		}
+		rx_qgrp->splitq.num_rxq_sets = num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			rx_qgrp->splitq.rxq_sets[j] =
+				kzalloc(sizeof(struct idpf_rxq_set),
+					GFP_KERNEL);
+			if (!rx_qgrp->splitq.rxq_sets[j]) {
+				err = -ENOMEM;
+				goto err_alloc;
+			}
+		}
+
+		rx_qgrp->splitq.bufq_sets = kcalloc(vport->num_bufqs_per_qgrp,
+						    sizeof(struct idpf_bufq_set),
+						    GFP_KERNEL);
+		if (!rx_qgrp->splitq.bufq_sets) {
+			err = -ENOMEM;
+			goto err_alloc;
+		}
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			struct idpf_bufq_set *bufq_set =
+				&rx_qgrp->splitq.bufq_sets[j];
+			int swq_size = sizeof(struct idpf_sw_queue);
+
+			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			q->dev = &adapter->pdev->dev;
+			q->desc_count = vport->bufq_desc_count[j];
+			q->vport = vport;
+			q->rxq_grp = rx_qgrp;
+			q->idx = j;
+			q->rx_buf_size = vport->bufq_size[j];
+			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
+			q->rx_buf_stride = IDPF_RX_BUF_STRIDE;
+			if (idpf_is_cap_ena_all(adapter, IDPF_HSPLIT_CAPS,
+						IDPF_CAP_HSPLIT) &&
+			    idpf_is_queue_model_split(vport->rxq_model)) {
+				q->rx_hsplit_en = true;
+				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
+			}
+
+			bufq_set->num_refillqs = num_rxq;
+			bufq_set->refillqs = kcalloc(num_rxq, swq_size,
+						     GFP_KERNEL);
+			if (!bufq_set->refillqs) {
+				err = -ENOMEM;
+				goto err_alloc;
+			}
+			for (k = 0; k < bufq_set->num_refillqs; k++) {
+				struct idpf_sw_queue *refillq =
+					&bufq_set->refillqs[k];
+
+				refillq->dev = &vport->adapter->pdev->dev;
+				refillq->desc_count =
+					vport->bufq_desc_count[j];
+				set_bit(__IDPF_Q_GEN_CHK, refillq->flags);
+				set_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags);
+				refillq->ring = kcalloc(refillq->desc_count,
+							sizeof(u16),
+							GFP_KERNEL);
+				if (!refillq->ring) {
+					err = -ENOMEM;
+					goto err_alloc;
+				}
+			}
+		}
+
+skip_splitq_rx_init:
+		for (j = 0; j < num_rxq; j++) {
+			if (!idpf_is_queue_model_split(vport->rxq_model)) {
+				q = rx_qgrp->singleq.rxqs[j];
+				goto setup_rxq;
+			}
+			q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			rx_qgrp->splitq.rxq_sets[j]->refillq0 =
+			      &rx_qgrp->splitq.bufq_sets[0].refillqs[j];
+			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP)
+				rx_qgrp->splitq.rxq_sets[j]->refillq1 =
+				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
+
+			if (idpf_is_cap_ena_all(adapter, IDPF_HSPLIT_CAPS,
+						IDPF_CAP_HSPLIT) &&
+			    idpf_is_queue_model_split(vport->rxq_model)) {
+				q->rx_hsplit_en = true;
+				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
+			}
+
+setup_rxq:
+			q->dev = &adapter->pdev->dev;
+			q->desc_count = vport->rxq_desc_count;
+			q->vport = vport;
+			q->rxq_grp = rx_qgrp;
+			q->idx = (i * num_rxq) + j;
+			/* In splitq mode, RXQ buffer size should be
+			 * set to that of the first buffer queue
+			 * associated with this RXQ
+			 */
+			q->rx_buf_size = vport->bufq_size[0];
+			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
+			q->rx_max_pkt_size = vport->netdev->mtu +
+							IDPF_PACKET_HDR_PAD;
+			idpf_rxq_set_descids(vport, q);
+		}
+	}
+
+err_alloc:
+	if (err)
+		idpf_rxq_group_rel(vport);
+
+	return err;
+}
+
 /**
  * idpf_vport_queue_grp_alloc_all - Allocate all queue groups/resources
  * @vport: vport with qgrps to allocate
@@ -610,10 +1300,14 @@ static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
 	if (err)
 		goto err_out;
 
+	err = idpf_rxq_group_alloc(vport, num_rxq);
+	if (err)
+		goto err_out;
+
 	return 0;
 
 err_out:
-	idpf_txq_group_rel(vport);
+	idpf_vport_queue_grp_rel_all(vport);
 
 	return err;
 }
@@ -637,6 +1331,10 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	if (err)
 		goto err_out;
 
+	err = idpf_rx_desc_alloc_all(vport);
+	if (err)
+		goto err_out;
+
 	err = idpf_vport_init_fast_path_txqs(vport);
 	if (err)
 		goto err_out;
@@ -662,8 +1360,12 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
 
+		kfree(q_vector->bufq);
+		q_vector->bufq = NULL;
 		kfree(q_vector->tx);
 		q_vector->tx = NULL;
+		kfree(q_vector->rx);
+		q_vector->rx = NULL;
 	}
 
 	kfree(vport->q_vectors);
@@ -679,8 +1381,8 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
  */
 int idpf_vport_intr_alloc(struct idpf_vport *vport)
 {
+	u16 txqs_per_vector, rxqs_per_vector, bufqs_per_vector;
 	struct idpf_q_vector *q_vector;
-	u16 txqs_per_vector;
 	int v_idx, err;
 
 	vport->q_vectors = kcalloc(vport->num_q_vectors,
@@ -689,6 +1391,10 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 		return -ENOMEM;
 
 	txqs_per_vector = DIV_ROUND_UP(vport->num_txq, vport->num_q_vectors);
+	rxqs_per_vector = DIV_ROUND_UP(vport->num_rxq, vport->num_q_vectors);
+	bufqs_per_vector = vport->num_bufqs_per_qgrp *
+			   DIV_ROUND_UP(vport->num_rxq_grp,
+					vport->num_q_vectors);
 
 	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		q_vector = &vport->q_vectors[v_idx];
@@ -698,6 +1404,10 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 		q_vector->tx_intr_mode = IDPF_ITR_DYNAMIC;
 		q_vector->tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
 
+		q_vector->rx_itr_value = IDPF_ITR_RX_DEF;
+		q_vector->rx_intr_mode = IDPF_ITR_DYNAMIC;
+		q_vector->rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
+
 		q_vector->tx = kcalloc(txqs_per_vector,
 				       sizeof(struct idpf_queue *),
 				       GFP_KERNEL);
@@ -705,6 +1415,25 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 			err = -ENOMEM;
 			goto error;
 		}
+
+		q_vector->rx = kcalloc(rxqs_per_vector,
+				       sizeof(struct idpf_queue *),
+				       GFP_KERNEL);
+		if (!q_vector->rx) {
+			err = -ENOMEM;
+			goto error;
+		}
+
+		if (!idpf_is_queue_model_split(vport->rxq_model))
+			continue;
+
+		q_vector->bufq = kcalloc(bufqs_per_vector,
+					 sizeof(struct idpf_queue *),
+					 GFP_KERNEL);
+		if (!q_vector->bufq) {
+			err = -ENOMEM;
+			goto error;
+		}
 	}
 
 	return 0;
@@ -714,3 +1443,89 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 
 	return err;
 }
+
+/**
+ * idpf_config_rss - Send virtchnl messages to configure RSS
+ * @vport: virtual port
+ *
+ * Return 0 on success, negative on failure
+ */
+int idpf_config_rss(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_send_get_set_rss_key_msg(vport, false);
+	if (err)
+		return err;
+
+	return idpf_send_get_set_rss_lut_msg(vport, false);
+}
+
+/**
+ * idpf_fill_dflt_rss_lut - Fill the indirection table with the default values
+ * @vport: virtual port structure
+ */
+static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	u16 num_active_rxq = vport->num_rxq;
+	struct idpf_rss_data *rss_data;
+	int i;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+
+	for (i = 0; i < rss_data->rss_lut_size; i++) {
+		rss_data->rss_lut[i] = i % num_active_rxq;
+		rss_data->cached_lut[i] = rss_data->rss_lut[i];
+	}
+}
+
+/**
+ * idpf_init_rss - Allocate and initialize RSS resources
+ * @vport: virtual port
+ *
+ * Return 0 on success, negative on failure
+ */
+int idpf_init_rss(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_rss_data *rss_data;
+	u32 lut_size;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+
+	lut_size = rss_data->rss_lut_size * sizeof(u32);
+	rss_data->rss_lut = kzalloc(lut_size, GFP_KERNEL);
+	if (!rss_data->rss_lut)
+		return -ENOMEM;
+
+	rss_data->cached_lut = kzalloc(lut_size, GFP_KERNEL);
+	if (!rss_data->cached_lut) {
+		kfree(rss_data->rss_lut);
+		rss_data->rss_lut = NULL;
+
+		return -ENOMEM;
+	}
+
+	/* Fill the default RSS lut values */
+	idpf_fill_dflt_rss_lut(vport);
+
+	return idpf_config_rss(vport);
+}
+
+/**
+ * idpf_deinit_rss - Release RSS resources
+ * @vport: virtual port
+ *
+ */
+void idpf_deinit_rss(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_rss_data *rss_data;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	kfree(rss_data->cached_lut);
+	rss_data->cached_lut = NULL;
+	kfree(rss_data->rss_lut);
+	rss_data->rss_lut = NULL;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 6887e2486536..3bb8dddab59c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _IDPF_TXRX_H_
 #define _IDPF_TXRX_H_
 
+#include <net/page_pool/helpers.h>
+
 #define IDPF_LARGE_MAX_Q			256
 #define IDPF_MAX_Q				16
 #define IDPF_MIN_Q				2
@@ -21,7 +23,9 @@
 #define IDPF_DFLT_SINGLEQ_RXQ_PER_GROUP		4
 
 #define IDPF_COMPLQ_PER_GROUP			1
+#define IDPF_SINGLE_BUFQ_PER_RXQ_GRP		1
 #define IDPF_MAX_BUFQS_PER_RXQ_GRP		2
+#define IDPF_BUFQ2_ENA				1
 
 #define IDPF_DFLT_SPLITQ_TXQ_PER_GROUP		1
 #define IDPF_DFLT_SPLITQ_RXQ_PER_GROUP		1
@@ -52,11 +56,21 @@
  */
 #define IDPF_RX_BUFQ_DESC_COUNT(RXD, NUM_BUFQ)	((RXD) / (NUM_BUFQ))
 
+#define IDPF_RX_BUFQ_WORKING_SET(rxq)		((rxq)->desc_count - 1)
+
 #define IDPF_RX_BUF_2048			2048
 #define IDPF_RX_BUF_4096			4096
+#define IDPF_RX_BUF_STRIDE			32
+#define IDPF_LOW_WATERMARK			64
+#define IDPF_HDR_BUF_SIZE			256
 #define IDPF_PACKET_HDR_PAD	\
 	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
 
+#define IDPF_SINGLEQ_RX_BUF_DESC(rxq, i)	\
+	(&(((struct virtchnl2_singleq_rx_buf_desc *)((rxq)->desc_ring))[i]))
+#define IDPF_SPLITQ_RX_BUF_DESC(rxq, i)	\
+	(&(((struct virtchnl2_splitq_rx_buf_desc *)((rxq)->desc_ring))[i]))
+
 #define IDPF_TX_SPLITQ_COMPL_TAG_WIDTH	16
 #define IDPF_SPLITQ_TX_INVAL_COMPL_TAG	-1
 
@@ -102,6 +116,15 @@ struct idpf_buf_lifo {
 	struct idpf_tx_stash **bufs;
 };
 
+#define IDPF_RX_DMA_ATTR \
+	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
+
+struct idpf_rx_buf {
+	struct page *page;
+	unsigned int page_offset;
+	u16 truesize;
+};
+
 #define IDPF_RX_MAX_PTYPE_PROTO_IDS    32
 #define IDPF_RX_MAX_PTYPE_SZ	(sizeof(struct virtchnl2_ptype) + \
 				 (sizeof(u16) * IDPF_RX_MAX_PTYPE_PROTO_IDS))
@@ -225,11 +248,14 @@ struct idpf_rx_ptype_decoded {
  *		      to 1 and knows that reading a gen bit of 1 in any
  *		      descriptor on the initial pass of the ring indicates a
  *		      writeback. It also flips on every ring wrap.
+ * @__IDPF_RFLQ_GEN_CHK: Refill queues are SW only, so Q_GEN acts as the HW bit
+ *			 and RFLGQ_GEN is the SW bit.
  * @__IDPF_Q_FLOW_SCH_EN: Enable flow scheduling
  * @__IDPF_Q_FLAGS_NBITS: Must be last
  */
 enum idpf_queue_flags_t {
 	__IDPF_Q_GEN_CHK,
+	__IDPF_RFLQ_GEN_CHK,
 	__IDPF_Q_FLOW_SCH_EN,
 
 	__IDPF_Q_FLAGS_NBITS,
@@ -254,16 +280,23 @@ struct idpf_intr_reg {
 /**
  * struct idpf_q_vector
  * @vport: Vport back pointer
+ * @napi: napi handler
  * @v_idx: Vector index
  * @intr_reg: See struct idpf_intr_reg
  * @tx: Array of TX queues to service
  * @tx_itr_value: TX interrupt throttling rate
  * @tx_intr_mode: Dynamic ITR or not
  * @tx_itr_idx: TX ITR index
+ * @rx: Array of RX queues to service
+ * @rx_itr_value: RX interrupt throttling rate
+ * @rx_intr_mode: Dynamic ITR or not
+ * @rx_itr_idx: RX ITR index
+ * @bufq: Array of buffer queues to service
  * @name: Queue vector name
  */
 struct idpf_q_vector {
 	struct idpf_vport *vport;
+	struct napi_struct napi;
 	u16 v_idx;
 	struct idpf_intr_reg intr_reg;
 
@@ -272,26 +305,43 @@ struct idpf_q_vector {
 	bool tx_intr_mode;
 	u32 tx_itr_idx;
 
+	struct idpf_queue **rx;
+	u16 rx_itr_value;
+	bool rx_intr_mode;
+	u32 rx_itr_idx;
+
+	struct idpf_queue **bufq;
+
 	char name[IDPF_INT_NAME_STR_LEN];
 };
 
 #define IDPF_ITR_DYNAMIC	1
 #define IDPF_ITR_20K		0x0032
 #define IDPF_ITR_TX_DEF		IDPF_ITR_20K
+#define IDPF_ITR_RX_DEF		IDPF_ITR_20K
 
 /**
  * struct idpf_queue
  * @dev: Device back pointer for DMA mapping
  * @vport: Back pointer to associated vport
  * @txq_grp: See struct idpf_txq_group
+ * @rxq_grp: See struct idpf_rxq_group
  * @idx: For buffer queue, it is used as group id, either 0 or 1. On clean,
  *	 buffer queue uses this index to determine which group of refill queues
  *	 to clean.
  *	 For TX queue, it is used as index to map between TX queue group and
  *	 hot path TX pointers stored in vport. Used in both singleq/splitq.
+ *	 For RX queue, it is used to index to total RX queue across groups and
+ *	 used for skb reporting.
  * @tail: Tail offset. Used for both queue models single and split. In splitq
- *	  model relevant only for TX queue.
+ *	  model relevant only for TX queue and RX queue.
  * @tx_buf: See struct idpf_tx_buf
+ * @rx_buf: Struct with RX buffer related members
+ * @rx_buf.buf: See struct idpf_rx_buf
+ * @rx_buf.hdr_buf_pa: DMA handle
+ * @rx_buf.hdr_buf_va: Virtual address
+ * @pp: Page pool pointer
+ * @skb: Pointer to the skb
  * @q_type: Queue type (TX, RX, TX completion, RX buffer)
  * @q_id: Queue id
  * @desc_count: Number of descriptors
@@ -302,6 +352,13 @@ struct idpf_q_vector {
  * @next_to_alloc: RX buffer to allocate at. Used only for RX. In splitq model
  *		   only relevant to RX queue.
  * @flags: See enum idpf_queue_flags_t
+ * @rx_hsplit_en: RX headsplit enable
+ * @rx_hbuf_size: Header buffer size
+ * @rx_buf_size: Buffer size
+ * @rx_max_pkt_size: RX max packet size
+ * @rx_buf_stride: RX buffer stride
+ * @rx_buffer_low_watermark: RX buffer low watermark
+ * @rxdids: Supported RX descriptor ids
  * @q_vector: Backreference to associated vector
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
@@ -338,10 +395,22 @@ struct idpf_q_vector {
 struct idpf_queue {
 	struct device *dev;
 	struct idpf_vport *vport;
-	struct idpf_txq_group *txq_grp;
+	union {
+		struct idpf_txq_group *txq_grp;
+		struct idpf_rxq_group *rxq_grp;
+	};
 	u16 idx;
 	void __iomem *tail;
-	struct idpf_tx_buf *tx_buf;
+	union {
+		struct idpf_tx_buf *tx_buf;
+		struct {
+			struct idpf_rx_buf *buf;
+			dma_addr_t hdr_buf_pa;
+			void *hdr_buf_va;
+		} rx_buf;
+	};
+	struct page_pool *pp;
+	struct sk_buff *skb;
 	u16 q_type;
 	u32 q_id;
 	u16 desc_count;
@@ -351,6 +420,13 @@ struct idpf_queue {
 	u16 next_to_alloc;
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 
+	bool rx_hsplit_en;
+	u16 rx_hbuf_size;
+	u16 rx_buf_size;
+	u16 rx_max_pkt_size;
+	u16 rx_buf_stride;
+	u8 rx_buffer_low_watermark;
+	u64 rxdids;
 	struct idpf_q_vector *q_vector;
 	unsigned int size;
 	dma_addr_t dma;
@@ -370,6 +446,92 @@ struct idpf_queue {
 	DECLARE_HASHTABLE(sched_buf_hash, 12);
 } ____cacheline_internodealigned_in_smp;
 
+/**
+ * struct idpf_sw_queue
+ * @flags: See enum idpf_queue_flags_t
+ * @ring: Pointer to the ring
+ * @desc_count: Descriptor count
+ * @dev: Device back pointer for DMA mapping
+ *
+ * Software queues are used in splitq mode to manage buffers between rxq
+ * producer and the bufq consumer.  These are required in order to maintain a
+ * lockless buffer management system and are strictly software only constructs.
+ */
+struct idpf_sw_queue {
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+	u16 *ring;
+	u16 desc_count;
+	struct device *dev;
+} ____cacheline_internodealigned_in_smp;
+
+/**
+ * struct idpf_rxq_set
+ * @rxq: RX queue
+ * @refillq0: Pointer to refill queue 0
+ * @refillq1: Pointer to refill queue 1
+ *
+ * Splitq only.  idpf_rxq_set associates an rxq with at an array of refillqs.
+ * Each rxq needs a refillq to return used buffers back to the respective bufq.
+ * Bufqs then clean these refillqs for buffers to give to hardware.
+ */
+struct idpf_rxq_set {
+	struct idpf_queue rxq;
+	struct idpf_sw_queue *refillq0;
+	struct idpf_sw_queue *refillq1;
+};
+
+/**
+ * struct idpf_bufq_set
+ * @bufq: Buffer queue
+ * @num_refillqs: Number of refill queues. This is always equal to num_rxq_sets
+ *		  in idpf_rxq_group.
+ * @refillqs: Pointer to refill queues array.
+ *
+ * Splitq only. idpf_bufq_set associates a bufq to an array of refillqs.
+ * In this bufq_set, there will be one refillq for each rxq in this rxq_group.
+ * Used buffers received by rxqs will be put on refillqs which bufqs will
+ * clean to return new buffers back to hardware.
+ *
+ * Buffers needed by some number of rxqs associated in this rxq_group are
+ * managed by at most two bufqs (depending on performance configuration).
+ */
+struct idpf_bufq_set {
+	struct idpf_queue bufq;
+	int num_refillqs;
+	struct idpf_sw_queue *refillqs;
+};
+
+/**
+ * struct idpf_rxq_group
+ * @vport: Vport back pointer
+ * @singleq: Struct with single queue related members
+ * @singleq.num_rxq: Number of RX queues associated
+ * @singleq.rxqs: Array of RX queue pointers
+ * @splitq: Struct with split queue related members
+ * @splitq.num_rxq_sets: Number of RX queue sets
+ * @splitq.rxq_sets: Array of RX queue sets
+ * @splitq.bufq_sets: Buffer queue set pointer
+ *
+ * In singleq mode, an rxq_group is simply an array of rxqs.  In splitq, a
+ * rxq_group contains all the rxqs, bufqs and refillqs needed to
+ * manage buffers in splitq mode.
+ */
+struct idpf_rxq_group {
+	struct idpf_vport *vport;
+
+	union {
+		struct {
+			u16 num_rxq;
+			struct idpf_queue *rxqs[IDPF_LARGE_MAX_Q];
+		} singleq;
+		struct {
+			u16 num_rxq_sets;
+			struct idpf_rxq_set *rxq_sets[IDPF_LARGE_MAX_Q];
+			struct idpf_bufq_set *bufq_sets;
+		} splitq;
+	};
+};
+
 /**
  * struct idpf_txq_group
  * @vport: Vport back pointer
@@ -395,6 +557,33 @@ struct idpf_txq_group {
 	u32 num_completions_pending;
 };
 
+/**
+ * idpf_alloc_page - Allocate a new RX buffer from the page pool
+ * @pool: page_pool to allocate from
+ * @buf: metadata struct to populate with page info
+ * @buf_size: 2K or 4K
+ *
+ * Returns &dma_addr_t to be passed to HW for Rx, %DMA_MAPPING_ERROR otherwise.
+ */
+static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
+					 struct idpf_rx_buf *buf,
+					 unsigned int buf_size)
+{
+	if (buf_size == IDPF_RX_BUF_2048)
+		buf->page = page_pool_dev_alloc_frag(pool, &buf->page_offset,
+						     buf_size);
+	else
+		buf->page = page_pool_dev_alloc_pages(pool);
+
+	if (!buf->page)
+		return DMA_MAPPING_ERROR;
+
+	buf->truesize = buf_size;
+
+	return page_pool_get_dma_addr(buf->page) + buf->page_offset +
+	       pool->p.offset;
+}
+
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
 void idpf_vport_calc_num_q_desc(struct idpf_vport *vport);
@@ -406,5 +595,13 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport);
 void idpf_vport_queues_rel(struct idpf_vport *vport);
 void idpf_vport_intr_rel(struct idpf_vport *vport);
 int idpf_vport_intr_alloc(struct idpf_vport *vport);
+int idpf_config_rss(struct idpf_vport *vport);
+int idpf_init_rss(struct idpf_vport *vport);
+void idpf_deinit_rss(struct idpf_vport *vport);
+int idpf_rx_bufs_init_all(struct idpf_vport *vport);
+bool idpf_init_rx_buf_hw_alloc(struct idpf_queue *rxq, struct idpf_rx_buf *buf);
+void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val);
+bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rxq,
+				      u16 cleaned_count);
 
 #endif /* !_IDPF_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 0074588c50eb..6c299375155e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -166,6 +166,17 @@ static int idpf_find_vport(struct idpf_adapter *adapter,
 	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
 		v_id = le32_to_cpu(((struct virtchnl2_config_tx_queues *)vc_msg)->vport_id);
 		break;
+	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+		v_id = le32_to_cpu(((struct virtchnl2_config_rx_queues *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_GET_RSS_LUT:
+	case VIRTCHNL2_OP_SET_RSS_LUT:
+		v_id = le32_to_cpu(((struct virtchnl2_rss_lut *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_GET_RSS_KEY:
+	case VIRTCHNL2_OP_SET_RSS_KEY:
+		v_id = le32_to_cpu(((struct virtchnl2_rss_key *)vc_msg)->vport_id);
+		break;
 	case VIRTCHNL2_OP_ADD_MAC_ADDR:
 	case VIRTCHNL2_OP_DEL_MAC_ADDR:
 		v_id = le32_to_cpu(((struct virtchnl2_mac_addr_list *)vc_msg)->vport_id);
@@ -374,6 +385,31 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 					   IDPF_VC_CONFIG_TXQ,
 					   IDPF_VC_CONFIG_TXQ_ERR);
 			break;
+		case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_CONFIG_RXQ,
+					   IDPF_VC_CONFIG_RXQ_ERR);
+			break;
+		case VIRTCHNL2_OP_GET_RSS_LUT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_GET_RSS_LUT,
+					   IDPF_VC_GET_RSS_LUT_ERR);
+			break;
+		case VIRTCHNL2_OP_SET_RSS_LUT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_SET_RSS_LUT,
+					   IDPF_VC_SET_RSS_LUT_ERR);
+			break;
+		case VIRTCHNL2_OP_GET_RSS_KEY:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_GET_RSS_KEY,
+					   IDPF_VC_GET_RSS_KEY_ERR);
+			break;
+		case VIRTCHNL2_OP_SET_RSS_KEY:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_SET_RSS_KEY,
+					   IDPF_VC_SET_RSS_KEY_ERR);
+			break;
 		case VIRTCHNL2_OP_ALLOC_VECTORS:
 			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
 					   IDPF_VC_ALLOC_VECTORS,
@@ -855,6 +891,7 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 				 int num_regs, u32 q_type)
 {
 	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_queue *q;
 	int i, j, k = 0;
 
 	switch (q_type) {
@@ -867,6 +904,30 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 					idpf_get_reg_addr(adapter, reg_vals[k]);
 		}
 		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+			u16 num_rxq = rx_qgrp->singleq.num_rxq;
+
+			for (j = 0; j < num_rxq && k < num_regs; j++, k++) {
+				q = rx_qgrp->singleq.rxqs[j];
+				q->tail = idpf_get_reg_addr(adapter,
+							    reg_vals[k]);
+			}
+		}
+		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+			u8 num_bufqs = vport->num_bufqs_per_qgrp;
+
+			for (j = 0; j < num_bufqs && k < num_regs; j++, k++) {
+				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+				q->tail = idpf_get_reg_addr(adapter,
+							    reg_vals[k]);
+			}
+		}
+		break;
 	default:
 		break;
 	}
@@ -915,8 +976,45 @@ int idpf_queue_reg_init(struct idpf_vport *vport)
 
 	num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
 					 VIRTCHNL2_QUEUE_TYPE_TX);
-	if (num_regs < vport->num_txq)
+	if (num_regs < vport->num_txq) {
 		ret = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	/* Initialize Rx/buffer queue tail register address based on Rx queue
+	 * model
+	 */
+	if (idpf_is_queue_model_split(vport->rxq_model)) {
+		num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
+						VIRTCHNL2_QUEUE_TYPE_RX_BUFFER,
+						chunks);
+		if (num_regs < vport->num_bufq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+
+		num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+						 VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
+		if (num_regs < vport->num_bufq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+	} else {
+		num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
+						VIRTCHNL2_QUEUE_TYPE_RX,
+						chunks);
+		if (num_regs < vport->num_rxq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+
+		num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+						 VIRTCHNL2_QUEUE_TYPE_RX);
+		if (num_regs < vport->num_rxq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+	}
 
 free_reg_vals:
 	kfree(reg_vals);
@@ -1078,7 +1176,7 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
  * Send config tx queues virtchnl message. Returns 0 on success, negative on
  * failure.
  */
-int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
+static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 {
 	struct virtchnl2_config_tx_queues *ctq;
 	u32 config_sz, chunk_sz, buf_sz;
@@ -1197,6 +1295,176 @@ int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_send_config_rx_queues_msg - Send virtchnl config rx queues message
+ * @vport: virtual port data structure
+ *
+ * Send config rx queues virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
+{
+	struct virtchnl2_config_rx_queues *crq;
+	u32 config_sz, chunk_sz, buf_sz;
+	int totqs, num_msgs, num_chunks;
+	struct virtchnl2_rxq_info *qi;
+	int err = 0, i, k = 0;
+
+	totqs = vport->num_rxq + vport->num_bufq;
+	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
+	if (!qi)
+		return -ENOMEM;
+
+	/* Populate the queue info buffer with all queue context info */
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u16 num_rxq;
+		int j;
+
+		if (!idpf_is_queue_model_split(vport->rxq_model))
+			goto setup_rxqs;
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
+			struct idpf_queue *bufq =
+				&rx_qgrp->splitq.bufq_sets[j].bufq;
+
+			qi[k].queue_id = cpu_to_le32(bufq->q_id);
+			qi[k].model = cpu_to_le16(vport->rxq_model);
+			qi[k].type = cpu_to_le32(bufq->q_type);
+			qi[k].desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
+			qi[k].ring_len = cpu_to_le16(bufq->desc_count);
+			qi[k].dma_ring_addr = cpu_to_le64(bufq->dma);
+			qi[k].data_buffer_size = cpu_to_le32(bufq->rx_buf_size);
+			qi[k].buffer_notif_stride = bufq->rx_buf_stride;
+			qi[k].rx_buffer_low_watermark =
+				cpu_to_le16(bufq->rx_buffer_low_watermark);
+			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
+		}
+
+setup_rxqs:
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++, k++) {
+			struct idpf_queue *rxq;
+
+			if (!idpf_is_queue_model_split(vport->rxq_model)) {
+				rxq = rx_qgrp->singleq.rxqs[j];
+				goto common_qi_fields;
+			}
+			rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			qi[k].rx_bufq1_id =
+			  cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[0].bufq.q_id);
+			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
+				qi[k].bufq2_ena = IDPF_BUFQ2_ENA;
+				qi[k].rx_bufq2_id =
+				  cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[1].bufq.q_id);
+			}
+			qi[k].rx_buffer_low_watermark =
+				cpu_to_le16(rxq->rx_buffer_low_watermark);
+			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
+
+common_qi_fields:
+			if (rxq->rx_hsplit_en) {
+				qi[k].qflags |=
+					cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
+				qi[k].hdr_buffer_size =
+					cpu_to_le16(rxq->rx_hbuf_size);
+			}
+			qi[k].queue_id = cpu_to_le32(rxq->q_id);
+			qi[k].model = cpu_to_le16(vport->rxq_model);
+			qi[k].type = cpu_to_le32(rxq->q_type);
+			qi[k].ring_len = cpu_to_le16(rxq->desc_count);
+			qi[k].dma_ring_addr = cpu_to_le64(rxq->dma);
+			qi[k].max_pkt_size = cpu_to_le32(rxq->rx_max_pkt_size);
+			qi[k].data_buffer_size = cpu_to_le32(rxq->rx_buf_size);
+			qi[k].qflags |=
+				cpu_to_le16(VIRTCHNL2_RX_DESC_SIZE_32BYTE);
+			qi[k].desc_ids = cpu_to_le64(rxq->rxdids);
+		}
+	}
+
+	/* Make sure accounting agrees */
+	if (k != totqs) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	/* Chunk up the queue contexts into multiple messages to avoid
+	 * sending a control queue message buffer that is too large
+	 */
+	config_sz = sizeof(struct virtchnl2_config_rx_queues);
+	chunk_sz = sizeof(struct virtchnl2_rxq_info);
+
+	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
+			   totqs);
+	num_msgs = DIV_ROUND_UP(totqs, num_chunks);
+
+	buf_sz = struct_size(crq, qinfo, num_chunks);
+	crq = kzalloc(buf_sz, GFP_KERNEL);
+	if (!crq) {
+		err = -ENOMEM;
+		goto error;
+	}
+
+	mutex_lock(&vport->vc_buf_lock);
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		memset(crq, 0, buf_sz);
+		crq->vport_id = cpu_to_le32(vport->vport_id);
+		crq->num_qinfo = cpu_to_le16(num_chunks);
+		memcpy(crq->qinfo, &qi[k], chunk_sz * num_chunks);
+
+		err = idpf_send_mb_msg(vport->adapter,
+				       VIRTCHNL2_OP_CONFIG_RX_QUEUES,
+				       buf_sz, (u8 *)crq);
+		if (err)
+			goto mbx_error;
+
+		err = idpf_wait_for_event(vport->adapter, vport,
+					  IDPF_VC_CONFIG_RXQ,
+					  IDPF_VC_CONFIG_RXQ_ERR);
+		if (err)
+			goto mbx_error;
+
+		k += num_chunks;
+		totqs -= num_chunks;
+		num_chunks = min(num_chunks, totqs);
+		/* Recalculate buffer size */
+		buf_sz = struct_size(crq, qinfo, num_chunks);
+	}
+
+mbx_error:
+	mutex_unlock(&vport->vc_buf_lock);
+	kfree(crq);
+error:
+	kfree(qi);
+
+	return err;
+}
+
+/**
+ * idpf_send_config_queues_msg - Send config queues virtchnl message
+ * @vport: Virtual port private data structure
+ *
+ * Will send config queues virtchnl message. Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_config_queues_msg(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_send_config_tx_queues_msg(vport);
+	if (err)
+		return err;
+
+	return idpf_send_config_rx_queues_msg(vport);
+}
+
 /**
  * idpf_send_alloc_vectors_msg - Send virtchnl alloc vectors message
  * @adapter: Driver specific private structure
@@ -1290,6 +1558,154 @@ int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
 	return err;
 }
 
+/**
+ * idpf_send_get_set_rss_lut_msg - Send virtchnl get or set rss lut message
+ * @vport: virtual port data structure
+ * @get: flag to set or get rss look up table
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_rss_lut *recv_rl;
+	struct idpf_rss_data *rss_data;
+	struct virtchnl2_rss_lut *rl;
+	int buf_size, lut_buf_size;
+	int i, err;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	buf_size = struct_size(rl, lut, rss_data->rss_lut_size);
+	rl = kzalloc(buf_size, GFP_KERNEL);
+	if (!rl)
+		return -ENOMEM;
+
+	rl->vport_id = cpu_to_le32(vport->vport_id);
+	mutex_lock(&vport->vc_buf_lock);
+
+	if (!get) {
+		rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
+		for (i = 0; i < rss_data->rss_lut_size; i++)
+			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
+
+		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_LUT,
+				       buf_size, (u8 *)rl);
+		if (err)
+			goto free_mem;
+
+		err = idpf_wait_for_event(adapter, vport, IDPF_VC_SET_RSS_LUT,
+					  IDPF_VC_SET_RSS_LUT_ERR);
+
+		goto free_mem;
+	}
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_LUT,
+			       buf_size, (u8 *)rl);
+	if (err)
+		goto free_mem;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_RSS_LUT,
+				  IDPF_VC_GET_RSS_LUT_ERR);
+	if (err)
+		goto free_mem;
+
+	recv_rl = (struct virtchnl2_rss_lut *)vport->vc_msg;
+	if (rss_data->rss_lut_size == le16_to_cpu(recv_rl->lut_entries))
+		goto do_memcpy;
+
+	rss_data->rss_lut_size = le16_to_cpu(recv_rl->lut_entries);
+	kfree(rss_data->rss_lut);
+
+	lut_buf_size = rss_data->rss_lut_size * sizeof(u32);
+	rss_data->rss_lut = kzalloc(lut_buf_size, GFP_KERNEL);
+	if (!rss_data->rss_lut) {
+		rss_data->rss_lut_size = 0;
+		err = -ENOMEM;
+		goto free_mem;
+	}
+
+do_memcpy:
+	memcpy(rss_data->rss_lut, vport->vc_msg, rss_data->rss_lut_size);
+free_mem:
+	mutex_unlock(&vport->vc_buf_lock);
+	kfree(rl);
+
+	return err;
+}
+
+/**
+ * idpf_send_get_set_rss_key_msg - Send virtchnl get or set rss key message
+ * @vport: virtual port data structure
+ * @get: flag to set or get rss look up table
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_rss_key *recv_rk;
+	struct idpf_rss_data *rss_data;
+	struct virtchnl2_rss_key *rk;
+	int i, buf_size, err;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	buf_size = struct_size(rk, key_flex, rss_data->rss_key_size);
+	rk = kzalloc(buf_size, GFP_KERNEL);
+	if (!rk)
+		return -ENOMEM;
+
+	rk->vport_id = cpu_to_le32(vport->vport_id);
+	mutex_lock(&vport->vc_buf_lock);
+
+	if (get) {
+		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_KEY,
+				       buf_size, (u8 *)rk);
+		if (err)
+			goto error;
+
+		err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_RSS_KEY,
+					  IDPF_VC_GET_RSS_KEY_ERR);
+		if (err)
+			goto error;
+
+		recv_rk = (struct virtchnl2_rss_key *)vport->vc_msg;
+		if (rss_data->rss_key_size !=
+		    le16_to_cpu(recv_rk->key_len)) {
+			rss_data->rss_key_size =
+				min_t(u16, NETDEV_RSS_KEY_LEN,
+				      le16_to_cpu(recv_rk->key_len));
+			kfree(rss_data->rss_key);
+			rss_data->rss_key = kzalloc(rss_data->rss_key_size,
+						    GFP_KERNEL);
+			if (!rss_data->rss_key) {
+				rss_data->rss_key_size = 0;
+				err = -ENOMEM;
+				goto error;
+			}
+		}
+		memcpy(rss_data->rss_key, recv_rk->key_flex,
+		       rss_data->rss_key_size);
+	} else {
+		rk->key_len = cpu_to_le16(rss_data->rss_key_size);
+		for (i = 0; i < rss_data->rss_key_size; i++)
+			rk->key_flex[i] = rss_data->rss_key[i];
+
+		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_KEY,
+				       buf_size, (u8 *)rk);
+		if (err)
+			goto error;
+
+		err = idpf_wait_for_event(adapter, vport, IDPF_VC_SET_RSS_KEY,
+					  IDPF_VC_SET_RSS_KEY_ERR);
+	}
+
+error:
+	mutex_unlock(&vport->vc_buf_lock);
+	kfree(rk);
+
+	return err;
+}
+
 /**
  * idpf_fill_ptype_lookup - Fill L3 specific fields in ptype lookup table
  * @ptype: ptype lookup table
@@ -1871,9 +2287,11 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_msg;
 	struct idpf_vport_config *vport_config;
+	struct idpf_rss_data *rss_data;
 	u16 idx = vport->idx;
 
 	vport_config = adapter->vport_config[idx];
+	rss_data = &vport_config->user_config.rss_data;
 	vport_msg = adapter->vport_params_recvd[idx];
 
 	vport_config->max_q.max_txq = max_q->max_txq;
@@ -1886,6 +2304,10 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	vport->vport_type = le16_to_cpu(vport_msg->vport_type);
 	vport->vport_id = le32_to_cpu(vport_msg->vport_id);
 
+	rss_data->rss_key_size = min_t(u16, NETDEV_RSS_KEY_LEN,
+				       le16_to_cpu(vport_msg->rss_key_size));
+	rss_data->rss_lut_size = le16_to_cpu(vport_msg->rss_lut_size);
+
 	ether_addr_copy(vport->default_mac_addr, vport_msg->default_mac_addr);
 	vport->max_mtu = le16_to_cpu(vport_msg->max_mtu) - IDPF_PACKET_HDR_PAD;
 
@@ -1995,6 +2417,7 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 				       int num_qids,
 				       u32 q_type)
 {
+	struct idpf_queue *q;
 	int i, j, k = 0;
 
 	switch (q_type) {
@@ -2009,6 +2432,26 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 			}
 		}
 		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+			u16 num_rxq;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				num_rxq = rx_qgrp->splitq.num_rxq_sets;
+			else
+				num_rxq = rx_qgrp->singleq.num_rxq;
+
+			for (j = 0; j < num_rxq && k < num_qids; j++, k++) {
+				if (idpf_is_queue_model_split(vport->rxq_model))
+					q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+				else
+					q = rx_qgrp->singleq.rxqs[j];
+				q->q_id = qids[k];
+				q->q_type = VIRTCHNL2_QUEUE_TYPE_RX;
+			}
+		}
+		break;
 	case VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION:
 		for (i = 0; i < vport->num_txq_grp && k < num_qids; i++, k++) {
 			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
@@ -2018,6 +2461,18 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 				VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
 		}
 		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+			u8 num_bufqs = vport->num_bufqs_per_qgrp;
+
+			for (j = 0; j < num_bufqs && k < num_qids; j++, k++) {
+				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+				q->q_id = qids[k];
+				q->q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
+			}
+		}
+		break;
 	default:
 		break;
 	}
@@ -2070,8 +2525,22 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport)
 		goto mem_rel;
 	}
 
-	if (!idpf_is_queue_model_split(vport->txq_model))
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS,
+					   VIRTCHNL2_QUEUE_TYPE_RX,
+					   chunks);
+	if (num_ids < vport->num_rxq) {
+		err = -EINVAL;
 		goto mem_rel;
+	}
+	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
+					      VIRTCHNL2_QUEUE_TYPE_RX);
+	if (num_ids < vport->num_rxq) {
+		err = -EINVAL;
+		goto mem_rel;
+	}
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		goto check_rxq;
 
 	q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
 	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type, chunks);
@@ -2080,7 +2549,23 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport)
 		goto mem_rel;
 	}
 	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids, q_type);
-	if (num_ids < vport->num_complq)
+	if (num_ids < vport->num_complq) {
+		err = -EINVAL;
+		goto mem_rel;
+	}
+
+check_rxq:
+	if (!idpf_is_queue_model_split(vport->rxq_model))
+		goto mem_rel;
+
+	q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type, chunks);
+	if (num_ids < vport->num_bufq) {
+		err = -EINVAL;
+		goto mem_rel;
+	}
+	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids, q_type);
+	if (num_ids < vport->num_bufq)
 		err = -EINVAL;
 
 mem_rel:
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
