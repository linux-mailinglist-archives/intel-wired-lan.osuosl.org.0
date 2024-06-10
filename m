Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F56D9025E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 17:45:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD4F26086D;
	Mon, 10 Jun 2024 15:45:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bjq_Bh-qi65T; Mon, 10 Jun 2024 15:45:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6487660881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718034308;
	bh=t/alK3jRSr3/iHD6myXdYPe7+/DIlnI2lI3NjLmKe/s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nrwHCa+7zNmUtz74J76uA4Srf23kAqJDI5hFyp23yZX1mdx5hNyeY+r3H5F5g7ZUW
	 r/DT/ChP+LrrJpLszqsAD5jI6Nt5jyv8chudPb/rBaGkL17W5H8QG7MpTEarz3WqGC
	 h476lMH6AUiGKBcpjSI/rRdhXv1gZvmnPW8WFENLrEeoDlcPB434TFrI07QENhTqsI
	 AJBFRgNIhJOansbBaQz17lhNUogG9CVrm/mbJiqUFxXARneDeg8h685VotC+P0q+4j
	 22QBTmAd83DXRXkZAUKC1e88PAtytoPj8skpzlA0b3rkC9Eqx9yZ3qxCBJF4ZFZ9Fl
	 2lVRPw90pIwHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6487660881;
	Mon, 10 Jun 2024 15:45:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96C541BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83936404A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lR8GKjgISxw4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 15:45:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2948340493
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2948340493
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2948340493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:05 +0000 (UTC)
X-CSE-ConnectionGUID: uwBjI5FKQcO6+lqKaV0Ylg==
X-CSE-MsgGUID: F7Lj5Z5kShyVrpSqB3dd2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="26119841"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="26119841"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 08:45:04 -0700
X-CSE-ConnectionGUID: X0M0ga2rRSGJ8vbzfj7bqQ==
X-CSE-MsgGUID: RU2UScXASu2GRT/Ob6yPIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43679761"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 10 Jun 2024 08:44:59 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CDE2D312D5;
 Mon, 10 Jun 2024 16:44:48 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jun 2024 17:37:13 +0200
Message-ID: <20240610153716.31493-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240610153716.31493-1-larysa.zaremba@intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718034305; x=1749570305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y7N7MUsfJCWKfw1oZc9U8+5XiTJyZC934D1IerD9Trs=;
 b=I38wnLkYj0m9b/zi4jPw8WFQCEBh7OO/Q1/Sft9g3qYm+ky8fZcKKSP8
 m4r5f81E3/jFwJulZhnSn0+VLL3bnFcpLVrkinEeuBl1ezzgQJuj9FNAV
 vk0bJBEPxYLcpl+zcfxvhmD5BavjiVpUVDa5h7QO6wKOmYKwmprOjRbM+
 +0uHKulNIyAlGw3Bv1KhO0VSk4hda6uOJ/ratoG6TGwaX5tW0iuWdLupp
 oEk7BKJSNeYFCudJs+1fFdhbYXVoSOmA6MVsSzeX2X7/DaCx+fegxNkUI
 r1Agfciy4GFtL+X7gLgd0w72Ld95jg0exnxli6wussYWDm/oaXAPU+wP8
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I38wnLkY
Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: synchronize XDP setup
 with reset
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Igor Bagnucki <igor.bagnucki@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

XDP setup and PF reset code access the same resources in the following
sections:
* ice_vsi_close() in ice_prepare_for_reset() - already rtnl-locked
* ice_vsi_rebuild() for the PF VSI - not protected

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
a large critical section that covers them both, same as there is no need to
protect ice_vsi_rebuild() with rtnl_lock().

Leaving an unprotexted section in between would result in a state, when the
VSI is closed, but not yet rebuild, such situation can be handled pretty
easily.

Lock ice_vsi_rebuild() with ICE_CFG_BUSY flag. Particularly, to prevent
system crash, when tx_timeout and .ndo_bpf() happen at the same time.
Also, handle the state between critical sections by skipping XDP ring
configuration.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  5 +++-
 drivers/net/ethernet/intel/ice/ice_main.c | 36 +++++++++++++++++++----
 2 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7629b0190578..4774bcc4d5a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2426,7 +2426,10 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 		dev_err(ice_pf_to_dev(pf), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
 			vsi->vsi_num, err);
 
-	if (ice_is_xdp_ena_vsi(vsi))
+	/* xdp_rings can be absent, if program was attached amid reset,
+	 * VSI rebuild is supposed to create them later
+	 */
+	if (ice_is_xdp_ena_vsi(vsi) && vsi->xdp_rings)
 		/* return value check can be skipped here, it always returns
 		 * 0 if reset is in progress
 		 */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 15a6805ac2a1..dc60d816a345 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2986,6 +2986,20 @@ static int ice_max_xdp_frame_size(struct ice_vsi *vsi)
 		return ICE_RXBUF_3072;
 }
 
+/**
+ * ice_rebuild_pending - ice_vsi_rebuild will be performed, when locks are released
+ * @vsi: VSI to setup XDP for
+ *
+ * ice_vsi_close() in the reset path is called under rtnl_lock(),
+ * so it happens strictly before or after .ndo_bpf().
+ * In case it has happened before, we do not have anything attached to rings
+ */
+static bool ice_rebuild_pending(struct ice_vsi *vsi)
+{
+	return ice_is_reset_in_progress(vsi->back->state) &&
+	       !vsi->rx_rings[0]->desc;
+}
+
 /**
  * ice_xdp_setup_prog - Add or remove XDP eBPF program
  * @vsi: VSI to setup XDP for
@@ -3009,7 +3023,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	}
 
 	/* hot swap progs and avoid toggling link */
-	if (ice_is_xdp_ena_vsi(vsi) == !!prog) {
+	if (ice_is_xdp_ena_vsi(vsi) == !!prog || ice_rebuild_pending(vsi)) {
 		ice_vsi_assign_bpf_prog(vsi, prog);
 		return 0;
 	}
@@ -3081,21 +3095,30 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 {
 	struct ice_netdev_priv *np = netdev_priv(dev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	int ret;
 
 	if (vsi->type != ICE_VSI_PF) {
 		NL_SET_ERR_MSG_MOD(xdp->extack, "XDP can be loaded only on PF VSI");
 		return -EINVAL;
 	}
 
+	while (test_and_set_bit(ICE_CFG_BUSY, pf->state))
+		usleep_range(1000, 2000);
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
+	clear_bit(ICE_CFG_BUSY, pf->state);
+	return ret;
 }
 
 /**
@@ -7672,7 +7695,10 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		ice_gnss_init(pf);
 
 	/* rebuild PF VSI */
+	while (test_and_set_bit(ICE_CFG_BUSY, pf->state))
+		usleep_range(1000, 2000);
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_PF);
+	clear_bit(ICE_CFG_BUSY, pf->state);
 	if (err) {
 		dev_err(dev, "PF VSI rebuild failed: %d\n", err);
 		goto err_vsi_rebuild;
-- 
2.43.0

