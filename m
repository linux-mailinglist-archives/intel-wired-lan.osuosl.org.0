Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216514F193A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Apr 2022 18:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E5724017C;
	Mon,  4 Apr 2022 16:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6mafPqKjrneB; Mon,  4 Apr 2022 16:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AB3440182;
	Mon,  4 Apr 2022 16:17:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDC191BF983
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 16:17:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B431A404D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 16:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mUTYC7_1luck for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Apr 2022 16:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B706D4017C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 16:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649089063; x=1680625063;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1wJZoCCNHZ3CajDhfpvf9vTq2hjXZH2ZVKNWz+NWKB8=;
 b=FXWfoT2HB++6WTHED4i37BTJaMen3dic2LrxRyBvvooE+zXFEj2f2m3a
 ss+6wIkzmKbqHCfYXVEXyXGxLRiiNPjwY/92laC/M9QZfbsikAiY/J3zP
 5Ko/8vu9gT0nElpqKG3ETTho2yEq1buTvaf1zabYoBbhL18pSWsHWGsK6
 bbYQ/LrTjg217eERljBKxv28xemGU7li7ys6EqDjc7BYWVLBT8n25GaHU
 GFAu2Ljchw0ChL61l/ULo/YFzkBWzHzp+KyFzYdjtEdAcr1MCUL+y8DLH
 3GGNkepQXviPZS6jdHviQ/vQK/oiVaxdOBX1hL/XQdGl8NfC6tU50sTXp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="260731001"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="260731001"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 09:17:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="608090017"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 04 Apr 2022 09:17:39 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 234GHcxh011369; Mon, 4 Apr 2022 17:17:38 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>
Date: Mon,  4 Apr 2022 18:15:09 +0200
Message-Id: <20220404161509.3489310-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net] ice: arfs: fix use-after-free when
 freeing @rx_cpu_rmap
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 Brett Creeley <brett@pensando.io>, linux-kernel@vger.kernel.org,
 Madhu Chittim <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The CI testing bots triggered the following splat:

[  718.203054] BUG: KASAN: use-after-free in free_irq_cpu_rmap+0x53/0x80
[  718.206349] Read of size 4 at addr ffff8881bd127e00 by task sh/20834
[  718.212852] CPU: 28 PID: 20834 Comm: sh Kdump: loaded Tainted: G S      W IOE     5.17.0-rc8_nextqueue-devqueue-02643-g23f3121aca93 #1
[  718.219695] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0012.070720200218 07/07/2020
[  718.223418] Call Trace:
[  718.227139]
[  718.230783]  dump_stack_lvl+0x33/0x42
[  718.234431]  print_address_description.constprop.9+0x21/0x170
[  718.238177]  ? free_irq_cpu_rmap+0x53/0x80
[  718.241885]  ? free_irq_cpu_rmap+0x53/0x80
[  718.245539]  kasan_report.cold.18+0x7f/0x11b
[  718.249197]  ? free_irq_cpu_rmap+0x53/0x80
[  718.252852]  free_irq_cpu_rmap+0x53/0x80
[  718.256471]  ice_free_cpu_rx_rmap.part.11+0x37/0x50 [ice]
[  718.260174]  ice_remove_arfs+0x5f/0x70 [ice]
[  718.263810]  ice_rebuild_arfs+0x3b/0x70 [ice]
[  718.267419]  ice_rebuild+0x39c/0xb60 [ice]
[  718.270974]  ? asm_sysvec_apic_timer_interrupt+0x12/0x20
[  718.274472]  ? ice_init_phy_user_cfg+0x360/0x360 [ice]
[  718.278033]  ? delay_tsc+0x4a/0xb0
[  718.281513]  ? preempt_count_sub+0x14/0xc0
[  718.284984]  ? delay_tsc+0x8f/0xb0
[  718.288463]  ice_do_reset+0x92/0xf0 [ice]
[  718.292014]  ice_pci_err_resume+0x91/0xf0 [ice]
[  718.295561]  pci_reset_function+0x53/0x80
<...>
[  718.393035] Allocated by task 690:
[  718.433497] Freed by task 20834:
[  718.495688] Last potentially related work creation:
[  718.568966] The buggy address belongs to the object at ffff8881bd127e00
                which belongs to the cache kmalloc-96 of size 96
[  718.574085] The buggy address is located 0 bytes inside of
                96-byte region [ffff8881bd127e00, ffff8881bd127e60)
[  718.579265] The buggy address belongs to the page:
[  718.598905] Memory state around the buggy address:
[  718.601809]  ffff8881bd127d00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  718.604796]  ffff8881bd127d80: 00 00 00 00 00 00 00 00 00 00 fc fc fc fc fc fc
[  718.607794] >ffff8881bd127e00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  718.610811]                    ^
[  718.613819]  ffff8881bd127e80: 00 00 00 00 00 00 00 00 00 00 00 00 fc fc fc fc
[  718.617107]  ffff8881bd127f00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc

This is due to that free_irq_cpu_rmap() is always being called
*after* (devm_)free_irq() and thus it tries to work with IRQ descs
already freed. For example, on device reset the driver frees the
rmap right before allocating a new one (the splat above).
Make rmap creation and freeing function symmetrical with
{request,free}_irq() calls i.e. do that on ifup/ifdown instead
of device probe/remove/resume. These operations can be performed
independently from the actual device aRFS configuration.
Also, make sure ice_vsi_free_irq() clears IRQ affinity notifiers
only when aRFS is disabled -- otherwise, CPU rmap sets and clears
its own and they must not be touched manually.

Fixes: 28bf26724fdb0 ("ice: Implement aRFS")
Co-developed-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
From v1[0]:
 - remove the obsolete `!vsi->arfs_fltr_list` check from
   ice_free_cpu_rx_rmap() leading to a leak and trace (Ivan).

[0] https://lore.kernel.org/netdev/20220404132832.1936529-1-alexandr.lobakin@intel.com
---
 drivers/net/ethernet/intel/ice/ice_arfs.c |  9 ++-------
 drivers/net/ethernet/intel/ice/ice_lib.c  |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++----------
 3 files changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 5daade32ea62..fba178e07600 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -577,7 +577,7 @@ void ice_free_cpu_rx_rmap(struct ice_vsi *vsi)
 {
 	struct net_device *netdev;
 
-	if (!vsi || vsi->type != ICE_VSI_PF || !vsi->arfs_fltr_list)
+	if (!vsi || vsi->type != ICE_VSI_PF)
 		return;
 
 	netdev = vsi->netdev;
@@ -599,7 +599,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 	int base_idx, i;
 
 	if (!vsi || vsi->type != ICE_VSI_PF)
-		return -EINVAL;
+		return 0;
 
 	pf = vsi->back;
 	netdev = vsi->netdev;
@@ -636,7 +636,6 @@ void ice_remove_arfs(struct ice_pf *pf)
 	if (!pf_vsi)
 		return;
 
-	ice_free_cpu_rx_rmap(pf_vsi);
 	ice_clear_arfs(pf_vsi);
 }
 
@@ -653,9 +652,5 @@ void ice_rebuild_arfs(struct ice_pf *pf)
 		return;
 
 	ice_remove_arfs(pf);
-	if (ice_set_cpu_rx_rmap(pf_vsi)) {
-		dev_err(ice_pf_to_dev(pf), "Failed to rebuild aRFS\n");
-		return;
-	}
 	ice_init_arfs(pf_vsi);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 6d6233204388..7fe4bfd7882a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2688,6 +2688,8 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 		return;
 
 	vsi->irqs_ready = false;
+	ice_free_cpu_rx_rmap(vsi);
+
 	ice_for_each_q_vector(vsi, i) {
 		u16 vector = i + base;
 		int irq_num;
@@ -2701,7 +2703,8 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 			continue;
 
 		/* clear the affinity notifier in the IRQ descriptor */
-		irq_set_affinity_notifier(irq_num, NULL);
+		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
+			irq_set_affinity_notifier(irq_num, NULL);
 
 		/* clear the affinity_mask in the IRQ descriptor */
 		irq_set_affinity_hint(irq_num, NULL);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1d2ca39add95..24d3279df231 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2510,6 +2510,13 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
 	}
 
+	err = ice_set_cpu_rx_rmap(vsi);
+	if (err) {
+		netdev_err(vsi->netdev, "Failed to setup CPU RMAP on VSI %u: %pe\n",
+			   vsi->vsi_num, ERR_PTR(err));
+		goto free_q_irqs;
+	}
+
 	vsi->irqs_ready = true;
 	return 0;
 
@@ -3690,20 +3697,12 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	 */
 	ice_napi_add(vsi);
 
-	status = ice_set_cpu_rx_rmap(vsi);
-	if (status) {
-		dev_err(dev, "Failed to set CPU Rx map VSI %d error %d\n",
-			vsi->vsi_num, status);
-		goto unroll_napi_add;
-	}
 	status = ice_init_mac_fltr(pf);
 	if (status)
-		goto free_cpu_rx_map;
+		goto unroll_napi_add;
 
 	return 0;
 
-free_cpu_rx_map:
-	ice_free_cpu_rx_rmap(vsi);
 unroll_napi_add:
 	ice_tc_indir_block_unregister(vsi);
 unroll_cfg_netdev:
@@ -5165,7 +5164,6 @@ static int __maybe_unused ice_suspend(struct device *dev)
 			continue;
 		ice_vsi_free_q_vectors(pf->vsi[v]);
 	}
-	ice_free_cpu_rx_rmap(ice_get_main_vsi(pf));
 	ice_clear_interrupt_scheme(pf);
 
 	pci_save_state(pdev);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
