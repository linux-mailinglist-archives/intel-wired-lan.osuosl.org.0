Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A833853E139
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 09:02:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C47540531;
	Mon,  6 Jun 2022 07:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fDXjY9C2wb57; Mon,  6 Jun 2022 07:02:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9CA04052C;
	Mon,  6 Jun 2022 07:02:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C32C1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49D8E41845
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nk2pduOHq-L7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 07:02:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03FD8417C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654498962; x=1686034962;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o/Ljaid7JM9nwV3cw0qyYru9lmYxLz2HF01mMoFgpnk=;
 b=LiP21sf2gxm3R7NGf5f76RwVGWjDQRNsqrDU5Sz3GtgSwkEJXpg+5P04
 PcV5EXnYLI5OGdgtoZDhGTnYR7iPox8xVRK189mJF3tdFZvlMwBp4sCmI
 2WV+gh9GBRqaX4VijTaPXYfjqs4l4tZjf12yNkq/eXfVOcf+mvqScHMvv
 gsDgPKG5ZoeS/NlbHQBedNRyq/rMFytFbUuApyYinjrF/xcOf9wfryAsK
 eJ2W91hOgXgzkxQGsk+BSwLnB8B4aB8bteHKWby7otj+qE4xaEVGD9PRS
 ZHAbXtWofmx//Yq0hsbgQpn/UeGogi8kpn0cbH6W6lVTrABttRUUBSMHN Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="257074511"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="257074511"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 00:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="635455680"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jun 2022 00:02:40 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 Jun 2022 09:01:21 +0200
Message-Id: <20220606070121.3086735-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: ethtool: Prohibit improper
 channel config for DCB
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not allow setting less channels, than Traffic Classes there are
via ethtool. There must be at least one channel per Traffic Class.

If you set less channels, than Traffic Classes there are, then during
ice_vsi_rebuild there would be allocated only the requested amount
of tx/rx rings in ice_vsi_alloc_arrays. But later in ice_vsi_setup_q_map
there would be requested at least one channel per Traffic Class. This
results in setting num_rxq > alloc_rxq and num_txq > alloc_txq.
Later, there would be a NULL pointer dereference in
ice_vsi_map_rings_to_vectors, because we go beyond of rx_rings or
tx_rings arrays.

Change ice_set_channels() to return error if you try to allocate less
channels, than Traffic Classes there are.
Change ice_vsi_setup_q_map() and ice_vsi_setup_q_map_mqprio() to return
status code instead of void.
Add error handling for ice_vsi_setup_q_map() and
ice_vsi_setup_q_map_mqprio() in ice_vsi_init() and ice_vsi_cfg_tc().

[53753.889983] INFO: Flow control is disabled for this traffic class (0) on this vsi.
[53763.984862] BUG: unable to handle kernel NULL pointer dereference at 0000000000000028
[53763.992915] PGD 14b45f5067 P4D 0
[53763.996444] Oops: 0002 [#1] SMP NOPTI
[53764.000312] CPU: 12 PID: 30661 Comm: ethtool Kdump: loaded Tainted: GOE    --------- -  - 4.18.0-240.el8.x86_64 #1
[53764.011825] Hardware name: Intel Corporation WilsonCity/WilsonCity, BIOS WLYDCRB1.SYS.0020.P21.2012150710 12/15/2020
[53764.022584] RIP: 0010:ice_vsi_map_rings_to_vectors+0x7e/0x120 [ice]
[53764.029089] Code: 41 0d 0f b7 b7 12 05 00 00 0f b6 d0 44 29 de 44 0f b7 c6 44 01 c2 41 39 d0 7d 2d 4c 8b 47 28 44 0f b7 ce 83 c6 01 4f 8b 04 c8 <49> 89 48 28 4                           c 8b 89 b8 01 00 00 4d 89 08 4c 89 81 b8 01 00 00 44
[53764.048379] RSP: 0018:ff550dd88ea47b20 EFLAGS: 00010206
[53764.053884] RAX: 0000000000000002 RBX: 0000000000000004 RCX: ff385ea42fa4a018
[53764.061301] RDX: 0000000000000006 RSI: 0000000000000005 RDI: ff385e9baeedd018
[53764.068717] RBP: 0000000000000010 R08: 0000000000000000 R09: 0000000000000004
[53764.076133] R10: 0000000000000002 R11: 0000000000000004 R12: 0000000000000000
[53764.083553] R13: 0000000000000000 R14: ff385e658fdd9000 R15: ff385e9baeedd018
[53764.090976] FS:  000014872c5b5740(0000) GS:ff385e847f100000(0000) knlGS:0000000000000000
[53764.099362] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[53764.105409] CR2: 0000000000000028 CR3: 0000000a820fa002 CR4: 0000000000761ee0
[53764.112851] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[53764.120301] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[53764.127747] PKRU: 55555554
[53764.130781] Call Trace:
[53764.133564]  ice_vsi_rebuild+0x611/0x870 [ice]
[53764.138341]  ice_vsi_recfg_qs+0x94/0x100 [ice]
[53764.143116]  ice_set_channels+0x1a8/0x3e0 [ice]
[53764.147975]  ethtool_set_channels+0x14e/0x240
[53764.152667]  dev_ethtool+0xd74/0x2a10
[53764.156665]  ? __mod_lruvec_state+0x44/0x110
[53764.161280]  ? __mod_lruvec_state+0x44/0x110
[53764.165893]  ? page_add_file_rmap+0x15/0x170
[53764.170518]  ? inet_ioctl+0xd1/0x220
[53764.174445]  ? netdev_run_todo+0x5e/0x290
[53764.178808]  dev_ioctl+0xb5/0x550
[53764.182485]  sock_do_ioctl+0xa0/0x140
[53764.186512]  sock_ioctl+0x1a8/0x300
[53764.190367]  ? selinux_file_ioctl+0x161/0x200
[53764.195090]  do_vfs_ioctl+0xa4/0x640
[53764.199035]  ksys_ioctl+0x60/0x90
[53764.202722]  __x64_sys_ioctl+0x16/0x20
[53764.206845]  do_syscall_64+0x5b/0x1a0
[53764.210887]  entry_SYSCALL_64_after_hwframe+0x65/0xca

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++++
 drivers/net/ethernet/intel/ice/ice_lib.c     | 42 +++++++++++++++++---
 2 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 1e71b70f0e52..a99a5554eeb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3470,6 +3470,16 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	new_rx = ch->combined_count + ch->rx_count;
 	new_tx = ch->combined_count + ch->tx_count;
 
+	if (new_rx < vsi->tc_cfg.numtc) {
+		netdev_err(dev, "Cannot set less Rx channels, than Traffic Classes you have (%u)\n",
+			   vsi->tc_cfg.numtc);
+		return -EINVAL;
+	}
+	if (new_tx < vsi->tc_cfg.numtc) {
+		netdev_err(dev, "Cannot set less Tx channels, than Traffic Classes you have (%u)\n",
+			   vsi->tc_cfg.numtc);
+		return -EINVAL;
+	}
 	if (new_rx > ice_get_max_rxq(pf)) {
 		netdev_err(dev, "Maximum allowed Rx channels is %d\n",
 			   ice_get_max_rxq(pf));
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 454e01ae09b9..f7f9c973ec54 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -909,7 +909,7 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
  * @vsi: the VSI being configured
  * @ctxt: VSI context structure
  */
-static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
+static int ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 {
 	u16 offset = 0, qmap = 0, tx_count = 0, pow = 0;
 	u16 num_txq_per_tc, num_rxq_per_tc;
@@ -982,7 +982,18 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	else
 		vsi->num_rxq = num_rxq_per_tc;
 
+	if (vsi->num_rxq > vsi->alloc_rxq) {
+		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Rx queues (%u), than were allocated (%u)!\n",
+			vsi->num_rxq, vsi->alloc_rxq);
+		return -EINVAL;
+	}
+
 	vsi->num_txq = tx_count;
+	if (vsi->num_txq > vsi->alloc_txq) {
+		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Tx queues (%u), than were allocated (%u)!\n",
+			vsi->num_txq, vsi->alloc_txq);
+		return -EINVAL;
+	}
 
 	if (vsi->type == ICE_VSI_VF && vsi->num_txq != vsi->num_rxq) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "VF VSI should have same number of Tx and Rx queues. Hence making them equal\n");
@@ -1000,6 +1011,8 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	 */
 	ctxt->info.q_mapping[0] = cpu_to_le16(vsi->rxq_map[0]);
 	ctxt->info.q_mapping[1] = cpu_to_le16(vsi->num_rxq);
+
+	return 0;
 }
 
 /**
@@ -1187,7 +1200,10 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 	if (vsi->type == ICE_VSI_CHNL) {
 		ice_chnl_vsi_setup_q_map(vsi, ctxt);
 	} else {
-		ice_vsi_setup_q_map(vsi, ctxt);
+		ret = ice_vsi_setup_q_map(vsi, ctxt);
+		if (ret)
+			goto out;
+
 		if (!init_vsi) /* means VSI being updated */
 			/* must to indicate which section of VSI context are
 			 * being modified
@@ -3464,7 +3480,7 @@ void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc)
  *
  * Prepares VSI tc_config to have queue configurations based on MQPRIO options.
  */
-static void
+static int
 ice_vsi_setup_q_map_mqprio(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt,
 			   u8 ena_tc)
 {
@@ -3513,7 +3529,18 @@ ice_vsi_setup_q_map_mqprio(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt,
 
 	/* Set actual Tx/Rx queue pairs */
 	vsi->num_txq = offset + qcount_tx;
+	if (vsi->num_txq > vsi->alloc_txq) {
+		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Tx queues (%u), than were allocated (%u)!\n",
+			vsi->num_txq, vsi->alloc_txq);
+		return -EINVAL;
+	}
+
 	vsi->num_rxq = offset + qcount_rx;
+	if (vsi->num_rxq > vsi->alloc_rxq) {
+		dev_err(ice_pf_to_dev(vsi->back), "Trying to use more Rx queues (%u), than were allocated (%u)!\n",
+			vsi->num_rxq, vsi->alloc_rxq);
+		return -EINVAL;
+	}
 
 	/* Setup queue TC[0].qmap for given VSI context */
 	ctxt->info.tc_mapping[0] = cpu_to_le16(qmap);
@@ -3531,6 +3558,8 @@ ice_vsi_setup_q_map_mqprio(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt,
 	dev_dbg(ice_pf_to_dev(vsi->back), "vsi->num_rxq = %d\n",  vsi->num_rxq);
 	dev_dbg(ice_pf_to_dev(vsi->back), "all_numtc %u, all_enatc: 0x%04x, tc_cfg.numtc %u\n",
 		vsi->all_numtc, vsi->all_enatc, vsi->tc_cfg.numtc);
+
+	return 0;
 }
 
 /**
@@ -3580,9 +3609,12 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 
 	if (vsi->type == ICE_VSI_PF &&
 	    test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
-		ice_vsi_setup_q_map_mqprio(vsi, ctx, ena_tc);
+		ret = ice_vsi_setup_q_map_mqprio(vsi, ctx, ena_tc);
 	else
-		ice_vsi_setup_q_map(vsi, ctx);
+		ret = ice_vsi_setup_q_map(vsi, ctx);
+
+	if (ret)
+		goto out;
 
 	/* must to indicate which section of VSI context are being modified */
 	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
