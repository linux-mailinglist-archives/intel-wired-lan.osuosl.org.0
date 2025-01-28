Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C1FA20A98
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jan 2025 13:32:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C639A80D32;
	Tue, 28 Jan 2025 12:32:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IllYgQvPNE-n; Tue, 28 Jan 2025 12:32:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1A4E80DA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738067546;
	bh=p4ixpKONXaTxPgBnMeyq9hz7nD1mrYbVaBMo2Q6Zl2w=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jF1Ffs0jZZWsvK3hORXG7fpvYymggi6QVGAOdK4c2cqm2xkoYM91N/39TkZ4kVh6Z
	 MLKBZFjjxuZ49KUreafogEL2W4pd9HDisbq9UDPNaUKf2WmePkyzISS7yQOccROb33
	 MNOl4ZY82CTUAX1EhdP0oTeV8wq3ZX+IXchx6ikRZAf00K/seNecEc9gqILxnn1tco
	 RSrVe7TPZbSG5tgSyspdEUFk3OHp51ly6w7B6dMheNRYzwOulsUsgYE97CdE8ZYuN3
	 HxqARSCvVfs98FCdy0ZIMbq6OlwhiVK9YnkavdShEbW+2mKN3pIsXMOWK3gJgSbAye
	 m09P9WvyK+i3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1A4E80DA3;
	Tue, 28 Jan 2025 12:32:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E70EA1183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2025 12:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C77E84095B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2025 12:32:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mqHZW6UCj1tf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jan 2025 12:32:23 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 28 Jan 2025 12:32:22 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1DD3F4093F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DD3F4093F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.227;
 helo=mta-65-227.siemens.flowmailer.net;
 envelope-from=fm-1328595-202501281227153cba92ae22107e6d51-8rhij8@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-227.siemens.flowmailer.net
 (mta-65-227.siemens.flowmailer.net [185.136.65.227])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DD3F4093F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2025 12:32:22 +0000 (UTC)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id
 202501281227153cba92ae22107e6d51
 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jan 2025 13:27:15 +0100
From: Zdenek Bouska <zdenek.bouska@siemens.com>
Date: Tue, 28 Jan 2025 13:26:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
X-B4-Tracking: v=1; b=H4sIAAfNmGcC/x2NwQ7CIBAFf6XZsy+BxibqrxgPCEvZQ5GwjUWb/
 rvE4xxmZiflKqx0G3aq/BaVV+5gTwP55PLMkNCZRjNOxo4XyOwRpSFtqA2rLKyrWwq2xBnFqXL
 A84OvRwsF1ymwM9bEaM/Um6Vyl/+/++M4fhyn/7t/AAAA
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, 
 Florian Bezdeka <florian.bezdeka@siemens.com>, 
 Jan Kiszka <jan.kiszka@siemens.com>, 
 Song Yoong Siang <yoong.siang.song@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org, 
 Zdenek Bouska <zdenek.bouska@siemens.com>
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1328595:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=zdenek.bouska@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=p4ixpKONXaTxPgBnMeyq9hz7nD1mrYbVaBMo2Q6Zl2w=;
 b=hQqdfVBP3AM7WaZHqHi1myUev0D3MsOvJpsfORbVHsl8HkRZx6Rzx1cU+7jTaPu/kHngdL
 oEi6uxyZSpu3Av4Rq3WjG+O5rDPrtU4OzJLw73iw47usrcTl6SjrRQKRtt6yPRBIDRNHyNwZ
 fFxzKjH3oyYZBh/3R1h01hGluE4XVGYQlZ9CQdeYjIMNHjbInQSVEpxdOprKSAdNkUMhM1i7
 tzrLfGplmbAfDHzMi2iCkBl1nhQAGllXJ0rbdoCd9XnZLR73MckcFyM/DyzlpEhA/FMBoiSY
 WTDjA87pns/piTcjqm7HU+LifhzLcSUCcNGlnWTNHfWeJHh98DpuDbMQ==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=zdenek.bouska@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=hQqdfVBP
Subject: [Intel-wired-lan] [PATCH] igc: Fix HW RX timestamp when passed by
 ZC XDP
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

Fixes HW RX timestamp in the following scenario:
- AF_PACKET socket with enabled HW RX timestamps is created
- AF_XDP socket with enabled zero copy is created
- frame is forwarded to the BPF program, where the timestamp should
  still be readable (extracted by igc_xdp_rx_timestamp(), kfunc
  behind bpf_xdp_metadata_rx_timestamp())
- the frame got XDP_PASS from BPF program, redirecting to the stack
- AF_PACKET socket receives the frame with HW RX timestamp

Moves the skb timestamp setting from igc_dispatch_skb_zc() to
igc_construct_skb_zc() so that igc_construct_skb_zc() is similar to
igc_construct_skb().

This issue can also be reproduced by running:
 # tools/testing/selftests/bpf/xdp_hw_metadata enp1s0
When a frame with the wrong port 9092 (instead of 9091) is used:
 # echo -n xdp | nc -u -q1 192.168.10.9 9092
then the RX timestamp is missing and xdp_hw_metadata prints:
 skb hwtstamp is not found!

With this fix or when copy mode is used:
 # tools/testing/selftests/bpf/xdp_hw_metadata -c enp1s0
then RX timestamp is found and xdp_hw_metadata prints:
 found skb hwtstamp = 1736509937.852786132

Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 27872bdea9bd..d6c3147725b7 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2707,8 +2707,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 }
 
 static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
-					    struct xdp_buff *xdp)
+					    struct igc_xdp_buff *ctx)
 {
+	struct xdp_buff *xdp = &ctx->xdp;
 	unsigned int totalsize = xdp->data_end - xdp->data_meta;
 	unsigned int metasize = xdp->data - xdp->data_meta;
 	struct sk_buff *skb;
@@ -2727,27 +2728,28 @@ static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
 		__skb_pull(skb, metasize);
 	}
 
+	if (ctx->rx_ts) {
+		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
+		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
+	}
+
 	return skb;
 }
 
 static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
 				union igc_adv_rx_desc *desc,
-				struct xdp_buff *xdp,
-				ktime_t timestamp)
+				struct igc_xdp_buff *ctx)
 {
 	struct igc_ring *ring = q_vector->rx.ring;
 	struct sk_buff *skb;
 
-	skb = igc_construct_skb_zc(ring, xdp);
+	skb = igc_construct_skb_zc(ring, ctx);
 	if (!skb) {
 		ring->rx_stats.alloc_failed++;
 		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &ring->flags);
 		return;
 	}
 
-	if (timestamp)
-		skb_hwtstamps(skb)->hwtstamp = timestamp;
-
 	if (igc_cleanup_headers(ring, desc, skb))
 		return;
 
@@ -2783,7 +2785,6 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 		union igc_adv_rx_desc *desc;
 		struct igc_rx_buffer *bi;
 		struct igc_xdp_buff *ctx;
-		ktime_t timestamp = 0;
 		unsigned int size;
 		int res;
 
@@ -2813,6 +2814,8 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 			 */
 			bi->xdp->data_meta += IGC_TS_HDR_LEN;
 			size -= IGC_TS_HDR_LEN;
+		} else {
+			ctx->rx_ts = NULL;
 		}
 
 		bi->xdp->data_end = bi->xdp->data + size;
@@ -2821,7 +2824,7 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 		res = __igc_xdp_run_prog(adapter, prog, bi->xdp);
 		switch (res) {
 		case IGC_XDP_PASS:
-			igc_dispatch_skb_zc(q_vector, desc, bi->xdp, timestamp);
+			igc_dispatch_skb_zc(q_vector, desc, ctx);
 			fallthrough;
 		case IGC_XDP_CONSUMED:
 			xsk_buff_free(bi->xdp);

---
base-commit: ffd294d346d185b70e28b1a28abe367bbfe53c04
change-id: 20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-95dea010ff14

Best regards,
-- 
Zdenek Bouska

Siemens, s.r.o.
Foundational Technologies

