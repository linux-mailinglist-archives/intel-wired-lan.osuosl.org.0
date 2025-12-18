Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84214CCA152
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 03:29:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA01040EDA;
	Thu, 18 Dec 2025 02:29:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bfP7igbxRp1K; Thu, 18 Dec 2025 02:29:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A67140ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766024997;
	bh=Mbkt/LgClY9Ed+U/AqFg7ozVmIhVbSqVhAx0YrbLQGM=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=R5Y2MhEVoyGd6vvKP/6Xd+mW/yAoLov9fm7XgnhpImHxvdBtfAcCRiVs2QuItYHVs
	 +WJ5hA2ybh0Kd9cauB+sO3Wt3j6jVxXFWwLftxkmhpGQqB08Zsq3M/WonfOdSMML9W
	 ohCT4HAoMxTBrQqHPNFjU7pqf59YPI6+7ZtTgo9A1TtRnmHtA0jiHXkWyFNjdSBMBC
	 4ZSljarcHM+nHpv5nZpj01DOe7pdPjm3zWNBrVTt9bSfK1UeKM2r/8hJy09q28Cfv6
	 q6zp6kz2qq8LYdjvNrnffp4SU/Y9fmL5VEjuaJKt98CN3D3S3YOl0rapeaCbwgKf3T
	 0YD4/6q9lwZbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A67140ED5;
	Thu, 18 Dec 2025 02:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D45CA1A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 02:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAF8083BCE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 02:29:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id We6p9VAoRjDU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 02:29:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::64a; helo=mail-pl1-x64a.google.com;
 envelope-from=3igddaqskae0p01p76d1x2pv33v0t.r31@flex--almasrymina.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D248F83BAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D248F83BAA
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D248F83BAA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 02:29:53 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 d9443c01a7336-29f29ae883bso2390185ad.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 18:29:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766024993; x=1766629793;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Mbkt/LgClY9Ed+U/AqFg7ozVmIhVbSqVhAx0YrbLQGM=;
 b=suE4mw5RjzputqPKel9p5ovMP3eF95ecLizFp1Ecw5ATjoBHYHNJozoltjJ9gvM6XE
 5qziviVIGegNBXJvXi6jM96y1oj3h3HuUXqaj5gXSa0hTgpVRm9VAFXM4bFbbPPus3Su
 TcwtE9j8f6WqplinfRfg4JRLAWwgkaGtI7UHTEVCJrg4n4MSroTckSHyHPtVbKyGi4bW
 Pga6/d2Lm3/IhBZg1qWYNQAXqjOJLWn6xDnxXgNxedeWZLMbIMUwcTO9C9DPXgO7amOZ
 0lrj5qHX9IEyWLdifFwETeZGj+EVi1a0BnTp8mela47EJ640jufrw+oPvwL6r4lO5PIy
 AyxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUKvrlEaFeRKykcgemAKU+dM1/2j6rD9/fCRSZffq8UQE661UHAQfPsvoJbxYLsonIeaoHY3Q6uin7K/VYFvZw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxTB4u0E8ZbsPSe/UsroEPiqXbrRrSRJET/NlOMlu5jK6ijQK3n
 P5QRCn+2DKydvAUJZ9cZtUOrEx/b03g4hahBRtKAZ/hShs3zv+WCksWCtDE2TxzjAqVuDO9JWkx
 WvEbFqdL2Z7FXNI9DHKr/hjgtkg==
X-Google-Smtp-Source: AGHT+IFE6xajScfzbLpRFiQQS67W5ZN8gStF0mO1QPIpwdD4OiKSevZ12bwmQxwPQs3VZazL0vtBUS/b7RY63UwVGw==
X-Received: from dlbrj5.prod.google.com ([2002:a05:7022:f405:b0:11f:2e2e:de3])
 (user=almasrymina job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:701b:2902:b0:11b:8f02:a876 with SMTP id
 a92af1059eb24-11f354cce50mr11251803c88.23.1766024992932; 
 Wed, 17 Dec 2025 18:29:52 -0800 (PST)
Date: Thu, 18 Dec 2025 02:29:36 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.313.g674ac2bdf7-goog
Message-ID: <20251218022948.3288897-1-almasrymina@google.com>
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
 d=google.com; s=20230601; t=1766024993; x=1766629793; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Mbkt/LgClY9Ed+U/AqFg7ozVmIhVbSqVhAx0YrbLQGM=;
 b=BowjVopwlU1F1qGUTrV1o2ciKK2r+pjUDiXKYPlssSb0J6vx+RwiMehyexp1mdc3Pb
 9rGkeMS44JMpImT75H7e39CQ/HhGWuZfSNdcatSU1YHqnliUF9dqgCmZZf7hWONS9lN1
 IYo75dpLrBHb/5lt8CqfE1fDncsZxe4nTeZh7rAOCP56f2j0OOImuawghSi6gVH8Zv4h
 0tIw1LlcMTlZ2vppi4vy7n9jchqowPxqty0aQLRk9xzGUlitVlYwBcGkGbGJxArHK38R
 r7mePurJUNAhFHgx8qUG0l/Uf4M+r4bla214x0iM/3KLuF/UER+w70gJzG4K81UM4Foo
 0w5g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=BowjVopw
Subject: [Intel-wired-lan] [PATCH net-next v2] idpf: export RX hardware
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
as a BPF kfunc instead of appended to an skb.

A idpf_queue_has(PTP, rxq) condition is added to check the queue
supports PTP similar to idpf_rx_process_skb_fields.

Cc: intel-wired-lan@lists.osuosl.org

Signed-off-by: YiFei Zhu <zhuyifei@google.com>
Signed-off-by: Mina Almasry <almasrymina@google.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

---

v2: https://lore.kernel.org/netdev/20251122140839.3922015-1-almasrymina@google.com/
- Fixed alphabetical ordering
- Use the xdp desc type instead of virtchnl one (required some added
  helpers)

---
 drivers/net/ethernet/intel/idpf/xdp.c | 29 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/xdp.h | 17 ++++++++++++++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 958d16f87424..7744d6898f74 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2025 Intel Corporation */
 
 #include "idpf.h"
+#include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 #include "xdp.h"
 #include "xsk.h"
@@ -391,8 +392,36 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
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
+	idpf_xdp_get_qw1(&desc, xdp->desc);
+	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
+
+	if (!idpf_queue_has(PTP, rxq))
+		return -ENODATA;
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
index 479f5ef3c604..86be6cae9689 100644
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
@@ -166,6 +170,19 @@ idpf_xdp_get_qw2(struct idpf_xdp_rx_desc *desc,
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

base-commit: 8f7aa3d3c7323f4ca2768a9e74ebbe359c4f8f88
-- 
2.52.0.313.g674ac2bdf7-goog

