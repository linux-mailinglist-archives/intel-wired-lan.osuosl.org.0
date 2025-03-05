Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90623A5049A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:23:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 431C38136E;
	Wed,  5 Mar 2025 16:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9-dH4zWQmgGJ; Wed,  5 Mar 2025 16:23:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F30E81569
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191801;
	bh=A/oW7lrYIS9vMGC7jLF3qeoSyeAntZRTpaJrbKaNdQU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yt16QFaPJg0OJMD4Qse8CyYM7M5MZGejCC+yDOKM7YexIR/wKkF7UoaRZqQ9mmn+3
	 HqCPdKT1oXh5GM6wFZwU3HQJnE08M/4roEAl9QCJHtBda4B97KBAlsPesZJwT/05gh
	 UBHtOKcSCT8idJ5xnl/n3RJJS3LNEdFAufCxhbvRqtYaCfX8vsZ3+TmG7gaf9F3MZU
	 7nuDtsO3iydaNyi0XlStIbJnwxxrWagdMVbT0vZJ37Dw2ZjG3pbSiROcRgLsZFiVEp
	 1vyjxve4j/+UTRbuf/J8g/PrKGouqRuiL7mGGfqcjw547IqwzU0t11BmpFW6a/DDtX
	 0e19E1fQHLwxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F30E81569;
	Wed,  5 Mar 2025 16:23:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5569495F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A71260ACE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kv24l4Hqvz6i for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:23:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 600F760B09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 600F760B09
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 600F760B09
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:19 +0000 (UTC)
X-CSE-ConnectionGUID: V3AoJk2xQfqiFQcWOwR12g==
X-CSE-MsgGUID: JwGlx8j3S268NEwDs/n+Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026636"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026636"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:23:19 -0800
X-CSE-ConnectionGUID: +cUmsJJ1T16k0Nfhv5ENTQ==
X-CSE-MsgGUID: MQqh6KtCTwW10goXKvImoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123833040"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:23:15 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  5 Mar 2025 17:21:31 +0100
Message-ID: <20250305162132.1106080-16-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191800; x=1772727800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0VNfSZ85Qv9nHHKLrIzzXtO0adTkGt6I7ftyZ5LLsEQ=;
 b=H/LizWPdyc8Q9U5o638L5m27C8GgvJZdyQWGaayYcYl3/L8Zu/LXnIzj
 UZHW9PCtz9xs8Y9WP6gEfuCGDGtPi9Q+U16yFFpvA0hZuPAw56XwSipGG
 tLkHd6B3IEfPeGuvXp2s94qCuXpTZfP24qHAJX/da5CdRH+dY7fQw8c88
 KiQIVKYeEfh2alRLstN5NMwqGMGbMnBBenLn1hDymDD1bkYatPzViuWFC
 4Mv2wncRnW/S2JjpY/MVv+mHn7dW/BqlyW0xW/NOq07oxDCCxE32Wshy5
 7dErIYE4oKeCDuUeMcRyaxsHTJp47xjWLogprmz3Rbp2uQIXXVIQLCSeg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H/LizWPd
Subject: [Intel-wired-lan] [PATCH net-next 15/16] idpf: add support for
 .ndo_xdp_xmit()
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

Use libeth XDP infra to implement .ndo_xdp_xmit() in idpf.
The Tx callbacks are reused from XDP_TX code. XDP redirect target
feature is set/cleared depending on the XDP prog presence, as for now
we still don't allocate XDP Tx queues when there's no program.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/xdp.h      |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c |  1 +
 drivers/net/ethernet/intel/idpf/xdp.c      | 29 ++++++++++++++++++++++
 3 files changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
index fde85528a315..a2ac1b2f334f 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.h
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -110,5 +110,7 @@ static inline void idpf_xdp_tx_finalize(void *_xdpq, bool sent, bool flush)
 void idpf_xdp_set_features(const struct idpf_vport *vport);
 
 int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
+int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
+		  u32 flags);
 
 #endif /* _IDPF_XDP_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 2d1efcb854be..39b9885293a9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2371,4 +2371,5 @@ static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_set_features = idpf_set_features,
 	.ndo_tx_timeout = idpf_tx_timeout,
 	.ndo_bpf = idpf_xdp,
+	.ndo_xdp_xmit = idpf_xdp_xmit,
 };
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index abf75e840c0a..1834f217a07f 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -357,8 +357,35 @@ LIBETH_XDP_DEFINE_START();
 LIBETH_XDP_DEFINE_TIMER(static idpf_xdp_tx_timer, idpf_clean_xdp_irq);
 LIBETH_XDP_DEFINE_FLUSH_TX(idpf_xdp_tx_flush_bulk, idpf_xdp_tx_prep,
 			   idpf_xdp_tx_xmit);
+LIBETH_XDP_DEFINE_FLUSH_XMIT(static idpf_xdp_xmit_flush_bulk, idpf_xdp_tx_prep,
+			     idpf_xdp_tx_xmit);
 LIBETH_XDP_DEFINE_END();
 
+/**
+ * idpf_xdp_xmit - send frames queued by ``XDP_REDIRECT`` to this interface
+ * @dev: network device
+ * @n: number of frames to transmit
+ * @frames: frames to transmit
+ * @flags: transmit flags (``XDP_XMIT_FLUSH`` or zero)
+ *
+ * Return: number of frames successfully sent or -errno on error.
+ */
+int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
+		  u32 flags)
+{
+	const struct idpf_netdev_priv *np = netdev_priv(dev);
+	const struct idpf_vport *vport = np->vport;
+
+	if (unlikely(!netif_carrier_ok(dev) || !vport->link_up))
+		return -ENETDOWN;
+
+	return libeth_xdp_xmit_do_bulk(dev, n, frames, flags,
+				       &vport->txqs[vport->xdp_txq_offset],
+				       vport->num_xdp_txq,
+				       idpf_xdp_xmit_flush_bulk,
+				       idpf_xdp_tx_finalize);
+}
+
 void idpf_xdp_set_features(const struct idpf_vport *vport)
 {
 	if (!idpf_is_queue_model_split(vport->rxq_model))
@@ -417,6 +444,8 @@ idpf_xdp_setup_prog(struct idpf_vport *vport, const struct netdev_bpf *xdp)
 		cfg->user_config.xdp_prog = old;
 	}
 
+	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
+
 	return ret;
 }
 
-- 
2.48.1

