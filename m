Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA9E992BC9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 14:31:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3C0940646;
	Mon,  7 Oct 2024 12:31:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ogKMIVdzBpWU; Mon,  7 Oct 2024 12:31:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAF7A408CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728304296;
	bh=ghMwZtaMDneSHodyZdYQuHFHRR3/IaH3buOGb+HJs9Q=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=30obnpfdRvhYsbNclneIWVVjwZMgoXr+Z8wJlwo9s6dTKQdu3nr+6+A0FVkNIoBxm
	 cPORP9+Zx/a6pgxj9i1+LNIct+C4m08gst/1g07QSMHJ9IqCkKQQtk1O2UtyYC3Uqb
	 VPhHQIBRYOdAOLko8GXwa+B7xXOo30pOULUZCvMjEowFSGYwX1tuHZmO25jopsNSB5
	 SWvWPIwf+f405YCI/8P+Glhc4jxPOlFKvqA1aC6Z09XKOG8tnO+8EJAJ3ARRNnGVXs
	 WCVIo0oh8fGGfSaQ1EHooWaFZqt9meC9KBWsJfitz03xPUIegmCeUNFYW444qfE0VU
	 vcOK+QBVmSntA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAF7A408CA;
	Mon,  7 Oct 2024 12:31:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1B4B1BF46D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 12:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CDCC805A8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 12:31:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mRyb7lC6W5Jq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 12:31:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AB2848056D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB2848056D
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB2848056D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 12:31:33 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 07 Oct 2024 14:31:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241007-b4-igb_zero_copy-v7-2-23556668adc6@linutronix.de>
References: <20241007-b4-igb_zero_copy-v7-0-23556668adc6@linutronix.de>
In-Reply-To: <20241007-b4-igb_zero_copy-v7-0-23556668adc6@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2664; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=P27UEKCtJR0md9g63pfwA7XxMrHb2hJUetl3/hadzuo=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnA9SfmHq3fUFvj2DJBb7Cm4eF0/fp1NJWb1Rzb
 ONZ7URKo22JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZwPUnwAKCRDBk9HyqkZz
 gtrAEACZTpqev+q5mvlBTkzNaDmFgvNAJQwLDpIDG2AILQVY7oUBD75SFAuik7VyLp9fFj+GJpt
 Qtne7tFkReZUSNZuNI5Ol3qD2q08xAuzf0EgmdCHnuLinpN80Zg7DQMkbN5ezoqRI97mLnwL/8l
 bkhmhgHpQasC71pBVoWtIqtD+n53ApOHvSIGCRX8snz0qLfuHpdE5XYQjizA6PGSkZcqFjnxK8b
 K2XFlceviRouhRYhaZBYsMWoEFXMgBoMssNzPRMB+Y+vLzAwPDMPDpPn185wJuFPX6bW1L5mG1L
 MUYTemfEwrSXZ6l/fWZu/SEUNBhkwhI9MAG6bKFgeL5D1Z8NfGlHLcruUl/kKUMPeaS/Ube0dJF
 B/ciwh6jkl0xow2nW4yhWDWsGR/a0HdXPqEoAOctTtSXlYKORY8eFFqOqoJShgp8zceU5FHG+dP
 0TO80NPT1ufSP8vBEaIA1W/r6BpPuQ/8VgDNKluIzgtdGsYh52+oaKIWmJtvRpoUPAXKe8Wfe7c
 1MqOPiKhVXKNRKhwGJ48nL/Osvox6X33YzeN4NcOJT8UXQ/sxH5ez1tlOTNEA6lnrBLzutvTMxO
 Mjk7PnqA0J0wB5x3vTA+LnJs/LYKqi+m1cC7HclZiOLPnygDzkRC+vsIQLMUyc31tFEh+3jjncR
 X1nOEjkPLnQsQWQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728304291;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ghMwZtaMDneSHodyZdYQuHFHRR3/IaH3buOGb+HJs9Q=;
 b=LPy1SnLs3WgToFhpzG8K4YpdJpBAtSgvVMgWL1NXq5SDFQJvhYswB4js2Ys8b0d7pLjrxv
 VmNVqMncZDhxEFC7s1/ANgqb+EwkxM4NdGvok1sgOn+dR0JRNyb9cgZGRr/do3AKTDh8ZT
 FzVg0Db5BliibhqvTlaXn80TI7RXlR+55CDPwNCbyJx4rUUzQHROfM7LB0Dwbv/yvYvwTp
 LE5MbvrQwE0At+y6cvwk+0RXSSVX199TPpoogDFFfVDo8swjl5qqITxLYBruFuNm1NKdTP
 ITkQdOY1d0eTC57y09M64zCWwB7KR1pYQQKJBR/5142fJpXViREsK87PQ7iaUA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728304291;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ghMwZtaMDneSHodyZdYQuHFHRR3/IaH3buOGb+HJs9Q=;
 b=Im5AlMQCz+eVAAQ4yDhC+nUhUPqEfXd/gXR4QNQL+1qUkDMfvnP72iKZDbJVhqNaYUm8wL
 L6Mw9ka5Ow7JDLBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=LPy1SnLs; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Im5AlMQC
Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/5] igb: Introduce
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
index 71addc0eac96..34a3f172d86c 100644
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

