Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856546C332C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:47:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10F8C40BDF;
	Tue, 21 Mar 2023 13:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10F8C40BDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679406459;
	bh=uNp401x94UaHv7ojWgWN9+jNalMd9SquKdtfSEki3LA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m8TJ5Nsrsv0uYSiT2277YS+ti0ALA42txbuLgmKs4z6VqzmoKN1J91JGxW30h0XPX
	 vnhSPAtrWV3aPXeBSGas4BMmNLUl5IAPKBkptbsTH7aT3tw2x3hw21DYhxA947Z7X6
	 PFwCLUbqO9NYxtDQ2dysQWFoDmI2jSrAHxTL56hKWaHfUjEFFr9P2+qfJ4pwxiLOwl
	 HaQPbUqzVM6AQvO7gE6W9h+IXD3W5Ac/LxiEcrh6Igayo3Spz3CkyKHIgXyo86xw/3
	 3au83gkWuYZXDCyDZP1C1CGFmgKcHkOxazP+3BxDqpDx1MU8r3vBtto8LRgdpImEY9
	 9uceeQHfwVLww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQZ9HOeP47uQ; Tue, 21 Mar 2023 13:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE7F040BCB;
	Tue, 21 Mar 2023 13:47:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE7F040BCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E99A1BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7864741870
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7864741870
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Q4GAgSKnZFO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:47:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69DDA4181C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69DDA4181C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:30 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-3PlnGXVvOnajIAYfARlotg-1; Tue, 21 Mar 2023 09:47:24 -0400
X-MC-Unique: 3PlnGXVvOnajIAYfARlotg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC0211C06EC7;
 Tue, 21 Mar 2023 13:47:22 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 576671121314;
 Tue, 21 Mar 2023 13:47:22 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id C1A8830721A6C;
 Tue, 21 Mar 2023 14:47:21 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 21 Mar 2023 14:47:21 +0100
Message-ID: <167940644174.2718137.10542819958822859356.stgit@firesoul>
In-Reply-To: <167940634187.2718137.10209374282891218398.stgit@firesoul>
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679406449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9cB8ol+XD/9K04Phn5I9W86iTsOsQvs3qIilOxs7GVI=;
 b=DeWOA/khZ9D/Gj9DeKE5pe/L8l4VdJTeHo0Df8gpx7Xb7yqB1wDNz7y1sXKGoR/XTQKbkd
 GpUDOHAVCdkqEENh11Qs8hbjD8Dg1byaQcO8LCVTLrqQPiFZT+hpK3SAFa6MksQpc0L43o
 fPK8CeGntA6Xj6SF+fFkB/RCmlbQQ9o=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DeWOA/kh
Subject: [Intel-wired-lan] [PATCH bpf-next V2 4/6] igc: add igc_xdp_buff
 wrapper for xdp_buff in driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Driver specific metadata data for XDP-hints kfuncs are propagated via tail
extending the struct xdp_buff with a locally scoped driver struct.

Zero-Copy AF_XDP/XSK does similar tricks via struct xdp_buff_xsk. This
xdp_buff_xsk struct contains a CB area (24 bytes) that can be used for
extending the locally scoped driver into. The XSK_CHECK_PRIV_TYPE define
catch size violations build time.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |    6 ++++++
 drivers/net/ethernet/intel/igc/igc_main.c |   30 ++++++++++++++++++++++-------
 2 files changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index f83cbc4a1afa..bc67a52e47e8 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -499,6 +499,12 @@ struct igc_rx_buffer {
 	};
 };
 
+/* context wrapper around xdp_buff to provide access to descriptor metadata */
+struct igc_xdp_buff {
+	struct xdp_buff xdp;
+	union igc_adv_rx_desc *rx_desc;
+};
+
 struct igc_q_vector {
 	struct igc_adapter *adapter;    /* backlink */
 	void __iomem *itr_register;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index f6a54feec011..a78d7e6bcfd6 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2223,6 +2223,8 @@ static bool igc_alloc_rx_buffers_zc(struct igc_ring *ring, u16 count)
 	if (!count)
 		return ok;
 
+	XSK_CHECK_PRIV_TYPE(struct igc_xdp_buff);
+
 	desc = IGC_RX_DESC(ring, i);
 	bi = &ring->rx_buffer_info[i];
 	i -= ring->count;
@@ -2507,8 +2509,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		union igc_adv_rx_desc *rx_desc;
 		struct igc_rx_buffer *rx_buffer;
 		unsigned int size, truesize;
+		struct igc_xdp_buff ctx;
 		ktime_t timestamp = 0;
-		struct xdp_buff xdp;
 		int pkt_offset = 0;
 		void *pktbuf;
 
@@ -2542,13 +2544,14 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		}
 
 		if (!skb) {
-			xdp_init_buff(&xdp, truesize, &rx_ring->xdp_rxq);
-			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
+			xdp_init_buff(&ctx.xdp, truesize, &rx_ring->xdp_rxq);
+			xdp_prepare_buff(&ctx.xdp, pktbuf - igc_rx_offset(rx_ring),
 					 igc_rx_offset(rx_ring) + pkt_offset,
 					 size, true);
-			xdp_buff_clear_frags_flag(&xdp);
+			xdp_buff_clear_frags_flag(&ctx.xdp);
+			ctx.rx_desc = rx_desc;
 
-			skb = igc_xdp_run_prog(adapter, &xdp);
+			skb = igc_xdp_run_prog(adapter, &ctx.xdp);
 		}
 
 		if (IS_ERR(skb)) {
@@ -2570,9 +2573,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		} else if (skb)
 			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
 		else if (ring_uses_build_skb(rx_ring))
-			skb = igc_build_skb(rx_ring, rx_buffer, &xdp);
+			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
 		else
-			skb = igc_construct_skb(rx_ring, rx_buffer, &xdp,
+			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx.xdp,
 						timestamp);
 
 		/* exit if we failed to retrieve a buffer */
@@ -2673,6 +2676,15 @@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
 	napi_gro_receive(&q_vector->napi, skb);
 }
 
+static struct igc_xdp_buff *xsk_buff_to_igc_ctx(struct xdp_buff *xdp)
+{
+	/* xdp_buff pointer used by ZC code path is alloc as xdp_buff_xsk. The
+	 * igc_xdp_buff shares its layout with xdp_buff_xsk and private
+	 * igc_xdp_buff fields fall into xdp_buff_xsk->cb
+	 */
+       return (struct igc_xdp_buff *)xdp;
+}
+
 static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 {
 	struct igc_adapter *adapter = q_vector->adapter;
@@ -2691,6 +2703,7 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 	while (likely(total_packets < budget)) {
 		union igc_adv_rx_desc *desc;
 		struct igc_rx_buffer *bi;
+		struct igc_xdp_buff *ctx;
 		ktime_t timestamp = 0;
 		unsigned int size;
 		int res;
@@ -2708,6 +2721,9 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 
 		bi = &ring->rx_buffer_info[ntc];
 
+		ctx = xsk_buff_to_igc_ctx(bi->xdp);
+		ctx->rx_desc = desc;
+
 		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
 							bi->xdp->data);


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
