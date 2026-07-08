Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /eq+IV9pTmq5MAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 17:14:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E47C727D66
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 17:14:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=R7iabwLA;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3439240EA1;
	Wed,  8 Jul 2026 15:14:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AjECF80UtEn6; Wed,  8 Jul 2026 15:14:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 246B040ED1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783523676;
	bh=+NwaFbQurJkLkxv3t88pqD09RM+KLusoFgfplRyY/7Q=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R7iabwLAFEXuiVS0MAY0IpGT6nhhPwoSKv/FRwxnC02iaxyT19iqH/GAXZLXTaQ4z
	 OFPGyWXtJUVCvExirsyPyTZrwy387DKbhvhIdyaGek86vq+kQsq5kN4GoIEDQ0wFGq
	 kMaPQPJBTORA1XNZXUt5eyVKOe6QY+S0JQk5jKiRi5W2or2XF5F//t9ncgBItJN0Eb
	 xjsZk9p5CjuDQFxPxk16/wN5Ylwv1/lJ6HJvdsIhjbJoy3UBx66vyz1leMiE8zQpgA
	 aOH585sq5szXkzMVQ0kjFh5MZdIz1P3dDlSCghIReuFVS9HB7xZ2iZ6jZnfxAZ8Nh1
	 hrq4pHQHMsRxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 246B040ED1;
	Wed,  8 Jul 2026 15:14:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EC572315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 15:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D594540EA0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 15:14:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cfdzol1l7iL8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 15:14:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AA6140E9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AA6140E9F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AA6140E9F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 15:14:32 +0000 (UTC)
X-CSE-ConnectionGUID: tiR6PcwHTvqjIXJUD6t13g==
X-CSE-MsgGUID: DF7vDINlTb+NUQ0g+irIgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="101735214"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
 d="scan'208,223";a="101735214"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 08:14:31 -0700
X-CSE-ConnectionGUID: sHCD79rBRiO4zu96wCMiEQ==
X-CSE-MsgGUID: qpY9mRSsSlGbgPWXsoQtgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
 d="scan'208,223";a="257904707"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa003.jf.intel.com with ESMTP; 08 Jul 2026 08:14:28 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed,  8 Jul 2026 17:13:27 +0200
Message-ID: <20260708151327.1091570-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783523672; x=1815059672;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8fnpr6z9AuZi5VnTtsQcikSj+36E2NPhArizOu9ntgY=;
 b=YKB9yPs+uGh44Eazz54KT+Hj32iZVfroVCF4vlRicakDEMCx2JBpslCQ
 2woERvo1QkI8bwWKDPFNfQLW02NY8Iz37vEmf8+29zgmqprvNCaL7T1S9
 KvIvlEqFeI7FkOtg6qwJ8mDF50ddaeGdWDARAhTkEbTIWiueRx5o3ukwx
 tdcRELvL+92QqWyyMr0W8ZJsnE1TY1R2btIRYTYjzNAhReAThRgOMYW0Y
 3v/1h6YprL3QhvQWXuGu4WqRRGHxifQ4rT/06ZmNJvV17arB24Fx2FKxH
 /xPhJloc3+8jlDby+2493DCgGBWfIOojMyTS8ID62R38f8lUccFqxIN0f
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YKB9yPs+
Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: add flow-based XDP
 fallback for FWs without Tx FIFO support
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E47C727D66

From the first days of XDP implementation in idpf, it relied and
worked solely on top of the queue-based scheduling Tx mode, which
basically means simple FIFO. However, turned out not every firmware
supports this mode and XDP doesn't work there at all.

Since the flow-based scheduling Tx mode is mandatory and supported
by every FW, introduce a simple fallback guarded by a static key
to not hurt the more performant mode. The FB mode generates a
completion for each Tx descriptor and never guarantees that there
won't be any out-of-order completions. Serialize that using a
bitmap of completed descriptors and report contiguous blocks of
free bits to match XDP and XSk expectations and avoid further
code complication.

The usage of a bitmap on hotpath might sound scary, but this
fallback is able to reach around 70% of the QB mode's performance,
which is comparable to what ice gives us. The main bottlenecks are
unlikely()s and one completion per each descriptor, while in the QB
mode we have one completion per batch (which might contain 64 or
even 128 frames), plus the size of the completion descriptor is
8 bytes in this mode (4 bytes in the QB mode), which means a lot
of additional PCI traffic.

bloat-o-meter shows .text increase in about 2 Kb without adding new
functions or uninlining any of the existing ones. I played a bunch
with inlining and uninlining certain pieces or the whole fallback,
but the compiler collapses and optimizes libeth templates so hardly
so that each additional external call only makes things worse.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h      |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  11 +-
 drivers/net/ethernet/intel/idpf/xdp.h       |  60 +++++++++-
 include/net/libeth/xdp.h                    |  13 +++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |  10 +-
 drivers/net/ethernet/intel/idpf/xdp.c       | 115 +++++++++++++++++++-
 6 files changed, 201 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index ec1b75f039bb..5414bbbee07a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -384,6 +384,7 @@ struct idpf_vport {
 	struct idpf_tx_queue **txqs;
 	u16 num_txq;
 	u16 num_xdp_txq;
+	bool xdpsq_fb;
 	bool xdpsq_share;
 	struct bpf_prog *xdp_prog;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index a0d92adf11c4..ba6193f01552 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -625,11 +625,12 @@ libeth_cacheline_set_assert(struct idpf_rx_queue,
  * @clean_budget: singleq only, queue cleaning budget
  * @cleaned_pkts: Number of packets cleaned for the above said case
  * @refillq: Pointer to refill queue
+ * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the CP
  * @pending: number of pending descriptors to send in QB
  * @xdp_tx: number of pending &xdp_buff or &xdp_frame buffers
  * @timer: timer for XDP Tx queue cleanup
  * @xdp_lock: lock for XDP Tx queues sharing
- * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the CP
+ * @pending_mask: mask of buffers waiting for completion in the FB XDP mode
  * @tstamp_task: Work that handles Tx timestamp read
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_tx_queue_stats
@@ -689,6 +690,8 @@ struct idpf_tx_queue {
 			u16 cleaned_pkts;
 
 			struct idpf_sw_queue *refillq;
+
+			struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
 		};
 		struct {
 			u32 pending;
@@ -696,10 +699,11 @@ struct idpf_tx_queue {
 
 			struct libeth_xdpsq_timer *timer;
 			struct libeth_xdpsq_lock xdp_lock;
+
+			unsigned long *pending_mask;
 		};
 	};
 
-	struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
 	struct work_struct *tstamp_task;
 
 	struct u64_stats_sync stats_sync;
@@ -718,8 +722,7 @@ struct idpf_tx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
-			    104 +
-			    offsetof(struct idpf_tx_queue, cached_tstamp_caps) -
+			    96 + offsetof(struct idpf_tx_queue, tstamp_task) -
 			    offsetofend(struct idpf_tx_queue, timer) +
 			    offsetof(struct idpf_tx_queue, q_stats) -
 			    offsetofend(struct idpf_tx_queue, tstamp_task),
diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
index 63e56f7d43e0..3d01c535bd4c 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.h
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -8,6 +8,10 @@
 
 #include "idpf_txrx.h"
 
+struct idpf_q_vec_rsrc;
+
+DECLARE_STATIC_KEY_FALSE(idpf_xdp_fb);
+
 int idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq);
 int idpf_xdp_rxq_info_init_all(const struct idpf_q_vec_rsrc *rsrc);
 void idpf_xdp_rxq_info_deinit(struct idpf_rx_queue *rxq, u32 model);
@@ -21,6 +25,34 @@ void idpf_xdpsqs_put(const struct idpf_vport *vport);
 u32 idpf_xdpsq_poll(struct idpf_tx_queue *xdpsq, u32 budget);
 bool idpf_xdp_tx_flush_bulk(struct libeth_xdp_tx_bulk *bq, u32 flags);
 
+static inline void idpf_xdp_tx_xmit_fb(struct libeth_xdp_tx_desc desc, u32 i,
+				       const struct libeth_xdpsq *sq, u64 priv)
+{
+	struct idpf_flex_tx_sched_desc *tx_desc = sq->descs;
+	u32 cmd;
+
+	cmd = FIELD_PREP(IDPF_TXD_FLEX_FLOW_DTYPE_M,
+			 IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE);
+	if (desc.flags & LIBETH_XDP_TX_LAST)
+		cmd |= IDPF_TXD_FLEX_FLOW_CMD_EOP;
+	if (priv && (desc.flags & LIBETH_XDP_TX_CSUM))
+		cmd |= IDPF_TXD_FLEX_FLOW_CMD_CS_EN;
+
+	tx_desc = &tx_desc[i];
+	tx_desc->buf_addr = cpu_to_le64(desc.addr);
+
+#ifdef __LIBETH_WORD_ACCESS
+	*(u64 *)&tx_desc->qw1 = ((u64)desc.len << 48) | ((u64)i << 32) | cmd;
+#else
+	tx_desc->qw1.rxr_bufsize = cpu_to_le16(desc.len);
+	tx_desc->qw1.compl_tag = cpu_to_le16(i);
+	tx_desc->qw1.ts[0] = 0;
+	tx_desc->qw1.ts[1] = 0;
+	tx_desc->qw1.ts[2] = 0;
+	tx_desc->qw1.cmd_dtype = cmd;
+#endif
+}
+
 /**
  * idpf_xdp_tx_xmit - produce a single HW Tx descriptor out of XDP desc
  * @desc: XDP descriptor to pull the DMA address and length from
@@ -34,6 +66,14 @@ static inline void idpf_xdp_tx_xmit(struct libeth_xdp_tx_desc desc, u32 i,
 	struct idpf_flex_tx_desc *tx_desc = sq->descs;
 	u32 cmd;
 
+	if (static_branch_unlikely(&idpf_xdp_fb) &&
+	    idpf_queue_has(FLOW_SCH_EN,
+			   libeth_xdpsq_to_sq(sq, struct idpf_tx_queue,
+					      next_to_use))) {
+		idpf_xdp_tx_xmit_fb(desc, i, sq, priv);
+		return;
+	}
+
 	cmd = FIELD_PREP(IDPF_FLEX_TXD_QW1_DTYPE_M,
 			 IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2);
 	if (desc.flags & LIBETH_XDP_TX_LAST)
@@ -53,10 +93,27 @@ static inline void idpf_xdp_tx_xmit(struct libeth_xdp_tx_desc desc, u32 i,
 #endif
 }
 
+static inline void idpf_xdpsq_set_rs_fb(const struct idpf_tx_queue *xdpsq)
+{
+	u32 n = min(xdpsq->pending, xdpsq->desc_count - xdpsq->next_to_clean);
+
+	bitmap_set(xdpsq->pending_mask, xdpsq->next_to_clean, n);
+
+	n = xdpsq->pending - n;
+	if (n)
+		bitmap_set(xdpsq->pending_mask, 0, n);
+}
+
 static inline void idpf_xdpsq_set_rs(const struct idpf_tx_queue *xdpsq)
 {
 	u32 ntu, cmd;
 
+	if (static_branch_unlikely(&idpf_xdp_fb) &&
+	    idpf_queue_has(FLOW_SCH_EN, xdpsq)) {
+		idpf_xdpsq_set_rs_fb(xdpsq);
+		return;
+	}
+
 	ntu = xdpsq->next_to_use;
 	if (unlikely(!ntu))
 		ntu = xdpsq->desc_count;
@@ -84,7 +141,8 @@ static inline void idpf_xdpsq_update_tail(const struct idpf_tx_queue *xdpsq)
  * Set the RS bit ("end of batch"), bump the tail, and queue the cleanup timer.
  * To be called after a NAPI polling loop, at the end of .ndo_xdp_xmit() etc.
  */
-static inline void idpf_xdp_tx_finalize(void *_xdpsq, bool sent, bool flush)
+static __always_inline void idpf_xdp_tx_finalize(void *_xdpsq, bool sent,
+						 bool flush)
 {
 	struct idpf_tx_queue *xdpsq = _xdpsq;
 
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 898723ab62e8..ed61d83bda2d 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -430,6 +430,19 @@ struct libeth_xdpsq {
 	struct libeth_xdpsq_lock	*lock;
 };
 
+/**
+ * libeth_xdpsq_to_sq - get SQ pointer from an XDPSQ pointer
+ * @xdpsq: &libeth_xdpsq corresponding to the queue
+ * @type: typeof() of the driver Tx queue structure
+ * @member: name of the NTU field inside @type
+ *
+ * Some of the sending callbacks take only &libeth_xdpsq pointer and no pointer
+ * to the actual driver Tx queue structure. Use this helper to quickly jump to
+ * the latter when needed.
+ */
+#define libeth_xdpsq_to_sq(xdpsq, type, member)				      \
+	container_of_const((xdpsq)->ntu, type, member)
+
 /**
  * struct libeth_xdp_tx_desc - abstraction for an XDP Tx descriptor
  * @addr: DMA address of the frame
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 4b94e554d7fa..81e21a564da6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -227,7 +227,7 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 
 	idpf_xsk_setup_queue(vport, tx_q, VIRTCHNL2_QUEUE_TYPE_TX);
 
-	if (!idpf_queue_has(FLOW_SCH_EN, tx_q))
+	if (!idpf_queue_has(FLOW_SCH_EN, tx_q) || idpf_queue_has(XDP, tx_q))
 		return 0;
 
 	refillq = tx_q->refillq;
@@ -1058,6 +1058,11 @@ static void idpf_clean_queue_set(const struct idpf_queue_set *qs)
 			if (idpf_queue_has(XDP, q->txq)) {
 				q->txq->pending = 0;
 				q->txq->xdp_tx = 0;
+
+				if (static_branch_unlikely(&idpf_xdp_fb) &&
+				    idpf_queue_has(FLOW_SCH_EN, q->txq))
+					bitmap_zero(q->txq->pending_mask,
+						    q->txq->desc_count);
 			} else {
 				q->txq->txq_grp->num_completions_pending = 0;
 			}
@@ -1320,7 +1325,8 @@ static void idpf_txq_group_rel(struct idpf_q_vec_rsrc *rsrc)
 			if (!txq_grp->txqs[j])
 				continue;
 
-			if (idpf_queue_has(FLOW_SCH_EN, txq_grp->txqs[j])) {
+			if (idpf_queue_has(FLOW_SCH_EN, txq_grp->txqs[j]) &&
+			    !idpf_queue_has(XDP, txq_grp->txqs[j])) {
 				kfree(txq_grp->txqs[j]->refillq);
 				txq_grp->txqs[j]->refillq = NULL;
 			}
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index cbccd4546768..8a4e0a13364d 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -7,6 +7,8 @@
 #include "xdp.h"
 #include "xsk.h"
 
+DEFINE_STATIC_KEY_FALSE(idpf_xdp_fb);
+
 static int idpf_rxq_for_each(const struct idpf_q_vec_rsrc *rsrc,
 			     int (*fn)(struct idpf_rx_queue *rxq, void *arg),
 			     void *arg)
@@ -183,8 +185,8 @@ int idpf_xdpsqs_get(const struct idpf_vport *vport)
 		kfree(xdpsq->refillq);
 		xdpsq->refillq = NULL;
 
-		idpf_queue_clear(FLOW_SCH_EN, xdpsq);
-		idpf_queue_clear(FLOW_SCH_EN, xdpsq->complq);
+		idpf_queue_assign(FLOW_SCH_EN, xdpsq, vport->xdpsq_fb);
+		idpf_queue_assign(FLOW_SCH_EN, xdpsq->complq, vport->xdpsq_fb);
 		idpf_queue_set(NOIRQ, xdpsq);
 		idpf_queue_set(XDP, xdpsq);
 		idpf_queue_set(XDP, xdpsq->complq);
@@ -197,6 +199,28 @@ int idpf_xdpsqs_get(const struct idpf_vport *vport)
 		xdpsq->pending = 0;
 		xdpsq->xdp_tx = 0;
 		xdpsq->thresh = libeth_xdp_queue_threshold(xdpsq->desc_count);
+
+		if (static_branch_unlikely(&idpf_xdp_fb) &&
+		    idpf_queue_has(FLOW_SCH_EN, xdpsq)) {
+			xdpsq->pending_mask =
+				bitmap_zalloc_node(xdpsq->desc_count,
+						   GFP_KERNEL,
+						   cpu_to_mem(i - sqs));
+			if (xdpsq->pending_mask)
+				continue;
+
+			for (int j = i - 1; j >= sqs; j--) {
+				xdpsq = vport->txqs[j];
+
+				if (idpf_queue_has(FLOW_SCH_EN, xdpsq))
+					bitmap_free(xdpsq->pending_mask);
+			}
+
+			for (u32 j = 0; j < vport->num_xdp_txq; j++)
+				kfree(timers[j]);
+
+			return -ENOMEM;
+		}
 	}
 
 	return 0;
@@ -222,6 +246,12 @@ void idpf_xdpsqs_put(const struct idpf_vport *vport)
 		libeth_xdpsq_deinit_timer(xdpsq->timer);
 		libeth_xdpsq_put(&xdpsq->xdp_lock, dev);
 
+		if (static_branch_unlikely(&idpf_xdp_fb) &&
+		    idpf_queue_has(FLOW_SCH_EN, xdpsq)) {
+			bitmap_free(xdpsq->pending_mask);
+			xdpsq->pending_mask = NULL;
+		}
+
 		kfree(xdpsq->timer);
 		xdpsq->refillq = NULL;
 		idpf_queue_clear(NOIRQ, xdpsq);
@@ -250,6 +280,65 @@ static int idpf_xdp_parse_cqe(const struct idpf_splitq_4b_tx_compl_desc *desc,
 	return upper_16_bits(val);
 }
 
+static u32 idpf_xdpsq_poll_fb(struct idpf_tx_queue *xdpsq, u32 budget)
+{
+	struct idpf_compl_queue *cq = xdpsq->complq;
+	unsigned long *mask = xdpsq->pending_mask;
+	u32 done_frames, tx_cnt, new_ntc;
+	u32 ntc = cq->next_to_clean;
+	u32 cnt = cq->desc_count;
+	bool gen;
+
+	gen = idpf_queue_has(GEN_CHK, cq);
+
+	for (done_frames = 0; done_frames < budget; ) {
+		int ret;
+
+		ret = idpf_xdp_parse_cqe(&cq->comp[ntc].common, gen);
+		if (ret >= 0) {
+			__clear_bit(ret, mask);
+			done_frames++;
+
+			goto next;
+		}
+
+		switch (ret) {
+		case -ENODATA:
+			goto out;
+		case -EINVAL:
+			break;
+		}
+
+next:
+		if (unlikely(++ntc == cnt)) {
+			ntc = 0;
+			gen = !gen;
+			idpf_queue_change(GEN_CHK, cq);
+		}
+	}
+
+out:
+	cq->next_to_clean = ntc;
+
+	if (unlikely(!done_frames))
+		return 0;
+
+	tx_cnt = xdpsq->desc_count;
+
+	/* Don't go past next_to_use */
+	__set_bit(xdpsq->next_to_use, mask);
+
+	new_ntc = find_next_bit(mask, tx_cnt, xdpsq->next_to_clean);
+	done_frames = new_ntc - xdpsq->next_to_clean;
+
+	if (new_ntc == tx_cnt)
+		done_frames += find_first_bit(mask, tx_cnt);
+
+	__clear_bit(xdpsq->next_to_use, mask);
+
+	return done_frames;
+}
+
 u32 idpf_xdpsq_poll(struct idpf_tx_queue *xdpsq, u32 budget)
 {
 	struct idpf_compl_queue *cq = xdpsq->complq;
@@ -260,6 +349,10 @@ u32 idpf_xdpsq_poll(struct idpf_tx_queue *xdpsq, u32 budget)
 	u32 done_frames;
 	bool gen;
 
+	if (static_branch_unlikely(&idpf_xdp_fb) &&
+	    idpf_queue_has(FLOW_SCH_EN, xdpsq))
+		return idpf_xdpsq_poll_fb(xdpsq, budget);
+
 	gen = idpf_queue_has(GEN_CHK, cq);
 
 	for (done_frames = 0; done_frames < budget; ) {
@@ -479,6 +572,24 @@ static int idpf_xdp_setup_prog(struct idpf_vport *vport,
 		return -ENOSPC;
 	}
 
+	vport->xdpsq_fb = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+					   VIRTCHNL2_CAP_SPLITQ_QSCHED);
+	if (!vport->xdpsq_fb)
+		goto reset;
+
+	if (prog) {
+		bool warn = !static_key_enabled(&idpf_xdp_fb);
+
+		static_branch_inc(&idpf_xdp_fb);
+
+		if (warn && net_ratelimit())
+			netdev_warn(vport->netdev,
+				    "The FW doesn't support Tx in FIFO mode, XDP Tx performance might be suboptimal\n");
+	} else {
+		static_branch_dec(&idpf_xdp_fb);
+	}
+
+reset:
 	old = cfg->user_config.xdp_prog;
 	cfg->user_config.xdp_prog = prog;
 
-- 
2.55.0

