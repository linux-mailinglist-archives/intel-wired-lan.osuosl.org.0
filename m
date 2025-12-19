Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDDFCD1C25
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 21:30:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A34983BF3;
	Fri, 19 Dec 2025 20:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WRfP1UKQkRYX; Fri, 19 Dec 2025 20:30:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 517BC83BF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766176204;
	bh=IHd0Ny6KDmA7/BvDV3C3X6zKg5S+EEhCYi1NRz/+6Xg=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=cQ0Zedb9bA2V0SzPPOvOE+jDXyOO1CQYKPoj3EpoWO0rmZkbNiXi2K5sYZIPMMrZI
	 EHz5uB7Ofxyv9fmZ+OvCnbWT++dGjMuzkyl/0Q7P/0O0GoTPTAYBwT27P7i8QvZY6k
	 d05oPZmYLgzdNEYmwXT+yzN0g646TXXp/FlxCL/VrxM3DUbsKvuLNEPGZ907/YDnoi
	 OnDYwjZmdJdP9duldPduBVhx70U1MFCL8gefzlKsaoiPYJb5ohMl/HkdsUpzzxDqi0
	 1Gxe/WilSu9ncLcE2KtNZp5CJPF3Lx/9kYxb6Wh1Pkev3WI3hdMdXGkf7AlfPY5Oc9
	 eS7BdrGX/v3QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 517BC83BF6;
	Fri, 19 Dec 2025 20:30:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E5DDF119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 20:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D7E4683BF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 20:30:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CnnKD0s1lMVd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 20:30:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::54a; helo=mail-pg1-x54a.google.com;
 envelope-from=3ybvfaqskajw6hi6onuiej6ckkcha.8ki@flex--almasrymina.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0631782F9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0631782F9E
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com
 [IPv6:2607:f8b0:4864:20::54a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0631782F9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 20:30:01 +0000 (UTC)
Received: by mail-pg1-x54a.google.com with SMTP id
 41be03b00d2f7-b630753cc38so3700417a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 12:30:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766176201; x=1766781001;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IHd0Ny6KDmA7/BvDV3C3X6zKg5S+EEhCYi1NRz/+6Xg=;
 b=GrkZ2LWmp/X5XuR8ZBDKV+CywPEjHkY7di6HJNnZY6f/h2XTJd+LNZ4EHX68xSTG09
 coGy+FXZ1b4aPA9XBJUbuqxnpQHlBYNolFpn3dbFNpPEy2IXZrQmIwPjVBWv1fgoXnk0
 oj6rqhoBq/rWRKy+D28wpcTKrwHwsjG2NPWGrFC2pyBbHWBP0r20cFGhA3g4LBIWa2yg
 LNBFuWVCm8PrataJh5st13x9fIuVVshuZb7QbJGQJgmONDhdma2LMRFrvXGUMEC4uBnU
 oA3QFFz3iY/O85FcJWhwAku3czphtZev+ldi0FGYxoB3t6wNhRbWO3wkhr2D23Iahiwb
 83pQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWzc+T4IjamPfDQvaqt4VZHnIlvH9aA0f+y65hBR27Nv4QdfpY7bjQ2Lwpt3RDmDi64V0fo2wB2sNz6jmzg2U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzjD8Kw/WIw5qUHXDfTRyauWPGpHlfPxQ/zg/1MSYyDOyu4CsRO
 iSHQos9ZU0jPQrOLgZdgdS6QGPSxyBI+t4DyF32RLk7BBab9ScnvEDrBmJfSXfairgk/04T78Oj
 fHMLGsrqfbiYHGNJ/O8xfxuZd8A==
X-Google-Smtp-Source: AGHT+IGmgbM0XudpJcpiXGRPuXw6UTKfKP2tpvG3JOdbqKaPKFoWMNG1e8WaCbFXC3+5Y53tESIYxz7+RDX3yTy+iA==
X-Received: from dlbbk38.prod.google.com
 ([2002:a05:7022:42a6:b0:11d:cd2a:4c1b])
 (user=almasrymina job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:6291:b0:11e:3e9:3ea2 with SMTP id
 a92af1059eb24-1217230eeafmr5221570c88.49.1766176201087; 
 Fri, 19 Dec 2025 12:30:01 -0800 (PST)
Date: Fri, 19 Dec 2025 20:29:54 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.322.g1dd061c0dc-goog
Message-ID: <20251219202957.2309698-1-almasrymina@google.com>
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
 d=google.com; s=20230601; t=1766176201; x=1766781001; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=IHd0Ny6KDmA7/BvDV3C3X6zKg5S+EEhCYi1NRz/+6Xg=;
 b=tlFQ5jhDAmr4YbsFQaCjjPTAB35NAEWDf4qC0MLyXbYNeDomXwk0WEmE/OuIate38k
 UWmpeSBd/qHOSC3LL5oRCvUCxra6KhILsW2x68vIeBIiC1erLT3ad59h2nSiVOPPSkHP
 XImg0yOUB3pv4gY/wtkDxiJxfZiA0M0Ku+uLWGx1x04s/dhHHf94KPWONeFZigy0UpoX
 q84xmvwNovU2IKc/rlWjbI5Ru009+IwH/to9pdGVTvyEM2B8iCe+bJ6kXLC6xdk33q9s
 dQDXg7tMLCZhIzUrR4qRC0K694tiUw5MdfCxqYwhcr+Wc7C2DsM+dUpkyjFymr9qqnKy
 TTjA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=tlFQ5jhD
Subject: [Intel-wired-lan] [PATCH net-next v3] idpf: export RX hardware
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
 drivers/net/ethernet/intel/idpf/xdp.h | 22 ++++++++++++++++++-
 2 files changed, 52 insertions(+), 1 deletion(-)

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
index 479f5ef3c604..9daae445bde4 100644
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
@@ -149,7 +153,10 @@ idpf_xdp_get_qw1(struct idpf_xdp_rx_desc *desc,
 	desc->qw1 = ((const typeof(desc))rxd)->qw1;
 #else
 	desc->qw1 = ((u64)le16_to_cpu(rxd->buf_id) << 32) |
-		    rxd->status_err0_qw1;
+			((u64)rxd->ts_low << 24) |
+			((u64)rxd->fflags1 << 16) |
+			((u64)rxd->status_err1 << 8) |
+			rxd->status_err0_qw1;
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
2.52.0.322.g1dd061c0dc-goog

