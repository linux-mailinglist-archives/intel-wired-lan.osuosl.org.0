Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE304F902A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Apr 2022 10:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCB9C41D2A;
	Fri,  8 Apr 2022 08:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xbx1nlPC7HZZ; Fri,  8 Apr 2022 08:00:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66BDB41CFF;
	Fri,  8 Apr 2022 08:00:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E81371BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:00:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3C4F410EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XhMMdkeM7dsC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Apr 2022 08:00:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06F0D40181
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649404831; x=1680940831;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tI2H1m/0UpOTOFpiMP490utfgnsPFAokLG3LF/FQIhc=;
 b=hDxFj6VpULshlJg7DpLB5ZcKXlSMz//xlmYPf+F5wnr6jWeKnt603ikP
 OyH+KnudgQV1rmgn266wDwduw7w+cAJEZ+wDENV8K2e77Por0DSCj9YZh
 Cx1Qua3EP2Nm3W098Ne6T0FNuf5aYQaLnygLzU3yOmXXxVRAEQ1xd5L3r
 KptiNTXghQkU/Sitb7qnNaTVjiixn+PfHPjwf+YldqYVozw2zSEKlEnm/
 1wFU1JIyunfjwvY3hwgTcGPBp9OwHGX/dAyFh4KBQPx+JmZzRA419M4ky
 JMMkYtubwklCoqbyTAjRGTs1hQtO7JiwOXX9/2E0LNFF3r+5DDfNQGfhW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="324701956"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="324701956"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:00:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="524697559"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 08 Apr 2022 01:00:27 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 23880PaF011355
 for <intel-wired-lan@lists.osuosl.org>; Fri, 8 Apr 2022 09:00:26 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Apr 2022 09:56:10 +0200
Message-Id: <20220408075610.445584-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: fix crash in switchdev mode
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

Below steps end up with crash:
- modprobe ice
- devlink dev eswitch set $PF1_PCI mode switchdev
- echo 64 > /sys/class/net/$PF1/device/sriov_numvfs
- rmmod ice

Calling ice_eswitch_port_start_xmit while the process of removing
VFs is in progress ends up with NULL pointer dereference.
That's because PR netdev is not released but some resources
are already freed. Fix it by checking if ICE_VF_DIS bit is set.

Call trace:
[ 1379.595146] BUG: kernel NULL pointer dereference, address: 0000000000000040
[ 1379.595284] #PF: supervisor read access in kernel mode
[ 1379.595410] #PF: error_code(0x0000) - not-present page
[ 1379.595535] PGD 0 P4D 0
[ 1379.595657] Oops: 0000 [#1] PREEMPT SMP PTI
[ 1379.595783] CPU: 4 PID: 974 Comm: NetworkManager Kdump: loaded Tainted: G           OE     5.17.0-rc8_mrq_dev-queue+ #12
[ 1379.595926] Hardware name: Intel Corporation S1200SP/S1200SP, BIOS S1200SP.86B.03.01.0042.013020190050 01/30/2019
[ 1379.596063] RIP: 0010:ice_eswitch_port_start_xmit+0x46/0xd0 [ice]
[ 1379.596292] Code: c7 c8 09 00 00 e8 9a c9 fc ff 84 c0 0f 85 82 00 00 00 4c 89 e7 e8 ca 70 fe ff 48 8b 7d 58 48 89 c3 48 85 ff 75 5e 48 8b 53 20 <8b> 42 40 85 c0 74 78 8d 48 01 f0 0f b1 4a 40 75 f2 0f b6 95 84 00
[ 1379.596456] RSP: 0018:ffffaba0c0d7bad0 EFLAGS: 00010246
[ 1379.596584] RAX: ffff969c14c71680 RBX: ffff969c14c71680 RCX: 000100107a0f0000
[ 1379.596715] RDX: 0000000000000000 RSI: ffff969b9d631000 RDI: 0000000000000000
[ 1379.596846] RBP: ffff969c07b46500 R08: ffff969becfca8ac R09: 0000000000000001
[ 1379.596977] R10: 0000000000000004 R11: ffffaba0c0d7bbec R12: ffff969b9d631000
[ 1379.597106] R13: ffffffffc08357a0 R14: ffff969c07b46500 R15: ffff969b9d631000
[ 1379.597237] FS:  00007f72c0e25c80(0000) GS:ffff969f13500000(0000) knlGS:0000000000000000
[ 1379.597414] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 1379.597562] CR2: 0000000000000040 CR3: 000000012b316006 CR4: 00000000003706e0
[ 1379.597713] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 1379.597863] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 1379.598015] Call Trace:
[ 1379.598153]  <TASK>
[ 1379.598294]  dev_hard_start_xmit+0xd9/0x220
[ 1379.598444]  sch_direct_xmit+0x8a/0x340
[ 1379.598592]  __dev_queue_xmit+0xa3c/0xd30
[ 1379.598739]  ? packet_parse_headers+0xb4/0xf0
[ 1379.598890]  packet_sendmsg+0xa15/0x1620
[ 1379.599038]  ? __check_object_size+0x46/0x140
[ 1379.599186]  sock_sendmsg+0x5e/0x60
[ 1379.599330]  ____sys_sendmsg+0x22c/0x270
[ 1379.599474]  ? import_iovec+0x17/0x20
[ 1379.599622]  ? sendmsg_copy_msghdr+0x59/0x90
[ 1379.599771]  ___sys_sendmsg+0x81/0xc0
[ 1379.599917]  ? __pollwait+0xd0/0xd0
[ 1379.600061]  ? preempt_count_add+0x68/0xa0
[ 1379.600210]  ? _raw_write_lock_irq+0x1a/0x40
[ 1379.600369]  ? ep_done_scan+0xc9/0x110
[ 1379.600494]  ? _raw_spin_unlock_irqrestore+0x25/0x40
[ 1379.600622]  ? preempt_count_add+0x68/0xa0
[ 1379.600747]  ? _raw_spin_lock_irq+0x1a/0x40
[ 1379.600899]  ? __fget_light+0x8f/0x110
[ 1379.601024]  __sys_sendmsg+0x49/0x80
[ 1379.601148]  ? release_ds_buffers+0x50/0xe0
[ 1379.601274]  do_syscall_64+0x3b/0x90
[ 1379.601399]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[ 1379.601525] RIP: 0033:0x7f72c1e2e35d

Fixes: f5396b8a663f ("ice: switchdev slow path")
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reported-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 9a84d746a6c4..6a463b242c7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -361,7 +361,8 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 	np = netdev_priv(netdev);
 	vsi = np->vsi;
 
-	if (ice_is_reset_in_progress(vsi->back->state))
+	if (ice_is_reset_in_progress(vsi->back->state) ||
+	    test_bit(ICE_VF_DIS, vsi->back->state))
 		return NETDEV_TX_BUSY;
 
 	repr = ice_netdev_to_repr(netdev);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
