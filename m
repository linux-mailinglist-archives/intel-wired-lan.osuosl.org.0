Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CDB95C9EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 12:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6192781EC6;
	Fri, 23 Aug 2024 10:08:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sgGxEtgmcsZE; Fri, 23 Aug 2024 10:08:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 380CE81EC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724407693;
	bh=ltbKuDJ+beFQD1jhLzbr8PVvCB8DH5Gt263FKTLslOk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ndt+BaYE9O7D6VucJN8YhCxbkdI6gbNn62PTWiE0jt6gmQA9vFserrEM2Izbo9uSR
	 jro6FDic0Pyg5p1GFCmGL6pQtiYqrmip8mVCq9yXTCS3lvHZBn0yLpeSV7UOMtoBWP
	 dIHx2YraKqb8uSdG9gBITdgcNDZWE6QyiVQ6zthV9yWci0ccJYrL2+VZkzquBv8NS3
	 H4Li3Im+VQW99+H7FE03ywf2J+mt8UPhiYLCCSqS7e1/+KUDlvN0kGIxsa9uRN7yOM
	 5eUJxssJ4Qkn51PdIsrZ5YwxcMdtvdT5z4yqj4rIpkNJv7GE1Kp4upYsW6g7iPpU/6
	 VafsfHngwTujw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 380CE81EC3;
	Fri, 23 Aug 2024 10:08:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FF891BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B227403F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N2NGSTfYqKOM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 10:08:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 91DD740FD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91DD740FD5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91DD740FD5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:06 +0000 (UTC)
X-CSE-ConnectionGUID: iCw46/SDRmS9DYq5PIvOHA==
X-CSE-MsgGUID: NdCKKS5hRsW0KLjAqcudhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34285020"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="34285020"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:08:06 -0700
X-CSE-ConnectionGUID: BKxVKxl3TxGZKEGh1D4DaA==
X-CSE-MsgGUID: aHJskCtASUS8r1bB1IgX/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62478947"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 23 Aug 2024 03:08:00 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A23B433BD5;
 Fri, 23 Aug 2024 11:07:57 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 23 Aug 2024 11:59:27 +0200
Message-ID: <20240823095933.17922-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240823095933.17922-1-larysa.zaremba@intel.com>
References: <20240823095933.17922-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724407686; x=1755943686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/AZ6vpYLg4MDTp2SEEG6FLjLx9IG1vlsjW3wWzOVanA=;
 b=X0+uFpL0wsLBjlyZs65YHjBc05Ml5rvKGTDMZeYOsLxh9UpnwSLBnie+
 MGeT0B/Xp122ANXx5j2IkeY78x8qvCW7+wCrHpCpVGXNlGWDlBMBCrxbG
 9x9ulOWpufjTuTjP9yxUYIBRTA88GYVgrtSwwDduXuIASc171XrhVs8fc
 wXWG/qQvGW5AmiocyxTKbGBFY3qqfczP5yxMP1KPPUmvN53gZSbA5rbvu
 BgL6zPUWY6DPxEc6DWoeX7gnjtJGFmL1DUOhxUqAk6Uj7jNvnc3uGgRpk
 t9WsJOGO2qbxNGnSQMUdhGTBZd8Xc4gmOqOMTX72TpCKBcWr96xyVpupd
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X0+uFpL0
Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/6] ice: protect XDP
 configuration with a mutex
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
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, przemyslaw.kitszel@intel.com,
 John Fastabend <john.fastabend@gmail.com>, anirudh.venkataramanan@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, sridhar.samudrala@intel.com, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The main threat to data consistency in ice_xdp() is a possible asynchronous
PF reset. It can be triggered by a user or by TX timeout handler.

XDP setup and PF reset code access the same resources in the following
sections:
* ice_vsi_close() in ice_prepare_for_reset() - already rtnl-locked
* ice_vsi_rebuild() for the PF VSI - not protected
* ice_vsi_open() - already rtnl-locked

With an unfortunate timing, such accesses can result in a crash such as the
one below:

[ +1.999878] ice 0000:b1:00.0: Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring 14
[ +2.002992] ice 0000:b1:00.0: Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring 18
[Mar15 18:17] ice 0000:b1:00.0 ens801f0np0: NETDEV WATCHDOG: CPU: 38: transmit queue 14 timed out 80692736 ms
[ +0.000093] ice 0000:b1:00.0 ens801f0np0: tx_timeout: VSI_num: 6, Q 14, NTC: 0x0, HW_HEAD: 0x0, NTU: 0x0, INT: 0x4000001
[ +0.000012] ice 0000:b1:00.0 ens801f0np0: tx_timeout recovery level 1, txqueue 14
[ +0.394718] ice 0000:b1:00.0: PTP reset successful
[ +0.006184] BUG: kernel NULL pointer dereference, address: 0000000000000098
[ +0.000045] #PF: supervisor read access in kernel mode
[ +0.000023] #PF: error_code(0x0000) - not-present page
[ +0.000023] PGD 0 P4D 0
[ +0.000018] Oops: 0000 [#1] PREEMPT SMP NOPTI
[ +0.000023] CPU: 38 PID: 7540 Comm: kworker/38:1 Not tainted 6.8.0-rc7 #1
[ +0.000031] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0014.082620210524 08/26/2021
[ +0.000036] Workqueue: ice ice_service_task [ice]
[ +0.000183] RIP: 0010:ice_clean_tx_ring+0xa/0xd0 [ice]
[...]
[ +0.000013] Call Trace:
[ +0.000016] <TASK>
[ +0.000014] ? __die+0x1f/0x70
[ +0.000029] ? page_fault_oops+0x171/0x4f0
[ +0.000029] ? schedule+0x3b/0xd0
[ +0.000027] ? exc_page_fault+0x7b/0x180
[ +0.000022] ? asm_exc_page_fault+0x22/0x30
[ +0.000031] ? ice_clean_tx_ring+0xa/0xd0 [ice]
[ +0.000194] ice_free_tx_ring+0xe/0x60 [ice]
[ +0.000186] ice_destroy_xdp_rings+0x157/0x310 [ice]
[ +0.000151] ice_vsi_decfg+0x53/0xe0 [ice]
[ +0.000180] ice_vsi_rebuild+0x239/0x540 [ice]
[ +0.000186] ice_vsi_rebuild_by_type+0x76/0x180 [ice]
[ +0.000145] ice_rebuild+0x18c/0x840 [ice]
[ +0.000145] ? delay_tsc+0x4a/0xc0
[ +0.000022] ? delay_tsc+0x92/0xc0
[ +0.000020] ice_do_reset+0x140/0x180 [ice]
[ +0.000886] ice_service_task+0x404/0x1030 [ice]
[ +0.000824] process_one_work+0x171/0x340
[ +0.000685] worker_thread+0x277/0x3a0
[ +0.000675] ? preempt_count_add+0x6a/0xa0
[ +0.000677] ? _raw_spin_lock_irqsave+0x23/0x50
[ +0.000679] ? __pfx_worker_thread+0x10/0x10
[ +0.000653] kthread+0xf0/0x120
[ +0.000635] ? __pfx_kthread+0x10/0x10
[ +0.000616] ret_from_fork+0x2d/0x50
[ +0.000612] ? __pfx_kthread+0x10/0x10
[ +0.000604] ret_from_fork_asm+0x1b/0x30
[ +0.000604] </TASK>

The previous way of handling this through returning -EBUSY is not viable,
particularly when destroying AF_XDP socket, because the kernel proceeds
with removal anyway.

There is plenty of code between those calls and there is no need to create
a large critical section that covers all of them, same as there is no need
to protect ice_vsi_rebuild() with rtnl_lock().

Add xdp_state_lock mutex to protect ice_vsi_rebuild() and ice_xdp().

Leaving unprotected sections in between would result in two states that
have to be considered:
1. when the VSI is closed, but not yet rebuild
2. when VSI is already rebuild, but not yet open

The latter case is actually already handled through !netif_running() case,
we just need to adjust flag checking a little. The former one is not as
trivial, because between ice_vsi_close() and ice_vsi_rebuild(), a lot of
hardware interaction happens, this can make adding/deleting rings exit
with an error. Luckily, VSI rebuild is pending and can apply new
configuration for us in a managed fashion.

Therefore, add an additional VSI state flag ICE_VSI_REBUILD_PENDING to
indicate that ice_xdp() can just hot-swap the program.

Also, as ice_vsi_rebuild() flow is touched in this patch, make it more
consistent by deconfiguring VSI when coalesce allocation fails.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  2 ++
 drivers/net/ethernet/intel/ice/ice_lib.c  | 34 ++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_main.c | 19 +++++++++----
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  3 +-
 4 files changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index caaa10157909..ce8b5505b16d 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -318,6 +318,7 @@ enum ice_vsi_state {
 	ICE_VSI_UMAC_FLTR_CHANGED,
 	ICE_VSI_MMAC_FLTR_CHANGED,
 	ICE_VSI_PROMISC_CHANGED,
+	ICE_VSI_REBUILD_PENDING,
 	ICE_VSI_STATE_NBITS		/* must be last */
 };
 
@@ -411,6 +412,7 @@ struct ice_vsi {
 	struct ice_tx_ring **xdp_rings;	 /* XDP ring array */
 	u16 num_xdp_txq;		 /* Used XDP queues */
 	u8 xdp_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
+	struct mutex xdp_state_lock;
 
 	struct net_device **target_netdevs;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 57ec770c52fc..9978bbcb2401 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -447,6 +447,7 @@ static void ice_vsi_free(struct ice_vsi *vsi)
 
 	ice_vsi_free_stats(vsi);
 	ice_vsi_free_arrays(vsi);
+	mutex_destroy(&vsi->xdp_state_lock);
 	mutex_unlock(&pf->sw_mutex);
 	devm_kfree(dev, vsi);
 }
@@ -626,6 +627,8 @@ static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
 	pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
 					 pf->next_vsi);
 
+	mutex_init(&vsi->xdp_state_lock);
+
 unlock_pf:
 	mutex_unlock(&pf->sw_mutex);
 	return vsi;
@@ -2973,19 +2976,23 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
 
+	mutex_lock(&vsi->xdp_state_lock);
+
 	ret = ice_vsi_realloc_stat_arrays(vsi);
 	if (ret)
-		goto err_vsi_cfg;
+		goto unlock;
 
 	ice_vsi_decfg(vsi);
 	ret = ice_vsi_cfg_def(vsi);
 	if (ret)
-		goto err_vsi_cfg;
+		goto unlock;
 
 	coalesce = kcalloc(vsi->num_q_vectors,
 			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
-	if (!coalesce)
-		return -ENOMEM;
+	if (!coalesce) {
+		ret = -ENOMEM;
+		goto decfg;
+	}
 
 	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
 
@@ -2993,22 +3000,23 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	if (ret) {
 		if (vsi_flags & ICE_VSI_FLAG_INIT) {
 			ret = -EIO;
-			goto err_vsi_cfg_tc_lan;
+			goto free_coalesce;
 		}
 
-		kfree(coalesce);
-		return ice_schedule_reset(pf, ICE_RESET_PFR);
+		ret = ice_schedule_reset(pf, ICE_RESET_PFR);
+		goto free_coalesce;
 	}
 
 	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
-	kfree(coalesce);
+	clear_bit(ICE_VSI_REBUILD_PENDING, vsi->state);
 
-	return 0;
-
-err_vsi_cfg_tc_lan:
-	ice_vsi_decfg(vsi);
+free_coalesce:
 	kfree(coalesce);
-err_vsi_cfg:
+decfg:
+	if (ret)
+		ice_vsi_decfg(vsi);
+unlock:
+	mutex_unlock(&vsi->xdp_state_lock);
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2d286a4609a5..e92f43850671 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -595,6 +595,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* clear SW filtering DB */
 	ice_clear_hw_tbls(hw);
 	/* disable the VSIs and their queues that are not already DOWN */
+	set_bit(ICE_VSI_REBUILD_PENDING, ice_get_main_vsi(pf)->state);
 	ice_pf_dis_all_vsi(pf, false);
 
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
@@ -2995,7 +2996,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	}
 
 	/* hot swap progs and avoid toggling link */
-	if (ice_is_xdp_ena_vsi(vsi) == !!prog) {
+	if (ice_is_xdp_ena_vsi(vsi) == !!prog ||
+	    test_bit(ICE_VSI_REBUILD_PENDING, vsi->state)) {
 		ice_vsi_assign_bpf_prog(vsi, prog);
 		return 0;
 	}
@@ -3067,21 +3069,28 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 {
 	struct ice_netdev_priv *np = netdev_priv(dev);
 	struct ice_vsi *vsi = np->vsi;
+	int ret;
 
 	if (vsi->type != ICE_VSI_PF) {
 		NL_SET_ERR_MSG_MOD(xdp->extack, "XDP can be loaded only on PF VSI");
 		return -EINVAL;
 	}
 
+	mutex_lock(&vsi->xdp_state_lock);
+
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
-		return ice_xdp_setup_prog(vsi, xdp->prog, xdp->extack);
+		ret = ice_xdp_setup_prog(vsi, xdp->prog, xdp->extack);
+		break;
 	case XDP_SETUP_XSK_POOL:
-		return ice_xsk_pool_setup(vsi, xdp->xsk.pool,
-					  xdp->xsk.queue_id);
+		ret = ice_xsk_pool_setup(vsi, xdp->xsk.pool, xdp->xsk.queue_id);
+		break;
 	default:
-		return -EINVAL;
+		ret = -EINVAL;
 	}
+
+	mutex_unlock(&vsi->xdp_state_lock);
+	return ret;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 240a7bec242b..a659951fa987 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -390,7 +390,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 		goto failure;
 	}
 
-	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
+	if_running = !test_bit(ICE_VSI_DOWN, vsi->state) &&
+		     ice_is_xdp_ena_vsi(vsi);
 
 	if (if_running) {
 		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
-- 
2.43.0

