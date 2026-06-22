Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u53SFWJSOWpRqgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 17:18:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D6C6B0A90
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 17:18:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=dOmz5jKi;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDBC06F4B2;
	Mon, 22 Jun 2026 15:18:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ca8dpO6pRpck; Mon, 22 Jun 2026 15:18:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65BE86F4A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782141535;
	bh=lQ6820iITIA8rfRG1G6WnH79UtAQMYvsY0SEqnsvm9s=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=dOmz5jKiiRG3J/7+8bEZG5/W17CG5qh3+C3JOcUq7ykZgDYVMeJH4LrEylT+Wf3mR
	 RRLZB77R3O8EDXBkKe1/WoBf8GDUpNaBuqrHtyww00JlS3jlggVqirfYieXGTYII69
	 BgYTLPvPjdfWllxhBiKiZ/Sby3dySflTtxL/Bai3oV+YEOkTq0BAASTlKzAJAhqO6w
	 aQrjhpd06r8U4+mzzPr8E65eYmKnfxtpnlJ0uQQo41dWL+lzGM6maYFQkaCp8olX4U
	 jMFlUuRkiDv5Sd5Ok4scblWYgntrJ4d00rw0G7J7konZ6PfvicAbyudgOnRjXZToxp
	 K/mGL3rkxydMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65BE86F4A2;
	Mon, 22 Jun 2026 15:18:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7853F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 04:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CEE47864CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 04:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QM574C8N-2zS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 04:23:20 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 22 Jun 2026 04:23:17 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE493864C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE493864C5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.228;
 helo=mta-65-228.siemens.flowmailer.net;
 envelope-from=fm-1335312-2026062204181078e3faed0b000207ed-isagak@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-228.siemens.flowmailer.net
 (mta-65-228.siemens.flowmailer.net [185.136.65.228])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE493864C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 04:23:17 +0000 (UTC)
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id
 2026062204181078e3faed0b000207ed
 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 06:18:11 +0200
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jan.kiszka@siemens.com,
 florian.bezdeka@siemens.com
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, meng.ding@siemens.com, wq.wang@siemens.com
Date: Mon, 22 Jun 2026 12:13:23 +0800
Message-ID: <20260622041718.6106-1-meng.ding@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1335312:519-21489:flowmailer
X-Mailman-Approved-At: Mon, 22 Jun 2026 15:18:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=meng.ding@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=lQ6820iITIA8rfRG1G6WnH79UtAQMYvsY0SEqnsvm9s=;
 b=BJLvzfX+eCse1bfv8oRwaLkLaDZqHeFNHEvkIKrDlz0z8cMJhrriAOT0sdf5h0OJ7PGAcy
 RIKExtWEyn/jwOq1JOyh9ZInEE08LBG4MBu+KKv5/2WVTYzaknxfQ8ikiRb4L71adsm6ZITv
 FE9Pl5VMqt5Y+GiLK1UbdhpR+s7eYS+ZgSQpC1s+U8FPk+xSCkuYEvQiZHa0GrvwsUeJpVG2
 omrB6/iBQHPk8y3pIegqtLHQ8cFwWcEq1g0tlSBnlPl5n/LRn8eEN5Gr6mbagkzZfiH4gP/I
 YYB/AHiQoypuTMk/tyNlE0hbxEYEgCorVLS1EptyWkBa4HeMVNIU09xg==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=meng.ding@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=BJLvzfX+
Subject: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp reporting
 when NET_RX_BUSY_POLL is disabled
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
From: Ding Meng via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Ding Meng <meng.ding@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jan.kiszka@siemens.com,m:florian.bezdeka@siemens.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:meng.ding@siemens.com,m:wq.wang@siemens.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[meng.ding@siemens.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6D6C6B0A90

When CONFIG_NET_RX_BUSY_POLL is deactivated, fetching RX HW timestamps
from the NIC no longer works as expected.

This occurs because disabling CONFIG_NET_RX_BUSY_POLL disables the
SKB NAPI mapping in __skb_mark_napi_id(). Consequently, get_timestamp()
fails to perform its driver lookup, and the igc driver's struct
net_device_ops::ndo_get_tstamp is never invoked.

Instead, get_timestamp() falls back to use shhwtstamps(skb)->hwtstamp,
a field that the driver has not populated.

Fix this by populating the hwtstamp field with the correct timestamp
in the default timer when CONFIG_NET_RX_BUSY_POLL is disabled.

Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
Co-developed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
Signed-off-by: Florian Bezdeka <florian.bezdeka@siemens.com>
Signed-off-by: Ding Meng <meng.ding@siemens.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 38 ++++++++++++++++-------
 1 file changed, 26 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8ac16808023..1da8d7aa76d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1992,7 +1992,26 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 	return skb;
 }
 
-static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
+static void igc_construct_skb_timestamps(struct igc_adapter *adapter,
+					 struct sk_buff *skb,
+					 struct igc_xdp_buff *ctx)
+{
+	if (!ctx->rx_ts)
+		return;
+#ifdef CONFIG_NET_RX_BUSY_POLL
+	skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
+	skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
+#else
+	struct igc_inline_rx_tstamps *tstamps;
+
+	tstamps = ctx->rx_ts;
+	skb_hwtstamps(skb)->hwtstamp = igc_ptp_rx_pktstamp(adapter,
+							   tstamps->timer0);
+#endif
+}
+
+static struct sk_buff *igc_construct_skb(struct igc_adapter *adapter,
+					 struct igc_ring *rx_ring,
 					 struct igc_rx_buffer *rx_buffer,
 					 struct igc_xdp_buff *ctx)
 {
@@ -2013,10 +2032,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 	if (unlikely(!skb))
 		return NULL;
 
-	if (ctx->rx_ts) {
-		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
-		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
-	}
+	igc_construct_skb_timestamps(adapter, skb, ctx);
 
 	/* Determine available headroom for copy */
 	headlen = size;
@@ -2686,7 +2702,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		else if (ring_uses_build_skb(rx_ring))
 			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
 		else
-			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx);
+			skb = igc_construct_skb(adapter, rx_ring, rx_buffer, &ctx);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!xdp_res && !skb) {
@@ -2738,7 +2754,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	return total_packets;
 }
 
-static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
+static struct sk_buff *igc_construct_skb_zc(struct igc_adapter *adapter,
+					    struct igc_ring *ring,
 					    struct igc_xdp_buff *ctx)
 {
 	struct xdp_buff *xdp = &ctx->xdp;
@@ -2760,10 +2777,7 @@ static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
 		__skb_pull(skb, metasize);
 	}
 
-	if (ctx->rx_ts) {
-		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
-		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
-	}
+	igc_construct_skb_timestamps(adapter, skb, ctx);
 
 	return skb;
 }
@@ -2775,7 +2789,7 @@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
 	struct igc_ring *ring = q_vector->rx.ring;
 	struct sk_buff *skb;
 
-	skb = igc_construct_skb_zc(ring, ctx);
+	skb = igc_construct_skb_zc(q_vector->adapter, ring, ctx);
 	if (!skb) {
 		ring->rx_stats.alloc_failed++;
 		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &ring->flags);

base-commit: 4549871118cf616eecdd2d939f78e3b9e1dddc48
-- 
2.47.3

