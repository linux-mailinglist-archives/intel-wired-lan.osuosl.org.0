Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F8381D178
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:00:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFC6B42D3E;
	Sat, 23 Dec 2023 03:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFC6B42D3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300401;
	bh=PKbpo63sVF0sa12ZB3FKH1VBUMElG8kh6clFp0MEtyA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J+UfjFvGwN91lpxD5QkDhGyUFivWEIA3oFbOX0IpfPzvwVJ1+TmLj1aCA2TaFDkKk
	 wdA90N3V6czXvdJiokCMkJjDM2OzoZ8TQTnWc4DQ7+PjERuq53qwSA3ErAPErcGRr+
	 lrJhfTNYxqcGuVfoeDv+f1VXMlVYF7iJr2XaPRZ35m0g2/A0R0MeVk7BQdD0fCpzFn
	 znd14pbbMv+sfiNz8+6iEtjliBkV1JLm2Pi+nI7Y6EUK+xBxKjlB75R1Xpgj3UIJl2
	 YbfYKHJhxwo1RNwn5CLdaDGGyZwK1mD7coNuTQ+92/HJ9UZsMPJQU7Ceu+IpiE5Np8
	 8b+pa6bGnQ+rQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Q6CPnBRliej; Sat, 23 Dec 2023 02:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32EFE415EF;
	Sat, 23 Dec 2023 02:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32EFE415EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 215181BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE4A042D12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE4A042D12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQJICrsOWezS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8BCB40348
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8BCB40348
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611009"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611009"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537600"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:25 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:42 +0100
Message-ID: <20231223025554.2316836-23-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300370; x=1734836370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OzmR9y65n4szYK76EdIk2iRvc2hyld6yhCktx9lGAaA=;
 b=cxM4AeUXD08AYFDaXsb3NzQ3aEBfLg+aiyfQbcppebIlFOC5/rRWAJqA
 YULkcDnMYikRLAXq9lLTyZC3Q0yuV0Z9aoxnasHXMUrK6BhWwVEPwHJsO
 IV17LU+VOnc5NIk6dNKtA6XuuDMPz8IeZIMqvd3NVmyuQ4Xm7nXYbCLLA
 WCN9Rx1cB9zhd5CgDCCvOvckh8FNYl+p6f9SkPaEJGowLGwzEt8P0Woz6
 b/29JdHJ7qmCBLFSujpzKvXfBXC0aPjfEfnIEDxbVss1R5f6DCIa2cFJz
 SvWuBFUOvYNLXKdlqEfib6raxZsDPEzWyUE3Xz6Lt5ovisqvlDjxfr0N3
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cxM4AeUX
Subject: [Intel-wired-lan] [PATCH RFC net-next 22/34] idpf: implement
 XDP_SETUP_PROG in ndo_bpf for splitq
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

From: Michal Kubiak <michal.kubiak@intel.com>

Implement loading the XDP program using ndo_bpf
callback for splitq and XDP_SETUP_PROG parameter.

Add functions for stopping, reconfiguring and restarting
all queues when needed.
Also, implement the XDP hot swap mechanism when the existing
XDP program is replaced by another one (without a necessity
of reconfiguring anything).

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h      |   2 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |   5 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |   5 +
 drivers/net/ethernet/intel/idpf/idpf_xdp.c  | 160 ++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_xdp.h  |   7 +
 5 files changed, 177 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 76df52b797d9..91f61060f500 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -975,6 +975,8 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 			 u32 vport_id);
 int idpf_send_disable_queues_msg(struct idpf_vport *vport);
 void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
+int idpf_vport_open(struct idpf_vport *vport, bool alloc_res);
+void idpf_vport_stop(struct idpf_vport *vport);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
 int idpf_vport_queue_ids_init(struct idpf_vport *vport);
 int idpf_queue_reg_init(struct idpf_vport *vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c3fb20197725..01130e7c4d2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -889,7 +889,7 @@ static void idpf_remove_features(struct idpf_vport *vport)
  * idpf_vport_stop - Disable a vport
  * @vport: vport to disable
  */
-static void idpf_vport_stop(struct idpf_vport *vport)
+void idpf_vport_stop(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 
@@ -1369,7 +1369,7 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
  * @vport: vport to bring up
  * @alloc_res: allocate queue resources
  */
-static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
+int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
@@ -2444,6 +2444,7 @@ static const struct net_device_ops idpf_netdev_ops_splitq = {
 	.ndo_get_stats64 = idpf_get_stats64,
 	.ndo_set_features = idpf_set_features,
 	.ndo_tx_timeout = idpf_tx_timeout,
+	.ndo_bpf = idpf_xdp,
 };
 
 static const struct net_device_ops idpf_netdev_ops_singleq = {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index d4a9f4c36b63..e7081b68bc7d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -929,6 +929,8 @@ static void idpf_vport_queue_grp_rel_all(struct idpf_vport *vport)
 void idpf_vport_queues_rel(struct idpf_vport *vport)
 {
 	idpf_vport_xdpq_put(vport);
+	idpf_copy_xdp_prog_to_qs(vport, NULL);
+
 	idpf_tx_desc_rel_all(vport);
 	idpf_rx_desc_rel_all(vport);
 	idpf_vport_queue_grp_rel_all(vport);
@@ -1485,6 +1487,7 @@ static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
  */
 int idpf_vport_queues_alloc(struct idpf_vport *vport)
 {
+	struct bpf_prog *prog;
 	int err;
 
 	err = idpf_vport_queue_grp_alloc_all(vport);
@@ -1503,6 +1506,8 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	if (err)
 		goto err_out;
 
+	prog = vport->adapter->vport_config[vport->idx]->user_config.xdp_prog;
+	idpf_copy_xdp_prog_to_qs(vport, prog);
 	idpf_vport_xdpq_get(vport);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xdp.c b/drivers/net/ethernet/intel/idpf/idpf_xdp.c
index 29b2fe68c7eb..87d147e80047 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xdp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_xdp.c
@@ -104,6 +104,33 @@ void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport)
 	idpf_rxq_for_each(vport, idpf_xdp_rxq_info_deinit, NULL);
 }
 
+static int idpf_xdp_rxq_assign_prog(struct idpf_queue *rxq, void *arg)
+{
+	struct mutex *lock = &rxq->vport->adapter->vport_ctrl_lock;
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
+ * idpf_copy_xdp_prog_to_qs - set pointers to xdp program for each Rx queue
+ * @vport: vport to setup XDP for
+ * @xdp_prog: XDP program that should be copied to all Rx queues
+ */
+void idpf_copy_xdp_prog_to_qs(const struct idpf_vport *vport,
+			      struct bpf_prog *xdp_prog)
+{
+	idpf_rxq_for_each(vport, idpf_xdp_rxq_assign_prog, xdp_prog);
+}
+
 void idpf_vport_xdpq_get(const struct idpf_vport *vport)
 {
 	if (!idpf_xdp_is_prog_ena(vport))
@@ -145,3 +172,136 @@ void idpf_vport_xdpq_put(const struct idpf_vport *vport)
 
 	cpus_read_unlock();
 }
+
+/**
+ * idpf_xdp_reconfig_queues - reconfigure queues after the XDP setup
+ * @vport: vport to load or unload XDP for
+ */
+static int idpf_xdp_reconfig_queues(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_vport_adjust_qs(vport);
+	if (err) {
+		netdev_err(vport->netdev,
+			   "Could not adjust queue number for XDP\n");
+		return err;
+	}
+	idpf_vport_calc_num_q_desc(vport);
+
+	err = idpf_vport_queues_alloc(vport);
+	if (err) {
+		netdev_err(vport->netdev,
+			   "Could not allocate queues for XDP\n");
+		return err;
+	}
+
+	err = idpf_send_add_queues_msg(vport, vport->num_txq,
+				       vport->num_complq,
+				       vport->num_rxq, vport->num_bufq);
+	if (err) {
+		netdev_err(vport->netdev,
+			   "Could not add queues for XDP, VC message sent failed\n");
+		return err;
+	}
+
+	idpf_vport_alloc_vec_indexes(vport);
+
+	return 0;
+}
+
+/**
+ * idpf_assign_bpf_prog - Assign a given BPF program to vport
+ * @current_prog: pointer to XDP program in user config data
+ * @prog: BPF program to be assigned to vport
+ */
+static void idpf_assign_bpf_prog(struct bpf_prog **current_prog,
+				 struct bpf_prog *prog)
+{
+	struct bpf_prog *old_prog = *current_prog;
+
+	*current_prog = prog;
+	if (old_prog)
+		bpf_prog_put(old_prog);
+}
+
+/**
+ * idpf_xdp_setup_prog - Add or remove XDP eBPF program
+ * @vport: vport to setup XDP for
+ * @prog: XDP program
+ * @extack: netlink extended ack
+ */
+static int
+idpf_xdp_setup_prog(struct idpf_vport *vport, struct bpf_prog *prog,
+		    struct netlink_ext_ack *extack)
+{
+	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	bool needs_reconfig, vport_is_up;
+	struct bpf_prog **current_prog;
+	u16 idx = vport->idx;
+	int err;
+
+	vport_is_up = np->state == __IDPF_VPORT_UP;
+
+	current_prog = &vport->adapter->vport_config[idx]->user_config.xdp_prog;
+	needs_reconfig = !!(*current_prog) != !!prog;
+
+	if (!needs_reconfig) {
+		idpf_copy_xdp_prog_to_qs(vport, prog);
+		idpf_assign_bpf_prog(current_prog, prog);
+
+		return 0;
+	}
+
+	if (!vport_is_up) {
+		idpf_send_delete_queues_msg(vport);
+	} else {
+		set_bit(IDPF_VPORT_DEL_QUEUES, vport->flags);
+		idpf_vport_stop(vport);
+	}
+
+	idpf_deinit_rss(vport);
+
+	idpf_assign_bpf_prog(current_prog, prog);
+
+	err = idpf_xdp_reconfig_queues(vport);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Could not reconfigure the queues after XDP setup\n");
+		return err;
+	}
+
+	if (vport_is_up) {
+		err = idpf_vport_open(vport, false);
+		if (err) {
+			NL_SET_ERR_MSG_MOD(extack, "Could not re-open the vport after XDP setup\n");
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_xdp - implements XDP handler
+ * @netdev: netdevice
+ * @xdp: XDP command
+ */
+int idpf_xdp(struct net_device *netdev, struct netdev_bpf *xdp)
+{
+	struct idpf_vport *vport;
+	int err;
+
+	idpf_vport_ctrl_lock(netdev);
+	vport = idpf_netdev_to_vport(netdev);
+
+	switch (xdp->command) {
+	case XDP_SETUP_PROG:
+		err = idpf_xdp_setup_prog(vport, xdp->prog, xdp->extack);
+		break;
+	default:
+		err = -EINVAL;
+	}
+
+	idpf_vport_ctrl_unlock(netdev);
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xdp.h b/drivers/net/ethernet/intel/idpf/idpf_xdp.h
index 16b30caaac3f..1d102b1fd2ac 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xdp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_xdp.h
@@ -4,12 +4,19 @@
 #ifndef _IDPF_XDP_H_
 #define _IDPF_XDP_H_
 
+struct bpf_prog;
 struct idpf_vport;
+struct net_device;
+struct netdev_bpf;
 
 int idpf_xdp_rxq_info_init_all(const struct idpf_vport *vport);
 void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport);
+void idpf_copy_xdp_prog_to_qs(const struct idpf_vport *vport,
+			      struct bpf_prog *xdp_prog);
 
 void idpf_vport_xdpq_get(const struct idpf_vport *vport);
 void idpf_vport_xdpq_put(const struct idpf_vport *vport);
 
+int idpf_xdp(struct net_device *netdev, struct netdev_bpf *xdp);
+
 #endif /* _IDPF_XDP_H_ */
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
