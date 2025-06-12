Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56065AD7955
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3760F613F8;
	Thu, 12 Jun 2025 17:49:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C0xWOVFF0QVP; Thu, 12 Jun 2025 17:49:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF8E8610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750546;
	bh=KniTeR+q9yESklD127SjTL29o3vYFUY/qAIA7BcPpUw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eP1fiJP5xhvM72UNHxTvodc1rl5bR110Q4z4mSlpYVJviKqGoG1bhPkx/LX16vXgy
	 fz87x49xS/CtQtkRgFXuGdNU5vVRt76l5k0ELTMty4Hy4CV6Y0CJuT5N5M5UKlQ42t
	 epPJ87YQ5qT4hxEd/MhuZ5KX13hqamtMtp5JNuPEQua+23njbqoPDsPMAI6oUCBSMC
	 WrS4cEJgrf9TNBuLiXhCy/zXJ35d9AMMex4hjdGg2uEcS9UUY0F1yxJYoC/0FWJbYz
	 Wv7OC5onHd9+S5qOlg1MHsBILf89R00Do46H16GbP4Q29oyjTSBvXtKew+o4dF/6DB
	 0uecXnhu9yxjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF8E8610A6;
	Thu, 12 Jun 2025 17:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 208BD1E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1282C81EE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vo2sxg18PdL7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:10:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18334821A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18334821A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18334821A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:14 +0000 (UTC)
X-CSE-ConnectionGUID: jUhWcmqaQCOoRTNO6l30hA==
X-CSE-MsgGUID: EjGuR+1ISYqjlX5I+L1Y/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55739018"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55739018"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:10:14 -0700
X-CSE-ConnectionGUID: J7Oeth1DQ0Ce91nYxdrShA==
X-CSE-MsgGUID: pFnFAt6dTrqlavEgIRLizw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468599"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:10:09 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 12 Jun 2025 18:02:27 +0200
Message-ID: <20250612160234.68682-11-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744614; x=1781280614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nP9uCVpAswOJgG9X/aRethiYqj2rinuhNJFTculHLcI=;
 b=fxxC9DRezhrgnHP/GHujCk1w0paNiQvErZjaPKkajT6X9/G+HpKa8HKI
 BJIKIyc1AyrLzKoOhN53jvaIAgfnveCMwZ5jJjgEmUP30jxWEUM21tfAA
 scwab3a0NWWImVvQSYNSOfdYVAx62KRy/YjS2TR9iMriOKF4EKzfrX5J5
 /iA9BXjL5SLpBms3DfqlCJEHCNWKCNcPfhV+emCCb5zPGoj5JKf2XOs59
 4KGMMXYpINnEOyTNeCFzwBjMAwR/nG7EKLLEK27kHo/K0WRb6KjtMpkcc
 Nmg3D00OfNyPC7jIyD8K+x66XG+Pr7cnXT67E2TVsu4bFEAmZXrU++iV4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fxxC9DRe
Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/17] libeth: xdp: add XDP
 prog run and verdict result handling
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

Running a prog and handling the verdicts, up to napi_gro_receive()
is also pretty generic code not really differing between vendors
(except for Tx descriptor filling and Rx descriptor parsing).

Define a couple inlines to do that. The inline callbacks a driver
needs to pass is mentioned above: Tx descriptor filling for XDP_TX,
populating skb with the descriptor data for XDP_PASS, finalizing
XDPSQs after the polling loop for XDP_TX (kicking the HW to start
sending).
The populate callback passes only &libeth_xdp_buff assuming buff::desc
pointer is enough, plus you can always get the corresponding Rx queue
structure via container_of(buff::rxq). If not, a driver can extend
the buff with more fields directly on the stack without touching
libeth_xdp definitions.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/types.h              |  22 ++
 include/net/libeth/xdp.h                | 281 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/libeth/xdp.c |  27 +++
 3 files changed, 330 insertions(+)

diff --git a/include/net/libeth/types.h b/include/net/libeth/types.h
index 7b27c1966d45..cf1d78a9dc38 100644
--- a/include/net/libeth/types.h
+++ b/include/net/libeth/types.h
@@ -6,6 +6,28 @@
 
 #include <linux/workqueue.h>
 
+/* Stats */
+
+/**
+ * struct libeth_rq_napi_stats - "hot" counters to update in Rx polling loop
+ * @packets: received frames counter
+ * @bytes: sum of bytes of received frames above
+ * @fragments: sum of fragments of received S/G frames
+ * @hsplit: number of frames the device performed the header split for
+ * @raw: alias to access all the fields as an array
+ */
+struct libeth_rq_napi_stats {
+	union {
+		struct {
+							u32 packets;
+							u32 bytes;
+							u32 fragments;
+							u32 hsplit;
+		};
+		DECLARE_FLEX_ARRAY(u32, raw);
+	};
+};
+
 /**
  * struct libeth_sq_napi_stats - "hot" counters to update in Tx completion loop
  * @packets: completed frames counter
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 780447cdabc1..db99bc690eb6 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -20,6 +20,7 @@ enum {
 	LIBETH_XDP_DROP			= BIT(0),
 	LIBETH_XDP_ABORTED		= BIT(1),
 	LIBETH_XDP_TX			= BIT(2),
+	LIBETH_XDP_REDIRECT		= BIT(3),
 };
 
 /*
@@ -353,6 +354,7 @@ static_assert(offsetof(struct libeth_xdp_tx_frame, frag.len) ==
  * @prog: corresponding active XDP program, %NULL for .ndo_xdp_xmit()
  * @dev: &net_device which the frames are transmitted on
  * @xdpsq: shortcut to the corresponding driver-specific XDPSQ structure
+ * @act_mask: Rx only, mask of all the XDP prog verdicts for that NAPI session
  * @count: current number of frames in @bulk
  * @bulk: array of queued frames for bulk Tx
  *
@@ -366,6 +368,7 @@ struct libeth_xdp_tx_bulk {
 	struct net_device		*dev;
 	void				*xdpsq;
 
+	u32				act_mask;
 	u32				count;
 	struct libeth_xdp_tx_frame	bulk[LIBETH_XDP_TX_BULK];
 } __aligned(sizeof(struct libeth_xdp_tx_frame));
@@ -999,6 +1002,40 @@ __libeth_xdp_xmit_do_bulk(struct libeth_xdp_tx_bulk *bq,
 
 /* Rx polling path */
 
+/**
+ * libeth_xdp_tx_init_bulk - initialize an XDP Tx bulk for Rx NAPI poll
+ * @bq: bulk to initialize
+ * @prog: RCU pointer to the XDP program (can be %NULL)
+ * @dev: target &net_device
+ * @xdpsqs: array of driver XDPSQ structs
+ * @num: number of active XDPSQs, the above array length
+ *
+ * Should be called on an onstack XDP Tx bulk before the NAPI polling loop.
+ * Initializes all the needed fields to run libeth_xdp functions. If @num == 0,
+ * assumes XDP is not enabled.
+ */
+#define libeth_xdp_tx_init_bulk(bq, prog, dev, xdpsqs, num)		      \
+	__libeth_xdp_tx_init_bulk(bq, prog, dev, xdpsqs, num, false,	      \
+				  __UNIQUE_ID(bq_), __UNIQUE_ID(nqs_))
+
+#define __libeth_xdp_tx_init_bulk(bq, pr, d, xdpsqs, num, ub, un) do {	      \
+	typeof(bq) ub = (bq);						      \
+	u32 un = (num);							      \
+									      \
+	rcu_read_lock();						      \
+									      \
+	if (un) {							      \
+		ub->prog = rcu_dereference(pr);				      \
+		ub->dev = (d);						      \
+		ub->xdpsq = (xdpsqs)[libeth_xdpsq_id(un)];		      \
+	} else {							      \
+		ub->prog = NULL;					      \
+	}								      \
+									      \
+	ub->act_mask = 0;						      \
+	ub->count = 0;							      \
+} while (0)
+
 void libeth_xdp_load_stash(struct libeth_xdp_buff *dst,
 			   const struct libeth_xdp_buff_stash *src);
 void libeth_xdp_save_stash(struct libeth_xdp_buff_stash *dst,
@@ -1155,6 +1192,250 @@ static inline bool libeth_xdp_process_buff(struct libeth_xdp_buff *xdp,
 	return true;
 }
 
+/**
+ * libeth_xdp_buff_stats_frags - update onstack RQ stats with XDP frags info
+ * @ss: onstack stats to update
+ * @xdp: buffer to account
+ *
+ * Internal helper used by __libeth_xdp_run_pass(), do not call directly.
+ * Adds buffer's frags count and total len to the onstack stats.
+ */
+static inline void
+libeth_xdp_buff_stats_frags(struct libeth_rq_napi_stats *ss,
+			    const struct libeth_xdp_buff *xdp)
+{
+	const struct skb_shared_info *sinfo;
+
+	sinfo = xdp_get_shared_info_from_buff(&xdp->base);
+	ss->bytes += sinfo->xdp_frags_size;
+	ss->fragments += sinfo->nr_frags + 1;
+}
+
+u32 libeth_xdp_prog_exception(const struct libeth_xdp_tx_bulk *bq,
+			      struct libeth_xdp_buff *xdp,
+			      enum xdp_action act, int ret);
+
+/**
+ * __libeth_xdp_run_prog - run XDP program on an XDP buffer
+ * @xdp: XDP buffer to run the prog on
+ * @bq: buffer bulk for ``XDP_TX`` queueing
+ *
+ * Internal inline abstraction to run XDP program. Handles ``XDP_DROP``
+ * and ``XDP_REDIRECT`` only, the rest is processed levels up.
+ * Reports an XDP prog exception on errors.
+ *
+ * Return: libeth_xdp prog verdict depending on the prog's verdict.
+ */
+static __always_inline u32
+__libeth_xdp_run_prog(struct libeth_xdp_buff *xdp,
+		      const struct libeth_xdp_tx_bulk *bq)
+{
+	enum xdp_action act;
+
+	act = bpf_prog_run_xdp(bq->prog, &xdp->base);
+	if (unlikely(act < XDP_DROP || act > XDP_REDIRECT))
+		goto out;
+
+	switch (act) {
+	case XDP_PASS:
+		return LIBETH_XDP_PASS;
+	case XDP_DROP:
+		libeth_xdp_return_buff(xdp);
+
+		return LIBETH_XDP_DROP;
+	case XDP_TX:
+		return LIBETH_XDP_TX;
+	case XDP_REDIRECT:
+		if (unlikely(xdp_do_redirect(bq->dev, &xdp->base, bq->prog)))
+			break;
+
+		xdp->data = NULL;
+
+		return LIBETH_XDP_REDIRECT;
+	default:
+		break;
+	}
+
+out:
+	return libeth_xdp_prog_exception(bq, xdp, act, 0);
+}
+
+/**
+ * __libeth_xdp_run_flush - run XDP program and handle ``XDP_TX`` verdict
+ * @xdp: XDP buffer to run the prog on
+ * @bq: buffer bulk for ``XDP_TX`` queueing
+ * @run: internal callback for running XDP program
+ * @queue: internal callback for queuing ``XDP_TX`` frame
+ * @flush_bulk: driver callback for flushing a bulk
+ *
+ * Internal inline abstraction to run XDP program and additionally handle
+ * ``XDP_TX`` verdict.
+ * Do not use directly.
+ *
+ * Return: libeth_xdp prog verdict depending on the prog's verdict.
+ */
+static __always_inline u32
+__libeth_xdp_run_flush(struct libeth_xdp_buff *xdp,
+		       struct libeth_xdp_tx_bulk *bq,
+		       u32 (*run)(struct libeth_xdp_buff *xdp,
+				  const struct libeth_xdp_tx_bulk *bq),
+		       bool (*queue)(struct libeth_xdp_tx_bulk *bq,
+				     struct libeth_xdp_buff *xdp,
+				     bool (*flush_bulk)
+					  (struct libeth_xdp_tx_bulk *bq,
+					   u32 flags)),
+		       bool (*flush_bulk)(struct libeth_xdp_tx_bulk *bq,
+					  u32 flags))
+{
+	u32 act;
+
+	act = run(xdp, bq);
+	if (act == LIBETH_XDP_TX && unlikely(!queue(bq, xdp, flush_bulk)))
+		act = LIBETH_XDP_DROP;
+
+	bq->act_mask |= act;
+
+	return act;
+}
+
+/**
+ * libeth_xdp_run_prog - run XDP program and handle all verdicts
+ * @xdp: XDP buffer to process
+ * @bq: XDP Tx bulk to queue ``XDP_TX`` buffers
+ * @fl: driver ``XDP_TX`` bulk flush callback
+ *
+ * Run the attached XDP program and handle all possible verdicts.
+ *
+ * Return: true if the buffer should be passed up the stack, false if the poll
+ * should go to the next buffer.
+ */
+#define libeth_xdp_run_prog(xdp, bq, fl)				      \
+	(__libeth_xdp_run_flush(xdp, bq, __libeth_xdp_run_prog,		      \
+				libeth_xdp_tx_queue_bulk,		      \
+				fl) == LIBETH_XDP_PASS)
+
+/**
+ * __libeth_xdp_run_pass - helper to run XDP program and handle the result
+ * @xdp: XDP buffer to process
+ * @bq: XDP Tx bulk to queue ``XDP_TX`` frames
+ * @napi: NAPI to build an skb and pass it up the stack
+ * @rs: onstack libeth RQ stats
+ * @md: metadata that should be filled to the XDP buffer
+ * @prep: callback for filling the metadata
+ * @run: driver wrapper to run XDP program
+ * @populate: driver callback to populate an skb with the HW descriptor data
+ *
+ * Inline abstraction that does the following:
+ * 1) adds frame size and frag number (if needed) to the onstack stats;
+ * 2) fills the descriptor metadata to the onstack &libeth_xdp_buff
+ * 3) runs XDP program if present;
+ * 4) handles all possible verdicts;
+ * 5) on ``XDP_PASS`, builds an skb from the buffer;
+ * 6) populates it with the descriptor metadata;
+ * 7) passes it up the stack.
+ *
+ * In most cases, number 2 means just writing the pointer to the HW descriptor
+ * to the XDP buffer. If so, please use LIBETH_XDP_DEFINE_RUN{,_PASS}()
+ * wrappers to build a driver function.
+ */
+static __always_inline void
+__libeth_xdp_run_pass(struct libeth_xdp_buff *xdp,
+		      struct libeth_xdp_tx_bulk *bq, struct napi_struct *napi,
+		      struct libeth_rq_napi_stats *rs, const void *md,
+		      void (*prep)(struct libeth_xdp_buff *xdp,
+				   const void *md),
+		      bool (*run)(struct libeth_xdp_buff *xdp,
+				  struct libeth_xdp_tx_bulk *bq),
+		      bool (*populate)(struct sk_buff *skb,
+				       const struct libeth_xdp_buff *xdp,
+				       struct libeth_rq_napi_stats *rs))
+{
+	struct sk_buff *skb;
+
+	rs->bytes += xdp->base.data_end - xdp->data;
+	rs->packets++;
+
+	if (xdp_buff_has_frags(&xdp->base))
+		libeth_xdp_buff_stats_frags(rs, xdp);
+
+	if (prep && (!__builtin_constant_p(!!md) || md))
+		prep(xdp, md);
+
+	if (!bq || !run || !bq->prog)
+		goto build;
+
+	if (!run(xdp, bq))
+		return;
+
+build:
+	skb = xdp_build_skb_from_buff(&xdp->base);
+	if (unlikely(!skb)) {
+		libeth_xdp_return_buff_slow(xdp);
+		return;
+	}
+
+	xdp->data = NULL;
+
+	if (unlikely(!populate(skb, xdp, rs))) {
+		napi_consume_skb(skb, true);
+		return;
+	}
+
+	napi_gro_receive(napi, skb);
+}
+
+static inline void libeth_xdp_prep_desc(struct libeth_xdp_buff *xdp,
+					const void *desc)
+{
+	xdp->desc = desc;
+}
+
+/**
+ * libeth_xdp_run_pass - helper to run XDP program and handle the result
+ * @xdp: XDP buffer to process
+ * @bq: XDP Tx bulk to queue ``XDP_TX`` frames
+ * @napi: NAPI to build an skb and pass it up the stack
+ * @ss: onstack libeth RQ stats
+ * @desc: pointer to the HW descriptor for that frame
+ * @run: driver wrapper to run XDP program
+ * @populate: driver callback to populate an skb with the HW descriptor data
+ *
+ * Wrapper around the underscored version when "fill the descriptor metadata"
+ * means just writing the pointer to the HW descriptor as @xdp->desc.
+ */
+#define libeth_xdp_run_pass(xdp, bq, napi, ss, desc, run, populate)	      \
+	__libeth_xdp_run_pass(xdp, bq, napi, ss, desc, libeth_xdp_prep_desc,  \
+			      run, populate)
+
+/**
+ * libeth_xdp_finalize_rx - finalize XDPSQ after a NAPI polling loop
+ * @bq: ``XDP_TX`` frame bulk
+ * @flush: driver callback to flush the bulk
+ * @finalize: driver callback to start sending the frames and run the timer
+ *
+ * Flush the bulk if there are frames left to send, kick the queue and flush
+ * the XDP maps.
+ */
+#define libeth_xdp_finalize_rx(bq, flush, finalize)			      \
+	__libeth_xdp_finalize_rx(bq, 0, flush, finalize)
+
+static __always_inline void
+__libeth_xdp_finalize_rx(struct libeth_xdp_tx_bulk *bq, u32 flags,
+			 bool (*flush_bulk)(struct libeth_xdp_tx_bulk *bq,
+					    u32 flags),
+			 void (*finalize)(void *xdpsq, bool sent, bool flush))
+{
+	if (bq->act_mask & LIBETH_XDP_TX) {
+		if (bq->count)
+			flush_bulk(bq, flags | LIBETH_XDP_TX_DROP);
+		finalize(bq->xdpsq, true, true);
+	}
+	if (bq->act_mask & LIBETH_XDP_REDIRECT)
+		xdp_do_flush();
+
+	rcu_read_unlock();
+}
+
 /* Tx buffer completion */
 
 void libeth_xdp_return_buff_bulk(const struct skb_shared_info *sinfo,
diff --git a/drivers/net/ethernet/intel/libeth/xdp.c b/drivers/net/ethernet/intel/libeth/xdp.c
index d0669f1f02f3..1607579d65bb 100644
--- a/drivers/net/ethernet/intel/libeth/xdp.c
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -277,6 +277,33 @@ bool libeth_xdp_buff_add_frag(struct libeth_xdp_buff *xdp,
 }
 EXPORT_SYMBOL_GPL(libeth_xdp_buff_add_frag);
 
+/**
+ * libeth_xdp_prog_exception - handle XDP prog exceptions
+ * @bq: XDP Tx bulk
+ * @xdp: buffer to process
+ * @act: original XDP prog verdict
+ * @ret: error code if redirect failed
+ *
+ * External helper used by __libeth_xdp_run_prog(), do not call directly.
+ * Reports invalid @act, XDP exception trace event and frees the buffer.
+ *
+ * Return: libeth_xdp XDP prog verdict.
+ */
+u32 __cold libeth_xdp_prog_exception(const struct libeth_xdp_tx_bulk *bq,
+				     struct libeth_xdp_buff *xdp,
+				     enum xdp_action act, int ret)
+{
+	if (act > XDP_REDIRECT)
+		bpf_warn_invalid_xdp_action(bq->dev, bq->prog, act);
+
+	libeth_trace_xdp_exception(bq->dev, bq->prog, act);
+
+	libeth_xdp_return_buff_slow(xdp);
+
+	return LIBETH_XDP_DROP;
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_prog_exception);
+
 /* Tx buffer completion */
 
 static void libeth_xdp_put_netmem_bulk(netmem_ref netmem,
-- 
2.49.0

