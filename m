Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAC357961E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 11:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78485415E6;
	Tue, 19 Jul 2022 09:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78485415E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658222372;
	bh=gAXS6xMUgrigjBJjhDJjjb2QeFpnMOmvvi+NKnB05zQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q1uo2j0CkgULS5JW8nou3t7oLQE0kLYD9durxxyJK4UT6YUoSVp9DS9pLfN15sX43
	 IKb1alsUlWgEkELI8/fevCzPBUv7xsCHh4UPRU1PV96qxNtritz7Ic2ftPz0uqQ5T8
	 Wu9OXYaIoeOtiMS87NOaMq5ReT+JDjnKgkLdKeWXbE7AM+vzdR8EDJTfKas17wIlA7
	 AdAOFelPGRVYhorEo8evG1fNqGsx1pI65tNHCOKC0ti94J4Jh0KZzn2X95VFVV9D0u
	 m3kBSIWBL6S4KpZOkmZI0fZZeQAa00gS128mj8r7t6fpIObV4UL+xj8pH5nCsVAdHq
	 BfSP7XY4ioqGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDi_GtRzFMt7; Tue, 19 Jul 2022 09:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D86FE409E9;
	Tue, 19 Jul 2022 09:19:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D86FE409E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 083F81BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0AE4415D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0AE4415D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y49rjTeHogAL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 09:19:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CC3A409E9
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CC3A409E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="285196521"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="285196521"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 02:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="724193198"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2022 02:19:20 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Jul 2022 11:16:53 +0200
Message-Id: <20220719091654.329774-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
References: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658222361; x=1689758361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u4C9TEn+ovDnJx8kvcnGgXO8fFhQzpvkAJN8CVt6/SU=;
 b=Zp49ZLPyFDZvVB8OqJ6j4PvOcnKhlvoWGwGXTyij1lCPc3k+OHF6zu1r
 Fg/E+ymHsklQycuqTgiGklkS8NmJ7fR2an5V+jOEPpRJ+ye+FCHeRgZN3
 ylcQcQPFrtsdYOSm9cihon9Qebnc4dMkHk3I5Xd4q13Axl9x2koNO3YAG
 F/8kUNZ5oPKlu4oe0WFobn0VXj96StNnv/LgDXPUrV2um7BZfbZQ5eVHD
 jVoUrZ9wegnDdsueydtu9qJfDZK2z6H20A3gq0BFXK+RFikzsrlKzOo2m
 /vD28iLNValpDbrDuPZKZMsmZ8xvSAZyJg2s1jQrpjmvX89euE8R2lni3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zp49ZLPy
Subject: [Intel-wired-lan] [PATCH net v1 2/3] iavf: Fix NULL pointer
 dereference in iavf_get_link_ksettings
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix possible NULL pointer dereference, due to freeing of adapter->vf_res
in iavf_init_get_resources. Previous commit introduced a regression,
where receiving IAVF_ERR_ADMIN_QUEUE_NO_WORK from iavf_get_vf_config
would free adapter->vf_res. However, netdev is still registered, so
ethtool_ops can be called. Calling iavf_get_link_ksettings with no vf_res,
will result with:
[ 9385.242676] BUG: kernel NULL pointer dereference, address: 0000000000000008
[ 9385.242683] #PF: supervisor read access in kernel mode
[ 9385.242686] #PF: error_code(0x0000) - not-present page
[ 9385.242690] PGD 0 P4D 0
[ 9385.242696] Oops: 0000 [#1] PREEMPT SMP DEBUG_PAGEALLOC PTI
[ 9385.242701] CPU: 6 PID: 3217 Comm: pmdalinux Kdump: loaded Tainted: G S          E     5.18.0-04958-ga54ce3703613-dirty #1
[ 9385.242708] Hardware name: Dell Inc. PowerEdge R730/0WCJNT, BIOS 2.11.0 11/02/2019
[ 9385.242710] RIP: 0010:iavf_get_link_ksettings+0x29/0xd0 [iavf]
[ 9385.242745] Code: 00 0f 1f 44 00 00 b8 01 ef ff ff 48 c7 46 30 00 00 00 00 48 c7 46 38 00 00 00 00 c6 46 0b 00 66 89 46 08 48 8b 87 68 0e 00 00 <f6> 40 08 80 75 50 8b 87 5c 0e 00 00 83 f8 08 74 7a 76 1d 83 f8 20
[ 9385.242749] RSP: 0018:ffffc0560ec7fbd0 EFLAGS: 00010246
[ 9385.242755] RAX: 0000000000000000 RBX: ffffc0560ec7fc08 RCX: 0000000000000000
[ 9385.242759] RDX: ffffffffc0ad4550 RSI: ffffc0560ec7fc08 RDI: ffffa0fc66674000
[ 9385.242762] RBP: 00007ffd1fb2bf50 R08: b6a2d54b892363ee R09: ffffa101dc14fb00
[ 9385.242765] R10: 0000000000000000 R11: 0000000000000004 R12: ffffa0fc66674000
[ 9385.242768] R13: 0000000000000000 R14: ffffa0fc66674000 R15: 00000000ffffffa1
[ 9385.242771] FS:  00007f93711a2980(0000) GS:ffffa0fad72c0000(0000) knlGS:0000000000000000
[ 9385.242775] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 9385.242778] CR2: 0000000000000008 CR3: 0000000a8e61c003 CR4: 00000000003706e0
[ 9385.242781] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 9385.242784] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 9385.242787] Call Trace:
[ 9385.242791]  <TASK>
[ 9385.242793]  ethtool_get_settings+0x71/0x1a0
[ 9385.242814]  __dev_ethtool+0x426/0x2f40
[ 9385.242823]  ? slab_post_alloc_hook+0x4f/0x280
[ 9385.242836]  ? kmem_cache_alloc_trace+0x15d/0x2f0
[ 9385.242841]  ? dev_ethtool+0x59/0x170
[ 9385.242848]  dev_ethtool+0xa7/0x170
[ 9385.242856]  dev_ioctl+0xc3/0x520
[ 9385.242866]  sock_do_ioctl+0xa0/0xe0
[ 9385.242877]  sock_ioctl+0x22f/0x320
[ 9385.242885]  __x64_sys_ioctl+0x84/0xc0
[ 9385.242896]  do_syscall_64+0x3a/0x80
[ 9385.242904]  entry_SYSCALL_64_after_hwframe+0x46/0xb0
[ 9385.242918] RIP: 0033:0x7f93702396db
[ 9385.242923] Code: 73 01 c3 48 8b 0d ad 57 38 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 7d 57 38 00 f7 d8 64 89 01 48
[ 9385.242927] RSP: 002b:00007ffd1fb2bf18 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
[ 9385.242932] RAX: ffffffffffffffda RBX: 000055671b1d2fe0 RCX: 00007f93702396db
[ 9385.242935] RDX: 00007ffd1fb2bf20 RSI: 0000000000008946 RDI: 0000000000000007
[ 9385.242937] RBP: 00007ffd1fb2bf20 R08: 0000000000000003 R09: 0030763066307330
[ 9385.242940] R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffd1fb2bf80
[ 9385.242942] R13: 0000000000000007 R14: 0000556719f6de90 R15: 00007ffd1fb2c1b0
[ 9385.242948]  </TASK>
[ 9385.242949] Modules linked in: iavf(E) xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nft_compat nf_nat_tftp nft_objref nf_conntrack_tftp bridge stp llc nft_fib_inet nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4 nf_reject_ipv6 nft_reject nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip_set nf_tables rfkill nfnetlink vfat fat irdma ib_uverbs ib_core intel_rapl_msr intel_rapl_common sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm iTCO_wdt iTCO_vendor_support ice irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel rapl i40e pcspkr intel_cstate joydev mei_me intel_uncore mxm_wmi mei ipmi_ssif lpc_ich ipmi_si acpi_power_meter xfs libcrc32c mgag200 i2c_algo_bit drm_shmem_helper drm_kms_helper sd_mod t10_pi crc64_rocksoft crc64 syscopyarea sg sysfillrect sysimgblt fb_sys_fops drm ixgbe ahci libahci libata crc32c_intel mdio dca wmi dm_mirror dm_region_hash dm_log dm_mod ipmi_devintf ipmi_msghandler fuse
[ 9385.243065]  [last unloaded: iavf]

Dereference happens in if (ADV_LINK_SUPPORT(adapter)) statement

Fixes: 209f2f9c7181 ("iavf: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index a86e7be1e754..5f486eaf04da 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2281,7 +2281,7 @@ static void iavf_init_get_resources(struct iavf_adapter *adapter)
 	err = iavf_get_vf_config(adapter);
 	if (err == -EALREADY) {
 		err = iavf_send_vf_config_msg(adapter);
-		goto err_alloc;
+		goto err;
 	} else if (err == -EINVAL) {
 		/* We only get -EINVAL if the device is in a very bad
 		 * state or if we've been disabled for previous bad
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
