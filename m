Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F9845EB1A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 11:12:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 087FD606F6;
	Fri, 26 Nov 2021 10:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cXTW9QP9oURy; Fri, 26 Nov 2021 10:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1EF8606BE;
	Fri, 26 Nov 2021 10:12:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB38E1BF35B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 10:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5831400D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 10:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTCy4CnnrN-i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 10:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86E0C40012
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 10:11:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="222868077"
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="222868077"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 02:11:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="741501086"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga005.fm.intel.com with ESMTP; 26 Nov 2021 02:11:56 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Nov 2021 11:11:22 +0100
Message-Id: <20211126101122.25085-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix queues reservation for
 XDP
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
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When XDP was configured on a system with large number of CPUs
and X722 NIC there was a call trace with NULL pointer dereference.

i40e 0000:87:00.0: failed to get tracking for 256 queues for VSI 0 err -12
i40e 0000:87:00.0: setup of MAIN VSI failed

BUG: kernel NULL pointer dereference, address: 0000000000000000
RIP: 0010:i40e_xdp+0xea/0x1b0 [i40e]
Call Trace:
? i40e_reconfig_rss_queues+0x130/0x130 [i40e]
dev_xdp_install+0x61/0xe0
dev_xdp_attach+0x18a/0x4c0
dev_change_xdp_fd+0x1e6/0x220
do_setlink+0x616/0x1030
? ahci_port_stop+0x80/0x80
? ata_qc_issue+0x107/0x1e0
? lock_timer_base+0x61/0x80
? __mod_timer+0x202/0x380
rtnl_setlink+0xe5/0x170
? bpf_lsm_binder_transaction+0x10/0x10
? security_capable+0x36/0x50
rtnetlink_rcv_msg+0x121/0x350
? rtnl_calcit.isra.0+0x100/0x100
netlink_rcv_skb+0x50/0xf0
netlink_unicast+0x1d3/0x2a0
netlink_sendmsg+0x22a/0x440
sock_sendmsg+0x5e/0x60
__sys_sendto+0xf0/0x160
? __sys_getsockname+0x7e/0xc0
? _copy_from_user+0x3c/0x80
? __sys_setsockopt+0xc8/0x1a0
__x64_sys_sendto+0x20/0x30
do_syscall_64+0x33/0x40
entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f83fa7a39e0

This was caused by PF queue pile fragmentation due to
flow director VSI queue being placed right after main VSI.
Because of this main VSI was not able to resize its
queue allocation for XDP resulting in no queues allocated
for main VSI when XDP was turned on.

Fix this by always allocating last queue in PF queue pile
for a flow director VSI.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 86fb795..9c612b1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -192,6 +192,20 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
 		return -EINVAL;
 	}
 
+	/* Allocate last queue in the pile for FDIR VSI queue
+	 * so it doesn't fragment the qp_pile
+	 */
+	if (pile == pf->qp_pile && pf->vsi[id]->type == I40E_VSI_FDIR) {
+		if (pile->list[pile->num_entries - 1] & I40E_PILE_VALID_BIT) {
+			dev_err(&pf->pdev->dev,
+				"Cannot allocate queue %d for I40E_VSI_FDIR\n",
+				pile->num_entries - 1);
+			return -ENOMEM;
+		}
+		pile->list[pile->num_entries - 1] = id | I40E_PILE_VALID_BIT;
+		return pile->num_entries - 1;
+	}
+
 	i = 0;
 	while (i < pile->num_entries) {
 		/* skip already allocated entries */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
