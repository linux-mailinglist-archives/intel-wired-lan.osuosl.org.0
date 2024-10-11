Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B27999F96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 11:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EBB2415C7;
	Fri, 11 Oct 2024 09:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FhBj8Qqysos3; Fri, 11 Oct 2024 09:01:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08FC2415C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728637281;
	bh=YH+J2MPtO/wj9yAkFfnF7WQuIFDEVmwmmrLzdRgJhfU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fooxfWMGQmAUIDY2xtpUKIY4sg/ac5LJl8QCPjXH4uVDvM5L5YJVaANic01GKW1tG
	 0TilQsgut6cWG6P51VcuJsRtC4GynRjVtzZHQQJtMO4b2sKDIwoBYS9VkmZvMgsUq3
	 SMMxpQG9r/N3PUszBXQRmGyCILxC/c8IS8ksxDTb+8NgCx8ggpRU+f9gwpFt9VyAR0
	 pj5hNJtXyOh8TMcKIbtCobiqyaUFDTScbqQs2JPK0F2BoL8fkeEojSb2JqkwhLLqVa
	 kwRFTDluRy5iNNfvAMcVGHiSXFu1c3B1bQtYvLrXH8Aleg0fU8JAzKdKcVcRMgNV7q
	 Tq8ftWcz2hCFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08FC2415C2;
	Fri, 11 Oct 2024 09:01:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A2291BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6E0B415A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A8jgCP364_cZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 09:01:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9CC94415A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CC94415A2
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CC94415A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:12 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 11 Oct 2024 11:01:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-b4-igb_zero_copy-v8-2-83862f726a9e@linutronix.de>
References: <20241011-b4-igb_zero_copy-v8-0-83862f726a9e@linutronix.de>
In-Reply-To: <20241011-b4-igb_zero_copy-v8-0-83862f726a9e@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2664; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=GFWHUeNYEWqXkX9ltUkdA/+XAecRGzYcafx3KgM4JRg=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnCOlSxONXEPtIMvuO76ImbomRU2Vai5eJW2pka
 kldZQFhhlqJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZwjpUgAKCRDBk9HyqkZz
 giNcD/4iH7SPuTFnahKrXLzU1qNRICyadFJRn3IZBBcgFDNPPXG4G03f+GXicds3W1U+MhLh4Kl
 wdoGyCANDwANu7qU3Qt7SZTzJTd3yEC3qPsJRQtj2sc5/SudTtCNYx+DtWjIkQnjnALwIwN60Sv
 QnCcfFxIEhGdHjUHbm8r6f2fGntcOwgJ6IZ4cLiJDUWlv/LADh3bWYa1RD1qQMHsqrcjzg/hvCC
 xYFN/kNCC7fSBOcrr4rmsJmihp4eARNqG3I4tT12Ez8dPBVuMp3ZYJcqXN8V9qpLMr19edzmNuq
 mm06dvAWuX/4W9GtYPYPuF9qIdU4IA9aAV57Doua3Jc5P3MT6KOdaDYoHtwcYeHC19VPKQNo7or
 jhrKwF57Mdw8KXmqRHB9g+AtmFL5Xh/RMegvU21dw5YV6Yma8+ePQjiselFTKVfjbVjbuAuyilp
 tvhd/oDHaA3WiQfMj9MnvX4qqPigGuftnFl+CchZMUn2CdwlsnYhqCF/2IOmi0BL4hIwOAMitar
 3Mwrjh8+66RgP+UzEwWo2q/Os99xtLhpqt1nXZ9XLXJH+w8G7+9dIzBRyyZ8KoYa73cHsTE7U/Y
 kZzJCYQ0hRUNIOVxE7P2y2rALXgA+w5MQa4uxgtb5ITjErTqj84KIx0HKvKdr0GAQOG57nDccMy
 CGvW6lAHwSS2I5w==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728637270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YH+J2MPtO/wj9yAkFfnF7WQuIFDEVmwmmrLzdRgJhfU=;
 b=zcgQRmz3yjeDRWU+v26Pgu524arqcCovd6mjbvOEwFlQK8XHu8Kw/s0CotHaTnCiRhLC0y
 Ge0tZAvDN/Kh+xVV3tl0b9YXOLgHpy95dXJVqPyfCEgHxx0E4Gnm+7A3Sqrm0r6+wOMw1k
 N7mk9SyMcfmev8+D8+aMq3nsvdEFKDoLjwr1kp+seIJbT1AB2WNtUQ1MCKHrhkGi0vGzWb
 qNQK7ZMoAAXTjbL17ZMwP4BgTSq8rl6hIpZ8uZ7cVNMQdqozqAGWkhnve+xbJHa2GIJo/X
 fKKrLytPFvxR8l8reFYQ3qZcamriAWYUSLr9CfHfpqFwqEIadGwPAQrLrUbBCw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728637270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YH+J2MPtO/wj9yAkFfnF7WQuIFDEVmwmmrLzdRgJhfU=;
 b=kr2BFcOVAv7lWZ8lWhEbe6mOsdsX8hoVOn5aDDHkD4OwyWo+P82Oes9J2oGPxudXyK9tV1
 8Hf4NQmMecMcSHCw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=zcgQRmz3; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=kr2BFcOV
Subject: [Intel-wired-lan] [PATCH iwl-next v8 2/6] igb: Introduce
 igb_xdp_is_enabled()
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

Introduce igb_xdp_is_enabled() to check if an XDP program is assigned to
the device. Use that wherever xdp_prog is read and evaluated.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
[Kurt: Split patches and use READ_ONCE()]
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igb/igb.h      | 5 +++++
 drivers/net/ethernet/intel/igb/igb_main.c | 8 +++++---
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 1bfe703e73d9..6e2b61ecff68 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -826,6 +826,11 @@ static inline struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adap
 	return adapter->tx_ring[r_idx];
 }
 
+static inline bool igb_xdp_is_enabled(struct igb_adapter *adapter)
+{
+	return !!READ_ONCE(adapter->xdp_prog);
+}
+
 int igb_add_filter(struct igb_adapter *adapter,
 		   struct igb_nfc_filter *input);
 int igb_erase_filter(struct igb_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 5a44867bcb26..fc30966282c5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2926,7 +2926,8 @@ int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
 	/* During program transitions its possible adapter->xdp_prog is assigned
 	 * but ring has not been configured yet. In this case simply abort xmit.
 	 */
-	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
+	tx_ring = igb_xdp_is_enabled(adapter) ?
+		igb_xdp_tx_queue_mapping(adapter) : NULL;
 	if (unlikely(!tx_ring))
 		return IGB_XDP_CONSUMED;
 
@@ -2959,7 +2960,8 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 	/* During program transitions its possible adapter->xdp_prog is assigned
 	 * but ring has not been configured yet. In this case simply abort xmit.
 	 */
-	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
+	tx_ring = igb_xdp_is_enabled(adapter) ?
+		igb_xdp_tx_queue_mapping(adapter) : NULL;
 	if (unlikely(!tx_ring))
 		return -ENXIO;
 
@@ -6593,7 +6595,7 @@ static int igb_change_mtu(struct net_device *netdev, int new_mtu)
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	int max_frame = new_mtu + IGB_ETH_PKT_HDR_PAD;
 
-	if (adapter->xdp_prog) {
+	if (igb_xdp_is_enabled(adapter)) {
 		int i;
 
 		for (i = 0; i < adapter->num_rx_queues; i++) {

-- 
2.39.5

