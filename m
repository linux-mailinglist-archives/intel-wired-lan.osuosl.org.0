Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0824AE6CB8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:46:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7321361249;
	Tue, 24 Jun 2025 16:46:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uDNFewANIbs1; Tue, 24 Jun 2025 16:46:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB2D961342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750783586;
	bh=OeU7kddxUffNGaqSxYZZ6EgmFdNcTXKsBb557Y3ilfY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dcplBBDu5ETUfoghR4mzDlP7Gw/fyt74L23KuFW5e1m4dFjgrlJJHU1Jgt0J1csjn
	 NcjNKoHWqmEUnJMSLMu5OFp3vymHLsziKWDc/kKG+ZWKjbGPoX/cCiP0zH4Ldh2R6L
	 leArG8cyrfGiyjCtPMTwAD119tXBYhtfOhUgR4qhRIG+yOGlMnxpROb9Cza3Etz30W
	 5AU7Op6p6wWcEMDdAYhumVbOWlF+T01WYpDtmEqkgvFUr4YS3/PdqerD2QKL1TL97Q
	 R6fRuhdhir+sqVNRqE1laJXaunLVKah1hnxYrbg0bYeEZEaMze7So9YxWoTVgOd67x
	 tPyH11/FziR8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB2D961342;
	Tue, 24 Jun 2025 16:46:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47C0A43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4514F8143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Amtu-Tc-XEod for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:46:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A3416813EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3416813EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A3416813EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:24 +0000 (UTC)
X-CSE-ConnectionGUID: wY+SyKYYRnq1nNrhgY9pqw==
X-CSE-MsgGUID: hw7T0JInQTCoNElTcBJiFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64091320"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64091320"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:46:24 -0700
X-CSE-ConnectionGUID: 3UDVJG++QUyKJ6k9kt6Hiw==
X-CSE-MsgGUID: PKiGO8XSQLmbIDx6XtSjoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="152669496"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jun 2025 09:46:20 -0700
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
Date: Tue, 24 Jun 2025 18:45:14 +0200
Message-ID: <20250624164515.2663137-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
References: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783584; x=1782319584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Ys41ewzCv16gpSQ+y6b4i3wPF1PkgZ8oZ/5SVgWznE=;
 b=GCrBgoTUETW6N9QSXh0uhkR+iUk1bKNizwvtuzK4JCQeRBXfaoWzfwIm
 rTt16J/BIyHa4oB2Hqp1pPFnXjAf7fnLAG/T7hw9KpWXIPLTH6MIiOaih
 /ZYqOkyqpXlCkizl+2hXiV5UJVruq+0UMRMsPphukeno3ItSZBT+IKFMW
 HqpnnbTT6ZxzUYdvdT+4lpuTeFu9UyUeeoFDquCO7OSfVsp+Np6o28Qox
 0GvX0rbZGjwYXQEl49ADHjVeRnXgHWvNrO3YhyMkslTq2l7TfshZDruMR
 NvBhrjfD+JoOwROJn8piCb+lajcmO9qTGDmYmCJcJOw9FDIxKHAUlNggk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GCrBgoTU
Subject: [Intel-wired-lan] [PATCH iwl-next v2 11/12] idpf: add support for
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
index ad458a3eba66..c2c9267e4254 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2421,4 +2421,5 @@ static const struct net_device_ops idpf_netdev_ops = {
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
2.49.0

