Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3999A38C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 10:40:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F11B86062A;
	Fri, 18 Oct 2024 08:40:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 23Cdh04hcMOP; Fri, 18 Oct 2024 08:40:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4715960A7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729240813;
	bh=YH+J2MPtO/wj9yAkFfnF7WQuIFDEVmwmmrLzdRgJhfU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z0dc82sA9OD4X9mZJfBP1I43avG3uHRHuctDk7w00NJoY3U0oaEq+8MpnBC0sl4EL
	 0oyE0y0yJ/5MmZuUvLKdsn8vCYdqlbfbJSjac2207rMjbtRv03h8krRdS8/Qf0NVi9
	 qUHos60C2OB0FFmtz+qmvKzos9BPr9/FLL3inf/+43cIXflMcQpKDU+gIyOYRO996q
	 L1BkhhlLi6G4uVd2ie+Jau+9USOBBn5rqc1Ecj/jOdJwSD7eQPaE3bB6qifojG87dk
	 zO6SNhczbjNYmCGUBdvJfJ8m3VgzdGSVYvu9Ooc2Tf8wC0yCF6oEHHAe/cQKDNxMUB
	 GzAr2Nb9upoWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4715960A7E;
	Fri, 18 Oct 2024 08:40:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1488A2804
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9EA280BAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xNRrWyLLwG4t for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 08:40:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 09A0780BA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09A0780BA9
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09A0780BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:09 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 18 Oct 2024 10:39:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-b4-igb_zero_copy-v9-2-da139d78d796@linutronix.de>
References: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
In-Reply-To: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>, 
 Benjamin Steinke <benjamin.steinke@woks-audio.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 bpf@vger.kernel.org, Sriram Yagnaraman <sriram.yagnaraman@est.tech>, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2664; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=GFWHUeNYEWqXkX9ltUkdA/+XAecRGzYcafx3KgM4JRg=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnEh7iWBdazRMU4JURD596qWrbLmuPTJe7KgyMh
 Tu9nC75nSCJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZxIe4gAKCRDBk9HyqkZz
 gkY5D/0fRgM3Umiqa9cGgZY5jznEMK0Vx3JNKoex2Ak4YPeDVWWO5g6hI16zZQN03+CI3yj9iLR
 biwP1yl2TnsAvMB4nzY126PdamU1BTlOtdQZB5u2uJkUg3InecXIEjQEQP639KtkxPTICsM6pDQ
 RtKxhUZ3pGhfqBPtktEPWA1XQjzMjr7E4r4SaEkyP1zAcYQVNx2FJJBtEimLs6EEjtuUS+TFwh4
 3VSehfshNCyDQ2lVqaUAWEhcIS7A7TVtYgJ1oTXASkVaiPJ75vogCcR/B47Z2fU7jVFuNIyTs/z
 G50M3Neo1H++WJgMkDDo4gO8lunuQ4ZFLp86XMAD/MY+CEDuCTdpJG/KqUzVmyDMVCNqw9fGhoz
 QnLGk22mx8deJW2MkbrZKi3picLY5W1ozdOKarxe521tzfUlqzMgogKs3kG43h5kGwo2QiO48Mx
 sb+/EiG2GkR0yQIi6eYCOC6pQ+i1hAA3GeI63qlXO0BL7GwBwqlGT4omU8CQClSRQ1Jy64gVB1t
 XqfmFZufJbmRT0Cv1VKQmkNS3KlYq1apnXL6sCd7+Y6HfwhiXEVDVjTgnjbSVf5N0YbbXL77jIU
 4P0BrkTiK3r4R5jjwp7aDGK03egJ6gq5YDXxOhzncl1Vjr/p4cKpHfT44d2Ky5MGU7XmZZcWboL
 IB8LOlfZHmfwMdQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729240807;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YH+J2MPtO/wj9yAkFfnF7WQuIFDEVmwmmrLzdRgJhfU=;
 b=Ul76rvv8zjvvP8ySRMZtT1vB3tIc/lBHZQSlhmC0/dlKwzc9vry6sekg4Qagq4XeIocK7M
 AD/kHS/Y9Hcl7dd7zLLRAFHil969q6LbvCqyq9D43JB90nDR5CgoqgGWhP8Faewn8uDOTa
 RVOGEjiB6676arPFGRn3Zo8wTYJMbBa16VM1qx17NntYXZnmeKmBhoMKB8BHXS38VqQV59
 PUNRgeeRMzuXZVL6BH6iXeLWgzjCP+gs0psnp4vtCxK+rsTHEpK2jiB4us8FyUU4GEyLas
 UMamHiN3yauPwzlzCEPMXz8/SZML31+oCV+9NUrZRd7eYjrCi8L5OOiik4gB9w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729240807;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YH+J2MPtO/wj9yAkFfnF7WQuIFDEVmwmmrLzdRgJhfU=;
 b=ydfW1WGWqoDHjYkVZjC9fVwV0E+mmkilU1Nr6xJ2xpwFEjDcb8XDLHu+7goJ2XqzexHwiv
 KxMJKEWtxRJ8jvDQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Ul76rvv8; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ydfW1WGW
Subject: [Intel-wired-lan] [PATCH iwl-next v9 2/6] igb: Introduce
 igb_xdp_is_enabled()
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

