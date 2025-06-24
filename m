Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96530AE6CB3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05C3640C16;
	Tue, 24 Jun 2025 16:46:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tNnZC28GGnZW; Tue, 24 Jun 2025 16:46:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 506C9405A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750783575;
	bh=4As8tETgH2tj1Ow88BDaDBzh4P0Jp0GuPVo01FvFxLU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cu/asDP3AKdvjiQiwQBYVd+qk4pO+OKwZViaP36lWG/jSxdKQevszfDiYYB35p8aa
	 JCy7K16WthNp6legMMrNPWAtBEtEcj2DvXOerQ+aLhelVlSVC3nMBYJac38Ro/bu3A
	 UoxqRlQJXY9OsfOlhawv9MNfnXblP5C1Q87kL4OVyxG/dxK9FFhJNvAtsXdYVX+IQT
	 g62aKLWyn3WZv1VOqEeGelZSmA707uEq5AGNrV813wXAXAokDzdJL6XGMTVgHoQdWI
	 uXcTiMlKrshU+IW/BdE1SY8ZSAotNSpoOuNwX9ogfjogUDiSpIBM4MSbT1unWlUpF0
	 4UCNuGu8SOnbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 506C9405A5;
	Tue, 24 Jun 2025 16:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 73F5943F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59FBF8143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nAHWOIOimdLp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:46:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8711B813EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8711B813EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8711B813EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:12 +0000 (UTC)
X-CSE-ConnectionGUID: YI/3idW/Tk6hd1Ngw1JXPA==
X-CSE-MsgGUID: IVRL2RhdTy2LrSmU6cG7EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64091264"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64091264"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:46:12 -0700
X-CSE-ConnectionGUID: f5fyvQciQ8uHx21LkRFCOw==
X-CSE-MsgGUID: qXasHY9OQQ2n732zSg1JEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="152669484"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jun 2025 09:46:08 -0700
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
Date: Tue, 24 Jun 2025 18:45:11 +0200
Message-ID: <20250624164515.2663137-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
References: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783572; x=1782319572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3wvWgR3cBdJ90pqeQ5NUDZUlGDQSWEvAPlYVnDTIqD0=;
 b=ZywqGhf7kg+awA4twDWhAyq6AaDH/BUyojgt8CmhyWZND5Y44kiLOoNo
 hOqF2pOOnRRcoxqV2UFQ9sNqRiKdH5nwnwSHb3czeb7Hg6yB+ACr2B5OI
 LtJ7AbZh4pEapnMIL/Uzkfx0HsnmO23PMTOJOq9xOgiWFBIoyjhj1bH/R
 fd7gf4yNDIDE1GyQKrtT0BbaH6qPrpo+tvkNaydC+yWlRSzIx0e/0nS7g
 87ovUErz8u7fjU8zjblie2LPC4uA4zyjh0QnTGIZvHvaIoDsG8G5L8+LW
 lyEOnPxQMLROFp7OOFev8IVC3k5H8QlNKmpIPOXGDlt3pQ+PDtZhXnMjz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZywqGhf7
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/12] idpf: implement
 XDP_SETUP_PROG in ndo_bpf for splitq
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

From: Michal Kubiak <michal.kubiak@intel.com>

Implement loading/removing XDP program using .ndo_bpf callback
in the split queue mode. Reconfigure and restart the queues if needed
(!!old_prog != !!new_prog), otherwise, just update the pointers.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  4 +-
 drivers/net/ethernet/intel/idpf/xdp.h       |  7 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |  1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |  4 +
 drivers/net/ethernet/intel/idpf/xdp.c       | 98 +++++++++++++++++++++
 5 files changed, 113 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 03215f386bf6..251f400c2389 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -490,6 +490,7 @@ struct idpf_txq_stash {
  * @desc_ring: virtual descriptor ring address
  * @bufq_sets: Pointer to the array of buffer queues in splitq mode
  * @napi: NAPI instance corresponding to this queue (splitq)
+ * @xdp_prog: attached XDP program
  * @rx_buf: See struct &libeth_fqe
  * @pp: Page pool pointer in singleq mode
  * @tail: Tail offset. Used for both queue models single and split.
@@ -531,13 +532,14 @@ struct idpf_rx_queue {
 		struct {
 			struct idpf_bufq_set *bufq_sets;
 			struct napi_struct *napi;
+			struct bpf_prog __rcu *xdp_prog;
 		};
 		struct {
 			struct libeth_fqe *rx_buf;
 			struct page_pool *pp;
+			void __iomem *tail;
 		};
 	};
-	void __iomem *tail;
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 	u16 idx;
diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
index cf6823b24ba5..47553ce5f81a 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.h
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -6,12 +6,19 @@
 
 #include <linux/types.h>
 
+struct bpf_prog;
 struct idpf_vport;
+struct net_device;
+struct netdev_bpf;
 
 int idpf_xdp_rxq_info_init_all(const struct idpf_vport *vport);
 void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport);
+void idpf_xdp_copy_prog_to_rqs(const struct idpf_vport *vport,
+			       struct bpf_prog *xdp_prog);
 
 int idpf_xdpsqs_get(const struct idpf_vport *vport);
 void idpf_xdpsqs_put(const struct idpf_vport *vport);
 
+int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
+
 #endif /* _IDPF_XDP_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index e2631c710573..c2c7528fe85b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2418,4 +2418,5 @@ static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_tx_timeout = idpf_tx_timeout,
 	.ndo_hwtstamp_get = idpf_hwtstamp_get,
 	.ndo_hwtstamp_set = idpf_hwtstamp_set,
+	.ndo_bpf = idpf_xdp,
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index c176af58c0e2..ed1736e52b1c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1108,6 +1108,8 @@ static void idpf_vport_queue_grp_rel_all(struct idpf_vport *vport)
  */
 void idpf_vport_queues_rel(struct idpf_vport *vport)
 {
+	idpf_xdp_copy_prog_to_rqs(vport, NULL);
+
 	idpf_tx_desc_rel_all(vport);
 	idpf_rx_desc_rel_all(vport);
 
@@ -1678,6 +1680,8 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	if (err)
 		goto err_out;
 
+	idpf_xdp_copy_prog_to_rqs(vport, vport->xdp_prog);
+
 	return 0;
 
 err_out:
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 08d63462dca4..09e84fe80d4e 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -4,6 +4,7 @@
 #include <net/libeth/xdp.h>
 
 #include "idpf.h"
+#include "idpf_virtchnl.h"
 #include "xdp.h"
 
 static int idpf_rxq_for_each(const struct idpf_vport *vport,
@@ -91,6 +92,28 @@ void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport)
 			  (void *)(size_t)vport->rxq_model);
 }
 
+static int idpf_xdp_rxq_assign_prog(struct idpf_rx_queue *rxq, void *arg)
+{
+	struct mutex *lock = &rxq->q_vector->vport->adapter->vport_ctrl_lock;
+	struct bpf_prog *prog = arg;
+	struct bpf_prog *old;
+
+	if (prog)
+		bpf_prog_inc(prog);
+
+	old = rcu_replace_pointer(rxq->xdp_prog, prog, lockdep_is_held(lock));
+	if (old)
+		bpf_prog_put(old);
+
+	return 0;
+}
+
+void idpf_xdp_copy_prog_to_rqs(const struct idpf_vport *vport,
+			       struct bpf_prog *xdp_prog)
+{
+	idpf_rxq_for_each(vport, idpf_xdp_rxq_assign_prog, xdp_prog);
+}
+
 int idpf_xdpsqs_get(const struct idpf_vport *vport)
 {
 	struct libeth_xdpsq_timer **timers __free(kvfree) = NULL;
@@ -163,3 +186,78 @@ void idpf_xdpsqs_put(const struct idpf_vport *vport)
 		idpf_queue_clear(NOIRQ, xdpsq);
 	}
 }
+
+static int idpf_xdp_setup_prog(struct idpf_vport *vport,
+			       const struct netdev_bpf *xdp)
+{
+	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct bpf_prog *old, *prog = xdp->prog;
+	struct idpf_vport_config *cfg;
+	int ret;
+
+	cfg = vport->adapter->vport_config[vport->idx];
+
+	if (test_bit(IDPF_REMOVE_IN_PROG, vport->adapter->flags) ||
+	    !test_bit(IDPF_VPORT_REG_NETDEV, cfg->flags) ||
+	    !!vport->xdp_prog == !!prog) {
+		if (np->state == __IDPF_VPORT_UP)
+			idpf_xdp_copy_prog_to_rqs(vport, prog);
+
+		old = xchg(&vport->xdp_prog, prog);
+		if (old)
+			bpf_prog_put(old);
+
+		cfg->user_config.xdp_prog = prog;
+
+		return 0;
+	}
+
+	if (!vport->num_xdp_txq && vport->num_txq == cfg->max_q.max_txq) {
+		NL_SET_ERR_MSG_MOD(xdp->extack,
+				   "No Tx queues available for XDP, please decrease the number of regular SQs");
+		return -ENOSPC;
+	}
+
+	old = cfg->user_config.xdp_prog;
+	cfg->user_config.xdp_prog = prog;
+
+	ret = idpf_initiate_soft_reset(vport, IDPF_SR_Q_CHANGE);
+	if (ret) {
+		NL_SET_ERR_MSG_MOD(xdp->extack,
+				   "Could not reopen the vport after XDP setup");
+
+		cfg->user_config.xdp_prog = old;
+		old = prog;
+	}
+
+	if (old)
+		bpf_prog_put(old);
+
+	return ret;
+}
+
+int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp)
+{
+	struct idpf_vport *vport;
+	int ret;
+
+	idpf_vport_ctrl_lock(dev);
+	vport = idpf_netdev_to_vport(dev);
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		goto notsupp;
+
+	switch (xdp->command) {
+	case XDP_SETUP_PROG:
+		ret = idpf_xdp_setup_prog(vport, xdp);
+		break;
+	default:
+notsupp:
+		ret = -EOPNOTSUPP;
+		break;
+	}
+
+	idpf_vport_ctrl_unlock(dev);
+
+	return ret;
+}
-- 
2.49.0

