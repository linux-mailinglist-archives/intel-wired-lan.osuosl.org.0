Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /rUbNhKoQ2qGeQoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 13:27:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABC06E3933
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 13:27:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ZFoghbG3;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E4C960FEA;
	Tue, 30 Jun 2026 11:27:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQsQBKbuZ6ZD; Tue, 30 Jun 2026 11:27:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 401E060FE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782818832;
	bh=FGWjX5Iw+idjzBCUjhnqRS4MmD5hoBNLO0VdMjNcb0g=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=ZFoghbG3HxuZHGmvnzOiDEE0gy3IbOhTQlvihwKbZPP2x+06yYNsNSWHJVJGDhEUp
	 1cEoH6tfWKbSmzKQ/jm7CPw+pIO6kj5V000nN7xlKO2SrKLUNL0lg9nQGMY0rYI/vO
	 YBlWk+7ZHa0xJCdUJ1EHzAc4AiZ8wcXoQBpGI4QzLghBNS/lHLdlwo+rqLBFc5H9nR
	 eoF6SitnfMwlg1I4Up8L+ry2QP3laAG0SeOcp5EiSdsooQbrx9Jk7hDikoVEjxNrsV
	 OXhmK3NzwTq4NZeJOD7H8j76uhvW/g0hOsP/Mnu+cytNzBL6LISUKnYiooE+4pD0aN
	 BTNEVA7TnWqGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 401E060FE7;
	Tue, 30 Jun 2026 11:27:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AC94ED6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 11:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2097C41016
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 11:27:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UQSohyONfZls for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 11:27:09 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 30 Jun 2026 11:27:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 114D740207
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 114D740207
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.228;
 helo=mta-64-228.siemens.flowmailer.net;
 envelope-from=fm-1335312-20260630112200cc8f9f316c0002079e-as78u0@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-228.siemens.flowmailer.net
 (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 114D740207
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 11:27:07 +0000 (UTC)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id
 20260630112200cc8f9f316c0002079e
 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 13:22:01 +0200
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jan.kiszka@siemens.com,
 florian.bezdeka@siemens.com
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, meng.ding@siemens.com, wq.wang@siemens.com,
 pmenzel@molgen.mpg.de, stable@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Tue, 30 Jun 2026 19:15:23 +0800
Message-ID: <20260630112056.885071-1-meng.ding@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1335312:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=meng.ding@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=FGWjX5Iw+idjzBCUjhnqRS4MmD5hoBNLO0VdMjNcb0g=;
 b=au27Z8YjSO7lrdMiXMKZKX04axUjx3tCBcFn/n1iVduzZQwpYpn1MMDv3JXmUT35/VG1nZ
 muiVJZ9oa28547LGKhhcioH4cLarvCqcVCeULc1MIYDKoMg/tsspDJYrLs5agqoM3Wd6nmzV
 uWt5dJ3z9uyDhixiGcY6khTLwWraKKUYJNf5wicZaEBMfi8C75m8rC+w/9qM6cHt+vBV7j6z
 i7Sz1wK9qXAFdZQf3+Vq02+VIRgvywuG/EjTl+riq+DSvgLzQvwumxPQ6wJjAjI8qO2PKlji
 ZKijyupNhmCSt8qaljxIxGPu9lD+MvbnaanfmIHM4eOqjUWuq6NEYtqQ==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=meng.ding@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=au27Z8Yj
Subject: [Intel-wired-lan] [PATCH net v2] igc: Fix RX HW timestamp reporting
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jan.kiszka@siemens.com,m:florian.bezdeka@siemens.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:meng.ding@siemens.com,m:wq.wang@siemens.com,m:pmenzel@molgen.mpg.de,m:stable@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:piotr.kwapulinski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[meng.ding@siemens.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5ABC06E3933

When CONFIG_NET_RX_BUSY_POLL is deactivated, fetching RX HW timestamps
from the NIC no longer works as expected, often resulting in incorrect
or negative values such as "HW raw -121948.050407424".

This occurs because disabling CONFIG_NET_RX_BUSY_POLL disables the
SKB NAPI mapping in __skb_mark_napi_id(). Consequently, get_timestamp()
fails to perform its driver lookup, and the igc driver's struct
net_device_ops::ndo_get_tstamp is never invoked.

Instead, get_timestamp() falls back to use shhwtstamps(skb)->hwtstamp,
a field that the driver has not populated. This results in incorrect
timestamps.

Fix this by populating the hwtstamp field with the correct timestamp
in the default timer when CONFIG_NET_RX_BUSY_POLL is disabled.
The "igc_adapter" is passed to igc_construct_skb() to enable
igc_ptp_rx_pktstamp() to access the necessary adapter details for
adjusting the timestamp.

Test case:
 Disable CONFIG_NET_RX_BUSY_POLL.
 Sender:
 # tools/testing/selftests/net/timestamping en0 \
        SOF_TIMESTAMPING_TX_HARDWARE PTPV2 IP_MULTICAST_LOOP
 Receiver:
 # tools/testing/selftests/net/timestamping en0 \
        SOF_TIMESTAMPING_RX_HARDWARE SOF_TIMESTAMPING_RAW_HARDWARE PTPV2

Before patch, receiver prints
 HW raw -121948.050407424
After patch, receiver prints
 HW raw 1760648763.746974064

Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
Cc: stable@vger.kernel.org
Co-developed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
Signed-off-by: Florian Bezdeka <florian.bezdeka@siemens.com>
Signed-off-by: Ding Meng <meng.ding@siemens.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
V2:
  - update commit message(suggested by Paul Menzel):
      add error log
      explain why need to pass igc_adapter
      add test case
  - move variable declarations on top of the function
  - Cc stable@vger.kernel.org
V1: https://lore.kernel.org/intel-wired-lan/20260622041718.6106-1-meng.ding@siemens.com/
---
 drivers/net/ethernet/intel/igc/igc_main.c | 41 ++++++++++++++++-------
 1 file changed, 29 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8ac16808023..5c4beb8b5d4 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1992,7 +1992,29 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 	return skb;
 }
 
-static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
+static void igc_construct_skb_timestamps(struct igc_adapter *adapter,
+					 struct sk_buff *skb,
+					 struct igc_xdp_buff *ctx)
+{
+#ifndef CONFIG_NET_RX_BUSY_POLL
+	struct igc_inline_rx_tstamps *tstamps;
+#endif
+
+	if (!ctx->rx_ts)
+		return;
+
+#ifndef CONFIG_NET_RX_BUSY_POLL
+	tstamps = ctx->rx_ts;
+	skb_hwtstamps(skb)->hwtstamp = igc_ptp_rx_pktstamp(adapter,
+							   tstamps->timer0);
+#else
+	skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
+	skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
+#endif
+}
+
+static struct sk_buff *igc_construct_skb(struct igc_adapter *adapter,
+					 struct igc_ring *rx_ring,
 					 struct igc_rx_buffer *rx_buffer,
 					 struct igc_xdp_buff *ctx)
 {
@@ -2013,10 +2035,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 	if (unlikely(!skb))
 		return NULL;
 
-	if (ctx->rx_ts) {
-		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
-		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
-	}
+	igc_construct_skb_timestamps(adapter, skb, ctx);
 
 	/* Determine available headroom for copy */
 	headlen = size;
@@ -2686,7 +2705,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		else if (ring_uses_build_skb(rx_ring))
 			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
 		else
-			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx);
+			skb = igc_construct_skb(adapter, rx_ring, rx_buffer, &ctx);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!xdp_res && !skb) {
@@ -2738,7 +2757,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	return total_packets;
 }
 
-static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
+static struct sk_buff *igc_construct_skb_zc(struct igc_adapter *adapter,
+					    struct igc_ring *ring,
 					    struct igc_xdp_buff *ctx)
 {
 	struct xdp_buff *xdp = &ctx->xdp;
@@ -2760,10 +2780,7 @@ static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
 		__skb_pull(skb, metasize);
 	}
 
-	if (ctx->rx_ts) {
-		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
-		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
-	}
+	igc_construct_skb_timestamps(adapter, skb, ctx);
 
 	return skb;
 }
@@ -2775,7 +2792,7 @@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
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

