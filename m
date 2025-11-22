Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3CCC7D22D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Nov 2025 15:08:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8489560BE7;
	Sat, 22 Nov 2025 14:08:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Is-n1ne38hvQ; Sat, 22 Nov 2025 14:08:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAA4860A62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763820527;
	bh=CiKyvEObttkjdlU/HxkVL5YvXx0AELKfdJVDLDR7O7E=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yTQOmULAMRJw191gcf8tmeIxgCzLwWAX9OGwOL9aPZIxxFBk6jkx7MR+EWmbpauMw
	 FuJIP1F/f+X+7JIDVKPwrr9EY2ehyge1IdgFRRU/4uWQRQN7XKVO2w9aEnlCBVHr1M
	 izb9D8Zrdiy+Z4yhs9qXkY/Mwd3uKn8spfNm0xIrJ/F2uPMDxsgCUfswfktQV1NGgq
	 MPZJ+MgsU8lRG0CzKzpOk8itxFu64DlxU6MYrcZnV4omC8sn6L/FXII5Wk7DMcu39U
	 VSEwPa0ZptyeBFP7+RdT0OY4ceVPvBFMBi70jLo4gU1b2MqbNP2bixyX6wmI3HDmBf
	 u/pGeQ6S4Hfrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAA4860A62;
	Sat, 22 Nov 2025 14:08:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C66E122
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 14:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F74783C88
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 14:08:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zimEk8VSqVOP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Nov 2025 14:08:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::54a; helo=mail-pg1-x54a.google.com;
 envelope-from=368mhaqskaeomxym43ayuzms00sxq.o0y@flex--almasrymina.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6FF9A83C87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FF9A83C87
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com
 [IPv6:2607:f8b0:4864:20::54a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6FF9A83C87
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 14:08:44 +0000 (UTC)
Received: by mail-pg1-x54a.google.com with SMTP id
 41be03b00d2f7-b969f3f5c13so2821551a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 06:08:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763820524; x=1764425324;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=CiKyvEObttkjdlU/HxkVL5YvXx0AELKfdJVDLDR7O7E=;
 b=Ukxq2lGpqWf13rkBa4ZwZq5z5zQUpo3Z0RefPEDDJ/Wq95XoM9vaQPhM1BnsN31ZIf
 st0xAeP56UProOY0i0afH1XoFn5Il8Zcy6SaMHbDXnFd9Cf34ddAHJjNjidXbmOV93aL
 CCzj/VtDNSn/KJImOY5bfVFY1ZVFUJxxZbGIRO5g2g7Da87aQ4m0SlvrynxGMCnjgqEX
 RB1AKgi6oc9fEpMy5oRBwrTgw+xzye8HrS9CG+miEjxc8Bf5PmRTx7stneHH3WK228ee
 BQTby1kHc8YOR4+qJuuCIvrI9phJNLv/byqCfW9OYZtMhXSJ0LO6Mxc2EqiFeGY5EcGp
 8SgA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1V/aVUQnTs7U+St5AcHYL/ch5u5Acf8EIFRPS7s4Yo2JfKyW+fr0lDJg7Rz7UTtH9ErweTNqx1XfdRNQW+n8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw3BghRNHoFxM74nvNjtPNNRWdF/wXt171CvAxcyJyXF+RnN+EG
 cTxi+D9S2MnQo/oB71DlhmWxw0QhePMmnCEp5a7MLVlu/4nY44BddIqV31Wo3g/d5wdl/yusPT7
 ujARGuj7g+aazxlRwflOf5pOCPg==
X-Google-Smtp-Source: AGHT+IGiaUwHMiMte8op02BQ1Y7EuVvIJxvCeVDha4rnblhCSxc3V54Qj6e3HJk/7vwUWsfEzm3eiefI1xmjTS9oQQ==
X-Received: from dlbuy16.prod.google.com
 ([2002:a05:7022:1e10:b0:119:49ca:6b95])
 (user=almasrymina job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:4a6:b0:119:e55a:9c05 with SMTP id
 a92af1059eb24-11c9d864ef6mr3230515c88.33.1763820523481; 
 Sat, 22 Nov 2025 06:08:43 -0800 (PST)
Date: Sat, 22 Nov 2025 14:08:36 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.rc2.455.g230fcf2819-goog
Message-ID: <20251122140839.3922015-1-almasrymina@google.com>
From: Mina Almasry <almasrymina@google.com>
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
 Mina Almasry <almasrymina@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1763820523; x=1764425323; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=CiKyvEObttkjdlU/HxkVL5YvXx0AELKfdJVDLDR7O7E=;
 b=GhSK8+woYXAtqrAx+LfK2kMFDuIy0ThSHPFfITBovjOi89tB1Y506KX3FYl3Z2kRoS
 z2u8mBSMgcfbfTBTKsBvRsOCkalqt0ELlh7ytlmtKRF5u9etbS1+XZ5fBrkEPLHXsmY4
 udDTVr15HX0xdULn6JS9e6cXLtOX5+ngMfq3H72pXV5K6voCY4TVil0VBnSQ4ERCnWUS
 8h/HCEh9n+I2RIFo9Z8sepGIH+3C+RkZv4PnQ71dM0Skwj+AzTLOkGO7L3eD1p4pYYEp
 dHAlIiKzIhoNAe3HaDjuRP3GfFlVsc1OSfhepGH9DUb6s0BQeWKrKfimmaVyT9a0y1X8
 8NzQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=GhSK8+wo
Subject: [Intel-wired-lan] [PATCH net-next v1] idpf: export RX hardware
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

From: YiFei Zhu <zhuyifei@google.com>

The logic is similar to idpf_rx_hwtstamp, but the data is exported
as a BPF kfunc instead of appended to an skb.

A idpf_queue_has(PTP, rxq) condition is added to check the queue
supports PTP similar to idpf_rx_process_skb_fields.

Cc: intel-wired-lan@lists.osuosl.org

Signed-off-by: YiFei Zhu <zhuyifei@google.com>
Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 drivers/net/ethernet/intel/idpf/xdp.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 21ce25b0567f..850389ca66b6 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2025 Intel Corporation */
 
 #include "idpf.h"
+#include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 #include "xdp.h"
 #include "xsk.h"
@@ -369,6 +370,31 @@ int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 				       idpf_xdp_tx_finalize);
 }
 
+static int idpf_xdpmo_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
+{
+	const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
+	const struct libeth_xdp_buff *xdp = (typeof(xdp))ctx;
+	const struct idpf_rx_queue *rxq;
+	u64 cached_time, ts_ns;
+	u32 ts_high;
+
+	rx_desc = xdp->desc;
+	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
+
+	if (!idpf_queue_has(PTP, rxq))
+		return -ENODATA;
+	if (!(rx_desc->ts_low & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
+		return -ENODATA;
+
+	cached_time = READ_ONCE(rxq->cached_phc_time);
+
+	ts_high = le32_to_cpu(rx_desc->ts_high);
+	ts_ns = idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
+
+	*timestamp = ts_ns;
+	return 0;
+}
+
 static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
 			      enum xdp_rss_hash_type *rss_type)
 {
@@ -392,6 +418,7 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
 }
 
 static const struct xdp_metadata_ops idpf_xdpmo = {
+	.xmo_rx_timestamp	= idpf_xdpmo_rx_timestamp,
 	.xmo_rx_hash		= idpf_xdpmo_rx_hash,
 };
 

base-commit: e05021a829b834fecbd42b173e55382416571b2c
-- 
2.52.0.rc2.455.g230fcf2819-goog

