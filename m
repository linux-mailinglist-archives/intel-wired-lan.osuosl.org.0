Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 852EBA8A574
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 389C66115A;
	Tue, 15 Apr 2025 17:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sUsT_H1Var1t; Tue, 15 Apr 2025 17:29:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75E44611BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744738179;
	bh=VEl62qKdYspa1gNkLwO+Xl3bEJTwyEYRfSLxgnX8Bic=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6jzE+N8VOj6MTm021HJHyuWZ0HTYjfutRlAghm1I7uvxgqu0TR+rz4QQfWbTB2Fya
	 VWeVh67wMNANwTCexcQn3pgZClkrPrjsQTWK5TH/2ereLSuLkGnrxE49Xxg+97+WGZ
	 2ZA8v4zv64ffleQD+XCulNs/pJBatgEwss69sj8JBS/XhJDSWBvRDaT/mmjkgSgEVr
	 8WNPf25njKwo5C5Sj79w/ZAwWTs6AMth51cDeC/Cv88xmDCYD6DOBCsGpJ3lra2AAg
	 bq425mTcF/svHXIuvVVkQfBB4gfNKrEX/UNHJtCB3W48gi+1PVJRc39H2Dpalx7TKI
	 c8ifseP7eZBGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75E44611BA;
	Tue, 15 Apr 2025 17:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 175B2109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09478403CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vok3AYbcpFQi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:29:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D0218400C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0218400C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0218400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:35 +0000 (UTC)
X-CSE-ConnectionGUID: M+royVmsQWaQJSpfTQRtWA==
X-CSE-MsgGUID: JPFvzAydR52UrpFjllYwgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46275756"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46275756"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:29:36 -0700
X-CSE-ConnectionGUID: lITRbMybRQ+wSgyqQ8lRiA==
X-CSE-MsgGUID: zxgPunYXRgO4Ng42jP0G2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130729806"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 15 Apr 2025 10:29:31 -0700
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
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 15 Apr 2025 19:28:19 +0200
Message-ID: <20250415172825.3731091-11-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744738176; x=1776274176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5hrhWZJgnjKQfFC++nTM/jCtOnI7N/Xn83OmaTwcQmY=;
 b=NKyH1bBimnOIkgcTxBtGU/lYTX6RkkbpkF6HwGS+W8ye4EqYt7mUfz3T
 iLRhN7UKzDMlwWYC7H4fFMoLGpwAl0aEQ1wblYBjKWq8qJ2dIi3M+YX9l
 TWIGqspRd+t78HgpgsVkq+b3FZNTzvZebUc7lqsyODgao2qAcsI+OmqKu
 Jht/Y4vf6DGnTyj48tylS0mvY++uHjb9zzH1GyhyYYqMvUwA5jHfaIVpY
 pitw87i1VePlglUe5Cw7IgztgpytHgXS9AWpPPvvxpAyKJyKbQSkIclH0
 vFOsz2shjDJ6Z7413u3rn/qdbbYauPZTKN7vt5FKwwKHmGsOK/4z6meQw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NKyH1bBi
Subject: [Intel-wired-lan] [PATCH iwl-next 10/16] libeth: xdp: add templates
 for building driver-side callbacks
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

Defining driver-specific functions to pass to libeth_xdp functions can
induce boilerplates and/or look a bit cryptic with all those layers of
indirection. On the other hand, this indirection is needed to allow
compilers to uninline big functions even when passed to __always_inline
helpers (too much inlining also hurts performance in some cases), plus
to reuse some XDP helpers in XSk code.
Add macros to quickly build them, with the detailed kdoc. They take
names of the actual callbacks for filling a Tx descriptor and other
purely HW-specific things and wrap them appropriately.

LIBETH_XDP_DEFINE_{BEGIN,END}() is needed for GCC 8+ unfortunately to
let the drivers control which functions will be static and which global
without hitting `-Wold-style-declaration`.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/xdp.h | 195 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 195 insertions(+)

diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 104210da921e..643b0a8acab3 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -735,6 +735,9 @@ __libeth_xdp_tx_flush_bulk(struct libeth_xdp_tx_bulk *bq, u32 flags,
  * @flags: Tx flags, see above
  * @prep: driver callback to prepare the queue
  * @xmit: driver callback to fill a HW descriptor
+ *
+ * Use via LIBETH_XDP_DEFINE_FLUSH_TX() to define an ``XDP_TX`` driver
+ * callback.
  */
 #define libeth_xdp_tx_flush_bulk(bq, flags, prep, xmit)			      \
 	__libeth_xdp_tx_flush_bulk(bq, flags, prep, libeth_xdp_tx_fill_buf,   \
@@ -742,6 +745,25 @@ __libeth_xdp_tx_flush_bulk(struct libeth_xdp_tx_bulk *bq, u32 flags,
 
 /* .ndo_xdp_xmit() implementation */
 
+/**
+ * libeth_xdp_xmit_init_bulk - internal helper to initialize bulk for XDP xmit
+ * @bq: bulk to initialize
+ * @dev: target &net_device
+ * @xdpsqs: array of driver-specific XDPSQ structs
+ * @num: number of active XDPSQs (the above array length)
+ */
+#define libeth_xdp_xmit_init_bulk(bq, dev, xdpsqs, num)			      \
+	__libeth_xdp_xmit_init_bulk(bq, dev, (xdpsqs)[libeth_xdpsq_id(num)])
+
+static inline void __libeth_xdp_xmit_init_bulk(struct libeth_xdp_tx_bulk *bq,
+					       struct net_device *dev,
+					       void *xdpsq)
+{
+	bq->dev = dev;
+	bq->xdpsq = xdpsq;
+	bq->count = 0;
+}
+
 /**
  * libeth_xdp_xmit_frame_dma - internal helper to access DMA of an &xdp_frame
  * @xf: pointer to the XDP frame
@@ -934,6 +956,9 @@ libeth_xdp_xmit_fill_buf(struct libeth_xdp_tx_frame frm, u32 i,
  * @flags: Tx flags, see __libeth_xdp_tx_flush_bulk()
  * @prep: driver callback to prepare the queue
  * @xmit: driver callback to fill a HW descriptor
+ *
+ * Use via LIBETH_XDP_DEFINE_FLUSH_XMIT() to define an XDP xmit driver
+ * callback.
  */
 #define libeth_xdp_xmit_flush_bulk(bq, flags, prep, xmit)		      \
 	__libeth_xdp_tx_flush_bulk(bq, (flags) | LIBETH_XDP_TX_NDO, prep,     \
@@ -993,6 +1018,44 @@ __libeth_xdp_xmit_do_bulk(struct libeth_xdp_tx_bulk *bq,
 	return nxmit;
 }
 
+/**
+ * libeth_xdp_xmit_do_bulk - implement full .ndo_xdp_xmit() in driver
+ * @dev: target &net_device
+ * @n: number of frames to send
+ * @fr: XDP frames to send
+ * @f: flags passed by the stack
+ * @xqs: array of XDPSQs driver structs
+ * @nqs: number of active XDPSQs, the above array length
+ * @fl: driver callback to flush an XDP xmit bulk
+ * @fin: driver cabback to finalize the queue
+ *
+ * If the driver has active XDPSQs, perform common checks and send the frames.
+ * Finalize the queue, if requested.
+ *
+ * Return: number of frames sent or -errno on error.
+ */
+#define libeth_xdp_xmit_do_bulk(dev, n, fr, f, xqs, nqs, fl, fin)	      \
+	_libeth_xdp_xmit_do_bulk(dev, n, fr, f, xqs, nqs, fl, fin,	      \
+				 __UNIQUE_ID(bq_), __UNIQUE_ID(ret_),	      \
+				 __UNIQUE_ID(nqs_))
+
+#define _libeth_xdp_xmit_do_bulk(d, n, fr, f, xqs, nqs, fl, fin, ub, ur, un)  \
+({									      \
+	u32 un = (nqs);							      \
+	int ur;								      \
+									      \
+	if (likely(un)) {						      \
+		struct libeth_xdp_tx_bulk ub;				      \
+									      \
+		libeth_xdp_xmit_init_bulk(&ub, d, xqs, un);		      \
+		ur = __libeth_xdp_xmit_do_bulk(&ub, fr, n, f, fl, fin);	      \
+	} else {							      \
+		ur = -ENXIO;						      \
+	}								      \
+									      \
+	ur;								      \
+})
+
 /* Rx polling path */
 
 /**
@@ -1298,6 +1361,7 @@ __libeth_xdp_run_flush(struct libeth_xdp_buff *xdp,
  * @fl: driver ``XDP_TX`` bulk flush callback
  *
  * Run the attached XDP program and handle all possible verdicts.
+ * Prefer using it via LIBETH_XDP_DEFINE_RUN{,_PASS,_PROG}().
  *
  * Return: true if the buffer should be passed up the stack, false if the poll
  * should go to the next buffer.
@@ -1429,6 +1493,137 @@ __libeth_xdp_finalize_rx(struct libeth_xdp_tx_bulk *bq, u32 flags,
 	rcu_read_unlock();
 }
 
+/*
+ * Helpers to reduce boilerplate code in drivers.
+ *
+ * Typical driver Rx flow would be (excl. bulk and buff init, frag attach):
+ *
+ * LIBETH_XDP_DEFINE_START();
+ * LIBETH_XDP_DEFINE_FLUSH_TX(static driver_xdp_flush_tx, driver_xdp_tx_prep,
+ *			      driver_xdp_xmit);
+ * LIBETH_XDP_DEFINE_RUN(static driver_xdp_run, driver_xdp_run_prog,
+ *			 driver_xdp_flush_tx, driver_populate_skb);
+ * LIBETH_XDP_DEFINE_FINALIZE(static driver_xdp_finalize_rx,
+ *			      driver_xdp_flush_tx, driver_xdp_finalize_sq);
+ * LIBETH_XDP_DEFINE_END();
+ *
+ * This will build a set of 4 static functions. The compiler is free to decide
+ * whether to inline them.
+ * Then, in the NAPI polling function:
+ *
+ *	while (packets < budget) {
+ *		// ...
+ *		driver_xdp_run(xdp, &bq, napi, &rs, desc);
+ *	}
+ *	driver_xdp_finalize_rx(&bq);
+ */
+
+#define LIBETH_XDP_DEFINE_START()					      \
+	__diag_push();							      \
+	__diag_ignore(GCC, 8, "-Wold-style-declaration",		      \
+		      "Allow specifying \'static\' after the return type")
+
+/**
+ * LIBETH_XDP_DEFINE_TIMER - define a driver XDPSQ cleanup timer callback
+ * @name: name of the function to define
+ * @poll: Tx polling/completion function
+ */
+#define LIBETH_XDP_DEFINE_TIMER(name, poll)				      \
+void name(struct work_struct *work)					      \
+{									      \
+	libeth_xdpsq_run_timer(work, poll);				      \
+}
+
+/**
+ * LIBETH_XDP_DEFINE_FLUSH_TX - define a driver ``XDP_TX`` bulk flush function
+ * @name: name of the function to define
+ * @prep: driver callback to clean an XDPSQ
+ * @xmit: driver callback to write a HW Tx descriptor
+ */
+#define LIBETH_XDP_DEFINE_FLUSH_TX(name, prep, xmit)			      \
+	__LIBETH_XDP_DEFINE_FLUSH_TX(name, prep, xmit, xdp)
+
+#define __LIBETH_XDP_DEFINE_FLUSH_TX(name, prep, xmit, pfx)		      \
+bool name(struct libeth_xdp_tx_bulk *bq, u32 flags)			      \
+{									      \
+	return libeth_##pfx##_tx_flush_bulk(bq, flags, prep, xmit);	      \
+}
+
+/**
+ * LIBETH_XDP_DEFINE_FLUSH_XMIT - define a driver XDP xmit bulk flush function
+ * @name: name of the function to define
+ * @prep: driver callback to clean an XDPSQ
+ * @xmit: driver callback to write a HW Tx descriptor
+ */
+#define LIBETH_XDP_DEFINE_FLUSH_XMIT(name, prep, xmit)			      \
+bool name(struct libeth_xdp_tx_bulk *bq, u32 flags)			      \
+{									      \
+	return libeth_xdp_xmit_flush_bulk(bq, flags, prep, xmit);	      \
+}
+
+/**
+ * LIBETH_XDP_DEFINE_RUN_PROG - define a driver XDP program run function
+ * @name: name of the function to define
+ * @flush: driver callback to flush an ``XDP_TX`` bulk
+ */
+#define LIBETH_XDP_DEFINE_RUN_PROG(name, flush)				      \
+	bool __LIBETH_XDP_DEFINE_RUN_PROG(name, flush, xdp)
+
+#define __LIBETH_XDP_DEFINE_RUN_PROG(name, flush, pfx)			      \
+name(struct libeth_xdp_buff *xdp, struct libeth_xdp_tx_bulk *bq)	      \
+{									      \
+	return libeth_##pfx##_run_prog(xdp, bq, flush);			      \
+}
+
+/**
+ * LIBETH_XDP_DEFINE_RUN_PASS - define a driver buffer process + pass function
+ * @name: name of the function to define
+ * @run: driver callback to run XDP program (above)
+ * @populate: driver callback to fill an skb with HW descriptor info
+ */
+#define LIBETH_XDP_DEFINE_RUN_PASS(name, run, populate)			      \
+	void __LIBETH_XDP_DEFINE_RUN_PASS(name, run, populate, xdp)
+
+#define __LIBETH_XDP_DEFINE_RUN_PASS(name, run, populate, pfx)		      \
+name(struct libeth_xdp_buff *xdp, struct libeth_xdp_tx_bulk *bq,	      \
+     struct napi_struct *napi, struct libeth_rq_napi_stats *ss,		      \
+     const void *desc)							      \
+{									      \
+	return libeth_##pfx##_run_pass(xdp, bq, napi, ss, desc, run,	      \
+				       populate);			      \
+}
+
+/**
+ * LIBETH_XDP_DEFINE_RUN - define a driver buffer process, run + pass function
+ * @name: name of the function to define
+ * @run: name of the XDP prog run function to define
+ * @flush: driver callback to flush an ``XDP_TX`` bulk
+ * @populate: driver callback to fill an skb with HW descriptor info
+ */
+#define LIBETH_XDP_DEFINE_RUN(name, run, flush, populate)		      \
+	__LIBETH_XDP_DEFINE_RUN(name, run, flush, populate, XDP)
+
+#define __LIBETH_XDP_DEFINE_RUN(name, run, flush, populate, pfx)	      \
+	LIBETH_##pfx##_DEFINE_RUN_PROG(static run, flush);		      \
+	LIBETH_##pfx##_DEFINE_RUN_PASS(name, run, populate)
+
+/**
+ * LIBETH_XDP_DEFINE_FINALIZE - define a driver Rx NAPI poll finalize function
+ * @name: name of the function to define
+ * @flush: driver callback to flush an ``XDP_TX`` bulk
+ * @finalize: driver callback to finalize an XDPSQ and run the timer
+ */
+#define LIBETH_XDP_DEFINE_FINALIZE(name, flush, finalize)		      \
+	__LIBETH_XDP_DEFINE_FINALIZE(name, flush, finalize, xdp)
+
+#define __LIBETH_XDP_DEFINE_FINALIZE(name, flush, finalize, pfx)	      \
+void name(struct libeth_xdp_tx_bulk *bq)				      \
+{									      \
+	libeth_##pfx##_finalize_rx(bq, flush, finalize);		      \
+}
+
+#define LIBETH_XDP_DEFINE_END()		__diag_pop()
+
 /* Tx buffer completion */
 
 void libeth_xdp_return_buff_bulk(const struct skb_shared_info *sinfo,
-- 
2.49.0

