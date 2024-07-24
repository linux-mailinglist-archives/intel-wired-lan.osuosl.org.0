Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CA793B55C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26E2A40E0D;
	Wed, 24 Jul 2024 16:58:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YZ8SN6YiaC_Z; Wed, 24 Jul 2024 16:58:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1798E40E00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721840318;
	bh=wvK+RYI0tbCqd3Z+xxiEffI85YtzYa6Yh3iTGogIKQg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ql/1uJf8H/UO7x1M+9Azpki6yBqH5zTuWVeymBvVWiTiOJt743QAYlG63J2AQqLvX
	 /u8hrFLxE/jWCcQQN2XssZkERivXki/m/D4xfDwnIJoysxrpE56X6Q4ssffmjrCE2T
	 BJ1ioLEaKA2YIfSZUfX/pcm+kWqX2fLYa7KCVwsWanxjUXz2VyZB0HSLVJShRYN2E4
	 UafxkS2XmkpH3lcBsn4orHl7MKUv2CkExMZQr2bVl/DTpTryV6hRV6m5DL/AWdtS6Z
	 GyTukvnFI9cdRx6Ggt86YMDTuQDLY54EzkcsQzMrqpjoy9JVz9z471sNhedxBkJ93Y
	 UQ+y369QmWq/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1798E40E00;
	Wed, 24 Jul 2024 16:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55FE91BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EEC2814B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uqLigO-H8gAI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:58:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 266FC813ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 266FC813ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 266FC813ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:35 +0000 (UTC)
X-CSE-ConnectionGUID: pOiWobTDSIGnvP9Bu3fqtQ==
X-CSE-MsgGUID: qzaSp3JfQEKMuafG+Ne7eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30679757"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30679757"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:58:35 -0700
X-CSE-ConnectionGUID: hTgK1UOZTfyiJL1RBioOTw==
X-CSE-MsgGUID: j8qUG6JDTS6YiNWNy7mi3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="56960625"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2024 09:58:30 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 96E0A2878D;
 Wed, 24 Jul 2024 17:58:28 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 18:48:33 +0200
Message-ID: <20240724164840.2536605-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240724164840.2536605-1-larysa.zaremba@intel.com>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721840316; x=1753376316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bbXyhTZK7A3KQfdp/pDmJ3jg20tyQT8RHSY+1zEPgWk=;
 b=CrDbQ1PcmfVXORBnHCwe+V3WCDPGWAxWEoOh+f3Ao0RP1DDyAwRtuDkY
 HncE6tm7mlLIcUHD7sR5IjgMxpJu9FJ+HC/aV2jZjNkvCULpU7JrElziz
 X+v57xd1ayjYTh/dBnd7VrSai36R0tIsB7MmhvIxNDwX8Y0V6bmNSxnqy
 OEPJubrml+sTOMuV2cwYbqBJHeU0G1vXrcpayY027KpjumTp0PzJDbau0
 7vStNHTH0KotPmD3pmh7Y7YxoNAvCL+hFgfXva/NuShbiGyGiSHcd0rsA
 hNocZePz1QeGP1awOT56e7KG9aGJKSeVTj9ndMfbvBgvxuJN3+3xwtaPm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CrDbQ1Pc
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/6] ice: protect XDP
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
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

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  2 ++
 drivers/net/ethernet/intel/ice/ice_lib.c  | 26 +++++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_main.c | 19 ++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  3 ++-
 4 files changed, 35 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 99a75a59078e..3d7a0abc13ab 100644
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
index 5f2ddcaf7031..bbef5ec67cae 100644
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
@@ -2973,19 +2976,24 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
 
+	mutex_lock(&vsi->xdp_state_lock);
+	clear_bit(ICE_VSI_REBUILD_PENDING, vsi->state);
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
+		goto unlock;
+	}
 
 	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
 
@@ -2996,19 +3004,19 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 			goto err_vsi_cfg_tc_lan;
 		}
 
-		kfree(coalesce);
-		return ice_schedule_reset(pf, ICE_RESET_PFR);
+		ret = ice_schedule_reset(pf, ICE_RESET_PFR);
+		goto err_vsi_cfg_tc_lan;
 	}
 
 	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
 	kfree(coalesce);
-
-	return 0;
+	goto unlock;
 
 err_vsi_cfg_tc_lan:
 	ice_vsi_decfg(vsi);
 	kfree(coalesce);
-err_vsi_cfg:
+unlock:
+	mutex_unlock(&vsi->xdp_state_lock);
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8ed1798bb06e..e50526b491fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -611,6 +611,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* clear SW filtering DB */
 	ice_clear_hw_tbls(hw);
 	/* disable the VSIs and their queues that are not already DOWN */
+	set_bit(ICE_VSI_REBUILD_PENDING, ice_get_main_vsi(pf)->state);
 	ice_pf_dis_all_vsi(pf, false);
 
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
@@ -3011,7 +3012,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	}
 
 	/* hot swap progs and avoid toggling link */
-	if (ice_is_xdp_ena_vsi(vsi) == !!prog) {
+	if (ice_is_xdp_ena_vsi(vsi) == !!prog ||
+	    test_bit(ICE_VSI_REBUILD_PENDING, vsi->state)) {
 		ice_vsi_assign_bpf_prog(vsi, prog);
 		return 0;
 	}
@@ -3083,21 +3085,28 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
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
index a65955eb23c0..2c1a843ba200 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -379,7 +379,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 		goto failure;
 	}
 
-	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
+	if_running = !test_bit(ICE_VSI_DOWN, vsi->state) &&
+		     ice_is_xdp_ena_vsi(vsi);
 
 	if (if_running) {
 		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
-- 
2.43.0

