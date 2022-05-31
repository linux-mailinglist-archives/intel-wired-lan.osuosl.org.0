Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94625391C4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:22:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF7EB40B19;
	Tue, 31 May 2022 13:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8D2F3o-WTcp; Tue, 31 May 2022 13:22:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC0AF40B02;
	Tue, 31 May 2022 13:22:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1162E1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F32E2409E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmAOvfHX8Ysy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 13:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37945401AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654003338; x=1685539338;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6G6Ny90au1zJcufoGfiwgYhqOwowgfEP64Q7cx1Z6po=;
 b=hLpRrC1J/WpgpNg4ncw6c6BNnWyVdRpgwto2fMWnNYSsTyLWJokWYUsT
 5bTx1sInmHfMgeuMjYTXys0jIAfI0cpFwvSl7Y3jAms9sVQmOy7LNNg3I
 jEgYm4wbgYqr/DCl+JhpNv7zwCLYbBIJ6oBX7jTOgHX/qdg+eySmWq/Em
 yPej1zJo0DCtjDFTdqOeZsJ7Xhb3U64Ky2QfRPgTf3NToVDP7E2K0OhAw
 C2zeEZEsTh4rCJFUbYFhp5jMHt+2G43EW8szMTv9hCbjYA+i9FwX7ryDh
 8ktcbdd05apxTLu+P8rj8VnTzXWcb4egvc1tnsw7/lXDRFOJwK7c7/aW/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="262883864"
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="262883864"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 06:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="576406921"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2022 06:22:16 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 May 2022 15:18:48 +0200
Message-Id: <20220531131848.3749-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 2/2] ice: Fix memory corruption in
 VF driver
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Disable VF's RX/TX queues, when it's disabled. VF can have queues enabled,
when it requests a reset. If PF driver assumes that VF is disabled,
while VF still has queues configured, VF may unmap DMA resources.
In such scenario device still can map packets to memory, which ends up
silently corrupting it.
Previously, VF driver could experience memory corruption, which lead to
crash:
[ 5119.170157] BUG: unable to handle kernel paging request at 00001b9780003237
[ 5119.170166] PGD 0 P4D 0
[ 5119.170173] Oops: 0002 [#1] PREEMPT_RT SMP PTI
[ 5119.170181] CPU: 30 PID: 427592 Comm: kworker/u96:2 Kdump: loaded Tainted: G        W I      --------- -  - 4.18.0-372.9.1.rt7.166.el8.x86_64 #1
[ 5119.170189] Hardware name: Dell Inc. PowerEdge R740/014X06, BIOS 2.3.10 08/15/2019
[ 5119.170193] Workqueue: iavf iavf_adminq_task [iavf]
[ 5119.170219] RIP: 0010:__page_frag_cache_drain+0x5/0x30
[ 5119.170238] Code: 0f 0f b6 77 51 85 f6 74 07 31 d2 e9 05 df ff ff e9 90 fe ff ff 48 8b 05 49 db 33 01 eb b4 0f 1f 80 00 00 00 00 0f 1f 44 00 00 <f0> 29 77 34 74 01 c3 48 8b 07 f6 c4 80 74 0f 0f b6 77 51 85 f6 74
[ 5119.170244] RSP: 0018:ffffa43b0bdcfd78 EFLAGS: 00010282
[ 5119.170250] RAX: ffffffff896b3e40 RBX: ffff8fb282524000 RCX: 0000000000000002
[ 5119.170254] RDX: 0000000049000000 RSI: 0000000000000000 RDI: 00001b9780003203
[ 5119.170259] RBP: ffff8fb248217b00 R08: 0000000000000022 R09: 0000000000000009
[ 5119.170262] R10: 2b849d6300000000 R11: 0000000000000020 R12: 0000000000000000
[ 5119.170265] R13: 0000000000001000 R14: 0000000000000009 R15: 0000000000000000
[ 5119.170269] FS:  0000000000000000(0000) GS:ffff8fb1201c0000(0000) knlGS:0000000000000000
[ 5119.170274] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 5119.170279] CR2: 00001b9780003237 CR3: 00000008f3e1a003 CR4: 00000000007726e0
[ 5119.170283] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 5119.170286] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 5119.170290] PKRU: 55555554
[ 5119.170292] Call Trace:
[ 5119.170298]  iavf_clean_rx_ring+0xad/0x110 [iavf]
[ 5119.170324]  iavf_free_rx_resources+0xe/0x50 [iavf]
[ 5119.170342]  iavf_free_all_rx_resources.part.51+0x30/0x40 [iavf]
[ 5119.170358]  iavf_virtchnl_completion+0xd8a/0x15b0 [iavf]
[ 5119.170377]  ? iavf_clean_arq_element+0x210/0x280 [iavf]
[ 5119.170397]  iavf_adminq_task+0x126/0x2e0 [iavf]
[ 5119.170416]  process_one_work+0x18f/0x420
[ 5119.170429]  worker_thread+0x30/0x370
[ 5119.170437]  ? process_one_work+0x420/0x420
[ 5119.170445]  kthread+0x151/0x170
[ 5119.170452]  ? set_kthread_struct+0x40/0x40
[ 5119.170460]  ret_from_fork+0x35/0x40
[ 5119.170477] Modules linked in: iavf sctp ip6_udp_tunnel udp_tunnel mlx4_en mlx4_core nfp tls vhost_net vhost vhost_iotlb tap tun xt_CHECKSUM ipt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_counter nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink bridge stp llc rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace fscache sunrpc intel_rapl_msr iTCO_wdt iTCO_vendor_support dell_smbios wmi_bmof dell_wmi_descriptor dcdbas kvm_intel kvm irqbypass intel_rapl_common isst_if_common skx_edac irdma nfit libnvdimm x86_pkg_temp_thermal i40e intel_powerclamp coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel ib_uverbs rapl ipmi_ssif intel_cstate intel_uncore mei_me pcspkr acpi_ipmi ib_core mei lpc_ich i2c_i801 ipmi_si ipmi_devintf wmi ipmi_msghandler acpi_power_meter xfs libcrc32c sd_mod t10_pi sg mgag200 drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops ice ahci drm libahci crc32c_intel libata tg3 megaraid_sas
[ 5119.170613]  i2c_algo_bit dm_mirror dm_region_hash dm_log dm_mod fuse [last unloaded: iavf]
[ 5119.170627] CR2: 00001b9780003237

Fixes: ec4f5a436bdf ("ice: Check if VF is disabled for Opcode and other operations")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Co-developed-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index cd8e6b5..7adf9dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -504,6 +504,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	}
 
 	if (ice_is_vf_disabled(vf)) {
+		vsi = ice_get_vf_vsi(vf);
+		if (WARN_ON(!vsi))
+			return -EINVAL;
+		ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
+		ice_vsi_stop_all_rx_rings(vsi);
 		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
 			vf->vf_id);
 		return 0;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
