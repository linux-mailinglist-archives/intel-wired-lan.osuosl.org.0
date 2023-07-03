Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76765745AA1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 12:54:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBC9540B9C;
	Mon,  3 Jul 2023 10:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBC9540B9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688381648;
	bh=rHiYu5ahhGx1VZ2cFeUXT48H5Dd0EE2DV+tJhgyI8y0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8IIZX6GYYn83FSeLYWIn3icGgJOIQTTvyiCLjm0x8vns20GUbXkPsfMTUKpA846Vh
	 NHxuL4t4TtS+ci58z/yqk08uYT+4YxNLilLyklLSRyBO5N5p7y7P9qLuIdjakQZ4Pz
	 6peb+7PULRHQmBog3LTr9yZcRRAI+4YYh+BQEQ3lxzWeiZnTgq7YQKr89i7mnXNBQD
	 Kmr2crjMKOgbAIR5uYJq1+ktwWLvMFmVsMjZrX/8zs678TBD8Y++x6QFWzALmYSHGc
	 mieqioMcS8hZj4QjvAaTIERxv15Fj7OB9FjiXY6fqXl+UkZeezrdn7ZWcMJyDqi1FW
	 FeE+qamzHpevw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aEJL-2gCr0C5; Mon,  3 Jul 2023 10:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31574405F0;
	Mon,  3 Jul 2023 10:54:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31574405F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 341481BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18CA581282
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:54:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18CA581282
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfAaRTKSVQhr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 10:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE3BA81272
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE3BA81272
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:53:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="365421107"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="365421107"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="831776911"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="831776911"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2023 03:53:56 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jul 2023 12:32:15 +0200
Message-ID: <20230703103215.54570-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688381640; x=1719917640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PT7j9JuHvCUJbMIN1K9mHBRVBQUKsChO9AedL+Zk5b4=;
 b=HUzVbUcsNwYhc+hbMwLZtBuQVS3JKv/VPKB3+Q+8fLHH6iZiIUKW9mL0
 iesurOQQImqlsiq4Wu8j03p3DjkXqsesy2fkpnLKAgwQ7/EDkS0GuxwJR
 bMBnWFYsgMv7Da5feX0ricChbMgvGTpcQS+E4Lx9HeQujhJumJ6GokWeI
 ISIDTRL6oMnMca71fBo8f8Fn0LZNioZoRpWWIBG3FC048yVEMxY13Hsts
 jmCRPBx5J9wAM3l8lXF1uoFhtcd8GN8SbD6rSlZIZtLmYrXiwvFTQmwPP
 EZZjmIK4TNQwF7gsgHmIzOxIxovp4zMxrsueGVd7tmm9p0JqYJoojpiwH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HUzVbUcs
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: prevent call trace during
 reload
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Calling ethtool during reload can lead to call trace, because VSI isn't
configured for some time, but netdev is alive.

To fix it add rtnl lock for VSI deconfig and config. Set ::num_q_vectors
to 0 after freeing and add a check for ::tx/rx_rings in ring related
ethtool ops.

Reproduction:
$watch -n 0.1 -d 'ethtool -g enp24s0f0np0'
$devlink dev reload pci/0000:18:00.0 action driver_reinit

Call trace before fix:
[66303.926205] BUG: kernel NULL pointer dereference, address: 0000000000000000
[66303.926259] #PF: supervisor read access in kernel mode
[66303.926286] #PF: error_code(0x0000) - not-present page
[66303.926311] PGD 0 P4D 0
[66303.926332] Oops: 0000 [#1] PREEMPT SMP PTI
[66303.926358] CPU: 4 PID: 933821 Comm: ethtool Kdump: loaded Tainted: G           OE      6.4.0-rc5+ #1
[66303.926400] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0014.070920180847 07/09/2018
[66303.926446] RIP: 0010:ice_get_ringparam+0x22/0x50 [ice]
[66303.926649] Code: 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 48 8b 87 c0 09 00 00 c7 46 04 e0 1f 00 00 c7 46 10 e0 1f 00 00 48 8b 50 20 <48> 8b 12 0f b7 52 3a 89 56 14 48 8b 40 28 48 8b 00 0f b7 40 58 48
[66303.926722] RSP: 0018:ffffad40472f39c8 EFLAGS: 00010246
[66303.926749] RAX: ffff98a8ada05828 RBX: ffff98a8c46dd060 RCX: ffffad40472f3b48
[66303.926781] RDX: 0000000000000000 RSI: ffff98a8c46dd068 RDI: ffff98a8b23c4000
[66303.926811] RBP: ffffad40472f3b48 R08: 00000000000337b0 R09: 0000000000000000
[66303.926843] R10: 0000000000000001 R11: 0000000000000100 R12: ffff98a8b23c4000
[66303.926874] R13: ffff98a8c46dd060 R14: 000000000000000f R15: ffffad40472f3a50
[66303.926906] FS:  00007f6397966740(0000) GS:ffff98b390900000(0000) knlGS:0000000000000000
[66303.926941] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[66303.926967] CR2: 0000000000000000 CR3: 000000011ac20002 CR4: 00000000007706e0
[66303.926999] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[66303.927029] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[66303.927060] PKRU: 55555554
[66303.927075] Call Trace:
[66303.927094]  <TASK>
[66303.927111]  ? __die+0x23/0x70
[66303.927140]  ? page_fault_oops+0x171/0x4e0
[66303.927176]  ? exc_page_fault+0x7f/0x180
[66303.927209]  ? asm_exc_page_fault+0x26/0x30
[66303.927244]  ? ice_get_ringparam+0x22/0x50 [ice]
[66303.927433]  rings_prepare_data+0x62/0x80
[66303.927469]  ethnl_default_doit+0xe2/0x350
[66303.927501]  genl_family_rcv_msg_doit.isra.0+0xe3/0x140
[66303.927538]  genl_rcv_msg+0x1b1/0x2c0
[66303.927561]  ? __pfx_ethnl_default_doit+0x10/0x10
[66303.927590]  ? __pfx_genl_rcv_msg+0x10/0x10
[66303.927615]  netlink_rcv_skb+0x58/0x110
[66303.927644]  genl_rcv+0x28/0x40
[66303.927665]  netlink_unicast+0x19e/0x290
[66303.927691]  netlink_sendmsg+0x254/0x4d0
[66303.927717]  sock_sendmsg+0x93/0xa0
[66303.927743]  __sys_sendto+0x126/0x170
[66303.927780]  __x64_sys_sendto+0x24/0x30
[66303.928593]  do_syscall_64+0x5d/0x90
[66303.929370]  ? __count_memcg_events+0x60/0xa0
[66303.930146]  ? count_memcg_events.constprop.0+0x1a/0x30
[66303.930920]  ? handle_mm_fault+0x9e/0x350
[66303.931688]  ? do_user_addr_fault+0x258/0x740
[66303.932452]  ? exc_page_fault+0x7f/0x180
[66303.933193]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[66303.933935] RIP: 0033:0x7f6397a7d957
[66303.934702] Code: c7 c0 ff ff ff ff eb be 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 80 3d 8d 7c 0c 00 00 41 89 ca 74 10 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 69 c3 55 48 89 e5 53 48 83 ec 38 44 89 4d d0
[66303.936290] RSP: 002b:00007fff085051b8 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
[66303.937088] RAX: ffffffffffffffda RBX: 000055bb806aa340 RCX: 00007f6397a7d957
[66303.937878] RDX: 000000000000002c RSI: 000055bb806aa3b0 RDI: 0000000000000003
[66303.938654] RBP: 00007fff085051e0 R08: 00007f6397b4b200 R09: 000000000000000c
[66303.939403] R10: 0000000000000000 R11: 0000000000000202 R12: 000055bb806aa3b0
[66303.940131] R13: 000055bb7e977bb0 R14: 00007fff08505260 R15: 000055bb7e977570
[66303.940856]  </TASK>
[66303.941564] Modules linked in: irdma ice(OE) openvswitch nsh nf_conncount nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 qrtr rfkill sunrpc intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common isst_if_common skx_edac nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel vfat fat kvm mlx5_ib irqbypass ipmi_ssif rapl intel_cstate ib_uverbs iTCO_wdt intel_pmc_bxt iTCO_vendor_support ib_core intel_uncore i2c_i801 mei_me pcspkr mei lpc_ich i2c_smbus ioatdma intel_pch_thermal acpi_ipmi joydev dca ipmi_si ipmi_devintf acpi_pad acpi_power_meter ipmi_msghandler fuse loop zram xfs mlx5_core i40e mlxfw crct10dif_pclmul crc32_pclmul tls crc32c_intel polyval_clmulni polyval_generic ast ghash_clmulni_intel psample sha512_ssse3 pci_hyperv_intf i2c_algo_bit gnss wmi scsi_dh_rdac scsi_dh_emc scsi_dh_alua pkcs8_key_parser dm_multipath [last unloaded: ice]
[66303.946397] CR2: 0000000000000000
[66303.946919] ---[ end trace 0000000000000000 ]---
[66303.955966] pstore: backend (erst) writing error (-28)
[66303.956326] RIP: 0010:ice_get_ringparam+0x22/0x50 [ice]
[66303.956765] Code: 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 48 8b 87 c0 09 00 00 c7 46 04 e0 1f 00 00 c7 46 10 e0 1f 00 00 48 8b 50 20 <48> 8b 12 0f b7 52 3a 89 56 14 48 8b 40 28 48 8b 00 0f b7 40 58 48
[66303.957518] RSP: 0018:ffffad40472f39c8 EFLAGS: 00010246
[66303.957901] RAX: ffff98a8ada05828 RBX: ffff98a8c46dd060 RCX: ffffad40472f3b48
[66303.958290] RDX: 0000000000000000 RSI: ffff98a8c46dd068 RDI: ffff98a8b23c4000
[66303.958683] RBP: ffffad40472f3b48 R08: 00000000000337b0 R09: 0000000000000000
[66303.959074] R10: 0000000000000001 R11: 0000000000000100 R12: ffff98a8b23c4000
[66303.959473] R13: ffff98a8c46dd060 R14: 000000000000000f R15: ffffad40472f3a50
[66303.959868] FS:  00007f6397966740(0000) GS:ffff98b390900000(0000) knlGS:0000000000000000
[66303.960268] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[66303.960672] CR2: 0000000000000000 CR3: 000000011ac20002 CR4: 00000000007706e0
[66303.961078] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[66303.961490] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[66303.961898] PKRU: 55555554

Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    |  2 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 13 +++++++++++--
 drivers/net/ethernet/intel/ice/ice_main.c    | 14 ++++++++++----
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1911d644dfa8..619cb07a4069 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -758,6 +758,8 @@ void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
 
 	ice_for_each_q_vector(vsi, v_idx)
 		ice_free_q_vector(vsi, v_idx);
+
+	vsi->num_q_vectors = 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f86e814354a3..3bc597a64bdf 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2920,8 +2920,13 @@ ice_get_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 
 	ring->rx_max_pending = ICE_MAX_NUM_DESC;
 	ring->tx_max_pending = ICE_MAX_NUM_DESC;
-	ring->rx_pending = vsi->rx_rings[0]->count;
-	ring->tx_pending = vsi->tx_rings[0]->count;
+	if (vsi->tx_rings && vsi->rx_rings) {
+		ring->rx_pending = vsi->rx_rings[0]->count;
+		ring->tx_pending = vsi->tx_rings[0]->count;
+	} else {
+		ring->rx_pending = 0;
+		ring->tx_pending = 0;
+	}
 
 	/* Rx mini and jumbo rings are not supported */
 	ring->rx_mini_max_pending = 0;
@@ -2955,6 +2960,10 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		return -EINVAL;
 	}
 
+	/* if there is no rings return (device is reloading) */
+	if (!vsi->tx_rings || !vsi->rx_rings)
+		return -EBUSY;
+
 	new_tx_cnt = ALIGN(ring->tx_pending, ICE_REQ_DESC_MULTIPLE);
 	if (new_tx_cnt != ring->tx_pending)
 		netdev_info(netdev, "Requested Tx descriptor count rounded up to %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0d8b8c6f9bd3..1b1974d42002 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4634,9 +4634,7 @@ static int ice_start_eth(struct ice_vsi *vsi)
 	if (err)
 		return err;
 
-	rtnl_lock();
 	err = ice_vsi_open(vsi);
-	rtnl_unlock();
 
 	return err;
 }
@@ -5099,13 +5097,19 @@ int ice_load(struct ice_pf *pf)
 	params = ice_vsi_to_params(vsi);
 	params.flags = ICE_VSI_FLAG_INIT;
 
+	rtnl_lock();
 	err = ice_vsi_cfg(vsi, &params);
-	if (err)
+	if (err) {
+		rtnl_unlock();
 		goto err_vsi_cfg;
+	}
 
 	err = ice_start_eth(ice_get_main_vsi(pf));
-	if (err)
+	if (err) {
+		rtnl_unlock();
 		goto err_start_eth;
+	}
+	rtnl_unlock();
 
 	err = ice_init_rdma(pf);
 	if (err)
@@ -5135,8 +5139,10 @@ void ice_unload(struct ice_pf *pf)
 {
 	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
+	rtnl_lock();
 	ice_stop_eth(ice_get_main_vsi(pf));
 	ice_vsi_decfg(ice_get_main_vsi(pf));
+	rtnl_unlock();
 	ice_deinit_dev(pf);
 }
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
