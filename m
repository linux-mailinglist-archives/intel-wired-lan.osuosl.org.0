Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE8557FB71
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 10:35:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B82A6110A;
	Mon, 25 Jul 2022 08:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B82A6110A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658738124;
	bh=cA1OG9gOvoezrM6IepoedQFK2jb+o3Jx68N3ZtIzGiM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=l2H3GbVcLoVKKhmDNQqbwWlqzdWQkNl8PZ3pqN9i5SVhpBvHDfNz0V6hEO/g8Cv3r
	 5yZNiu99CGGeXhl9dRIWlxQ41M45ttbXLWYHKfH2D4I6KIZf20Pt0Av4Pmaqu/gQgk
	 f1TD2H6aF7c5sWzpS/VFAOEEmXpsfhbHFK38C11XUsEXcCyrZfO46yLhHt7Ua49GOn
	 GbJ9GRqMleB7jQWI62jzOTfl6/66p+LeXMz1HMR8UfhuBi21BShhVwnon0XtSUv9w1
	 mS4xHht1TVAq7lmUaXJWLTzZDrW4LhHibZTDu9Kjjqmwjljwo506X5dWKaBOHjgo/8
	 LNA+Z9YMUUbQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qiz0US9EN_nl; Mon, 25 Jul 2022 08:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27691610F4;
	Mon, 25 Jul 2022 08:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27691610F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6F951BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 08:35:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFE6E6109B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 08:35:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFE6E6109B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id afrqPcmslAJD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 08:35:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D202660B7D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D202660B7D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 08:35:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="288404677"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="288404677"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 01:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="596603109"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2022 01:35:13 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Jul 2022 10:32:43 +0200
Message-Id: <20220725083243.819236-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658738115; x=1690274115;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LqoPruFdp1oMQ9d/TIa8dIOKQfQF3DFQ3G8Pd8EqXGg=;
 b=Yiga2BlvxpXNqHkrUHeDgWBJh11zT0iTcck8KjFfevb/mWyZIN9Saz7r
 Z9oBHLlR5x9R75L7Qq69E0c669q4io2IXHYJCP+pqZoGC2uiq+Xk+Q1Zf
 17MbQyGcQt25nBPmisKI51qjlwdFvPElOIVnLN5OMLYvA4BEcQ5kUrkph
 AMur1ptyGZnN6wCbi3doZ/kzULn/yk5TFzlcQzdiQoWEtMHklqN0paprd
 xJChBejvAnmh/aqDAqWgPHvjcggTyZxSc2cFKbjzT9kn2CrK9wSRPZOuA
 QGxZkaFigtKujBzubojHdy0MnOui4Xp7RVx37Eq2v36jk8lwv3yiUD+QG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yiga2Blv
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix call trace with null VSI
 during VF reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

During stress test with attaching and detaching VF from kvm and
simultaneously changing VFs spoofcheck and trust there was a
call trace in ice_reset_vf that VF's vsi is null.

[145237.352797] WARNING: CPU: 46 PID: 840629 at drivers/net/ethernet/intel/ice/ice_vf_lib.c:508 ice_reset_vf+0x3d6/0x410 [ice]
[145237.352851] Modules linked in: ice(E) vfio_pci vfio_pci_core vfio_virqfd vfio_iommu_type1 vfio iavf dm_mod xt_CHECKSUM xt_MASQUERADE
xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink tun
 bridge stp llc sunrpc intel_rapl_msr intel_rapl_common sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm iTCO_wdt iTC
O_vendor_support irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel rapl ipmi_si intel_cstate ipmi_devintf joydev intel_uncore m
ei_me ipmi_msghandler i2c_i801 pcspkr mei lpc_ich ioatdma i2c_smbus acpi_pad acpi_power_meter ip_tables xfs libcrc32c i2c_algo_bit drm_sh
mem_helper drm_kms_helper sd_mod t10_pi crc64_rocksoft syscopyarea crc64 sysfillrect sg sysimgblt fb_sys_fops drm i40e ixgbe ahci libahci
 libata crc32c_intel mdio dca wmi fuse [last unloaded: ice]
[145237.352917] CPU: 46 PID: 840629 Comm: kworker/46:2 Tainted: G S      W I E     5.19.0-rc6+ #24
[145237.352921] Hardware name: Intel Corporation S2600WTT/S2600WTT, BIOS SE5C610.86B.01.01.0008.021120151325 02/11/2015
[145237.352923] Workqueue: ice ice_service_task [ice]
[145237.352948] RIP: 0010:ice_reset_vf+0x3d6/0x410 [ice]
[145237.352984] Code: 30 ec f3 cc e9 28 fd ff ff 0f b7 4b 50 48 c7 c2 48 19 9c c0 4c 89 ee 48 c7 c7 30 fe 9e c0 e8 d1 21 9d cc 31 c0 e9 a
9 fe ff ff <0f> 0b b8 ea ff ff ff e9 c1 fc ff ff 0f 0b b8 fb ff ff ff e9 91 fe
[145237.352987] RSP: 0018:ffffb453e257fdb8 EFLAGS: 00010246
[145237.352990] RAX: ffff8bd0040181c0 RBX: ffff8be68db8f800 RCX: 0000000000000000
[145237.352991] RDX: 000000000000ffff RSI: 0000000000000000 RDI: ffff8be68db8f800
[145237.352993] RBP: ffff8bd0040181c0 R08: 0000000000001000 R09: ffff8bcfd520e000
[145237.352995] R10: 0000000000000000 R11: 00008417b5ab0bc0 R12: 0000000000000005
[145237.352996] R13: ffff8bcee061c0d0 R14: ffff8bd004019640 R15: 0000000000000000
[145237.352998] FS:  0000000000000000(0000) GS:ffff8be5dfb00000(0000) knlGS:0000000000000000
[145237.353000] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[145237.353002] CR2: 00007fd81f651d68 CR3: 0000001a0fe10001 CR4: 00000000001726e0
[145237.353003] Call Trace:
[145237.353008]  <TASK>
[145237.353011]  ice_process_vflr_event+0x8d/0xb0 [ice]
[145237.353049]  ice_service_task+0x79f/0xef0 [ice]
[145237.353074]  process_one_work+0x1c8/0x390
[145237.353081]  ? process_one_work+0x390/0x390
[145237.353084]  worker_thread+0x30/0x360
[145237.353087]  ? process_one_work+0x390/0x390
[145237.353090]  kthread+0xe8/0x110
[145237.353094]  ? kthread_complete_and_exit+0x20/0x20
[145237.353097]  ret_from_fork+0x22/0x30
[145237.353103]  </TASK>

Remove WARN_ON() from check if vsi is null in ice_reset_vf.
Add "VF is already removed\n" in dev_dbg().

This WARN_ON() is unnecessary and causes call trace, despite that
call trace, driver still works. There is no need for this warn
because this piece of code is responsible for disabling VF's tx/rx
queues when VF is disabled, but when VF is already removed there
is no need to do reset or disable queues.

Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 7adf9ddf129e..2d6130af1d40 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -505,8 +505,10 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
 	if (ice_is_vf_disabled(vf)) {
 		vsi = ice_get_vf_vsi(vf);
-		if (WARN_ON(!vsi))
+		if (!vsi) {
+			dev_dbg(dev, "VF is already removed\n");
 			return -EINVAL;
+		}
 		ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
 		ice_vsi_stop_all_rx_rings(vsi);
 		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
