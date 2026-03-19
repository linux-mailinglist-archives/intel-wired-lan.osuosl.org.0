Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFSrKKQvvGnquAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CDF2CFBCF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5E4C615FF;
	Thu, 19 Mar 2026 17:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z5gqmt24gOKB; Thu, 19 Mar 2026 17:17:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDB7C61601
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773940640;
	bh=WGbzCKIs05fkhZHCHfv1/0M5dGRY957hmlR1wbvNhaE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QAp8MG2eJJMkMOSc5xP1O4AuVdnn+Vhtxk8Rj2RAblzl4z5lrPdX8RHLfE5EXp+Ab
	 A2+eApxcUsWoTBOWbugtNzJvK2X1eRHA8nBRMJs9fcdO1Q4Bha5sKnFaveCNJbSSA0
	 pNMkFX+FdFDbmMgtbliaK71OuXSC/Bxe9HzUN+awNZkIp6RD0nMAyapavIrGKxDruN
	 jDNP6Mufuv0WCEqNAESOxZIqlXfkkEiTgCKtvajY7sQk3/s3+KwYegW8RJGV9MKbJj
	 JBN+ORL5tXl+959b/nCY4/3ikWTyCmhK2RkPR2Puki13ZigPOp0zb4soWclNkA5OLC
	 6Z9CL9STi5NQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDB7C61601;
	Thu, 19 Mar 2026 17:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 46AD9267
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 28BF340F9D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3E88BQEhvqnJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 17:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4085D40F80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4085D40F80
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4085D40F80
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:16 +0000 (UTC)
Received: from ms-a2 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62JHGx9v076770
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 20 Mar 2026 02:16:59 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kohei.enju@gmail.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Thu, 19 Mar 2026 17:16:42 +0000
Message-ID: <20260319171650.5815-2-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319171650.5815-1-kohei@enjuk.jp>
References: <20260319171650.5815-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=WGbzCKIs05fkhZHCHfv1/0M5dGRY957hmlR1wbvNhaE=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773940619; v=1;
 b=Ohl5b+6HxbDnpIFWoGbaipMRS2j8uqfjhVN3LqyWWnzgiD3QGoPINdAA7m2ufRb9
 QFv97UeR20iSSgrw+fbQUM2wcLf/ybHLRNODHPDuwT7xXCFHOo346mw24AHCgN1F
 BxB2Ie1rPVtRCA921BdhkEfrGwa3dnUK/+6srsC0cUH7q/OUVLO7QHeHnjIHIX9+
 PAJO+vw8U0Ubo3EzTPvXFoPccO6+THnTHMRUnxn6578s4gHI72B0dxdotFCalyh7
 2rV2kyB+d+/6OnVWfLTIuFATXha5veNMPJLUVvQ8rhAAI4qYktFNFmNlzKcxHAkC
 fcy6kiRtbY81VUtzQbXW5Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=Ohl5b+6H
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for XDP
 metadata ops support
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,enjuk.jp:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: A1CDF2CFBCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Prepare 'struct i40e_xdp_buff' that contains an xdp_buff and a pointer
to i40e_rx_desc in order to pass the RX descriptor to the XDP kfuncs.
Also in ZC path, use XSK_CHECK_PRIV_TYPE() to ensure i40e_xdp_buff
doesn't exceed the offset of cb in xdp_buff_xsk.

No functional changes.

Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 ++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |  7 ++++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 12 ++++++++++++
 4 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 31a42ee18aa0..7966d9cb8009 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3619,7 +3619,7 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	}
 
 skip:
-	xdp_init_buff(&ring->xdp, xdp_frame_sz, &ring->xdp_rxq);
+	xdp_init_buff(&ring->xdp_ctx.xdp, xdp_frame_sz, &ring->xdp_rxq);
 
 	rx_ctx.dbuff = DIV_ROUND_UP(ring->rx_buf_len,
 				    BIT_ULL(I40E_RXQ_CTX_DBUFF_SHIFT));
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 4ffdb007c41a..cfaf724ee7ff 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2438,10 +2438,11 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			     unsigned int *rx_cleaned)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
+	struct i40e_xdp_buff *xdp_ctx = &rx_ring->xdp_ctx;
 	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
 	u16 clean_threshold = rx_ring->count / 2;
 	unsigned int offset = rx_ring->rx_offset;
-	struct xdp_buff *xdp = &rx_ring->xdp;
+	struct xdp_buff *xdp = &xdp_ctx->xdp;
 	unsigned int xdp_xmit = 0;
 	struct bpf_prog *xdp_prog;
 	bool failure = false;
@@ -2530,6 +2531,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		if (neop)
 			continue;
 
+		xdp_ctx->desc = rx_desc;
+
 		xdp_res = i40e_run_xdp(rx_ring, xdp, xdp_prog);
 
 		if (xdp_res) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index e630493e9139..6c6ba42ee00c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -283,6 +283,11 @@ struct i40e_rx_buffer {
 	__u32 page_count;
 };
 
+struct i40e_xdp_buff {
+	struct xdp_buff xdp;
+	const union i40e_rx_desc *desc;
+};
+
 struct i40e_queue_stats {
 	u64 packets;
 	u64 bytes;
@@ -345,7 +350,7 @@ struct i40e_ring {
 	 * and to resume packet building for this ring in the next call to
 	 * i40e_clean_rx_ring_irq().
 	 */
-	struct xdp_buff xdp;
+	struct i40e_xdp_buff xdp_ctx;
 
 	/* Next descriptor to be processed; next_to_clean is updated only on
 	 * processing EOP descriptor
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 9f47388eaba5..51a05ce4c7ce 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -246,6 +246,8 @@ bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 count)
 	u32 nb_buffs, i;
 	dma_addr_t dma;
 
+	XSK_CHECK_PRIV_TYPE(struct i40e_xdp_buff);
+
 	rx_desc = I40E_RX_DESC(rx_ring, ntu);
 	xdp = i40e_rx_bi(rx_ring, ntu);
 
@@ -396,6 +398,14 @@ static void i40e_handle_xdp_result_zc(struct i40e_ring *rx_ring,
 	WARN_ON_ONCE(1);
 }
 
+static struct i40e_xdp_buff *xsk_buff_to_i40e_ctx(struct xdp_buff *xdp)
+{
+	/* xdp_buff pointer used by ZC code path is allocated as xdp_buff_xsk.
+	 * i40e_xdp_buff private fields overlap with xdp_buff_xsk->cb.
+	 */
+	return (struct i40e_xdp_buff *)xdp;
+}
+
 /**
  * i40e_clean_rx_irq_zc - Consumes Rx packets from the hardware ring
  * @rx_ring: Rx ring
@@ -472,6 +482,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		if (i40e_is_non_eop(rx_ring, rx_desc))
 			continue;
 
+		xsk_buff_to_i40e_ctx(first)->desc = rx_desc;
+
 		xdp_res = i40e_run_xdp_zc(rx_ring, first, xdp_prog);
 		i40e_handle_xdp_result_zc(rx_ring, first, rx_desc, &rx_packets,
 					  &rx_bytes, xdp_res, &failure);
-- 
2.51.0

