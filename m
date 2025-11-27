Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA00C8D298
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 08:45:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1367160BA8;
	Thu, 27 Nov 2025 07:45:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ve_dZCO6oObk; Thu, 27 Nov 2025 07:45:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D96EC60B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764229535;
	bh=w9fO4XvkKLuJkWyqQ91OYfNBbtOMl+a3IF2jFecNz/o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TFeJaDipLR7hI+e8l2POEoYmgSvCUFvVWXTkm2Admz9BP84oV72gGHwRpA0GpOmhE
	 Vygf5Ro9qPB6/j7CDXVUDHjxbu0kH5sokN9A2SY7oFKfkXGjLK+xuUUirWteFsrbsP
	 R74q6GLrLTR9pEGLxBbQh4452H2mj16bebsK+SDeioBRZNiWYwZ8CbUuROiWYlWxpq
	 LyHkTh51YKwvySbP5REwZ1SZOcz3sowpDHMUrE76kOm8u2R3rZ1enu9mrnJVq4r8ZN
	 nyzNo7ry10M4JzbkQ5EvFZuJnJA+8hI/K4ovlb3JA03tJWlHObA7coEPBajVZDKbQj
	 xI4qX53IpTSbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D96EC60B8E;
	Thu, 27 Nov 2025 07:45:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E306A708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA8EB60B63
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:45:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bGdkvy3StH0n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 07:45:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0E5EE60B60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E5EE60B60
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E5EE60B60
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:45:32 +0000 (UTC)
X-CSE-ConnectionGUID: Bdenw4i3QbmBS17f/ud9ag==
X-CSE-MsgGUID: b6/t5g9pT8ucU1us0Z1Ymw==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66163810"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="66163810"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 23:45:22 -0800
X-CSE-ConnectionGUID: CJhGAkj+S8yzAEFbdlo3jw==
X-CSE-MsgGUID: o359mKLNTsKiYdromlvE7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="193263876"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa008.jf.intel.com with ESMTP; 26 Nov 2025 23:45:19 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 50276A0; Thu, 27 Nov 2025 08:45:17 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 27 Nov 2025 08:44:52 +0100
Message-ID: <20251127074516.2385922-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764229533; x=1795765533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3tQ7dfVOCFrM7EamkaD4WsIwnebOZw+oja+WkMdpyHc=;
 b=lC43C5qhRiguLPx86SB+sgsyXR2oh2Et97qTL/NcRitZbm7hx1mP6aU3
 5L85o/vF8JTwIpfGTdEbM9ImjBtDdcVsISGeJQKFzEFkN3f/57u7KyMzT
 gsh2BXfU5CDFxFkPUrZOdwFjYRWRcgIT/oo1ny2Jw1tAs77WsYgnAm9FS
 rPSk8dFZ+lj8UfAYVHwiiZj4mUl1rDPaSfbO+QffoNDwxUHca748qGcGU
 o7luGP9MKkbhKt0FRgL1FQj8Mc0xmzSc5CKIaQGrDoIX+A8LRV7OpNs2c
 KHhLbT2l4G2IcXBlx2/Qdxzz83TuAcXtV5tbdL77hXBQFfIjqboUBQj3S
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lC43C5qh
Subject: [Intel-wired-lan] [PATCH net-next v2 1/1] idpf: Fix kernel-doc
 descriptions to avoid warnings
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

In many functions the Return section is missing. Fix kernel-doc
descriptions to address that and other warnings.

Before the change:

$ scripts/kernel-doc -none -Wreturn drivers/net/ethernet/intel/idpf/idpf_txrx.c 2>&1 | wc -l
85

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
v2: collected tags
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 96 +++++++++++++--------
 1 file changed, 59 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 828f7c444d30..28eb34c35d57 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -19,6 +19,8 @@ LIBETH_SQE_CHECK_PRIV(u32);
  * Make sure we don't exceed maximum scatter gather buffers for a single
  * packet.
  * TSO case has been handled earlier from idpf_features_check().
+ *
+ * Return: %true if skb exceeds max descriptors per packet, %false otherwise.
  */
 static bool idpf_chk_linearize(const struct sk_buff *skb,
 			       unsigned int max_bufs,
@@ -172,7 +174,7 @@ static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
  * idpf_tx_buf_alloc_all - Allocate memory for all buffer resources
  * @tx_q: queue for which the buffers are allocated
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
 {
@@ -196,7 +198,7 @@ static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
  * @vport: vport to allocate resources for
  * @tx_q: the tx ring to set up
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 			      struct idpf_tx_queue *tx_q)
@@ -297,7 +299,7 @@ static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
  * idpf_tx_desc_alloc_all - allocate all queues Tx resources
  * @vport: virtual port private structure
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 {
@@ -548,7 +550,7 @@ static void idpf_rx_buf_hw_update(struct idpf_buf_queue *bufq, u32 val)
  * idpf_rx_hdr_buf_alloc_all - Allocate memory for header buffers
  * @bufq: ring to use
  *
- * Returns 0 on success, negative on failure.
+ * Return: 0 on success, negative on failure.
  */
 static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
 {
@@ -600,7 +602,7 @@ static void idpf_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
  * @bufq: buffer queue to post to
  * @buf_id: buffer id to post
  *
- * Returns false if buffer could not be allocated, true otherwise.
+ * Return: %false if buffer could not be allocated, %true otherwise.
  */
 static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
 {
@@ -649,7 +651,7 @@ static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
  * @bufq: buffer queue to post working set to
  * @working_set: number of buffers to put in working set
  *
- * Returns true if @working_set bufs were posted successfully, false otherwise.
+ * Return: %true if @working_set bufs were posted successfully, %false otherwise.
  */
 static bool idpf_rx_post_init_bufs(struct idpf_buf_queue *bufq,
 				   u16 working_set)
@@ -717,7 +719,7 @@ static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
  * idpf_rx_buf_alloc_all - Allocate memory for all buffer resources
  * @rxbufq: queue for which the buffers are allocated
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
 {
@@ -745,7 +747,7 @@ static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
  * @bufq: buffer queue to create page pool for
  * @type: type of Rx buffers to allocate
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
 			     enum libeth_fqe_type type)
@@ -779,7 +781,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
  * idpf_rx_bufs_init_all - Initialize all RX bufs
  * @vport: virtual port struct
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 {
@@ -834,7 +836,7 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
  * @vport: vport to allocate resources for
  * @rxq: Rx queue for which the resources are setup
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_rx_desc_alloc(const struct idpf_vport *vport,
 			      struct idpf_rx_queue *rxq)
@@ -896,7 +898,7 @@ static int idpf_bufq_desc_alloc(const struct idpf_vport *vport,
  * idpf_rx_desc_alloc_all - allocate all RX queues resources
  * @vport: virtual port structure
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 {
@@ -1424,7 +1426,7 @@ void idpf_vport_queues_rel(struct idpf_vport *vport)
  * dereference the queue from queue groups.  This allows us to quickly pull a
  * txq based on a queue index.
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
 {
@@ -1557,7 +1559,7 @@ void idpf_vport_calc_num_q_desc(struct idpf_vport *vport)
  * @vport_msg: message to fill with data
  * @max_q: vport max queue info
  *
- * Return 0 on success, error value on failure.
+ * Return: 0 on success, error value on failure.
  */
 int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 			     struct virtchnl2_create_vport *vport_msg,
@@ -1692,7 +1694,7 @@ static void idpf_rxq_set_descids(const struct idpf_vport *vport,
  * @vport: vport to allocate txq groups for
  * @num_txq: number of txqs to allocate for each group
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 {
@@ -1784,7 +1786,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
  * @vport: vport to allocate rxq groups for
  * @num_rxq: number of rxqs to allocate for each group
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 {
@@ -1913,7 +1915,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
  * idpf_vport_queue_grp_alloc_all - Allocate all queue groups/resources
  * @vport: vport with qgrps to allocate
  *
- * Returns 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
 {
@@ -1942,8 +1944,9 @@ static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
  * idpf_vport_queues_alloc - Allocate memory for all queues
  * @vport: virtual port
  *
- * Allocate memory for queues associated with a vport.  Returns 0 on success,
- * negative on failure.
+ * Allocate memory for queues associated with a vport.
+ *
+ * Return: 0 on success, negative on failure.
  */
 int idpf_vport_queues_alloc(struct idpf_vport *vport)
 {
@@ -2170,7 +2173,7 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
  * @budget: Used to determine if we are in netpoll
  * @cleaned: returns number of packets cleaned
  *
- * Returns true if there's any budget left (e.g. the clean is finished)
+ * Return: %true if there's any budget left (e.g. the clean is finished)
  */
 static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 				 int *cleaned)
@@ -2396,7 +2399,7 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
 }
 
 /**
- * idpf_tx_splitq_has_room - check if enough Tx splitq resources are available
+ * idpf_txq_has_room - check if enough Tx splitq resources are available
  * @tx_q: the queue to be checked
  * @descs_needed: number of descriptors required for this packet
  * @bufs_needed: number of Tx buffers required for this packet
@@ -2527,6 +2530,8 @@ unsigned int idpf_tx_res_count_required(struct idpf_tx_queue *txq,
  * idpf_tx_splitq_bump_ntu - adjust NTU and generation
  * @txq: the tx ring to wrap
  * @ntu: ring index to bump
+ *
+ * Return: the next ring index hopping to 0 when wraps around
  */
 static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_tx_queue *txq, u16 ntu)
 {
@@ -2795,7 +2800,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
  * @skb: pointer to skb
  * @off: pointer to struct that holds offload parameters
  *
- * Returns error (negative) if TSO was requested but cannot be applied to the
+ * Return: error (negative) if TSO was requested but cannot be applied to the
  * given skb, 0 if TSO does not apply to the given skb, or 1 otherwise.
  */
 int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
@@ -2873,6 +2878,8 @@ int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
  *
  * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
  * ring entry to reflect that this index is a context descriptor
+ *
+ * Return: pointer to the next descriptor
  */
 static union idpf_flex_tx_ctx_desc *
 idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
@@ -2891,6 +2898,8 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
  * idpf_tx_drop_skb - free the SKB and bump tail if necessary
  * @tx_q: queue to send buffer on
  * @skb: pointer to skb
+ *
+ * Return: always NETDEV_TX_OK
  */
 netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb)
 {
@@ -2992,7 +3001,7 @@ static bool idpf_tx_splitq_need_re(struct idpf_tx_queue *tx_q)
  * @skb: send buffer
  * @tx_q: queue to send buffer on
  *
- * Returns NETDEV_TX_OK if sent, else an error code
+ * Return: NETDEV_TX_OK if sent, else an error code
  */
 static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 					struct idpf_tx_queue *tx_q)
@@ -3118,7 +3127,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
  * @skb: send buffer
  * @netdev: network interface device structure
  *
- * Returns NETDEV_TX_OK if sent, else an error code
+ * Return: NETDEV_TX_OK if sent, else an error code
  */
 netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev)
 {
@@ -3268,10 +3277,10 @@ idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *
  * @rx_desc: Receive descriptor
  * @decoded: Decoded Rx packet type related fields
  *
- * Return 0 on success and error code on failure
- *
  * Populate the skb fields with the total number of RSC segments, RSC payload
  * length and packet type.
+ *
+ * Return: 0 on success and error code on failure
  */
 static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 		       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
@@ -3369,6 +3378,8 @@ idpf_rx_hwtstamp(const struct idpf_rx_queue *rxq,
  * This function checks the ring, descriptor, and packet information in
  * order to populate the hash, checksum, protocol, and
  * other fields within the skb.
+ *
+ * Return: 0 on success and error code on failure
  */
 static int
 __idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
@@ -3463,6 +3474,7 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe *hdr,
  * @stat_err_field: field from descriptor to test bits in
  * @stat_err_bits: value to mask
  *
+ * Return: %true if any of given @stat_err_bits are set, %false otherwise.
  */
 static bool idpf_rx_splitq_test_staterr(const u8 stat_err_field,
 					const u8 stat_err_bits)
@@ -3474,8 +3486,8 @@ static bool idpf_rx_splitq_test_staterr(const u8 stat_err_field,
  * idpf_rx_splitq_is_eop - process handling of EOP buffers
  * @rx_desc: Rx descriptor for current buffer
  *
- * If the buffer is an EOP buffer, this function exits returning true,
- * otherwise return false indicating that this is in fact a non-EOP buffer.
+ * Return: %true if the buffer is an EOP buffer, %false otherwise, indicating
+ * that this is in fact a non-EOP buffer.
  */
 static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
@@ -3494,7 +3506,7 @@ static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_de
  * expensive overhead for IOMMU access this provides a means of avoiding
  * it by maintaining the mapping of the page to the system.
  *
- * Returns amount of work completed
+ * Return: amount of work completed
  */
 static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 {
@@ -3624,7 +3636,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
  * @buf_id: buffer ID
  * @buf_desc: Buffer queue descriptor
  *
- * Return 0 on success and negative on failure.
+ * Return: 0 on success and negative on failure.
  */
 static int idpf_rx_update_bufq_desc(struct idpf_buf_queue *bufq, u32 buf_id,
 				    struct virtchnl2_splitq_rx_buf_desc *buf_desc)
@@ -3751,6 +3763,7 @@ static void idpf_rx_clean_refillq_all(struct idpf_buf_queue *bufq, int nid)
  * @irq: interrupt number
  * @data: pointer to a q_vector
  *
+ * Return: always IRQ_HANDLED
  */
 static irqreturn_t idpf_vport_intr_clean_queues(int __always_unused irq,
 						void *data)
@@ -3872,6 +3885,8 @@ static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
 /**
  * idpf_vport_intr_buildreg_itr - Enable default interrupt generation settings
  * @q_vector: pointer to q_vector
+ *
+ * Return: value to be written back to HW to enable interrupt generation
  */
 static u32 idpf_vport_intr_buildreg_itr(struct idpf_q_vector *q_vector)
 {
@@ -4003,6 +4018,8 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 /**
  * idpf_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
  * @vport: main vport structure
+ *
+ * Return: 0 on success, negative on failure
  */
 static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 {
@@ -4213,7 +4230,7 @@ static void idpf_vport_intr_napi_ena_all(struct idpf_vport *vport)
  * @budget: Used to determine if we are in netpoll
  * @cleaned: returns number of packets cleaned
  *
- * Returns false if clean is not complete else returns true
+ * Return: %false if clean is not complete else returns %true
  */
 static bool idpf_tx_splitq_clean_all(struct idpf_q_vector *q_vec,
 				     int budget, int *cleaned)
@@ -4240,7 +4257,7 @@ static bool idpf_tx_splitq_clean_all(struct idpf_q_vector *q_vec,
  * @budget: Used to determine if we are in netpoll
  * @cleaned: returns number of packets cleaned
  *
- * Returns false if clean is not complete else returns true
+ * Return: %false if clean is not complete else returns %true
  */
 static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
 				     int *cleaned)
@@ -4283,6 +4300,8 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
  * idpf_vport_splitq_napi_poll - NAPI handler
  * @napi: struct from which you get q_vector
  * @budget: budget provided by stack
+ *
+ * Return: how many packets were cleaned
  */
 static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 {
@@ -4431,7 +4450,9 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
  * idpf_vport_intr_init_vec_idx - Initialize the vector indexes
  * @vport: virtual port
  *
- * Initialize vector indexes with values returened over mailbox
+ * Initialize vector indexes with values returned over mailbox.
+ *
+ * Return: 0 on success, negative on failure
  */
 static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 {
@@ -4497,8 +4518,9 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
  * idpf_vport_intr_alloc - Allocate memory for interrupt vectors
  * @vport: virtual port
  *
- * We allocate one q_vector per queue interrupt. If allocation fails we
- * return -ENOMEM.
+ * Allocate one q_vector per queue interrupt.
+ *
+ * Return: 0 on success, if allocation fails we return -ENOMEM.
  */
 int idpf_vport_intr_alloc(struct idpf_vport *vport)
 {
@@ -4585,7 +4607,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
  * idpf_vport_intr_init - Setup all vectors for the given vport
  * @vport: virtual port
  *
- * Returns 0 on success or negative on failure
+ * Return: 0 on success or negative on failure
  */
 int idpf_vport_intr_init(struct idpf_vport *vport)
 {
@@ -4624,7 +4646,7 @@ void idpf_vport_intr_ena(struct idpf_vport *vport)
  * idpf_config_rss - Send virtchnl messages to configure RSS
  * @vport: virtual port
  *
- * Return 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 int idpf_config_rss(struct idpf_vport *vport)
 {
@@ -4660,7 +4682,7 @@ static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
  * idpf_init_rss - Allocate and initialize RSS resources
  * @vport: virtual port
  *
- * Return 0 on success, negative on failure
+ * Return: 0 on success, negative on failure
  */
 int idpf_init_rss(struct idpf_vport *vport)
 {
-- 
2.50.1

