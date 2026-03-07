Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODiWJmZurGmxpgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 19:28:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1303C22D3BA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 19:28:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0AC983EB4;
	Sat,  7 Mar 2026 18:28:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xoUttytSd2ve; Sat,  7 Mar 2026 18:28:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BBF883C0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772908127;
	bh=HQ8r0KD4toX/rc513azQPOVmYJYl5d5vX7tPVgX5kFk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9e0SUlXe+bd5BvKwvPTUbwd5OGlgRKwATyAtLh4nUvcFAFwhPRjwx9kuyMZn/DEVy
	 ouqazcCPIActh8mrQT1q/O2SZRr5HmlWfaQkB/XCIkVsfUz5nAdyy6ksS5qrMYFcj8
	 v5UmVNXF9XwRlT6H9XTxgjqQQKbigw78HAKushi1axAoQuRx1XVQLrDQ0ocIpJ/l0i
	 wIiAtBZu6zdf4+AEzP+48FT13HyrhCGuLyGyhRMWwRDfYX3MdDfVbKYggTSSg9TncS
	 RG5D3DdvXIO+f03KD6xkoXywFUwHeKb0UrVCJq5Gzk33dFZcrct/V1wtx13+LGf/21
	 lSlGDiPAHyzPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BBF883C0E;
	Sat,  7 Mar 2026 18:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 07DB1169
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 18:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED0EF60E13
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 18:28:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GEL3fevG_HbR for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2026 18:28:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0D4160B5A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0D4160B5A
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0D4160B5A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 18:28:43 +0000 (UTC)
Received: from ms-a2 (79.25.31.150.dy.iij4u.or.jp [150.31.25.79])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 627ISK1U043213
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 8 Mar 2026 03:28:20 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kohei.enju@gmail.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Sat,  7 Mar 2026 18:27:39 +0000
Message-ID: <20260307182808.155027-3-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260307182808.155027-1-kohei@enjuk.jp>
References: <20260307182808.155027-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=HQ8r0KD4toX/rc513azQPOVmYJYl5d5vX7tPVgX5kFk=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1772908101; v=1;
 b=U0sMezoFkOQ9cAVyLHK4zpPnJ2qlY/uDJtDQYI+1cJEnBlmjrnANnkV/W6joGAfN
 BTRW5+olSpLpkRlMYyOspZbNKgk8HAdqXwwkobnKipPZPF/1guCi/A2Qb5ByLl0g
 BeiMl1lRSyFZxii0OBWD8GgX6QZnkusrji0Mm2YsY7dBH+7ja4CyMB9jXRQoT6sC
 qhBJOLfI2zIYAkHXNv3WiCTQkc9TEh2wKpRWWI9BafPN5VTaqiOIa45ToBuFdhDL
 cwOnJNCDF7ayFN1LxuNTCbgQnF5L+hGKwXCM5WIH/+0V+kfGaoctMrQnEe7OPjQQ
 zhktN2fOHXymaE6+JOVtxg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=U0sMezoF
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: enable build_skb on
 the non-XDP small-frame RX path
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
X-Rspamd-Queue-Id: 1303C22D3BA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,enjuk.jp:email,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

igc implements igc_build_skb(), but it is currently unused because the
IGC_RING_FLAG_RX_BUILD_SKB_ENABLED bit is never set. Enable the
build_skb path when XDP is not active and the configured maximum frame
size fits within IGC_MAX_FRAME_BUILD_SKB.

In a single-queue small-packet (64-byte) RX microbenchmark on my setup,
enabling build_skb improved the receive rate from about 3.11 Mpps to
about 3.30 Mpps, while reducing missed packets from about 484 kpps to
about 300 kpps.

Keep the XDP path unchanged for now, since it uses a different RX buffer
layout based on XDP_PACKET_HEADROOM, and enabling it there would need
separate validation and buffer layout adjustments.

Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/igc/igc.h      | 4 ++++
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index e66799507f81..acbd2c237667 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -734,6 +734,10 @@ enum igc_ring_flags_t {
 
 #define ring_uses_build_skb(ring) \
 	test_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
+#define set_ring_uses_build_skb(ring) \
+	set_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
+#define clear_ring_uses_build_skb(ring) \
+	clear_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
 
 static inline unsigned int igc_rx_bufsz(struct igc_ring *ring)
 {
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 3a4c1ebe4faa..1f3ed1e4db1b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -474,6 +474,7 @@ static void igc_clean_rx_ring(struct igc_ring *ring)
 		igc_clean_rx_ring_page_shared(ring);
 
 	clear_ring_uses_large_buffer(ring);
+	clear_ring_uses_build_skb(ring);
 
 	ring->next_to_alloc = 0;
 	ring->next_to_clean = 0;
@@ -654,6 +655,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 
 	if (igc_xdp_is_enabled(adapter))
 		set_ring_uses_large_buffer(ring);
+	else if (!(adapter->flags & IGC_FLAG_RX_LEGACY) &&
+		 adapter->max_frame_size <= IGC_MAX_FRAME_BUILD_SKB)
+		set_ring_uses_build_skb(ring);
 
 	/* disable the queue */
 	wr32(IGC_RXDCTL(reg_idx), 0);
-- 
2.51.0

