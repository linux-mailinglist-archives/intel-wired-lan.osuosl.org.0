Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F806954558
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E62B160B3E;
	Fri, 16 Aug 2024 09:24:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AndpQwnO5jmP; Fri, 16 Aug 2024 09:24:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44DFF60746
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723800252;
	bh=Bak+m2qQoBEQzYHvJmjORRQi4Tj5On9ZejuXC/d+69E=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QJ0UCnM0OFgul/TCUg4f8WYFzm0xb3woQKPvnbp+l0hG0s94TTlkoggJzvNOg4Qqb
	 HMtVm/WJoUSQ+BDWZQxQHABqNgpN7Ri7DDobNU1QLslpRhRITVUc5GqlXuAXreMmLZ
	 h5JZ715WHAZkfEn3y13GsWJYqidik4vHr0+4zHmu6tB4NKkWwfzLCJx5OGRpwjo+QJ
	 OEqLplLJy13ph2LGn5SBx38Kna8jq6RgHNMXUjNsTKuRyfdG/27cxcI9a5JQIKqXqu
	 3JiTY546NjK52LcFneLP4hwkDYvOZ14DUR02jhGBG6cTfknK3zQq2VxG5ciTw14/7m
	 ZxOlHwOLpp4+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44DFF60746;
	Fri, 16 Aug 2024 09:24:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31F351BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C09D81E1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PcgnWVJGiWJV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:24:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0DCDF81D18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DCDF81D18
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DCDF81D18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:08 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 16 Aug 2024 11:24:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240711-b4-igb_zero_copy-v6-1-4bfb68773b18@linutronix.de>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2300; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=U6trs47/PyNyJV/m4Ea4yvgs+072UkD6YSCfX6FH6WE=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmvxqyKDiKZjJAp9CblBxFnNhNqSEQqAXGeAt1G
 8Dm1VoIpIGJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZr8asgAKCRDBk9HyqkZz
 gsL0D/40xSksBfB+rDd3hF91cgxuSCBmJMP2Yyptt0AJ9OVJbG3GfZG9+2/GnXPEgRlt2Sr90aT
 qcpfeQTrMD9FWWCcFx1jIBfWEPKDPWhvb4C9olgaGviYUlDyufdQWc6kHVHr9l+e6m7ekTOEBf/
 XIL5cn1BYbNNJ9/pPftfrdBsxv00Ii+TLBVvP2gvM/6RmSexGUUpFHS+XUb4Cr9d15eWqph0CI9
 ua+5S/FT/zOXMhhwdLH3bKbVJEZzDmPYIZVF29624DEeonFIe7BcUrXUKNxwMO4mS4vUPXSirty
 Nr4idfrE3mhDtA1dbkpnhAdy+IKuJ/wniZym3i/jkY8TxD3Nw43itDId5+nPm8yMjCkADLWwa6G
 TF+unyg3oXk96+OpunovOGeQ/enwg33OCWvPFI0xJHQheDl7zGGzkx2QEF9vQitmF5Q3OGAgJxG
 JZ+E3WUu0yGGti6E1VJBLulclFHsnrXgK1hGAfx7O2xvlmNtf/4mB2TYNB6odsNHzWqBZADKlak
 npMn1vCKsuxIDa7gt1CEqcHSeU5Pvwr8yoibfDTpSEvQmv+yy86fmopSmo45OahZlVDTBd9ou5T
 C0rt8nuTz6Tgs27Mhz/djNNWuciwsEZ/dudCU/FVE9QaLGj8hwuk7Y4SpEXpY6Cq+40gCIj9qeV
 w9CD/EYljYdt4gg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1723800245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Bak+m2qQoBEQzYHvJmjORRQi4Tj5On9ZejuXC/d+69E=;
 b=4nWx4hb/K/UsXkzYYqApOvbdCjONyzCjhDLV0UTfrWiF5aqc7Mg8iOH4KIqntZqEtfQ8fQ
 9EnwAN8zGcZ7YY3ibyp1mgXqJtR/ltF7NmZ3IFG4EuUmMRUfPKtAAtQpZPnPFqKsd99RMZ
 R3IU65l/Bz5uUls5OeWrWbV8nGI2Hj6kJM2eL4PY8heZZEPcQ2iqhXGLRInIphwI//sQF/
 u+i8aJWoXmNWqPHixCWgU8tAy+HbHGHnjIHvsbFCXi15xylMuhdQch9/YWJ62BKgQ/2T5w
 7qTzpQRpWj7Kv0i9+ZoMpK78qLrFamWpNMz9pmDm9YGLhIMCk4sZT6E7yqqAhg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1723800245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Bak+m2qQoBEQzYHvJmjORRQi4Tj5On9ZejuXC/d+69E=;
 b=H9SkJjuFqaoe6ZVoNMhmPqjEyxboXhrC+eu+p7fL5h/qocsdVStcgpJPEpXBUJmJ5coJnv
 Qz6WcDCXQkindEDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=4nWx4hb/; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=H9SkJjuF
Subject: [Intel-wired-lan] [PATCH iwl-next v6 1/6] igb: Always call
 igb_xdp_ring_update_tail() under Tx lock
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>

Always call igb_xdp_ring_update_tail() under __netif_tx_lock(), add a
comment to indicate that. This is needed to share the same TX ring between
XDP, XSK and slow paths.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
[Kurt: Split patches]
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 11be39f435f3..4d5e5691c9bd 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2914,6 +2914,7 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	}
 }
 
+/* This function assumes __netif_tx_lock is held by the caller. */
 static void igb_xdp_ring_update_tail(struct igb_ring *ring)
 {
 	/* Force memory writes to complete before letting h/w know there
@@ -3000,11 +3001,11 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 		nxmit++;
 	}
 
-	__netif_tx_unlock(nq);
-
 	if (unlikely(flags & XDP_XMIT_FLUSH))
 		igb_xdp_ring_update_tail(tx_ring);
 
+	__netif_tx_unlock(nq);
+
 	return nxmit;
 }
 
@@ -8853,12 +8854,14 @@ static void igb_put_rx_buffer(struct igb_ring *rx_ring,
 
 static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 {
+	unsigned int total_bytes = 0, total_packets = 0;
 	struct igb_adapter *adapter = q_vector->adapter;
 	struct igb_ring *rx_ring = q_vector->rx.ring;
-	struct sk_buff *skb = rx_ring->skb;
-	unsigned int total_bytes = 0, total_packets = 0;
 	u16 cleaned_count = igb_desc_unused(rx_ring);
+	struct sk_buff *skb = rx_ring->skb;
+	int cpu = smp_processor_id();
 	unsigned int xdp_xmit = 0;
+	struct netdev_queue *nq;
 	struct xdp_buff xdp;
 	u32 frame_sz = 0;
 	int rx_buf_pgcnt;
@@ -8986,7 +8989,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	if (xdp_xmit & IGB_XDP_TX) {
 		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
 
+		nq = txring_txq(tx_ring);
+		__netif_tx_lock(nq, cpu);
 		igb_xdp_ring_update_tail(tx_ring);
+		__netif_tx_unlock(nq);
 	}
 
 	u64_stats_update_begin(&rx_ring->rx_syncp);

-- 
2.39.2

