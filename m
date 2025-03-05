Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62057A50493
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:23:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D73860D70;
	Wed,  5 Mar 2025 16:23:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CNepCsc73GNw; Wed,  5 Mar 2025 16:23:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2327460F18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191790;
	bh=4U5LBAi9VIPIgpDl7taXleSjAHaiRPQu2eS7CmNaHsU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=46w0p+/pEO9y8bfLfyKrRy6sJ3ySG1DRGsP6ll86rF3oRMOB4jihCFg94hj7hVby9
	 Tlhmfc6B6mjSgMnnuSiJkYm3rhWPcB6vM87gH3KF6Vcw4aeZpO8eMaot5YbPv5Cf4u
	 3wpHS9gYYG45P27MnzXhvhgGkqSpEn8mxVbGuUXN1/n54NDu3hdEg9GJi3JcyMeLuw
	 ACcDwQdWi/OXdg3Wab5GL85VHplzxE60yOgOErOS6HbFXhuKNr7r4aCaMGynNFpeyV
	 JfnKjBzAMmT4Pt+SW0ZItmhHA4wNfupYMEjs7bSdvsIDXZz9Ht5DH0tzMPhR3nC5vS
	 XQNqor9w/TUeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2327460F18;
	Wed,  5 Mar 2025 16:23:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CE40E95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B470660D70
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3nfnBbUN1BHo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:23:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 786E5608EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 786E5608EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 786E5608EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:06 +0000 (UTC)
X-CSE-ConnectionGUID: t+Y4lalHRLKIClOGA2OlUQ==
X-CSE-MsgGUID: 9mKS/wl6RTatGGwrtQSoWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026581"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026581"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:23:06 -0800
X-CSE-ConnectionGUID: HmBmxh6WQQS0o81hn5xwQA==
X-CSE-MsgGUID: qURTl6QMQguaTum6Pv64lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123832975"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:23:02 -0800
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
Date: Wed,  5 Mar 2025 17:21:28 +0100
Message-ID: <20250305162132.1106080-13-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191787; x=1772727787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iv4sFtRKWEo7bvrSo1BxB9IzIfb6jdFJc+XauukdCyA=;
 b=XS2FBEf5RL9bQbY/ozYWLNjiUYVb97b34B+BNgMdUmBdCXLqioN4wWHz
 wHDKUtqdAS10rmgoqGcIhwmsPswmpIfgZQm27nLf/TJyAErJ0ogWec2pW
 HDD3ErPR4OOrRWo3eXtRmZn8JSDa8UQzjkZl36rPSIUBuPBE0ClBdyq8P
 A6b+RWgP8dsrxkJaE9w/3S8my2uggSf/12itLeKAJtpYyzTgRQPJn5Nuj
 uFyAC9H4kT6uaSzVB4bYUC5nVck6sb5kD+NqXTbUFjurvP96wTT47Oj+M
 Sqo6wfJF/gymxRGJQl/5ywu4Dk4f2b9rdW3jyau+y/Yts1oQqtrulBdey
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XS2FBEf5
Subject: [Intel-wired-lan] [PATCH net-next 12/16] idpf: implement
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
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |   4 +-
 drivers/net/ethernet/intel/idpf/xdp.h       |   7 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |   4 +
 drivers/net/ethernet/intel/idpf/xdp.c       | 114 ++++++++++++++++++++
 5 files changed, 129 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 6d9eb6f4ab38..38ef0db08133 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -485,6 +485,7 @@ struct idpf_txq_stash {
  * @desc_ring: virtual descriptor ring address
  * @bufq_sets: Pointer to the array of buffer queues in splitq mode
  * @napi: NAPI instance corresponding to this queue (splitq)
+ * @xdp_prog: attached XDP program
  * @rx_buf: See struct &libeth_fqe
  * @pp: Page pool pointer in singleq mode
  * @tail: Tail offset. Used for both queue models single and split.
@@ -525,13 +526,14 @@ struct idpf_rx_queue {
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
index 8ace8384f348..a72a7638a6ea 100644
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
+void idpf_copy_xdp_prog_to_qs(const struct idpf_vport *vport,
+			      struct bpf_prog *xdp_prog);
 
 int idpf_vport_xdpq_get(const struct idpf_vport *vport);
 void idpf_vport_xdpq_put(const struct idpf_vport *vport);
 
+int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
+
 #endif /* _IDPF_XDP_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 0f4edc9cd1ad..84ca8c08bd56 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2368,4 +2368,5 @@ static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_get_stats64 = idpf_get_stats64,
 	.ndo_set_features = idpf_set_features,
 	.ndo_tx_timeout = idpf_tx_timeout,
+	.ndo_bpf = idpf_xdp,
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 97513822d614..e152fbe4ebe3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1102,6 +1102,8 @@ static void idpf_vport_queue_grp_rel_all(struct idpf_vport *vport)
  */
 void idpf_vport_queues_rel(struct idpf_vport *vport)
 {
+	idpf_copy_xdp_prog_to_qs(vport, NULL);
+
 	idpf_tx_desc_rel_all(vport);
 	idpf_rx_desc_rel_all(vport);
 
@@ -1664,6 +1666,8 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	if (err)
 		goto err_out;
 
+	idpf_copy_xdp_prog_to_qs(vport, vport->xdp_prog);
+
 	return 0;
 
 err_out:
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 8770249b5abe..c0322fa7bfee 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -4,6 +4,7 @@
 #include <net/libeth/xdp.h>
 
 #include "idpf.h"
+#include "idpf_virtchnl.h"
 #include "xdp.h"
 
 static int idpf_rxq_for_each(const struct idpf_vport *vport,
@@ -115,6 +116,33 @@ void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport)
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
+/**
+ * idpf_copy_xdp_prog_to_qs - set pointers to XDP program for each Rx queue
+ * @vport: vport to setup XDP for
+ * @xdp_prog: XDP program that should be copied to all Rx queues
+ */
+void idpf_copy_xdp_prog_to_qs(const struct idpf_vport *vport,
+			      struct bpf_prog *xdp_prog)
+{
+	idpf_rxq_for_each(vport, idpf_xdp_rxq_assign_prog, xdp_prog);
+}
+
 int idpf_vport_xdpq_get(const struct idpf_vport *vport)
 {
 	struct libeth_xdpsq_timer **timers __free(kvfree) = NULL;
@@ -187,3 +215,89 @@ void idpf_vport_xdpq_put(const struct idpf_vport *vport)
 		idpf_queue_clear(NOIRQ, xdpq);
 	}
 }
+
+/**
+ * idpf_xdp_setup_prog - handle XDP program install/remove requests
+ * @vport: vport to configure
+ * @xdp: request data (program, extack)
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int
+idpf_xdp_setup_prog(struct idpf_vport *vport, const struct netdev_bpf *xdp)
+{
+	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct bpf_prog *old, *prog = xdp->prog;
+	struct idpf_vport_config *cfg;
+	int ret;
+
+	cfg = vport->adapter->vport_config[vport->idx];
+	if (!vport->num_xdp_txq && vport->num_txq == cfg->max_q.max_txq) {
+		NL_SET_ERR_MSG_MOD(xdp->extack,
+				   "No Tx queues available for XDP, please decrease the number of regular SQs");
+		return -ENOSPC;
+	}
+
+	if (test_bit(IDPF_REMOVE_IN_PROG, vport->adapter->flags) ||
+	    !!vport->xdp_prog == !!prog) {
+		if (np->state == __IDPF_VPORT_UP)
+			idpf_copy_xdp_prog_to_qs(vport, prog);
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
+	old = cfg->user_config.xdp_prog;
+	cfg->user_config.xdp_prog = prog;
+
+	ret = idpf_initiate_soft_reset(vport, IDPF_SR_Q_CHANGE);
+	if (ret) {
+		NL_SET_ERR_MSG_MOD(xdp->extack,
+				   "Could not reopen the vport after XDP setup");
+
+		if (prog)
+			bpf_prog_put(prog);
+
+		cfg->user_config.xdp_prog = old;
+	}
+
+	return ret;
+}
+
+/**
+ * idpf_xdp - handle XDP-related requests
+ * @dev: network device to configure
+ * @xdp: request data (program, extack)
+ *
+ * Return: 0 on success, -errno on failure.
+ */
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
2.48.1

