Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBdiNb6BvWk4+gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:19:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA642DE7C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:19:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5F7461BB5;
	Fri, 20 Mar 2026 17:19:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vi0dHhM9ACXl; Fri, 20 Mar 2026 17:19:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2265B61BB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774027196;
	bh=aLTuTnfwehV2L1dYdqxcXAxrjOVio+7F/VaVFTc7JYo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rcQ+8dt5KhD2rbBMVnlmuK2xsbqdw7kN02Q3taFfw1v+k+HvrD37d/Kj1Umu51jQD
	 a34iII5tk6R8VlXQPt/Aid+gQRUVSCxkCk+MSlu88/4qkBVWQEplom53tqMzsLsUKr
	 XOLsWp2E7MceItRB2GyXusIb2aXvlGg+rbk4HrWsbu0S4j1mKISz8x4rsM9uJ/XFMH
	 qnGE7qDJbXjj7abuVylkSob1sTSXPcVnMO3Kf5rfBeVGjETwtpjeFJLDtDSGy7KyMz
	 W+r9kVsbAyXviqAbTiEwl3s067izLIwE6daazpRqcyyHfPJzl6xQGapdI6Kb+eKQYJ
	 i0YAhNgQ8hY8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2265B61BB6;
	Fri, 20 Mar 2026 17:19:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E30CD1B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8FCE847CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nRdEejiuyCNu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 13:24:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B9859847CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9859847CA
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9859847CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:30 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-4852f8ac7e9so19195065e9.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774013068; x=1774617868;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=aLTuTnfwehV2L1dYdqxcXAxrjOVio+7F/VaVFTc7JYo=;
 b=HTjzZMuyi1pXYx3w6SMfgai9UX3g+U4agSXXK/4M/FrCSosS7mumEep/qnHgY4eQyv
 LrZd182/pJdTT+V+CJ45UWKSWt+zKWxJ6IUA6GU+QDC75kuAdU9HHrJoTjWzsIka4SRn
 yRiqp/sxdOcbyxTUup4uJtXbWLTYyEz3Bws+Oyc37WnHLRr+q/9GhYFf+F8GBw+t2CB5
 93FQJOE2W7NmWYUOg7YrXI9exZQnD/jI8rEU+2DC/obzTfTH1YtuQTwv0a5bhXM+h14h
 RaK+Z0j4tnEGX7NsgZ5ogihR7UfUef0iTMDQtNk2YK3az6ZKP1TUiAOySos3an82I7kO
 LnjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVc6q7/EozgShzL8GqrhN2ip+LcQWyFzIq3X9j4Bb6ulalFRHzuHHEEsRr6RITVQlfNCLZwE892rbDMERqGwM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwFlR3mRl1vq8CLzxrzMOzTqzFtjx2AcIiT8r/qIpEehHNW8HFJ
 E1vwbyHlSnbNTW6M4n9A001vqhtMHUpjzh+mw4m60ULqHzoG/rlwZf8h
X-Gm-Gg: ATEYQzxC0nRe6XM31RW4wSB/gPsZjtx3yL74u3aMxov735gwD6U0IrBPjrppE0KuKCF
 gdInuadP51Jlro8kjTZL6SXLdATHvRM7w+WKPp2JKjAl3eN0fNR/bLBn5axpg/APFtPPVdhZqpw
 3HHijTVSn6VEVOncHvdzMFeZb8fcKgOuY4h/bBeuQtg/N41JCeiPauclKEhOx/kdi5DD2dc4ZMK
 lcwi64J8U8aWnU+nb13VJ4YBoKXUEUh1AqI9fn+d/HUCp69WzCnlgOMESXzPrHg8PGbJhJh8eNi
 Iin9E5cJtpNw3nK1gl31+vPWS/7sZ8OHE7Ie/82BdZsr8afxdkD/6Zcr2GuCMkixZr1e9vWrEtr
 0d55IkZ7gXLflo/2vAvmNdYWzt1dRGP86PZJBqFVu3jMNZTO8BcYAmrcp5BAwpTq+TrfDqPnsYS
 21yq8Dx6F7A3l46aVGHipAptNYA3a0z6GMD9htxbt+Jgf3XmDth0bWCojR8KFViyWit1fACr70
X-Received: by 2002:a05:600c:1d1b:b0:485:3cf3:1010 with SMTP id
 5b1f17b1804b1-486febb5fefmr49625065e9.2.1774013068226; 
 Fri, 20 Mar 2026 06:24:28 -0700 (PDT)
Received: from turbo.teknoraver.net (net-5-95-156-124.cust.vodafonedsl.it.
 [5.95.156.124]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-487004e7bc4sm16427095e9.2.2026.03.20.06.24.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2026 06:24:27 -0700 (PDT)
From: Matteo Croce <technoboy85@gmail.com>
X-Google-Original-From: Matteo Croce <teknoraver@meta.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Date: Fri, 20 Mar 2026 14:23:56 +0100
Message-ID: <20260320132356.63194-3-teknoraver@meta.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320132356.63194-1-teknoraver@meta.com>
References: <20260320132356.63194-1-teknoraver@meta.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 20 Mar 2026 17:19:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774013068; x=1774617868; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aLTuTnfwehV2L1dYdqxcXAxrjOVio+7F/VaVFTc7JYo=;
 b=Jii/HQGMkisMwS8DOT7S0AJ2pt4Zu4yzprDGds8KK8IZtKKdtf685ZkKfJnXXuJw0b
 rze42wOQCw0LWNhayi+08ZZwVvLjuwm10vA/mizI9zRdK03qfmYzJTEWC/BmVTI3Ec4c
 s09HkSXtnDAMuTzSV4VM3CmqF64pjQaAhRBDFBifYkUCHe2EmZYLkIDCAUD77mXsqxBL
 TttA7168WCkEGtgW13RlWztaWQPPmV/xTJJ0cImjs9IiVc+IcCCurfvJpLQnNkCYhH6C
 +pdXdsH7+1lzoV+OdzPOJQLYfON0603W3q11+RLtXuoFqG5QbocQhcQBSWoxK2N1O7R5
 dJ4A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Jii/HQGM
Subject: [Intel-wired-lan] [PATCH net-next v3 2/2] e1000e: add XDP_REDIRECT
 support
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,meta.com:email,meta.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4CA642DE7C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the ability to redirect packets to other devices via XDP_REDIRECT
and to receive redirected frames from other devices via ndo_xdp_xmit.

New functionality:
- XDP_REDIRECT case in e1000_run_xdp() using xdp_do_redirect()
- e1000_xdp_xmit() as the ndo_xdp_xmit callback for receiving
  redirected frames from other devices
- xdp_do_flush() in e1000_finalize_xdp() for REDIR completions
- xdp_features_set/clear_redirect_target() in e1000_xdp_setup()
- NETDEV_XDP_ACT_REDIRECT and NETDEV_XDP_ACT_NDO_XMIT advertised

Assisted-by: claude-opus-4-6
Signed-off-by: Matteo Croce <teknoraver@meta.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 85 +++++++++++++++++++++-
 1 file changed, 81 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 3ee5246f0b84..83f188f9b510 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -41,6 +41,7 @@ char e1000e_driver_name[] = "e1000e";
 #define E1000_XDP_PASS		0
 #define E1000_XDP_CONSUMED	BIT(0)
 #define E1000_XDP_TX		BIT(1)
+#define E1000_XDP_REDIR		BIT(2)
 
 static int debug = -1;
 module_param(debug, int, 0);
@@ -805,6 +806,9 @@ static void e1000_finalize_xdp(struct e1000_adapter *adapter,
 {
 	struct e1000_ring *tx_ring = adapter->tx_ring;
 
+	if (xdp_xmit & E1000_XDP_REDIR)
+		xdp_do_flush();
+
 	if (xdp_xmit & E1000_XDP_TX) {
 		/* Force memory writes to complete before letting h/w
 		 * know there are new descriptors to fetch.
@@ -823,13 +827,14 @@ static void e1000_finalize_xdp(struct e1000_adapter *adapter,
  * @adapter: board private structure
  * @xdp: XDP buffer containing packet data
  *
- * Returns E1000_XDP_PASS, E1000_XDP_TX, or E1000_XDP_CONSUMED
+ * Returns E1000_XDP_PASS, E1000_XDP_TX, E1000_XDP_REDIR, or E1000_XDP_CONSUMED
  **/
 static int e1000_run_xdp(struct e1000_adapter *adapter, struct xdp_buff *xdp)
 {
 	struct bpf_prog *xdp_prog = READ_ONCE(adapter->xdp_prog);
 	struct net_device *netdev = adapter->netdev;
 	int result = E1000_XDP_PASS;
+	int err;
 	u32 act;
 
 	if (!xdp_prog)
@@ -846,6 +851,12 @@ static int e1000_run_xdp(struct e1000_adapter *adapter, struct xdp_buff *xdp)
 		if (result == E1000_XDP_CONSUMED)
 			goto out_failure;
 		break;
+	case XDP_REDIRECT:
+		err = xdp_do_redirect(netdev, xdp, xdp_prog);
+		if (err)
+			goto out_failure;
+		result = E1000_XDP_REDIR;
+		break;
 	default:
 		bpf_warn_invalid_xdp_action(netdev, xdp_prog, act);
 		fallthrough;
@@ -1040,11 +1051,11 @@ static bool e1000_clean_rx_irq_xdp(struct e1000_ring *rx_ring, int *work_done,
 
 			/* page consumed by skb */
 			buffer_info->page = NULL;
-		} else if (xdp_res & E1000_XDP_TX) {
+		} else if (xdp_res & (E1000_XDP_TX | E1000_XDP_REDIR)) {
 			xdp_xmit |= xdp_res;
 			total_rx_bytes += length;
 			total_rx_packets++;
-			/* page consumed by XDP TX */
+			/* page consumed by XDP TX/redirect */
 			buffer_info->page = NULL;
 		} else {
 			/* XDP_DROP / XDP_ABORTED - recycle page */
@@ -7811,6 +7822,11 @@ static int e1000_xdp_setup(struct net_device *netdev, struct netdev_bpf *bpf)
 	if (!need_reset)
 		return 0;
 
+	if (prog)
+		xdp_features_set_redirect_target(netdev, true);
+	else
+		xdp_features_clear_redirect_target(netdev);
+
 	if (running)
 		e1000e_open(netdev);
 
@@ -7827,6 +7843,64 @@ static int e1000_xdp(struct net_device *netdev, struct netdev_bpf *xdp)
 	}
 }
 
+/**
+ * e1000_xdp_xmit - transmit XDP frames from another device
+ * @netdev: network interface device structure
+ * @n: number of frames to transmit
+ * @frames: array of XDP frame pointers
+ * @flags: XDP transmit flags
+ *
+ * This is the ndo_xdp_xmit callback, called when other devices redirect
+ * frames to this device.
+ **/
+static int e1000_xdp_xmit(struct net_device *netdev, int n,
+			  struct xdp_frame **frames, u32 flags)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	struct e1000_ring *tx_ring = adapter->tx_ring;
+	struct netdev_queue *nq = netdev_get_tx_queue(netdev, 0);
+	int cpu = smp_processor_id();
+	int nxmit = 0;
+	int i;
+
+	if (unlikely(test_bit(__E1000_DOWN, &adapter->state)))
+		return -ENETDOWN;
+
+	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
+		return -EINVAL;
+
+	if (!adapter->xdp_prog)
+		return -ENXIO;
+
+	__netif_tx_lock(nq, cpu);
+	txq_trans_cond_update(nq);
+
+	for (i = 0; i < n; i++) {
+		int err;
+
+		err = e1000_xdp_xmit_ring(adapter, tx_ring, frames[i]);
+		if (err != E1000_XDP_TX)
+			break;
+		nxmit++;
+	}
+
+	if (unlikely(flags & XDP_XMIT_FLUSH)) {
+		/* Force memory writes to complete before letting h/w
+		 * know there are new descriptors to fetch.
+		 */
+		wmb();
+		if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
+			e1000e_update_tdt_wa(tx_ring,
+					     tx_ring->next_to_use);
+		else
+			writel(tx_ring->next_to_use, tx_ring->tail);
+	}
+
+	__netif_tx_unlock(nq);
+
+	return nxmit;
+}
+
 static const struct net_device_ops e1000e_netdev_ops = {
 	.ndo_open		= e1000e_open,
 	.ndo_stop		= e1000e_close,
@@ -7850,6 +7924,7 @@ static const struct net_device_ops e1000e_netdev_ops = {
 	.ndo_hwtstamp_get	= e1000e_hwtstamp_get,
 	.ndo_hwtstamp_set	= e1000e_hwtstamp_set,
 	.ndo_bpf		= e1000_xdp,
+	.ndo_xdp_xmit		= e1000_xdp_xmit,
 };
 
 /**
@@ -8060,7 +8135,9 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->max_mtu = adapter->max_hw_frame_size -
 			  (VLAN_ETH_HLEN + ETH_FCS_LEN);
 
-	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC |
+			       NETDEV_XDP_ACT_REDIRECT |
+			       NETDEV_XDP_ACT_NDO_XMIT;
 
 	if (e1000e_enable_mng_pass_thru(&adapter->hw))
 		adapter->flags |= FLAG_MNG_PT_ENABLED;
-- 
2.53.0

