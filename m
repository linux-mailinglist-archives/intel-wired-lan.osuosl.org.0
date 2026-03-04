Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDcPKYRfqGmduAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB6F204664
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80AA781379;
	Wed,  4 Mar 2026 16:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 29zhBZ9MdvWW; Wed,  4 Mar 2026 16:36:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A39DC81364
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772642173;
	bh=5DCqAgnqDbAslR2RoXgoAW409P/CQNHiLMb69nVCC/A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rea2oUAVjHK8o63IKJZhSqDYRiCLKtm8Wg7ZV0y8KNiBlIbc+obNhGRGexxxRQqg1
	 lrkpXCorT/7Z3qSzqGP2ikHNJUQf184///UI1Zm6CjZVR6pMSazlqgA6uXd2FTUH7V
	 ZPwyvEMohOz7lbtOVcvzweZ+KtaY2ihBGdGYM3yr6zx/ScC8lTsdy3DkkXT7mjL6sg
	 FciJ3GUcjswcbJ9QJmSG6i6yjn4yr7wWw6HvkyBuykvdu6ZvGoiqK2mYBvTs3Z07VO
	 io8HCInVCOPHrZdWMfjf0uDqeqbkakT8yj6uq8Iluw4YIjS7zb3tpchN9+Sr/454Rn
	 XAPtSdbt/hlqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A39DC81364;
	Wed,  4 Mar 2026 16:36:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 84697231
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82B426086F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0H_j0wGBDY1I for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 16:36:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E51A6086D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E51A6086D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E51A6086D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:10 +0000 (UTC)
X-CSE-ConnectionGUID: tRvuQDHASQKK+qoZhR6aZQ==
X-CSE-MsgGUID: pyIiDsRWRqO8AymJfpV/Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="72906403"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="72906403"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:36:10 -0800
X-CSE-ConnectionGUID: jTaVhzu5QByvoLnfA4dngg==
X-CSE-MsgGUID: YLdtvP/RTkGRyJ1x6Z0wXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241404985"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 08:36:05 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 98269312C8;
 Wed,  4 Mar 2026 16:36:03 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed,  4 Mar 2026 17:03:39 +0100
Message-ID: <20260304160345.1340940-8-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260304160345.1340940-1-larysa.zaremba@intel.com>
References: <20260304160345.1340940-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772642170; x=1804178170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xsT59N4NUbcB5J49JMTpLAAeLxkARBASaG8PLm+l12g=;
 b=mu8wvhgWXzUG2HRkBWk+PNry1l/xaoPGrvmTPelC0kmgtJqJuLfyjSGL
 iBtF9B/dZ347PIaqrWUnwKwmPGb9MMn9ksmnjqLvFAswxi3OImUu2O2z9
 atBBIgq3cv2XG48fJ0V1NOQ+bPlqsXwhrGCwDDKqbbbZIQsscEfGSTpRW
 FRdiLlbL5HGxC/yvHs0lq2h8T83IA9nUssLLZA5iGgq9YgRENgpoooNNv
 Id+aFE434Ky3+iSZo80n14Xb0WJ97sfixSLdfijNQ0EeV85Cl4E+6tKJk
 iWrpwHmv78LgmwlgyHBuQfSMUxGAlTs1tjSmaM0df6hPzVa0czxQPWpyL
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mu8wvhgW
Subject: [Intel-wired-lan] [PATCH iwl-next v3 07/10] ixgbevf: support
 XDP_REDIRECT and .ndo_xdp_xmit
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
X-Rspamd-Queue-Id: 4AB6F204664
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

To fully support XDP_REDIRECT, utilize more libeth helpers in XDP Rx path,
hence save cached_ntu in the ring structure instead of stack.

ixgbevf-supported VFs usually have few queues, so use libeth_xdpsq_lock
functionality for XDP queue sharing. Adjust filling-in of XDP Tx
descriptors to use data from xdp frame. Otherwise, simply use libeth
helpers to implement .ndo_xdp_xmit().

While at it, fix a typo in libeth docs.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |   2 +
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 142 ++++++++----------
 include/net/libeth/xdp.h                      |   2 +-
 3 files changed, 64 insertions(+), 82 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index a27081ee764b..ea86679e4f81 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -98,6 +98,8 @@ struct ixgbevf_ring {
 		struct ixgbevf_tx_buffer *tx_buffer_info;
 		struct libeth_sqe *xdp_sqes;
 	};
+	struct libeth_xdpsq_lock xdpq_lock;
+	u32 cached_ntu;
 	unsigned long state;
 	struct ixgbevf_stats stats;
 	struct u64_stats_sync syncp;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 177eb141e22d..2f3b4954ded8 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -649,10 +649,6 @@ static inline void ixgbevf_irq_enable_queues(struct ixgbevf_adapter *adapter,
 	IXGBE_WRITE_REG(hw, IXGBE_VTEIMS, qmask);
 }
 
-#define IXGBEVF_XDP_PASS 0
-#define IXGBEVF_XDP_CONSUMED 1
-#define IXGBEVF_XDP_TX 2
-
 static void ixgbevf_clean_xdp_num(struct ixgbevf_ring *xdp_ring, bool in_napi,
 				  u16 to_clean)
 {
@@ -710,12 +706,14 @@ static u16 ixgbevf_tx_get_num_sent(struct ixgbevf_ring *xdp_ring)
 static void ixgbevf_clean_xdp_ring(struct ixgbevf_ring *xdp_ring)
 {
 	ixgbevf_clean_xdp_num(xdp_ring, false, xdp_ring->pending);
+	libeth_xdpsq_put(&xdp_ring->xdpq_lock, xdp_ring->netdev);
 }
 
 static u32 ixgbevf_prep_xdp_sq(void *xdpsq, struct libeth_xdpsq *sq)
 {
 	struct ixgbevf_ring *xdp_ring = xdpsq;
 
+	libeth_xdpsq_lock(&xdp_ring->xdpq_lock);
 	if (unlikely(ixgbevf_desc_unused(xdp_ring) < LIBETH_XDP_TX_BULK)) {
 		u16 to_clean = ixgbevf_tx_get_num_sent(xdp_ring);
 
@@ -749,7 +747,7 @@ static u32 ixgbevf_prep_xdp_sq(void *xdpsq, struct libeth_xdpsq *sq)
 	*sq = (struct libeth_xdpsq) {
 		.count = xdp_ring->count,
 		.descs = xdp_ring->desc,
-		.lock = NULL,
+		.lock = &xdp_ring->xdpq_lock,
 		.ntu = &xdp_ring->next_to_use,
 		.pending = &xdp_ring->pending,
 		.pool = NULL,
@@ -775,9 +773,13 @@ static void ixgbevf_xdp_xmit_desc(struct libeth_xdp_tx_desc desc, u32 i,
 		cmd_type |= IXGBE_TXD_CMD_EOP;
 
 	if (desc.flags & LIBETH_XDP_TX_FIRST) {
-		struct skb_shared_info *sinfo = sq->sqes[i].sinfo;
-		u16 full_len = desc.len + sinfo->xdp_frags_size;
+		struct libeth_sqe *sqe = &sq->sqes[i];
+		struct skb_shared_info *sinfo;
+		u16 full_len;
 
+		sinfo = sqe->type == LIBETH_SQE_XDP_TX ? sqe->sinfo :
+				     xdp_get_shared_info_from_frame(sqe->xdpf);
+		full_len = desc.len + sinfo->xdp_frags_size;
 		tx_desc->read.olinfo_status =
 			cpu_to_le32((full_len << IXGBE_ADVTXD_PAYLEN_SHIFT) |
 				    IXGBE_ADVTXD_CC);
@@ -787,76 +789,36 @@ static void ixgbevf_xdp_xmit_desc(struct libeth_xdp_tx_desc desc, u32 i,
 	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
 }
 
-LIBETH_XDP_DEFINE_START();
-LIBETH_XDP_DEFINE_FLUSH_TX(static ixgbevf_xdp_flush_tx, ixgbevf_prep_xdp_sq,
-			   ixgbevf_xdp_xmit_desc);
-LIBETH_XDP_DEFINE_END();
-
-static void ixgbevf_xdp_set_rs(struct ixgbevf_ring *xdp_ring, u32 cached_ntu)
+static void ixgbevf_xdp_rs_and_bump(void *xdpsq, bool sent, bool flush)
 {
-	u32 ltu = (xdp_ring->next_to_use ? : xdp_ring->count) - 1;
+	struct ixgbevf_ring *xdp_ring = xdpsq;
 	union ixgbe_adv_tx_desc *desc;
+	u32 ltu;
+
+	if ((!flush && xdp_ring->pending < xdp_ring->count - 1) ||
+	    xdp_ring->cached_ntu == xdp_ring->next_to_use)
+		return;
 
+	ltu = (xdp_ring->next_to_use ? : xdp_ring->count) - 1;
 	desc = IXGBEVF_TX_DESC(xdp_ring, ltu);
-	xdp_ring->xdp_sqes[cached_ntu].rs_idx = ltu + 1;
+	xdp_ring->xdp_sqes[xdp_ring->cached_ntu].rs_idx = ltu + 1;
 	desc->read.cmd_type_len |= cpu_to_le32(IXGBE_TXD_CMD);
-}
-
-static void ixgbevf_rx_finalize_xdp(struct libeth_xdp_tx_bulk *tx_bulk,
-				    bool xdp_xmit, u32 cached_ntu)
-{
-	struct ixgbevf_ring *xdp_ring = tx_bulk->xdpsq;
-
-	if (!xdp_xmit)
-		goto unlock;
-
-	if (tx_bulk->count)
-		ixgbevf_xdp_flush_tx(tx_bulk, LIBETH_XDP_TX_DROP);
-
-	ixgbevf_xdp_set_rs(xdp_ring, cached_ntu);
+	xdp_ring->cached_ntu = xdp_ring->next_to_use;
 
 	/* Finish descriptor writes before bumping tail */
 	wmb();
 	ixgbevf_write_tail(xdp_ring, xdp_ring->next_to_use);
-unlock:
-	rcu_read_unlock();
 }
 
-static int ixgbevf_run_xdp(struct libeth_xdp_tx_bulk *tx_bulk,
-			   struct libeth_xdp_buff *xdp)
-{
-	int result = IXGBEVF_XDP_PASS;
-	const struct bpf_prog *xdp_prog;
-	u32 act;
-
-	xdp_prog = tx_bulk->prog;
-	if (!xdp_prog)
-		goto xdp_out;
-
-	act = bpf_prog_run_xdp(xdp_prog, &xdp->base);
-	switch (act) {
-	case XDP_PASS:
-		break;
-	case XDP_TX:
-		result = IXGBEVF_XDP_TX;
-		if (!libeth_xdp_tx_queue_bulk(tx_bulk, xdp,
-					      ixgbevf_xdp_flush_tx))
-			result = IXGBEVF_XDP_CONSUMED;
-		break;
-	default:
-		bpf_warn_invalid_xdp_action(tx_bulk->dev, xdp_prog, act);
-		fallthrough;
-	case XDP_ABORTED:
-		trace_xdp_exception(tx_bulk->dev, xdp_prog, act);
-		fallthrough; /* handle aborts by dropping packet */
-	case XDP_DROP:
-		result = IXGBEVF_XDP_CONSUMED;
-		libeth_xdp_return_buff(xdp);
-		break;
-	}
-xdp_out:
-	return result;
-}
+LIBETH_XDP_DEFINE_START();
+LIBETH_XDP_DEFINE_FLUSH_TX(static ixgbevf_xdp_flush_tx, ixgbevf_prep_xdp_sq,
+			   ixgbevf_xdp_xmit_desc);
+LIBETH_XDP_DEFINE_FLUSH_XMIT(static ixgbevf_xdp_flush_xmit, ixgbevf_prep_xdp_sq,
+			     ixgbevf_xdp_xmit_desc);
+LIBETH_XDP_DEFINE_RUN_PROG(static ixgbevf_xdp_run_prog, ixgbevf_xdp_flush_tx);
+LIBETH_XDP_DEFINE_FINALIZE(static ixgbevf_xdp_finalize_xdp_napi,
+			   ixgbevf_xdp_flush_tx, ixgbevf_xdp_rs_and_bump);
+LIBETH_XDP_DEFINE_END();
 
 static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 				struct ixgbevf_ring *rx_ring,
@@ -867,17 +829,11 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	u16 cleaned_count = ixgbevf_desc_unused(rx_ring);
 	LIBETH_XDP_ONSTACK_BULK(xdp_tx_bulk);
 	LIBETH_XDP_ONSTACK_BUFF(xdp);
-	u32 cached_ntu;
-	bool xdp_xmit = false;
-	int xdp_res = 0;
 
 	libeth_xdp_init_buff(xdp, &rx_ring->xdp_stash, &rx_ring->xdp_rxq);
 	libeth_xdp_tx_init_bulk(&xdp_tx_bulk, rx_ring->xdp_prog,
 				adapter->netdev, adapter->xdp_ring,
 				adapter->num_xdp_queues);
-	if (xdp_tx_bulk.prog)
-		cached_ntu =
-			((struct ixgbevf_ring *)xdp_tx_bulk.xdpsq)->next_to_use;
 
 	while (likely(total_rx_packets < budget)) {
 		union ixgbe_adv_rx_desc *rx_desc;
@@ -910,11 +866,8 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		if (ixgbevf_is_non_eop(rx_ring, rx_desc))
 			continue;
 
-		xdp_res = ixgbevf_run_xdp(&xdp_tx_bulk, xdp);
-		if (xdp_res) {
-			if (xdp_res == IXGBEVF_XDP_TX)
-				xdp_xmit = true;
-
+		if (xdp_tx_bulk.prog &&
+		    !ixgbevf_xdp_run_prog(xdp, &xdp_tx_bulk)) {
 			xdp->data = NULL;
 			total_rx_packets++;
 			total_rx_bytes += xdp_get_buff_len(&xdp->base);
@@ -960,7 +913,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	/* place incomplete frames back on ring for completion */
 	libeth_xdp_save_buff(&rx_ring->xdp_stash, xdp);
 
-	ixgbevf_rx_finalize_xdp(&xdp_tx_bulk, xdp_xmit, cached_ntu);
+	ixgbevf_xdp_finalize_xdp_napi(&xdp_tx_bulk);
 
 	u64_stats_update_begin(&rx_ring->syncp);
 	rx_ring->stats.packets += total_rx_packets;
@@ -972,6 +925,23 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	return total_rx_packets;
 }
 
+static int ixgbevf_xdp_xmit(struct net_device *dev, int n,
+			    struct xdp_frame **frames, u32 flags)
+{
+	struct ixgbevf_adapter *adapter = netdev_priv(dev);
+
+	if (unlikely(test_bit(__IXGBEVF_DOWN, &adapter->state)))
+		return -ENETDOWN;
+
+	if (unlikely(!adapter->num_xdp_queues))
+		return -ENXIO;
+
+	return libeth_xdp_xmit_do_bulk(dev, n, frames, flags, adapter->xdp_ring,
+				       adapter->num_xdp_queues,
+				       ixgbevf_xdp_flush_xmit,
+				       ixgbevf_xdp_rs_and_bump);
+}
+
 /**
  * ixgbevf_poll - NAPI polling calback
  * @napi: napi struct with our devices info in it
@@ -1432,6 +1402,7 @@ static void ixgbevf_configure_tx_ring(struct ixgbevf_adapter *adapter,
 	ring->next_to_clean = 0;
 	ring->next_to_use = 0;
 	ring->pending = 0;
+	ring->cached_ntu = 0;
 
 	/* In order to avoid issues WTHRESH + PTHRESH should always be equal
 	 * to or less than the number of on chip descriptors, which is
@@ -1444,12 +1415,15 @@ static void ixgbevf_configure_tx_ring(struct ixgbevf_adapter *adapter,
 		   32;           /* PTHRESH = 32 */
 
 	/* reinitialize tx_buffer_info */
-	if (!ring_is_xdp(ring))
+	if (!ring_is_xdp(ring)) {
 		memset(ring->tx_buffer_info, 0,
 		       sizeof(struct ixgbevf_tx_buffer) * ring->count);
-	else
+	} else {
 		memset(ring->xdp_sqes, 0,
 		       sizeof(struct libeth_sqe) * ring->count);
+		libeth_xdpsq_get(&ring->xdpq_lock, ring->netdev,
+				 num_possible_cpus() > adapter->num_xdp_queues);
+	}
 
 	clear_bit(__IXGBEVF_HANG_CHECK_ARMED, &ring->state);
 	clear_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state);
@@ -4177,6 +4151,8 @@ static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog,
 
 	/* If transitioning XDP modes reconfigure rings */
 	if (!!prog != !!old_prog) {
+		xdp_features_clear_redirect_target(dev);
+
 		/* Hardware has to reinitialize queues and interrupts to
 		 * match packet buffer alignment. Unfortunately, the
 		 * hardware is not flexible enough to do this dynamically.
@@ -4194,6 +4170,9 @@ static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog,
 			xchg(&adapter->rx_ring[i]->xdp_prog, adapter->xdp_prog);
 	}
 
+	if (prog)
+		xdp_features_set_redirect_target(dev, true);
+
 	if (old_prog)
 		bpf_prog_put(old_prog);
 
@@ -4224,6 +4203,7 @@ static const struct net_device_ops ixgbevf_netdev_ops = {
 	.ndo_vlan_rx_kill_vid	= ixgbevf_vlan_rx_kill_vid,
 	.ndo_features_check	= ixgbevf_features_check,
 	.ndo_bpf		= ixgbevf_xdp,
+	.ndo_xdp_xmit		= ixgbevf_xdp_xmit,
 };
 
 static void ixgbevf_assign_netdev_ops(struct net_device *dev)
@@ -4356,7 +4336,7 @@ static int ixgbevf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			    NETIF_F_HW_VLAN_CTAG_TX;
 
 	netdev->priv_flags |= IFF_UNICAST_FLT;
-	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_RX_SG;
+	libeth_xdp_set_features_noredir(netdev, NULL, 0, NULL);
 
 	/* MTU range: 68 - 1504 or 9710 */
 	netdev->min_mtu = ETH_MIN_MTU;
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 898723ab62e8..2e2154ccecae 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -1094,7 +1094,7 @@ __libeth_xdp_xmit_do_bulk(struct libeth_xdp_tx_bulk *bq,
  * @xqs: array of XDPSQs driver structs
  * @nqs: number of active XDPSQs, the above array length
  * @fl: driver callback to flush an XDP xmit bulk
- * @fin: driver cabback to finalize the queue
+ * @fin: driver callback to finalize the queue
  *
  * If the driver has active XDPSQs, perform common checks and send the frames.
  * Finalize the queue, if requested.
-- 
2.52.0

