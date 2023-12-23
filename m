Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 430BD81D17B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:00:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C578B42DE9;
	Sat, 23 Dec 2023 03:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C578B42DE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300414;
	bh=3aXXUU0vFOjUpXmOhWaEqv+hK67yibaZvTFA0NchgzA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6PN6z3AqCR4pJ3u9FIKgPHWoeHjaHHxrpjPZfZX1z+paw/34TWJPBD9OHM6EdUEAg
	 NGLnP1FeH7Ot+lqQmbg+QcO3s3rZebiDU20BbeOe2WuMWqEz2ptTgJp6E8l9AD4Otd
	 NepAy8ZeIC2B2VskFANQRLfWc9bKvyyUk1iDHON2o8VpA/99SeWGO/0rfCfao5Zj/g
	 6gPDL4793ctGZXpnH5vqqbuU9Yk09P6KRarOEnoCk8v+IFO/aUYqYxd/YZynBskB3X
	 w7q+rls6ZF0TiwtlwNk+/jA4XRQCmCYTTmVyW5Km/8mMAlQU7WU2PuNDc0Vzh/XYsP
	 EkkCplVVtglXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHyxfQphXh5b; Sat, 23 Dec 2023 03:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80DA242D41;
	Sat, 23 Dec 2023 03:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80DA242D41
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B742E1BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D6D040348
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D6D040348
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LPFcydA3jHnj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC4EB42D9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC4EB42D9B
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611035"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611035"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537631"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:38 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:45 +0100
Message-ID: <20231223025554.2316836-26-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300381; x=1734836381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vBLq+bSc90hU1HHgtTujEszVAfYomJgRRmZIp5oafNw=;
 b=KgpMNTpMHEveGBfy/CV+TPZH3CG5dMunsdBMtmT+eLHkOU1DEGDqparU
 4Bt/dxr9FdhIUwOowWK9VcqVmHtiLbHCTqCrqyOUBbcYhy9zC8hCcWUps
 X3Zn4l1ElI8vsRM7KSvuQqpnLQ/slNkXc8+byLRaYbPLOrmxKIhhPI4gv
 y3b7Kem20FJT5AO9GO1JtT3zaq/0IqTrJDYGjkXFd3jygyfX4LzUjn6cZ
 Ij2x2Bs0hSZ7vANq4L7/LqsfvPQASEn1y6EWPh1W8jvCdSVRj6gz4xFt/
 IksZy8iAynQg/1PJlcr2EQMwo/7+XbYC3weTTbnTF+hHfiODW3Y2Hf/Ig
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KgpMNTpM
Subject: [Intel-wired-lan] [PATCH RFC net-next 25/34] idpf: add support for
 .ndo_xdp_xmit()
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use libie XDP infra to implement .ndo_xdp_xmit() in idpf.
The Tx callbacks are reused from XDP_TX code. XDP redirect target
feature is set/cleared depending on the XDP prog presence, as for now
we still don't allocate XDP Tx queues when there's no program.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c |  1 +
 drivers/net/ethernet/intel/idpf/idpf_xdp.c | 34 ++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_xdp.h |  2 ++
 3 files changed, 37 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index a19704c4c421..7c3d45f84e1b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2451,6 +2451,7 @@ static const struct net_device_ops idpf_netdev_ops_splitq = {
 	.ndo_set_features = idpf_set_features,
 	.ndo_tx_timeout = idpf_tx_timeout,
 	.ndo_bpf = idpf_xdp,
+	.ndo_xdp_xmit = idpf_xdp_xmit,
 };
 
 static const struct net_device_ops idpf_netdev_ops_singleq = {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xdp.c b/drivers/net/ethernet/intel/idpf/idpf_xdp.c
index b9952ebda4fb..b4f096186302 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xdp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_xdp.c
@@ -313,6 +313,35 @@ bool __idpf_xdp_run_prog(struct xdp_buff *xdp, struct libie_xdp_tx_bulk *bq)
 	return libie_xdp_run_prog(xdp, bq, idpf_xdp_tx_flush_bulk);
 }
 
+/**
+ * idpf_xdp_xmit - submit packets to xdp ring for transmission
+ * @dev: netdev
+ * @n: number of xdp frames to be transmitted
+ * @frames: xdp frames to be transmitted
+ * @flags: transmit flags
+ *
+ * Returns number of frames successfully sent. Frames that fail are
+ * free'ed via XDP return API.
+ * For error cases, a negative errno code is returned and no-frames
+ * are transmitted (caller must handle freeing frames).
+ */
+int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
+		  u32 flags)
+{
+	struct idpf_netdev_priv *np = netdev_priv(dev);
+	struct idpf_vport *vport = np->vport;
+
+	if (unlikely(!netif_carrier_ok(dev) || !vport->link_up))
+		return -ENETDOWN;
+	if (unlikely(!idpf_xdp_is_prog_ena(vport)))
+		return -ENXIO;
+
+	return libie_xdp_xmit_do_bulk(dev, n, frames, flags,
+				      &vport->txqs[vport->xdp_txq_offset],
+				      vport->num_xdp_txq, idpf_xdp_tx_prep,
+				      idpf_xdp_tx_xmit, idpf_xdp_tx_finalize);
+}
+
 /**
  * idpf_xdp_reconfig_queues - reconfigure queues after the XDP setup
  * @vport: vport to load or unload XDP for
@@ -410,6 +439,11 @@ idpf_xdp_setup_prog(struct idpf_vport *vport, struct bpf_prog *prog,
 		return err;
 	}
 
+	if (prog)
+		xdp_features_set_redirect_target(vport->netdev, false);
+	else
+		xdp_features_clear_redirect_target(vport->netdev);
+
 	if (vport_is_up) {
 		err = idpf_vport_open(vport, false);
 		if (err) {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xdp.h b/drivers/net/ethernet/intel/idpf/idpf_xdp.h
index 1f299c268ca5..f1444482f69d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xdp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_xdp.h
@@ -31,6 +31,8 @@ static inline void idpf_xdp_finalize_rx(struct libie_xdp_tx_bulk *bq)
 		__idpf_xdp_finalize_rx(bq);
 }
 
+int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
+		  u32 flags);
 int idpf_xdp(struct net_device *netdev, struct netdev_bpf *xdp);
 
 #endif /* _IDPF_XDP_H_ */
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
