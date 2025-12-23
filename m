Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6426CDA664
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 20:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 881B4409F5;
	Tue, 23 Dec 2025 19:46:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ta2gWRQMqgwH; Tue, 23 Dec 2025 19:46:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A73E409EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766519217;
	bh=hbB5fUieYbbC54wlKkzCPogs80Zc6SurLe7o2Jqsn5A=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=Gt4BCDOhRV17yb7/98CEnRvzTXssIZAp+jKsxDqDS1s6pm3Tc1W6Iz/8OdiQnM9KQ
	 fkXSWdw97iUhdxgfZqTgBx5TMQpgw5zSxHiJ3RMkVL6BMrWQy2MgVLfQj0ZT/3rw/F
	 Z/Sdnu0ybDLMUEhSPBkU9JjGVgVtmVfPDjR7X+HWULwS4iOtDYzNPcuDOQcmUo/ytB
	 vWfLX3e9gFXCSwFdao+irUmp27fhG+OfuaO1qaCvKQOvwrlugQHxq8vCw4iT/j5Qw0
	 tvxKm/H9YA7o/0RN9p8KKf7kEJVNd9UY4vtVa5x9bM4L+g8awrj0ChV80AL0jWJHQA
	 dMjfqkupOZYSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A73E409EB;
	Tue, 23 Dec 2025 19:46:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C8435119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 19:46:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE4FD817A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 19:46:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-ABHtw7r-yk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 19:46:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::549; helo=mail-pg1-x549.google.com;
 envelope-from=3rffkaqskaa4oz0o65c0w1ou22uzs.q20@flex--almasrymina.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C3C7A81587
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3C7A81587
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3C7A81587
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 19:46:54 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id
 41be03b00d2f7-c2bfb70bd53so243594a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 11:46:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766519214; x=1767124014;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hbB5fUieYbbC54wlKkzCPogs80Zc6SurLe7o2Jqsn5A=;
 b=OGFVkbuzakZ/voT8Xa/qg34GukRh0N04gCYPAtOBqw+kNtMXvmS7Ogh8rFLGXTOviC
 JgaVska9jCt4CwgUCSG0PLGhfWQxleZyzq8gjl7dD3G+7bpsRuIZqAtaFtqjGT285n5N
 CJm7a8DECv4l6CokA+Lgsbx0ewWWM1D/U3YomXp5+mqBV/kJUvs0qXlrWDkzT+sCgMOb
 ldVlhzX5jQPvTukL2+KjWN+by5jyyl7CXwgOpZkRPOQXLAeiYT/4VYCGDABHB8sBHCBB
 zNTVz/14PjIOldx4l/4BaCrWPhWi5WxlQPlVtczu+7bnz4RpYIyqeDvO4d+xFO3Qnbsm
 dyyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXS4BpUUe8AwvZdfx+94P/NWO8tYEbKhRJT6DJ/nclFMxe8nq0DjXU5UdZ0gOLwfWAy/ioNFLTU9dz9GN6do2Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwvHxUIZZo+LWdm6ZHm7T2+szZrH8mQtrVUueuTZpp+qnvYE+A6
 Bq0VJgKqMHzq5im0zgKoRh2yVK4BK6bWoTTveTPZcGXEaCktkE3pXbF3O+RfKTjzBimzXKcLyjF
 DWZp0iF8/wb/6tDrHyREPhcpFFQ==
X-Google-Smtp-Source: AGHT+IEh1TfXoem2rb5nypJkE6ogSfqwPsTdfFfptU3SHsuL6LuN7SgwxjclA75NJmfB/kBCOkuzh1nebLdLVZ71NQ==
X-Received: from dycuf3.prod.google.com ([2002:a05:7300:103:b0:2a4:7587:4d39])
 (user=almasrymina job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:c393:b0:2a4:6bb6:c84a with SMTP id
 5a478bee46e88-2b05ebdd512mr14772248eec.6.1766519213635; 
 Tue, 23 Dec 2025 11:46:53 -0800 (PST)
Date: Tue, 23 Dec 2025 19:46:46 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20251223194649.3050648-1-almasrymina@google.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: YiFei Zhu <zhuyifei@google.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, 
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Richard Cochran <richardcochran@gmail.com>, intel-wired-lan@lists.osuosl.org, 
 Mina Almasry <almasrymina@google.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1766519214; x=1767124014; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=hbB5fUieYbbC54wlKkzCPogs80Zc6SurLe7o2Jqsn5A=;
 b=R/ZhBaMzBZYcYtXf1Nbsccyeje9Oyv9zIgSJtNtSgyKnZa04FM/zLQ9+iUAegp2l65
 rL3QdDsKfDAV+/3gqk1QLp4rV2wCTrxOYNRe2Rxo9/RbKrg+sBZ67Ev449G5Q6yoZsxT
 dPka4bT5il0zeapzx3rv6cMB8ltPoYy5BPaewVJjo93ot4+VyE1dT0gyfUYkiE9p8Nr/
 dtJZg8Cx3wKrRShqtRlxy5WmwJka83KZl75AOIthbXcxgrru3x89nq3jyPSG4Euqa9uG
 lc6OD0nMFqKCLybstCTPWpmMuExn2HgqiH6CfRGOHa8Sf+JKN5IpzP8e4QvQtl8sGrgr
 M+qA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=R/ZhBaMz
Subject: [Intel-wired-lan] [PATCH iwl-next v4] idpf: export RX hardware
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
From: Mina Almasry via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Mina Almasry <almasrymina@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: YiFei Zhu <zhuyifei@google.com>

The logic is similar to idpf_rx_hwtstamp, but the data is exported
as a BPF kfunc instead of appended to an skb to support grabbing
timestamps in xsk packets.

A idpf_queue_has(PTP, rxq) condition is added to check the queue
supports PTP similar to idpf_rx_process_skb_fields.

Tested using an xsk connection and checking xdp timestamps are
retreivable in received packets.

Cc: intel-wired-lan@lists.osuosl.org
Signed-off-by: YiFei Zhu <zhuyifei@google.com>
Signed-off-by: Mina Almasry <almasrymina@google.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

---

v4: https://lore.kernel.org/netdev/20251219202957.2309698-1-almasrymina@google.com/
- Fix indentation (lobakin)
- I kept the (u64) casts for all bit shifted bits in idpf_xdp_get_qw3
  and friends as I see all idpf_xdp_get_qw* functions do the cast in all
  bit-shifted variables.

v3: https://lore.kernel.org/netdev/20251218022948.3288897-1-almasrymina@google.com/
- Do the idpf_queue_has(PTP) check before we read qw1 (lobakin)
- Fix _qw1 not copying over ts_low on on !__LIBETH_WORD_ACCESS systems
  (AI)

v2: https://lore.kernel.org/netdev/20251122140839.3922015-1-almasrymina@google.com/
- Fixed alphabetical ordering
- Use the xdp desc type instead of virtchnl one (required some added
  helpers)

---
 drivers/net/ethernet/intel/idpf/xdp.c | 31 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/xdp.h | 20 +++++++++++++++++
 2 files changed, 51 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 958d16f87424..0916d201bf98 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2025 Intel Corporation */
 
 #include "idpf.h"
+#include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 #include "xdp.h"
 #include "xsk.h"
@@ -391,8 +392,38 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
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
index 479f5ef3c604..1748a0d73547 100644
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

base-commit: 7b8e9264f55a9c320f398e337d215e68cca50131
-- 
2.52.0.351.gbe84eed79e-goog

