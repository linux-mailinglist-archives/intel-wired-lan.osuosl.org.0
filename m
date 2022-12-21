Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 262A66530DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 13:35:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD40241529;
	Wed, 21 Dec 2022 12:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD40241529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671626133;
	bh=k16TTx6cevgAjep0jd+qqKetsC/mXIUHd13zWuiq+Ps=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4GsSVHnD5O6xKhEtSTsiFv06fEHR3Bh50YI0JN11eohDPMDns7I3sXAnHR9OjR10K
	 W7CMCVn7zAV61RztZFaFQPcvGshU42ajsjyP3m+d3rX06HtIemmICTvKBkMO3VKc8S
	 BSCCO3IMIVKylzSfVuDeWBMtgDevenYRIJsy0HR332DMP3pHY5+BQ43Upm3AFKY4Ih
	 Z4sM7pBFlJZwEB66FcyqfX6xdKSiKVfKYFjA4cGhdFcJXfLyfXSb8YXLxTOceqer0H
	 jnTDqUHUavPSkk5zpOALdu+FdpuDksHCbqAX0YcjMGYaAzDcpMTsnhiFellv5okeiq
	 8sZkNxE5bxd2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e_S4cs-TW5Gd; Wed, 21 Dec 2022 12:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 294C840219;
	Wed, 21 Dec 2022 12:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 294C840219
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D799F1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 12:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B185A61052
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 12:35:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B185A61052
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hXoCz7fO_KCO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 12:35:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D6CE607F7
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D6CE607F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 12:35:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="384207824"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="384207824"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 04:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="758501867"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="758501867"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2022 04:35:22 -0800
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Dec 2022 13:35:20 +0100
Message-Id: <20221221123520.4192165-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671626125; x=1703162125;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dogwMmHEQtUpYriXX3TfaPlHDbVTBF0eVYqj533beWE=;
 b=JPggxuFaRNg5JVotz7FyM7cZCSCi9zPxXzw3lD4x5hSavdlZWSq6dGtl
 5s7ao8nQ+jC5BnPWCRj5pIKKYaO+/orponFKqM4ZMNf5lYir0JmRzdbSL
 OjAs8cBzm2F2NFigEXswVCMTMXygZiheGVjkKfO5iP4Amo0kaFQQH1WAn
 a0BxtGOo7iQgpRC0xDQidE7jIZdnmX33eOyO90XNf61zd4kqzrZ2AKDVh
 8qtJXhHnxtFPrxN8x8aSJ89RDlhJ7+55m2/+fzhaxW0kACjkIPfuKU0WC
 Lk9ooH0JNs9ccWjt5SJUzAxDbgmFh7hFrQGdEMc9aofsA0aJIH+aRAYbz
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JPggxuFa
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix crash when rebuild fails
 in i40e_xdp_setup
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When attaching XDP program on i40e driver there was a reset and rebuild
of the interface to reconfigure the queues for XDP operation.
If one of the steps of rebuild failed then the interface was left
in incorrect state that could lead to a crash. If rebuild failed while
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

Fix this by removing reset and rebuild from i40e_xdp_setup and replace it
by interface down, reconfigure queues and interface up. This way if any
step fails the interface will remain in a correct state.

Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 v2: don't reinitialize rings while hotswapping program
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 144 +++++++++++++++-----
 1 file changed, 108 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 94feea3b2599..d9ec79c31554 100644
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
@@ -13305,6 +13313,34 @@ static netdev_features_t i40e_features_check(struct sk_buff *skb,
 	return features & ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
 }
 
+/**
+ * i40e_vsi_assign_bpf_prog - set or clear bpf prog pointer on VSI
+ * @vsi: VSI to changed
+ * @prog: XDP program
+ **/
+static void i40e_vsi_assign_bpf_prog(struct i40e_vsi *vsi,
+						 struct bpf_prog *prog)
+{
+	int i;
+
+	for (i = 0; i < vsi->num_queue_pairs; i++)
+		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
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
@@ -13315,10 +13351,12 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 			  struct netlink_ext_ack *extack)
 {
 	int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
+	bool is_xdp_enabled = i40e_enabled_xdp_vsi(vsi);
+	bool if_running = netif_running(vsi->netdev);
+	bool need_reinit = is_xdp_enabled != !!prog;
 	struct i40e_pf *pf = vsi->back;
 	struct bpf_prog *old_prog;
-	bool need_reset;
-	int i;
+	int ret = 0;
 
 	/* Don't allow frames that span over multiple buffers */
 	if (frame_size > i40e_calculate_vsi_rx_buf_len(vsi)) {
@@ -13326,35 +13364,58 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
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
 
 	old_prog = xchg(&vsi->xdp_prog, prog);
 
-	if (need_reset) {
-		if (!prog)
-			/* Wait until ndo_xsk_wakeup completes. */
-			synchronize_rcu();
-		i40e_reset_and_rebuild(pf, true, true);
+	if (!need_reinit)
+		goto assign_prog;
+
+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
+		i40e_down(vsi);
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
+
+	if (ret) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to reallocate RX resources during XDP setup");
+		goto err_vsi_setup;
+	}
+
+	if (if_running) {
+		ret = i40e_up(vsi);
+
+		if (ret) {
+			NL_SET_ERR_MSG_MOD(extack, "Failed to open VSI during XDP setup");
+			goto err_vsi_setup;
+		}
+	}
+
+assign_prog:
+	i40e_vsi_assign_bpf_prog(vsi, prog);
 
 	if (old_prog)
 		bpf_prog_put(old_prog);
@@ -13362,13 +13423,20 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	/* Kick start the NAPI context if there is an AF_XDP socket open
 	 * on that queue id. This so that receiving will start.
 	 */
-	if (need_reset && prog)
-		for (i = 0; i < vsi->num_queue_pairs; i++)
-			if (vsi->xdp_rings[i]->xsk_pool)
-				(void)i40e_xsk_wakeup(vsi->netdev, i,
-						      XDP_WAKEUP_RX);
+	if (need_reinit && prog)
+		i40e_vsi_rx_napi_schedule(vsi);
 
 	return 0;
+
+err_setup_rx:
+	i40e_vsi_free_rx_resources(vsi);
+err_setup_tx:
+	i40e_vsi_free_tx_resources(vsi);
+err_vsi_setup:
+	i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
+	i40e_vsi_assign_bpf_prog(vsi, old_prog);
+
+	return ret;
 }
 
 /**
@@ -14310,13 +14378,14 @@ static int i40e_vsi_setup_vectors(struct i40e_vsi *vsi)
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
@@ -14352,12 +14421,14 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
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
@@ -15123,7 +15194,8 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
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
