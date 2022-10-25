Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35B360C516
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Oct 2022 09:27:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E3F2400C4;
	Tue, 25 Oct 2022 07:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E3F2400C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666682841;
	bh=vMaC8J8HnsDY36n+VebRFpJtwbyI+233PMVPvXMJ//o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DZPhdz+7qJ+oeCUFPeq0hX5WKK5+pVs4KwP22BIojZZXwG0gD/qWzPI6W9UQSRSmZ
	 NSEYD8eGOWmGYuRYaxd1uAj0ZDKJP4EkOptiekdNilCK4EQfecAQ7XX0KApBo95xQy
	 L7xZ/algCJozbhLChhmmoUnz07IVQ1WGaZ2oVZD505s1Cj66D1CBfZ1+f+kwvf41wG
	 9Y3LUlGHRAiZRpSK8jDj5ZXyZKLzExai0oG7a9QKagb9TWDpbcNLbLjY73sG03ZYKa
	 uqsJARHBssj/IiO5/tf1lrD98WQRG9hJIcwdvG69BzNNuNozIH8KzuZ1EH+x4lLYIA
	 KpNamFvz3NzLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtltwqEMmxr5; Tue, 25 Oct 2022 07:27:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0EF14019B;
	Tue, 25 Oct 2022 07:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0EF14019B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DB301BF30B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Oct 2022 07:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3702F4019B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Oct 2022 07:27:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3702F4019B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WFTdRiwszUl5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Oct 2022 07:27:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94A6C400C4
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94A6C400C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Oct 2022 07:27:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="334203293"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="334203293"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 00:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="806571693"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="806571693"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga005.jf.intel.com with ESMTP; 25 Oct 2022 00:27:08 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Oct 2022 09:27:05 +0200
Message-Id: <20221025072705.1270255-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666682833; x=1698218833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V3IAfEQeSeJwsSx0p2JQOqJma7ZyfVckn3J37mHG+rE=;
 b=SbdEXms/9cDeuUXcFZUJPBJuqDi2Wqzzc5Batzt8qebHEyNHeQXyMd/Z
 iEpvQHr3KRuFooYm8orlL5LUpDFm0L3QgC1cclu9p7DmtiIwRgxy17htq
 RjLsQTj7sMFTioCqLcT+UIMsyxEiB822VwU1C7yykXjEt/AvZY3ft92B/
 /RS0IRb/TiUc37eaf35gAdPoFQFp1N0KZ5uKOZLHuJN0W03J01aANea2F
 17SBUM85JD4dMwo12YTETXO++c2VSRxvbGiQHruW7jiMa3UyTbWX1Zse6
 OQ1DporXgR41yJWc4BC+MJ87KGwufWFpZbHWnvpL2h069joK+EXj22o6u
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SbdEXms/
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When attaching XDP program on i40e driver there was a
reset and rebuild of the interface to reconfigure the
queues for XDP operation. If one of the steps of rebuild
failed then the interface was left in incorrect state
that could lead to a crash. If rebuild failed while
getting capabilities from HW such crash occurs:

capability discovery failed, err I40E_ERR_ADMIN_QUEUE_TIMEOUT aq_err OK
BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
Call Trace:
? i40e_reconfig_rss_queues+0x120/0x120 [i40e]
  dev_xdp_install+0x70/0x100
  dev_xdp_attach+0x1d7/0x530
  dev_change_xdp_fd+0x1f4/0x230
  do_setlink+0x45f/0xf30
  ? irq_work_interrupt+0xa/0x20
  ? __nla_validate_parse+0x12d/0x1a0
  rtnl_setlink+0xb5/0x120
  rtnetlink_rcv_msg+0x2b1/0x360
  ? sock_has_perm+0x80/0xa0
  ? rtnl_calcit.isra.42+0x120/0x120
  netlink_rcv_skb+0x4c/0x120
  netlink_unicast+0x196/0x230
  netlink_sendmsg+0x204/0x3d0
  sock_sendmsg+0x4c/0x50
  __sys_sendto+0xee/0x160
  ? handle_mm_fault+0xc1/0x1e0
  ? syscall_trace_enter+0x1fb/0x2c0
  ? __sys_setsockopt+0xd6/0x1d0
  __x64_sys_sendto+0x24/0x30
  do_syscall_64+0x5b/0x1a0
  entry_SYSCALL_64_after_hwframe+0x65/0xca
  RIP: 0033:0x7f3535d99781

Fix this by removing reset and rebuild from i40e_xdp_setup
and replace it by interface down, reconfigure queues and
interface up. This way if any step fails the interface
will remain in a correct state.

Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
Title: i40e: Fix crash when rebuild failed in i40e_xdp_setup
Change-type: DefectResolution
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 155 ++++++++++++++------
 1 file changed, 112 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4b3b6e5b612d..68b343a7b77e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -50,6 +50,8 @@ static int i40e_veb_get_bw_info(struct i40e_veb *veb);
 static int i40e_get_capabilities(struct i40e_pf *pf,
 				 enum i40e_admin_queue_opc list_type);
 static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf);
+static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi,
+					      bool is_xdp);
 
 /* i40e_pci_tbl - PCI Device ID Table
  *
@@ -3563,11 +3565,17 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	/* clear the context structure first */
 	memset(&rx_ctx, 0, sizeof(rx_ctx));
 
-	if (ring->vsi->type == I40E_VSI_MAIN)
-		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
+	if (ring->vsi->type == I40E_VSI_MAIN) {
+		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
+			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
+					 ring->queue_index,
+					 ring->q_vector->napi.napi_id);
+	}
 
 	ring->xsk_pool = i40e_xsk_pool(ring);
 	if (ring->xsk_pool) {
+		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
+
 		ring->rx_buf_len =
 		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
 		/* For AF_XDP ZC, we disallow packets to span on
@@ -13269,6 +13277,42 @@ static netdev_features_t i40e_features_check(struct sk_buff *skb,
 	return features & ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
 }
 
+/**
+ * i40e_vsi_assign_bpf_prog - set or clear bpf prog pointer on VSI
+ * @vsi: VSI to changed
+ * @prog: XDP program
+ **/
+static struct bpf_prog *i40e_vsi_assign_bpf_prog(struct i40e_vsi *vsi,
+						 struct bpf_prog *prog)
+{
+	struct bpf_prog *old_prog;
+	int i;
+
+	old_prog = xchg(&vsi->xdp_prog, prog);
+
+	for (i = 0; i < vsi->num_queue_pairs; i++)
+		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
+
+	if (old_prog)
+		bpf_prog_put(old_prog);
+
+	return old_prog;
+}
+
+/**
+ * i40e_vsi_rx_napi_schedule - Schedule napi on RX queues from VSI
+ * @vsi: VSI to schedule napi on
+ */
+static void i40e_vsi_rx_napi_schedule(struct i40e_vsi *vsi)
+{
+	int i;
+
+	for (i = 0; i < vsi->num_queue_pairs; i++)
+		if (vsi->xdp_rings[i]->xsk_pool)
+			(void)i40e_xsk_wakeup(vsi->netdev, i,
+					      XDP_WAKEUP_RX);
+}
+
 /**
  * i40e_xdp_setup - add/remove an XDP program
  * @vsi: VSI to changed
@@ -13279,10 +13323,11 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 			  struct netlink_ext_ack *extack)
 {
 	int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
+	bool is_xdp_enabled = i40e_enabled_xdp_vsi(vsi);
+	bool if_running = netif_running(vsi->netdev);
 	struct i40e_pf *pf = vsi->back;
 	struct bpf_prog *old_prog;
-	bool need_reset;
-	int i;
+	int ret = 0;
 
 	/* Don't allow frames that span over multiple buffers */
 	if (frame_size > i40e_calculate_vsi_rx_buf_len(vsi)) {
@@ -13290,49 +13335,69 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 		return -EINVAL;
 	}
 
-	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
-	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
-
-	if (need_reset)
-		i40e_prep_for_reset(pf);
-
 	/* VSI shall be deleted in a moment, just return EINVAL */
 	if (test_bit(__I40E_IN_REMOVE, pf->state))
 		return -EINVAL;
 
-	old_prog = xchg(&vsi->xdp_prog, prog);
+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
+		i40e_down(vsi);
 
-	if (need_reset) {
-		if (!prog)
-			/* Wait until ndo_xsk_wakeup completes. */
-			synchronize_rcu();
-		i40e_reset_and_rebuild(pf, true, true);
+	old_prog = i40e_vsi_assign_bpf_prog(vsi, prog);
+
+	vsi = i40e_vsi_reinit_setup(vsi, true);
+
+	if (!vsi) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to reinitialize VSI during XDP setup");
+		goto err_vsi_setup;
 	}
 
-	if (!i40e_enabled_xdp_vsi(vsi) && prog) {
-		if (i40e_realloc_rx_bi_zc(vsi, true))
-			return -ENOMEM;
-	} else if (i40e_enabled_xdp_vsi(vsi) && !prog) {
-		if (i40e_realloc_rx_bi_zc(vsi, false))
-			return -ENOMEM;
+	/* allocate descriptors */
+	ret = i40e_vsi_setup_tx_resources(vsi);
+	if (ret) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to configure TX resources during XDP setup");
+		goto err_setup_tx;
+	}
+	ret = i40e_vsi_setup_rx_resources(vsi);
+	if (ret) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to configure RX resources during XDP setup");
+		goto err_setup_rx;
 	}
 
-	for (i = 0; i < vsi->num_queue_pairs; i++)
-		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
+	if (!is_xdp_enabled && prog)
+		ret = i40e_realloc_rx_bi_zc(vsi, true);
+	else if (is_xdp_enabled && !prog)
+		ret = i40e_realloc_rx_bi_zc(vsi, false);
 
-	if (old_prog)
-		bpf_prog_put(old_prog);
+	if (ret) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to reallocate RX resources during XDP setup");
+		goto err_realloc;
+	}
 
-	/* Kick start the NAPI context if there is an AF_XDP socket open
-	 * on that queue id. This so that receiving will start.
-	 */
-	if (need_reset && prog)
-		for (i = 0; i < vsi->num_queue_pairs; i++)
-			if (vsi->xdp_rings[i]->xsk_pool)
-				(void)i40e_xsk_wakeup(vsi->netdev, i,
-						      XDP_WAKEUP_RX);
+	if (if_running)
+		ret = i40e_up(vsi);
 
-	return 0;
+	if (ret) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to open VSI during XDP setup");
+		goto err_realloc;
+	} else if (prog) {
+		/* Kick start the NAPI context if there is an AF_XDP socket open
+		 * on that queue id. This so that receiving will start.
+		 */
+		i40e_vsi_rx_napi_schedule(vsi);
+	}
+
+	return ret;
+
+err_setup_rx:
+	i40e_vsi_free_rx_resources(vsi);
+err_setup_tx:
+	i40e_vsi_free_tx_resources(vsi);
+err_vsi_setup:
+	if (vsi == pf->vsi[pf->lan_vsi])
+		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
+err_realloc:
+	i40e_vsi_assign_bpf_prog(vsi, old_prog);
+	return ret;
 }
 
 /**
@@ -14274,13 +14339,14 @@ static int i40e_vsi_setup_vectors(struct i40e_vsi *vsi)
 /**
  * i40e_vsi_reinit_setup - return and reallocate resources for a VSI
  * @vsi: pointer to the vsi.
+ * @is_xdp: flag indicating if this is reinit during XDP setup
  *
  * This re-allocates a vsi's queue resources.
  *
  * Returns pointer to the successfully allocated and configured VSI sw struct
  * on success, otherwise returns NULL on failure.
  **/
-static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
+static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi, bool is_xdp)
 {
 	u16 alloc_queue_pairs;
 	struct i40e_pf *pf;
@@ -14316,12 +14382,14 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	/* Update the FW view of the VSI. Force a reset of TC and queue
 	 * layout configurations.
 	 */
-	enabled_tc = pf->vsi[pf->lan_vsi]->tc_config.enabled_tc;
-	pf->vsi[pf->lan_vsi]->tc_config.enabled_tc = 0;
-	pf->vsi[pf->lan_vsi]->seid = pf->main_vsi_seid;
-	i40e_vsi_config_tc(pf->vsi[pf->lan_vsi], enabled_tc);
-	if (vsi->type == I40E_VSI_MAIN)
-		i40e_rm_default_mac_filter(vsi, pf->hw.mac.perm_addr);
+	if (!is_xdp) {
+		enabled_tc = pf->vsi[pf->lan_vsi]->tc_config.enabled_tc;
+		pf->vsi[pf->lan_vsi]->tc_config.enabled_tc = 0;
+		pf->vsi[pf->lan_vsi]->seid = pf->main_vsi_seid;
+		i40e_vsi_config_tc(pf->vsi[pf->lan_vsi], enabled_tc);
+		if (vsi->type == I40E_VSI_MAIN)
+			i40e_rm_default_mac_filter(vsi, pf->hw.mac.perm_addr);
+	}
 
 	/* assign it some queues */
 	ret = i40e_alloc_rings(vsi);
@@ -15087,7 +15155,8 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 		if (pf->lan_vsi == I40E_NO_VSI)
 			vsi = i40e_vsi_setup(pf, I40E_VSI_MAIN, uplink_seid, 0);
 		else if (reinit)
-			vsi = i40e_vsi_reinit_setup(pf->vsi[pf->lan_vsi]);
+			vsi = i40e_vsi_reinit_setup(pf->vsi[pf->lan_vsi],
+						    false);
 		if (!vsi) {
 			dev_info(&pf->pdev->dev, "setup of MAIN VSI failed\n");
 			i40e_cloud_filter_exit(pf);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
