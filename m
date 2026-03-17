Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKFCOTfzuGncmAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 07:22:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6519A2A4458
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 07:22:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 133EB41414;
	Tue, 17 Mar 2026 06:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYYZ9hD-08a9; Tue, 17 Mar 2026 06:22:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4625741482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773728564;
	bh=FSGEy83Ejkug+FTTykT/GYOYqYSI90bywuoJAtinwXs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AWGYbqoNkA+n7HlPjxo4oGnBvtBdDvY1BkP7LPRwaZX2SV/PgGF6H8sqkd3eW2I31
	 4XsXP+Zbg0j/zloOLSWaCFxzIrn8ZvOWhc6DAyzJ8YhNQlN0dA/3zvCfoSx5eFGJ2E
	 9Qw/6+ycxML9cN5AcOXZKg+wwdv2+1RFsbltJ16lLN2uxhRKgk//2N87sANP8KY+0B
	 Odbhql4Hzl5YgaFU1o8gLBXi97kS4DDFSOC8yGVCDjZSMx5bObzp1ytGHNtC4zhy4x
	 2DGypGsccd2rauMSet3yxIj0YUoHxPrSstroTbr5epsWTOePGBhjocKwm0PRvH32hO
	 TLPGoU8c7EUUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4625741482;
	Tue, 17 Mar 2026 06:22:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B38D33BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 06:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B12246085B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 06:22:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hZAWO0v_D87D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2026 06:22:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 62C0C60825
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62C0C60825
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62C0C60825
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 06:22:39 +0000 (UTC)
Received: from ms-a2 (16.4.31.150.dy.iij4u.or.jp [150.31.4.16])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62H6MBPV068957
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 17 Mar 2026 15:22:11 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, dima.ruinskiy@intel.com,
 kohei.enju@gmail.com, Kohei Enju <kohei@enjuk.jp>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 17 Mar 2026 06:21:45 +0000
Message-ID: <20260317062205.39406-2-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260317062205.39406-1-kohei@enjuk.jp>
References: <20260317062205.39406-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=FSGEy83Ejkug+FTTykT/GYOYqYSI90bywuoJAtinwXs=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773728532; v=1;
 b=naFxhx571U3+TZ4vOApOb3aP/gHwlhPXLNOiF02sU0376595d9Mnd93qitlYL+QA
 2Zrxmz+FB24w/waeqCRV5EqZY88RhK6AK607jBDe8+wY5kmf33ySX4LDtvKdeBTg
 czheDR4m62aqNPB+kyOo1JS3aLuFXbwpski5HEwx23xZohbEfYiHVt6tgtQSrhYu
 6CO2fTOBe0zgCDHN/D7LmIkB0jjYaClSK97CFfkGB994kMKDbdF3fRkW0uokbkK5
 NkiePoxVCcImcnlQfL9Q/gR/u6ThxqgBww8fyjYhp0ai0w5LgNqK6+UoNoh+/5A1
 CstwXAic7Alo3VcUGftqlg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=enjuk.jp header.i=@enjuk.jp
 header.a=rsa-sha256 header.s=rs20251215 header.b=naFxhx57
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igc: set RX hardware
 timestamps in igc_build_skb()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,enjuk.jp:email,enjuk.jp:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6519A2A4458
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

igc_construct_skb() sets RX hardware timestamps, but igc_build_skb()
does not. This has not been observable so far since igc currently does
not enable the build_skb RX path.

Set RX hardware timestamps in igc_build_skb() as well so that both skb
construction paths provide the same behavior.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index cad5a26cc84d..79192b02e6be 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1964,8 +1964,9 @@ static void igc_add_rx_frag(struct igc_ring *rx_ring,
 
 static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 				     struct igc_rx_buffer *rx_buffer,
-				     struct xdp_buff *xdp)
+				     struct igc_xdp_buff *ctx)
 {
+	struct xdp_buff *xdp = &ctx->xdp;
 	unsigned int size = xdp->data_end - xdp->data;
 	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
 	unsigned int metasize = xdp->data - xdp->data_meta;
@@ -1979,6 +1980,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 	if (unlikely(!skb))
 		return NULL;
 
+	if (ctx->rx_ts) {
+		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
+		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
+	}
+
 	/* update pointers within the skb to store the data */
 	skb_reserve(skb, xdp->data - xdp->data_hard_start);
 	__skb_put(skb, size);
@@ -2681,7 +2687,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		} else if (skb)
 			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
 		else if (ring_uses_build_skb(rx_ring))
-			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
+			skb = igc_build_skb(rx_ring, rx_buffer, &ctx);
 		else
 			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx);
 
-- 
2.51.0

