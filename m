Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A90058DD1E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 19:24:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F7B840571;
	Tue,  9 Aug 2022 17:24:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F7B840571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660065880;
	bh=TReJhTFaVtc9dvPxWUtIsIRBS7PSR1bDryvFZwuNfUA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ejrFUSywvl6EfN7tR0roFuXcb+fP7hGp6UVxld6Pgvk4YJuhOQVe8rbOOJaRezjV3
	 a7GmbmDeLlms7SNL+Ol1RKWMNAWu0ohogsgQ/WcfI96LaNZKer5MSYt67oCuZwMULf
	 0LQhyJBSUQQmc/ujk/zn92wWS4suQ/6Sbk11WvYZq3FE/unnJlK2wKkQ1+UHW3JcnD
	 OHX45vzYK6xPYU6QA1igkMmKv4+WJ1ZR/rplM70qE/wy5bwl7s3tGJAJYeTrr8Mzon
	 mP8oQBioNXFzjaHP2RCQv3HUmFTdaTRhO2fy+c4pNSDo7YIwDSkJyrQxzIv8whqeaw
	 ZYuJhCvbkJFxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yjlrcKivY5Tm; Tue,  9 Aug 2022 17:24:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95094402D4;
	Tue,  9 Aug 2022 17:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95094402D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 850321BF859
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 17:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B867607F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 17:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B867607F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Dg2AGspTpcW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 17:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60CED60709
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60CED60709
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 17:24:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="291677874"
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="291677874"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 10:24:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="664522570"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 10:24:31 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Aug 2022 10:24:23 -0700
Message-Id: <20220809172423.1967513-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660065872; x=1691601872;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DvDMKxQ0roGktEGVmMS5gQfhTHKwXj1irn1nx4HiK70=;
 b=VUU64OY7QeJAbbatMbf9fLf98yOZIY3x0Y9yrfd4KQUP7LzYXxb9GsLG
 nX2yf+q1HpD/u98UnoR1EXNrrja/aHJdvxziRfO+u9jKPfbAYiQ2VHknk
 Jh6g3e/dUWQRuriuDvF6Ojc1gSQ70iFgVbHHERbZjp34v/po2nl14ThJO
 CO9R+W++BB2OJziu5/H6YxdFyoSRDLZCGdO6vcckcpncEnTIDEJPKRQJl
 yILhHJ677V6AJY3I3kdspFruZZ7HR0xKuHnzNS2LaAiKTSOLkfdr9R5ze
 Wi/5cyBB3kjE3fHOiFWZhqbRauQ259UdRH89lxJI+4+IFH9kgGzhMiOkw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VUU64OY7
Subject: [Intel-wired-lan] [PATCH net v2] ice: Don't double unplug aux on
 peer initiated reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the IDC callback that is accessed when the aux drivers request a reset,
the function to unplug the aux devices is called.  This function is also
called in the ice_prepare_for_reset function. This double call is causing
a "scheduling while atomic" BUG.

[  662.676430] ice 0000:4c:00.0 rocep76s0: cqp opcode = 0x1 maj_err_code = 0xffff min_err_code = 0x8003

[  662.676609] ice 0000:4c:00.0 rocep76s0: [Modify QP Cmd Error][op_code=8] status=-29 waiting=1 completion_err=1 maj=0xffff min=0x8003

[  662.815006] ice 0000:4c:00.0 rocep76s0: ICE OICR event notification: oicr = 0x10000003

[  662.815014] ice 0000:4c:00.0 rocep76s0: critical PE Error, GLPE_CRITERR=0x00011424

[  662.815017] ice 0000:4c:00.0 rocep76s0: Requesting a reset

[  662.815475] BUG: scheduling while atomic: swapper/37/0/0x00010002

[  662.815475] BUG: scheduling while atomic: swapper/37/0/0x00010002
[  662.815477] Modules linked in: rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace fscache netfs rfkill 8021q garp mrp stp llc vfat fat rpcrdma intel_rapl_msr intel_rapl_common sunrpc i10nm_edac rdma_ucm nfit ib_srpt libnvdimm ib_isert iscsi_target_mod x86_pkg_temp_thermal intel_powerclamp coretemp target_core_mod snd_hda_intel ib_iser snd_intel_dspcfg libiscsi snd_intel_sdw_acpi scsi_transport_iscsi kvm_intel iTCO_wdt rdma_cm snd_hda_codec kvm iw_cm ipmi_ssif iTCO_vendor_support snd_hda_core irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_hwdep snd_seq snd_seq_device rapl snd_pcm snd_timer isst_if_mbox_pci pcspkr isst_if_mmio irdma intel_uncore idxd acpi_ipmi joydev isst_if_common snd mei_me idxd_bus ipmi_si soundcore i2c_i801 mei ipmi_devintf i2c_smbus i2c_ismt ipmi_msghandler acpi_power_meter acpi_pad rv(OE) ib_uverbs ib_cm ib_core xfs libcrc32c ast i2c_algo_bit drm_vram_helper drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops drm_ttm_helpe
 r ttm
[  662.815546]  nvme nvme_core ice drm crc32c_intel i40e t10_pi wmi pinctrl_emmitsburg dm_mirror dm_region_hash dm_log dm_mod fuse
[  662.815557] Preemption disabled at:
[  662.815558] [<0000000000000000>] 0x0
[  662.815563] CPU: 37 PID: 0 Comm: swapper/37 Kdump: loaded Tainted: G S         OE     5.17.1 #2
[  662.815566] Hardware name: Intel Corporation D50DNP/D50DNP, BIOS SE5C6301.86B.6624.D18.2111021741 11/02/2021
[  662.815568] Call Trace:
[  662.815572]  <IRQ>
[  662.815574]  dump_stack_lvl+0x33/0x42
[  662.815581]  __schedule_bug.cold.147+0x7d/0x8a
[  662.815588]  __schedule+0x798/0x990
[  662.815595]  schedule+0x44/0xc0
[  662.815597]  schedule_preempt_disabled+0x14/0x20
[  662.815600]  __mutex_lock.isra.11+0x46c/0x490
[  662.815603]  ? __ibdev_printk+0x76/0xc0 [ib_core]
[  662.815633]  device_del+0x37/0x3d0
[  662.815639]  ice_unplug_aux_dev+0x1a/0x40 [ice]
[  662.815674]  ice_schedule_reset+0x3c/0xd0 [ice]
[  662.815693]  irdma_iidc_event_handler.cold.7+0xb6/0xd3 [irdma]
[  662.815712]  ? bitmap_find_next_zero_area_off+0x45/0xa0
[  662.815719]  ice_send_event_to_aux+0x54/0x70 [ice]
[  662.815741]  ice_misc_intr+0x21d/0x2d0 [ice]
[  662.815756]  __handle_irq_event_percpu+0x4c/0x180
[  662.815762]  handle_irq_event_percpu+0xf/0x40
[  662.815764]  handle_irq_event+0x34/0x60
[  662.815766]  handle_edge_irq+0x9a/0x1c0
[  662.815770]  __common_interrupt+0x62/0x100
[  662.815774]  common_interrupt+0xb4/0xd0
[  662.815779]  </IRQ>
[  662.815780]  <TASK>
[  662.815780]  asm_common_interrupt+0x1e/0x40
[  662.815785] RIP: 0010:cpuidle_enter_state+0xd6/0x380
[  662.815789] Code: 49 89 c4 0f 1f 44 00 00 31 ff e8 65 d7 95 ff 45 84 ff 74 12 9c 58 f6 c4 02 0f 85 64 02 00 00 31 ff e8 ae c5 9c ff fb 45 85 f6 <0f> 88 12 01 00 00 49 63 d6 4c 2b 24 24 48 8d 04 52 48 8d 04 82 49
[  662.815791] RSP: 0018:ff2c2c4f18edbe80 EFLAGS: 00000202
[  662.815793] RAX: ff280805df140000 RBX: 0000000000000002 RCX: 000000000000001f
[  662.815795] RDX: 0000009a52da2d08 RSI: ffffffff93f8240b RDI: ffffffff93f53ee7
[  662.815796] RBP: ff5e2bd11ff41928 R08: 0000000000000000 R09: 000000000002f8c0
[  662.815797] R10: 0000010c3f18e2cf R11: 000000000000000f R12: 0000009a52da2d08
[  662.815798] R13: ffffffff94ad7e20 R14: 0000000000000002 R15: 0000000000000000
[  662.815801]  cpuidle_enter+0x29/0x40
[  662.815803]  do_idle+0x261/0x2b0
[  662.815807]  cpu_startup_entry+0x19/0x20
[  662.815809]  start_secondary+0x114/0x150
[  662.815813]  secondary_startup_64_no_verify+0xd5/0xdb
[  662.815818]  </TASK>
[  662.815846] bad: scheduling from the idle thread!
[  662.815849] CPU: 37 PID: 0 Comm: swapper/37 Kdump: loaded Tainted: G S      W  OE     5.17.1 #2
[  662.815852] Hardware name: Intel Corporation D50DNP/D50DNP, BIOS SE5C6301.86B.6624.D18.2111021741 11/02/2021
[  662.815853] Call Trace:
[  662.815855]  <IRQ>
[  662.815856]  dump_stack_lvl+0x33/0x42
[  662.815860]  dequeue_task_idle+0x20/0x30
[  662.815863]  __schedule+0x1c3/0x990
[  662.815868]  schedule+0x44/0xc0
[  662.815871]  schedule_preempt_disabled+0x14/0x20
[  662.815873]  __mutex_lock.isra.11+0x3a8/0x490
[  662.815876]  ? __ibdev_printk+0x76/0xc0 [ib_core]
[  662.815904]  device_del+0x37/0x3d0
[  662.815909]  ice_unplug_aux_dev+0x1a/0x40 [ice]
[  662.815937]  ice_schedule_reset+0x3c/0xd0 [ice]
[  662.815961]  irdma_iidc_event_handler.cold.7+0xb6/0xd3 [irdma]
[  662.815979]  ? bitmap_find_next_zero_area_off+0x45/0xa0
[  662.815985]  ice_send_event_to_aux+0x54/0x70 [ice]
[  662.816011]  ice_misc_intr+0x21d/0x2d0 [ice]
[  662.816033]  __handle_irq_event_percpu+0x4c/0x180
[  662.816037]  handle_irq_event_percpu+0xf/0x40
[  662.816039]  handle_irq_event+0x34/0x60
[  662.816042]  handle_edge_irq+0x9a/0x1c0
[  662.816045]  __common_interrupt+0x62/0x100
[  662.816048]  common_interrupt+0xb4/0xd0
[  662.816052]  </IRQ>
[  662.816053]  <TASK>
[  662.816054]  asm_common_interrupt+0x1e/0x40
[  662.816057] RIP: 0010:cpuidle_enter_state+0xd6/0x380
[  662.816060] Code: 49 89 c4 0f 1f 44 00 00 31 ff e8 65 d7 95 ff 45 84 ff 74 12 9c 58 f6 c4 02 0f 85 64 02 00 00 31 ff e8 ae c5 9c ff fb 45 85 f6 <0f> 88 12 01 00 00 49 63 d6 4c 2b 24 24 48 8d 04 52 48 8d 04 82 49
[  662.816063] RSP: 0018:ff2c2c4f18edbe80 EFLAGS: 00000202
[  662.816065] RAX: ff280805df140000 RBX: 0000000000000002 RCX: 000000000000001f
[  662.816067] RDX: 0000009a52da2d08 RSI: ffffffff93f8240b RDI: ffffffff93f53ee7
[  662.816068] RBP: ff5e2bd11ff41928 R08: 0000000000000000 R09: 000000000002f8c0
[  662.816070] R10: 0000010c3f18e2cf R11: 000000000000000f R12: 0000009a52da2d08
[  662.816071] R13: ffffffff94ad7e20 R14: 0000000000000002 R15: 0000000000000000
[  662.816075]  cpuidle_enter+0x29/0x40
[  662.816077]  do_idle+0x261/0x2b0
[  662.816080]  cpu_startup_entry+0x19/0x20
[  662.816083]  start_secondary+0x114/0x150
[  662.816087]  secondary_startup_64_no_verify+0xd5/0xdb
[  662.816091]  </TASK>
[  662.816169] bad: scheduling from the idle thread!

The correct place to unplug the aux devices for a reset is in the
prepare_for_reset function, as this is a common place for all reset flows.
It also has built in protection from being called twice in a single reset
instance before the aux devices are replugged.

Fixes: f9f5301e7e2d4 ("ice: Register auxiliary device to provide RDMA")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
v2 - changed commit message to include BUG message and remove extra space
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index eb40526ee179..9afcf030201e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2397,8 +2397,6 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset)
 		return -EBUSY;
 	}
 
-	ice_unplug_aux_dev(pf);
-
 	switch (reset) {
 	case ICE_RESET_PFR:
 		set_bit(ICE_PFR_REQ, pf->state);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
