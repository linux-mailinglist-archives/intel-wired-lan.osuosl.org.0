Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4DF416F2F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 11:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 543E4405E7;
	Fri, 24 Sep 2021 09:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjY7UYi4CBaw; Fri, 24 Sep 2021 09:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38E91403E0;
	Fri, 24 Sep 2021 09:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A6B51BF36F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 09:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95E7583EAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 09:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sCvHu3yuWMgz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Sep 2021 09:41:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0DD183EA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 09:41:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="222151911"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="222151911"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 02:40:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="614356548"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga001.fm.intel.com with ESMTP; 24 Sep 2021 02:40:54 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Sep 2021 11:40:41 +0200
Message-Id: <20210924094041.15448-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix freeing of unitialized
 misc IRQ vector
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
 PJ Waskiewicz <pwaskiewicz@jumptrading.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When VSI set up failed in i40e_probe() as part of PF switch set up
driver was trying to free misc IRQ vectors in
i40e_clear_interrupt_scheme and produced a kernel Oops:

   Trying to free already-free IRQ 266
   WARNING: CPU: 0 PID: 5 at kernel/irq/manage.c:1731 __free_irq+0x9a/0x300
   Workqueue: events work_for_cpu_fn
   RIP: 0010:__free_irq+0x9a/0x300
   Call Trace:
   ? synchronize_irq+0x3a/0xa0
   free_irq+0x2e/0x60
   i40e_clear_interrupt_scheme+0x53/0x190 [i40e]
   i40e_probe.part.108+0x134b/0x1a40 [i40e]
   ? kmem_cache_alloc+0x158/0x1c0
   ? acpi_ut_update_ref_count.part.1+0x8e/0x345
   ? acpi_ut_update_object_reference+0x15e/0x1e2
   ? strstr+0x21/0x70
   ? irq_get_irq_data+0xa/0x20
   ? mp_check_pin_attr+0x13/0xc0
   ? irq_get_irq_data+0xa/0x20
   ? mp_map_pin_to_irq+0xd3/0x2f0
   ? acpi_register_gsi_ioapic+0x93/0x170
   ? pci_conf1_read+0xa4/0x100
   ? pci_bus_read_config_word+0x49/0x70
   ? do_pci_enable_device+0xcc/0x100
   local_pci_probe+0x41/0x90
   work_for_cpu_fn+0x16/0x20
   process_one_work+0x1a7/0x360
   worker_thread+0x1cf/0x390
   ? create_worker+0x1a0/0x1a0
   kthread+0x112/0x130
   ? kthread_flush_work_fn+0x10/0x10
   ret_from_fork+0x1f/0x40

The problem is that at that point misc IRQ vectors
were not allocated yet and we get a call trace
that driver is trying to free already free IRQ vectors.

Add a check in i40e_clear_interrupt_scheme for __I40E_MISC_IRQ_REQUESTED
PF state before calling i40e_free_misc_vector. This state is set only if
misc IRQ vectors were properly initialized.

Fixes: c17401a1dd21 ("i40e: use separate state bit for miscellaneous IRQ setup")
Reported-by: PJ Waskiewicz <pwaskiewicz@jumptrading.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v3:moved check for __I40E_MISC_IRQ_REQUESTED from i40e_free_misc_vector to
 i40e_clear_interrupt_scheme so i40e_free_misc_vector is not called when
 __I40E_MISC_IRQ_REQUESTED pf state is not set. Added kernel oops and
 reported-by to the commit message as suggested by PJ.
 v2: Fix commmit title typo
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 000991a..8a1dfc3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4889,7 +4889,8 @@ static void i40e_clear_interrupt_scheme(struct i40e_pf *pf)
 {
 	int i;
 
-	i40e_free_misc_vector(pf);
+	if (test_bit(__I40E_MISC_IRQ_REQUESTED, pf->state))
+		i40e_free_misc_vector(pf);
 
 	i40e_put_lump(pf->irq_pile, pf->iwarp_base_vector,
 		      I40E_IWARP_IRQ_PILE_ID);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
