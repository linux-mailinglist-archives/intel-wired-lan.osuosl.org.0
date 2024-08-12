Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A10D894ED61
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 14:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25DF8405F9;
	Mon, 12 Aug 2024 12:50:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UkhqPxtWhkSq; Mon, 12 Aug 2024 12:50:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C72FF405FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723467042;
	bh=Dgqy0gLbmoqXI7+2sw150WDcDvBPB/0BKcIgZ0oDuwE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NEywSXn8SWL6rXNTgfqgqDQPB4aR3seY9tYLDAFG1SUtpKWkJNVMLNaPo2FEhERJi
	 ySPa0wAE8HVW2VbKJ3sHlDYZPQG3dTbdN+bkfnJZxH2MtN1RwYahmrXd6QxNyWB1k+
	 +9KfbIelysH19BMjYA+1IplWZXIGTq4qN/ZaRIWZ46I9L1Ngikpokkogv0TJa3qDjh
	 dPsEXN7GW6k9kfC+GKZH404wIvC+2/fzjyPIUXiz2SifhmjTYEB2sOU16EIkhztAQl
	 2jMLhJXG8i3QDpo+PN65Dam+a39uElmAVITY1BnBClnW4uwV4jyzKTLaDwF4ZjGUsZ
	 pJu2el5TNWRVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C72FF405FA;
	Mon, 12 Aug 2024 12:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 555D71BF301
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 12:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4029E80E00
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 12:50:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvWELrO6DOJp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 12:50:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28F2780D33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28F2780D33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28F2780D33
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 12:50:39 +0000 (UTC)
X-CSE-ConnectionGUID: g83IDWruTtWbC2KbXBUTHA==
X-CSE-MsgGUID: lN/RsbEFQQOtu327QaF/Og==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21735943"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="21735943"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 05:50:39 -0700
X-CSE-ConnectionGUID: QLvmH5lSRnap2gOtt/+EcQ==
X-CSE-MsgGUID: jE0bndQGT8ejCwIW2A4hoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="58211742"
Received: from pae-dbg-x10sri-f_n1_f.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.91.240.220])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 05:50:37 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Aug 2024 14:50:09 +0200
Message-ID: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723467040; x=1755003040;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=21dfzZ9PvFGELI2d85s1nFPX0mWiceKT+bzfjD9mgPc=;
 b=cxhz+OksxNZEsZEXUD3wSGTAiWHTzGMIS32ivn7gQD7qrSLrTP6NREHR
 RJtaHZEW3UIwoz2P38CH57xPkQ9Bn6u2tsCv1+GsYlvlbbPoJ/E9qcjFr
 qdpBdToLpUaNdYn6WpoHqLqZcicgGj5H14dRM0zR4Zv0TloPyuysl56Rw
 mqWTLrnjYs9ay2ojn7Dewa1jQZKHWc/fheueHvmARXM9qzvCohAB6KrAq
 2ZmwwYdM1uRbojBiLaj4VlleCoTvLE3CJFH3yN2yW6t5ALOgUgiJkxvhy
 Lw5nc6SUbA28avY0Aj3neXx5IcjZ7SFVYXIox0B7+XA/S1vkWEz248q6A
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cxhz+Oks
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: netdev@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool callbacks can be executed while reset is in progress and try to
access deleted resources, e.g. getting coalesce settings can result in a
NULL pointer dereference seen below.

Reproduction steps:
Once the driver is fully initialized, trigger reset:
	# echo 1 > /sys/class/net/<interface>/device/reset
when reset is in progress try to get coalesce settings using ethtool:
	# ethtool -c <interface>

BUG: kernel NULL pointer dereference, address: 0000000000000020
PGD 0 P4D 0
Oops: Oops: 0000 [#1] PREEMPT SMP PTI
CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+ #7
RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
Call Trace:
<TASK>
ice_get_coalesce+0x17/0x30 [ice]
coalesce_prepare_data+0x61/0x80
ethnl_default_doit+0xde/0x340
genl_family_rcv_msg_doit+0xf2/0x150
genl_rcv_msg+0x1b3/0x2c0
netlink_rcv_skb+0x5b/0x110
genl_rcv+0x28/0x40
netlink_unicast+0x19c/0x290
netlink_sendmsg+0x222/0x490
__sys_sendto+0x1df/0x1f0
__x64_sys_sendto+0x24/0x30
do_syscall_64+0x82/0x160
entry_SYSCALL_64_after_hwframe+0x76/0x7e
RIP: 0033:0x7faee60d8e27

Calling netif_device_detach() before reset makes the net core not call
the driver when ethtool command is issued, the attempt to execute an
ethtool command during reset will result in the following message:

    netlink error: No such device

instead of NULL pointer dereference. Once reset is done and
ice_rebuild() is executing, the netif_device_attach() is called to allow
for ethtool operations to occur again in a safe manner.

Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
---
Changes since v1:
* Changed Fixes tag to point to another commit
* Minified the stacktrace

Suggestion from Kuba: https://lore.kernel.org/netdev/20240610194756.5be5be90@kernel.org/
Previous attempt: https://lore.kernel.org/netdev/20240722122839.51342-1-dawid.osuchowski@linux.intel.com/
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index eaa73cc200f4..16b4920741ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -608,6 +608,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 			memset(&vsi->mqprio_qopt, 0, sizeof(vsi->mqprio_qopt));
 		}
 	}
+	if (vsi->netdev)
+		netif_device_detach(vsi->netdev);
 skip:
 
 	/* clear SW filtering DB */
@@ -7568,11 +7570,13 @@ static void ice_update_pf_netdev_link(struct ice_pf *pf)
 
 		ice_get_link_status(pf->vsi[i]->port_info, &link_up);
 		if (link_up) {
+			netif_device_attach(pf->vsi[i]->netdev);
 			netif_carrier_on(pf->vsi[i]->netdev);
 			netif_tx_wake_all_queues(pf->vsi[i]->netdev);
 		} else {
 			netif_carrier_off(pf->vsi[i]->netdev);
 			netif_tx_stop_all_queues(pf->vsi[i]->netdev);
+			netif_device_detach(pf->vsi[i]->netdev);
 		}
 	}
 }
-- 
2.44.0

