Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 957956E65EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 15:31:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2072A41C22;
	Tue, 18 Apr 2023 13:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2072A41C22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681824663;
	bh=BDObCcDZlGk0DkNleeoiPFeaXTY+rH1XFfO8Ztx8x20=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JDOixxlTZ+QjQZK+AZ6MdOOPoV0M0Y0jRw4Yf047wwmK+WXKgsT7m8zX8++UjJYD8
	 6cN5UbD4WFKWJnfSvoj4HlXhx2VJs1XM2BcvClksUE96VZmAvfzjankJEnnu0wUcV9
	 R24g4vuU59UG+HECIs0GVUGLfYYBTeZA/EDIvxp7NuQWByyV918Q/FCJmW81Ozhgvh
	 pXJKqDkaSsB/Nr01w9DvqWfAxU9Mgan1Y4oMhLg0Iq6nvObmkLTZ5yR6jfAArllypO
	 RhiXcnN4evm42KWzfRat16dx5gNRhZ0lWM34q9CTlH15XWYw1pVhkVLLDEGZSELkqd
	 +L+Eg30tsOQig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FApL1pnh8SJ0; Tue, 18 Apr 2023 13:31:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE990401E5;
	Tue, 18 Apr 2023 13:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE990401E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 469761C42BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 13:30:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F1D66140F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 13:30:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F1D66140F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWYriAsuZjTF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 13:30:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52C1C613E9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 52C1C613E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 13:30:55 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-M3qm-VqHPhe-2EZbfBelfg-1; Tue, 18 Apr 2023 09:30:49 -0400
X-MC-Unique: M3qm-VqHPhe-2EZbfBelfg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCAD93850546;
 Tue, 18 Apr 2023 13:30:48 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7708F40C6E70;
 Tue, 18 Apr 2023 13:30:48 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id CCEBD307372E8;
 Tue, 18 Apr 2023 15:30:47 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Tue, 18 Apr 2023 15:30:47 +0200
Message-ID: <168182464779.616355.3761989884165609387.stgit@firesoul>
In-Reply-To: <168182460362.616355.14591423386485175723.stgit@firesoul>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681824654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s+Y/+d2DHAvX2dx/BnZZeyLeqZ6PrSxKqotJvAsNqb8=;
 b=Vy/k19jlE5XjSUClOQnNnl06En3VXZWqfspXNnX+wbCnyAXl/HDQ8VNFGiytV2b2wNZw8K
 MY7gYlfvRtl2ijopvGS6lFJDh9akVdU1I1DHHMcupMFLD8ZUlRXB/0YXltx84awJurILsJ
 qDb5e9KRDur1MhmgG1EqnHQI5Z4aYT4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Vy/k19jl
Subject: [Intel-wired-lan] [PATCH bpf-next V2 2/5] igc: add igc_xdp_buff
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
 edumazet@google.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
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

The changes needed for AF_XDP zero-copy in igc_clean_rx_irq_zc()
is done in next patch, because the member rx_desc isn't available
at this point.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |    5 +++++
 drivers/net/ethernet/intel/igc/igc_main.c |   16 +++++++++-------
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index f7f9e217e7b4..76a5115aefc8 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -499,6 +499,11 @@ struct igc_rx_buffer {
 	};
 };
 
+/* context wrapper around xdp_buff to provide access to descriptor metadata */
+struct igc_xdp_buff {
+	struct xdp_buff xdp;
+};
+
 struct igc_q_vector {
 	struct igc_adapter *adapter;    /* backlink */
 	void __iomem *itr_register;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bfa9768d447f..6a4c7cd706bd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2236,6 +2236,8 @@ static bool igc_alloc_rx_buffers_zc(struct igc_ring *ring, u16 count)
 	if (!count)
 		return ok;
 
+	XSK_CHECK_PRIV_TYPE(struct igc_xdp_buff);
+
 	desc = IGC_RX_DESC(ring, i);
 	bi = &ring->rx_buffer_info[i];
 	i -= ring->count;
@@ -2520,8 +2522,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		union igc_adv_rx_desc *rx_desc;
 		struct igc_rx_buffer *rx_buffer;
 		unsigned int size, truesize;
+		struct igc_xdp_buff ctx;
 		ktime_t timestamp = 0;
-		struct xdp_buff xdp;
 		int pkt_offset = 0;
 		void *pktbuf;
 
@@ -2555,13 +2557,13 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
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
 
-			skb = igc_xdp_run_prog(adapter, &xdp);
+			skb = igc_xdp_run_prog(adapter, &ctx.xdp);
 		}
 
 		if (IS_ERR(skb)) {
@@ -2583,9 +2585,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
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


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
