Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CF6B21191
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9332641406;
	Mon, 11 Aug 2025 16:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdeJdNwumsnK; Mon, 11 Aug 2025 16:20:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E792D41489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754929249;
	bh=hR8n/gOPvgjs2yAEYeyPBnxyMjBwUgDD+AFED3fNT+w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KtxqPNiEsrjkPwxd5yk0ahG2yWtnHbXTTfzFPRBgA/CEmVZC9W84FVHR7WzEYr8Lp
	 RfLRfIlMK8owZSNUZz2Y12+JYJbUmg7mhc/woZvhu+H1GMoglVzLiE9l/Nc7+yAy0o
	 Tnp7ueU3fbnvJfohuXtxMUMoZVmqZuKPE7R9ohaUJBWbnylC8fU5LqscQdr6bZcCJh
	 41+URYSUafwOyLhfp8MhJRq6gsW6EGDztCQGS3gw/L1pAi7NqHV6zdM450eaEutQMr
	 stWADUU13qv28e901AVMB6Ccfb2rgK/6Hceq+2XHhqyyhDGf8+ktCIyg8yLX0/fUBV
	 gLUX8BsOFlJQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E792D41489;
	Mon, 11 Aug 2025 16:20:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C539138
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12AA840DFB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KDbTiGP9moE4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:20:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5548F400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5548F400FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5548F400FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:46 +0000 (UTC)
X-CSE-ConnectionGUID: cwHeoQBRSIySoUykjZbdpA==
X-CSE-MsgGUID: mSs56U8/TBuuzVQhEDYQ5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56899726"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56899726"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 09:13:37 -0700
X-CSE-ConnectionGUID: NHqslrRbR6uQVT53x8sBCg==
X-CSE-MsgGUID: OiXv2TsPTwGHRWkpDfHwUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165163249"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa006.jf.intel.com with ESMTP; 11 Aug 2025 09:13:33 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 11 Aug 2025 18:10:43 +0200
Message-ID: <20250811161044.32329-13-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250811161044.32329-1-aleksander.lobakin@intel.com>
References: <20250811161044.32329-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754929246; x=1786465246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W8iajtxQR5EvXVvoBEguC35xUz0udGCfNW9PJAuo4MQ=;
 b=gz0jCYldDKKM3SSIJaz3d3Do5p63rMrDzhjZmRiSP6awzWco21IRv8SS
 s9pq7neDQlSiZsL2YJAz6zP/1QZGucX/AgqvdFND7jPKsY/oerdTGiPXA
 scScX+KeKwCNlJugLsAQdiG9UVNqEY96bYn+15VuieyotHazQqPnLzaPN
 tykk/R765deBIy/PefnVmqihVhpxT31vfm7/xIHdq9OS6IvNCd4+KQeWu
 /ms9dICTG/lZuFxy0rXBK0AkXCLZ+8HI4pnhPn50W/W9pLOzZ4NoRHGYr
 53k27RG2fKxgKCO4DlPu9AjJODgm9UfFE1yjK65i6r8RT4D7Wm4H7k/1Z
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gz0jCYld
Subject: [Intel-wired-lan] [PATCH iwl-next v4 12/13] idpf: add support for
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

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/xdp.h      |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c |  1 +
 drivers/net/ethernet/intel/idpf/xdp.c      | 20 ++++++++++++++++++++
 3 files changed, 23 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
index 986156162e2d..db8ecc1843fe 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.h
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -102,5 +102,7 @@ static inline void idpf_xdp_tx_finalize(void *_xdpsq, bool sent, bool flush)
 void idpf_xdp_set_features(const struct idpf_vport *vport);
 
 int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
+int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
+		  u32 flags);
 
 #endif /* _IDPF_XDP_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 371fd40356c4..d41ffcefe544 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2522,4 +2522,5 @@ static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_hwtstamp_get = idpf_hwtstamp_get,
 	.ndo_hwtstamp_set = idpf_hwtstamp_set,
 	.ndo_bpf = idpf_xdp,
+	.ndo_xdp_xmit = idpf_xdp_xmit,
 };
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index d7ba2848148e..d2549f8b8e24 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -320,8 +320,26 @@ LIBETH_XDP_DEFINE_START();
 LIBETH_XDP_DEFINE_TIMER(static idpf_xdp_tx_timer, idpf_xdpsq_complete);
 LIBETH_XDP_DEFINE_FLUSH_TX(idpf_xdp_tx_flush_bulk, idpf_xdp_tx_prep,
 			   idpf_xdp_tx_xmit);
+LIBETH_XDP_DEFINE_FLUSH_XMIT(static idpf_xdp_xmit_flush_bulk, idpf_xdp_tx_prep,
+			     idpf_xdp_tx_xmit);
 LIBETH_XDP_DEFINE_END();
 
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
@@ -376,6 +394,8 @@ static int idpf_xdp_setup_prog(struct idpf_vport *vport,
 	if (old)
 		bpf_prog_put(old);
 
+	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
+
 	return ret;
 }
 
-- 
2.50.1

