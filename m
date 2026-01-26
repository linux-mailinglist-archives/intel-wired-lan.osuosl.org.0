Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDZjE77vd2lQmgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 23:50:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E638E0B7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 23:50:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6162381168;
	Mon, 26 Jan 2026 22:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3TkwNUlC8GHh; Mon, 26 Jan 2026 22:50:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B355581172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769467835;
	bh=UWI5GdRNRA+OZy08jGlRNG12tHEYsASGngd5f05icX8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PtAZg6jBws5ozpleY2sIpyKpX706c8s+Jmebp4Lf1VIUhqnBEce4qlZ4WwVpgscMn
	 GhHHvg7nSNyc5WB80AEqXeaT0IYCBy6r1nzTqWmuRF7bqfMJmD+4eOu62JY+2SmKWU
	 Mv0fZLRz/URuTuH0r0RAGNZ89sR2cdN9ysAR0A0w2Bo35DAlUYv4jxkHvVdSOl8hRl
	 wyGqFxq5OOl+12r7m6K24mGPCQCMgb/wqFye8IUVqEVuOFMiTa4U+x+BfngWcnu/GE
	 tpzgYuLnJjGzyU2Tngm8wW3xeVZwsD7jADuCKc+Yp0fVF90SsPrn6Hq48jNCaE3VJA
	 /4TM9ykIpiwNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B355581172;
	Mon, 26 Jan 2026 22:50:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B62702F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 22:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A403A405F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 22:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AU0jhsKqxvKE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 22:50:33 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 26 Jan 2026 22:50:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD9A9405EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD9A9405EB
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD9A9405EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 22:50:32 +0000 (UTC)
X-CSE-ConnectionGUID: u747eAtDRKaRaL4rYQMmdQ==
X-CSE-MsgGUID: Hm6qDy2kSTKZn+6ugxls7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70556751"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70556751"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 14:43:25 -0800
X-CSE-ConnectionGUID: yJQW2NxWSWmpmYmTerAmHA==
X-CSE-MsgGUID: McfdtltMTA2mjLRQG4wiqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="230754311"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by fmviesa002.fm.intel.com with ESMTP; 26 Jan 2026 14:43:23 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com, andrew+netdev@lunn.ch, netdev@vger.kernel.org
Cc: YiFei Zhu <zhuyifei@google.com>, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com, magnus.karlsson@intel.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 sdf@fomichev.me, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Mina Almasry <almasrymina@google.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Mon, 26 Jan 2026 14:43:11 -0800
Message-ID: <20260126224313.3847849-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20260126224313.3847849-1-anthony.l.nguyen@intel.com>
References: <20260126224313.3847849-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769467833; x=1801003833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5q1Wf9vuZXDeyI1+7XA5Y6Y1giwsGPq1AGESntabpvI=;
 b=Vr3wOqQ7sUCSDZQUVJO6TzKayptNNc9FbRPtKgsxH7W/1TTjoBwjpvaV
 w/Zr4Xj8s9kO9HhCmT+zVPdLj7ksz54Iw5iQOWMl9zYCMsmppEb2oGrQ/
 0/AKpcs5LYO0Acuc0A9ftW0sRuEZ1H23Q5SgPdHGUH5MSflHAaMybzM3G
 Fy+FB1okOuCHgplth21LouWGW0VUruhGjbQ2cgsMD2gjzZJdlxk7OrqS6
 vRyfZf+ai0nr/7K8DpgwqcCgM4UuJCxfxbjglTCbBTPK8N5rMfVpZGVJa
 0X/EqFkzyJfxjM5zvdK4/b5CBM9Ff9k8BSHnH6d5fZflmcMIWa22jJPgT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vr3wOqQ7
Subject: [Intel-wired-lan] [PATCH net-next 7/7] idpf: export RX hardware
 timestamping information to XDP
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:zhuyifei@google.com,m:anthony.l.nguyen@intel.com,m:maciej.fijalkowski@intel.com,m:magnus.karlsson@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:bpf@vger.kernel.org,m:almasrymina@google.com,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B8E638E0B7
X-Rspamd-Action: no action

From: YiFei Zhu <zhuyifei@google.com>

The logic is similar to idpf_rx_hwtstamp, but the data is exported
as a BPF kfunc instead of appended to an skb to support grabbing
timestamps in xsk packets.

A idpf_queue_has(PTP, rxq) condition is added to check the queue
supports PTP similar to idpf_rx_process_skb_fields.

Tested using an xsk connection and checking xdp timestamps are
retrievable in received packets.

Cc: intel-wired-lan@lists.osuosl.org
Signed-off-by: YiFei Zhu <zhuyifei@google.com>
Signed-off-by: Mina Almasry <almasrymina@google.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/idpf/xdp.c | 31 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/xdp.h | 20 +++++++++++++++++
 2 files changed, 51 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 0fe435fdbb6c..2b60f2a78684 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2025 Intel Corporation */
 
 #include "idpf.h"
+#include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 #include "xdp.h"
 #include "xsk.h"
@@ -398,8 +399,38 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
 				    pt);
 }
 
+static int idpf_xdpmo_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
+{
+	const struct libeth_xdp_buff *xdp = (typeof(xdp))ctx;
+	struct idpf_xdp_rx_desc desc __uninitialized;
+	const struct idpf_rx_queue *rxq;
+	u64 cached_time, ts_ns;
+	u32 ts_high;
+
+	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
+
+	if (!idpf_queue_has(PTP, rxq))
+		return -ENODATA;
+
+	idpf_xdp_get_qw1(&desc, xdp->desc);
+
+	if (!(idpf_xdp_rx_ts_low(&desc) & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
+		return -ENODATA;
+
+	cached_time = READ_ONCE(rxq->cached_phc_time);
+
+	idpf_xdp_get_qw3(&desc, xdp->desc);
+
+	ts_high = idpf_xdp_rx_ts_high(&desc);
+	ts_ns = idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
+
+	*timestamp = ts_ns;
+	return 0;
+}
+
 static const struct xdp_metadata_ops idpf_xdpmo = {
 	.xmo_rx_hash		= idpf_xdpmo_rx_hash,
+	.xmo_rx_timestamp	= idpf_xdpmo_rx_timestamp,
 };
 
 void idpf_xdp_set_features(const struct idpf_vport *vport)
diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
index 7ffc6955dfae..63e56f7d43e0 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.h
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -112,11 +112,13 @@ struct idpf_xdp_rx_desc {
 	aligned_u64		qw1;
 #define IDPF_XDP_RX_BUF		GENMASK_ULL(47, 32)
 #define IDPF_XDP_RX_EOP		BIT_ULL(1)
+#define IDPF_XDP_RX_TS_LOW	GENMASK_ULL(31, 24)
 
 	aligned_u64		qw2;
 #define IDPF_XDP_RX_HASH	GENMASK_ULL(31, 0)
 
 	aligned_u64		qw3;
+#define IDPF_XDP_RX_TS_HIGH	GENMASK_ULL(63, 32)
 } __aligned(4 * sizeof(u64));
 static_assert(sizeof(struct idpf_xdp_rx_desc) ==
 	      sizeof(struct virtchnl2_rx_flex_desc_adv_nic_3));
@@ -128,6 +130,8 @@ static_assert(sizeof(struct idpf_xdp_rx_desc) ==
 #define idpf_xdp_rx_buf(desc)	FIELD_GET(IDPF_XDP_RX_BUF, (desc)->qw1)
 #define idpf_xdp_rx_eop(desc)	!!((desc)->qw1 & IDPF_XDP_RX_EOP)
 #define idpf_xdp_rx_hash(desc)	FIELD_GET(IDPF_XDP_RX_HASH, (desc)->qw2)
+#define idpf_xdp_rx_ts_low(desc)	FIELD_GET(IDPF_XDP_RX_TS_LOW, (desc)->qw1)
+#define idpf_xdp_rx_ts_high(desc)	FIELD_GET(IDPF_XDP_RX_TS_HIGH, (desc)->qw3)
 
 static inline void
 idpf_xdp_get_qw0(struct idpf_xdp_rx_desc *desc,
@@ -149,6 +153,9 @@ idpf_xdp_get_qw1(struct idpf_xdp_rx_desc *desc,
 	desc->qw1 = ((const typeof(desc))rxd)->qw1;
 #else
 	desc->qw1 = ((u64)le16_to_cpu(rxd->buf_id) << 32) |
+		    ((u64)rxd->ts_low << 24) |
+		    ((u64)rxd->fflags1 << 16) |
+		    ((u64)rxd->status_err1 << 8) |
 		    rxd->status_err0_qw1;
 #endif
 }
@@ -166,6 +173,19 @@ idpf_xdp_get_qw2(struct idpf_xdp_rx_desc *desc,
 #endif
 }
 
+static inline void
+idpf_xdp_get_qw3(struct idpf_xdp_rx_desc *desc,
+		 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rxd)
+{
+#ifdef __LIBETH_WORD_ACCESS
+	desc->qw3 = ((const typeof(desc))rxd)->qw3;
+#else
+	desc->qw3 = ((u64)le32_to_cpu(rxd->ts_high) << 32) |
+		    ((u64)le16_to_cpu(rxd->fmd6) << 16) |
+		    le16_to_cpu(rxd->l2tag1);
+#endif
+}
+
 void idpf_xdp_set_features(const struct idpf_vport *vport);
 
 int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
-- 
2.47.1

