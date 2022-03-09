Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6828D4D28EA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 07:19:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F14040103;
	Wed,  9 Mar 2022 06:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ImInTdRgv4FZ; Wed,  9 Mar 2022 06:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE1C2400EA;
	Wed,  9 Mar 2022 06:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FC901BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 06:19:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E3C34158B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 06:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bQFZOiBMdhvl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Mar 2022 06:19:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF4C94091C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 06:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646806764; x=1678342764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S1Ur/6FnIhd3COLn3cqUpxPGjhRysi39bZn4iIkoSzU=;
 b=aOjXjOb8BpTAV6jDYK7IkZioADRALxGXdQv2z6NytlxQbO3FTahs05te
 Nl9bx8E7CXFPGt4Gbb/23i7WHlP7E6OBiStrQlr+HTlecESRr1btkh9d/
 EUaKYI3BSrLvnQwPDa2rxmPTPSAPKOv5dFJgTpH3xgVLKr65hwRPfGpni
 Vjw4+JKCaKMPyWnGXP00EEbKCtvA+2IM7o+UUBvHZ3uhe94uy0c2pSicg
 oRQH7Ccpiqdb1ZyCJbDpSCw1fvje6BvZKeNsHXluZnJy7w5VZCSkEna9Q
 VlzJ5/Zwpcc7QIVkNKcKQ1LP59Hi12FmhcIX5L/Sz6bwWjWQfcrUvmGmy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="255089372"
X-IronPort-AV: E=Sophos;i="5.90,166,1643702400"; d="scan'208";a="255089372"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 22:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,166,1643702400"; d="scan'208";a="510383334"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga002.jf.intel.com with ESMTP; 08 Mar 2022 22:19:22 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Mar 2022 08:19:19 +0200
Message-Id: <20220309061919.3115112-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Fix BUG: scheduling while
 atomic
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
Cc: Corinna Vinschen <vinschen@redhat.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Replace usleep_range() method with udelay() method to allow atomic contexts
in low-level MDIO access functions.

The following issue can be seen by doing the following:
$ modprobe -r bonding
$ modprobe -v bonding max_bonds=1 mode=1 miimon=100 use_carrier=0
$ ip link set bond0 up
$ ifenslave bond0 eth0 eth1

[  982.357308] BUG: scheduling while atomic: kworker/u64:0/9/0x00000002
[  982.364431] INFO: lockdep is turned off.
[  982.368824] Modules linked in: bonding sctp ip6_udp_tunnel udp_tunnel mlx4_ib ib_uverbs ib_core mlx4_en mlx4_core nfp tls sunrpc intel_rapl_msr iTCO_wdt iTCO_vendor_support mxm_wmi dcdbas intel_rapl_common sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel rapl intel_cstate intel_uncore pcspkr lpc_ich mei_me ipmi_ssif mei ipmi_si ipmi_devintf ipmi_msghandler wmi acpi_power_meter xfs libcrc32c sr_mod cdrom sd_mod t10_pi sg mgag200 drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops drm ahci libahci crc32c_intel libata i2c_algo_bit tg3 megaraid_sas igc dm_mirror dm_region_hash dm_log dm_mod [last unloaded: bonding]
[  982.437941] CPU: 25 PID: 9 Comm: kworker/u64:0 Kdump: loaded Tainted: G        W        --------- -  - 4.18.0-348.el8.x86_64+debug #1
[  982.451333] Hardware name: Dell Inc. PowerEdge R730/0H21J3, BIOS 2.7.0 12/005/2017
[  982.459791] Workqueue: bond0 bond_mii_monitor [bonding]
[  982.465622] Call Trace:
[  982.468355]  dump_stack+0x8e/0xd0
[  982.472056]  __schedule_bug.cold.60+0x3a/0x60
[  982.476919]  __schedule+0x147b/0x1bc0
[  982.481007]  ? firmware_map_remove+0x16b/0x16b
[  982.485967]  ? hrtimer_fixup_init+0x40/0x40
[  982.490625]  schedule+0xd9/0x250
[  982.494227]  schedule_hrtimeout_range_clock+0x10d/0x2c0
[  982.500058]  ? hrtimer_nanosleep_restart+0x130/0x130
[  982.505598]  ? hrtimer_init_sleeper_on_stack+0x90/0x90
[  982.511332]  ? usleep_range+0x88/0x130
[  982.515514]  ? recalibrate_cpu_khz+0x10/0x10
[  982.520279]  ? ktime_get+0xab/0x1c0
[  982.524175]  ? usleep_range+0x88/0x130
[  982.528355]  usleep_range+0xdd/0x130
[  982.532344]  ? console_conditional_schedule+0x30/0x30
[  982.537987]  ? igc_put_hw_semaphore+0x17/0x60 [igc]
[  982.543432]  igc_read_phy_reg_gpy+0x111/0x2b0 [igc]
[  982.548887]  igc_phy_has_link+0xfa/0x260 [igc]
[  982.553847]  ? igc_get_phy_id+0x210/0x210 [igc]
[  982.558894]  ? lock_acquire+0x34d/0x890
[  982.563187]  ? lock_downgrade+0x710/0x710
[  982.567659]  ? rcu_read_unlock+0x50/0x50
[  982.572039]  igc_check_for_copper_link+0x106/0x210 [igc]
[  982.577970]  ? igc_config_fc_after_link_up+0x840/0x840 [igc]
[  982.584286]  ? rcu_read_unlock+0x50/0x50
[  982.588661]  ? lock_release+0x591/0xb80
[  982.592939]  ? lock_release+0x591/0xb80
[  982.597220]  igc_has_link+0x113/0x330 [igc]
[  982.601887]  ? lock_downgrade+0x710/0x710
[  982.606362]  igc_ethtool_get_link+0x6d/0x90 [igc]
[  982.611614]  bond_check_dev_link+0x131/0x2c0 [bonding]
[  982.617350]  ? bond_time_in_interval+0xd0/0xd0 [bonding]
[  982.623277]  ? rcu_read_lock_held+0x62/0xc0
[  982.627944]  ? rcu_read_lock_sched_held+0xe0/0xe0
[  982.633198]  bond_mii_monitor+0x314/0x2500 [bonding]
[  982.638738]  ? lock_contended+0x880/0x880
[  982.643214]  ? bond_miimon_link_change+0xa0/0xa0 [bonding]
[  982.649336]  ? lock_acquire+0x34d/0x890
[  982.653615]  ? lock_downgrade+0x710/0x710
[  982.658089]  ? debug_object_deactivate+0x221/0x340
[  982.663436]  ? rcu_read_unlock+0x50/0x50
[  982.667811]  ? debug_print_object+0x2b0/0x2b0
[  982.672672]  ? __switch_to_asm+0x41/0x70
[  982.677049]  ? __switch_to_asm+0x35/0x70
[  982.681426]  ? _raw_spin_unlock_irq+0x24/0x40
[  982.686288]  ? trace_hardirqs_on+0x20/0x195
[  982.690956]  ? _raw_spin_unlock_irq+0x24/0x40
[  982.695818]  process_one_work+0x8f0/0x1770
[  982.700390]  ? pwq_dec_nr_in_flight+0x320/0x320
[  982.705443]  ? debug_show_held_locks+0x50/0x50
[  982.710403]  worker_thread+0x87/0xb40
[  982.714489]  ? process_one_work+0x1770/0x1770
[  982.719349]  kthread+0x344/0x410
[  982.722950]  ? kthread_insert_work_sanity_check+0xd0/0xd0
[  982.728975]  ret_from_fork+0x3a/0x50

v2:
Fixed typo, edited message and added kernel log

Fixes: 5586838fe9ce ("igc: Add code for PHY support")
Reported-by: Corinna Vinschen <vinschen@redhat.com>
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 40dbf4b43234..6961f65d36b9 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -581,7 +581,7 @@ static s32 igc_read_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 *data)
 	 * the lower time out
 	 */
 	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
-		usleep_range(500, 1000);
+		udelay(50);
 		mdic = rd32(IGC_MDIC);
 		if (mdic & IGC_MDIC_READY)
 			break;
@@ -638,7 +638,7 @@ static s32 igc_write_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 data)
 	 * the lower time out
 	 */
 	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
-		usleep_range(500, 1000);
+		udelay(50);
 		mdic = rd32(IGC_MDIC);
 		if (mdic & IGC_MDIC_READY)
 			break;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
