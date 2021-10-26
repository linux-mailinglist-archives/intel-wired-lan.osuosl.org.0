Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB2643B4E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 16:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5555404F2;
	Tue, 26 Oct 2021 14:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TijVAW_0Wtyl; Tue, 26 Oct 2021 14:55:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ED85404CF;
	Tue, 26 Oct 2021 14:55:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 061A61BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13FD160632
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNnm5-iaVGBx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 14:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41C2060A44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 14:54:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="228685313"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="228685313"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 07:48:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497370480"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 26 Oct 2021 07:47:59 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 18:47:19 +0200
Message-Id: <20211026164719.1766911-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026164719.1766911-1-maciej.fijalkowski@intel.com>
References: <20211026164719.1766911-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next 2/2] ice: avoid bpf_prog
 refcount underflow
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
Cc: alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 marta.a.plantykow@intel.com, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marta Plantykow <marta.a.plantykow@intel.com>

Ice driver has the routines for managing XDP resources that are shared
between ndo_bpf op and VSI rebuild flow. The latter takes place for
example when user changes queue count on an interface via ethtool's
set_channels().

There is an issue around the bpf_prog refcounting when VSI is being
rebuilt - since ice_prepare_xdp_rings() is called with vsi->xdp_prog as
an argument that is used later on by ice_vsi_assign_bpf_prog(), same
bpf_prog pointers are swapped with each other. Then it is also
interpreted as an 'old_prog' which in turn causes us to call
bpf_prog_put on it that will decrement its refcount.

Below splat can be interpreted in a way that due to zero refcount of a
bpf_prog it is wiped out from the system while kernel still tries to
refer to it:

[  481.069429] BUG: unable to handle page fault for address: ffffc9000640f038
[  481.077390] #PF: supervisor read access in kernel mode
[  481.083335] #PF: error_code(0x0000) - not-present page
[  481.089276] PGD 100000067 P4D 100000067 PUD 1001cb067 PMD 106d2b067 PTE 0
[  481.097141] Oops: 0000 [#1] PREEMPT SMP PTI
[  481.101980] CPU: 12 PID: 3339 Comm: sudo Tainted: G           OE     5.15.0-rc5+ #1
[  481.110840] Hardware name: Intel Corp. GRANTLEY/GRANTLEY, BIOS GRRFCRB1.86B.0276.D07.1605190235 05/19/2016
[  481.122021] RIP: 0010:dev_xdp_prog_id+0x25/0x40
[  481.127265] Code: 80 00 00 00 00 0f 1f 44 00 00 89 f6 48 c1 e6 04 48 01 fe 48 8b 86 98 08 00 00 48 85 c0 74 13 48 8b 50 18 31 c0 48 85 d2 74 07 <48> 8b 42 38 8b 40 20 c3 48 8b 96 90 08 00 00 eb e8 66 2e 0f 1f 84
[  481.148991] RSP: 0018:ffffc90007b63868 EFLAGS: 00010286
[  481.155034] RAX: 0000000000000000 RBX: ffff889080824000 RCX: 0000000000000000
[  481.163278] RDX: ffffc9000640f000 RSI: ffff889080824010 RDI: ffff889080824000
[  481.171527] RBP: ffff888107af7d00 R08: 0000000000000000 R09: ffff88810db5f6e0
[  481.179776] R10: 0000000000000000 R11: ffff8890885b9988 R12: ffff88810db5f4bc
[  481.188026] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[  481.196276] FS:  00007f5466d5bec0(0000) GS:ffff88903fb00000(0000) knlGS:0000000000000000
[  481.205633] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  481.212279] CR2: ffffc9000640f038 CR3: 000000014429c006 CR4: 00000000003706e0
[  481.220530] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  481.228771] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  481.237029] Call Trace:
[  481.239856]  rtnl_fill_ifinfo+0x768/0x12e0
[  481.244602]  rtnl_dump_ifinfo+0x525/0x650
[  481.249246]  ? __alloc_skb+0xa5/0x280
[  481.253484]  netlink_dump+0x168/0x3c0
[  481.257725]  netlink_recvmsg+0x21e/0x3e0
[  481.262263]  ____sys_recvmsg+0x87/0x170
[  481.266707]  ? __might_fault+0x20/0x30
[  481.271046]  ? _copy_from_user+0x66/0xa0
[  481.275591]  ? iovec_from_user+0xf6/0x1c0
[  481.280226]  ___sys_recvmsg+0x82/0x100
[  481.284566]  ? sock_sendmsg+0x5e/0x60
[  481.288791]  ? __sys_sendto+0xee/0x150
[  481.293129]  __sys_recvmsg+0x56/0xa0
[  481.297267]  do_syscall_64+0x3b/0xc0
[  481.301395]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[  481.307238] RIP: 0033:0x7f5466f39617
[  481.311373] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb bd 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 2f 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 89 54 24 1c 48 89 74 24 10
[  481.342944] RSP: 002b:00007ffedc7f4308 EFLAGS: 00000246 ORIG_RAX: 000000000000002f
[  481.361783] RAX: ffffffffffffffda RBX: 00007ffedc7f5460 RCX: 00007f5466f39617
[  481.380278] RDX: 0000000000000000 RSI: 00007ffedc7f5360 RDI: 0000000000000003
[  481.398500] RBP: 00007ffedc7f53f0 R08: 0000000000000000 R09: 000055d556f04d50
[  481.416463] R10: 0000000000000077 R11: 0000000000000246 R12: 00007ffedc7f5360
[  481.434131] R13: 00007ffedc7f5350 R14: 00007ffedc7f5344 R15: 0000000000000e98
[  481.451520] Modules linked in: ice(OE) af_packet binfmt_misc nls_iso8859_1 ipmi_ssif intel_rapl_msr intel_rapl_common x86_pkg_temp_thermal intel_powerclamp mxm_wmi mei_me coretemp mei ipmi_si ipmi_msghandler wmi acpi_pad acpi_power_meter ip_tables x_tables autofs4 crct10dif_pclmul crc32_pclmul ghash_clmulni_intel aesni_intel ahci crypto_simd cryptd libahci lpc_ich [last unloaded: ice]
[  481.528558] CR2: ffffc9000640f038
[  481.542041] ---[ end trace d1f24c9ecf5b61c1 ]---

Fix this by only calling ice_vsi_assign_bpf_prog() inside
ice_prepare_xdp_rings() when current vsi->xdp_prog pointer is NULL.
This way set_channels() flow will not attempt to swap the vsi->xdp_prog
pointers with itself.

Also, sprinkle around some comments that provide a reasoning about
correlation between driver and kernel in terms of bpf_prog refcount.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Signed-off-by: Marta Plantykow <marta.a.plantykow@intel.com>
[ Maciej: don't assign the prog if already present, expand commit
  message ]
Co-developed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cabe84bb29fe..aff6e388fdd9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2501,7 +2501,18 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 			ice_stat_str(status));
 		goto clear_xdp_rings;
 	}
-	ice_vsi_assign_bpf_prog(vsi, prog);
+
+	/* assign the prog only when it's not already present on VSI;
+	 * this flow is a subject of both ethtool -L and ndo_bpf flows;
+	 * VSI rebuild that happens under ethtool -L can expose us to
+	 * the bpf_prog refcount issues as we would be swapping same
+	 * bpf_prog pointers from vsi->xdp_prog and calling bpf_prog_put
+	 * on it as it would be treated as an 'old_prog'; for ndo_bpf
+	 * this is not harmful as dev_xdp_install bumps the refcount
+	 * before calling the op exposed by the driver;
+	 */
+	if (!ice_is_xdp_ena_vsi(vsi))
+		ice_vsi_assign_bpf_prog(vsi, prog);
 
 	return 0;
 clear_xdp_rings:
@@ -2647,6 +2658,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Tx resources failed");
 	} else {
+		/* safe to call even when prog == vsi->xdp_prog as
+		 * dev_xdp_install in net/core/dev.c incremented prog's
+		 * refcount so corresponding bpf_prog_put won't cause
+		 * underflow
+		 */
 		ice_vsi_assign_bpf_prog(vsi, prog);
 	}
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
